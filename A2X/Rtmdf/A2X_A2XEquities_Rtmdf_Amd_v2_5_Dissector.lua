-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- A2X A2XEquities Rtmdf Amd 2.5 Protocol
local omi_a2x_a2xequities_rtmdf_amd_v2_5 = Proto("Omi.A2X.A2XEquities.Rtmdf.Amd.v2.5", "A2X A2XEquities Rtmdf Amd 2.5")

-- Protocol table
local a2x_a2xequities_rtmdf_amd_v2_5 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- A2X A2XEquities Rtmdf Amd 2.5 Fields
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.aod_enabled = ProtoField.new("Aod Enabled", "a2x.a2xequities.rtmdf.amd.v2.5.aodenabled", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010, "Security is enabled for the AoD")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.closing_buy_qty = ProtoField.new("Closing Buy Qty", "a2x.a2xequities.rtmdf.amd.v2.5.closingbuyqty", ftypes.UINT32, nil, nil, nil, "Total order quantity on the buy side during the closing market")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.closing_sell_qty = ProtoField.new("Closing Sell Qty", "a2x.a2xequities.rtmdf.amd.v2.5.closingsellqty", ftypes.UINT32, nil, nil, nil, "Total order quantity on the sell side during the closing market")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.currency = ProtoField.new("Currency", "a2x.a2xequities.rtmdf.amd.v2.5.currency", ftypes.STRING, nil, nil, nil, "Trading currency for the security")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.flags = ProtoField.new("Flags", "a2x.a2xequities.rtmdf.amd.v2.5.flags", ftypes.STRING, nil, nil, nil, "Security flags")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.illiquid = ProtoField.new("Illiquid", "a2x.a2xequities.rtmdf.amd.v2.5.illiquid", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004, "Security is illiquid")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.indicative_price = ProtoField.new("Indicative Price", "a2x.a2xequities.rtmdf.amd.v2.5.indicativeprice", ftypes.DOUBLE, nil, nil, nil, "Indicative auction price")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.isin = ProtoField.new("Isin", "a2x.a2xequities.rtmdf.amd.v2.5.isin", ftypes.STRING, nil, nil, nil, "ISIN for the security")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.mac_enabled = ProtoField.new("Mac Enabled", "a2x.a2xequities.rtmdf.amd.v2.5.macenabled", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001, "Security is enabled for the MaC")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.mac_open = ProtoField.new("Mac Open", "a2x.a2xequities.rtmdf.amd.v2.5.macopen", ftypes.UINT8, {[0]="Mac Is Closed", [1]="Mac Is Open"}, base.DEC, 0x02, "MaC open or closed")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.mac_run = ProtoField.new("Mac Run", "a2x.a2xequities.rtmdf.amd.v2.5.macrun", ftypes.UINT8, {[0]="Mac Is Not Locked Down", [1]="Mac Is Locked Down"}, base.DEC, 0x04, "MaC locked down or not")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.market_flags = ProtoField.new("Market Flags", "a2x.a2xequities.rtmdf.amd.v2.5.marketflags", ftypes.STRING)
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.match_vol = ProtoField.new("Match Vol", "a2x.a2xequities.rtmdf.amd.v2.5.matchvol", ftypes.UINT32, nil, nil, nil, "Indicative matched volume")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.md_flags = ProtoField.new("Md Flags", "a2x.a2xequities.rtmdf.amd.v2.5.mdflags", ftypes.STRING, nil, nil, nil, "Market data flags")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.message_count = ProtoField.new("Message Count", "a2x.a2xequities.rtmdf.amd.v2.5.messagecount", ftypes.UINT8, nil, nil, nil, "number of messages in this packet")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.mic = ProtoField.new("Mic", "a2x.a2xequities.rtmdf.amd.v2.5.mic", ftypes.STRING, nil, nil, nil, "MIC for the security's market of listing")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.msg_length = ProtoField.new("Msg Length", "a2x.a2xequities.rtmdf.amd.v2.5.msglength", ftypes.UINT8, nil, nil, nil, "Length of market data message, including header")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.msg_type = ProtoField.new("Msg Type", "a2x.a2xequities.rtmdf.amd.v2.5.msgtype", ftypes.UINT8, nil, nil, nil, "Message type identifier")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.name = ProtoField.new("Name", "a2x.a2xequities.rtmdf.amd.v2.5.name", ftypes.STRING, nil, nil, nil, "Short name")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.order_ref = ProtoField.new("Order Ref", "a2x.a2xequities.rtmdf.amd.v2.5.orderref", ftypes.UINT32, nil, nil, nil, "Order reference number")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.price = ProtoField.new("Price", "a2x.a2xequities.rtmdf.amd.v2.5.price", ftypes.DOUBLE, nil, nil, nil, "The price of the order")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.quantity = ProtoField.new("Quantity", "a2x.a2xequities.rtmdf.amd.v2.5.quantity", ftypes.UINT32, nil, nil, nil, "Number of shares being added to the book")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.security_id = ProtoField.new("Security Id", "a2x.a2xequities.rtmdf.amd.v2.5.securityid", ftypes.UINT16, nil, nil, nil, "Numeric identifier of the relevant security")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.seq_no = ProtoField.new("Seq No", "a2x.a2xequities.rtmdf.amd.v2.5.seqno", ftypes.UINT32, nil, nil, nil, "Sequence number of this message in the market data stream for the current trading day")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.side = ProtoField.new("Side", "a2x.a2xequities.rtmdf.amd.v2.5.side", ftypes.UINT8, nil, nil, nil, "Side of the order")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.test_stock = ProtoField.new("Test Stock", "a2x.a2xequities.rtmdf.amd.v2.5.teststock", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002, "Security is a test stock")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.threshold = ProtoField.new("Threshold", "a2x.a2xequities.rtmdf.amd.v2.5.threshold", ftypes.DOUBLE, nil, nil, nil, "The price threshold at which this tick data applies")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.tick_size = ProtoField.new("Tick Size", "a2x.a2xequities.rtmdf.amd.v2.5.ticksize", ftypes.DOUBLE, nil, nil, nil, "The tick size (price increment)")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.tick_table_id = ProtoField.new("Tick Table Id", "a2x.a2xequities.rtmdf.amd.v2.5.ticktableid", ftypes.UINT8, nil, nil, nil, "Numeric identifier for this tick table or static tick")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.timestamp = ProtoField.new("Timestamp", "a2x.a2xequities.rtmdf.amd.v2.5.timestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Timestamp of this market data event")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.timestamp_utc = ProtoField.new("Timestamp", "a2x.a2xequities.rtmdf.amd.v2.5.timestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Timestamp of this market data event")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.trade_ref = ProtoField.new("Trade Ref", "a2x.a2xequities.rtmdf.amd.v2.5.traderef", ftypes.UINT32, nil, nil, nil, "Trade reference number")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.trade_type = ProtoField.new("Trade Type", "a2x.a2xequities.rtmdf.amd.v2.5.tradetype", ftypes.UINT8, nil, nil, nil, "Code identifying type of trade")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.trading = ProtoField.new("Trading", "a2x.a2xequities.rtmdf.amd.v2.5.trading", ftypes.UINT8, {[0]="Continuous Trading Closed", [1]="Continuous Trading Open"}, base.DEC, 0x01, "Continuous trading open or closed")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.trading_status = ProtoField.new("Trading Status", "a2x.a2xequities.rtmdf.amd.v2.5.tradingstatus", ftypes.UINT8, nil, nil, nil, "Trading status of the security")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.umtf = ProtoField.new("Umtf", "a2x.a2xequities.rtmdf.amd.v2.5.umtf", ftypes.STRING, nil, nil, nil, "Uniform MTF code for the security")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.unrestricted_liquidity = ProtoField.new("Unrestricted Liquidity", "a2x.a2xequities.rtmdf.amd.v2.5.unrestrictedliquidity", ftypes.UINT8, {[0]="Restricted Liquidity Only", [1]="Unrestricted Liquidity Available"}, base.DEC, 0x01, "Flag to indicate whether there is unrestricted liquidity available at the top of the book. For order messages: refers to the side indicated in the order")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.unused_1 = ProtoField.new("Unused 1", "a2x.a2xequities.rtmdf.amd.v2.5.unused1", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008, "Reserved")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.unused_11 = ProtoField.new("Unused 11", "a2x.a2xequities.rtmdf.amd.v2.5.unused11", ftypes.UINT16, nil, base.DEC, 0xFFE0, "Reserved")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.unused_5 = ProtoField.new("Unused 5", "a2x.a2xequities.rtmdf.amd.v2.5.unused5", ftypes.UINT8, nil, base.DEC, 0xF8, "Reserved")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.unused_7 = ProtoField.new("Unused 7", "a2x.a2xequities.rtmdf.amd.v2.5.unused7", ftypes.UINT8, nil, base.DEC, 0xFE, "Reserved")

-- A2X A2XEquities Rtmdf Amd 2.5 Framing
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.message = ProtoField.new("Message", "a2x.a2xequities.rtmdf.amd.v2.5.message", ftypes.STRING, nil, nil, nil, "A2X Amd Message")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.message_header = ProtoField.new("Message Header", "a2x.a2xequities.rtmdf.amd.v2.5.messageheader", ftypes.STRING, nil, nil, nil, "A2X message header")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.packet = ProtoField.new("Packet", "a2x.a2xequities.rtmdf.amd.v2.5.packet", ftypes.STRING, nil, nil, nil, "A2X Udp Packet")

-- A2X A2XEquities Rtmdf 2.5 Application Messages
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.aod_update_message = ProtoField.new("Aod Update Message", "a2x.a2xequities.rtmdf.amd.v2.5.aodupdatemessage", ftypes.STRING, nil, nil, nil, "During the AoD this message is used to publish the indicative price and indicative matched volume.")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "a2x.a2xequities.rtmdf.amd.v2.5.heartbeatmessage", ftypes.BYTES, nil, nil, nil, "The Heartbeat message carries no data; it is simply a message header with msgType of 1.")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.mac_update_message = ProtoField.new("Mac Update Message", "a2x.a2xequities.rtmdf.amd.v2.5.macupdatemessage", ftypes.STRING, nil, nil, nil, "During the MaC this message is used to publish the indicative price from the buy and sell order totals.")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.order_add_message = ProtoField.new("Order Add Message", "a2x.a2xequities.rtmdf.amd.v2.5.orderaddmessage", ftypes.STRING, nil, nil, nil, "The Order Add message is published when order quantity is posted to the order book for a particular security.")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.order_cancel_message = ProtoField.new("Order Cancel Message", "a2x.a2xequities.rtmdf.amd.v2.5.ordercancelmessage", ftypes.STRING, nil, nil, nil, "The Order Cancel message is published when a visible order is removed from the book.")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.order_modify_message = ProtoField.new("Order Modify Message", "a2x.a2xequities.rtmdf.amd.v2.5.ordermodifymessage", ftypes.STRING, nil, nil, nil, "The Order Modify message is published when a visible order is modified by the client (change of price and/or quantity).")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.security_definition_message = ProtoField.new("Security Definition Message", "a2x.a2xequities.rtmdf.amd.v2.5.securitydefinitionmessage", ftypes.STRING, nil, nil, nil, "A series of Security Definition messages are published pre-market to identify the securities traded on A2X (those relevant to the particular feed).")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.security_status_message = ProtoField.new("Security Status Message", "a2x.a2xequities.rtmdf.amd.v2.5.securitystatusmessage", ftypes.STRING, nil, nil, nil, "The Security Status message is published when the trading status of a security changes or when there is a change to the status of the market on A2X to which the security belongs.")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.tick_table_data_message = ProtoField.new("Tick Table Data Message", "a2x.a2xequities.rtmdf.amd.v2.5.ticktabledatamessage", ftypes.STRING, nil, nil, nil, "A series of Tick Table Data messages are published pre-market to specify the dynamic tick tables and static ticks that apply to the securities traded on A2X.")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.trade_bust_message = ProtoField.new("Trade Bust Message", "a2x.a2xequities.rtmdf.amd.v2.5.tradebustmessage", ftypes.STRING, nil, nil, nil, "If a trade has been declared erroneous by A2X then a Trade Bust message is published.")
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.trade_message = ProtoField.new("Trade Message", "a2x.a2xequities.rtmdf.amd.v2.5.trademessage", ftypes.STRING, nil, nil, nil, "Whenever an order trades, partially or fully, a Trade message is published.")

-- A2X A2XEquities Rtmdf Amd 2.5 Generated Fields
omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.message_index = ProtoField.new("Message Index", "a2x.a2xequities.rtmdf.amd.v2.5.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- A2X A2XEquities Rtmdf Amd 2.5 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
a2x_a2xequities_rtmdf_amd_v2_5.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- A2X A2XEquities Rtmdf Amd 2.5 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register A2X A2XEquities Rtmdf Amd 2.5 Show Options
omi_a2x_a2xequities_rtmdf_amd_v2_5.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_a2x_a2xequities_rtmdf_amd_v2_5.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_a2x_a2xequities_rtmdf_amd_v2_5.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_a2x_a2xequities_rtmdf_amd_v2_5.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_a2x_a2xequities_rtmdf_amd_v2_5.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_a2x_a2xequities_rtmdf_amd_v2_5.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_a2x_a2xequities_rtmdf_amd_v2_5.prefs.show_application_messages then
    show.application_messages = omi_a2x_a2xequities_rtmdf_amd_v2_5.prefs.show_application_messages
  end
  if show.headers ~= omi_a2x_a2xequities_rtmdf_amd_v2_5.prefs.show_headers then
    show.headers = omi_a2x_a2xequities_rtmdf_amd_v2_5.prefs.show_headers
  end
  if show.structs ~= omi_a2x_a2xequities_rtmdf_amd_v2_5.prefs.show_structs then
    show.structs = omi_a2x_a2xequities_rtmdf_amd_v2_5.prefs.show_structs
  end
  if show.indexes ~= omi_a2x_a2xequities_rtmdf_amd_v2_5.prefs.show_indexes then
    show.indexes = omi_a2x_a2xequities_rtmdf_amd_v2_5.prefs.show_indexes
  end
  if a2x_a2xequities_rtmdf_amd_v2_5.absolute_time_base ~= omi_a2x_a2xequities_rtmdf_amd_v2_5.prefs.absolute_time_base then
    a2x_a2xequities_rtmdf_amd_v2_5.absolute_time_base = omi_a2x_a2xequities_rtmdf_amd_v2_5.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- A2X A2XEquities Rtmdf Amd 2.5 Fields
-----------------------------------------------------------------------

-- Closing Buy Qty
a2x_a2xequities_rtmdf_amd_v2_5.closing_buy_qty = {}

-- Size: Closing Buy Qty
a2x_a2xequities_rtmdf_amd_v2_5.closing_buy_qty.size = 4

-- Display: Closing Buy Qty
a2x_a2xequities_rtmdf_amd_v2_5.closing_buy_qty.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Closing Buy Qty: No Value"
  end

  return "Closing Buy Qty: "..value
end

-- Dissect: Closing Buy Qty
a2x_a2xequities_rtmdf_amd_v2_5.closing_buy_qty.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_rtmdf_amd_v2_5.closing_buy_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_rtmdf_amd_v2_5.closing_buy_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.closing_buy_qty, range, value, display)

  return offset + length, value
end

-- Closing Sell Qty
a2x_a2xequities_rtmdf_amd_v2_5.closing_sell_qty = {}

-- Size: Closing Sell Qty
a2x_a2xequities_rtmdf_amd_v2_5.closing_sell_qty.size = 4

-- Display: Closing Sell Qty
a2x_a2xequities_rtmdf_amd_v2_5.closing_sell_qty.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Closing Sell Qty: No Value"
  end

  return "Closing Sell Qty: "..value
end

-- Dissect: Closing Sell Qty
a2x_a2xequities_rtmdf_amd_v2_5.closing_sell_qty.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_rtmdf_amd_v2_5.closing_sell_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_rtmdf_amd_v2_5.closing_sell_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.closing_sell_qty, range, value, display)

  return offset + length, value
end

-- Currency
a2x_a2xequities_rtmdf_amd_v2_5.currency = {}

-- Size: Currency
a2x_a2xequities_rtmdf_amd_v2_5.currency.size = 3

-- Display: Currency
a2x_a2xequities_rtmdf_amd_v2_5.currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
a2x_a2xequities_rtmdf_amd_v2_5.currency.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_rtmdf_amd_v2_5.currency.size
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

  local display = a2x_a2xequities_rtmdf_amd_v2_5.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.currency, range, value, display)

  return offset + length, value
end

-- Indicative Price
a2x_a2xequities_rtmdf_amd_v2_5.indicative_price = {}

-- Size: Indicative Price
a2x_a2xequities_rtmdf_amd_v2_5.indicative_price.size = 8

-- Display: Indicative Price
a2x_a2xequities_rtmdf_amd_v2_5.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Translate: Indicative Price
a2x_a2xequities_rtmdf_amd_v2_5.indicative_price.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Indicative Price
a2x_a2xequities_rtmdf_amd_v2_5.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_rtmdf_amd_v2_5.indicative_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = a2x_a2xequities_rtmdf_amd_v2_5.indicative_price.translate(raw)
  local display = a2x_a2xequities_rtmdf_amd_v2_5.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Isin
a2x_a2xequities_rtmdf_amd_v2_5.isin = {}

-- Size: Isin
a2x_a2xequities_rtmdf_amd_v2_5.isin.size = 12

-- Display: Isin
a2x_a2xequities_rtmdf_amd_v2_5.isin.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Isin: No Value"
  end

  return "Isin: "..value
end

-- Dissect: Isin
a2x_a2xequities_rtmdf_amd_v2_5.isin.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_rtmdf_amd_v2_5.isin.size
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

  local display = a2x_a2xequities_rtmdf_amd_v2_5.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.isin, range, value, display)

  return offset + length, value
end

-- Match Vol
a2x_a2xequities_rtmdf_amd_v2_5.match_vol = {}

-- Size: Match Vol
a2x_a2xequities_rtmdf_amd_v2_5.match_vol.size = 4

-- Display: Match Vol
a2x_a2xequities_rtmdf_amd_v2_5.match_vol.display = function(value)
  return "Match Vol: "..value
end

-- Dissect: Match Vol
a2x_a2xequities_rtmdf_amd_v2_5.match_vol.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_rtmdf_amd_v2_5.match_vol.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_rtmdf_amd_v2_5.match_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.match_vol, range, value, display)

  return offset + length, value
end

-- Message Count
a2x_a2xequities_rtmdf_amd_v2_5.message_count = {}

-- Size: Message Count
a2x_a2xequities_rtmdf_amd_v2_5.message_count.size = 1

-- Display: Message Count
a2x_a2xequities_rtmdf_amd_v2_5.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
a2x_a2xequities_rtmdf_amd_v2_5.message_count.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_rtmdf_amd_v2_5.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = a2x_a2xequities_rtmdf_amd_v2_5.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.message_count, range, value, display)

  return offset + length, value
end

-- Mic
a2x_a2xequities_rtmdf_amd_v2_5.mic = {}

-- Size: Mic
a2x_a2xequities_rtmdf_amd_v2_5.mic.size = 4

-- Display: Mic
a2x_a2xequities_rtmdf_amd_v2_5.mic.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mic: No Value"
  end

  return "Mic: "..value
end

-- Dissect: Mic
a2x_a2xequities_rtmdf_amd_v2_5.mic.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_rtmdf_amd_v2_5.mic.size
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

  local display = a2x_a2xequities_rtmdf_amd_v2_5.mic.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.mic, range, value, display)

  return offset + length, value
end

-- Msg Length
a2x_a2xequities_rtmdf_amd_v2_5.msg_length = {}

-- Size: Msg Length
a2x_a2xequities_rtmdf_amd_v2_5.msg_length.size = 1

-- Display: Msg Length
a2x_a2xequities_rtmdf_amd_v2_5.msg_length.display = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
a2x_a2xequities_rtmdf_amd_v2_5.msg_length.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_rtmdf_amd_v2_5.msg_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = a2x_a2xequities_rtmdf_amd_v2_5.msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Msg Type
a2x_a2xequities_rtmdf_amd_v2_5.msg_type = {}

-- Size: Msg Type
a2x_a2xequities_rtmdf_amd_v2_5.msg_type.size = 1

-- Display: Msg Type
a2x_a2xequities_rtmdf_amd_v2_5.msg_type.labels = {
  [1] = "Msg Type: Heartbeat Message (1)",
  [2] = "Msg Type: Order Add Message (2)",
  [3] = "Msg Type: Order Cancel Message (3)",
  [4] = "Msg Type: Order Modify Message (4)",
  [5] = "Msg Type: Trade Message (5)",
  [6] = "Msg Type: Trade Bust Message (6)",
  [7] = "Msg Type: Tick Table Data Message (7)",
  [8] = "Msg Type: Security Definition Message (8)",
  [9] = "Msg Type: Security Status Message (9)",
  [16] = "Msg Type: Mac Update Message (16)",
  [17] = "Msg Type: Aod Update Message (17)",
}

a2x_a2xequities_rtmdf_amd_v2_5.msg_type.display = function(value)
  return a2x_a2xequities_rtmdf_amd_v2_5.msg_type.labels[value] or "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
a2x_a2xequities_rtmdf_amd_v2_5.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_rtmdf_amd_v2_5.msg_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = a2x_a2xequities_rtmdf_amd_v2_5.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Name
a2x_a2xequities_rtmdf_amd_v2_5.name = {}

-- Size: Name
a2x_a2xequities_rtmdf_amd_v2_5.name.size = 10

-- Display: Name
a2x_a2xequities_rtmdf_amd_v2_5.name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Name: No Value"
  end

  return "Name: "..value
end

-- Dissect: Name
a2x_a2xequities_rtmdf_amd_v2_5.name.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_rtmdf_amd_v2_5.name.size
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

  local display = a2x_a2xequities_rtmdf_amd_v2_5.name.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.name, range, value, display)

  return offset + length, value
end

-- Order Ref
a2x_a2xequities_rtmdf_amd_v2_5.order_ref = {}

-- Size: Order Ref
a2x_a2xequities_rtmdf_amd_v2_5.order_ref.size = 4

-- Display: Order Ref
a2x_a2xequities_rtmdf_amd_v2_5.order_ref.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Order Ref: No Value"
  end

  return "Order Ref: "..value
end

-- Dissect: Order Ref
a2x_a2xequities_rtmdf_amd_v2_5.order_ref.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_rtmdf_amd_v2_5.order_ref.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_rtmdf_amd_v2_5.order_ref.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.order_ref, range, value, display)

  return offset + length, value
end

-- Price
a2x_a2xequities_rtmdf_amd_v2_5.price = {}

-- Size: Price
a2x_a2xequities_rtmdf_amd_v2_5.price.size = 8

-- Display: Price
a2x_a2xequities_rtmdf_amd_v2_5.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
a2x_a2xequities_rtmdf_amd_v2_5.price.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Price
a2x_a2xequities_rtmdf_amd_v2_5.price.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_rtmdf_amd_v2_5.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = a2x_a2xequities_rtmdf_amd_v2_5.price.translate(raw)
  local display = a2x_a2xequities_rtmdf_amd_v2_5.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
a2x_a2xequities_rtmdf_amd_v2_5.quantity = {}

-- Size: Quantity
a2x_a2xequities_rtmdf_amd_v2_5.quantity.size = 4

-- Display: Quantity
a2x_a2xequities_rtmdf_amd_v2_5.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
a2x_a2xequities_rtmdf_amd_v2_5.quantity.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_rtmdf_amd_v2_5.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_rtmdf_amd_v2_5.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.quantity, range, value, display)

  return offset + length, value
end

-- Security Id
a2x_a2xequities_rtmdf_amd_v2_5.security_id = {}

-- Size: Security Id
a2x_a2xequities_rtmdf_amd_v2_5.security_id.size = 2

-- Display: Security Id
a2x_a2xequities_rtmdf_amd_v2_5.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
a2x_a2xequities_rtmdf_amd_v2_5.security_id.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_rtmdf_amd_v2_5.security_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_rtmdf_amd_v2_5.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.security_id, range, value, display)

  return offset + length, value
end

-- Seq No
a2x_a2xequities_rtmdf_amd_v2_5.seq_no = {}

-- Size: Seq No
a2x_a2xequities_rtmdf_amd_v2_5.seq_no.size = 4

-- Display: Seq No
a2x_a2xequities_rtmdf_amd_v2_5.seq_no.display = function(value)
  return "Seq No: "..value
end

-- Dissect: Seq No
a2x_a2xequities_rtmdf_amd_v2_5.seq_no.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_rtmdf_amd_v2_5.seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_rtmdf_amd_v2_5.seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.seq_no, range, value, display)

  return offset + length, value
end

-- Side
a2x_a2xequities_rtmdf_amd_v2_5.side = {}

-- Size: Side
a2x_a2xequities_rtmdf_amd_v2_5.side.size = 1

-- Display: Side
a2x_a2xequities_rtmdf_amd_v2_5.side.labels = {
  [1] = "Side: Buy Order (1)",
  [2] = "Side: Sell Order (2)",
}

a2x_a2xequities_rtmdf_amd_v2_5.side.display = function(value)
  return a2x_a2xequities_rtmdf_amd_v2_5.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
a2x_a2xequities_rtmdf_amd_v2_5.side.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_rtmdf_amd_v2_5.side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_rtmdf_amd_v2_5.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.side, range, value, display)

  return offset + length, value
end

-- Threshold
a2x_a2xequities_rtmdf_amd_v2_5.threshold = {}

-- Size: Threshold
a2x_a2xequities_rtmdf_amd_v2_5.threshold.size = 8

-- Display: Threshold
a2x_a2xequities_rtmdf_amd_v2_5.threshold.display = function(value)
  return "Threshold: "..value
end

-- Translate: Threshold
a2x_a2xequities_rtmdf_amd_v2_5.threshold.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Threshold
a2x_a2xequities_rtmdf_amd_v2_5.threshold.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_rtmdf_amd_v2_5.threshold.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = a2x_a2xequities_rtmdf_amd_v2_5.threshold.translate(raw)
  local display = a2x_a2xequities_rtmdf_amd_v2_5.threshold.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.threshold, range, value, display)

  return offset + length, value
end

-- Tick Size
a2x_a2xequities_rtmdf_amd_v2_5.tick_size = {}

-- Size: Tick Size
a2x_a2xequities_rtmdf_amd_v2_5.tick_size.size = 8

-- Display: Tick Size
a2x_a2xequities_rtmdf_amd_v2_5.tick_size.display = function(value)
  return "Tick Size: "..value
end

-- Translate: Tick Size
a2x_a2xequities_rtmdf_amd_v2_5.tick_size.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Tick Size
a2x_a2xequities_rtmdf_amd_v2_5.tick_size.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_rtmdf_amd_v2_5.tick_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = a2x_a2xequities_rtmdf_amd_v2_5.tick_size.translate(raw)
  local display = a2x_a2xequities_rtmdf_amd_v2_5.tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.tick_size, range, value, display)

  return offset + length, value
end

-- Tick Table Id
a2x_a2xequities_rtmdf_amd_v2_5.tick_table_id = {}

-- Size: Tick Table Id
a2x_a2xequities_rtmdf_amd_v2_5.tick_table_id.size = 1

-- Display: Tick Table Id
a2x_a2xequities_rtmdf_amd_v2_5.tick_table_id.display = function(value)
  return "Tick Table Id: "..value
end

-- Dissect: Tick Table Id
a2x_a2xequities_rtmdf_amd_v2_5.tick_table_id.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_rtmdf_amd_v2_5.tick_table_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_rtmdf_amd_v2_5.tick_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.tick_table_id, range, value, display)

  return offset + length, value
end

-- Timestamp
a2x_a2xequities_rtmdf_amd_v2_5.timestamp = {}

-- Size: Timestamp
a2x_a2xequities_rtmdf_amd_v2_5.timestamp.size = 8

-- Dissect: Timestamp
a2x_a2xequities_rtmdf_amd_v2_5.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_rtmdf_amd_v2_5.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.timestamp
  if a2x_a2xequities_rtmdf_amd_v2_5.absolute_time_base == 1 then field = omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Trade Ref
a2x_a2xequities_rtmdf_amd_v2_5.trade_ref = {}

-- Size: Trade Ref
a2x_a2xequities_rtmdf_amd_v2_5.trade_ref.size = 4

-- Display: Trade Ref
a2x_a2xequities_rtmdf_amd_v2_5.trade_ref.display = function(value)
  return "Trade Ref: "..value
end

-- Dissect: Trade Ref
a2x_a2xequities_rtmdf_amd_v2_5.trade_ref.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_rtmdf_amd_v2_5.trade_ref.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_rtmdf_amd_v2_5.trade_ref.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.trade_ref, range, value, display)

  return offset + length, value
end

-- Trade Type
a2x_a2xequities_rtmdf_amd_v2_5.trade_type = {}

-- Size: Trade Type
a2x_a2xequities_rtmdf_amd_v2_5.trade_type.size = 1

-- Display: Trade Type
a2x_a2xequities_rtmdf_amd_v2_5.trade_type.labels = {
  [1] = "Trade Type: Visible (1)",
  [2] = "Trade Type: Hidden Or Reserve (2)",
  [3] = "Trade Type: Market At Close Trade (3)",
  [4] = "Trade Type: Large In Scale Cross Trade (4)",
  [5] = "Trade Type: Benchmark Cross Trade (5)",
  [6] = "Trade Type: Auction On Demand Trade (6)",
}

a2x_a2xequities_rtmdf_amd_v2_5.trade_type.display = function(value)
  return a2x_a2xequities_rtmdf_amd_v2_5.trade_type.labels[value] or "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
a2x_a2xequities_rtmdf_amd_v2_5.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_rtmdf_amd_v2_5.trade_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_rtmdf_amd_v2_5.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Trading Status
a2x_a2xequities_rtmdf_amd_v2_5.trading_status = {}

-- Size: Trading Status
a2x_a2xequities_rtmdf_amd_v2_5.trading_status.size = 1

-- Display: Trading Status
a2x_a2xequities_rtmdf_amd_v2_5.trading_status.labels = {
  [1] = "Trading Status: Active (1)",
  [2] = "Trading Status: Halted (2)",
  [3] = "Trading Status: Suspended (3)",
  [8] = "Trading Status: Aod Start (8)",
  [24] = "Trading Status: Aod End (24)",
}

a2x_a2xequities_rtmdf_amd_v2_5.trading_status.display = function(value)
  return a2x_a2xequities_rtmdf_amd_v2_5.trading_status.labels[value] or "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
a2x_a2xequities_rtmdf_amd_v2_5.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_rtmdf_amd_v2_5.trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_rtmdf_amd_v2_5.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Umtf
a2x_a2xequities_rtmdf_amd_v2_5.umtf = {}

-- Size: Umtf
a2x_a2xequities_rtmdf_amd_v2_5.umtf.size = 6

-- Display: Umtf
a2x_a2xequities_rtmdf_amd_v2_5.umtf.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Umtf: No Value"
  end

  return "Umtf: "..value
end

-- Dissect: Umtf
a2x_a2xequities_rtmdf_amd_v2_5.umtf.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_rtmdf_amd_v2_5.umtf.size
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

  local display = a2x_a2xequities_rtmdf_amd_v2_5.umtf.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.umtf, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect A2X A2XEquities Rtmdf Amd 2.5
-----------------------------------------------------------------------

-- Aod Update Message
a2x_a2xequities_rtmdf_amd_v2_5.aod_update_message = {}

-- Size: Aod Update Message
a2x_a2xequities_rtmdf_amd_v2_5.aod_update_message.size =
  a2x_a2xequities_rtmdf_amd_v2_5.security_id.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.indicative_price.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.match_vol.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.timestamp.size

-- Display: Aod Update Message
a2x_a2xequities_rtmdf_amd_v2_5.aod_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Aod Update Message
a2x_a2xequities_rtmdf_amd_v2_5.aod_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = a2x_a2xequities_rtmdf_amd_v2_5.security_id.dissect(buffer, index, packet, parent)

  -- Indicative Price: u64
  index, indicative_price = a2x_a2xequities_rtmdf_amd_v2_5.indicative_price.dissect(buffer, index, packet, parent)

  -- Match Vol: u32
  index, match_vol = a2x_a2xequities_rtmdf_amd_v2_5.match_vol.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = a2x_a2xequities_rtmdf_amd_v2_5.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Aod Update Message
a2x_a2xequities_rtmdf_amd_v2_5.aod_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.aod_update_message, buffer(offset, 0))
    local index = a2x_a2xequities_rtmdf_amd_v2_5.aod_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_a2xequities_rtmdf_amd_v2_5.aod_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_a2xequities_rtmdf_amd_v2_5.aod_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Mac Update Message
a2x_a2xequities_rtmdf_amd_v2_5.mac_update_message = {}

-- Size: Mac Update Message
a2x_a2xequities_rtmdf_amd_v2_5.mac_update_message.size =
  a2x_a2xequities_rtmdf_amd_v2_5.security_id.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.indicative_price.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.closing_buy_qty.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.closing_sell_qty.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.timestamp.size

-- Display: Mac Update Message
a2x_a2xequities_rtmdf_amd_v2_5.mac_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mac Update Message
a2x_a2xequities_rtmdf_amd_v2_5.mac_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = a2x_a2xequities_rtmdf_amd_v2_5.security_id.dissect(buffer, index, packet, parent)

  -- Indicative Price: u64
  index, indicative_price = a2x_a2xequities_rtmdf_amd_v2_5.indicative_price.dissect(buffer, index, packet, parent)

  -- Closing Buy Qty: u32
  index, closing_buy_qty = a2x_a2xequities_rtmdf_amd_v2_5.closing_buy_qty.dissect(buffer, index, packet, parent)

  -- Closing Sell Qty: u32
  index, closing_sell_qty = a2x_a2xequities_rtmdf_amd_v2_5.closing_sell_qty.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = a2x_a2xequities_rtmdf_amd_v2_5.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mac Update Message
a2x_a2xequities_rtmdf_amd_v2_5.mac_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.mac_update_message, buffer(offset, 0))
    local index = a2x_a2xequities_rtmdf_amd_v2_5.mac_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_a2xequities_rtmdf_amd_v2_5.mac_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_a2xequities_rtmdf_amd_v2_5.mac_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Flags
a2x_a2xequities_rtmdf_amd_v2_5.market_flags = {}

-- Size: Market Flags
a2x_a2xequities_rtmdf_amd_v2_5.market_flags.size = 1

-- Display: Market Flags
a2x_a2xequities_rtmdf_amd_v2_5.market_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Trading flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Trading"
  end
  -- Is Mac Open flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Mac Open"
  end
  -- Is Mac Run flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Mac Run"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Market Flags
a2x_a2xequities_rtmdf_amd_v2_5.market_flags.bits = function(range, value, packet, parent)

  -- Trading: 1 Bit Enum with 2 values
  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.trading, range, value)

  -- Mac Open: 1 Bit Enum with 2 values
  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.mac_open, range, value)

  -- Mac Run: 1 Bit Enum with 2 values
  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.mac_run, range, value)

  -- Unused 5: 5 Bit
  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.unused_5, range, value)
end

-- Dissect: Market Flags
a2x_a2xequities_rtmdf_amd_v2_5.market_flags.dissect = function(buffer, offset, packet, parent)
  local size = a2x_a2xequities_rtmdf_amd_v2_5.market_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = a2x_a2xequities_rtmdf_amd_v2_5.market_flags.display(range, value, packet, parent)
  local element = parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.market_flags, range, display)

  if show.structs then
    a2x_a2xequities_rtmdf_amd_v2_5.market_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Security Status Message
a2x_a2xequities_rtmdf_amd_v2_5.security_status_message = {}

-- Size: Security Status Message
a2x_a2xequities_rtmdf_amd_v2_5.security_status_message.size =
  a2x_a2xequities_rtmdf_amd_v2_5.security_id.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.trading_status.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.market_flags.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.timestamp.size

-- Display: Security Status Message
a2x_a2xequities_rtmdf_amd_v2_5.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
a2x_a2xequities_rtmdf_amd_v2_5.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = a2x_a2xequities_rtmdf_amd_v2_5.security_id.dissect(buffer, index, packet, parent)

  -- Trading Status: u8
  index, trading_status = a2x_a2xequities_rtmdf_amd_v2_5.trading_status.dissect(buffer, index, packet, parent)

  -- Market Flags: Struct of 4 fields
  index, market_flags = a2x_a2xequities_rtmdf_amd_v2_5.market_flags.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = a2x_a2xequities_rtmdf_amd_v2_5.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
a2x_a2xequities_rtmdf_amd_v2_5.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.security_status_message, buffer(offset, 0))
    local index = a2x_a2xequities_rtmdf_amd_v2_5.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_a2xequities_rtmdf_amd_v2_5.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_a2xequities_rtmdf_amd_v2_5.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Flags
a2x_a2xequities_rtmdf_amd_v2_5.flags = {}

-- Size: Flags
a2x_a2xequities_rtmdf_amd_v2_5.flags.size = 2

-- Display: Flags
a2x_a2xequities_rtmdf_amd_v2_5.flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Mac Enabled flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Mac Enabled"
  end
  -- Is Test Stock flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Test Stock"
  end
  -- Is Illiquid flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "Illiquid"
  end
  -- Is Aod Enabled flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Aod Enabled"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Flags
a2x_a2xequities_rtmdf_amd_v2_5.flags.bits = function(range, value, packet, parent)

  -- Mac Enabled: 1 Bit
  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.mac_enabled, range, value)

  -- Test Stock: 1 Bit
  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.test_stock, range, value)

  -- Illiquid: 1 Bit
  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.illiquid, range, value)

  -- Unused 1: 1 Bit
  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.unused_1, range, value)

  -- Aod Enabled: 1 Bit
  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.aod_enabled, range, value)

  -- Unused 11: 11 Bit
  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.unused_11, range, value)
end

-- Dissect: Flags
a2x_a2xequities_rtmdf_amd_v2_5.flags.dissect = function(buffer, offset, packet, parent)
  local size = a2x_a2xequities_rtmdf_amd_v2_5.flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = a2x_a2xequities_rtmdf_amd_v2_5.flags.display(range, value, packet, parent)
  local element = parent:add_le(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.flags, range, display)

  if show.structs then
    a2x_a2xequities_rtmdf_amd_v2_5.flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Security Definition Message
a2x_a2xequities_rtmdf_amd_v2_5.security_definition_message = {}

-- Size: Security Definition Message
a2x_a2xequities_rtmdf_amd_v2_5.security_definition_message.size =
  a2x_a2xequities_rtmdf_amd_v2_5.security_id.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.umtf.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.isin.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.currency.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.mic.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.tick_table_id.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.flags.size

-- Display: Security Definition Message
a2x_a2xequities_rtmdf_amd_v2_5.security_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Message
a2x_a2xequities_rtmdf_amd_v2_5.security_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = a2x_a2xequities_rtmdf_amd_v2_5.security_id.dissect(buffer, index, packet, parent)

  -- Umtf: char(6)
  index, umtf = a2x_a2xequities_rtmdf_amd_v2_5.umtf.dissect(buffer, index, packet, parent)

  -- Isin: char(12)
  index, isin = a2x_a2xequities_rtmdf_amd_v2_5.isin.dissect(buffer, index, packet, parent)

  -- Currency: char(3)
  index, currency = a2x_a2xequities_rtmdf_amd_v2_5.currency.dissect(buffer, index, packet, parent)

  -- Mic: char(4)
  index, mic = a2x_a2xequities_rtmdf_amd_v2_5.mic.dissect(buffer, index, packet, parent)

  -- Tick Table Id: u8
  index, tick_table_id = a2x_a2xequities_rtmdf_amd_v2_5.tick_table_id.dissect(buffer, index, packet, parent)

  -- Flags: Struct of 6 fields
  index, flags = a2x_a2xequities_rtmdf_amd_v2_5.flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Message
a2x_a2xequities_rtmdf_amd_v2_5.security_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.security_definition_message, buffer(offset, 0))
    local index = a2x_a2xequities_rtmdf_amd_v2_5.security_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_a2xequities_rtmdf_amd_v2_5.security_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_a2xequities_rtmdf_amd_v2_5.security_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Tick Table Data Message
a2x_a2xequities_rtmdf_amd_v2_5.tick_table_data_message = {}

-- Size: Tick Table Data Message
a2x_a2xequities_rtmdf_amd_v2_5.tick_table_data_message.size =
  a2x_a2xequities_rtmdf_amd_v2_5.tick_table_id.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.name.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.threshold.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.tick_size.size

-- Display: Tick Table Data Message
a2x_a2xequities_rtmdf_amd_v2_5.tick_table_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Table Data Message
a2x_a2xequities_rtmdf_amd_v2_5.tick_table_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tick Table Id: u8
  index, tick_table_id = a2x_a2xequities_rtmdf_amd_v2_5.tick_table_id.dissect(buffer, index, packet, parent)

  -- Name: char(10)
  index, name = a2x_a2xequities_rtmdf_amd_v2_5.name.dissect(buffer, index, packet, parent)

  -- Threshold: u64
  index, threshold = a2x_a2xequities_rtmdf_amd_v2_5.threshold.dissect(buffer, index, packet, parent)

  -- Tick Size: u64
  index, tick_size = a2x_a2xequities_rtmdf_amd_v2_5.tick_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Table Data Message
a2x_a2xequities_rtmdf_amd_v2_5.tick_table_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.tick_table_data_message, buffer(offset, 0))
    local index = a2x_a2xequities_rtmdf_amd_v2_5.tick_table_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_a2xequities_rtmdf_amd_v2_5.tick_table_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_a2xequities_rtmdf_amd_v2_5.tick_table_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Bust Message
a2x_a2xequities_rtmdf_amd_v2_5.trade_bust_message = {}

-- Size: Trade Bust Message
a2x_a2xequities_rtmdf_amd_v2_5.trade_bust_message.size =
  a2x_a2xequities_rtmdf_amd_v2_5.security_id.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.quantity.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.price.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.trade_ref.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.timestamp.size

-- Display: Trade Bust Message
a2x_a2xequities_rtmdf_amd_v2_5.trade_bust_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Bust Message
a2x_a2xequities_rtmdf_amd_v2_5.trade_bust_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = a2x_a2xequities_rtmdf_amd_v2_5.security_id.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = a2x_a2xequities_rtmdf_amd_v2_5.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = a2x_a2xequities_rtmdf_amd_v2_5.price.dissect(buffer, index, packet, parent)

  -- Trade Ref: u32
  index, trade_ref = a2x_a2xequities_rtmdf_amd_v2_5.trade_ref.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = a2x_a2xequities_rtmdf_amd_v2_5.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Bust Message
a2x_a2xequities_rtmdf_amd_v2_5.trade_bust_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.trade_bust_message, buffer(offset, 0))
    local index = a2x_a2xequities_rtmdf_amd_v2_5.trade_bust_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_a2xequities_rtmdf_amd_v2_5.trade_bust_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_a2xequities_rtmdf_amd_v2_5.trade_bust_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
a2x_a2xequities_rtmdf_amd_v2_5.trade_message = {}

-- Size: Trade Message
a2x_a2xequities_rtmdf_amd_v2_5.trade_message.size =
  a2x_a2xequities_rtmdf_amd_v2_5.security_id.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.trade_type.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.quantity.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.price.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.order_ref.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.trade_ref.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.timestamp.size

-- Display: Trade Message
a2x_a2xequities_rtmdf_amd_v2_5.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
a2x_a2xequities_rtmdf_amd_v2_5.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = a2x_a2xequities_rtmdf_amd_v2_5.security_id.dissect(buffer, index, packet, parent)

  -- Trade Type: u8
  index, trade_type = a2x_a2xequities_rtmdf_amd_v2_5.trade_type.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = a2x_a2xequities_rtmdf_amd_v2_5.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = a2x_a2xequities_rtmdf_amd_v2_5.price.dissect(buffer, index, packet, parent)

  -- Order Ref: u32
  index, order_ref = a2x_a2xequities_rtmdf_amd_v2_5.order_ref.dissect(buffer, index, packet, parent)

  -- Trade Ref: u32
  index, trade_ref = a2x_a2xequities_rtmdf_amd_v2_5.trade_ref.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = a2x_a2xequities_rtmdf_amd_v2_5.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
a2x_a2xequities_rtmdf_amd_v2_5.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.trade_message, buffer(offset, 0))
    local index = a2x_a2xequities_rtmdf_amd_v2_5.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_a2xequities_rtmdf_amd_v2_5.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_a2xequities_rtmdf_amd_v2_5.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Md Flags
a2x_a2xequities_rtmdf_amd_v2_5.md_flags = {}

-- Size: Md Flags
a2x_a2xequities_rtmdf_amd_v2_5.md_flags.size = 1

-- Display: Md Flags
a2x_a2xequities_rtmdf_amd_v2_5.md_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Unrestricted Liquidity flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Unrestricted Liquidity"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Md Flags
a2x_a2xequities_rtmdf_amd_v2_5.md_flags.bits = function(range, value, packet, parent)

  -- Unrestricted Liquidity: 1 Bit Enum with 2 values
  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.unrestricted_liquidity, range, value)

  -- Unused 7: 7 Bit
  parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.unused_7, range, value)
end

-- Dissect: Md Flags
a2x_a2xequities_rtmdf_amd_v2_5.md_flags.dissect = function(buffer, offset, packet, parent)
  local size = a2x_a2xequities_rtmdf_amd_v2_5.md_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = a2x_a2xequities_rtmdf_amd_v2_5.md_flags.display(range, value, packet, parent)
  local element = parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.md_flags, range, display)

  if show.structs then
    a2x_a2xequities_rtmdf_amd_v2_5.md_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Modify Message
a2x_a2xequities_rtmdf_amd_v2_5.order_modify_message = {}

-- Size: Order Modify Message
a2x_a2xequities_rtmdf_amd_v2_5.order_modify_message.size =
  a2x_a2xequities_rtmdf_amd_v2_5.security_id.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.quantity.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.price.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.order_ref.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.timestamp.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.md_flags.size

-- Display: Order Modify Message
a2x_a2xequities_rtmdf_amd_v2_5.order_modify_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify Message
a2x_a2xequities_rtmdf_amd_v2_5.order_modify_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = a2x_a2xequities_rtmdf_amd_v2_5.security_id.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = a2x_a2xequities_rtmdf_amd_v2_5.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = a2x_a2xequities_rtmdf_amd_v2_5.price.dissect(buffer, index, packet, parent)

  -- Order Ref: u32
  index, order_ref = a2x_a2xequities_rtmdf_amd_v2_5.order_ref.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = a2x_a2xequities_rtmdf_amd_v2_5.timestamp.dissect(buffer, index, packet, parent)

  -- Md Flags: Struct of 2 fields
  index, md_flags = a2x_a2xequities_rtmdf_amd_v2_5.md_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify Message
a2x_a2xequities_rtmdf_amd_v2_5.order_modify_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.order_modify_message, buffer(offset, 0))
    local index = a2x_a2xequities_rtmdf_amd_v2_5.order_modify_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_a2xequities_rtmdf_amd_v2_5.order_modify_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_a2xequities_rtmdf_amd_v2_5.order_modify_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Message
a2x_a2xequities_rtmdf_amd_v2_5.order_cancel_message = {}

-- Size: Order Cancel Message
a2x_a2xequities_rtmdf_amd_v2_5.order_cancel_message.size =
  a2x_a2xequities_rtmdf_amd_v2_5.security_id.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.order_ref.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.timestamp.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.md_flags.size

-- Display: Order Cancel Message
a2x_a2xequities_rtmdf_amd_v2_5.order_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Message
a2x_a2xequities_rtmdf_amd_v2_5.order_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = a2x_a2xequities_rtmdf_amd_v2_5.security_id.dissect(buffer, index, packet, parent)

  -- Order Ref: u32
  index, order_ref = a2x_a2xequities_rtmdf_amd_v2_5.order_ref.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = a2x_a2xequities_rtmdf_amd_v2_5.timestamp.dissect(buffer, index, packet, parent)

  -- Md Flags: Struct of 2 fields
  index, md_flags = a2x_a2xequities_rtmdf_amd_v2_5.md_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
a2x_a2xequities_rtmdf_amd_v2_5.order_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.order_cancel_message, buffer(offset, 0))
    local index = a2x_a2xequities_rtmdf_amd_v2_5.order_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_a2xequities_rtmdf_amd_v2_5.order_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_a2xequities_rtmdf_amd_v2_5.order_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Add Message
a2x_a2xequities_rtmdf_amd_v2_5.order_add_message = {}

-- Size: Order Add Message
a2x_a2xequities_rtmdf_amd_v2_5.order_add_message.size =
  a2x_a2xequities_rtmdf_amd_v2_5.security_id.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.side.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.quantity.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.price.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.order_ref.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.timestamp.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.md_flags.size

-- Display: Order Add Message
a2x_a2xequities_rtmdf_amd_v2_5.order_add_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Add Message
a2x_a2xequities_rtmdf_amd_v2_5.order_add_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = a2x_a2xequities_rtmdf_amd_v2_5.security_id.dissect(buffer, index, packet, parent)

  -- Side: u8
  index, side = a2x_a2xequities_rtmdf_amd_v2_5.side.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = a2x_a2xequities_rtmdf_amd_v2_5.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = a2x_a2xequities_rtmdf_amd_v2_5.price.dissect(buffer, index, packet, parent)

  -- Order Ref: u32
  index, order_ref = a2x_a2xequities_rtmdf_amd_v2_5.order_ref.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = a2x_a2xequities_rtmdf_amd_v2_5.timestamp.dissect(buffer, index, packet, parent)

  -- Md Flags: Struct of 2 fields
  index, md_flags = a2x_a2xequities_rtmdf_amd_v2_5.md_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Add Message
a2x_a2xequities_rtmdf_amd_v2_5.order_add_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.order_add_message, buffer(offset, 0))
    local index = a2x_a2xequities_rtmdf_amd_v2_5.order_add_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_a2xequities_rtmdf_amd_v2_5.order_add_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_a2xequities_rtmdf_amd_v2_5.order_add_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
a2x_a2xequities_rtmdf_amd_v2_5.heartbeat_message = {}

-- Display: Heartbeat Message
a2x_a2xequities_rtmdf_amd_v2_5.heartbeat_message.display = function(packet, parent, length)
  return "Heartbeat Message"
end


-- Dissect: Heartbeat Message
a2x_a2xequities_rtmdf_amd_v2_5.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  local display = a2x_a2xequities_rtmdf_amd_v2_5.heartbeat_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Payload
a2x_a2xequities_rtmdf_amd_v2_5.payload = {}

-- Dispatch: Payload
a2x_a2xequities_rtmdf_amd_v2_5.payload.dispatch = {
  [1] = a2x_a2xequities_rtmdf_amd_v2_5.heartbeat_message.dissect,
  [2] = a2x_a2xequities_rtmdf_amd_v2_5.order_add_message.dissect,
  [3] = a2x_a2xequities_rtmdf_amd_v2_5.order_cancel_message.dissect,
  [4] = a2x_a2xequities_rtmdf_amd_v2_5.order_modify_message.dissect,
  [5] = a2x_a2xequities_rtmdf_amd_v2_5.trade_message.dissect,
  [6] = a2x_a2xequities_rtmdf_amd_v2_5.trade_bust_message.dissect,
  [7] = a2x_a2xequities_rtmdf_amd_v2_5.tick_table_data_message.dissect,
  [8] = a2x_a2xequities_rtmdf_amd_v2_5.security_definition_message.dissect,
  [9] = a2x_a2xequities_rtmdf_amd_v2_5.security_status_message.dissect,
  [16] = a2x_a2xequities_rtmdf_amd_v2_5.mac_update_message.dissect,
  [17] = a2x_a2xequities_rtmdf_amd_v2_5.aod_update_message.dissect,
}

-- Dissect: Payload
a2x_a2xequities_rtmdf_amd_v2_5.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  local dissect = a2x_a2xequities_rtmdf_amd_v2_5.payload.dispatch[msg_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
a2x_a2xequities_rtmdf_amd_v2_5.message_header = {}

-- Size: Message Header
a2x_a2xequities_rtmdf_amd_v2_5.message_header.size =
  a2x_a2xequities_rtmdf_amd_v2_5.msg_type.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.msg_length.size + 
  a2x_a2xequities_rtmdf_amd_v2_5.seq_no.size

-- Display: Message Header
a2x_a2xequities_rtmdf_amd_v2_5.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
a2x_a2xequities_rtmdf_amd_v2_5.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Type: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, msg_type = a2x_a2xequities_rtmdf_amd_v2_5.msg_type.dissect(buffer, index, packet, parent)

  -- Msg Length: 1 Byte Unsigned Fixed Width Integer
  index, msg_length = a2x_a2xequities_rtmdf_amd_v2_5.msg_length.dissect(buffer, index, packet, parent)

  -- Seq No: 4 Byte Unsigned Fixed Width Integer
  index, seq_no = a2x_a2xequities_rtmdf_amd_v2_5.seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
a2x_a2xequities_rtmdf_amd_v2_5.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.message_header, buffer(offset, 0))
    local index = a2x_a2xequities_rtmdf_amd_v2_5.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_a2xequities_rtmdf_amd_v2_5.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_a2xequities_rtmdf_amd_v2_5.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
a2x_a2xequities_rtmdf_amd_v2_5.message = {}

-- Display: Message
a2x_a2xequities_rtmdf_amd_v2_5.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
a2x_a2xequities_rtmdf_amd_v2_5.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 3 fields
  index, message_header = a2x_a2xequities_rtmdf_amd_v2_5.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 6, 1):uint()

  -- Payload: Runtime Type with 11 branches
  index = a2x_a2xequities_rtmdf_amd_v2_5.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
a2x_a2xequities_rtmdf_amd_v2_5.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5.fields.message, buffer(offset, 0))
    local current = a2x_a2xequities_rtmdf_amd_v2_5.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = a2x_a2xequities_rtmdf_amd_v2_5.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    a2x_a2xequities_rtmdf_amd_v2_5.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet
a2x_a2xequities_rtmdf_amd_v2_5.packet = {}

-- Verify required size of Udp packet
a2x_a2xequities_rtmdf_amd_v2_5.packet.requiredsize = function(buffer)
  return buffer:len() >= a2x_a2xequities_rtmdf_amd_v2_5.message_count.size
end

-- Dissect Packet
a2x_a2xequities_rtmdf_amd_v2_5.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = a2x_a2xequities_rtmdf_amd_v2_5.message_count.dissect(buffer, index, packet, parent)

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Msg Length
    local msg_length = buffer(index + 1, 1):uint()

    -- Runtime Size Of: Message
    index, message = a2x_a2xequities_rtmdf_amd_v2_5.message.dissect(buffer, index, packet, parent, msg_length, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_a2x_a2xequities_rtmdf_amd_v2_5.init()
end

-- Dissector for A2X A2XEquities Rtmdf Amd 2.5
function omi_a2x_a2xequities_rtmdf_amd_v2_5.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_a2x_a2xequities_rtmdf_amd_v2_5.name

  -- Dissect protocol
  local protocol = parent:add(omi_a2x_a2xequities_rtmdf_amd_v2_5, buffer(), omi_a2x_a2xequities_rtmdf_amd_v2_5.description, "("..buffer:len().." Bytes)")
  return a2x_a2xequities_rtmdf_amd_v2_5.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
a2x_a2xequities_rtmdf_amd_v2_5.packet.fingerprint = function(buffer)
  if buffer:len() < 2 then
    return false
  end

  local msg_type = buffer(1, 1):uint()

  -- Heartbeat Message
  if msg_type == 1 then
    return true
  end

  -- Order Add Message
  if msg_type == 2 then
    return true
  end

  -- Order Cancel Message
  if msg_type == 3 then
    return true
  end

  -- Order Modify Message
  if msg_type == 4 then
    return true
  end

  -- Trade Message
  if msg_type == 5 then
    return true
  end

  -- Trade Bust Message
  if msg_type == 6 then
    return true
  end

  -- Tick Table Data Message
  if msg_type == 7 then
    return true
  end

  -- Security Definition Message
  if msg_type == 8 then
    return true
  end

  -- Security Status Message
  if msg_type == 9 then
    return true
  end

  -- Mac Update Message
  if msg_type == 16 then
    return true
  end

  -- Aod Update Message
  if msg_type == 17 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for A2X A2XEquities Rtmdf Amd 2.5 (Udp)
local function omi_a2x_a2xequities_rtmdf_amd_v2_5_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not a2x_a2xequities_rtmdf_amd_v2_5.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not a2x_a2xequities_rtmdf_amd_v2_5.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_a2x_a2xequities_rtmdf_amd_v2_5
  omi_a2x_a2xequities_rtmdf_amd_v2_5.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for A2X A2XEquities Rtmdf Amd 2.5
omi_a2x_a2xequities_rtmdf_amd_v2_5:register_heuristic("udp", omi_a2x_a2xequities_rtmdf_amd_v2_5_udp_heuristic)

-- Register A2X A2XEquities Rtmdf Amd 2.5 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_a2x_a2xequities_rtmdf_amd_v2_5)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: A2X Markets
--   Version: 2.5
--   Date: Saturday, August 1, 2026
--   Specification: A2X Market Data Technical Specification v2.5.pdf
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
