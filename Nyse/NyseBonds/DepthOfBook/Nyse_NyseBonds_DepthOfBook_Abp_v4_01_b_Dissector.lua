-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse NyseBonds DepthOfBook Abp 4.01.b Protocol
local omi_nyse_nysebonds_depthofbook_abp_v4_01_b = Proto("Omi.Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b", "Nyse NyseBonds DepthOfBook Abp 4.01.b")

-- Protocol table
local nyse_nysebonds_depthofbook_abp_v4_01_b = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse NyseBonds DepthOfBook Abp 4.01.b Fields
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.auction_time = ProtoField.new("Auction Time", "nyse.nysebonds.depthofbook.abp.v4.01.b.auctiontime", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.auction_type = ProtoField.new("Auction Type", "nyse.nysebonds.depthofbook.abp.v4.01.b.auctiontype", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.bond_subscription = ProtoField.new("Bond Subscription", "nyse.nysebonds.depthofbook.abp.v4.01.b.bondsubscription", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "nyse.nysebonds.depthofbook.abp.v4.01.b.buysellindicator", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.client_message_type = ProtoField.new("Client Message Type", "nyse.nysebonds.depthofbook.abp.v4.01.b.clientmessagetype", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.cusip_isin = ProtoField.new("Cusip Isin", "nyse.nysebonds.depthofbook.abp.v4.01.b.cusipisin", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.etf_subscription = ProtoField.new("Etf Subscription", "nyse.nysebonds.depthofbook.abp.v4.01.b.etfsubscription", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.etx = ProtoField.new("Etx", "nyse.nysebonds.depthofbook.abp.v4.01.b.etx", ftypes.UINT8)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.event_code = ProtoField.new("Event Code", "nyse.nysebonds.depthofbook.abp.v4.01.b.eventcode", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.nysebonds.depthofbook.abp.v4.01.b.exchangecode", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.flat_pricing = ProtoField.new("Flat Pricing", "nyse.nysebonds.depthofbook.abp.v4.01.b.flatpricing", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.global_otc_subscription = ProtoField.new("Global Otc Subscription", "nyse.nysebonds.depthofbook.abp.v4.01.b.globalotcsubscription", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.listed_subscription = ProtoField.new("Listed Subscription", "nyse.nysebonds.depthofbook.abp.v4.01.b.listedsubscription", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.login_sequence_number = ProtoField.new("Login Sequence Number", "nyse.nysebonds.depthofbook.abp.v4.01.b.loginsequencenumber", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.market_imbalance = ProtoField.new("Market Imbalance", "nyse.nysebonds.depthofbook.abp.v4.01.b.marketimbalance", ftypes.UINT32)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.match_quantity = ProtoField.new("Match Quantity", "nyse.nysebonds.depthofbook.abp.v4.01.b.matchquantity", ftypes.UINT32)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.message_body_length = ProtoField.new("Message Body Length", "nyse.nysebonds.depthofbook.abp.v4.01.b.messagebodylength", ftypes.UINT16)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.message_type = ProtoField.new("Message Type", "nyse.nysebonds.depthofbook.abp.v4.01.b.messagetype", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.minimum_quantity = ProtoField.new("Minimum Quantity", "nyse.nysebonds.depthofbook.abp.v4.01.b.minimumquantity", ftypes.UINT32)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.next_expected_sequence_number = ProtoField.new("Next Expected Sequence Number", "nyse.nysebonds.depthofbook.abp.v4.01.b.nextexpectedsequencenumber", ftypes.UINT32)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.nyse_bond_symbol = ProtoField.new("Nyse Bond Symbol", "nyse.nysebonds.depthofbook.abp.v4.01.b.nysebondsymbol", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.order_reference_number = ProtoField.new("Order Reference Number", "nyse.nysebonds.depthofbook.abp.v4.01.b.orderreferencenumber", ftypes.UINT32)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.order_type = ProtoField.new("Order Type", "nyse.nysebonds.depthofbook.abp.v4.01.b.ordertype", ftypes.UINT8)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.otc_subscription = ProtoField.new("Otc Subscription", "nyse.nysebonds.depthofbook.abp.v4.01.b.otcsubscription", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.padding = ProtoField.new("Padding", "nyse.nysebonds.depthofbook.abp.v4.01.b.padding", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.padding_ascii_1 = ProtoField.new("Padding Ascii 1", "nyse.nysebonds.depthofbook.abp.v4.01.b.paddingascii1", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.padding_ascii_2 = ProtoField.new("Padding Ascii 2", "nyse.nysebonds.depthofbook.abp.v4.01.b.paddingascii2", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.padding_ascii_3 = ProtoField.new("Padding Ascii 3", "nyse.nysebonds.depthofbook.abp.v4.01.b.paddingascii3", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.password = ProtoField.new("Password", "nyse.nysebonds.depthofbook.abp.v4.01.b.password", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.price = ProtoField.new("Price", "nyse.nysebonds.depthofbook.abp.v4.01.b.price", ftypes.UINT32)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.nysebonds.depthofbook.abp.v4.01.b.pricescalecode", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.quantity = ProtoField.new("Quantity", "nyse.nysebonds.depthofbook.abp.v4.01.b.quantity", ftypes.UINT32)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.quote_condition = ProtoField.new("Quote Condition", "nyse.nysebonds.depthofbook.abp.v4.01.b.quotecondition", ftypes.UINT8)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.quote_id = ProtoField.new("Quote Id", "nyse.nysebonds.depthofbook.abp.v4.01.b.quoteid", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.reject_code = ProtoField.new("Reject Code", "nyse.nysebonds.depthofbook.abp.v4.01.b.rejectcode", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.security_type = ProtoField.new("Security Type", "nyse.nysebonds.depthofbook.abp.v4.01.b.securitytype", ftypes.UINT8)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.sequence_number = ProtoField.new("Sequence Number", "nyse.nysebonds.depthofbook.abp.v4.01.b.sequencenumber", ftypes.UINT32)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.system_code = ProtoField.new("System Code", "nyse.nysebonds.depthofbook.abp.v4.01.b.systemcode", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.test_message = ProtoField.new("Test Message", "nyse.nysebonds.depthofbook.abp.v4.01.b.testmessage", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.test_request_text = ProtoField.new("Test Request Text", "nyse.nysebonds.depthofbook.abp.v4.01.b.testrequesttext", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.time = ProtoField.new("Time", "nyse.nysebonds.depthofbook.abp.v4.01.b.time", ftypes.UINT32)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.total_imbalance = ProtoField.new("Total Imbalance", "nyse.nysebonds.depthofbook.abp.v4.01.b.totalimbalance", ftypes.UINT32)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.trading_action = ProtoField.new("Trading Action", "nyse.nysebonds.depthofbook.abp.v4.01.b.tradingaction", ftypes.UINT8)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.username = ProtoField.new("Username", "nyse.nysebonds.depthofbook.abp.v4.01.b.username", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.version_id = ProtoField.new("Version Id", "nyse.nysebonds.depthofbook.abp.v4.01.b.versionid", ftypes.STRING)

-- Nyse NyseBonds DepthOfBook Abp 4.01.b Framing
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.client_message_header = ProtoField.new("Client Message Header", "nyse.nysebonds.depthofbook.abp.v4.01.b.clientmessageheader", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.client_packet = ProtoField.new("Client Packet", "nyse.nysebonds.depthofbook.abp.v4.01.b.clientpacket", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.message = ProtoField.new("Message", "nyse.nysebonds.depthofbook.abp.v4.01.b.message", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.message_header = ProtoField.new("Message Header", "nyse.nysebonds.depthofbook.abp.v4.01.b.messageheader", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.server_packet = ProtoField.new("Server Packet", "nyse.nysebonds.depthofbook.abp.v4.01.b.serverpacket", ftypes.STRING)

-- Nyse NyseBonds DepthOfBook 4.01.b Application Messages
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.add_order_message = ProtoField.new("Add Order Message", "nyse.nysebonds.depthofbook.abp.v4.01.b.addordermessage", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.delete_order_message = ProtoField.new("Delete Order Message", "nyse.nysebonds.depthofbook.abp.v4.01.b.deleteordermessage", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "nyse.nysebonds.depthofbook.abp.v4.01.b.heartbeatmessage", ftypes.BYTES)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.imbalance_message = ProtoField.new("Imbalance Message", "nyse.nysebonds.depthofbook.abp.v4.01.b.imbalancemessage", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.login_accepted_message = ProtoField.new("Login Accepted Message", "nyse.nysebonds.depthofbook.abp.v4.01.b.loginacceptedmessage", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.login_rejected_message = ProtoField.new("Login Rejected Message", "nyse.nysebonds.depthofbook.abp.v4.01.b.loginrejectedmessage", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.modify_order_message = ProtoField.new("Modify Order Message", "nyse.nysebonds.depthofbook.abp.v4.01.b.modifyordermessage", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.system_event_message = ProtoField.new("System Event Message", "nyse.nysebonds.depthofbook.abp.v4.01.b.systemeventmessage", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.test_response_message = ProtoField.new("Test Response Message", "nyse.nysebonds.depthofbook.abp.v4.01.b.testresponsemessage", ftypes.STRING)

-- Nyse NyseBonds DepthOfBook 4.01.b Session Messages
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.heartbeat_response_message = ProtoField.new("Heartbeat Response Message", "nyse.nysebonds.depthofbook.abp.v4.01.b.heartbeatresponsemessage", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.login_message = ProtoField.new("Login Message", "nyse.nysebonds.depthofbook.abp.v4.01.b.loginmessage", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.logoff_message = ProtoField.new("Logoff Message", "nyse.nysebonds.depthofbook.abp.v4.01.b.logoffmessage", ftypes.STRING)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.test_request_message = ProtoField.new("Test Request Message", "nyse.nysebonds.depthofbook.abp.v4.01.b.testrequestmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Nyse NyseBonds DepthOfBook Abp 4.01.b Formatting
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

-- Nyse NyseBonds DepthOfBook Abp 4.01.b Element Dissection Options
show.application_messages = true
show.headers = true
show.structs = true
show.session_messages = true

-- Register Nyse NyseBonds DepthOfBook Abp 4.01.b Show Options
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nyse_nysebonds_depthofbook_abp_v4_01_b.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")

-- Handle changed preferences
function omi_nyse_nysebonds_depthofbook_abp_v4_01_b.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nyse_nysebonds_depthofbook_abp_v4_01_b.prefs.show_application_messages then
    show.application_messages = omi_nyse_nysebonds_depthofbook_abp_v4_01_b.prefs.show_application_messages
  end
  if show.headers ~= omi_nyse_nysebonds_depthofbook_abp_v4_01_b.prefs.show_headers then
    show.headers = omi_nyse_nysebonds_depthofbook_abp_v4_01_b.prefs.show_headers
  end
  if show.session_messages ~= omi_nyse_nysebonds_depthofbook_abp_v4_01_b.prefs.show_session_messages then
    show.session_messages = omi_nyse_nysebonds_depthofbook_abp_v4_01_b.prefs.show_session_messages
  end
  if show.structs ~= omi_nyse_nysebonds_depthofbook_abp_v4_01_b.prefs.show_structs then
    show.structs = omi_nyse_nysebonds_depthofbook_abp_v4_01_b.prefs.show_structs
  end
end


-----------------------------------------------------------------------
-- Nyse NyseBonds DepthOfBook Abp 4.01.b Fields
-----------------------------------------------------------------------

-- Auction Time
nyse_nysebonds_depthofbook_abp_v4_01_b.auction_time = {}

-- Size: Auction Time
nyse_nysebonds_depthofbook_abp_v4_01_b.auction_time.size = 4

-- Display: Auction Time
nyse_nysebonds_depthofbook_abp_v4_01_b.auction_time.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Auction Time: No Value"
  end

  return "Auction Time: "..value
end

-- Dissect: Auction Time
nyse_nysebonds_depthofbook_abp_v4_01_b.auction_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.auction_time.size
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

  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.auction_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.auction_time, range, value, display)

  return offset + length, value
end

-- Auction Type
nyse_nysebonds_depthofbook_abp_v4_01_b.auction_type = {}

-- Size: Auction Type
nyse_nysebonds_depthofbook_abp_v4_01_b.auction_type.size = 1

-- Display: Auction Type
nyse_nysebonds_depthofbook_abp_v4_01_b.auction_type.display = function(value)
  if value == "O" then
    return "Auction Type: Open (O)"
  end
  if value == "M" then
    return "Auction Type: Market (M)"
  end
  if value == "H" then
    return "Auction Type: Halt (H)"
  end
  if value == "C" then
    return "Auction Type: Closing (C)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
nyse_nysebonds_depthofbook_abp_v4_01_b.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Bond Subscription
nyse_nysebonds_depthofbook_abp_v4_01_b.bond_subscription = {}

-- Size: Bond Subscription
nyse_nysebonds_depthofbook_abp_v4_01_b.bond_subscription.size = 1

-- Display: Bond Subscription
nyse_nysebonds_depthofbook_abp_v4_01_b.bond_subscription.display = function(value)
  return "Bond Subscription: "..value
end

-- Dissect: Bond Subscription
nyse_nysebonds_depthofbook_abp_v4_01_b.bond_subscription.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.bond_subscription.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.bond_subscription.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.bond_subscription, range, value, display)

  return offset + length, value
end

-- Buy Sell Indicator
nyse_nysebonds_depthofbook_abp_v4_01_b.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
nyse_nysebonds_depthofbook_abp_v4_01_b.buy_sell_indicator.size = 1

-- Display: Buy Sell Indicator
nyse_nysebonds_depthofbook_abp_v4_01_b.buy_sell_indicator.display = function(value)
  if value == "B" then
    return "Buy Sell Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Buy Sell Indicator: Sell Order (S)"
  end

  return "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
nyse_nysebonds_depthofbook_abp_v4_01_b.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Client Message Type
nyse_nysebonds_depthofbook_abp_v4_01_b.client_message_type = {}

-- Size: Client Message Type
nyse_nysebonds_depthofbook_abp_v4_01_b.client_message_type.size = 1

-- Display: Client Message Type
nyse_nysebonds_depthofbook_abp_v4_01_b.client_message_type.display = function(value)
  return "Client Message Type: "..value
end

-- Dissect: Client Message Type
nyse_nysebonds_depthofbook_abp_v4_01_b.client_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.client_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.client_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.client_message_type, range, value, display)

  return offset + length, value
end

-- Cusip Isin
nyse_nysebonds_depthofbook_abp_v4_01_b.cusip_isin = {}

-- Size: Cusip Isin
nyse_nysebonds_depthofbook_abp_v4_01_b.cusip_isin.size = 14

-- Display: Cusip Isin
nyse_nysebonds_depthofbook_abp_v4_01_b.cusip_isin.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cusip Isin: No Value"
  end

  return "Cusip Isin: "..value
end

-- Dissect: Cusip Isin
nyse_nysebonds_depthofbook_abp_v4_01_b.cusip_isin.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.cusip_isin.size
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

  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.cusip_isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.cusip_isin, range, value, display)

  return offset + length, value
end

-- Etf Subscription
nyse_nysebonds_depthofbook_abp_v4_01_b.etf_subscription = {}

-- Size: Etf Subscription
nyse_nysebonds_depthofbook_abp_v4_01_b.etf_subscription.size = 1

-- Display: Etf Subscription
nyse_nysebonds_depthofbook_abp_v4_01_b.etf_subscription.display = function(value)
  return "Etf Subscription: "..value
end

-- Dissect: Etf Subscription
nyse_nysebonds_depthofbook_abp_v4_01_b.etf_subscription.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.etf_subscription.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.etf_subscription.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.etf_subscription, range, value, display)

  return offset + length, value
end

-- Etx
nyse_nysebonds_depthofbook_abp_v4_01_b.etx = {}

-- Size: Etx
nyse_nysebonds_depthofbook_abp_v4_01_b.etx.size = 1

-- Display: Etx
nyse_nysebonds_depthofbook_abp_v4_01_b.etx.display = function(value)
  return "Etx: "..value
end

-- Dissect: Etx
nyse_nysebonds_depthofbook_abp_v4_01_b.etx.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.etx.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.etx.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.etx, range, value, display)

  return offset + length, value
end

-- Event Code
nyse_nysebonds_depthofbook_abp_v4_01_b.event_code = {}

-- Size: Event Code
nyse_nysebonds_depthofbook_abp_v4_01_b.event_code.size = 1

-- Display: Event Code
nyse_nysebonds_depthofbook_abp_v4_01_b.event_code.display = function(value)
  if value == "C" then
    return "Event Code: Clear Book (C)"
  end
  if value == "S" then
    return "Event Code: Clear Book By Symbol (S)"
  end
  if value == "H" then
    return "Event Code: Halt Symbol (H)"
  end
  if value == "U" then
    return "Event Code: Un Halt Symbol (U)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nyse_nysebonds_depthofbook_abp_v4_01_b.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.event_code, range, value, display)

  return offset + length, value
end

-- Exchange Code
nyse_nysebonds_depthofbook_abp_v4_01_b.exchange_code = {}

-- Size: Exchange Code
nyse_nysebonds_depthofbook_abp_v4_01_b.exchange_code.size = 1

-- Display: Exchange Code
nyse_nysebonds_depthofbook_abp_v4_01_b.exchange_code.display = function(value)
  if value == "N" then
    return "Exchange Code: Nyse Listed Bond (N)"
  end

  return "Exchange Code: Unknown("..value..")"
end

-- Dissect: Exchange Code
nyse_nysebonds_depthofbook_abp_v4_01_b.exchange_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.exchange_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.exchange_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Flat Pricing
nyse_nysebonds_depthofbook_abp_v4_01_b.flat_pricing = {}

-- Size: Flat Pricing
nyse_nysebonds_depthofbook_abp_v4_01_b.flat_pricing.size = 1

-- Display: Flat Pricing
nyse_nysebonds_depthofbook_abp_v4_01_b.flat_pricing.display = function(value)
  if value == "F" then
    return "Flat Pricing: Flat Pricing Is In Effect (F)"
  end

  return "Flat Pricing: Unknown("..value..")"
end

-- Dissect: Flat Pricing
nyse_nysebonds_depthofbook_abp_v4_01_b.flat_pricing.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.flat_pricing.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.flat_pricing.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.flat_pricing, range, value, display)

  return offset + length, value
end

-- Global Otc Subscription
nyse_nysebonds_depthofbook_abp_v4_01_b.global_otc_subscription = {}

-- Size: Global Otc Subscription
nyse_nysebonds_depthofbook_abp_v4_01_b.global_otc_subscription.size = 1

-- Display: Global Otc Subscription
nyse_nysebonds_depthofbook_abp_v4_01_b.global_otc_subscription.display = function(value)
  return "Global Otc Subscription: "..value
end

-- Dissect: Global Otc Subscription
nyse_nysebonds_depthofbook_abp_v4_01_b.global_otc_subscription.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.global_otc_subscription.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.global_otc_subscription.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.global_otc_subscription, range, value, display)

  return offset + length, value
end

-- Listed Subscription
nyse_nysebonds_depthofbook_abp_v4_01_b.listed_subscription = {}

-- Size: Listed Subscription
nyse_nysebonds_depthofbook_abp_v4_01_b.listed_subscription.size = 1

-- Display: Listed Subscription
nyse_nysebonds_depthofbook_abp_v4_01_b.listed_subscription.display = function(value)
  return "Listed Subscription: "..value
end

-- Dissect: Listed Subscription
nyse_nysebonds_depthofbook_abp_v4_01_b.listed_subscription.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.listed_subscription.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.listed_subscription.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.listed_subscription, range, value, display)

  return offset + length, value
end

-- Login Sequence Number
nyse_nysebonds_depthofbook_abp_v4_01_b.login_sequence_number = {}

-- Size: Login Sequence Number
nyse_nysebonds_depthofbook_abp_v4_01_b.login_sequence_number.size = 10

-- Display: Login Sequence Number
nyse_nysebonds_depthofbook_abp_v4_01_b.login_sequence_number.display = function(value)
  return "Login Sequence Number: "..value
end

-- Dissect: Login Sequence Number
nyse_nysebonds_depthofbook_abp_v4_01_b.login_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.login_sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.login_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.login_sequence_number, range, value, display)

  return offset + length, value
end

-- Market Imbalance
nyse_nysebonds_depthofbook_abp_v4_01_b.market_imbalance = {}

-- Size: Market Imbalance
nyse_nysebonds_depthofbook_abp_v4_01_b.market_imbalance.size = 4

-- Display: Market Imbalance
nyse_nysebonds_depthofbook_abp_v4_01_b.market_imbalance.display = function(value)
  return "Market Imbalance: "..value
end

-- Dissect: Market Imbalance
nyse_nysebonds_depthofbook_abp_v4_01_b.market_imbalance.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.market_imbalance.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.market_imbalance.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.market_imbalance, range, value, display)

  return offset + length, value
end

-- Match Quantity
nyse_nysebonds_depthofbook_abp_v4_01_b.match_quantity = {}

-- Size: Match Quantity
nyse_nysebonds_depthofbook_abp_v4_01_b.match_quantity.size = 4

-- Display: Match Quantity
nyse_nysebonds_depthofbook_abp_v4_01_b.match_quantity.display = function(value)
  return "Match Quantity: "..value
end

-- Dissect: Match Quantity
nyse_nysebonds_depthofbook_abp_v4_01_b.match_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.match_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.match_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.match_quantity, range, value, display)

  return offset + length, value
end

-- Message Body Length
nyse_nysebonds_depthofbook_abp_v4_01_b.message_body_length = {}

-- Size: Message Body Length
nyse_nysebonds_depthofbook_abp_v4_01_b.message_body_length.size = 2

-- Display: Message Body Length
nyse_nysebonds_depthofbook_abp_v4_01_b.message_body_length.display = function(value)
  return "Message Body Length: "..value
end

-- Dissect: Message Body Length
nyse_nysebonds_depthofbook_abp_v4_01_b.message_body_length.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.message_body_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.message_body_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.message_body_length, range, value, display)

  return offset + length, value
end

-- Message Type
nyse_nysebonds_depthofbook_abp_v4_01_b.message_type = {}

-- Size: Message Type
nyse_nysebonds_depthofbook_abp_v4_01_b.message_type.size = 1

-- Display: Message Type
nyse_nysebonds_depthofbook_abp_v4_01_b.message_type.display = function(value)
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
  if value == "N" then
    return "Message Type: Add Order Message (N)"
  end
  if value == "C" then
    return "Message Type: Modify Order Message (C)"
  end
  if value == "K" then
    return "Message Type: Delete Order Message (K)"
  end
  if value == "W" then
    return "Message Type: Imbalance Message (W)"
  end
  if value == "Y" then
    return "Message Type: System Event Message (Y)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nyse_nysebonds_depthofbook_abp_v4_01_b.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.message_type, range, value, display)

  return offset + length, value
end

-- Minimum Quantity
nyse_nysebonds_depthofbook_abp_v4_01_b.minimum_quantity = {}

-- Size: Minimum Quantity
nyse_nysebonds_depthofbook_abp_v4_01_b.minimum_quantity.size = 4

-- Display: Minimum Quantity
nyse_nysebonds_depthofbook_abp_v4_01_b.minimum_quantity.display = function(value)
  return "Minimum Quantity: "..value
end

-- Dissect: Minimum Quantity
nyse_nysebonds_depthofbook_abp_v4_01_b.minimum_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.minimum_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.minimum_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.minimum_quantity, range, value, display)

  return offset + length, value
end

-- Next Expected Sequence Number
nyse_nysebonds_depthofbook_abp_v4_01_b.next_expected_sequence_number = {}

-- Size: Next Expected Sequence Number
nyse_nysebonds_depthofbook_abp_v4_01_b.next_expected_sequence_number.size = 4

-- Display: Next Expected Sequence Number
nyse_nysebonds_depthofbook_abp_v4_01_b.next_expected_sequence_number.display = function(value)
  return "Next Expected Sequence Number: "..value
end

-- Dissect: Next Expected Sequence Number
nyse_nysebonds_depthofbook_abp_v4_01_b.next_expected_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.next_expected_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.next_expected_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.next_expected_sequence_number, range, value, display)

  return offset + length, value
end

-- Nyse Bond Symbol
nyse_nysebonds_depthofbook_abp_v4_01_b.nyse_bond_symbol = {}

-- Size: Nyse Bond Symbol
nyse_nysebonds_depthofbook_abp_v4_01_b.nyse_bond_symbol.size = 22

-- Display: Nyse Bond Symbol
nyse_nysebonds_depthofbook_abp_v4_01_b.nyse_bond_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Nyse Bond Symbol: No Value"
  end

  return "Nyse Bond Symbol: "..value
end

-- Dissect: Nyse Bond Symbol
nyse_nysebonds_depthofbook_abp_v4_01_b.nyse_bond_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.nyse_bond_symbol.size
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

  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.nyse_bond_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.nyse_bond_symbol, range, value, display)

  return offset + length, value
end

-- Order Reference Number
nyse_nysebonds_depthofbook_abp_v4_01_b.order_reference_number = {}

-- Size: Order Reference Number
nyse_nysebonds_depthofbook_abp_v4_01_b.order_reference_number.size = 4

-- Display: Order Reference Number
nyse_nysebonds_depthofbook_abp_v4_01_b.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nyse_nysebonds_depthofbook_abp_v4_01_b.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.order_reference_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Order Type
nyse_nysebonds_depthofbook_abp_v4_01_b.order_type = {}

-- Size: Order Type
nyse_nysebonds_depthofbook_abp_v4_01_b.order_type.size = 1

-- Display: Order Type
nyse_nysebonds_depthofbook_abp_v4_01_b.order_type.display = function(value)
  if value == 0 then
    return "Order Type: Unspecified (0)"
  end
  if value == 1 then
    return "Order Type: All Or None (1)"
  end
  if value == 2 then
    return "Order Type: Minimum Quantity (2)"
  end

  return "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
nyse_nysebonds_depthofbook_abp_v4_01_b.order_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.order_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.order_type, range, value, display)

  return offset + length, value
end

-- Otc Subscription
nyse_nysebonds_depthofbook_abp_v4_01_b.otc_subscription = {}

-- Size: Otc Subscription
nyse_nysebonds_depthofbook_abp_v4_01_b.otc_subscription.size = 1

-- Display: Otc Subscription
nyse_nysebonds_depthofbook_abp_v4_01_b.otc_subscription.display = function(value)
  return "Otc Subscription: "..value
end

-- Dissect: Otc Subscription
nyse_nysebonds_depthofbook_abp_v4_01_b.otc_subscription.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.otc_subscription.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.otc_subscription.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.otc_subscription, range, value, display)

  return offset + length, value
end

-- Padding
nyse_nysebonds_depthofbook_abp_v4_01_b.padding = {}

-- Size: Padding
nyse_nysebonds_depthofbook_abp_v4_01_b.padding.size = 1

-- Display: Padding
nyse_nysebonds_depthofbook_abp_v4_01_b.padding.display = function(value)
  return "Padding: "..value
end

-- Dissect: Padding
nyse_nysebonds_depthofbook_abp_v4_01_b.padding.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.padding.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.padding.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.padding, range, value, display)

  return offset + length, value
end

-- Padding Ascii 1
nyse_nysebonds_depthofbook_abp_v4_01_b.padding_ascii_1 = {}

-- Size: Padding Ascii 1
nyse_nysebonds_depthofbook_abp_v4_01_b.padding_ascii_1.size = 1

-- Display: Padding Ascii 1
nyse_nysebonds_depthofbook_abp_v4_01_b.padding_ascii_1.display = function(value)
  return "Padding Ascii 1: "..value
end

-- Dissect: Padding Ascii 1
nyse_nysebonds_depthofbook_abp_v4_01_b.padding_ascii_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.padding_ascii_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.padding_ascii_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.padding_ascii_1, range, value, display)

  return offset + length, value
end

-- Padding Ascii 2
nyse_nysebonds_depthofbook_abp_v4_01_b.padding_ascii_2 = {}

-- Size: Padding Ascii 2
nyse_nysebonds_depthofbook_abp_v4_01_b.padding_ascii_2.size = 2

-- Display: Padding Ascii 2
nyse_nysebonds_depthofbook_abp_v4_01_b.padding_ascii_2.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Padding Ascii 2: No Value"
  end

  return "Padding Ascii 2: "..value
end

-- Dissect: Padding Ascii 2
nyse_nysebonds_depthofbook_abp_v4_01_b.padding_ascii_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.padding_ascii_2.size
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

  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.padding_ascii_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.padding_ascii_2, range, value, display)

  return offset + length, value
end

-- Padding Ascii 3
nyse_nysebonds_depthofbook_abp_v4_01_b.padding_ascii_3 = {}

-- Size: Padding Ascii 3
nyse_nysebonds_depthofbook_abp_v4_01_b.padding_ascii_3.size = 3

-- Display: Padding Ascii 3
nyse_nysebonds_depthofbook_abp_v4_01_b.padding_ascii_3.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Padding Ascii 3: No Value"
  end

  return "Padding Ascii 3: "..value
end

-- Dissect: Padding Ascii 3
nyse_nysebonds_depthofbook_abp_v4_01_b.padding_ascii_3.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.padding_ascii_3.size
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

  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.padding_ascii_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.padding_ascii_3, range, value, display)

  return offset + length, value
end

-- Password
nyse_nysebonds_depthofbook_abp_v4_01_b.password = {}

-- Size: Password
nyse_nysebonds_depthofbook_abp_v4_01_b.password.size = 10

-- Display: Password
nyse_nysebonds_depthofbook_abp_v4_01_b.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nyse_nysebonds_depthofbook_abp_v4_01_b.password.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.password.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.password, range, value, display)

  return offset + length, value
end

-- Price
nyse_nysebonds_depthofbook_abp_v4_01_b.price = {}

-- Size: Price
nyse_nysebonds_depthofbook_abp_v4_01_b.price.size = 4

-- Display: Price
nyse_nysebonds_depthofbook_abp_v4_01_b.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
nyse_nysebonds_depthofbook_abp_v4_01_b.price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.price, range, value, display)

  return offset + length, value
end

-- Price Scale Code
nyse_nysebonds_depthofbook_abp_v4_01_b.price_scale_code = {}

-- Size: Price Scale Code
nyse_nysebonds_depthofbook_abp_v4_01_b.price_scale_code.size = 1

-- Display: Price Scale Code
nyse_nysebonds_depthofbook_abp_v4_01_b.price_scale_code.display = function(value)
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
nyse_nysebonds_depthofbook_abp_v4_01_b.price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.price_scale_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Quantity
nyse_nysebonds_depthofbook_abp_v4_01_b.quantity = {}

-- Size: Quantity
nyse_nysebonds_depthofbook_abp_v4_01_b.quantity.size = 4

-- Display: Quantity
nyse_nysebonds_depthofbook_abp_v4_01_b.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
nyse_nysebonds_depthofbook_abp_v4_01_b.quantity.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.quantity, range, value, display)

  return offset + length, value
end

-- Quote Condition
nyse_nysebonds_depthofbook_abp_v4_01_b.quote_condition = {}

-- Size: Quote Condition
nyse_nysebonds_depthofbook_abp_v4_01_b.quote_condition.size = 1

-- Display: Quote Condition
nyse_nysebonds_depthofbook_abp_v4_01_b.quote_condition.display = function(value)
  return "Quote Condition: "..value
end

-- Dissect: Quote Condition
nyse_nysebonds_depthofbook_abp_v4_01_b.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.quote_condition.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Quote Id
nyse_nysebonds_depthofbook_abp_v4_01_b.quote_id = {}

-- Size: Quote Id
nyse_nysebonds_depthofbook_abp_v4_01_b.quote_id.size = 5

-- Display: Quote Id
nyse_nysebonds_depthofbook_abp_v4_01_b.quote_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Quote Id: No Value"
  end

  return "Quote Id: "..value
end

-- Dissect: Quote Id
nyse_nysebonds_depthofbook_abp_v4_01_b.quote_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.quote_id.size
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

  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.quote_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.quote_id, range, value, display)

  return offset + length, value
end

-- Reject Code
nyse_nysebonds_depthofbook_abp_v4_01_b.reject_code = {}

-- Size: Reject Code
nyse_nysebonds_depthofbook_abp_v4_01_b.reject_code.size = 1

-- Display: Reject Code
nyse_nysebonds_depthofbook_abp_v4_01_b.reject_code.display = function(value)
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
nyse_nysebonds_depthofbook_abp_v4_01_b.reject_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.reject_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.reject_code, range, value, display)

  return offset + length, value
end

-- Security Type
nyse_nysebonds_depthofbook_abp_v4_01_b.security_type = {}

-- Size: Security Type
nyse_nysebonds_depthofbook_abp_v4_01_b.security_type.size = 1

-- Display: Security Type
nyse_nysebonds_depthofbook_abp_v4_01_b.security_type.display = function(value)
  if value == 1 then
    return "Security Type: Corporate Bonds (1)"
  end

  return "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type
nyse_nysebonds_depthofbook_abp_v4_01_b.security_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.security_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.security_type, range, value, display)

  return offset + length, value
end

-- Sequence Number
nyse_nysebonds_depthofbook_abp_v4_01_b.sequence_number = {}

-- Size: Sequence Number
nyse_nysebonds_depthofbook_abp_v4_01_b.sequence_number.size = 4

-- Display: Sequence Number
nyse_nysebonds_depthofbook_abp_v4_01_b.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nyse_nysebonds_depthofbook_abp_v4_01_b.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- System Code
nyse_nysebonds_depthofbook_abp_v4_01_b.system_code = {}

-- Size: System Code
nyse_nysebonds_depthofbook_abp_v4_01_b.system_code.size = 1

-- Display: System Code
nyse_nysebonds_depthofbook_abp_v4_01_b.system_code.display = function(value)
  if value == "F" then
    return "System Code: Bonds (F)"
  end

  return "System Code: Unknown("..value..")"
end

-- Dissect: System Code
nyse_nysebonds_depthofbook_abp_v4_01_b.system_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.system_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.system_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.system_code, range, value, display)

  return offset + length, value
end

-- Test Message
nyse_nysebonds_depthofbook_abp_v4_01_b.test_message = {}

-- Size: Test Message
nyse_nysebonds_depthofbook_abp_v4_01_b.test_message.size = 20

-- Display: Test Message
nyse_nysebonds_depthofbook_abp_v4_01_b.test_message.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Test Message: No Value"
  end

  return "Test Message: "..value
end

-- Dissect: Test Message
nyse_nysebonds_depthofbook_abp_v4_01_b.test_message.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.test_message.size
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

  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.test_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.test_message, range, value, display)

  return offset + length, value
end

-- Test Request Text
nyse_nysebonds_depthofbook_abp_v4_01_b.test_request_text = {}

-- Size: Test Request Text
nyse_nysebonds_depthofbook_abp_v4_01_b.test_request_text.size = 20

-- Display: Test Request Text
nyse_nysebonds_depthofbook_abp_v4_01_b.test_request_text.display = function(value)
  return "Test Request Text: "..value
end

-- Dissect: Test Request Text
nyse_nysebonds_depthofbook_abp_v4_01_b.test_request_text.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.test_request_text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.test_request_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.test_request_text, range, value, display)

  return offset + length, value
end

-- Time
nyse_nysebonds_depthofbook_abp_v4_01_b.time = {}

-- Size: Time
nyse_nysebonds_depthofbook_abp_v4_01_b.time.size = 4

-- Display: Time
nyse_nysebonds_depthofbook_abp_v4_01_b.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
nyse_nysebonds_depthofbook_abp_v4_01_b.time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.time, range, value, display)

  return offset + length, value
end

-- Total Imbalance
nyse_nysebonds_depthofbook_abp_v4_01_b.total_imbalance = {}

-- Size: Total Imbalance
nyse_nysebonds_depthofbook_abp_v4_01_b.total_imbalance.size = 4

-- Display: Total Imbalance
nyse_nysebonds_depthofbook_abp_v4_01_b.total_imbalance.display = function(value)
  return "Total Imbalance: "..value
end

-- Dissect: Total Imbalance
nyse_nysebonds_depthofbook_abp_v4_01_b.total_imbalance.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.total_imbalance.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.total_imbalance.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.total_imbalance, range, value, display)

  return offset + length, value
end

-- Trading Action
nyse_nysebonds_depthofbook_abp_v4_01_b.trading_action = {}

-- Size: Trading Action
nyse_nysebonds_depthofbook_abp_v4_01_b.trading_action.size = 1

-- Display: Trading Action
nyse_nysebonds_depthofbook_abp_v4_01_b.trading_action.display = function(value)
  if value == 1 then
    return "Trading Action: Called (1)"
  end
  if value == 2 then
    return "Trading Action: Delisted (2)"
  end
  if value == 3 then
    return "Trading Action: Exinterest (3)"
  end
  if value == 4 then
    return "Trading Action: Missed An Interest Payment (4)"
  end
  if value == 5 then
    return "Trading Action: Bankrupt (5)"
  end
  if value == 6 then
    return "Trading Action: Late Filing (6)"
  end
  if value == 7 then
    return "Trading Action: Below Listing Standards (7)"
  end
  if value == 8 then
    return "Trading Action: Late Filing And Below Listing Standards (8)"
  end
  if value == 9 then
    return "Trading Action: Bankrupt And Late Filing (9)"
  end
  if value == 10 then
    return "Trading Action: Bankrupt And Below Listing Standards (10)"
  end

  return "Trading Action: Unknown("..value..")"
end

-- Dissect: Trading Action
nyse_nysebonds_depthofbook_abp_v4_01_b.trading_action.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.trading_action.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.trading_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.trading_action, range, value, display)

  return offset + length, value
end

-- Username
nyse_nysebonds_depthofbook_abp_v4_01_b.username = {}

-- Size: Username
nyse_nysebonds_depthofbook_abp_v4_01_b.username.size = 8

-- Display: Username
nyse_nysebonds_depthofbook_abp_v4_01_b.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nyse_nysebonds_depthofbook_abp_v4_01_b.username.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.username.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.username, range, value, display)

  return offset + length, value
end

-- Version Id
nyse_nysebonds_depthofbook_abp_v4_01_b.version_id = {}

-- Size: Version Id
nyse_nysebonds_depthofbook_abp_v4_01_b.version_id.size = 5

-- Display: Version Id
nyse_nysebonds_depthofbook_abp_v4_01_b.version_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Version Id: No Value"
  end

  return "Version Id: "..value
end

-- Dissect: Version Id
nyse_nysebonds_depthofbook_abp_v4_01_b.version_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_depthofbook_abp_v4_01_b.version_id.size
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

  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.version_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.version_id, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nyse NyseBonds DepthOfBook Abp 4.01.b
-----------------------------------------------------------------------

-- Test Request Message
nyse_nysebonds_depthofbook_abp_v4_01_b.test_request_message = {}

-- Size: Test Request Message
nyse_nysebonds_depthofbook_abp_v4_01_b.test_request_message.size =
  nyse_nysebonds_depthofbook_abp_v4_01_b.test_request_text.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.etx.size

-- Display: Test Request Message
nyse_nysebonds_depthofbook_abp_v4_01_b.test_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Test Request Message
nyse_nysebonds_depthofbook_abp_v4_01_b.test_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Test Request Text: 20 Byte Ascii String
  index, test_request_text = nyse_nysebonds_depthofbook_abp_v4_01_b.test_request_text.dissect(buffer, index, packet, parent)

  -- Etx: 1 Byte Unsigned Fixed Width Integer
  index, etx = nyse_nysebonds_depthofbook_abp_v4_01_b.etx.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Test Request Message
nyse_nysebonds_depthofbook_abp_v4_01_b.test_request_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.test_request_message, buffer(offset, 0))
    local index = nyse_nysebonds_depthofbook_abp_v4_01_b.test_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nysebonds_depthofbook_abp_v4_01_b.test_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nysebonds_depthofbook_abp_v4_01_b.test_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Response Message
nyse_nysebonds_depthofbook_abp_v4_01_b.heartbeat_response_message = {}

-- Size: Heartbeat Response Message
nyse_nysebonds_depthofbook_abp_v4_01_b.heartbeat_response_message.size =
  nyse_nysebonds_depthofbook_abp_v4_01_b.etx.size

-- Display: Heartbeat Response Message
nyse_nysebonds_depthofbook_abp_v4_01_b.heartbeat_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Response Message
nyse_nysebonds_depthofbook_abp_v4_01_b.heartbeat_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Etx: 1 Byte Unsigned Fixed Width Integer
  index, etx = nyse_nysebonds_depthofbook_abp_v4_01_b.etx.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Response Message
nyse_nysebonds_depthofbook_abp_v4_01_b.heartbeat_response_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.heartbeat_response_message, buffer(offset, 0))
    local index = nyse_nysebonds_depthofbook_abp_v4_01_b.heartbeat_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nysebonds_depthofbook_abp_v4_01_b.heartbeat_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nysebonds_depthofbook_abp_v4_01_b.heartbeat_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Logoff Message
nyse_nysebonds_depthofbook_abp_v4_01_b.logoff_message = {}

-- Size: Logoff Message
nyse_nysebonds_depthofbook_abp_v4_01_b.logoff_message.size =
  nyse_nysebonds_depthofbook_abp_v4_01_b.etx.size

-- Display: Logoff Message
nyse_nysebonds_depthofbook_abp_v4_01_b.logoff_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logoff Message
nyse_nysebonds_depthofbook_abp_v4_01_b.logoff_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Etx: 1 Byte Unsigned Fixed Width Integer
  index, etx = nyse_nysebonds_depthofbook_abp_v4_01_b.etx.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logoff Message
nyse_nysebonds_depthofbook_abp_v4_01_b.logoff_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.logoff_message, buffer(offset, 0))
    local index = nyse_nysebonds_depthofbook_abp_v4_01_b.logoff_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nysebonds_depthofbook_abp_v4_01_b.logoff_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nysebonds_depthofbook_abp_v4_01_b.logoff_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Message
nyse_nysebonds_depthofbook_abp_v4_01_b.login_message = {}

-- Size: Login Message
nyse_nysebonds_depthofbook_abp_v4_01_b.login_message.size =
  nyse_nysebonds_depthofbook_abp_v4_01_b.username.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.password.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.login_sequence_number.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.listed_subscription.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.etf_subscription.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.otc_subscription.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.global_otc_subscription.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.bond_subscription.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.etx.size

-- Display: Login Message
nyse_nysebonds_depthofbook_abp_v4_01_b.login_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Message
nyse_nysebonds_depthofbook_abp_v4_01_b.login_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 8 Byte Ascii String
  index, username = nyse_nysebonds_depthofbook_abp_v4_01_b.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nyse_nysebonds_depthofbook_abp_v4_01_b.password.dissect(buffer, index, packet, parent)

  -- Login Sequence Number: 10 Byte Ascii String
  index, login_sequence_number = nyse_nysebonds_depthofbook_abp_v4_01_b.login_sequence_number.dissect(buffer, index, packet, parent)

  -- Listed Subscription: 1 Byte Ascii String
  index, listed_subscription = nyse_nysebonds_depthofbook_abp_v4_01_b.listed_subscription.dissect(buffer, index, packet, parent)

  -- Etf Subscription: 1 Byte Ascii String
  index, etf_subscription = nyse_nysebonds_depthofbook_abp_v4_01_b.etf_subscription.dissect(buffer, index, packet, parent)

  -- Otc Subscription: 1 Byte Ascii String
  index, otc_subscription = nyse_nysebonds_depthofbook_abp_v4_01_b.otc_subscription.dissect(buffer, index, packet, parent)

  -- Global Otc Subscription: 1 Byte Ascii String
  index, global_otc_subscription = nyse_nysebonds_depthofbook_abp_v4_01_b.global_otc_subscription.dissect(buffer, index, packet, parent)

  -- Bond Subscription: 1 Byte Ascii String
  index, bond_subscription = nyse_nysebonds_depthofbook_abp_v4_01_b.bond_subscription.dissect(buffer, index, packet, parent)

  -- Etx: 1 Byte Unsigned Fixed Width Integer
  index, etx = nyse_nysebonds_depthofbook_abp_v4_01_b.etx.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Message
nyse_nysebonds_depthofbook_abp_v4_01_b.login_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.login_message, buffer(offset, 0))
    local index = nyse_nysebonds_depthofbook_abp_v4_01_b.login_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nysebonds_depthofbook_abp_v4_01_b.login_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nysebonds_depthofbook_abp_v4_01_b.login_message.fields(buffer, offset, packet, parent)
  end
end

-- Client Data
nyse_nysebonds_depthofbook_abp_v4_01_b.client_data = {}

-- Dissect: Client Data
nyse_nysebonds_depthofbook_abp_v4_01_b.client_data.dissect = function(buffer, offset, packet, parent, client_message_type)
  -- Dissect Login Message
  if client_message_type == "L" then
    return nyse_nysebonds_depthofbook_abp_v4_01_b.login_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logoff Message
  if client_message_type == "O" then
    return nyse_nysebonds_depthofbook_abp_v4_01_b.logoff_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Response Message
  if client_message_type == "H" then
    return nyse_nysebonds_depthofbook_abp_v4_01_b.heartbeat_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Test Request Message
  if client_message_type == "T" then
    return nyse_nysebonds_depthofbook_abp_v4_01_b.test_request_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Message Header
nyse_nysebonds_depthofbook_abp_v4_01_b.client_message_header = {}

-- Size: Client Message Header
nyse_nysebonds_depthofbook_abp_v4_01_b.client_message_header.size =
  nyse_nysebonds_depthofbook_abp_v4_01_b.client_message_type.size

-- Display: Client Message Header
nyse_nysebonds_depthofbook_abp_v4_01_b.client_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Message Header
nyse_nysebonds_depthofbook_abp_v4_01_b.client_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Type: 1 Byte Ascii String
  index, client_message_type = nyse_nysebonds_depthofbook_abp_v4_01_b.client_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Message Header
nyse_nysebonds_depthofbook_abp_v4_01_b.client_message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.client_message_header, buffer(offset, 0))
    local index = nyse_nysebonds_depthofbook_abp_v4_01_b.client_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nysebonds_depthofbook_abp_v4_01_b.client_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nysebonds_depthofbook_abp_v4_01_b.client_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Packet
nyse_nysebonds_depthofbook_abp_v4_01_b.client_packet = {}

-- Verify required size of Tcp packet
nyse_nysebonds_depthofbook_abp_v4_01_b.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nyse_nysebonds_depthofbook_abp_v4_01_b.client_message_header.size
end

-- Dissect Client Packet
nyse_nysebonds_depthofbook_abp_v4_01_b.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Client Message Header: Struct of 1 fields
  index, client_message_header = nyse_nysebonds_depthofbook_abp_v4_01_b.client_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Message Type
  local client_message_type = buffer(index - 1, 1):string()

  -- Client Data: Runtime Type with 4 branches
  index = nyse_nysebonds_depthofbook_abp_v4_01_b.client_data.dissect(buffer, index, packet, parent, client_message_type)

  return index
end

-- System Event Message
nyse_nysebonds_depthofbook_abp_v4_01_b.system_event_message = {}

-- Size: System Event Message
nyse_nysebonds_depthofbook_abp_v4_01_b.system_event_message.size =
  nyse_nysebonds_depthofbook_abp_v4_01_b.time.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.sequence_number.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.next_expected_sequence_number.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.event_code.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.system_code.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.nyse_bond_symbol.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.cusip_isin.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.padding_ascii_2.size

-- Display: System Event Message
nyse_nysebonds_depthofbook_abp_v4_01_b.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nyse_nysebonds_depthofbook_abp_v4_01_b.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary
  index, time = nyse_nysebonds_depthofbook_abp_v4_01_b.time.dissect(buffer, index, packet, parent)

  -- Sequence Number: Binary
  index, sequence_number = nyse_nysebonds_depthofbook_abp_v4_01_b.sequence_number.dissect(buffer, index, packet, parent)

  -- Next Expected Sequence Number: Binary
  index, next_expected_sequence_number = nyse_nysebonds_depthofbook_abp_v4_01_b.next_expected_sequence_number.dissect(buffer, index, packet, parent)

  -- Event Code: ASCII
  index, event_code = nyse_nysebonds_depthofbook_abp_v4_01_b.event_code.dissect(buffer, index, packet, parent)

  -- System Code: ASCII
  index, system_code = nyse_nysebonds_depthofbook_abp_v4_01_b.system_code.dissect(buffer, index, packet, parent)

  -- Nyse Bond Symbol: ASCII
  index, nyse_bond_symbol = nyse_nysebonds_depthofbook_abp_v4_01_b.nyse_bond_symbol.dissect(buffer, index, packet, parent)

  -- Cusip Isin: ASCII
  index, cusip_isin = nyse_nysebonds_depthofbook_abp_v4_01_b.cusip_isin.dissect(buffer, index, packet, parent)

  -- Padding Ascii 2: ASCII
  index, padding_ascii_2 = nyse_nysebonds_depthofbook_abp_v4_01_b.padding_ascii_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nyse_nysebonds_depthofbook_abp_v4_01_b.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.system_event_message, buffer(offset, 0))
    local index = nyse_nysebonds_depthofbook_abp_v4_01_b.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nysebonds_depthofbook_abp_v4_01_b.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nysebonds_depthofbook_abp_v4_01_b.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Imbalance Message
nyse_nysebonds_depthofbook_abp_v4_01_b.imbalance_message = {}

-- Size: Imbalance Message
nyse_nysebonds_depthofbook_abp_v4_01_b.imbalance_message.size =
  nyse_nysebonds_depthofbook_abp_v4_01_b.time.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.sequence_number.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.match_quantity.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.total_imbalance.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.market_imbalance.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.price.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.price_scale_code.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.exchange_code.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.system_code.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.auction_type.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.flat_pricing.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.trading_action.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.security_type.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.quote_condition.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.nyse_bond_symbol.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.cusip_isin.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.auction_time.size

-- Display: Imbalance Message
nyse_nysebonds_depthofbook_abp_v4_01_b.imbalance_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Imbalance Message
nyse_nysebonds_depthofbook_abp_v4_01_b.imbalance_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary
  index, time = nyse_nysebonds_depthofbook_abp_v4_01_b.time.dissect(buffer, index, packet, parent)

  -- Sequence Number: Binary
  index, sequence_number = nyse_nysebonds_depthofbook_abp_v4_01_b.sequence_number.dissect(buffer, index, packet, parent)

  -- Match Quantity: Binary
  index, match_quantity = nyse_nysebonds_depthofbook_abp_v4_01_b.match_quantity.dissect(buffer, index, packet, parent)

  -- Total Imbalance: Binary
  index, total_imbalance = nyse_nysebonds_depthofbook_abp_v4_01_b.total_imbalance.dissect(buffer, index, packet, parent)

  -- Market Imbalance: Binary
  index, market_imbalance = nyse_nysebonds_depthofbook_abp_v4_01_b.market_imbalance.dissect(buffer, index, packet, parent)

  -- Price: Binary
  index, price = nyse_nysebonds_depthofbook_abp_v4_01_b.price.dissect(buffer, index, packet, parent)

  -- Price Scale Code: ASCII
  index, price_scale_code = nyse_nysebonds_depthofbook_abp_v4_01_b.price_scale_code.dissect(buffer, index, packet, parent)

  -- Exchange Code: ASCII
  index, exchange_code = nyse_nysebonds_depthofbook_abp_v4_01_b.exchange_code.dissect(buffer, index, packet, parent)

  -- System Code: ASCII
  index, system_code = nyse_nysebonds_depthofbook_abp_v4_01_b.system_code.dissect(buffer, index, packet, parent)

  -- Auction Type: ASCII
  index, auction_type = nyse_nysebonds_depthofbook_abp_v4_01_b.auction_type.dissect(buffer, index, packet, parent)

  -- Flat Pricing: ASCII
  index, flat_pricing = nyse_nysebonds_depthofbook_abp_v4_01_b.flat_pricing.dissect(buffer, index, packet, parent)

  -- Trading Action: Binary
  index, trading_action = nyse_nysebonds_depthofbook_abp_v4_01_b.trading_action.dissect(buffer, index, packet, parent)

  -- Security Type: Binary
  index, security_type = nyse_nysebonds_depthofbook_abp_v4_01_b.security_type.dissect(buffer, index, packet, parent)

  -- Quote Condition: Binary
  index, quote_condition = nyse_nysebonds_depthofbook_abp_v4_01_b.quote_condition.dissect(buffer, index, packet, parent)

  -- Nyse Bond Symbol: ASCII
  index, nyse_bond_symbol = nyse_nysebonds_depthofbook_abp_v4_01_b.nyse_bond_symbol.dissect(buffer, index, packet, parent)

  -- Cusip Isin: ASCII
  index, cusip_isin = nyse_nysebonds_depthofbook_abp_v4_01_b.cusip_isin.dissect(buffer, index, packet, parent)

  -- Auction Time: ASCII
  index, auction_time = nyse_nysebonds_depthofbook_abp_v4_01_b.auction_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Imbalance Message
nyse_nysebonds_depthofbook_abp_v4_01_b.imbalance_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.imbalance_message, buffer(offset, 0))
    local index = nyse_nysebonds_depthofbook_abp_v4_01_b.imbalance_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nysebonds_depthofbook_abp_v4_01_b.imbalance_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nysebonds_depthofbook_abp_v4_01_b.imbalance_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
nyse_nysebonds_depthofbook_abp_v4_01_b.delete_order_message = {}

-- Size: Delete Order Message
nyse_nysebonds_depthofbook_abp_v4_01_b.delete_order_message.size =
  nyse_nysebonds_depthofbook_abp_v4_01_b.time.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.sequence_number.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.order_reference_number.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.exchange_code.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.system_code.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.buy_sell_indicator.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.flat_pricing.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.trading_action.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.security_type.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.order_type.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.nyse_bond_symbol.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.cusip_isin.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.quote_id.size

-- Display: Delete Order Message
nyse_nysebonds_depthofbook_abp_v4_01_b.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
nyse_nysebonds_depthofbook_abp_v4_01_b.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary
  index, time = nyse_nysebonds_depthofbook_abp_v4_01_b.time.dissect(buffer, index, packet, parent)

  -- Sequence Number: Binary
  index, sequence_number = nyse_nysebonds_depthofbook_abp_v4_01_b.sequence_number.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Binary
  index, order_reference_number = nyse_nysebonds_depthofbook_abp_v4_01_b.order_reference_number.dissect(buffer, index, packet, parent)

  -- Exchange Code: ASCII
  index, exchange_code = nyse_nysebonds_depthofbook_abp_v4_01_b.exchange_code.dissect(buffer, index, packet, parent)

  -- System Code: ASCII
  index, system_code = nyse_nysebonds_depthofbook_abp_v4_01_b.system_code.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: ASCII
  index, buy_sell_indicator = nyse_nysebonds_depthofbook_abp_v4_01_b.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Flat Pricing: ASCII
  index, flat_pricing = nyse_nysebonds_depthofbook_abp_v4_01_b.flat_pricing.dissect(buffer, index, packet, parent)

  -- Trading Action: Binary
  index, trading_action = nyse_nysebonds_depthofbook_abp_v4_01_b.trading_action.dissect(buffer, index, packet, parent)

  -- Security Type: Binary
  index, security_type = nyse_nysebonds_depthofbook_abp_v4_01_b.security_type.dissect(buffer, index, packet, parent)

  -- Order Type: Binary
  index, order_type = nyse_nysebonds_depthofbook_abp_v4_01_b.order_type.dissect(buffer, index, packet, parent)

  -- Nyse Bond Symbol: ASCII
  index, nyse_bond_symbol = nyse_nysebonds_depthofbook_abp_v4_01_b.nyse_bond_symbol.dissect(buffer, index, packet, parent)

  -- Cusip Isin: ASCII
  index, cusip_isin = nyse_nysebonds_depthofbook_abp_v4_01_b.cusip_isin.dissect(buffer, index, packet, parent)

  -- Quote Id: ASCII
  index, quote_id = nyse_nysebonds_depthofbook_abp_v4_01_b.quote_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
nyse_nysebonds_depthofbook_abp_v4_01_b.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.delete_order_message, buffer(offset, 0))
    local index = nyse_nysebonds_depthofbook_abp_v4_01_b.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nysebonds_depthofbook_abp_v4_01_b.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nysebonds_depthofbook_abp_v4_01_b.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Message
nyse_nysebonds_depthofbook_abp_v4_01_b.modify_order_message = {}

-- Size: Modify Order Message
nyse_nysebonds_depthofbook_abp_v4_01_b.modify_order_message.size =
  nyse_nysebonds_depthofbook_abp_v4_01_b.time.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.sequence_number.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.order_reference_number.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.quantity.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.price.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.price_scale_code.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.exchange_code.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.system_code.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.buy_sell_indicator.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.flat_pricing.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.trading_action.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.security_type.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.order_type.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.nyse_bond_symbol.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.cusip_isin.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.quote_id.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.padding_ascii_3.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.minimum_quantity.size

-- Display: Modify Order Message
nyse_nysebonds_depthofbook_abp_v4_01_b.modify_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Message
nyse_nysebonds_depthofbook_abp_v4_01_b.modify_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary
  index, time = nyse_nysebonds_depthofbook_abp_v4_01_b.time.dissect(buffer, index, packet, parent)

  -- Sequence Number: Binary
  index, sequence_number = nyse_nysebonds_depthofbook_abp_v4_01_b.sequence_number.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Binary
  index, order_reference_number = nyse_nysebonds_depthofbook_abp_v4_01_b.order_reference_number.dissect(buffer, index, packet, parent)

  -- Quantity: Binary
  index, quantity = nyse_nysebonds_depthofbook_abp_v4_01_b.quantity.dissect(buffer, index, packet, parent)

  -- Price: Binary
  index, price = nyse_nysebonds_depthofbook_abp_v4_01_b.price.dissect(buffer, index, packet, parent)

  -- Price Scale Code: ASCII
  index, price_scale_code = nyse_nysebonds_depthofbook_abp_v4_01_b.price_scale_code.dissect(buffer, index, packet, parent)

  -- Exchange Code: ASCII
  index, exchange_code = nyse_nysebonds_depthofbook_abp_v4_01_b.exchange_code.dissect(buffer, index, packet, parent)

  -- System Code: ASCII
  index, system_code = nyse_nysebonds_depthofbook_abp_v4_01_b.system_code.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: ASCII
  index, buy_sell_indicator = nyse_nysebonds_depthofbook_abp_v4_01_b.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Flat Pricing: ASCII
  index, flat_pricing = nyse_nysebonds_depthofbook_abp_v4_01_b.flat_pricing.dissect(buffer, index, packet, parent)

  -- Trading Action: Binary
  index, trading_action = nyse_nysebonds_depthofbook_abp_v4_01_b.trading_action.dissect(buffer, index, packet, parent)

  -- Security Type: Binary
  index, security_type = nyse_nysebonds_depthofbook_abp_v4_01_b.security_type.dissect(buffer, index, packet, parent)

  -- Order Type: Binary
  index, order_type = nyse_nysebonds_depthofbook_abp_v4_01_b.order_type.dissect(buffer, index, packet, parent)

  -- Nyse Bond Symbol: ASCII
  index, nyse_bond_symbol = nyse_nysebonds_depthofbook_abp_v4_01_b.nyse_bond_symbol.dissect(buffer, index, packet, parent)

  -- Cusip Isin: ASCII
  index, cusip_isin = nyse_nysebonds_depthofbook_abp_v4_01_b.cusip_isin.dissect(buffer, index, packet, parent)

  -- Quote Id: ASCII
  index, quote_id = nyse_nysebonds_depthofbook_abp_v4_01_b.quote_id.dissect(buffer, index, packet, parent)

  -- Padding Ascii 3: ASCII
  index, padding_ascii_3 = nyse_nysebonds_depthofbook_abp_v4_01_b.padding_ascii_3.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: Binary
  index, minimum_quantity = nyse_nysebonds_depthofbook_abp_v4_01_b.minimum_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Message
nyse_nysebonds_depthofbook_abp_v4_01_b.modify_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.modify_order_message, buffer(offset, 0))
    local index = nyse_nysebonds_depthofbook_abp_v4_01_b.modify_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nysebonds_depthofbook_abp_v4_01_b.modify_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nysebonds_depthofbook_abp_v4_01_b.modify_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
nyse_nysebonds_depthofbook_abp_v4_01_b.add_order_message = {}

-- Size: Add Order Message
nyse_nysebonds_depthofbook_abp_v4_01_b.add_order_message.size =
  nyse_nysebonds_depthofbook_abp_v4_01_b.time.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.sequence_number.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.order_reference_number.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.quantity.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.price.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.price_scale_code.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.exchange_code.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.system_code.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.buy_sell_indicator.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.flat_pricing.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.trading_action.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.security_type.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.order_type.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.nyse_bond_symbol.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.cusip_isin.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.quote_id.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.padding_ascii_3.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.minimum_quantity.size

-- Display: Add Order Message
nyse_nysebonds_depthofbook_abp_v4_01_b.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
nyse_nysebonds_depthofbook_abp_v4_01_b.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary
  index, time = nyse_nysebonds_depthofbook_abp_v4_01_b.time.dissect(buffer, index, packet, parent)

  -- Sequence Number: Binary
  index, sequence_number = nyse_nysebonds_depthofbook_abp_v4_01_b.sequence_number.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Binary
  index, order_reference_number = nyse_nysebonds_depthofbook_abp_v4_01_b.order_reference_number.dissect(buffer, index, packet, parent)

  -- Quantity: Binary
  index, quantity = nyse_nysebonds_depthofbook_abp_v4_01_b.quantity.dissect(buffer, index, packet, parent)

  -- Price: Binary
  index, price = nyse_nysebonds_depthofbook_abp_v4_01_b.price.dissect(buffer, index, packet, parent)

  -- Price Scale Code: ASCII
  index, price_scale_code = nyse_nysebonds_depthofbook_abp_v4_01_b.price_scale_code.dissect(buffer, index, packet, parent)

  -- Exchange Code: ASCII
  index, exchange_code = nyse_nysebonds_depthofbook_abp_v4_01_b.exchange_code.dissect(buffer, index, packet, parent)

  -- System Code: ASCII
  index, system_code = nyse_nysebonds_depthofbook_abp_v4_01_b.system_code.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: ASCII
  index, buy_sell_indicator = nyse_nysebonds_depthofbook_abp_v4_01_b.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Flat Pricing: ASCII
  index, flat_pricing = nyse_nysebonds_depthofbook_abp_v4_01_b.flat_pricing.dissect(buffer, index, packet, parent)

  -- Trading Action: Binary
  index, trading_action = nyse_nysebonds_depthofbook_abp_v4_01_b.trading_action.dissect(buffer, index, packet, parent)

  -- Security Type: Binary
  index, security_type = nyse_nysebonds_depthofbook_abp_v4_01_b.security_type.dissect(buffer, index, packet, parent)

  -- Order Type: Binary
  index, order_type = nyse_nysebonds_depthofbook_abp_v4_01_b.order_type.dissect(buffer, index, packet, parent)

  -- Nyse Bond Symbol: ASCII
  index, nyse_bond_symbol = nyse_nysebonds_depthofbook_abp_v4_01_b.nyse_bond_symbol.dissect(buffer, index, packet, parent)

  -- Cusip Isin: ASCII
  index, cusip_isin = nyse_nysebonds_depthofbook_abp_v4_01_b.cusip_isin.dissect(buffer, index, packet, parent)

  -- Quote Id: ASCII
  index, quote_id = nyse_nysebonds_depthofbook_abp_v4_01_b.quote_id.dissect(buffer, index, packet, parent)

  -- Padding Ascii 3: ASCII
  index, padding_ascii_3 = nyse_nysebonds_depthofbook_abp_v4_01_b.padding_ascii_3.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: Binary
  index, minimum_quantity = nyse_nysebonds_depthofbook_abp_v4_01_b.minimum_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
nyse_nysebonds_depthofbook_abp_v4_01_b.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.add_order_message, buffer(offset, 0))
    local index = nyse_nysebonds_depthofbook_abp_v4_01_b.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nysebonds_depthofbook_abp_v4_01_b.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nysebonds_depthofbook_abp_v4_01_b.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Test Response Message
nyse_nysebonds_depthofbook_abp_v4_01_b.test_response_message = {}

-- Size: Test Response Message
nyse_nysebonds_depthofbook_abp_v4_01_b.test_response_message.size =
  nyse_nysebonds_depthofbook_abp_v4_01_b.test_message.size

-- Display: Test Response Message
nyse_nysebonds_depthofbook_abp_v4_01_b.test_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Test Response Message
nyse_nysebonds_depthofbook_abp_v4_01_b.test_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Test Message: ASCII
  index, test_message = nyse_nysebonds_depthofbook_abp_v4_01_b.test_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Test Response Message
nyse_nysebonds_depthofbook_abp_v4_01_b.test_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.test_response_message, buffer(offset, 0))
    local index = nyse_nysebonds_depthofbook_abp_v4_01_b.test_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nysebonds_depthofbook_abp_v4_01_b.test_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nysebonds_depthofbook_abp_v4_01_b.test_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
nyse_nysebonds_depthofbook_abp_v4_01_b.heartbeat_message = {}

-- Display: Heartbeat Message
nyse_nysebonds_depthofbook_abp_v4_01_b.heartbeat_message.display = function(packet, parent, length)
  return "Heartbeat Message"
end


-- Dissect: Heartbeat Message
nyse_nysebonds_depthofbook_abp_v4_01_b.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  local display = nyse_nysebonds_depthofbook_abp_v4_01_b.heartbeat_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Login Rejected Message
nyse_nysebonds_depthofbook_abp_v4_01_b.login_rejected_message = {}

-- Size: Login Rejected Message
nyse_nysebonds_depthofbook_abp_v4_01_b.login_rejected_message.size =
  nyse_nysebonds_depthofbook_abp_v4_01_b.reject_code.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.padding_ascii_1.size

-- Display: Login Rejected Message
nyse_nysebonds_depthofbook_abp_v4_01_b.login_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Message
nyse_nysebonds_depthofbook_abp_v4_01_b.login_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Code: ASCII
  index, reject_code = nyse_nysebonds_depthofbook_abp_v4_01_b.reject_code.dissect(buffer, index, packet, parent)

  -- Padding Ascii 1: ASCII
  index, padding_ascii_1 = nyse_nysebonds_depthofbook_abp_v4_01_b.padding_ascii_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Message
nyse_nysebonds_depthofbook_abp_v4_01_b.login_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.login_rejected_message, buffer(offset, 0))
    local index = nyse_nysebonds_depthofbook_abp_v4_01_b.login_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nysebonds_depthofbook_abp_v4_01_b.login_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nysebonds_depthofbook_abp_v4_01_b.login_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Message
nyse_nysebonds_depthofbook_abp_v4_01_b.login_accepted_message = {}

-- Size: Login Accepted Message
nyse_nysebonds_depthofbook_abp_v4_01_b.login_accepted_message.size =
  nyse_nysebonds_depthofbook_abp_v4_01_b.version_id.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.padding_ascii_1.size

-- Display: Login Accepted Message
nyse_nysebonds_depthofbook_abp_v4_01_b.login_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Message
nyse_nysebonds_depthofbook_abp_v4_01_b.login_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Version Id: ASCII
  index, version_id = nyse_nysebonds_depthofbook_abp_v4_01_b.version_id.dissect(buffer, index, packet, parent)

  -- Padding Ascii 1: ASCII
  index, padding_ascii_1 = nyse_nysebonds_depthofbook_abp_v4_01_b.padding_ascii_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Message
nyse_nysebonds_depthofbook_abp_v4_01_b.login_accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.login_accepted_message, buffer(offset, 0))
    local index = nyse_nysebonds_depthofbook_abp_v4_01_b.login_accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nysebonds_depthofbook_abp_v4_01_b.login_accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nysebonds_depthofbook_abp_v4_01_b.login_accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nyse_nysebonds_depthofbook_abp_v4_01_b.payload = {}

-- Dissect: Payload
nyse_nysebonds_depthofbook_abp_v4_01_b.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Accepted Message
  if message_type == "Q" then
    return nyse_nysebonds_depthofbook_abp_v4_01_b.login_accepted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Message
  if message_type == "R" then
    return nyse_nysebonds_depthofbook_abp_v4_01_b.login_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Message
  if message_type == "H" then
    return nyse_nysebonds_depthofbook_abp_v4_01_b.heartbeat_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Test Response Message
  if message_type == "S" then
    return nyse_nysebonds_depthofbook_abp_v4_01_b.test_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if message_type == "N" then
    return nyse_nysebonds_depthofbook_abp_v4_01_b.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Message
  if message_type == "C" then
    return nyse_nysebonds_depthofbook_abp_v4_01_b.modify_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == "K" then
    return nyse_nysebonds_depthofbook_abp_v4_01_b.delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Imbalance Message
  if message_type == "W" then
    return nyse_nysebonds_depthofbook_abp_v4_01_b.imbalance_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == "Y" then
    return nyse_nysebonds_depthofbook_abp_v4_01_b.system_event_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nyse_nysebonds_depthofbook_abp_v4_01_b.message_header = {}

-- Size: Message Header
nyse_nysebonds_depthofbook_abp_v4_01_b.message_header.size =
  nyse_nysebonds_depthofbook_abp_v4_01_b.message_body_length.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.message_type.size + 
  nyse_nysebonds_depthofbook_abp_v4_01_b.padding.size

-- Display: Message Header
nyse_nysebonds_depthofbook_abp_v4_01_b.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_nysebonds_depthofbook_abp_v4_01_b.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Body Length: 2 Byte Unsigned Fixed Width Integer
  index, message_body_length = nyse_nysebonds_depthofbook_abp_v4_01_b.message_body_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 9 values
  index, message_type = nyse_nysebonds_depthofbook_abp_v4_01_b.message_type.dissect(buffer, index, packet, parent)

  -- Padding: 1 Byte Ascii String
  index, padding = nyse_nysebonds_depthofbook_abp_v4_01_b.padding.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_nysebonds_depthofbook_abp_v4_01_b.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.message_header, buffer(offset, 0))
    local index = nyse_nysebonds_depthofbook_abp_v4_01_b.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nysebonds_depthofbook_abp_v4_01_b.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nysebonds_depthofbook_abp_v4_01_b.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nyse_nysebonds_depthofbook_abp_v4_01_b.message = {}

-- Display: Message
nyse_nysebonds_depthofbook_abp_v4_01_b.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_nysebonds_depthofbook_abp_v4_01_b.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = nyse_nysebonds_depthofbook_abp_v4_01_b.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 1):string()

  -- Payload: Runtime Type with 9 branches
  index = nyse_nysebonds_depthofbook_abp_v4_01_b.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nyse_nysebonds_depthofbook_abp_v4_01_b.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b.fields.message, buffer(offset, 0))
    local current = nyse_nysebonds_depthofbook_abp_v4_01_b.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = nyse_nysebonds_depthofbook_abp_v4_01_b.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_nysebonds_depthofbook_abp_v4_01_b.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Remaining Bytes For: Message
local message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nyse_nysebonds_depthofbook_abp_v4_01_b.message_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):uint() + 4

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Server Packet
nyse_nysebonds_depthofbook_abp_v4_01_b.server_packet = {}

-- Verify required size of Tcp packet
nyse_nysebonds_depthofbook_abp_v4_01_b.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nyse_nysebonds_depthofbook_abp_v4_01_b.message_header.size
end

-- Dissect Server Packet
nyse_nysebonds_depthofbook_abp_v4_01_b.server_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_message = message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_message):tvb()
      index = nyse_nysebonds_depthofbook_abp_v4_01_b.message.dissect(frame, index, packet, parent, size_of_message)
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
function omi_nyse_nysebonds_depthofbook_abp_v4_01_b.init()
end

-- Connection roles for Nyse NyseBonds DepthOfBook Abp 4.01.b: Client is the initiator, Server is the acceptor
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
nyse_nysebonds_depthofbook_abp_v4_01_b.role = function(packet)
  if omi_nyse_nysebonds_depthofbook_abp_v4_01_b.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nyse_nysebonds_depthofbook_abp_v4_01_b.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nyse_nysebonds_depthofbook_abp_v4_01_b.prefs.acceptor_port

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

  if omi_nyse_nysebonds_depthofbook_abp_v4_01_b.prefs.swap_sides then
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
nyse_nysebonds_depthofbook_abp_v4_01_b.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nyse NyseBonds DepthOfBook Abp 4.01.b
function omi_nyse_nysebonds_depthofbook_abp_v4_01_b.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nyse_nysebonds_depthofbook_abp_v4_01_b.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_nysebonds_depthofbook_abp_v4_01_b, buffer(), omi_nyse_nysebonds_depthofbook_abp_v4_01_b.description, "("..buffer:len().." Bytes)")
  local role = nyse_nysebonds_depthofbook_abp_v4_01_b.role(packet)

  if role == "initiator" then
    return nyse_nysebonds_depthofbook_abp_v4_01_b.client_packet.dissect(buffer, packet, protocol)
  end

  return nyse_nysebonds_depthofbook_abp_v4_01_b.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Server Packet: would its message dispatch accept this frame?
nyse_nysebonds_depthofbook_abp_v4_01_b.server_packet.fingerprint = function(buffer)
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

  -- Add Order Message
  if message_type == "N" then
    return true
  end

  -- Modify Order Message
  if message_type == "C" then
    return true
  end

  -- Delete Order Message
  if message_type == "K" then
    return true
  end

  -- Imbalance Message
  if message_type == "W" then
    return true
  end

  -- System Event Message
  if message_type == "Y" then
    return true
  end

  return false
end

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nyse_nysebonds_depthofbook_abp_v4_01_b.client_packet.fingerprint = function(buffer)
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

-- Dissector Heuristic for Nyse NyseBonds DepthOfBook Abp 4.01.b (Tcp)
local function omi_nyse_nysebonds_depthofbook_abp_v4_01_b_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_nysebonds_depthofbook_abp_v4_01_b.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nyse_nysebonds_depthofbook_abp_v4_01_b.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_nysebonds_depthofbook_abp_v4_01_b
  omi_nyse_nysebonds_depthofbook_abp_v4_01_b.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nyse NyseBonds DepthOfBook Abp 4.01.b (Tcp)
local function omi_nyse_nysebonds_depthofbook_abp_v4_01_b_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_nysebonds_depthofbook_abp_v4_01_b.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nyse_nysebonds_depthofbook_abp_v4_01_b.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_nysebonds_depthofbook_abp_v4_01_b
  omi_nyse_nysebonds_depthofbook_abp_v4_01_b.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nyse NyseBonds DepthOfBook Abp 4.01.b (Tcp): apply the heuristic of the sender's connection role
local function omi_nyse_nysebonds_depthofbook_abp_v4_01_b_tcp_heuristic(buffer, packet, parent)
  local role = nyse_nysebonds_depthofbook_abp_v4_01_b.role(packet)
  local initiator = omi_nyse_nysebonds_depthofbook_abp_v4_01_b_tcp_initiator_heuristic
  local acceptor = omi_nyse_nysebonds_depthofbook_abp_v4_01_b_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nyse_nysebonds_depthofbook_abp_v4_01_b.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nyse_nysebonds_depthofbook_abp_v4_01_b.swap(packet)

  return false
end

-- Register Heuristics for Nyse NyseBonds DepthOfBook Abp 4.01.b
omi_nyse_nysebonds_depthofbook_abp_v4_01_b:register_heuristic("tcp", omi_nyse_nysebonds_depthofbook_abp_v4_01_b_tcp_heuristic)

-- Register Nyse NyseBonds DepthOfBook Abp 4.01.b for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nyse_nysebonds_depthofbook_abp_v4_01_b)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 4.01.b
--   Date: Tuesday, October 13, 2015
--   Specification: NYSE_Bonds_Depth_of_Book_Client_Spec.pdf
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
