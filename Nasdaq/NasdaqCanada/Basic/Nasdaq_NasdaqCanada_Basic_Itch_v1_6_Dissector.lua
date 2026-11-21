-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NasdaqCanada Basic Itch 1.6 Protocol
local omi_nasdaq_nasdaqcanada_basic_itch_v1_6 = Proto("Omi.Nasdaq.NasdaqCanada.Basic.Itch.v1.6", "Nasdaq NasdaqCanada Basic Itch 1.6")

-- Protocol table
local nasdaq_nasdaqcanada_basic_itch_v1_6 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NasdaqCanada Basic Itch 1.6 Fields
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.adjusted_closing_price = ProtoField.new("Adjusted Closing Price", "nasdaq.nasdaqcanada.basic.itch.v1.6.adjustedclosingprice", ftypes.DOUBLE, nil, nil, nil, "The previous trading day's official closing price adjusted for any applicable corporate actions.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.board_lot_size = ProtoField.new("Board Lot Size", "nasdaq.nasdaqcanada.basic.itch.v1.6.boardlotsize", ftypes.STRING, nil, nil, nil, "Denotes the Board Lot Size of the Symbol")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.broker = ProtoField.new("Broker", "nasdaq.nasdaqcanada.basic.itch.v1.6.broker", ftypes.STRING, nil, nil, nil, "The three digit numeric Broker Number of the buyer, or 001 for anonymous.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.consolidated_close_price = ProtoField.new("Consolidated Close Price", "nasdaq.nasdaqcanada.basic.itch.v1.6.consolidatedcloseprice", ftypes.DOUBLE, nil, nil, nil, "The final last sale eligible transaction on any participating exchange received on the trading day.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.consolidated_high_price = ProtoField.new("Consolidated High Price", "nasdaq.nasdaqcanada.basic.itch.v1.6.consolidatedhighprice", ftypes.DOUBLE, nil, nil, nil, "The highest price of any high/low eligible transaction on the trading day for any exchange.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.consolidated_low_price = ProtoField.new("Consolidated Low Price", "nasdaq.nasdaqcanada.basic.itch.v1.6.consolidatedlowprice", ftypes.DOUBLE, nil, nil, nil, "The lowest price of any high/low eligible transaction on the trading day for any exchange.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.consolidated_open_price = ProtoField.new("Consolidated Open Price", "nasdaq.nasdaqcanada.basic.itch.v1.6.consolidatedopenprice", ftypes.DOUBLE, nil, nil, nil, "The first last sale eligible transactions received on the trading day for any participating exchange.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.consolidated_trade_volume = ProtoField.new("Consolidated Trade Volume", "nasdaq.nasdaqcanada.basic.itch.v1.6.consolidatedtradevolume", ftypes.UINT64, nil, nil, nil, "Reflects the volume for the Stock Symbol as reported by each exchange at the time that the trade message was generated.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.consolidated_volume = ProtoField.new("Consolidated Volume", "nasdaq.nasdaqcanada.basic.itch.v1.6.consolidatedvolume", ftypes.UINT64, nil, nil, nil, "Reflects the sum of the total volume for the issue from all participating exchanges.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.contra_broker = ProtoField.new("Contra Broker", "nasdaq.nasdaqcanada.basic.itch.v1.6.contrabroker", ftypes.STRING, nil, nil, nil, "The three digit numeric Broker Number of the seller, or 001 for anonymous.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.corrected_trade_price = ProtoField.new("Corrected Trade Price", "nasdaq.nasdaqcanada.basic.itch.v1.6.correctedtradeprice", ftypes.DOUBLE, nil, nil, nil, "The price associated with the trade correction being reported.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.corrected_trade_size = ProtoField.new("Corrected Trade Size", "nasdaq.nasdaqcanada.basic.itch.v1.6.correctedtradesize", ftypes.UINT32, nil, nil, nil, "Indicates the reported number of shares on the trade correction.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.currency = ProtoField.new("Currency", "nasdaq.nasdaqcanada.basic.itch.v1.6.currency", ftypes.STRING, nil, nil, nil, "Denotes the Currency of the Symbol")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.event_code = ProtoField.new("Event Code", "nasdaq.nasdaqcanada.basic.itch.v1.6.eventcode", ftypes.STRING, nil, nil, nil, "Denotes the Nasdaq Canada market system event code.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.issue_symbol = ProtoField.new("Issue Symbol", "nasdaq.nasdaqcanada.basic.itch.v1.6.issuesymbol", ftypes.STRING, nil, nil, nil, "Denotes the security symbol for the issue in the Nasdaq execution system.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.listing_center_close_price = ProtoField.new("Listing Center Close Price", "nasdaq.nasdaqcanada.basic.itch.v1.6.listingcentercloseprice", ftypes.DOUBLE, nil, nil, nil, "The final last sale eligible transactions received on the trading day from the primary listing exchange.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.listing_center_open_price = ProtoField.new("Listing Center Open Price", "nasdaq.nasdaqcanada.basic.itch.v1.6.listingcenteropenprice", ftypes.DOUBLE, nil, nil, nil, "The first last sale eligible transactions received on the trading day from the primary listing exchange.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.listing_market = ProtoField.new("Listing Market", "nasdaq.nasdaqcanada.basic.itch.v1.6.listingmarket", ftypes.STRING, nil, nil, nil, "Indicates the primary listing market for the stock.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.market = ProtoField.new("Market", "nasdaq.nasdaqcanada.basic.itch.v1.6.market", ftypes.STRING, nil, nil, nil, "Denotes the Nasdaq Canada trading book that generated the message.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.message_count = ProtoField.new("Message Count", "nasdaq.nasdaqcanada.basic.itch.v1.6.messagecount", ftypes.UINT16, nil, nil, nil, "Number of messages to follow this header")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.message_length = ProtoField.new("Message Length", "nasdaq.nasdaqcanada.basic.itch.v1.6.messagelength", ftypes.UINT16, nil, nil, nil, "Length of data message not including this field")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.message_type = ProtoField.new("Message Type", "nasdaq.nasdaqcanada.basic.itch.v1.6.messagetype", ftypes.STRING, nil, nil, nil, "Code identifying this message type")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.nasdaq_canada_best_ask_price = ProtoField.new("Nasdaq Canada Best Ask Price", "nasdaq.nasdaqcanada.basic.itch.v1.6.nasdaqcanadabestaskprice", ftypes.DOUBLE, nil, nil, nil, "Denotes the best ask price across Nasdaq Canada Market Centers.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.nasdaq_canada_best_ask_size = ProtoField.new("Nasdaq Canada Best Ask Size", "nasdaq.nasdaqcanada.basic.itch.v1.6.nasdaqcanadabestasksize", ftypes.UINT32, nil, nil, nil, "Denotes the aggregated number of shares available for display within the Nasdaq Canada trading book(s) at the best ask price.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.nasdaq_canada_best_bid_price = ProtoField.new("Nasdaq Canada Best Bid Price", "nasdaq.nasdaqcanada.basic.itch.v1.6.nasdaqcanadabestbidprice", ftypes.DOUBLE, nil, nil, nil, "Denotes the best bid price across Nasdaq Canada Market Centers.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.nasdaq_canada_best_bid_size = ProtoField.new("Nasdaq Canada Best Bid Size", "nasdaq.nasdaqcanada.basic.itch.v1.6.nasdaqcanadabestbidsize", ftypes.UINT32, nil, nil, nil, "Denotes the aggregated number of shares available for display within the Nasdaq Canada trading book(s) at the best bid price.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.nasdaq_cx_2_best_ask_size = ProtoField.new("Nasdaq Cx 2 Best Ask Size", "nasdaq.nasdaqcanada.basic.itch.v1.6.nasdaqcx2bestasksize", ftypes.UINT32, nil, nil, nil, "Denotes the aggregated number of shares available for display within the Nasdaq CX2 trading book at the Nasdaq Canada best ask price.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.nasdaq_cx_2_best_bid_size = ProtoField.new("Nasdaq Cx 2 Best Bid Size", "nasdaq.nasdaqcanada.basic.itch.v1.6.nasdaqcx2bestbidsize", ftypes.UINT32, nil, nil, nil, "Denotes the aggregated number of shares available for display within the Nasdaq CX2 trading book at the Nasdaq Canada best bid price.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.nasdaq_cxc_best_ask_size = ProtoField.new("Nasdaq Cxc Best Ask Size", "nasdaq.nasdaqcanada.basic.itch.v1.6.nasdaqcxcbestasksize", ftypes.UINT32, nil, nil, nil, "Denotes the aggregated number of shares available for display within the Nasdaq CXC trading book at the Nasdaq Canada best ask price.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.nasdaq_cxc_best_bid_size = ProtoField.new("Nasdaq Cxc Best Bid Size", "nasdaq.nasdaqcanada.basic.itch.v1.6.nasdaqcxcbestbidsize", ftypes.UINT32, nil, nil, nil, "Denotes the aggregated number of shares available for display within the Nasdaq CXC trading book at the Nasdaq Canada best bid price.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.original_trade_number = ProtoField.new("Original Trade Number", "nasdaq.nasdaqcanada.basic.itch.v1.6.originaltradenumber", ftypes.UINT32, nil, nil, nil, "Indicates the source's internal number associated with the given trade transaction.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.original_trade_price = ProtoField.new("Original Trade Price", "nasdaq.nasdaqcanada.basic.itch.v1.6.originaltradeprice", ftypes.DOUBLE, nil, nil, nil, "The price associated with the original trade transaction.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.original_trade_size = ProtoField.new("Original Trade Size", "nasdaq.nasdaqcanada.basic.itch.v1.6.originaltradesize", ftypes.UINT32, nil, nil, nil, "Indicates the reported number of shares on the original trade transaction.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.originating_market_center_identifier = ProtoField.new("Originating Market Center Identifier", "nasdaq.nasdaqcanada.basic.itch.v1.6.originatingmarketcenteridentifier", ftypes.STRING, nil, nil, nil, "Denotes the Nasdaq Canada trading book that generated the trade message.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.sale_condition_modifier = ProtoField.new("Sale Condition Modifier", "nasdaq.nasdaqcanada.basic.itch.v1.6.saleconditionmodifier", ftypes.STRING, nil, nil, nil, "Sale condition modifier consists of four levels")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.sale_condition_modifier_level_1 = ProtoField.new("Sale Condition Modifier Level 1", "nasdaq.nasdaqcanada.basic.itch.v1.6.saleconditionmodifierlevel1", ftypes.STRING, nil, nil, nil, "Used for Trade Attribute Information")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.sales_condition_modifier_level_2 = ProtoField.new("Sales Condition Modifier Level 2", "nasdaq.nasdaqcanada.basic.itch.v1.6.salesconditionmodifierlevel2", ftypes.STRING, nil, nil, nil, "Used for Cross Type Information")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.sales_condition_modifier_level_3 = ProtoField.new("Sales Condition Modifier Level 3", "nasdaq.nasdaqcanada.basic.itch.v1.6.salesconditionmodifierlevel3", ftypes.STRING, nil, nil, nil, "Used for Settlement Terms Information")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.sales_condition_modifier_level_4 = ProtoField.new("Sales Condition Modifier Level 4", "nasdaq.nasdaqcanada.basic.itch.v1.6.salesconditionmodifierlevel4", ftypes.STRING, nil, nil, nil, "Used for Board Lot Eligibility Information")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.security_class = ProtoField.new("Security Class", "nasdaq.nasdaqcanada.basic.itch.v1.6.securityclass", ftypes.STRING, nil, nil, nil, "Indicates the primary listing market for the issue.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.nasdaqcanada.basic.itch.v1.6.sequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the first message to follow this header")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.session = ProtoField.new("Session", "nasdaq.nasdaqcanada.basic.itch.v1.6.session", ftypes.STRING, nil, nil, nil, "Identity of the multicast session")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.stock_display_name = ProtoField.new("Stock Display Name", "nasdaq.nasdaqcanada.basic.itch.v1.6.stockdisplayname", ftypes.STRING, nil, nil, nil, "1*40 Printable ASCII; no default")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.stock_symbol = ProtoField.new("Stock Symbol", "nasdaq.nasdaqcanada.basic.itch.v1.6.stocksymbol", ftypes.STRING, nil, nil, nil, "Denotes the Nasdaq Canada stock identifier for which the QBBO quotation message is being generated.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.system_status = ProtoField.new("System Status", "nasdaq.nasdaqcanada.basic.itch.v1.6.systemstatus", ftypes.STRING, nil, nil, nil, "Denotes whether the trading state of the Canada trading books is currently halted.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.time_stamp = ProtoField.new("Time Stamp", "nasdaq.nasdaqcanada.basic.itch.v1.6.timestamp", ftypes.UINT64, nil, nil, nil, "Denotes the time stamp of the Nasdaq Canada trading book that generated the quote message.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.trade_control_number = ProtoField.new("Trade Control Number", "nasdaq.nasdaqcanada.basic.itch.v1.6.tradecontrolnumber", ftypes.UINT32, nil, nil, nil, "Indicates the source's internal control number associated with the given trade transaction.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.trade_number = ProtoField.new("Trade Number", "nasdaq.nasdaqcanada.basic.itch.v1.6.tradenumber", ftypes.UINT32, nil, nil, nil, "Indicates the source's internal number associated with the given trade transaction.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.trade_price = ProtoField.new("Trade Price", "nasdaq.nasdaqcanada.basic.itch.v1.6.tradeprice", ftypes.DOUBLE, nil, nil, nil, "The price associated with the trade transaction being reported.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.trade_size = ProtoField.new("Trade Size", "nasdaq.nasdaqcanada.basic.itch.v1.6.tradesize", ftypes.UINT32, nil, nil, nil, "Indicates the reported number of shares on the trade transaction.")

-- Nasdaq NasdaqCanada Basic Itch 1.6 Framing
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.message = ProtoField.new("Message", "nasdaq.nasdaqcanada.basic.itch.v1.6.message", ftypes.STRING, nil, nil, nil, "Mold Udp64 Message")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.message_header = ProtoField.new("Message Header", "nasdaq.nasdaqcanada.basic.itch.v1.6.messageheader", ftypes.STRING, nil, nil, nil, "Mold Udp 64 Message Header")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.packet = ProtoField.new("Packet", "nasdaq.nasdaqcanada.basic.itch.v1.6.packet", ftypes.STRING, nil, nil, nil, "Itch Mold Udp 64 Packet")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.nasdaqcanada.basic.itch.v1.6.packetheader", ftypes.STRING, nil, nil, nil, "Itch Mold Udp 64 Packet Header")

-- Nasdaq NasdaqCanada Basic 1.6 Application Messages
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.adjusted_closing_price_message = ProtoField.new("Adjusted Closing Price Message", "nasdaq.nasdaqcanada.basic.itch.v1.6.adjustedclosingpricemessage", ftypes.STRING, nil, nil, nil, "Previous Day Adjusted Close Price, sent at 7:00AM to reflect any adjustments made overnight.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.end_of_day_trade_summary_message = ProtoField.new("End Of Day Trade Summary Message", "nasdaq.nasdaqcanada.basic.itch.v1.6.endofdaytradesummarymessage", ftypes.STRING, nil, nil, nil, "Published once at 4:15PM and again at 5:15PM, including all traded symbols from the day.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.quotation_message = ProtoField.new("Quotation Message", "nasdaq.nasdaqcanada.basic.itch.v1.6.quotationmessage", ftypes.STRING, nil, nil, nil, "Combined Quotation Report of the Nasdaq Canada best bid and offer, with size attributed to the CXC and CX2 trading books.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "nasdaq.nasdaqcanada.basic.itch.v1.6.stockdirectorymessage", ftypes.STRING, nil, nil, nil, "Disseminated at the start of each trading day for all active symbols in the Nasdaq Execution system.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.stock_status_message = ProtoField.new("Stock Status Message", "nasdaq.nasdaqcanada.basic.itch.v1.6.stockstatusmessage", ftypes.STRING, nil, nil, nil, "Indicates the current trading status of a stock.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nasdaqcanada.basic.itch.v1.6.systemeventmessage", ftypes.STRING, nil, nil, nil, "Issued to indicate a market state event.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.trade_break_message = ProtoField.new("Trade Break Message", "nasdaq.nasdaqcanada.basic.itch.v1.6.tradebreakmessage", ftypes.STRING, nil, nil, nil, "Sent if a Trade is cancelled during the same day as its execution.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "nasdaq.nasdaqcanada.basic.itch.v1.6.tradecorrectionmessage", ftypes.STRING, nil, nil, nil, "Sent if a Trade is corrected during the same day as its execution.")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.trade_report_message = ProtoField.new("Trade Report Message", "nasdaq.nasdaqcanada.basic.itch.v1.6.tradereportmessage", ftypes.STRING, nil, nil, nil, "Relays all transactions available from or reported by the three Nasdaq Canada Trading Books for the current business day.")

-- Nasdaq NasdaqCanada Basic 1.6 Session Messages
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.nasdaqcanada.basic.itch.v1.6.endofsession", ftypes.BYTES, nil, nil, nil, "Mold Udp64 end of session")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.heartbeat = ProtoField.new("Heartbeat", "nasdaq.nasdaqcanada.basic.itch.v1.6.heartbeat", ftypes.BYTES, nil, nil, nil, "Mold Udp64 heartbeat")

-- Nasdaq NasdaqCanada Basic Itch 1.6 Generated Fields
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.message_index = ProtoField.new("Message Index", "nasdaq.nasdaqcanada.basic.itch.v1.6.messageindex", ftypes.UINT16)
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "nasdaq.nasdaqcanada.basic.itch.v1.6.messagesequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Nasdaq NasdaqCanada Basic Itch 1.6 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "DateTime Local", 2 },
  { 4, "DateTime Utc", 3 },
  { 5, "DateTime America/New York", 4 }
}

-- 0=Raw, 1=Time of Day, 2=DateTime Local, 3=DateTime Utc, 4=DateTime Zone
nasdaq_nasdaqcanada_basic_itch_v1_6.timestamp_format = 3


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq NasdaqCanada Basic Itch 1.6 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true
show.sequences = true

-- Register Nasdaq NasdaqCanada Basic Itch 1.6 Show Options
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_nasdaq_nasdaqcanada_basic_itch_v1_6.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_nasdaq_nasdaqcanada_basic_itch_v1_6.prefs.timestamp_format = Pref.enum("Timestamp Format", 3, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_nasdaq_nasdaqcanada_basic_itch_v1_6.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_nasdaqcanada_basic_itch_v1_6.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_nasdaqcanada_basic_itch_v1_6.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_nasdaqcanada_basic_itch_v1_6.prefs.show_headers then
    show.headers = omi_nasdaq_nasdaqcanada_basic_itch_v1_6.prefs.show_headers
  end
  if show.structs ~= omi_nasdaq_nasdaqcanada_basic_itch_v1_6.prefs.show_structs then
    show.structs = omi_nasdaq_nasdaqcanada_basic_itch_v1_6.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_nasdaqcanada_basic_itch_v1_6.prefs.show_indexes then
    show.indexes = omi_nasdaq_nasdaqcanada_basic_itch_v1_6.prefs.show_indexes
  end
  if show.sequences ~= omi_nasdaq_nasdaqcanada_basic_itch_v1_6.prefs.show_sequences then
    show.sequences = omi_nasdaq_nasdaqcanada_basic_itch_v1_6.prefs.show_sequences
  end
  if nasdaq_nasdaqcanada_basic_itch_v1_6.timestamp_format ~= omi_nasdaq_nasdaqcanada_basic_itch_v1_6.prefs.timestamp_format then
    nasdaq_nasdaqcanada_basic_itch_v1_6.timestamp_format = omi_nasdaq_nasdaqcanada_basic_itch_v1_6.prefs.timestamp_format
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
-- Nasdaq NasdaqCanada Basic Itch 1.6 Fields
-----------------------------------------------------------------------

-- Adjusted Closing Price
nasdaq_nasdaqcanada_basic_itch_v1_6.adjusted_closing_price = {}

-- Size: Adjusted Closing Price
nasdaq_nasdaqcanada_basic_itch_v1_6.adjusted_closing_price.size = 8

-- Display: Adjusted Closing Price
nasdaq_nasdaqcanada_basic_itch_v1_6.adjusted_closing_price.display = function(value)
  return "Adjusted Closing Price: "..value
end

-- Translate: Adjusted Closing Price
nasdaq_nasdaqcanada_basic_itch_v1_6.adjusted_closing_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Adjusted Closing Price
nasdaq_nasdaqcanada_basic_itch_v1_6.adjusted_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.adjusted_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nasdaqcanada_basic_itch_v1_6.adjusted_closing_price.translate(raw)
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.adjusted_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.adjusted_closing_price, range, value, display)

  return offset + length, value
end

-- Board Lot Size
nasdaq_nasdaqcanada_basic_itch_v1_6.board_lot_size = {}

-- Size: Board Lot Size
nasdaq_nasdaqcanada_basic_itch_v1_6.board_lot_size.size = 4

-- Display: Board Lot Size
nasdaq_nasdaqcanada_basic_itch_v1_6.board_lot_size.display = function(value)
  return "Board Lot Size: "..value
end

-- Dissect: Board Lot Size
nasdaq_nasdaqcanada_basic_itch_v1_6.board_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.board_lot_size.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.board_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.board_lot_size, range, value, display)

  return offset + length, value
end

-- Broker
nasdaq_nasdaqcanada_basic_itch_v1_6.broker = {}

-- Size: Broker
nasdaq_nasdaqcanada_basic_itch_v1_6.broker.size = 3

-- Display: Broker
nasdaq_nasdaqcanada_basic_itch_v1_6.broker.display = function(value)
  return "Broker: "..value
end

-- Dissect: Broker
nasdaq_nasdaqcanada_basic_itch_v1_6.broker.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.broker.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.broker, range, value, display)

  return offset + length, value
end

-- Consolidated Close Price
nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_close_price = {}

-- Size: Consolidated Close Price
nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_close_price.size = 8

-- Display: Consolidated Close Price
nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_close_price.display = function(value)
  return "Consolidated Close Price: "..value
end

-- Translate: Consolidated Close Price
nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_close_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Consolidated Close Price
nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_close_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_close_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_close_price.translate(raw)
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.consolidated_close_price, range, value, display)

  return offset + length, value
end

-- Consolidated High Price
nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_high_price = {}

-- Size: Consolidated High Price
nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_high_price.size = 8

-- Display: Consolidated High Price
nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_high_price.display = function(value)
  return "Consolidated High Price: "..value
end

-- Translate: Consolidated High Price
nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_high_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Consolidated High Price
nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_high_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_high_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_high_price.translate(raw)
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.consolidated_high_price, range, value, display)

  return offset + length, value
end

-- Consolidated Low Price
nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_low_price = {}

-- Size: Consolidated Low Price
nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_low_price.size = 8

-- Display: Consolidated Low Price
nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_low_price.display = function(value)
  return "Consolidated Low Price: "..value
end

-- Translate: Consolidated Low Price
nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_low_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Consolidated Low Price
nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_low_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_low_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_low_price.translate(raw)
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.consolidated_low_price, range, value, display)

  return offset + length, value
end

-- Consolidated Open Price
nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_open_price = {}

-- Size: Consolidated Open Price
nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_open_price.size = 8

-- Display: Consolidated Open Price
nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_open_price.display = function(value)
  return "Consolidated Open Price: "..value
end

-- Translate: Consolidated Open Price
nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_open_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Consolidated Open Price
nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_open_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_open_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_open_price.translate(raw)
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.consolidated_open_price, range, value, display)

  return offset + length, value
end

-- Consolidated Trade Volume
nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_trade_volume = {}

-- Size: Consolidated Trade Volume
nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_trade_volume.size = 8

-- Display: Consolidated Trade Volume
nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_trade_volume.display = function(value)
  return "Consolidated Trade Volume: "..value
end

-- Dissect: Consolidated Trade Volume
nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_trade_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_trade_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_trade_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.consolidated_trade_volume, range, value, display)

  return offset + length, value
end

-- Consolidated Volume
nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_volume = {}

-- Size: Consolidated Volume
nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_volume.size = 8

-- Display: Consolidated Volume
nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_volume.display = function(value)
  return "Consolidated Volume: "..value
end

-- Dissect: Consolidated Volume
nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.consolidated_volume, range, value, display)

  return offset + length, value
end

-- Contra Broker
nasdaq_nasdaqcanada_basic_itch_v1_6.contra_broker = {}

-- Size: Contra Broker
nasdaq_nasdaqcanada_basic_itch_v1_6.contra_broker.size = 3

-- Display: Contra Broker
nasdaq_nasdaqcanada_basic_itch_v1_6.contra_broker.display = function(value)
  return "Contra Broker: "..value
end

-- Dissect: Contra Broker
nasdaq_nasdaqcanada_basic_itch_v1_6.contra_broker.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.contra_broker.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.contra_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.contra_broker, range, value, display)

  return offset + length, value
end

-- Corrected Trade Price
nasdaq_nasdaqcanada_basic_itch_v1_6.corrected_trade_price = {}

-- Size: Corrected Trade Price
nasdaq_nasdaqcanada_basic_itch_v1_6.corrected_trade_price.size = 8

-- Display: Corrected Trade Price
nasdaq_nasdaqcanada_basic_itch_v1_6.corrected_trade_price.display = function(value)
  return "Corrected Trade Price: "..value
end

-- Translate: Corrected Trade Price
nasdaq_nasdaqcanada_basic_itch_v1_6.corrected_trade_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Corrected Trade Price
nasdaq_nasdaqcanada_basic_itch_v1_6.corrected_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.corrected_trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nasdaqcanada_basic_itch_v1_6.corrected_trade_price.translate(raw)
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.corrected_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.corrected_trade_price, range, value, display)

  return offset + length, value
end

-- Corrected Trade Size
nasdaq_nasdaqcanada_basic_itch_v1_6.corrected_trade_size = {}

-- Size: Corrected Trade Size
nasdaq_nasdaqcanada_basic_itch_v1_6.corrected_trade_size.size = 4

-- Display: Corrected Trade Size
nasdaq_nasdaqcanada_basic_itch_v1_6.corrected_trade_size.display = function(value)
  return "Corrected Trade Size: "..value
end

-- Dissect: Corrected Trade Size
nasdaq_nasdaqcanada_basic_itch_v1_6.corrected_trade_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.corrected_trade_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.corrected_trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.corrected_trade_size, range, value, display)

  return offset + length, value
end

-- Currency
nasdaq_nasdaqcanada_basic_itch_v1_6.currency = {}

-- Size: Currency
nasdaq_nasdaqcanada_basic_itch_v1_6.currency.size = 1

-- Display: Currency
nasdaq_nasdaqcanada_basic_itch_v1_6.currency.labels = {
  ["U"] = "Currency: Usd (U)",
  ["C"] = "Currency: Cad (C)",
}

nasdaq_nasdaqcanada_basic_itch_v1_6.currency.display = function(value)
  return nasdaq_nasdaqcanada_basic_itch_v1_6.currency.labels[value] or "Currency: Unknown("..value..")"
end

-- Dissect: Currency
nasdaq_nasdaqcanada_basic_itch_v1_6.currency.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.currency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.currency, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_nasdaqcanada_basic_itch_v1_6.event_code = {}

-- Size: Event Code
nasdaq_nasdaqcanada_basic_itch_v1_6.event_code.size = 1

-- Display: Event Code
nasdaq_nasdaqcanada_basic_itch_v1_6.event_code.labels = {
  ["O"] = "Event Code: First Message Of The Day (O)",
  ["S"] = "Event Code: Start Of Nasdaq Canada Trading Session (S)",
  ["Q"] = "Event Code: Start Of Primary Market Trading Activity Session (Q)",
  ["M"] = "Event Code: End Of Primary Market Trading Session (M)",
  ["E"] = "Event Code: End Of Nasdaq Canada Trading Session (E)",
  ["C"] = "Event Code: End Of Messages (C)",
}

nasdaq_nasdaqcanada_basic_itch_v1_6.event_code.display = function(value)
  return nasdaq_nasdaqcanada_basic_itch_v1_6.event_code.labels[value] or "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_nasdaqcanada_basic_itch_v1_6.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.event_code, range, value, display)

  return offset + length, value
end

-- Issue Symbol
nasdaq_nasdaqcanada_basic_itch_v1_6.issue_symbol = {}

-- Size: Issue Symbol
nasdaq_nasdaqcanada_basic_itch_v1_6.issue_symbol.size = 10

-- Display: Issue Symbol
nasdaq_nasdaqcanada_basic_itch_v1_6.issue_symbol.display = function(value)
  return "Issue Symbol: "..value
end

-- Dissect: Issue Symbol
nasdaq_nasdaqcanada_basic_itch_v1_6.issue_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.issue_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.issue_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.issue_symbol, range, value, display)

  return offset + length, value
end

-- Listing Center Close Price
nasdaq_nasdaqcanada_basic_itch_v1_6.listing_center_close_price = {}

-- Size: Listing Center Close Price
nasdaq_nasdaqcanada_basic_itch_v1_6.listing_center_close_price.size = 8

-- Display: Listing Center Close Price
nasdaq_nasdaqcanada_basic_itch_v1_6.listing_center_close_price.display = function(value)
  return "Listing Center Close Price: "..value
end

-- Translate: Listing Center Close Price
nasdaq_nasdaqcanada_basic_itch_v1_6.listing_center_close_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Listing Center Close Price
nasdaq_nasdaqcanada_basic_itch_v1_6.listing_center_close_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.listing_center_close_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nasdaqcanada_basic_itch_v1_6.listing_center_close_price.translate(raw)
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.listing_center_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.listing_center_close_price, range, value, display)

  return offset + length, value
end

-- Listing Center Open Price
nasdaq_nasdaqcanada_basic_itch_v1_6.listing_center_open_price = {}

-- Size: Listing Center Open Price
nasdaq_nasdaqcanada_basic_itch_v1_6.listing_center_open_price.size = 8

-- Display: Listing Center Open Price
nasdaq_nasdaqcanada_basic_itch_v1_6.listing_center_open_price.display = function(value)
  return "Listing Center Open Price: "..value
end

-- Translate: Listing Center Open Price
nasdaq_nasdaqcanada_basic_itch_v1_6.listing_center_open_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Listing Center Open Price
nasdaq_nasdaqcanada_basic_itch_v1_6.listing_center_open_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.listing_center_open_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nasdaqcanada_basic_itch_v1_6.listing_center_open_price.translate(raw)
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.listing_center_open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.listing_center_open_price, range, value, display)

  return offset + length, value
end

-- Listing Market
nasdaq_nasdaqcanada_basic_itch_v1_6.listing_market = {}

-- Size: Listing Market
nasdaq_nasdaqcanada_basic_itch_v1_6.listing_market.size = 1

-- Display: Listing Market
nasdaq_nasdaqcanada_basic_itch_v1_6.listing_market.labels = {
  ["T"] = "Listing Market: The Tmx Senior Market (T)",
  ["C"] = "Listing Market: The Canadian Securities Exchange (C)",
  ["V"] = "Listing Market: The Tmx Venture Market (V)",
  ["N"] = "Listing Market: The Neo Exchange (N)",
}

nasdaq_nasdaqcanada_basic_itch_v1_6.listing_market.display = function(value)
  return nasdaq_nasdaqcanada_basic_itch_v1_6.listing_market.labels[value] or "Listing Market: Unknown("..value..")"
end

-- Dissect: Listing Market
nasdaq_nasdaqcanada_basic_itch_v1_6.listing_market.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.listing_market.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.listing_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.listing_market, range, value, display)

  return offset + length, value
end

-- Market
nasdaq_nasdaqcanada_basic_itch_v1_6.market = {}

-- Size: Market
nasdaq_nasdaqcanada_basic_itch_v1_6.market.size = 1

-- Display: Market
nasdaq_nasdaqcanada_basic_itch_v1_6.market.labels = {
  ["C"] = "Market: The Nasdaq Cxc Trading Book (C)",
  ["X"] = "Market: The Nasdaq Cx 2 Trading Book (X)",
  ["D"] = "Market: The Nasdaq Cxd Trading Book (D)",
  ["A"] = "Market: All Markets (A)",
}

nasdaq_nasdaqcanada_basic_itch_v1_6.market.display = function(value)
  return nasdaq_nasdaqcanada_basic_itch_v1_6.market.labels[value] or "Market: Unknown("..value..")"
end

-- Dissect: Market
nasdaq_nasdaqcanada_basic_itch_v1_6.market.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.market.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.market.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.market, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_nasdaqcanada_basic_itch_v1_6.message_count = {}

-- Size: Message Count
nasdaq_nasdaqcanada_basic_itch_v1_6.message_count.size = 2

-- Display: Message Count
nasdaq_nasdaqcanada_basic_itch_v1_6.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_nasdaqcanada_basic_itch_v1_6.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_nasdaqcanada_basic_itch_v1_6.message_length = {}

-- Size: Message Length
nasdaq_nasdaqcanada_basic_itch_v1_6.message_length.size = 2

-- Display: Message Length
nasdaq_nasdaqcanada_basic_itch_v1_6.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_nasdaqcanada_basic_itch_v1_6.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_nasdaqcanada_basic_itch_v1_6.message_type = {}

-- Size: Message Type
nasdaq_nasdaqcanada_basic_itch_v1_6.message_type.size = 1

-- Display: Message Type
nasdaq_nasdaqcanada_basic_itch_v1_6.message_type.labels = {
  ["C"] = "Message Type: Quotation Message (C)",
  ["T"] = "Message Type: Trade Report Message (T)",
  ["X"] = "Message Type: Trade Break Message (X)",
  ["Z"] = "Message Type: Trade Correction Message (Z)",
  ["S"] = "Message Type: System Event Message (S)",
  ["R"] = "Message Type: Stock Directory Message (R)",
  ["H"] = "Message Type: Stock Status Message (H)",
  ["D"] = "Message Type: End Of Day Trade Summary Message (D)",
  ["G"] = "Message Type: Adjusted Closing Price Message (G)",
}

nasdaq_nasdaqcanada_basic_itch_v1_6.message_type.display = function(value)
  return nasdaq_nasdaqcanada_basic_itch_v1_6.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_nasdaqcanada_basic_itch_v1_6.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.message_type, range, value, display)

  return offset + length, value
end

-- Nasdaq Canada Best Ask Price
nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_ask_price = {}

-- Size: Nasdaq Canada Best Ask Price
nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_ask_price.size = 8

-- Display: Nasdaq Canada Best Ask Price
nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_ask_price.display = function(value)
  return "Nasdaq Canada Best Ask Price: "..value
end

-- Translate: Nasdaq Canada Best Ask Price
nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_ask_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Nasdaq Canada Best Ask Price
nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_ask_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_ask_price.translate(raw)
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.nasdaq_canada_best_ask_price, range, value, display)

  return offset + length, value
end

-- Nasdaq Canada Best Ask Size
nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_ask_size = {}

-- Size: Nasdaq Canada Best Ask Size
nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_ask_size.size = 4

-- Display: Nasdaq Canada Best Ask Size
nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_ask_size.display = function(value)
  return "Nasdaq Canada Best Ask Size: "..value
end

-- Dissect: Nasdaq Canada Best Ask Size
nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_ask_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_ask_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.nasdaq_canada_best_ask_size, range, value, display)

  return offset + length, value
end

-- Nasdaq Canada Best Bid Price
nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_bid_price = {}

-- Size: Nasdaq Canada Best Bid Price
nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_bid_price.size = 8

-- Display: Nasdaq Canada Best Bid Price
nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_bid_price.display = function(value)
  return "Nasdaq Canada Best Bid Price: "..value
end

-- Translate: Nasdaq Canada Best Bid Price
nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_bid_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Nasdaq Canada Best Bid Price
nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_bid_price.translate(raw)
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.nasdaq_canada_best_bid_price, range, value, display)

  return offset + length, value
end

-- Nasdaq Canada Best Bid Size
nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_bid_size = {}

-- Size: Nasdaq Canada Best Bid Size
nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_bid_size.size = 4

-- Display: Nasdaq Canada Best Bid Size
nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_bid_size.display = function(value)
  return "Nasdaq Canada Best Bid Size: "..value
end

-- Dissect: Nasdaq Canada Best Bid Size
nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.nasdaq_canada_best_bid_size, range, value, display)

  return offset + length, value
end

-- Nasdaq Cx 2 Best Ask Size
nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_cx_2_best_ask_size = {}

-- Size: Nasdaq Cx 2 Best Ask Size
nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_cx_2_best_ask_size.size = 4

-- Display: Nasdaq Cx 2 Best Ask Size
nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_cx_2_best_ask_size.display = function(value)
  return "Nasdaq Cx 2 Best Ask Size: "..value
end

-- Dissect: Nasdaq Cx 2 Best Ask Size
nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_cx_2_best_ask_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_cx_2_best_ask_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_cx_2_best_ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.nasdaq_cx_2_best_ask_size, range, value, display)

  return offset + length, value
end

-- Nasdaq Cx 2 Best Bid Size
nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_cx_2_best_bid_size = {}

-- Size: Nasdaq Cx 2 Best Bid Size
nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_cx_2_best_bid_size.size = 4

-- Display: Nasdaq Cx 2 Best Bid Size
nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_cx_2_best_bid_size.display = function(value)
  return "Nasdaq Cx 2 Best Bid Size: "..value
end

-- Dissect: Nasdaq Cx 2 Best Bid Size
nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_cx_2_best_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_cx_2_best_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_cx_2_best_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.nasdaq_cx_2_best_bid_size, range, value, display)

  return offset + length, value
end

-- Nasdaq Cxc Best Ask Size
nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_cxc_best_ask_size = {}

-- Size: Nasdaq Cxc Best Ask Size
nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_cxc_best_ask_size.size = 4

-- Display: Nasdaq Cxc Best Ask Size
nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_cxc_best_ask_size.display = function(value)
  return "Nasdaq Cxc Best Ask Size: "..value
end

-- Dissect: Nasdaq Cxc Best Ask Size
nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_cxc_best_ask_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_cxc_best_ask_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_cxc_best_ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.nasdaq_cxc_best_ask_size, range, value, display)

  return offset + length, value
end

-- Nasdaq Cxc Best Bid Size
nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_cxc_best_bid_size = {}

-- Size: Nasdaq Cxc Best Bid Size
nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_cxc_best_bid_size.size = 4

-- Display: Nasdaq Cxc Best Bid Size
nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_cxc_best_bid_size.display = function(value)
  return "Nasdaq Cxc Best Bid Size: "..value
end

-- Dissect: Nasdaq Cxc Best Bid Size
nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_cxc_best_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_cxc_best_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_cxc_best_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.nasdaq_cxc_best_bid_size, range, value, display)

  return offset + length, value
end

-- Original Trade Number
nasdaq_nasdaqcanada_basic_itch_v1_6.original_trade_number = {}

-- Size: Original Trade Number
nasdaq_nasdaqcanada_basic_itch_v1_6.original_trade_number.size = 4

-- Display: Original Trade Number
nasdaq_nasdaqcanada_basic_itch_v1_6.original_trade_number.display = function(value)
  return "Original Trade Number: "..value
end

-- Dissect: Original Trade Number
nasdaq_nasdaqcanada_basic_itch_v1_6.original_trade_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.original_trade_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.original_trade_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.original_trade_number, range, value, display)

  return offset + length, value
end

-- Original Trade Price
nasdaq_nasdaqcanada_basic_itch_v1_6.original_trade_price = {}

-- Size: Original Trade Price
nasdaq_nasdaqcanada_basic_itch_v1_6.original_trade_price.size = 8

-- Display: Original Trade Price
nasdaq_nasdaqcanada_basic_itch_v1_6.original_trade_price.display = function(value)
  return "Original Trade Price: "..value
end

-- Translate: Original Trade Price
nasdaq_nasdaqcanada_basic_itch_v1_6.original_trade_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Original Trade Price
nasdaq_nasdaqcanada_basic_itch_v1_6.original_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.original_trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nasdaqcanada_basic_itch_v1_6.original_trade_price.translate(raw)
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.original_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.original_trade_price, range, value, display)

  return offset + length, value
end

-- Original Trade Size
nasdaq_nasdaqcanada_basic_itch_v1_6.original_trade_size = {}

-- Size: Original Trade Size
nasdaq_nasdaqcanada_basic_itch_v1_6.original_trade_size.size = 4

-- Display: Original Trade Size
nasdaq_nasdaqcanada_basic_itch_v1_6.original_trade_size.display = function(value)
  return "Original Trade Size: "..value
end

-- Dissect: Original Trade Size
nasdaq_nasdaqcanada_basic_itch_v1_6.original_trade_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.original_trade_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.original_trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.original_trade_size, range, value, display)

  return offset + length, value
end

-- Originating Market Center Identifier
nasdaq_nasdaqcanada_basic_itch_v1_6.originating_market_center_identifier = {}

-- Size: Originating Market Center Identifier
nasdaq_nasdaqcanada_basic_itch_v1_6.originating_market_center_identifier.size = 1

-- Display: Originating Market Center Identifier
nasdaq_nasdaqcanada_basic_itch_v1_6.originating_market_center_identifier.labels = {
  ["C"] = "Originating Market Center Identifier: The Nasdaq Cxc Trading Book (C)",
  ["X"] = "Originating Market Center Identifier: The Nasdaq Cx 2 Trading Book (X)",
  ["D"] = "Originating Market Center Identifier: The Nasdaq Cxd Trading Book (D)",
  ["A"] = "Originating Market Center Identifier: All Markets (A)",
}

nasdaq_nasdaqcanada_basic_itch_v1_6.originating_market_center_identifier.display = function(value)
  return nasdaq_nasdaqcanada_basic_itch_v1_6.originating_market_center_identifier.labels[value] or "Originating Market Center Identifier: Unknown("..value..")"
end

-- Dissect: Originating Market Center Identifier
nasdaq_nasdaqcanada_basic_itch_v1_6.originating_market_center_identifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.originating_market_center_identifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.originating_market_center_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.originating_market_center_identifier, range, value, display)

  return offset + length, value
end

-- Sale Condition Modifier Level 1
nasdaq_nasdaqcanada_basic_itch_v1_6.sale_condition_modifier_level_1 = {}

-- Size: Sale Condition Modifier Level 1
nasdaq_nasdaqcanada_basic_itch_v1_6.sale_condition_modifier_level_1.size = 1

-- Display: Sale Condition Modifier Level 1
nasdaq_nasdaqcanada_basic_itch_v1_6.sale_condition_modifier_level_1.display = function(value)
  if value == " " then
    return "Sale Condition Modifier Level 1: Regular Trade (<whitespace>)"
  end
  if value == "B" then
    return "Sale Condition Modifier Level 1: Bypass (B)"
  end
  if value == "L" then
    return "Sale Condition Modifier Level 1: M Elo (L)"
  end
  if value == "P" then
    return "Sale Condition Modifier Level 1: Cxd Pure Stream (P)"
  end

  return "Sale Condition Modifier Level 1: Unknown("..value..")"
end

-- Dissect: Sale Condition Modifier Level 1
nasdaq_nasdaqcanada_basic_itch_v1_6.sale_condition_modifier_level_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.sale_condition_modifier_level_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.sale_condition_modifier_level_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.sale_condition_modifier_level_1, range, value, display)

  return offset + length, value
end

-- Sales Condition Modifier Level 2
nasdaq_nasdaqcanada_basic_itch_v1_6.sales_condition_modifier_level_2 = {}

-- Size: Sales Condition Modifier Level 2
nasdaq_nasdaqcanada_basic_itch_v1_6.sales_condition_modifier_level_2.size = 1

-- Display: Sales Condition Modifier Level 2
nasdaq_nasdaqcanada_basic_itch_v1_6.sales_condition_modifier_level_2.display = function(value)
  if value == " " then
    return "Sales Condition Modifier Level 2: Regular (<whitespace>)"
  end
  if value == "I" then
    return "Sales Condition Modifier Level 2: Internal (I)"
  end
  if value == "B" then
    return "Sales Condition Modifier Level 2: Basis (B)"
  end
  if value == "C" then
    return "Sales Condition Modifier Level 2: Contingent (C)"
  end
  if value == "V" then
    return "Sales Condition Modifier Level 2: Vwap (V)"
  end
  if value == "X" then
    return "Sales Condition Modifier Level 2: Intentional (X)"
  end
  if value == "D" then
    return "Sales Condition Modifier Level 2: Derivative Related (D)"
  end

  return "Sales Condition Modifier Level 2: Unknown("..value..")"
end

-- Dissect: Sales Condition Modifier Level 2
nasdaq_nasdaqcanada_basic_itch_v1_6.sales_condition_modifier_level_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.sales_condition_modifier_level_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.sales_condition_modifier_level_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.sales_condition_modifier_level_2, range, value, display)

  return offset + length, value
end

-- Sales Condition Modifier Level 3
nasdaq_nasdaqcanada_basic_itch_v1_6.sales_condition_modifier_level_3 = {}

-- Size: Sales Condition Modifier Level 3
nasdaq_nasdaqcanada_basic_itch_v1_6.sales_condition_modifier_level_3.size = 1

-- Display: Sales Condition Modifier Level 3
nasdaq_nasdaqcanada_basic_itch_v1_6.sales_condition_modifier_level_3.display = function(value)
  if value == " " then
    return "Sales Condition Modifier Level 3: Regular (<whitespace>)"
  end
  if value == "T" then
    return "Sales Condition Modifier Level 3: Cash Today (T)"
  end
  if value == "C" then
    return "Sales Condition Modifier Level 3: Cash Tomorrow (C)"
  end
  if value == "D" then
    return "Sales Condition Modifier Level 3: Delayed Delivery (D)"
  end

  return "Sales Condition Modifier Level 3: Unknown("..value..")"
end

-- Dissect: Sales Condition Modifier Level 3
nasdaq_nasdaqcanada_basic_itch_v1_6.sales_condition_modifier_level_3.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.sales_condition_modifier_level_3.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.sales_condition_modifier_level_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.sales_condition_modifier_level_3, range, value, display)

  return offset + length, value
end

-- Sales Condition Modifier Level 4
nasdaq_nasdaqcanada_basic_itch_v1_6.sales_condition_modifier_level_4 = {}

-- Size: Sales Condition Modifier Level 4
nasdaq_nasdaqcanada_basic_itch_v1_6.sales_condition_modifier_level_4.size = 1

-- Display: Sales Condition Modifier Level 4
nasdaq_nasdaqcanada_basic_itch_v1_6.sales_condition_modifier_level_4.labels = {
  ["A"] = "Sales Condition Modifier Level 4: Odd Lot (A)",
  ["B"] = "Sales Condition Modifier Level 4: Board Lot Or Larger (B)",
}

nasdaq_nasdaqcanada_basic_itch_v1_6.sales_condition_modifier_level_4.display = function(value)
  return nasdaq_nasdaqcanada_basic_itch_v1_6.sales_condition_modifier_level_4.labels[value] or "Sales Condition Modifier Level 4: Unknown("..value..")"
end

-- Dissect: Sales Condition Modifier Level 4
nasdaq_nasdaqcanada_basic_itch_v1_6.sales_condition_modifier_level_4.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.sales_condition_modifier_level_4.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.sales_condition_modifier_level_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.sales_condition_modifier_level_4, range, value, display)

  return offset + length, value
end

-- Security Class
nasdaq_nasdaqcanada_basic_itch_v1_6.security_class = {}

-- Size: Security Class
nasdaq_nasdaqcanada_basic_itch_v1_6.security_class.size = 1

-- Display: Security Class
nasdaq_nasdaqcanada_basic_itch_v1_6.security_class.labels = {
  ["T"] = "Security Class: The Tmx Senior Market (T)",
  ["C"] = "Security Class: The Canadian Securities Exchange (C)",
  ["V"] = "Security Class: The Tmx Venture Market (V)",
  ["N"] = "Security Class: The Neo Exchange (N)",
}

nasdaq_nasdaqcanada_basic_itch_v1_6.security_class.display = function(value)
  return nasdaq_nasdaqcanada_basic_itch_v1_6.security_class.labels[value] or "Security Class: Unknown("..value..")"
end

-- Dissect: Security Class
nasdaq_nasdaqcanada_basic_itch_v1_6.security_class.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.security_class.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.security_class.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.security_class, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_nasdaqcanada_basic_itch_v1_6.sequence_number = {}

-- Size: Sequence Number
nasdaq_nasdaqcanada_basic_itch_v1_6.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_nasdaqcanada_basic_itch_v1_6.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_nasdaqcanada_basic_itch_v1_6.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_nasdaqcanada_basic_itch_v1_6.session = {}

-- Size: Session
nasdaq_nasdaqcanada_basic_itch_v1_6.session.size = 10

-- Display: Session
nasdaq_nasdaqcanada_basic_itch_v1_6.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_nasdaqcanada_basic_itch_v1_6.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.session.size
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

  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.session, range, value, display)

  return offset + length, value
end

-- Stock Display Name
nasdaq_nasdaqcanada_basic_itch_v1_6.stock_display_name = {}

-- Size: Stock Display Name
nasdaq_nasdaqcanada_basic_itch_v1_6.stock_display_name.size = 40

-- Display: Stock Display Name
nasdaq_nasdaqcanada_basic_itch_v1_6.stock_display_name.display = function(value)
  return "Stock Display Name: "..value
end

-- Dissect: Stock Display Name
nasdaq_nasdaqcanada_basic_itch_v1_6.stock_display_name.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.stock_display_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.stock_display_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.stock_display_name, range, value, display)

  return offset + length, value
end

-- Stock Symbol
nasdaq_nasdaqcanada_basic_itch_v1_6.stock_symbol = {}

-- Size: Stock Symbol
nasdaq_nasdaqcanada_basic_itch_v1_6.stock_symbol.size = 10

-- Display: Stock Symbol
nasdaq_nasdaqcanada_basic_itch_v1_6.stock_symbol.display = function(value)
  return "Stock Symbol: "..value
end

-- Dissect: Stock Symbol
nasdaq_nasdaqcanada_basic_itch_v1_6.stock_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.stock_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.stock_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.stock_symbol, range, value, display)

  return offset + length, value
end

-- System Status
nasdaq_nasdaqcanada_basic_itch_v1_6.system_status = {}

-- Size: System Status
nasdaq_nasdaqcanada_basic_itch_v1_6.system_status.size = 1

-- Display: System Status
nasdaq_nasdaqcanada_basic_itch_v1_6.system_status.labels = {
  ["H"] = "System Status: Halted (H)",
  ["T"] = "System Status: Trading (T)",
}

nasdaq_nasdaqcanada_basic_itch_v1_6.system_status.display = function(value)
  return nasdaq_nasdaqcanada_basic_itch_v1_6.system_status.labels[value] or "System Status: Unknown("..value..")"
end

-- Dissect: System Status
nasdaq_nasdaqcanada_basic_itch_v1_6.system_status.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.system_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.system_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.system_status, range, value, display)

  return offset + length, value
end

-- Time Stamp
nasdaq_nasdaqcanada_basic_itch_v1_6.time_stamp = {}

-- Size: Time Stamp
nasdaq_nasdaqcanada_basic_itch_v1_6.time_stamp.size = 8

-- Display: Time Stamp
nasdaq_nasdaqcanada_basic_itch_v1_6.time_stamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nasdaq_nasdaqcanada_basic_itch_v1_6.timestamp_format == 0 then
    return "Time Stamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (the day the frame that carried it settled on)
  if nasdaq_nasdaqcanada_basic_itch_v1_6.timestamp_format >= 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

    -- A frame a file handler read states no instant and reads as the epoch
    if capture_time >= 86400 then
      -- The venue's midnight: the frame's instant less the time of day it states
      local settled = math.floor((capture_time - seconds) / 900 + 0.5) * 900

      -- The zone's own date and clock, in the zone it keeps
      if nasdaq_nasdaqcanada_basic_itch_v1_6.timestamp_format == 4 then
        local day = math.floor(settled / 86400 + 0.5) * 86400

        return "Time Stamp: "..os.date("!%Y-%m-%d %H:%M:%S.", day + seconds)..string.format("%09d", nanoseconds).." America/New York"
      end

      local format = nasdaq_nasdaqcanada_basic_itch_v1_6.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
      return "Time Stamp: "..os.date(format, settled + seconds)..string.format("%09d", nanoseconds)
    end
  end

  -- Time of day mode
  return "Time Stamp: "..os.date("!%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Time Stamp
nasdaq_nasdaqcanada_basic_itch_v1_6.time_stamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.time_stamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.time_stamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.time_stamp, range, value, display)

  return offset + length, value
end

-- Trade Control Number
nasdaq_nasdaqcanada_basic_itch_v1_6.trade_control_number = {}

-- Size: Trade Control Number
nasdaq_nasdaqcanada_basic_itch_v1_6.trade_control_number.size = 4

-- Display: Trade Control Number
nasdaq_nasdaqcanada_basic_itch_v1_6.trade_control_number.display = function(value)
  return "Trade Control Number: "..value
end

-- Dissect: Trade Control Number
nasdaq_nasdaqcanada_basic_itch_v1_6.trade_control_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.trade_control_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.trade_control_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.trade_control_number, range, value, display)

  return offset + length, value
end

-- Trade Number
nasdaq_nasdaqcanada_basic_itch_v1_6.trade_number = {}

-- Size: Trade Number
nasdaq_nasdaqcanada_basic_itch_v1_6.trade_number.size = 4

-- Display: Trade Number
nasdaq_nasdaqcanada_basic_itch_v1_6.trade_number.display = function(value)
  return "Trade Number: "..value
end

-- Dissect: Trade Number
nasdaq_nasdaqcanada_basic_itch_v1_6.trade_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.trade_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.trade_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.trade_number, range, value, display)

  return offset + length, value
end

-- Trade Price
nasdaq_nasdaqcanada_basic_itch_v1_6.trade_price = {}

-- Size: Trade Price
nasdaq_nasdaqcanada_basic_itch_v1_6.trade_price.size = 8

-- Display: Trade Price
nasdaq_nasdaqcanada_basic_itch_v1_6.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
nasdaq_nasdaqcanada_basic_itch_v1_6.trade_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Trade Price
nasdaq_nasdaqcanada_basic_itch_v1_6.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nasdaqcanada_basic_itch_v1_6.trade_price.translate(raw)
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Size
nasdaq_nasdaqcanada_basic_itch_v1_6.trade_size = {}

-- Size: Trade Size
nasdaq_nasdaqcanada_basic_itch_v1_6.trade_size.size = 4

-- Display: Trade Size
nasdaq_nasdaqcanada_basic_itch_v1_6.trade_size.display = function(value)
  return "Trade Size: "..value
end

-- Dissect: Trade Size
nasdaq_nasdaqcanada_basic_itch_v1_6.trade_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_basic_itch_v1_6.trade_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.trade_size, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NasdaqCanada Basic Itch 1.6
-----------------------------------------------------------------------

-- Adjusted Closing Price Message
nasdaq_nasdaqcanada_basic_itch_v1_6.adjusted_closing_price_message = {}

-- Size: Adjusted Closing Price Message
nasdaq_nasdaqcanada_basic_itch_v1_6.adjusted_closing_price_message.size =
  nasdaq_nasdaqcanada_basic_itch_v1_6.time_stamp.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.issue_symbol.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.security_class.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.adjusted_closing_price.size

-- Display: Adjusted Closing Price Message
nasdaq_nasdaqcanada_basic_itch_v1_6.adjusted_closing_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Adjusted Closing Price Message
nasdaq_nasdaqcanada_basic_itch_v1_6.adjusted_closing_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Stamp: Integer
  index, time_stamp = nasdaq_nasdaqcanada_basic_itch_v1_6.time_stamp.dissect(buffer, index, packet, parent)

  -- Issue Symbol: Alphanumeric
  index, issue_symbol = nasdaq_nasdaqcanada_basic_itch_v1_6.issue_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: Alphanumeric
  index, security_class = nasdaq_nasdaqcanada_basic_itch_v1_6.security_class.dissect(buffer, index, packet, parent)

  -- Adjusted Closing Price: Price (8)
  index, adjusted_closing_price = nasdaq_nasdaqcanada_basic_itch_v1_6.adjusted_closing_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Adjusted Closing Price Message
nasdaq_nasdaqcanada_basic_itch_v1_6.adjusted_closing_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.adjusted_closing_price_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_basic_itch_v1_6.adjusted_closing_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_basic_itch_v1_6.adjusted_closing_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_basic_itch_v1_6.adjusted_closing_price_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Day Trade Summary Message
nasdaq_nasdaqcanada_basic_itch_v1_6.end_of_day_trade_summary_message = {}

-- Size: End Of Day Trade Summary Message
nasdaq_nasdaqcanada_basic_itch_v1_6.end_of_day_trade_summary_message.size =
  nasdaq_nasdaqcanada_basic_itch_v1_6.time_stamp.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.stock_symbol.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_high_price.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_low_price.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_open_price.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.listing_center_open_price.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_close_price.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.listing_center_close_price.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_volume.size

-- Display: End Of Day Trade Summary Message
nasdaq_nasdaqcanada_basic_itch_v1_6.end_of_day_trade_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Day Trade Summary Message
nasdaq_nasdaqcanada_basic_itch_v1_6.end_of_day_trade_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Stamp: Integer
  index, time_stamp = nasdaq_nasdaqcanada_basic_itch_v1_6.time_stamp.dissect(buffer, index, packet, parent)

  -- Stock Symbol: Alphanumeric
  index, stock_symbol = nasdaq_nasdaqcanada_basic_itch_v1_6.stock_symbol.dissect(buffer, index, packet, parent)

  -- Consolidated High Price: Price (8)
  index, consolidated_high_price = nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_high_price.dissect(buffer, index, packet, parent)

  -- Consolidated Low Price: Price (8)
  index, consolidated_low_price = nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_low_price.dissect(buffer, index, packet, parent)

  -- Consolidated Open Price: Price (8)
  index, consolidated_open_price = nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_open_price.dissect(buffer, index, packet, parent)

  -- Listing Center Open Price: Price (8)
  index, listing_center_open_price = nasdaq_nasdaqcanada_basic_itch_v1_6.listing_center_open_price.dissect(buffer, index, packet, parent)

  -- Consolidated Close Price: Price (8)
  index, consolidated_close_price = nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_close_price.dissect(buffer, index, packet, parent)

  -- Listing Center Close Price: Price (8)
  index, listing_center_close_price = nasdaq_nasdaqcanada_basic_itch_v1_6.listing_center_close_price.dissect(buffer, index, packet, parent)

  -- Consolidated Volume: Integer
  index, consolidated_volume = nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Trade Summary Message
nasdaq_nasdaqcanada_basic_itch_v1_6.end_of_day_trade_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.end_of_day_trade_summary_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_basic_itch_v1_6.end_of_day_trade_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_basic_itch_v1_6.end_of_day_trade_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_basic_itch_v1_6.end_of_day_trade_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Status Message
nasdaq_nasdaqcanada_basic_itch_v1_6.stock_status_message = {}

-- Size: Stock Status Message
nasdaq_nasdaqcanada_basic_itch_v1_6.stock_status_message.size =
  nasdaq_nasdaqcanada_basic_itch_v1_6.time_stamp.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.stock_symbol.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.market.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.system_status.size

-- Display: Stock Status Message
nasdaq_nasdaqcanada_basic_itch_v1_6.stock_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Status Message
nasdaq_nasdaqcanada_basic_itch_v1_6.stock_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Stamp: Integer
  index, time_stamp = nasdaq_nasdaqcanada_basic_itch_v1_6.time_stamp.dissect(buffer, index, packet, parent)

  -- Stock Symbol: Alphanumeric
  index, stock_symbol = nasdaq_nasdaqcanada_basic_itch_v1_6.stock_symbol.dissect(buffer, index, packet, parent)

  -- Market: Alphanumeric
  index, market = nasdaq_nasdaqcanada_basic_itch_v1_6.market.dissect(buffer, index, packet, parent)

  -- System Status: Alphanumeric
  index, system_status = nasdaq_nasdaqcanada_basic_itch_v1_6.system_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Status Message
nasdaq_nasdaqcanada_basic_itch_v1_6.stock_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.stock_status_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_basic_itch_v1_6.stock_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_basic_itch_v1_6.stock_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_basic_itch_v1_6.stock_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Directory Message
nasdaq_nasdaqcanada_basic_itch_v1_6.stock_directory_message = {}

-- Size: Stock Directory Message
nasdaq_nasdaqcanada_basic_itch_v1_6.stock_directory_message.size =
  nasdaq_nasdaqcanada_basic_itch_v1_6.time_stamp.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.stock_symbol.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.stock_display_name.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.listing_market.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.board_lot_size.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.currency.size

-- Display: Stock Directory Message
nasdaq_nasdaqcanada_basic_itch_v1_6.stock_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Directory Message
nasdaq_nasdaqcanada_basic_itch_v1_6.stock_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Stamp: Integer
  index, time_stamp = nasdaq_nasdaqcanada_basic_itch_v1_6.time_stamp.dissect(buffer, index, packet, parent)

  -- Stock Symbol: Alphanumeric
  index, stock_symbol = nasdaq_nasdaqcanada_basic_itch_v1_6.stock_symbol.dissect(buffer, index, packet, parent)

  -- Stock Display Name: Alphanumeric
  index, stock_display_name = nasdaq_nasdaqcanada_basic_itch_v1_6.stock_display_name.dissect(buffer, index, packet, parent)

  -- Listing Market: Alphanumeric
  index, listing_market = nasdaq_nasdaqcanada_basic_itch_v1_6.listing_market.dissect(buffer, index, packet, parent)

  -- Board Lot Size: Alphanumeric
  index, board_lot_size = nasdaq_nasdaqcanada_basic_itch_v1_6.board_lot_size.dissect(buffer, index, packet, parent)

  -- Currency: Alphanumeric
  index, currency = nasdaq_nasdaqcanada_basic_itch_v1_6.currency.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
nasdaq_nasdaqcanada_basic_itch_v1_6.stock_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.stock_directory_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_basic_itch_v1_6.stock_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_basic_itch_v1_6.stock_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_basic_itch_v1_6.stock_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_nasdaqcanada_basic_itch_v1_6.system_event_message = {}

-- Size: System Event Message
nasdaq_nasdaqcanada_basic_itch_v1_6.system_event_message.size =
  nasdaq_nasdaqcanada_basic_itch_v1_6.time_stamp.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.originating_market_center_identifier.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.event_code.size

-- Display: System Event Message
nasdaq_nasdaqcanada_basic_itch_v1_6.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nasdaqcanada_basic_itch_v1_6.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Stamp: Integer
  index, time_stamp = nasdaq_nasdaqcanada_basic_itch_v1_6.time_stamp.dissect(buffer, index, packet, parent)

  -- Originating Market Center Identifier: Alphanumeric
  index, originating_market_center_identifier = nasdaq_nasdaqcanada_basic_itch_v1_6.originating_market_center_identifier.dissect(buffer, index, packet, parent)

  -- Event Code: Alphanumeric
  index, event_code = nasdaq_nasdaqcanada_basic_itch_v1_6.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nasdaqcanada_basic_itch_v1_6.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_basic_itch_v1_6.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_basic_itch_v1_6.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_basic_itch_v1_6.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Correction Message
nasdaq_nasdaqcanada_basic_itch_v1_6.trade_correction_message = {}

-- Size: Trade Correction Message
nasdaq_nasdaqcanada_basic_itch_v1_6.trade_correction_message.size =
  nasdaq_nasdaqcanada_basic_itch_v1_6.time_stamp.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.originating_market_center_identifier.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.stock_symbol.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.original_trade_number.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.original_trade_price.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.original_trade_size.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.corrected_trade_price.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.corrected_trade_size.size

-- Display: Trade Correction Message
nasdaq_nasdaqcanada_basic_itch_v1_6.trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction Message
nasdaq_nasdaqcanada_basic_itch_v1_6.trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Stamp: Integer
  index, time_stamp = nasdaq_nasdaqcanada_basic_itch_v1_6.time_stamp.dissect(buffer, index, packet, parent)

  -- Originating Market Center Identifier: Alphanumeric
  index, originating_market_center_identifier = nasdaq_nasdaqcanada_basic_itch_v1_6.originating_market_center_identifier.dissect(buffer, index, packet, parent)

  -- Stock Symbol: Alphanumeric
  index, stock_symbol = nasdaq_nasdaqcanada_basic_itch_v1_6.stock_symbol.dissect(buffer, index, packet, parent)

  -- Original Trade Number: Integer
  index, original_trade_number = nasdaq_nasdaqcanada_basic_itch_v1_6.original_trade_number.dissect(buffer, index, packet, parent)

  -- Original Trade Price: Price (8)
  index, original_trade_price = nasdaq_nasdaqcanada_basic_itch_v1_6.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Trade Size: Integer
  index, original_trade_size = nasdaq_nasdaqcanada_basic_itch_v1_6.original_trade_size.dissect(buffer, index, packet, parent)

  -- Corrected Trade Price: Price (8)
  index, corrected_trade_price = nasdaq_nasdaqcanada_basic_itch_v1_6.corrected_trade_price.dissect(buffer, index, packet, parent)

  -- Corrected Trade Size: Integer
  index, corrected_trade_size = nasdaq_nasdaqcanada_basic_itch_v1_6.corrected_trade_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
nasdaq_nasdaqcanada_basic_itch_v1_6.trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.trade_correction_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_basic_itch_v1_6.trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_basic_itch_v1_6.trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_basic_itch_v1_6.trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Break Message
nasdaq_nasdaqcanada_basic_itch_v1_6.trade_break_message = {}

-- Size: Trade Break Message
nasdaq_nasdaqcanada_basic_itch_v1_6.trade_break_message.size =
  nasdaq_nasdaqcanada_basic_itch_v1_6.time_stamp.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.trade_control_number.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.originating_market_center_identifier.size

-- Display: Trade Break Message
nasdaq_nasdaqcanada_basic_itch_v1_6.trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
nasdaq_nasdaqcanada_basic_itch_v1_6.trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Stamp: Integer
  index, time_stamp = nasdaq_nasdaqcanada_basic_itch_v1_6.time_stamp.dissect(buffer, index, packet, parent)

  -- Trade Control Number: Integer
  index, trade_control_number = nasdaq_nasdaqcanada_basic_itch_v1_6.trade_control_number.dissect(buffer, index, packet, parent)

  -- Originating Market Center Identifier: Alphanumeric
  index, originating_market_center_identifier = nasdaq_nasdaqcanada_basic_itch_v1_6.originating_market_center_identifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
nasdaq_nasdaqcanada_basic_itch_v1_6.trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.trade_break_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_basic_itch_v1_6.trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_basic_itch_v1_6.trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_basic_itch_v1_6.trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Sale Condition Modifier
nasdaq_nasdaqcanada_basic_itch_v1_6.sale_condition_modifier = {}

-- Size: Sale Condition Modifier
nasdaq_nasdaqcanada_basic_itch_v1_6.sale_condition_modifier.size =
  nasdaq_nasdaqcanada_basic_itch_v1_6.sale_condition_modifier_level_1.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.sales_condition_modifier_level_2.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.sales_condition_modifier_level_3.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.sales_condition_modifier_level_4.size

-- Display: Sale Condition Modifier
nasdaq_nasdaqcanada_basic_itch_v1_6.sale_condition_modifier.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sale Condition Modifier
nasdaq_nasdaqcanada_basic_itch_v1_6.sale_condition_modifier.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sale Condition Modifier Level 1: Alphanumeric
  index, sale_condition_modifier_level_1 = nasdaq_nasdaqcanada_basic_itch_v1_6.sale_condition_modifier_level_1.dissect(buffer, index, packet, parent)

  -- Sales Condition Modifier Level 2: Alphanumeric
  index, sales_condition_modifier_level_2 = nasdaq_nasdaqcanada_basic_itch_v1_6.sales_condition_modifier_level_2.dissect(buffer, index, packet, parent)

  -- Sales Condition Modifier Level 3: Alphanumeric
  index, sales_condition_modifier_level_3 = nasdaq_nasdaqcanada_basic_itch_v1_6.sales_condition_modifier_level_3.dissect(buffer, index, packet, parent)

  -- Sales Condition Modifier Level 4: Alphanumeric
  index, sales_condition_modifier_level_4 = nasdaq_nasdaqcanada_basic_itch_v1_6.sales_condition_modifier_level_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sale Condition Modifier
nasdaq_nasdaqcanada_basic_itch_v1_6.sale_condition_modifier.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.sale_condition_modifier, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_basic_itch_v1_6.sale_condition_modifier.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_basic_itch_v1_6.sale_condition_modifier.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_basic_itch_v1_6.sale_condition_modifier.fields(buffer, offset, packet, parent)
  end
end

-- Trade Report Message
nasdaq_nasdaqcanada_basic_itch_v1_6.trade_report_message = {}

-- Size: Trade Report Message
nasdaq_nasdaqcanada_basic_itch_v1_6.trade_report_message.size =
  nasdaq_nasdaqcanada_basic_itch_v1_6.time_stamp.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.originating_market_center_identifier.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.stock_symbol.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.trade_number.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.trade_price.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.trade_size.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.broker.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.contra_broker.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.sale_condition_modifier.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_trade_volume.size

-- Display: Trade Report Message
nasdaq_nasdaqcanada_basic_itch_v1_6.trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Message
nasdaq_nasdaqcanada_basic_itch_v1_6.trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Stamp: Integer
  index, time_stamp = nasdaq_nasdaqcanada_basic_itch_v1_6.time_stamp.dissect(buffer, index, packet, parent)

  -- Originating Market Center Identifier: Alphanumeric
  index, originating_market_center_identifier = nasdaq_nasdaqcanada_basic_itch_v1_6.originating_market_center_identifier.dissect(buffer, index, packet, parent)

  -- Stock Symbol: Alphanumeric
  index, stock_symbol = nasdaq_nasdaqcanada_basic_itch_v1_6.stock_symbol.dissect(buffer, index, packet, parent)

  -- Trade Number: Integer
  index, trade_number = nasdaq_nasdaqcanada_basic_itch_v1_6.trade_number.dissect(buffer, index, packet, parent)

  -- Trade Price: Price (8)
  index, trade_price = nasdaq_nasdaqcanada_basic_itch_v1_6.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Size: Integer
  index, trade_size = nasdaq_nasdaqcanada_basic_itch_v1_6.trade_size.dissect(buffer, index, packet, parent)

  -- Broker: Alphanumeric
  index, broker = nasdaq_nasdaqcanada_basic_itch_v1_6.broker.dissect(buffer, index, packet, parent)

  -- Contra Broker: Alphanumeric
  index, contra_broker = nasdaq_nasdaqcanada_basic_itch_v1_6.contra_broker.dissect(buffer, index, packet, parent)

  -- Sale Condition Modifier: Struct of 4 fields
  index, sale_condition_modifier = nasdaq_nasdaqcanada_basic_itch_v1_6.sale_condition_modifier.dissect(buffer, index, packet, parent)

  -- Consolidated Trade Volume: Integer
  index, consolidated_trade_volume = nasdaq_nasdaqcanada_basic_itch_v1_6.consolidated_trade_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message
nasdaq_nasdaqcanada_basic_itch_v1_6.trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.trade_report_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_basic_itch_v1_6.trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_basic_itch_v1_6.trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_basic_itch_v1_6.trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Quotation Message
nasdaq_nasdaqcanada_basic_itch_v1_6.quotation_message = {}

-- Size: Quotation Message
nasdaq_nasdaqcanada_basic_itch_v1_6.quotation_message.size =
  nasdaq_nasdaqcanada_basic_itch_v1_6.time_stamp.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.stock_symbol.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_bid_price.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_bid_size.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_cxc_best_bid_size.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_cx_2_best_bid_size.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_ask_price.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_ask_size.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_cxc_best_ask_size.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_cx_2_best_ask_size.size

-- Display: Quotation Message
nasdaq_nasdaqcanada_basic_itch_v1_6.quotation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quotation Message
nasdaq_nasdaqcanada_basic_itch_v1_6.quotation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Stamp: Integer
  index, time_stamp = nasdaq_nasdaqcanada_basic_itch_v1_6.time_stamp.dissect(buffer, index, packet, parent)

  -- Stock Symbol: Alphanumeric
  index, stock_symbol = nasdaq_nasdaqcanada_basic_itch_v1_6.stock_symbol.dissect(buffer, index, packet, parent)

  -- Nasdaq Canada Best Bid Price: Price (8)
  index, nasdaq_canada_best_bid_price = nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_bid_price.dissect(buffer, index, packet, parent)

  -- Nasdaq Canada Best Bid Size: Integer
  index, nasdaq_canada_best_bid_size = nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_bid_size.dissect(buffer, index, packet, parent)

  -- Nasdaq Cxc Best Bid Size: Integer
  index, nasdaq_cxc_best_bid_size = nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_cxc_best_bid_size.dissect(buffer, index, packet, parent)

  -- Nasdaq Cx 2 Best Bid Size: Integer
  index, nasdaq_cx_2_best_bid_size = nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_cx_2_best_bid_size.dissect(buffer, index, packet, parent)

  -- Nasdaq Canada Best Ask Price: Price (8)
  index, nasdaq_canada_best_ask_price = nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_ask_price.dissect(buffer, index, packet, parent)

  -- Nasdaq Canada Best Ask Size: Integer
  index, nasdaq_canada_best_ask_size = nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_canada_best_ask_size.dissect(buffer, index, packet, parent)

  -- Nasdaq Cxc Best Ask Size: Integer
  index, nasdaq_cxc_best_ask_size = nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_cxc_best_ask_size.dissect(buffer, index, packet, parent)

  -- Nasdaq Cx 2 Best Ask Size: Integer
  index, nasdaq_cx_2_best_ask_size = nasdaq_nasdaqcanada_basic_itch_v1_6.nasdaq_cx_2_best_ask_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quotation Message
nasdaq_nasdaqcanada_basic_itch_v1_6.quotation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.quotation_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_basic_itch_v1_6.quotation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_basic_itch_v1_6.quotation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_basic_itch_v1_6.quotation_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_nasdaqcanada_basic_itch_v1_6.payload = {}

-- Dispatch: Payload
nasdaq_nasdaqcanada_basic_itch_v1_6.payload.dispatch = {
  ["C"] = nasdaq_nasdaqcanada_basic_itch_v1_6.quotation_message.dissect,
  ["T"] = nasdaq_nasdaqcanada_basic_itch_v1_6.trade_report_message.dissect,
  ["X"] = nasdaq_nasdaqcanada_basic_itch_v1_6.trade_break_message.dissect,
  ["Z"] = nasdaq_nasdaqcanada_basic_itch_v1_6.trade_correction_message.dissect,
  ["S"] = nasdaq_nasdaqcanada_basic_itch_v1_6.system_event_message.dissect,
  ["R"] = nasdaq_nasdaqcanada_basic_itch_v1_6.stock_directory_message.dissect,
  ["H"] = nasdaq_nasdaqcanada_basic_itch_v1_6.stock_status_message.dissect,
  ["D"] = nasdaq_nasdaqcanada_basic_itch_v1_6.end_of_day_trade_summary_message.dissect,
  ["G"] = nasdaq_nasdaqcanada_basic_itch_v1_6.adjusted_closing_price_message.dissect,
}

-- Dissect: Payload
nasdaq_nasdaqcanada_basic_itch_v1_6.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = nasdaq_nasdaqcanada_basic_itch_v1_6.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_nasdaqcanada_basic_itch_v1_6.message_header = {}

-- Size: Message Header
nasdaq_nasdaqcanada_basic_itch_v1_6.message_header.size =
  nasdaq_nasdaqcanada_basic_itch_v1_6.message_length.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.message_type.size

-- Display: Message Header
nasdaq_nasdaqcanada_basic_itch_v1_6.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_nasdaqcanada_basic_itch_v1_6.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_nasdaqcanada_basic_itch_v1_6.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 9 values
  index, message_type = nasdaq_nasdaqcanada_basic_itch_v1_6.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_nasdaqcanada_basic_itch_v1_6.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.message_header, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_basic_itch_v1_6.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_basic_itch_v1_6.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_basic_itch_v1_6.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_nasdaqcanada_basic_itch_v1_6.message = {}

-- Read runtime size of: Message
nasdaq_nasdaqcanada_basic_itch_v1_6.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_nasdaqcanada_basic_itch_v1_6.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_nasdaqcanada_basic_itch_v1_6.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and nasdaq_nasdaqcanada_basic_itch_v1_6.packet_sequence ~= nil then
    local sequence = parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.message_sequence_number, UInt64.new(nasdaq_nasdaqcanada_basic_itch_v1_6.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_nasdaqcanada_basic_itch_v1_6.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 9 branches
  index = nasdaq_nasdaqcanada_basic_itch_v1_6.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_nasdaqcanada_basic_itch_v1_6.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_nasdaqcanada_basic_itch_v1_6.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.message, buffer(offset, 0))
    local current = nasdaq_nasdaqcanada_basic_itch_v1_6.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_nasdaqcanada_basic_itch_v1_6.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nasdaqcanada_basic_itch_v1_6.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
nasdaq_nasdaqcanada_basic_itch_v1_6.end_of_session = {}

-- Display: End Of Session
nasdaq_nasdaqcanada_basic_itch_v1_6.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_nasdaqcanada_basic_itch_v1_6.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
nasdaq_nasdaqcanada_basic_itch_v1_6.heartbeat = {}

-- Display: Heartbeat
nasdaq_nasdaqcanada_basic_itch_v1_6.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nasdaq_nasdaqcanada_basic_itch_v1_6.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nasdaqcanada_basic_itch_v1_6.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nasdaq_nasdaqcanada_basic_itch_v1_6.messages = {}

-- Dispatch: Messages
nasdaq_nasdaqcanada_basic_itch_v1_6.messages.dispatch = {
  [0] = nasdaq_nasdaqcanada_basic_itch_v1_6.heartbeat.dissect,
  [65535] = nasdaq_nasdaqcanada_basic_itch_v1_6.end_of_session.dissect,
}

-- Dissect: Messages
nasdaq_nasdaqcanada_basic_itch_v1_6.messages.dissect = function(buffer, offset, packet, parent, message_count)
  local dissect = nasdaq_nasdaqcanada_basic_itch_v1_6.messages.dispatch[message_count]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_nasdaqcanada_basic_itch_v1_6.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
nasdaq_nasdaqcanada_basic_itch_v1_6.packet_header = {}

-- Size: Packet Header
nasdaq_nasdaqcanada_basic_itch_v1_6.packet_header.size =
  nasdaq_nasdaqcanada_basic_itch_v1_6.session.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.sequence_number.size + 
  nasdaq_nasdaqcanada_basic_itch_v1_6.message_count.size

-- Display: Packet Header
nasdaq_nasdaqcanada_basic_itch_v1_6.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_nasdaqcanada_basic_itch_v1_6.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_nasdaqcanada_basic_itch_v1_6.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_nasdaqcanada_basic_itch_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_nasdaqcanada_basic_itch_v1_6.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  nasdaq_nasdaqcanada_basic_itch_v1_6.packet_sequence = sequence_number

  return index
end

-- Dissect: Packet Header
nasdaq_nasdaqcanada_basic_itch_v1_6.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_basic_itch_v1_6.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_basic_itch_v1_6.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_basic_itch_v1_6.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_nasdaqcanada_basic_itch_v1_6.packet = {}

-- Verify required size of Udp packet
nasdaq_nasdaqcanada_basic_itch_v1_6.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nasdaqcanada_basic_itch_v1_6.packet_header.size
end

-- Dissect Packet
nasdaq_nasdaqcanada_basic_itch_v1_6.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_nasdaqcanada_basic_itch_v1_6.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_nasdaqcanada_basic_itch_v1_6.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_nasdaqcanada_basic_itch_v1_6.init()
end

-- Dissector for Nasdaq NasdaqCanada Basic Itch 1.6
function omi_nasdaq_nasdaqcanada_basic_itch_v1_6.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nasdaqcanada_basic_itch_v1_6.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_nasdaqcanada_basic_itch_v1_6, buffer(), omi_nasdaq_nasdaqcanada_basic_itch_v1_6.description, "("..buffer:len().." Bytes)")
  return nasdaq_nasdaqcanada_basic_itch_v1_6.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq NasdaqCanada Basic Itch 1.6 (Udp)
local function omi_nasdaq_nasdaqcanada_basic_itch_v1_6_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nasdaqcanada_basic_itch_v1_6.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nasdaqcanada_basic_itch_v1_6
  omi_nasdaq_nasdaqcanada_basic_itch_v1_6.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq NasdaqCanada Basic Itch 1.6
omi_nasdaq_nasdaqcanada_basic_itch_v1_6:register_heuristic("udp", omi_nasdaq_nasdaqcanada_basic_itch_v1_6_udp_heuristic)

-- Register Nasdaq NasdaqCanada Basic Itch 1.6 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nasdaq_nasdaqcanada_basic_itch_v1_6)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 1.6
--   Date: Friday, August 16, 2024
--   Specification: Nasdaq_Basic_Canada_Specification_1.6.pdf
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
--   https://patents.google.com/patent/US12101388B2/en
--   https://patents.google.com/patent/US20240419416A1/en
--   https://patents.google.com/patent/US20260368281A1/en
--
-----------------------------------------------------------------------
