-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Tmx TsxAlpha Level1 Qrtmd 2.1 Protocol
local omi_tmx_tsxalpha_level1_qrtmd_v2_1 = Proto("Omi.Tmx.TsxAlpha.Level1.Qrtmd.v2.1", "Tmx TsxAlpha Level1 Qrtmd 2.1")

-- Protocol table
local tmx_tsxalpha_level1_qrtmd_v2_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Tmx TsxAlpha Level1 Qrtmd 2.1 Fields
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.ask_price = ProtoField.new("Ask Price", "tmx.tsxalpha.level1.qrtmd.v2.1.askprice", ftypes.DOUBLE, nil, nil, nil, "Ask price for the equity.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.ask_size = ProtoField.new("Ask Size", "tmx.tsxalpha.level1.qrtmd.v2.1.asksize", ftypes.UINT32, nil, nil, nil, "Volume on the ask side.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.bid_price = ProtoField.new("Bid Price", "tmx.tsxalpha.level1.qrtmd.v2.1.bidprice", ftypes.DOUBLE, nil, nil, nil, "Bid price for the equity.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.bid_size = ProtoField.new("Bid Size", "tmx.tsxalpha.level1.qrtmd.v2.1.bidsize", ftypes.UINT32, nil, nil, nil, "Volume on the bid side.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.board_lot = ProtoField.new("Board Lot", "tmx.tsxalpha.level1.qrtmd.v2.1.boardlot", ftypes.UINT32, nil, nil, nil, "Board lot volume.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.bulletin_indicator = ProtoField.new("Bulletin Indicator", "tmx.tsxalpha.level1.qrtmd.v2.1.bulletinindicator", ftypes.STRING, nil, nil, nil, "Indicates the message is a bulletin.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.buyer_id = ProtoField.new("Buyer Id", "tmx.tsxalpha.level1.qrtmd.v2.1.buyerid", ftypes.UINT16, nil, nil, nil, "Identifies the buying broker.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.bypass = ProtoField.new("Bypass", "tmx.tsxalpha.level1.qrtmd.v2.1.bypass", ftypes.STRING, nil, nil, nil, "An indicator for bypass crosses, which can be printed outside of the Protected NBBO and are not subject to cross interference.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.comment = ProtoField.new("Comment", "tmx.tsxalpha.level1.qrtmd.v2.1.comment", ftypes.STRING, nil, nil, nil, "Free text accompanying the state change.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.continuation_identifier = ProtoField.new("Continuation Identifier", "tmx.tsxalpha.level1.qrtmd.v2.1.continuationidentifier", ftypes.STRING, nil, nil, nil, "Provides for fragmentation of a message exceeding the maximum transmission unit")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.cross_type = ProtoField.new("Cross Type", "tmx.tsxalpha.level1.qrtmd.v2.1.crosstype", ftypes.STRING, nil, nil, nil, "Identifies the type of an intentional cross.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.currency = ProtoField.new("Currency", "tmx.tsxalpha.level1.qrtmd.v2.1.currency", ftypes.STRING, nil, nil, nil, "The currency of a price.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.cusip = ProtoField.new("Cusip", "tmx.tsxalpha.level1.qrtmd.v2.1.cusip", ftypes.STRING, nil, nil, nil, "Clearing and settlement registration number.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.exchange_id = ProtoField.new("Exchange Id", "tmx.tsxalpha.level1.qrtmd.v2.1.exchangeid", ftypes.STRING, nil, nil, nil, "Identifies the exchange from which the message originated.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.exchange_identifier = ProtoField.new("Exchange Identifier", "tmx.tsxalpha.level1.qrtmd.v2.1.exchangeidentifier", ftypes.STRING, nil, nil, nil, "Code assigned to the originating exchange")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.face_value = ProtoField.new("Face Value", "tmx.tsxalpha.level1.qrtmd.v2.1.facevalue", ftypes.DOUBLE, nil, nil, nil, "The face value of a debenture.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.is_dark = ProtoField.new("Is Dark", "tmx.tsxalpha.level1.qrtmd.v2.1.isdark", ftypes.STRING, nil, nil, nil, "Indicates that one side of the trade is dark.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.last_sale = ProtoField.new("Last Sale", "tmx.tsxalpha.level1.qrtmd.v2.1.lastsale", ftypes.DOUBLE, nil, nil, nil, "Last sale price of the symbol.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.listing_market = ProtoField.new("Listing Market", "tmx.tsxalpha.level1.qrtmd.v2.1.listingmarket", ftypes.STRING, nil, nil, nil, "The market on which a security is listed.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.market_state = ProtoField.new("Market State", "tmx.tsxalpha.level1.qrtmd.v2.1.marketstate", ftypes.STRING, nil, nil, nil, "The indication of the current market state.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.message_length = ProtoField.new("Message Length", "tmx.tsxalpha.level1.qrtmd.v2.1.messagelength", ftypes.UINT16, nil, nil, nil, "Total length of header and message business content, excluding Stx and Etx")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.message_text = ProtoField.new("Message Text", "tmx.tsxalpha.level1.qrtmd.v2.1.messagetext", ftypes.STRING, nil, nil, nil, "Bulletin in textual format.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.message_type = ProtoField.new("Message Type", "tmx.tsxalpha.level1.qrtmd.v2.1.messagetype", ftypes.STRING, nil, nil, nil, "Unique code assigned to each message type, specific to each market service")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.min_po_qty = ProtoField.new("Min Po Qty", "tmx.tsxalpha.level1.qrtmd.v2.1.minpoqty", ftypes.UINT32, nil, nil, nil, "The minimum volume required for Post Only orders.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.opening_time = ProtoField.new("Opening Time", "tmx.tsxalpha.level1.qrtmd.v2.1.openingtime", ftypes.STRING, nil, nil, nil, "The opening time for a stock.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.opening_trade = ProtoField.new("Opening Trade", "tmx.tsxalpha.level1.qrtmd.v2.1.openingtrade", ftypes.STRING, nil, nil, nil, "An indicator as to whether the trade occurred at the opening or was the first board lot trade of the day.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.original_trade_id = ProtoField.new("Original Trade Id", "tmx.tsxalpha.level1.qrtmd.v2.1.originaltradeid", ftypes.UINT32, nil, nil, nil, "Trade number.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.product_type = ProtoField.new("Product Type", "tmx.tsxalpha.level1.qrtmd.v2.1.producttype", ftypes.STRING, nil, nil, nil, "The product type for a symbol.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.qrtmd_etx = ProtoField.new("Qrtmd Etx", "tmx.tsxalpha.level1.qrtmd.v2.1.qrtmdetx", ftypes.INT8, nil, nil, nil, "End of Qrtmd message")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.qrtmd_stx = ProtoField.new("Qrtmd Stx", "tmx.tsxalpha.level1.qrtmd.v2.1.qrtmdstx", ftypes.INT8, nil, nil, nil, "Start of Qrtmd message")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.retransmission_identifier = ProtoField.new("Retransmission Identifier", "tmx.tsxalpha.level1.qrtmd.v2.1.retransmissionidentifier", ftypes.STRING, nil, nil, nil, "Marks a normal transmission, and is always blank on a heartbeat")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.seller_id = ProtoField.new("Seller Id", "tmx.tsxalpha.level1.qrtmd.v2.1.sellerid", ftypes.UINT16, nil, nil, nil, "Identifies the selling broker.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.sequence_number = ProtoField.new("Sequence Number", "tmx.tsxalpha.level1.qrtmd.v2.1.sequencenumber", ftypes.UINT32, nil, nil, nil, "Assigned at service broadcast from 000000001 to 999999999, blank on a heartbeat")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.service_identifier = ProtoField.new("Service Identifier", "tmx.tsxalpha.level1.qrtmd.v2.1.serviceidentifier", ftypes.STRING, nil, nil, nil, "Service code identifying the market data service carried on the feed")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.settlement_terms = ProtoField.new("Settlement Terms", "tmx.tsxalpha.level1.qrtmd.v2.1.settlementterms", ftypes.STRING, nil, nil, nil, "Settlement terms associated with the order.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.stock_group = ProtoField.new("Stock Group", "tmx.tsxalpha.level1.qrtmd.v2.1.stockgroup", ftypes.UINT8, nil, nil, nil, "An indicator of stock group.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.stock_state = ProtoField.new("Stock State", "tmx.tsxalpha.level1.qrtmd.v2.1.stockstate", ftypes.STRING, nil, nil, nil, "The state of the stock.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.symbol = ProtoField.new("Symbol", "tmx.tsxalpha.level1.qrtmd.v2.1.symbol", ftypes.STRING, nil, nil, nil, "Stock symbol.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.symbol_name = ProtoField.new("Symbol Name", "tmx.tsxalpha.level1.qrtmd.v2.1.symbolname", ftypes.STRING, nil, nil, nil, "The security or issue symbol's complete company name.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.test_symbol = ProtoField.new("Test Symbol", "tmx.tsxalpha.level1.qrtmd.v2.1.testsymbol", ftypes.STRING, nil, nil, nil, "Indicates the symbol is a test symbol.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.total_number_of_stock_groups = ProtoField.new("Total Number Of Stock Groups", "tmx.tsxalpha.level1.qrtmd.v2.1.totalnumberofstockgroups", ftypes.UINT16, nil, nil, nil, "Total number of stock groups per trading tier and exchange ID.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.total_number_of_symbols = ProtoField.new("Total Number Of Symbols", "tmx.tsxalpha.level1.qrtmd.v2.1.totalnumberofsymbols", ftypes.UINT24, nil, nil, nil, "The total number of stocks per trading tier and Exchange ID.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.trade_id = ProtoField.new("Trade Id", "tmx.tsxalpha.level1.qrtmd.v2.1.tradeid", ftypes.UINT32, nil, nil, nil, "Unique identifier per stock assigned to each trade.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.trade_price = ProtoField.new("Trade Price", "tmx.tsxalpha.level1.qrtmd.v2.1.tradeprice", ftypes.DOUBLE, nil, nil, nil, "Price at which the transaction took place.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.trade_time_stamp = ProtoField.new("Trade Time Stamp", "tmx.tsxalpha.level1.qrtmd.v2.1.tradetimestamp", ftypes.STRING, nil, nil, nil, "Time of trade.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.trading_system_time_stamp = ProtoField.new("Trading System Time Stamp", "tmx.tsxalpha.level1.qrtmd.v2.1.tradingsystemtimestamp", ftypes.STRING, nil, nil, nil, "The time at which the business action occurred.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.trading_tier_id = ProtoField.new("Trading Tier Id", "tmx.tsxalpha.level1.qrtmd.v2.1.tradingtierid", ftypes.STRING, nil, nil, nil, "A Trading Engine identifier.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.volume = ProtoField.new("Volume", "tmx.tsxalpha.level1.qrtmd.v2.1.volume", ftypes.UINT32, nil, nil, nil, "Volume of shares traded.")

-- Tmx TsxAlpha Level1 Qrtmd 2.1 Framing
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.message_header = ProtoField.new("Message Header", "tmx.tsxalpha.level1.qrtmd.v2.1.messageheader", ftypes.STRING, nil, nil, nil, "Twenty two byte ascii header carried on every Qrtmd message")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.packet = ProtoField.new("Packet", "tmx.tsxalpha.level1.qrtmd.v2.1.packet", ftypes.STRING, nil, nil, nil, "Qrtmd Udp Packet")

-- Tmx TsxAlpha Level1 2.1 Application Messages
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.general_message = ProtoField.new("General Message", "tmx.tsxalpha.level1.qrtmd.v2.1.generalmessage", ftypes.STRING, nil, nil, nil, "Bulletin in textual format.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.market_state_message = ProtoField.new("Market State Message", "tmx.tsxalpha.level1.qrtmd.v2.1.marketstatemessage", ftypes.STRING, nil, nil, nil, "The indication of the current market state for a stock group.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.quote_message = ProtoField.new("Quote Message", "tmx.tsxalpha.level1.qrtmd.v2.1.quotemessage", ftypes.STRING, nil, nil, nil, "Full update quote sent whenever either the bid or the ask has changed.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.stock_state_message = ProtoField.new("Stock State Message", "tmx.tsxalpha.level1.qrtmd.v2.1.stockstatemessage", ftypes.STRING, nil, nil, nil, "A change in the trading state of a stock.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.symbol_status_message = ProtoField.new("Symbol Status Message", "tmx.tsxalpha.level1.qrtmd.v2.1.symbolstatusmessage", ftypes.STRING, nil, nil, nil, "Reference information for a symbol trading on the current day.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.trade_cancellation_message = ProtoField.new("Trade Cancellation Message", "tmx.tsxalpha.level1.qrtmd.v2.1.tradecancellationmessage", ftypes.STRING, nil, nil, nil, "Cancellation of a trade, reducing total volume, value and transactions by the amount of the cancellation.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "tmx.tsxalpha.level1.qrtmd.v2.1.tradecorrectionmessage", ftypes.STRING, nil, nil, nil, "Correction of a trade already disseminated.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.trade_message = ProtoField.new("Trade Message", "tmx.tsxalpha.level1.qrtmd.v2.1.trademessage", ftypes.STRING, nil, nil, nil, "A trade in an equity on the Alpha market.")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.trading_tier_status_message = ProtoField.new("Trading Tier Status Message", "tmx.tsxalpha.level1.qrtmd.v2.1.tradingtierstatusmessage", ftypes.STRING, nil, nil, nil, "Statistical information on the number of symbols and stock groups for the current trading day, sent at the beginning of each trading day.")

-- Tmx TsxAlpha Level1 Qrtmd 2.1 Expert Info
tmx_tsxalpha_level1_qrtmd_v2_1.experts = {}
tmx_tsxalpha_level1_qrtmd_v2_1.experts.not_a_number = ProtoExpert.new("tmx.tsxalpha.level1.qrtmd.v2.1.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_tmx_tsxalpha_level1_qrtmd_v2_1.experts = { tmx_tsxalpha_level1_qrtmd_v2_1.experts.not_a_number }

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Tmx TsxAlpha Level1 Qrtmd 2.1 Element Dissection Options
show.application_messages = true
show.headers = true
show.structs = true

-- Register Tmx TsxAlpha Level1 Qrtmd 2.1 Show Options
omi_tmx_tsxalpha_level1_qrtmd_v2_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_tmx_tsxalpha_level1_qrtmd_v2_1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")

-- Handle changed preferences
function omi_tmx_tsxalpha_level1_qrtmd_v2_1.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_tmx_tsxalpha_level1_qrtmd_v2_1.prefs.show_application_messages then
    show.application_messages = omi_tmx_tsxalpha_level1_qrtmd_v2_1.prefs.show_application_messages
  end
  if show.headers ~= omi_tmx_tsxalpha_level1_qrtmd_v2_1.prefs.show_headers then
    show.headers = omi_tmx_tsxalpha_level1_qrtmd_v2_1.prefs.show_headers
  end
  if show.structs ~= omi_tmx_tsxalpha_level1_qrtmd_v2_1.prefs.show_structs then
    show.structs = omi_tmx_tsxalpha_level1_qrtmd_v2_1.prefs.show_structs
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

-- trim leading zeros
trim_left_zeros = function(str)
  local start = 1

  while start < str:len() and str:byte(start) == 0x30 do
    start = start + 1
  end

  return str:sub(start)
end

-- is every character a digit
is_digits = function(str)
  if str:len() == 0 then
    return false
  end

  for index = 1, str:len() do
    local byte = str:byte(index)

    if byte < 0x30 or byte > 0x39 then
      return false
    end
  end

  return true
end

-- the number a digit run of implied decimal places spells
format_implied_decimal_text = function(str, places)
  local digits = trim_left_spaces(str)
  local sign = ""
  local first = digits:sub(1, 1)

  if first == "-" or first == "+" then
    sign = first
    digits = digits:sub(2)
  end

  if not is_digits(digits) then
    return nil
  end

  digits = trim_left_zeros(digits)

  while digits:len() <= places do
    digits = "0"..digits
  end

  return sign..digits:sub(1, digits:len() - places).."."..digits:sub(-places)
end


-----------------------------------------------------------------------
-- Tmx TsxAlpha Level1 Qrtmd 2.1 Fields
-----------------------------------------------------------------------

-- Ask Price
tmx_tsxalpha_level1_qrtmd_v2_1.ask_price = {}

-- Size: Ask Price
tmx_tsxalpha_level1_qrtmd_v2_1.ask_price.size = 9

-- Display: Ask Price
tmx_tsxalpha_level1_qrtmd_v2_1.ask_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, tmx_tsxalpha_level1_qrtmd_v2_1.ask_price.size):string(), 3)

  if text == nil then
    return "Ask Price: "..tostring(value)
  end

  return "Ask Price: "..text
end

-- Dissect: Ask Price
tmx_tsxalpha_level1_qrtmd_v2_1.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.ask_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.ask_price, range, value, "Ask Price: Not Applicable")
    item:add_proto_expert_info(tmx_tsxalpha_level1_qrtmd_v2_1.experts.not_a_number, "Ask Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000

  local display = tmx_tsxalpha_level1_qrtmd_v2_1.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Size
tmx_tsxalpha_level1_qrtmd_v2_1.ask_size = {}

-- Size: Ask Size
tmx_tsxalpha_level1_qrtmd_v2_1.ask_size.size = 9

-- Display: Ask Size
tmx_tsxalpha_level1_qrtmd_v2_1.ask_size.display = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
tmx_tsxalpha_level1_qrtmd_v2_1.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.ask_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.ask_size, range, value, "Ask Size: Not Applicable")
    item:add_proto_expert_info(tmx_tsxalpha_level1_qrtmd_v2_1.experts.not_a_number, "Ask Size is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsxalpha_level1_qrtmd_v2_1.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Bid Price
tmx_tsxalpha_level1_qrtmd_v2_1.bid_price = {}

-- Size: Bid Price
tmx_tsxalpha_level1_qrtmd_v2_1.bid_price.size = 9

-- Display: Bid Price
tmx_tsxalpha_level1_qrtmd_v2_1.bid_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, tmx_tsxalpha_level1_qrtmd_v2_1.bid_price.size):string(), 3)

  if text == nil then
    return "Bid Price: "..tostring(value)
  end

  return "Bid Price: "..text
end

-- Dissect: Bid Price
tmx_tsxalpha_level1_qrtmd_v2_1.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.bid_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.bid_price, range, value, "Bid Price: Not Applicable")
    item:add_proto_expert_info(tmx_tsxalpha_level1_qrtmd_v2_1.experts.not_a_number, "Bid Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000

  local display = tmx_tsxalpha_level1_qrtmd_v2_1.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Size
tmx_tsxalpha_level1_qrtmd_v2_1.bid_size = {}

-- Size: Bid Size
tmx_tsxalpha_level1_qrtmd_v2_1.bid_size.size = 9

-- Display: Bid Size
tmx_tsxalpha_level1_qrtmd_v2_1.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
tmx_tsxalpha_level1_qrtmd_v2_1.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.bid_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.bid_size, range, value, "Bid Size: Not Applicable")
    item:add_proto_expert_info(tmx_tsxalpha_level1_qrtmd_v2_1.experts.not_a_number, "Bid Size is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsxalpha_level1_qrtmd_v2_1.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Board Lot
tmx_tsxalpha_level1_qrtmd_v2_1.board_lot = {}

-- Size: Board Lot
tmx_tsxalpha_level1_qrtmd_v2_1.board_lot.size = 9

-- Display: Board Lot
tmx_tsxalpha_level1_qrtmd_v2_1.board_lot.display = function(value)
  return "Board Lot: "..value
end

-- Dissect: Board Lot
tmx_tsxalpha_level1_qrtmd_v2_1.board_lot.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.board_lot.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.board_lot, range, value, "Board Lot: Not Applicable")
    item:add_proto_expert_info(tmx_tsxalpha_level1_qrtmd_v2_1.experts.not_a_number, "Board Lot is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsxalpha_level1_qrtmd_v2_1.board_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.board_lot, range, value, display)

  return offset + length, value
end

-- Bulletin Indicator
tmx_tsxalpha_level1_qrtmd_v2_1.bulletin_indicator = {}

-- Size: Bulletin Indicator
tmx_tsxalpha_level1_qrtmd_v2_1.bulletin_indicator.size = 1

-- Display: Bulletin Indicator
tmx_tsxalpha_level1_qrtmd_v2_1.bulletin_indicator.labels = {
  ["Y"] = "Bulletin Indicator: Yes (Y)",
  ["N"] = "Bulletin Indicator: No (N)",
}

tmx_tsxalpha_level1_qrtmd_v2_1.bulletin_indicator.display = function(value)
  return tmx_tsxalpha_level1_qrtmd_v2_1.bulletin_indicator.labels[value] or "Bulletin Indicator: Unknown("..value..")"
end

-- Dissect: Bulletin Indicator
tmx_tsxalpha_level1_qrtmd_v2_1.bulletin_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.bulletin_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsxalpha_level1_qrtmd_v2_1.bulletin_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.bulletin_indicator, range, value, display)

  return offset + length, value
end

-- Buyer Id
tmx_tsxalpha_level1_qrtmd_v2_1.buyer_id = {}

-- Size: Buyer Id
tmx_tsxalpha_level1_qrtmd_v2_1.buyer_id.size = 3

-- Display: Buyer Id
tmx_tsxalpha_level1_qrtmd_v2_1.buyer_id.display = function(value)
  return "Buyer Id: "..value
end

-- Dissect: Buyer Id
tmx_tsxalpha_level1_qrtmd_v2_1.buyer_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.buyer_id.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.buyer_id, range, value, "Buyer Id: Not Applicable")
    item:add_proto_expert_info(tmx_tsxalpha_level1_qrtmd_v2_1.experts.not_a_number, "Buyer Id is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsxalpha_level1_qrtmd_v2_1.buyer_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.buyer_id, range, value, display)

  return offset + length, value
end

-- Bypass
tmx_tsxalpha_level1_qrtmd_v2_1.bypass = {}

-- Size: Bypass
tmx_tsxalpha_level1_qrtmd_v2_1.bypass.size = 1

-- Display: Bypass
tmx_tsxalpha_level1_qrtmd_v2_1.bypass.labels = {
  ["Y"] = "Bypass: Yes (Y)",
  ["N"] = "Bypass: No (N)",
}

tmx_tsxalpha_level1_qrtmd_v2_1.bypass.display = function(value)
  return tmx_tsxalpha_level1_qrtmd_v2_1.bypass.labels[value] or "Bypass: Unknown("..value..")"
end

-- Dissect: Bypass
tmx_tsxalpha_level1_qrtmd_v2_1.bypass.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.bypass.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsxalpha_level1_qrtmd_v2_1.bypass.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.bypass, range, value, display)

  return offset + length, value
end

-- Comment
tmx_tsxalpha_level1_qrtmd_v2_1.comment = {}

-- Size: Comment
tmx_tsxalpha_level1_qrtmd_v2_1.comment.size = 40

-- Display: Comment
tmx_tsxalpha_level1_qrtmd_v2_1.comment.display = function(value)
  return "Comment: "..value
end

-- Dissect: Comment
tmx_tsxalpha_level1_qrtmd_v2_1.comment.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.comment.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsxalpha_level1_qrtmd_v2_1.comment.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.comment, range, value, display)

  return offset + length, value
end

-- Continuation Identifier
tmx_tsxalpha_level1_qrtmd_v2_1.continuation_identifier = {}

-- Size: Continuation Identifier
tmx_tsxalpha_level1_qrtmd_v2_1.continuation_identifier.size = 1

-- Display: Continuation Identifier
tmx_tsxalpha_level1_qrtmd_v2_1.continuation_identifier.labels = {
  ["0"] = "Continuation Identifier: Stand Alone Message (0)",
}

tmx_tsxalpha_level1_qrtmd_v2_1.continuation_identifier.display = function(value)
  return tmx_tsxalpha_level1_qrtmd_v2_1.continuation_identifier.labels[value] or "Continuation Identifier: Unknown("..value..")"
end

-- Dissect: Continuation Identifier
tmx_tsxalpha_level1_qrtmd_v2_1.continuation_identifier.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.continuation_identifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsxalpha_level1_qrtmd_v2_1.continuation_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.continuation_identifier, range, value, display)

  return offset + length, value
end

-- Cross Type
tmx_tsxalpha_level1_qrtmd_v2_1.cross_type = {}

-- Size: Cross Type
tmx_tsxalpha_level1_qrtmd_v2_1.cross_type.size = 1

-- Display: Cross Type
tmx_tsxalpha_level1_qrtmd_v2_1.cross_type.display = function(value)
  if value == "I" then
    return "Cross Type: Internal (I)"
  end
  if value == "B" then
    return "Cross Type: Basis (B)"
  end
  if value == "C" then
    return "Cross Type: Contingent (C)"
  end
  if value == "D" then
    return "Cross Type: Derivative Related (D)"
  end
  if value == "R" then
    return "Cross Type: Regular (R)"
  end
  if value == "V" then
    return "Cross Type: Volume Weighted Average Price (V)"
  end
  if value == " " then
    return "Cross Type: Default (<whitespace>)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
tmx_tsxalpha_level1_qrtmd_v2_1.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsxalpha_level1_qrtmd_v2_1.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Currency
tmx_tsxalpha_level1_qrtmd_v2_1.currency = {}

-- Size: Currency
tmx_tsxalpha_level1_qrtmd_v2_1.currency.size = 1

-- Display: Currency
tmx_tsxalpha_level1_qrtmd_v2_1.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
tmx_tsxalpha_level1_qrtmd_v2_1.currency.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.currency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsxalpha_level1_qrtmd_v2_1.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.currency, range, value, display)

  return offset + length, value
end

-- Cusip
tmx_tsxalpha_level1_qrtmd_v2_1.cusip = {}

-- Size: Cusip
tmx_tsxalpha_level1_qrtmd_v2_1.cusip.size = 12

-- Display: Cusip
tmx_tsxalpha_level1_qrtmd_v2_1.cusip.display = function(value)
  return "Cusip: "..value
end

-- Dissect: Cusip
tmx_tsxalpha_level1_qrtmd_v2_1.cusip.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.cusip.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsxalpha_level1_qrtmd_v2_1.cusip.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.cusip, range, value, display)

  return offset + length, value
end

-- Exchange Id
tmx_tsxalpha_level1_qrtmd_v2_1.exchange_id = {}

-- Size: Exchange Id
tmx_tsxalpha_level1_qrtmd_v2_1.exchange_id.size = 3

-- Display: Exchange Id
tmx_tsxalpha_level1_qrtmd_v2_1.exchange_id.display = function(value)
  return "Exchange Id: "..value
end

-- Dissect: Exchange Id
tmx_tsxalpha_level1_qrtmd_v2_1.exchange_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.exchange_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsxalpha_level1_qrtmd_v2_1.exchange_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.exchange_id, range, value, display)

  return offset + length, value
end

-- Exchange Identifier
tmx_tsxalpha_level1_qrtmd_v2_1.exchange_identifier = {}

-- Size: Exchange Identifier
tmx_tsxalpha_level1_qrtmd_v2_1.exchange_identifier.size = 2

-- Display: Exchange Identifier
tmx_tsxalpha_level1_qrtmd_v2_1.exchange_identifier.labels = {
  ["T"] = "Exchange Identifier: Toronto Stock Exchange (T)",
  ["V"] = "Exchange Identifier: Tsx Venture Exchange (V)",
  ["A"] = "Exchange Identifier: Tsx Alpha Exchange (A)",
}

tmx_tsxalpha_level1_qrtmd_v2_1.exchange_identifier.display = function(value)
  return tmx_tsxalpha_level1_qrtmd_v2_1.exchange_identifier.labels[value] or "Exchange Identifier: Unknown("..value..")"
end

-- Dissect: Exchange Identifier
tmx_tsxalpha_level1_qrtmd_v2_1.exchange_identifier.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.exchange_identifier.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsxalpha_level1_qrtmd_v2_1.exchange_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.exchange_identifier, range, value, display)

  return offset + length, value
end

-- Face Value
tmx_tsxalpha_level1_qrtmd_v2_1.face_value = {}

-- Size: Face Value
tmx_tsxalpha_level1_qrtmd_v2_1.face_value.size = 9

-- Display: Face Value
tmx_tsxalpha_level1_qrtmd_v2_1.face_value.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, tmx_tsxalpha_level1_qrtmd_v2_1.face_value.size):string(), 3)

  if text == nil then
    return "Face Value: "..tostring(value)
  end

  return "Face Value: "..text
end

-- Dissect: Face Value
tmx_tsxalpha_level1_qrtmd_v2_1.face_value.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.face_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.face_value, range, value, "Face Value: Not Applicable")
    item:add_proto_expert_info(tmx_tsxalpha_level1_qrtmd_v2_1.experts.not_a_number, "Face Value is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000

  local display = tmx_tsxalpha_level1_qrtmd_v2_1.face_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.face_value, range, value, display)

  return offset + length, value
end

-- Is Dark
tmx_tsxalpha_level1_qrtmd_v2_1.is_dark = {}

-- Size: Is Dark
tmx_tsxalpha_level1_qrtmd_v2_1.is_dark.size = 1

-- Display: Is Dark
tmx_tsxalpha_level1_qrtmd_v2_1.is_dark.labels = {
  ["N"] = "Is Dark: No (N)",
}

tmx_tsxalpha_level1_qrtmd_v2_1.is_dark.display = function(value)
  return tmx_tsxalpha_level1_qrtmd_v2_1.is_dark.labels[value] or "Is Dark: Unknown("..value..")"
end

-- Dissect: Is Dark
tmx_tsxalpha_level1_qrtmd_v2_1.is_dark.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.is_dark.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsxalpha_level1_qrtmd_v2_1.is_dark.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.is_dark, range, value, display)

  return offset + length, value
end

-- Last Sale
tmx_tsxalpha_level1_qrtmd_v2_1.last_sale = {}

-- Size: Last Sale
tmx_tsxalpha_level1_qrtmd_v2_1.last_sale.size = 11

-- Display: Last Sale
tmx_tsxalpha_level1_qrtmd_v2_1.last_sale.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, tmx_tsxalpha_level1_qrtmd_v2_1.last_sale.size):string(), 5)

  if text == nil then
    return "Last Sale: "..tostring(value)
  end

  return "Last Sale: "..text
end

-- Dissect: Last Sale
tmx_tsxalpha_level1_qrtmd_v2_1.last_sale.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.last_sale.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.last_sale, range, value, "Last Sale: Not Applicable")
    item:add_proto_expert_info(tmx_tsxalpha_level1_qrtmd_v2_1.experts.not_a_number, "Last Sale is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100000

  local display = tmx_tsxalpha_level1_qrtmd_v2_1.last_sale.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.last_sale, range, value, display)

  return offset + length, value
end

-- Listing Market
tmx_tsxalpha_level1_qrtmd_v2_1.listing_market = {}

-- Size: Listing Market
tmx_tsxalpha_level1_qrtmd_v2_1.listing_market.size = 1

-- Display: Listing Market
tmx_tsxalpha_level1_qrtmd_v2_1.listing_market.labels = {
  ["T"] = "Listing Market: Tsx (T)",
  ["V"] = "Listing Market: Tsxv (V)",
}

tmx_tsxalpha_level1_qrtmd_v2_1.listing_market.display = function(value)
  return tmx_tsxalpha_level1_qrtmd_v2_1.listing_market.labels[value] or "Listing Market: Unknown("..value..")"
end

-- Dissect: Listing Market
tmx_tsxalpha_level1_qrtmd_v2_1.listing_market.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.listing_market.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsxalpha_level1_qrtmd_v2_1.listing_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.listing_market, range, value, display)

  return offset + length, value
end

-- Market State
tmx_tsxalpha_level1_qrtmd_v2_1.market_state = {}

-- Size: Market State
tmx_tsxalpha_level1_qrtmd_v2_1.market_state.size = 1

-- Display: Market State
tmx_tsxalpha_level1_qrtmd_v2_1.market_state.labels = {
  ["P"] = "Market State: Pre Open (P)",
  ["O"] = "Market State: Opening (O)",
  ["S"] = "Market State: Open (S)",
  ["C"] = "Market State: Closed (C)",
  ["F"] = "Market State: Extended Hours Close (F)",
  ["N"] = "Market State: Extended Hours Cxls (N)",
}

tmx_tsxalpha_level1_qrtmd_v2_1.market_state.display = function(value)
  return tmx_tsxalpha_level1_qrtmd_v2_1.market_state.labels[value] or "Market State: Unknown("..value..")"
end

-- Dissect: Market State
tmx_tsxalpha_level1_qrtmd_v2_1.market_state.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.market_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsxalpha_level1_qrtmd_v2_1.market_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.market_state, range, value, display)

  return offset + length, value
end

-- Message Length
tmx_tsxalpha_level1_qrtmd_v2_1.message_length = {}

-- Size: Message Length
tmx_tsxalpha_level1_qrtmd_v2_1.message_length.size = 4

-- Display: Message Length
tmx_tsxalpha_level1_qrtmd_v2_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
tmx_tsxalpha_level1_qrtmd_v2_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.message_length.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.message_length, range, value, "Message Length: Not Applicable")
    item:add_proto_expert_info(tmx_tsxalpha_level1_qrtmd_v2_1.experts.not_a_number, "Message Length is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsxalpha_level1_qrtmd_v2_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Text
tmx_tsxalpha_level1_qrtmd_v2_1.message_text = {}

-- Size: Message Text
tmx_tsxalpha_level1_qrtmd_v2_1.message_text.size = 80

-- Display: Message Text
tmx_tsxalpha_level1_qrtmd_v2_1.message_text.display = function(value)
  return "Message Text: "..value
end

-- Dissect: Message Text
tmx_tsxalpha_level1_qrtmd_v2_1.message_text.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.message_text.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsxalpha_level1_qrtmd_v2_1.message_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.message_text, range, value, display)

  return offset + length, value
end

-- Message Type
tmx_tsxalpha_level1_qrtmd_v2_1.message_type = {}

-- Size: Message Type
tmx_tsxalpha_level1_qrtmd_v2_1.message_type.size = 2

-- Display: Message Type
tmx_tsxalpha_level1_qrtmd_v2_1.message_type.labels = {
  ["A"] = "Message Type: Trade Message (A)",
  ["B"] = "Message Type: Symbol Status Message (B)",
  ["D"] = "Message Type: Stock State Message (D)",
  ["E"] = "Message Type: Quote Message (E)",
  ["G"] = "Message Type: General Message (G)",
  ["H"] = "Message Type: Trade Cancellation Message (H)",
  ["S"] = "Message Type: Market State Message (S)",
  ["T"] = "Message Type: Trading Tier Status Message (T)",
  ["X"] = "Message Type: Trade Correction Message (X)",
}

tmx_tsxalpha_level1_qrtmd_v2_1.message_type.display = function(value)
  return tmx_tsxalpha_level1_qrtmd_v2_1.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
tmx_tsxalpha_level1_qrtmd_v2_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.message_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsxalpha_level1_qrtmd_v2_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Min Po Qty
tmx_tsxalpha_level1_qrtmd_v2_1.min_po_qty = {}

-- Size: Min Po Qty
tmx_tsxalpha_level1_qrtmd_v2_1.min_po_qty.size = 9

-- Display: Min Po Qty
tmx_tsxalpha_level1_qrtmd_v2_1.min_po_qty.display = function(value)
  return "Min Po Qty: "..value
end

-- Dissect: Min Po Qty
tmx_tsxalpha_level1_qrtmd_v2_1.min_po_qty.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.min_po_qty.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.min_po_qty, range, value, "Min Po Qty: Not Applicable")
    item:add_proto_expert_info(tmx_tsxalpha_level1_qrtmd_v2_1.experts.not_a_number, "Min Po Qty is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsxalpha_level1_qrtmd_v2_1.min_po_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.min_po_qty, range, value, display)

  return offset + length, value
end

-- Opening Time
tmx_tsxalpha_level1_qrtmd_v2_1.opening_time = {}

-- Size: Opening Time
tmx_tsxalpha_level1_qrtmd_v2_1.opening_time.size = 6

-- Display: Opening Time
tmx_tsxalpha_level1_qrtmd_v2_1.opening_time.display = function(value)
  if #value < 6 then
    return "Opening Time: "..value
  end

  return "Opening Time: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Opening Time
tmx_tsxalpha_level1_qrtmd_v2_1.opening_time.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.opening_time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsxalpha_level1_qrtmd_v2_1.opening_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.opening_time, range, value, display)

  return offset + length, value
end

-- Opening Trade
tmx_tsxalpha_level1_qrtmd_v2_1.opening_trade = {}

-- Size: Opening Trade
tmx_tsxalpha_level1_qrtmd_v2_1.opening_trade.size = 1

-- Display: Opening Trade
tmx_tsxalpha_level1_qrtmd_v2_1.opening_trade.labels = {
  ["Y"] = "Opening Trade: Yes (Y)",
  ["N"] = "Opening Trade: No (N)",
}

tmx_tsxalpha_level1_qrtmd_v2_1.opening_trade.display = function(value)
  return tmx_tsxalpha_level1_qrtmd_v2_1.opening_trade.labels[value] or "Opening Trade: Unknown("..value..")"
end

-- Dissect: Opening Trade
tmx_tsxalpha_level1_qrtmd_v2_1.opening_trade.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.opening_trade.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsxalpha_level1_qrtmd_v2_1.opening_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.opening_trade, range, value, display)

  return offset + length, value
end

-- Original Trade Id
tmx_tsxalpha_level1_qrtmd_v2_1.original_trade_id = {}

-- Size: Original Trade Id
tmx_tsxalpha_level1_qrtmd_v2_1.original_trade_id.size = 9

-- Display: Original Trade Id
tmx_tsxalpha_level1_qrtmd_v2_1.original_trade_id.display = function(value)
  return "Original Trade Id: "..value
end

-- Dissect: Original Trade Id
tmx_tsxalpha_level1_qrtmd_v2_1.original_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.original_trade_id.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.original_trade_id, range, value, "Original Trade Id: Not Applicable")
    item:add_proto_expert_info(tmx_tsxalpha_level1_qrtmd_v2_1.experts.not_a_number, "Original Trade Id is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsxalpha_level1_qrtmd_v2_1.original_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.original_trade_id, range, value, display)

  return offset + length, value
end

-- Product Type
tmx_tsxalpha_level1_qrtmd_v2_1.product_type = {}

-- Size: Product Type
tmx_tsxalpha_level1_qrtmd_v2_1.product_type.size = 1

-- Display: Product Type
tmx_tsxalpha_level1_qrtmd_v2_1.product_type.labels = {
  ["B"] = "Product Type: Debenture (B)",
  ["E"] = "Product Type: Equity (E)",
  ["M"] = "Product Type: Mutual Fund (M)",
  ["F"] = "Product Type: Etf (F)",
}

tmx_tsxalpha_level1_qrtmd_v2_1.product_type.display = function(value)
  return tmx_tsxalpha_level1_qrtmd_v2_1.product_type.labels[value] or "Product Type: Unknown("..value..")"
end

-- Dissect: Product Type
tmx_tsxalpha_level1_qrtmd_v2_1.product_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.product_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsxalpha_level1_qrtmd_v2_1.product_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.product_type, range, value, display)

  return offset + length, value
end

-- Qrtmd Etx
tmx_tsxalpha_level1_qrtmd_v2_1.qrtmd_etx = {}

-- Size: Qrtmd Etx
tmx_tsxalpha_level1_qrtmd_v2_1.qrtmd_etx.size = 1

-- Display: Qrtmd Etx
tmx_tsxalpha_level1_qrtmd_v2_1.qrtmd_etx.display = function(value)
  return "Qrtmd Etx: "..value
end

-- Dissect: Qrtmd Etx
tmx_tsxalpha_level1_qrtmd_v2_1.qrtmd_etx.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.qrtmd_etx.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = tmx_tsxalpha_level1_qrtmd_v2_1.qrtmd_etx.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.qrtmd_etx, range, value, display)

  return offset + length, value
end

-- Qrtmd Stx
tmx_tsxalpha_level1_qrtmd_v2_1.qrtmd_stx = {}

-- Size: Qrtmd Stx
tmx_tsxalpha_level1_qrtmd_v2_1.qrtmd_stx.size = 1

-- Display: Qrtmd Stx
tmx_tsxalpha_level1_qrtmd_v2_1.qrtmd_stx.display = function(value)
  if value == 2 then
    return "Qrtmd Stx: Stx"
  end

  return "Qrtmd Stx: Unknown("..value..")"
end

-- Dissect: Qrtmd Stx
tmx_tsxalpha_level1_qrtmd_v2_1.qrtmd_stx.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.qrtmd_stx.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = tmx_tsxalpha_level1_qrtmd_v2_1.qrtmd_stx.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.qrtmd_stx, range, value, display)

  return offset + length, value
end

-- Retransmission Identifier
tmx_tsxalpha_level1_qrtmd_v2_1.retransmission_identifier = {}

-- Size: Retransmission Identifier
tmx_tsxalpha_level1_qrtmd_v2_1.retransmission_identifier.size = 1

-- Display: Retransmission Identifier
tmx_tsxalpha_level1_qrtmd_v2_1.retransmission_identifier.labels = {
  ["0"] = "Retransmission Identifier: Normal Transmission (0)",
}

tmx_tsxalpha_level1_qrtmd_v2_1.retransmission_identifier.display = function(value)
  return tmx_tsxalpha_level1_qrtmd_v2_1.retransmission_identifier.labels[value] or "Retransmission Identifier: Unknown("..value..")"
end

-- Dissect: Retransmission Identifier
tmx_tsxalpha_level1_qrtmd_v2_1.retransmission_identifier.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.retransmission_identifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsxalpha_level1_qrtmd_v2_1.retransmission_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.retransmission_identifier, range, value, display)

  return offset + length, value
end

-- Seller Id
tmx_tsxalpha_level1_qrtmd_v2_1.seller_id = {}

-- Size: Seller Id
tmx_tsxalpha_level1_qrtmd_v2_1.seller_id.size = 3

-- Display: Seller Id
tmx_tsxalpha_level1_qrtmd_v2_1.seller_id.display = function(value)
  return "Seller Id: "..value
end

-- Dissect: Seller Id
tmx_tsxalpha_level1_qrtmd_v2_1.seller_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.seller_id.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.seller_id, range, value, "Seller Id: Not Applicable")
    item:add_proto_expert_info(tmx_tsxalpha_level1_qrtmd_v2_1.experts.not_a_number, "Seller Id is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsxalpha_level1_qrtmd_v2_1.seller_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.seller_id, range, value, display)

  return offset + length, value
end

-- Sequence Number
tmx_tsxalpha_level1_qrtmd_v2_1.sequence_number = {}

-- Size: Sequence Number
tmx_tsxalpha_level1_qrtmd_v2_1.sequence_number.size = 9

-- Display: Sequence Number
tmx_tsxalpha_level1_qrtmd_v2_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
tmx_tsxalpha_level1_qrtmd_v2_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.sequence_number, range, value, "Sequence Number: Not Applicable")
    item:add_proto_expert_info(tmx_tsxalpha_level1_qrtmd_v2_1.experts.not_a_number, "Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsxalpha_level1_qrtmd_v2_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Service Identifier
tmx_tsxalpha_level1_qrtmd_v2_1.service_identifier = {}

-- Size: Service Identifier
tmx_tsxalpha_level1_qrtmd_v2_1.service_identifier.size = 3

-- Display: Service Identifier
tmx_tsxalpha_level1_qrtmd_v2_1.service_identifier.labels = {
  ["TL1"] = "Service Identifier: Toronto Level 1 (TL1)",
  ["CL1"] = "Service Identifier: Tsx Venture Exchange Level 1 (CL1)",
  ["AL1"] = "Service Identifier: Alpha Level 1 (AL1)",
  ["TL2"] = "Service Identifier: Toronto Level 2 (TL2)",
  ["CL2"] = "Service Identifier: Tsx Venture Exchange Level 2 (CL2)",
  ["AL2"] = "Service Identifier: Alpha Level 2 (AL2)",
  ["TX1"] = "Service Identifier: Index Service Level 1 (TX1)",
  ["TRD"] = "Service Identifier: Reference Data Feed Toronto (TRD)",
  ["VRD"] = "Service Identifier: Reference Data Feed Venture (VRD)",
}

tmx_tsxalpha_level1_qrtmd_v2_1.service_identifier.display = function(value)
  return tmx_tsxalpha_level1_qrtmd_v2_1.service_identifier.labels[value] or "Service Identifier: Unknown("..value..")"
end

-- Dissect: Service Identifier
tmx_tsxalpha_level1_qrtmd_v2_1.service_identifier.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.service_identifier.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsxalpha_level1_qrtmd_v2_1.service_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.service_identifier, range, value, display)

  return offset + length, value
end

-- Settlement Terms
tmx_tsxalpha_level1_qrtmd_v2_1.settlement_terms = {}

-- Size: Settlement Terms
tmx_tsxalpha_level1_qrtmd_v2_1.settlement_terms.size = 1

-- Display: Settlement Terms
tmx_tsxalpha_level1_qrtmd_v2_1.settlement_terms.display = function(value)
  if value == " " then
    return "Settlement Terms: Default (<whitespace>)"
  end
  if value == "C" then
    return "Settlement Terms: Cash (C)"
  end
  if value == "N" then
    return "Settlement Terms: Non Net (N)"
  end
  if value == "M" then
    return "Settlement Terms: Derivatives Related Contingent Equity Trade (M)"
  end
  if value == "T" then
    return "Settlement Terms: Cash Today (T)"
  end
  if value == "D" then
    return "Settlement Terms: Settlement Date (D)"
  end

  return "Settlement Terms: Unknown("..value..")"
end

-- Dissect: Settlement Terms
tmx_tsxalpha_level1_qrtmd_v2_1.settlement_terms.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.settlement_terms.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsxalpha_level1_qrtmd_v2_1.settlement_terms.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.settlement_terms, range, value, display)

  return offset + length, value
end

-- Stock Group
tmx_tsxalpha_level1_qrtmd_v2_1.stock_group = {}

-- Size: Stock Group
tmx_tsxalpha_level1_qrtmd_v2_1.stock_group.size = 2

-- Display: Stock Group
tmx_tsxalpha_level1_qrtmd_v2_1.stock_group.display = function(value)
  return "Stock Group: "..value
end

-- Dissect: Stock Group
tmx_tsxalpha_level1_qrtmd_v2_1.stock_group.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.stock_group.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.stock_group, range, value, "Stock Group: Not Applicable")
    item:add_proto_expert_info(tmx_tsxalpha_level1_qrtmd_v2_1.experts.not_a_number, "Stock Group is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsxalpha_level1_qrtmd_v2_1.stock_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.stock_group, range, value, display)

  return offset + length, value
end

-- Stock State
tmx_tsxalpha_level1_qrtmd_v2_1.stock_state = {}

-- Size: Stock State
tmx_tsxalpha_level1_qrtmd_v2_1.stock_state.size = 2

-- Display: Stock State
tmx_tsxalpha_level1_qrtmd_v2_1.stock_state.labels = {
  ["AS"] = "Stock State: Authorized Halted (AS)",
  ["IS"] = "Stock State: Inhibited Halted (IS)",
  ["A"] = "Stock State: Authorized (A)",
  ["I"] = "Stock State: Inhibited (I)",
}

tmx_tsxalpha_level1_qrtmd_v2_1.stock_state.display = function(value)
  return tmx_tsxalpha_level1_qrtmd_v2_1.stock_state.labels[value] or "Stock State: Unknown("..value..")"
end

-- Dissect: Stock State
tmx_tsxalpha_level1_qrtmd_v2_1.stock_state.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.stock_state.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsxalpha_level1_qrtmd_v2_1.stock_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.stock_state, range, value, display)

  return offset + length, value
end

-- Symbol
tmx_tsxalpha_level1_qrtmd_v2_1.symbol = {}

-- Size: Symbol
tmx_tsxalpha_level1_qrtmd_v2_1.symbol.size = 12

-- Display: Symbol
tmx_tsxalpha_level1_qrtmd_v2_1.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
tmx_tsxalpha_level1_qrtmd_v2_1.symbol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsxalpha_level1_qrtmd_v2_1.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Name
tmx_tsxalpha_level1_qrtmd_v2_1.symbol_name = {}

-- Size: Symbol Name
tmx_tsxalpha_level1_qrtmd_v2_1.symbol_name.size = 40

-- Display: Symbol Name
tmx_tsxalpha_level1_qrtmd_v2_1.symbol_name.display = function(value)
  return "Symbol Name: "..value
end

-- Dissect: Symbol Name
tmx_tsxalpha_level1_qrtmd_v2_1.symbol_name.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.symbol_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsxalpha_level1_qrtmd_v2_1.symbol_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.symbol_name, range, value, display)

  return offset + length, value
end

-- Test Symbol
tmx_tsxalpha_level1_qrtmd_v2_1.test_symbol = {}

-- Size: Test Symbol
tmx_tsxalpha_level1_qrtmd_v2_1.test_symbol.size = 1

-- Display: Test Symbol
tmx_tsxalpha_level1_qrtmd_v2_1.test_symbol.labels = {
  ["Y"] = "Test Symbol: Yes (Y)",
  ["N"] = "Test Symbol: No (N)",
}

tmx_tsxalpha_level1_qrtmd_v2_1.test_symbol.display = function(value)
  return tmx_tsxalpha_level1_qrtmd_v2_1.test_symbol.labels[value] or "Test Symbol: Unknown("..value..")"
end

-- Dissect: Test Symbol
tmx_tsxalpha_level1_qrtmd_v2_1.test_symbol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.test_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsxalpha_level1_qrtmd_v2_1.test_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.test_symbol, range, value, display)

  return offset + length, value
end

-- Total Number Of Stock Groups
tmx_tsxalpha_level1_qrtmd_v2_1.total_number_of_stock_groups = {}

-- Size: Total Number Of Stock Groups
tmx_tsxalpha_level1_qrtmd_v2_1.total_number_of_stock_groups.size = 3

-- Display: Total Number Of Stock Groups
tmx_tsxalpha_level1_qrtmd_v2_1.total_number_of_stock_groups.display = function(value)
  return "Total Number Of Stock Groups: "..value
end

-- Dissect: Total Number Of Stock Groups
tmx_tsxalpha_level1_qrtmd_v2_1.total_number_of_stock_groups.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.total_number_of_stock_groups.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.total_number_of_stock_groups, range, value, "Total Number Of Stock Groups: Not Applicable")
    item:add_proto_expert_info(tmx_tsxalpha_level1_qrtmd_v2_1.experts.not_a_number, "Total Number Of Stock Groups is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsxalpha_level1_qrtmd_v2_1.total_number_of_stock_groups.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.total_number_of_stock_groups, range, value, display)

  return offset + length, value
end

-- Total Number Of Symbols
tmx_tsxalpha_level1_qrtmd_v2_1.total_number_of_symbols = {}

-- Size: Total Number Of Symbols
tmx_tsxalpha_level1_qrtmd_v2_1.total_number_of_symbols.size = 5

-- Display: Total Number Of Symbols
tmx_tsxalpha_level1_qrtmd_v2_1.total_number_of_symbols.display = function(value)
  return "Total Number Of Symbols: "..value
end

-- Dissect: Total Number Of Symbols
tmx_tsxalpha_level1_qrtmd_v2_1.total_number_of_symbols.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.total_number_of_symbols.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.total_number_of_symbols, range, value, "Total Number Of Symbols: Not Applicable")
    item:add_proto_expert_info(tmx_tsxalpha_level1_qrtmd_v2_1.experts.not_a_number, "Total Number Of Symbols is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsxalpha_level1_qrtmd_v2_1.total_number_of_symbols.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.total_number_of_symbols, range, value, display)

  return offset + length, value
end

-- Trade Id
tmx_tsxalpha_level1_qrtmd_v2_1.trade_id = {}

-- Size: Trade Id
tmx_tsxalpha_level1_qrtmd_v2_1.trade_id.size = 9

-- Display: Trade Id
tmx_tsxalpha_level1_qrtmd_v2_1.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
tmx_tsxalpha_level1_qrtmd_v2_1.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.trade_id.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.trade_id, range, value, "Trade Id: Not Applicable")
    item:add_proto_expert_info(tmx_tsxalpha_level1_qrtmd_v2_1.experts.not_a_number, "Trade Id is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsxalpha_level1_qrtmd_v2_1.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Price
tmx_tsxalpha_level1_qrtmd_v2_1.trade_price = {}

-- Size: Trade Price
tmx_tsxalpha_level1_qrtmd_v2_1.trade_price.size = 11

-- Display: Trade Price
tmx_tsxalpha_level1_qrtmd_v2_1.trade_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, tmx_tsxalpha_level1_qrtmd_v2_1.trade_price.size):string(), 5)

  if text == nil then
    return "Trade Price: "..tostring(value)
  end

  return "Trade Price: "..text
end

-- Dissect: Trade Price
tmx_tsxalpha_level1_qrtmd_v2_1.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.trade_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.trade_price, range, value, "Trade Price: Not Applicable")
    item:add_proto_expert_info(tmx_tsxalpha_level1_qrtmd_v2_1.experts.not_a_number, "Trade Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100000

  local display = tmx_tsxalpha_level1_qrtmd_v2_1.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Time Stamp
tmx_tsxalpha_level1_qrtmd_v2_1.trade_time_stamp = {}

-- Size: Trade Time Stamp
tmx_tsxalpha_level1_qrtmd_v2_1.trade_time_stamp.size = 6

-- Display: Trade Time Stamp
tmx_tsxalpha_level1_qrtmd_v2_1.trade_time_stamp.display = function(value)
  if #value < 6 then
    return "Trade Time Stamp: "..value
  end

  return "Trade Time Stamp: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Trade Time Stamp
tmx_tsxalpha_level1_qrtmd_v2_1.trade_time_stamp.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.trade_time_stamp.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsxalpha_level1_qrtmd_v2_1.trade_time_stamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.trade_time_stamp, range, value, display)

  return offset + length, value
end

-- Trading System Time Stamp
tmx_tsxalpha_level1_qrtmd_v2_1.trading_system_time_stamp = {}

-- Size: Trading System Time Stamp
tmx_tsxalpha_level1_qrtmd_v2_1.trading_system_time_stamp.size = 23

-- Display: Trading System Time Stamp
tmx_tsxalpha_level1_qrtmd_v2_1.trading_system_time_stamp.display = function(value)
  if #value < 23 then
    return "Trading System Time Stamp: "..value
  end

  return "Trading System Time Stamp: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8).." "..value:sub(9, 10)..":"..value:sub(11, 12)..":"..value:sub(13, 14).."."..value:sub(15, 23)
end

-- Dissect: Trading System Time Stamp
tmx_tsxalpha_level1_qrtmd_v2_1.trading_system_time_stamp.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.trading_system_time_stamp.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsxalpha_level1_qrtmd_v2_1.trading_system_time_stamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.trading_system_time_stamp, range, value, display)

  return offset + length, value
end

-- Trading Tier Id
tmx_tsxalpha_level1_qrtmd_v2_1.trading_tier_id = {}

-- Size: Trading Tier Id
tmx_tsxalpha_level1_qrtmd_v2_1.trading_tier_id.size = 6

-- Display: Trading Tier Id
tmx_tsxalpha_level1_qrtmd_v2_1.trading_tier_id.display = function(value)
  return "Trading Tier Id: "..value
end

-- Dissect: Trading Tier Id
tmx_tsxalpha_level1_qrtmd_v2_1.trading_tier_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.trading_tier_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsxalpha_level1_qrtmd_v2_1.trading_tier_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.trading_tier_id, range, value, display)

  return offset + length, value
end

-- Volume
tmx_tsxalpha_level1_qrtmd_v2_1.volume = {}

-- Size: Volume
tmx_tsxalpha_level1_qrtmd_v2_1.volume.size = 9

-- Display: Volume
tmx_tsxalpha_level1_qrtmd_v2_1.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
tmx_tsxalpha_level1_qrtmd_v2_1.volume.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_level1_qrtmd_v2_1.volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.volume, range, value, "Volume: Not Applicable")
    item:add_proto_expert_info(tmx_tsxalpha_level1_qrtmd_v2_1.experts.not_a_number, "Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsxalpha_level1_qrtmd_v2_1.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.volume, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Tmx TsxAlpha Level1 Qrtmd 2.1
-----------------------------------------------------------------------

-- Trade Correction Message
tmx_tsxalpha_level1_qrtmd_v2_1.trade_correction_message = {}

-- Size: Trade Correction Message
tmx_tsxalpha_level1_qrtmd_v2_1.trade_correction_message.size =
  tmx_tsxalpha_level1_qrtmd_v2_1.symbol.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.volume.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.trade_price.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.buyer_id.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.seller_id.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.trade_time_stamp.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.last_sale.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.trade_id.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.cross_type.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.bypass.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.opening_trade.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.settlement_terms.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.original_trade_id.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.is_dark.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.trading_system_time_stamp.size

-- Display: Trade Correction Message
tmx_tsxalpha_level1_qrtmd_v2_1.trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction Message
tmx_tsxalpha_level1_qrtmd_v2_1.trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alphanumeric
  index, symbol = tmx_tsxalpha_level1_qrtmd_v2_1.symbol.dissect(buffer, index, packet, parent)

  -- Volume: Numeric
  index, volume = tmx_tsxalpha_level1_qrtmd_v2_1.volume.dissect(buffer, index, packet, parent)

  -- Trade Price: Numeric
  index, trade_price = tmx_tsxalpha_level1_qrtmd_v2_1.trade_price.dissect(buffer, index, packet, parent)

  -- Buyer Id: Numeric
  index, buyer_id = tmx_tsxalpha_level1_qrtmd_v2_1.buyer_id.dissect(buffer, index, packet, parent)

  -- Seller Id: Numeric
  index, seller_id = tmx_tsxalpha_level1_qrtmd_v2_1.seller_id.dissect(buffer, index, packet, parent)

  -- Trade Time Stamp: Numeric
  index, trade_time_stamp = tmx_tsxalpha_level1_qrtmd_v2_1.trade_time_stamp.dissect(buffer, index, packet, parent)

  -- Last Sale: Numeric
  index, last_sale = tmx_tsxalpha_level1_qrtmd_v2_1.last_sale.dissect(buffer, index, packet, parent)

  -- Trade Id: Numeric
  index, trade_id = tmx_tsxalpha_level1_qrtmd_v2_1.trade_id.dissect(buffer, index, packet, parent)

  -- Cross Type: Alphanumeric
  index, cross_type = tmx_tsxalpha_level1_qrtmd_v2_1.cross_type.dissect(buffer, index, packet, parent)

  -- Bypass: Alphanumeric
  index, bypass = tmx_tsxalpha_level1_qrtmd_v2_1.bypass.dissect(buffer, index, packet, parent)

  -- Opening Trade: Alphanumeric
  index, opening_trade = tmx_tsxalpha_level1_qrtmd_v2_1.opening_trade.dissect(buffer, index, packet, parent)

  -- Settlement Terms: Alphanumeric
  index, settlement_terms = tmx_tsxalpha_level1_qrtmd_v2_1.settlement_terms.dissect(buffer, index, packet, parent)

  -- Original Trade Id: Numeric
  index, original_trade_id = tmx_tsxalpha_level1_qrtmd_v2_1.original_trade_id.dissect(buffer, index, packet, parent)

  -- Is Dark: Alphanumeric
  index, is_dark = tmx_tsxalpha_level1_qrtmd_v2_1.is_dark.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: Numeric
  index, trading_system_time_stamp = tmx_tsxalpha_level1_qrtmd_v2_1.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
tmx_tsxalpha_level1_qrtmd_v2_1.trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.trade_correction_message, buffer(offset, 0))
    local index = tmx_tsxalpha_level1_qrtmd_v2_1.trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsxalpha_level1_qrtmd_v2_1.trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsxalpha_level1_qrtmd_v2_1.trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Tier Status Message
tmx_tsxalpha_level1_qrtmd_v2_1.trading_tier_status_message = {}

-- Size: Trading Tier Status Message
tmx_tsxalpha_level1_qrtmd_v2_1.trading_tier_status_message.size =
  tmx_tsxalpha_level1_qrtmd_v2_1.exchange_id.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.total_number_of_symbols.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.total_number_of_stock_groups.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.trading_system_time_stamp.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.trading_tier_id.size

-- Display: Trading Tier Status Message
tmx_tsxalpha_level1_qrtmd_v2_1.trading_tier_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Tier Status Message
tmx_tsxalpha_level1_qrtmd_v2_1.trading_tier_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: Alphanumeric
  index, exchange_id = tmx_tsxalpha_level1_qrtmd_v2_1.exchange_id.dissect(buffer, index, packet, parent)

  -- Total Number Of Symbols: Numeric
  index, total_number_of_symbols = tmx_tsxalpha_level1_qrtmd_v2_1.total_number_of_symbols.dissect(buffer, index, packet, parent)

  -- Total Number Of Stock Groups: Numeric
  index, total_number_of_stock_groups = tmx_tsxalpha_level1_qrtmd_v2_1.total_number_of_stock_groups.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: Numeric
  index, trading_system_time_stamp = tmx_tsxalpha_level1_qrtmd_v2_1.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  -- Trading Tier Id: Alphanumeric
  index, trading_tier_id = tmx_tsxalpha_level1_qrtmd_v2_1.trading_tier_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Tier Status Message
tmx_tsxalpha_level1_qrtmd_v2_1.trading_tier_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.trading_tier_status_message, buffer(offset, 0))
    local index = tmx_tsxalpha_level1_qrtmd_v2_1.trading_tier_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsxalpha_level1_qrtmd_v2_1.trading_tier_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsxalpha_level1_qrtmd_v2_1.trading_tier_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Market State Message
tmx_tsxalpha_level1_qrtmd_v2_1.market_state_message = {}

-- Size: Market State Message
tmx_tsxalpha_level1_qrtmd_v2_1.market_state_message.size =
  tmx_tsxalpha_level1_qrtmd_v2_1.trading_system_time_stamp.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.stock_group.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.market_state.size

-- Display: Market State Message
tmx_tsxalpha_level1_qrtmd_v2_1.market_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market State Message
tmx_tsxalpha_level1_qrtmd_v2_1.market_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading System Time Stamp: Numeric
  index, trading_system_time_stamp = tmx_tsxalpha_level1_qrtmd_v2_1.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  -- Stock Group: Numeric
  index, stock_group = tmx_tsxalpha_level1_qrtmd_v2_1.stock_group.dissect(buffer, index, packet, parent)

  -- Market State: Alphanumeric
  index, market_state = tmx_tsxalpha_level1_qrtmd_v2_1.market_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market State Message
tmx_tsxalpha_level1_qrtmd_v2_1.market_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.market_state_message, buffer(offset, 0))
    local index = tmx_tsxalpha_level1_qrtmd_v2_1.market_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsxalpha_level1_qrtmd_v2_1.market_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsxalpha_level1_qrtmd_v2_1.market_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancellation Message
tmx_tsxalpha_level1_qrtmd_v2_1.trade_cancellation_message = {}

-- Size: Trade Cancellation Message
tmx_tsxalpha_level1_qrtmd_v2_1.trade_cancellation_message.size =
  tmx_tsxalpha_level1_qrtmd_v2_1.symbol.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.volume.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.trade_price.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.buyer_id.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.seller_id.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.trade_time_stamp.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.original_trade_id.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.last_sale.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.trading_system_time_stamp.size

-- Display: Trade Cancellation Message
tmx_tsxalpha_level1_qrtmd_v2_1.trade_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancellation Message
tmx_tsxalpha_level1_qrtmd_v2_1.trade_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alphanumeric
  index, symbol = tmx_tsxalpha_level1_qrtmd_v2_1.symbol.dissect(buffer, index, packet, parent)

  -- Volume: Numeric
  index, volume = tmx_tsxalpha_level1_qrtmd_v2_1.volume.dissect(buffer, index, packet, parent)

  -- Trade Price: Numeric
  index, trade_price = tmx_tsxalpha_level1_qrtmd_v2_1.trade_price.dissect(buffer, index, packet, parent)

  -- Buyer Id: Numeric
  index, buyer_id = tmx_tsxalpha_level1_qrtmd_v2_1.buyer_id.dissect(buffer, index, packet, parent)

  -- Seller Id: Numeric
  index, seller_id = tmx_tsxalpha_level1_qrtmd_v2_1.seller_id.dissect(buffer, index, packet, parent)

  -- Trade Time Stamp: Numeric
  index, trade_time_stamp = tmx_tsxalpha_level1_qrtmd_v2_1.trade_time_stamp.dissect(buffer, index, packet, parent)

  -- Original Trade Id: Numeric
  index, original_trade_id = tmx_tsxalpha_level1_qrtmd_v2_1.original_trade_id.dissect(buffer, index, packet, parent)

  -- Last Sale: Numeric
  index, last_sale = tmx_tsxalpha_level1_qrtmd_v2_1.last_sale.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: Numeric
  index, trading_system_time_stamp = tmx_tsxalpha_level1_qrtmd_v2_1.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancellation Message
tmx_tsxalpha_level1_qrtmd_v2_1.trade_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.trade_cancellation_message, buffer(offset, 0))
    local index = tmx_tsxalpha_level1_qrtmd_v2_1.trade_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsxalpha_level1_qrtmd_v2_1.trade_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsxalpha_level1_qrtmd_v2_1.trade_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- General Message
tmx_tsxalpha_level1_qrtmd_v2_1.general_message = {}

-- Size: General Message
tmx_tsxalpha_level1_qrtmd_v2_1.general_message.size =
  tmx_tsxalpha_level1_qrtmd_v2_1.trading_system_time_stamp.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.bulletin_indicator.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.message_text.size

-- Display: General Message
tmx_tsxalpha_level1_qrtmd_v2_1.general_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: General Message
tmx_tsxalpha_level1_qrtmd_v2_1.general_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading System Time Stamp: Numeric
  index, trading_system_time_stamp = tmx_tsxalpha_level1_qrtmd_v2_1.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  -- Bulletin Indicator: Alphanumeric
  index, bulletin_indicator = tmx_tsxalpha_level1_qrtmd_v2_1.bulletin_indicator.dissect(buffer, index, packet, parent)

  -- Message Text: Alphanumeric
  index, message_text = tmx_tsxalpha_level1_qrtmd_v2_1.message_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: General Message
tmx_tsxalpha_level1_qrtmd_v2_1.general_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.general_message, buffer(offset, 0))
    local index = tmx_tsxalpha_level1_qrtmd_v2_1.general_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsxalpha_level1_qrtmd_v2_1.general_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsxalpha_level1_qrtmd_v2_1.general_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Message
tmx_tsxalpha_level1_qrtmd_v2_1.quote_message = {}

-- Size: Quote Message
tmx_tsxalpha_level1_qrtmd_v2_1.quote_message.size =
  tmx_tsxalpha_level1_qrtmd_v2_1.symbol.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.bid_price.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.bid_size.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.ask_price.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.ask_size.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.trading_system_time_stamp.size

-- Display: Quote Message
tmx_tsxalpha_level1_qrtmd_v2_1.quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Message
tmx_tsxalpha_level1_qrtmd_v2_1.quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alphanumeric
  index, symbol = tmx_tsxalpha_level1_qrtmd_v2_1.symbol.dissect(buffer, index, packet, parent)

  -- Bid Price: Numeric
  index, bid_price = tmx_tsxalpha_level1_qrtmd_v2_1.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: Numeric
  index, bid_size = tmx_tsxalpha_level1_qrtmd_v2_1.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price: Numeric
  index, ask_price = tmx_tsxalpha_level1_qrtmd_v2_1.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Size: Numeric
  index, ask_size = tmx_tsxalpha_level1_qrtmd_v2_1.ask_size.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: Numeric
  index, trading_system_time_stamp = tmx_tsxalpha_level1_qrtmd_v2_1.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Message
tmx_tsxalpha_level1_qrtmd_v2_1.quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.quote_message, buffer(offset, 0))
    local index = tmx_tsxalpha_level1_qrtmd_v2_1.quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsxalpha_level1_qrtmd_v2_1.quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsxalpha_level1_qrtmd_v2_1.quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock State Message
tmx_tsxalpha_level1_qrtmd_v2_1.stock_state_message = {}

-- Size: Stock State Message
tmx_tsxalpha_level1_qrtmd_v2_1.stock_state_message.size =
  tmx_tsxalpha_level1_qrtmd_v2_1.symbol.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.trading_system_time_stamp.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.comment.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.stock_state.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.opening_time.size

-- Display: Stock State Message
tmx_tsxalpha_level1_qrtmd_v2_1.stock_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock State Message
tmx_tsxalpha_level1_qrtmd_v2_1.stock_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alphanumeric
  index, symbol = tmx_tsxalpha_level1_qrtmd_v2_1.symbol.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: Numeric
  index, trading_system_time_stamp = tmx_tsxalpha_level1_qrtmd_v2_1.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  -- Comment: Alphanumeric
  index, comment = tmx_tsxalpha_level1_qrtmd_v2_1.comment.dissect(buffer, index, packet, parent)

  -- Stock State: Alphanumeric
  index, stock_state = tmx_tsxalpha_level1_qrtmd_v2_1.stock_state.dissect(buffer, index, packet, parent)

  -- Opening Time: Numeric
  index, opening_time = tmx_tsxalpha_level1_qrtmd_v2_1.opening_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock State Message
tmx_tsxalpha_level1_qrtmd_v2_1.stock_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.stock_state_message, buffer(offset, 0))
    local index = tmx_tsxalpha_level1_qrtmd_v2_1.stock_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsxalpha_level1_qrtmd_v2_1.stock_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsxalpha_level1_qrtmd_v2_1.stock_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Status Message
tmx_tsxalpha_level1_qrtmd_v2_1.symbol_status_message = {}

-- Size: Symbol Status Message
tmx_tsxalpha_level1_qrtmd_v2_1.symbol_status_message.size =
  tmx_tsxalpha_level1_qrtmd_v2_1.symbol.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.trading_system_time_stamp.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.exchange_id.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.cusip.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.board_lot.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.currency.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.face_value.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.last_sale.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.product_type.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.symbol_name.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.stock_group.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.stock_state.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.listing_market.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.min_po_qty.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.test_symbol.size

-- Display: Symbol Status Message
tmx_tsxalpha_level1_qrtmd_v2_1.symbol_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Status Message
tmx_tsxalpha_level1_qrtmd_v2_1.symbol_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alphanumeric
  index, symbol = tmx_tsxalpha_level1_qrtmd_v2_1.symbol.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: Numeric
  index, trading_system_time_stamp = tmx_tsxalpha_level1_qrtmd_v2_1.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  -- Exchange Id: Alphanumeric
  index, exchange_id = tmx_tsxalpha_level1_qrtmd_v2_1.exchange_id.dissect(buffer, index, packet, parent)

  -- Cusip: Alphanumeric
  index, cusip = tmx_tsxalpha_level1_qrtmd_v2_1.cusip.dissect(buffer, index, packet, parent)

  -- Board Lot: Numeric
  index, board_lot = tmx_tsxalpha_level1_qrtmd_v2_1.board_lot.dissect(buffer, index, packet, parent)

  -- Currency: Alphanumeric
  index, currency = tmx_tsxalpha_level1_qrtmd_v2_1.currency.dissect(buffer, index, packet, parent)

  -- Face Value: Numeric
  index, face_value = tmx_tsxalpha_level1_qrtmd_v2_1.face_value.dissect(buffer, index, packet, parent)

  -- Last Sale: Numeric
  index, last_sale = tmx_tsxalpha_level1_qrtmd_v2_1.last_sale.dissect(buffer, index, packet, parent)

  -- Product Type: Alphanumeric
  index, product_type = tmx_tsxalpha_level1_qrtmd_v2_1.product_type.dissect(buffer, index, packet, parent)

  -- Symbol Name: Alphanumeric
  index, symbol_name = tmx_tsxalpha_level1_qrtmd_v2_1.symbol_name.dissect(buffer, index, packet, parent)

  -- Stock Group: Numeric
  index, stock_group = tmx_tsxalpha_level1_qrtmd_v2_1.stock_group.dissect(buffer, index, packet, parent)

  -- Stock State: Alphanumeric
  index, stock_state = tmx_tsxalpha_level1_qrtmd_v2_1.stock_state.dissect(buffer, index, packet, parent)

  -- Listing Market: Alphanumeric
  index, listing_market = tmx_tsxalpha_level1_qrtmd_v2_1.listing_market.dissect(buffer, index, packet, parent)

  -- Min Po Qty: Numeric
  index, min_po_qty = tmx_tsxalpha_level1_qrtmd_v2_1.min_po_qty.dissect(buffer, index, packet, parent)

  -- Test Symbol: Alphanumeric
  index, test_symbol = tmx_tsxalpha_level1_qrtmd_v2_1.test_symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Status Message
tmx_tsxalpha_level1_qrtmd_v2_1.symbol_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.symbol_status_message, buffer(offset, 0))
    local index = tmx_tsxalpha_level1_qrtmd_v2_1.symbol_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsxalpha_level1_qrtmd_v2_1.symbol_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsxalpha_level1_qrtmd_v2_1.symbol_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
tmx_tsxalpha_level1_qrtmd_v2_1.trade_message = {}

-- Size: Trade Message
tmx_tsxalpha_level1_qrtmd_v2_1.trade_message.size =
  tmx_tsxalpha_level1_qrtmd_v2_1.symbol.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.volume.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.trade_price.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.buyer_id.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.seller_id.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.trade_time_stamp.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.last_sale.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.trade_id.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.cross_type.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.bypass.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.opening_trade.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.settlement_terms.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.is_dark.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.trading_system_time_stamp.size

-- Display: Trade Message
tmx_tsxalpha_level1_qrtmd_v2_1.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
tmx_tsxalpha_level1_qrtmd_v2_1.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alphanumeric
  index, symbol = tmx_tsxalpha_level1_qrtmd_v2_1.symbol.dissect(buffer, index, packet, parent)

  -- Volume: Numeric
  index, volume = tmx_tsxalpha_level1_qrtmd_v2_1.volume.dissect(buffer, index, packet, parent)

  -- Trade Price: Numeric
  index, trade_price = tmx_tsxalpha_level1_qrtmd_v2_1.trade_price.dissect(buffer, index, packet, parent)

  -- Buyer Id: Numeric
  index, buyer_id = tmx_tsxalpha_level1_qrtmd_v2_1.buyer_id.dissect(buffer, index, packet, parent)

  -- Seller Id: Numeric
  index, seller_id = tmx_tsxalpha_level1_qrtmd_v2_1.seller_id.dissect(buffer, index, packet, parent)

  -- Trade Time Stamp: Numeric
  index, trade_time_stamp = tmx_tsxalpha_level1_qrtmd_v2_1.trade_time_stamp.dissect(buffer, index, packet, parent)

  -- Last Sale: Numeric
  index, last_sale = tmx_tsxalpha_level1_qrtmd_v2_1.last_sale.dissect(buffer, index, packet, parent)

  -- Trade Id: Numeric
  index, trade_id = tmx_tsxalpha_level1_qrtmd_v2_1.trade_id.dissect(buffer, index, packet, parent)

  -- Cross Type: Alphanumeric
  index, cross_type = tmx_tsxalpha_level1_qrtmd_v2_1.cross_type.dissect(buffer, index, packet, parent)

  -- Bypass: Alphanumeric
  index, bypass = tmx_tsxalpha_level1_qrtmd_v2_1.bypass.dissect(buffer, index, packet, parent)

  -- Opening Trade: Alphanumeric
  index, opening_trade = tmx_tsxalpha_level1_qrtmd_v2_1.opening_trade.dissect(buffer, index, packet, parent)

  -- Settlement Terms: Alphanumeric
  index, settlement_terms = tmx_tsxalpha_level1_qrtmd_v2_1.settlement_terms.dissect(buffer, index, packet, parent)

  -- Is Dark: Alphanumeric
  index, is_dark = tmx_tsxalpha_level1_qrtmd_v2_1.is_dark.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: Numeric
  index, trading_system_time_stamp = tmx_tsxalpha_level1_qrtmd_v2_1.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
tmx_tsxalpha_level1_qrtmd_v2_1.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.trade_message, buffer(offset, 0))
    local index = tmx_tsxalpha_level1_qrtmd_v2_1.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsxalpha_level1_qrtmd_v2_1.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsxalpha_level1_qrtmd_v2_1.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Body
tmx_tsxalpha_level1_qrtmd_v2_1.message_body = {}

-- Dissect: Message Body
tmx_tsxalpha_level1_qrtmd_v2_1.message_body.dispatch = {
  ["A"] = tmx_tsxalpha_level1_qrtmd_v2_1.trade_message.dissect,
  ["B"] = tmx_tsxalpha_level1_qrtmd_v2_1.symbol_status_message.dissect,
  ["D"] = tmx_tsxalpha_level1_qrtmd_v2_1.stock_state_message.dissect,
  ["E"] = tmx_tsxalpha_level1_qrtmd_v2_1.quote_message.dissect,
  ["G"] = tmx_tsxalpha_level1_qrtmd_v2_1.general_message.dissect,
  ["H"] = tmx_tsxalpha_level1_qrtmd_v2_1.trade_cancellation_message.dissect,
  ["S"] = tmx_tsxalpha_level1_qrtmd_v2_1.market_state_message.dissect,
  ["T"] = tmx_tsxalpha_level1_qrtmd_v2_1.trading_tier_status_message.dissect,
  ["X"] = tmx_tsxalpha_level1_qrtmd_v2_1.trade_correction_message.dissect,
}

tmx_tsxalpha_level1_qrtmd_v2_1.message_body.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = tmx_tsxalpha_level1_qrtmd_v2_1.message_body.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
tmx_tsxalpha_level1_qrtmd_v2_1.message_header = {}

-- Size: Message Header
tmx_tsxalpha_level1_qrtmd_v2_1.message_header.size =
  tmx_tsxalpha_level1_qrtmd_v2_1.message_length.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.sequence_number.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.service_identifier.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.retransmission_identifier.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.continuation_identifier.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.message_type.size + 
  tmx_tsxalpha_level1_qrtmd_v2_1.exchange_identifier.size

-- Display: Message Header
tmx_tsxalpha_level1_qrtmd_v2_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
tmx_tsxalpha_level1_qrtmd_v2_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: Numeric
  index, message_length = tmx_tsxalpha_level1_qrtmd_v2_1.message_length.dissect(buffer, index, packet, parent)

  -- Sequence Number: Numeric
  index, sequence_number = tmx_tsxalpha_level1_qrtmd_v2_1.sequence_number.dissect(buffer, index, packet, parent)

  -- Service Identifier: Alphanumeric
  index, service_identifier = tmx_tsxalpha_level1_qrtmd_v2_1.service_identifier.dissect(buffer, index, packet, parent)

  -- Retransmission Identifier: Alphanumeric
  index, retransmission_identifier = tmx_tsxalpha_level1_qrtmd_v2_1.retransmission_identifier.dissect(buffer, index, packet, parent)

  -- Continuation Identifier: Alphanumeric
  index, continuation_identifier = tmx_tsxalpha_level1_qrtmd_v2_1.continuation_identifier.dissect(buffer, index, packet, parent)

  -- Message Type: Alphanumeric
  index, message_type = tmx_tsxalpha_level1_qrtmd_v2_1.message_type.dissect(buffer, index, packet, parent)

  -- Exchange Identifier: Alphanumeric
  index, exchange_identifier = tmx_tsxalpha_level1_qrtmd_v2_1.exchange_identifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
tmx_tsxalpha_level1_qrtmd_v2_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1.fields.message_header, buffer(offset, 0))
    local index = tmx_tsxalpha_level1_qrtmd_v2_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsxalpha_level1_qrtmd_v2_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsxalpha_level1_qrtmd_v2_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
tmx_tsxalpha_level1_qrtmd_v2_1.packet = {}

-- Verify required size of Udp packet
tmx_tsxalpha_level1_qrtmd_v2_1.packet.requiredsize = function(buffer)
  return buffer:len() >= tmx_tsxalpha_level1_qrtmd_v2_1.qrtmd_stx.size + tmx_tsxalpha_level1_qrtmd_v2_1.message_header.size
end

-- Dissect Packet
tmx_tsxalpha_level1_qrtmd_v2_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Qrtmd Stx: character
  index, qrtmd_stx = tmx_tsxalpha_level1_qrtmd_v2_1.qrtmd_stx.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 7 fields
  index, message_header = tmx_tsxalpha_level1_qrtmd_v2_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = trim_right_spaces(buffer(index - 4, 2):string())

  -- Message Body: Runtime Type with 9 branches
  index = tmx_tsxalpha_level1_qrtmd_v2_1.message_body.dissect(buffer, index, packet, parent, message_type)

  -- Qrtmd Etx: character
  index, qrtmd_etx = tmx_tsxalpha_level1_qrtmd_v2_1.qrtmd_etx.dissect(buffer, index, packet, parent)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_tmx_tsxalpha_level1_qrtmd_v2_1.init()
end

-- Dissector for Tmx TsxAlpha Level1 Qrtmd 2.1
function omi_tmx_tsxalpha_level1_qrtmd_v2_1.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_tmx_tsxalpha_level1_qrtmd_v2_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_tmx_tsxalpha_level1_qrtmd_v2_1, buffer(), omi_tmx_tsxalpha_level1_qrtmd_v2_1.description, "("..buffer:len().." Bytes)")
  return tmx_tsxalpha_level1_qrtmd_v2_1.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Qrtmd Stx Field
tmx_tsxalpha_level1_qrtmd_v2_1.qrtmd_stx.verify = function(buffer)
  -- Too short to carry the field: not this protocol
  if buffer:len() < 0 + 1 then
    return false
  end

  -- Attempt to read field
  local value = buffer(0, 1):int()

  if value == 2 then
    return true
  end

  return false
end

-- Dissector Heuristic for Tmx TsxAlpha Level1 Qrtmd 2.1 (Udp)
local function omi_tmx_tsxalpha_level1_qrtmd_v2_1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not tmx_tsxalpha_level1_qrtmd_v2_1.packet.requiredsize(buffer) then return false end

  -- Verify Qrtmd Stx
  if not tmx_tsxalpha_level1_qrtmd_v2_1.qrtmd_stx.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_tmx_tsxalpha_level1_qrtmd_v2_1
  omi_tmx_tsxalpha_level1_qrtmd_v2_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Tmx TsxAlpha Level1 Qrtmd 2.1
omi_tmx_tsxalpha_level1_qrtmd_v2_1:register_heuristic("udp", omi_tmx_tsxalpha_level1_qrtmd_v2_1_udp_heuristic)

-- Register Tmx TsxAlpha Level1 Qrtmd 2.1 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_tmx_tsxalpha_level1_qrtmd_v2_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: TMX Group
--   Version: 2.1
--   Date: Tuesday, October 20, 2020
--   Specification: QRTMD Alpha Level 1 (2.1).pdf
--   Specification: QRTMD PSSAG (2.10).pdf
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
