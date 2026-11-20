-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nse NseIx MtbtNdal Tbt 1.5 Protocol
local omi_nse_nseix_mtbtndal_tbt_v1_5 = Proto("Omi.Nse.NseIx.MtbtNdal.Tbt.v1.5", "Nse NseIx MtbtNdal Tbt 1.5")

-- Protocol table
local nse_nseix_mtbtndal_tbt_v1_5 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nse NseIx MtbtNdal Tbt 1.5 Fields
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.buy_order_id = ProtoField.new("Buy Order Id", "nse.nseix.mtbtndal.tbt.v1.5.buyorderid", ftypes.DOUBLE, nil, nil, nil, "Day Unique Order Reference Number for Buy-Side Order")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.change_in_open_interest = ProtoField.new("Change In Open Interest", "nse.nseix.mtbtndal.tbt.v1.5.changeinopeninterest", ftypes.INT32, nil, nil, nil, "Contract change in open interest; zero for the USAIDR instrument")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.closing_price = ProtoField.new("Closing Price", "nse.nseix.mtbtndal.tbt.v1.5.closingprice", ftypes.DOUBLE, nil, nil, nil, "Contract close price for the day")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.contract_stream_id = ProtoField.new("Stream Id", "nse.nseix.mtbtndal.tbt.v1.5.contractstreamid", ftypes.INT16, nil, nil, nil, "Availability of this contract on a particular stream")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.daily_contract_indicator = ProtoField.new("Daily Contract Indicator", "nse.nseix.mtbtndal.tbt.v1.5.dailycontractindicator", ftypes.STRING, nil, nil, nil, "Indicates whether the contract is categorized as a Daily contract")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.day_high_price_diff_range = ProtoField.new("Day High Price Diff Range", "nse.nseix.mtbtndal.tbt.v1.5.dayhighpricediffrange", ftypes.DOUBLE, nil, nil, nil, "Day high price difference range for the combination, which may be changed intraday; divided by 10000 to get the actual price")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.day_low_price_diff_range = ProtoField.new("Day Low Price Diff Range", "nse.nseix.mtbtndal.tbt.v1.5.daylowpricediffrange", ftypes.DOUBLE, nil, nil, nil, "Day low price difference range for the combination, which may be changed intraday; divided by 10000 to get the actual price")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.expiry_date_utc = ProtoField.new("Expiry Date", "nse.nseix.mtbtndal.tbt.v1.5.expirydate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Expiry date of contract in seconds from 01-Jan-1980 00:00:00")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.expiry_date = ProtoField.new("Expiry Date", "nse.nseix.mtbtndal.tbt.v1.5.expirydate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Expiry date of contract in seconds from 01-Jan-1980 00:00:00")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.high_price_range = ProtoField.new("High Price Range", "nse.nseix.mtbtndal.tbt.v1.5.highpricerange", ftypes.INT32, nil, nil, nil, "Maximum price at which an order can be placed without causing a price freeze; divided by 10000 for all contracts except INRUSD, which is divided by 100")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.identifier = ProtoField.new("Identifier", "nse.nseix.mtbtndal.tbt.v1.5.identifier", ftypes.STRING, nil, nil, nil, "Whether the open price or the close price is being determined")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.indicative_price = ProtoField.new("Indicative Price", "nse.nseix.mtbtndal.tbt.v1.5.indicativeprice", ftypes.DOUBLE, nil, nil, nil, "Indicative open or close price, in multiples of the tick size; divided by 10000 for converting into USD")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.indicative_quantity = ProtoField.new("Indicative Quantity", "nse.nseix.mtbtndal.tbt.v1.5.indicativequantity", ftypes.INT32, nil, nil, nil, "Indicative equilibrium quantity which shall be traded at the indicative open or close price")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.instrument = ProtoField.new("Instrument", "nse.nseix.mtbtndal.tbt.v1.5.instrument", ftypes.STRING, nil, nil, nil, "Security instrument, e.g. FUTIDX, FUTSTK; commodity instrument, e.g. FUTCOM")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.last_sequence_no = ProtoField.new("Last Sequence No", "nse.nseix.mtbtndal.tbt.v1.5.lastsequenceno", ftypes.INT32, nil, nil, nil, "Last sent data sequence no. of the stream")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.last_traded_price = ProtoField.new("Last Traded Price", "nse.nseix.mtbtndal.tbt.v1.5.lasttradedprice", ftypes.DOUBLE, nil, nil, nil, "Contract last traded price for the day")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.low_price_range = ProtoField.new("Low Price Range", "nse.nseix.mtbtndal.tbt.v1.5.lowpricerange", ftypes.INT32, nil, nil, nil, "Minimum price at which an order can be placed without causing a price freeze; divided by 10000 for all contracts except INRUSD, which is divided by 100")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.message_length = ProtoField.new("Message Length", "nse.nseix.mtbtndal.tbt.v1.5.messagelength", ftypes.INT16, nil, nil, nil, "Total size of the packet including Stream Header and Stream Data [2, Short]")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.message_type = ProtoField.new("Message Type", "nse.nseix.mtbtndal.tbt.v1.5.messagetype", ftypes.STRING, nil, nil, nil, "cMsgType. Code identifying message type [1, Char]")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.open_interest = ProtoField.new("Open Interest", "nse.nseix.mtbtndal.tbt.v1.5.openinterest", ftypes.INT32, nil, nil, nil, "Contract open interest")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.opening_price = ProtoField.new("Opening Price", "nse.nseix.mtbtndal.tbt.v1.5.openingprice", ftypes.DOUBLE, nil, nil, nil, "Contract open price for the day")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.operating_range_high_price_diff_range = ProtoField.new("Operating Range High Price Diff Range", "nse.nseix.mtbtndal.tbt.v1.5.operatingrangehighpricediffrange", ftypes.DOUBLE, nil, nil, nil, "Maximum price difference at which the spread order could be placed without being rejected by the system, which may be changed intraday and flexed; divided by 10000 to get the actual price")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.operating_range_low_price_diff_range = ProtoField.new("Operating Range Low Price Diff Range", "nse.nseix.mtbtndal.tbt.v1.5.operatingrangelowpricediffrange", ftypes.DOUBLE, nil, nil, nil, "Minimum price difference at which the spread order could be placed without being rejected by the system, which may be changed intraday and flexed; divided by 10000 to get the actual price")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.option_type = ProtoField.new("Option Type", "nse.nseix.mtbtndal.tbt.v1.5.optiontype", ftypes.STRING, nil, nil, nil, "Option Type for the contract")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.order_id = ProtoField.new("Order Id", "nse.nseix.mtbtndal.tbt.v1.5.orderid", ftypes.DOUBLE, nil, nil, nil, "Day Unique Order Reference Number")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.order_type = ProtoField.new("Order Type", "nse.nseix.mtbtndal.tbt.v1.5.ordertype", ftypes.STRING, nil, nil, nil, "Order Type Values")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.previous_close_price = ProtoField.new("Previous Close Price", "nse.nseix.mtbtndal.tbt.v1.5.previouscloseprice", ftypes.DOUBLE, nil, nil, nil, "Contract previous day's close price")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.price = ProtoField.new("Price", "nse.nseix.mtbtndal.tbt.v1.5.price", ftypes.DOUBLE, nil, nil, nil, "Price of the order (In cents), at which the order is placed, in multiples of the tick size; divided by 10000 for converting into USD")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.quantity = ProtoField.new("Quantity", "nse.nseix.mtbtndal.tbt.v1.5.quantity", ftypes.INT32, nil, nil, nil, "Quantity of the order")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.sell_order_id = ProtoField.new("Sell Order Id", "nse.nseix.mtbtndal.tbt.v1.5.sellorderid", ftypes.DOUBLE, nil, nil, nil, "Day Unique Order Reference Number for Sell-Side Order")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.sequence_number = ProtoField.new("Sequence Number", "nse.nseix.mtbtndal.tbt.v1.5.sequencenumber", ftypes.UINT32, nil, nil, nil, "Sequence number of the packet for this Stream Id. For Equity Derivative (FO) segment, this field is unsigned int [4, Uint]")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.session_indicator = ProtoField.new("Session Indicator", "nse.nseix.mtbtndal.tbt.v1.5.sessionindicator", ftypes.INT16, nil, nil, nil, "Trading session")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.settlement_price = ProtoField.new("Settlement Price", "nse.nseix.mtbtndal.tbt.v1.5.settlementprice", ftypes.DOUBLE, nil, nil, nil, "Contract settlement price for the day; zero for the USAIDR instrument")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.statistics_open_interest = ProtoField.new("Open Interest", "nse.nseix.mtbtndal.tbt.v1.5.statisticsopeninterest", ftypes.INT32, nil, nil, nil, "Contract open interest; zero for the USAIDR instrument")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.status = ProtoField.new("Status", "nse.nseix.mtbtndal.tbt.v1.5.status", ftypes.INT16, nil, nil, nil, "Market status")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.stream_id = ProtoField.new("Stream Id", "nse.nseix.mtbtndal.tbt.v1.5.streamid", ftypes.INT16, nil, nil, nil, "Identifies a particular stream")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.strike_price = ProtoField.new("Strike Price", "nse.nseix.mtbtndal.tbt.v1.5.strikeprice", ftypes.DOUBLE, nil, nil, nil, "Strike Price of Contract (In Cents), divided by 10000 for converting into USD; zero for a futures contract")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.symbol = ProtoField.new("Symbol", "nse.nseix.mtbtndal.tbt.v1.5.symbol", ftypes.STRING, nil, nil, nil, "Contract Symbol")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.timestamp_utc = ProtoField.new("Timestamp", "nse.nseix.mtbtndal.tbt.v1.5.timestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time in nanoseconds from 01-Jan-1980 00:00:00")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.timestamp = ProtoField.new("Timestamp", "nse.nseix.mtbtndal.tbt.v1.5.timestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time in nanoseconds from 01-Jan-1980 00:00:00")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.token = ProtoField.new("Token", "nse.nseix.mtbtndal.tbt.v1.5.token", ftypes.INT32, nil, nil, nil, "Unique Contract Identifier")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.token_1 = ProtoField.new("Token 1", "nse.nseix.mtbtndal.tbt.v1.5.token1", ftypes.INT32, nil, nil, nil, "Token No. of First Spread Contract")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.token_2 = ProtoField.new("Token 2", "nse.nseix.mtbtndal.tbt.v1.5.token2", ftypes.INT32, nil, nil, nil, "Token No. of Second Spread Contract")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.token_number = ProtoField.new("Token Number", "nse.nseix.mtbtndal.tbt.v1.5.tokennumber", ftypes.INT32, nil, nil, nil, "Unique identifier for contract")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.total_traded_quantity = ProtoField.new("Total Traded Quantity", "nse.nseix.mtbtndal.tbt.v1.5.totaltradedquantity", ftypes.INT32, nil, nil, nil, "Volume traded today for the contract")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.total_traded_value = ProtoField.new("Total Traded Value", "nse.nseix.mtbtndal.tbt.v1.5.totaltradedvalue", ftypes.DOUBLE, nil, nil, nil, "Total traded value for the contract; divided by 10000 to get the value in USD, and by 100000 to get it in lakhs of USD")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.trade_high_price = ProtoField.new("Trade High Price", "nse.nseix.mtbtndal.tbt.v1.5.tradehighprice", ftypes.DOUBLE, nil, nil, nil, "Contract high price for the day")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.trade_low_price = ProtoField.new("Trade Low Price", "nse.nseix.mtbtndal.tbt.v1.5.tradelowprice", ftypes.DOUBLE, nil, nil, nil, "Contract low price for the day")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.trade_price = ProtoField.new("Trade Price", "nse.nseix.mtbtndal.tbt.v1.5.tradeprice", ftypes.DOUBLE, nil, nil, nil, "Trade Price (In cents), at which the trade took place, in multiples of the tick size; divided by 10000 for converting into USD")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.trade_quantity = ProtoField.new("Trade Quantity", "nse.nseix.mtbtndal.tbt.v1.5.tradequantity", ftypes.INT32)

-- Nse NseIx MtbtNdal Tbt 1.5 Framing
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.message = ProtoField.new("Message", "nse.nseix.mtbtndal.tbt.v1.5.message", ftypes.STRING, nil, nil, nil, "STREAM_DATA. First field is always Message Type and must be read/interpreted first.")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.packet = ProtoField.new("Packet", "nse.nseix.mtbtndal.tbt.v1.5.packet", ftypes.STRING, nil, nil, nil, "Mtbt Udp Packet. One STREAM_DATA message per packet.")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.stream_header = ProtoField.new("Stream Header", "nse.nseix.mtbtndal.tbt.v1.5.streamheader", ftypes.STRING, nil, nil, nil, "STREAM_HEADER")

-- Nse NseIx MtbtNdal 1.5 Application Messages
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.contract_information_message = ProtoField.new("Contract Information Message", "nse.nseix.mtbtndal.tbt.v1.5.contractinformationmessage", ftypes.STRING, nil, nil, nil, "Beginning of day contract master information, sent before the market opens on Stream Id no. 99, for contracts valid in the NSE IX market.")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "nse.nseix.mtbtndal.tbt.v1.5.heartbeatmessage", ftypes.STRING, nil, nil, nil, "Sent when there is no data available for a few seconds. The sequence number field in the Stream Header will have the value 0 (zero) for this message.")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.indicative_price_and_quantity_message = ProtoField.new("Indicative Price And Quantity Message", "nse.nseix.mtbtndal.tbt.v1.5.indicativepriceandquantitymessage", ftypes.STRING, nil, nil, nil, "Indicative equilibrium price and quantity, sent for contracts with pre-open and pre-close sessions, only between the pre-open or pre-close and the pre-open end or pre-close end statuses, when the indicative price and quantity are determined or updated during order collection.")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.market_statistics_information_message = ProtoField.new("Market Statistics Information Message", "nse.nseix.mtbtndal.tbt.v1.5.marketstatisticsinformationmessage", ftypes.STRING, nil, nil, nil, "End of session market statistics (Bhavcopy), sent on Stream Id no. 99.")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.market_status_message = ProtoField.new("Market Status Message", "nse.nseix.mtbtndal.tbt.v1.5.marketstatusmessage", ftypes.STRING, nil, nil, nil, "Sent whenever the status of the market is changed to pre-open, pre-open end, open, closed, pre-close or pre-close end, for both T and T+1 sessions.")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.new_order_message = ProtoField.new("New Order Message", "nse.nseix.mtbtndal.tbt.v1.5.newordermessage", ftypes.STRING, nil, nil, nil, "For every new order request, this message is sent. All new order requests are sent, including the active orders.")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.new_spread_order_message = ProtoField.new("New Spread Order Message", "nse.nseix.mtbtndal.tbt.v1.5.newspreadordermessage", ftypes.STRING, nil, nil, nil, "For every new spread order request, this message is sent. All new spread order requests are sent, including the active orders.")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.open_interest_message = ProtoField.new("Open Interest Message", "nse.nseix.mtbtndal.tbt.v1.5.openinterestmessage", ftypes.STRING, nil, nil, nil, "Open interest of the contracts traded, sent during trading hours on Stream Id no. 99.")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.order_cancellation_message = ProtoField.new("Order Cancellation Message", "nse.nseix.mtbtndal.tbt.v1.5.ordercancellationmessage", ftypes.STRING, nil, nil, nil, "For every order cancellation request, this message is sent. Cancellations must be handled on the basis of Order Id and not on Price; one whose original Order Id is not found should be ignored.")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.order_modification_message = ProtoField.new("Order Modification Message", "nse.nseix.mtbtndal.tbt.v1.5.ordermodificationmessage", ftypes.STRING, nil, nil, nil, "For every order modification request, this message is sent. Modifications must be handled on the basis of Order Id and not on Price; one whose original Order Id is not found should be treated as a New Order.")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.spread_contract_information_message = ProtoField.new("Spread Contract Information Message", "nse.nseix.mtbtndal.tbt.v1.5.spreadcontractinformationmessage", ftypes.STRING, nil, nil, nil, "Information about the spread contracts valid in the NSE IX market, sent on Stream Id no. 99.")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.spread_order_cancellation_message = ProtoField.new("Spread Order Cancellation Message", "nse.nseix.mtbtndal.tbt.v1.5.spreadordercancellationmessage", ftypes.STRING, nil, nil, nil, "For every spread order cancellation request, this message is sent.")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.spread_order_modification_message = ProtoField.new("Spread Order Modification Message", "nse.nseix.mtbtndal.tbt.v1.5.spreadordermodificationmessage", ftypes.STRING, nil, nil, nil, "For every spread order modification request, this message is sent.")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.spread_trade_message = ProtoField.new("Spread Trade Message", "nse.nseix.mtbtndal.tbt.v1.5.spreadtrademessage", ftypes.STRING, nil, nil, nil, "Sent whenever a spread order in the order book gets executed fully or partially. Either Buy Order ID or Sell Order ID can be zero, in which case that Order ID should be ignored.")
omi_nse_nseix_mtbtndal_tbt_v1_5.fields.trade_message = ProtoField.new("Trade Message", "nse.nseix.mtbtndal.tbt.v1.5.trademessage", ftypes.STRING, nil, nil, nil, "Sent whenever an order in the order book gets executed fully or partially. Either Buy Order ID or Sell Order ID can be zero, in which case that Order ID should be ignored; both are never zero at the same time.")

-- Nse NseIx MtbtNdal Tbt 1.5 Expert Info
nse_nseix_mtbtndal_tbt_v1_5.experts = {}
nse_nseix_mtbtndal_tbt_v1_5.experts.undecoded = ProtoExpert.new("nse.nseix.mtbtndal.tbt.v1.5.undecoded", "Fields run past the size the wire gives them", expert.group.MALFORMED, expert.severity.ERROR)
omi_nse_nseix_mtbtndal_tbt_v1_5.experts = { nse_nseix_mtbtndal_tbt_v1_5.experts.undecoded }

-----------------------------------------------------------------------
-- Nse NseIx MtbtNdal Tbt 1.5 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "DateTime Local", 2 },
  { 2, "DateTime Utc", 3 },
  { 3, "DateTime Asia/Kolkata", 4 }
}

-- 0=Raw, 1=Time of Day, 2=DateTime Local, 3=DateTime Utc, 4=DateTime Zone
nse_nseix_mtbtndal_tbt_v1_5.timestamp_format = 3

-- Offset of the source's zone from utc in seconds, as the reader states it
nse_nseix_mtbtndal_tbt_v1_5.zone_offset = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nse NseIx MtbtNdal Tbt 1.5 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.sequences = true

-- Register Nse NseIx MtbtNdal Tbt 1.5 Show Options
omi_nse_nseix_mtbtndal_tbt_v1_5.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nse_nseix_mtbtndal_tbt_v1_5.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nse_nseix_mtbtndal_tbt_v1_5.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nse_nseix_mtbtndal_tbt_v1_5.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_nse_nseix_mtbtndal_tbt_v1_5.prefs.timestamp_format = Pref.enum("Timestamp Format", 3, "Display format for this protocol's timestamps", timestamp_format_enum, false)
omi_nse_nseix_mtbtndal_tbt_v1_5.prefs.zone_offset = Pref.string("Asia/Kolkata Utc Offset", "", "Offset of Asia/Kolkata from Utc, as +HH:MM. This protocol names that zone and not its offset: stated here, a time kept on its clock reads as an instant, and an instant reads on its clock")

-- Handle changed preferences
function omi_nse_nseix_mtbtndal_tbt_v1_5.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nse_nseix_mtbtndal_tbt_v1_5.prefs.show_application_messages then
    show.application_messages = omi_nse_nseix_mtbtndal_tbt_v1_5.prefs.show_application_messages
  end
  if show.headers ~= omi_nse_nseix_mtbtndal_tbt_v1_5.prefs.show_headers then
    show.headers = omi_nse_nseix_mtbtndal_tbt_v1_5.prefs.show_headers
  end
  if show.structs ~= omi_nse_nseix_mtbtndal_tbt_v1_5.prefs.show_structs then
    show.structs = omi_nse_nseix_mtbtndal_tbt_v1_5.prefs.show_structs
  end
  if show.sequences ~= omi_nse_nseix_mtbtndal_tbt_v1_5.prefs.show_sequences then
    show.sequences = omi_nse_nseix_mtbtndal_tbt_v1_5.prefs.show_sequences
  end
  if nse_nseix_mtbtndal_tbt_v1_5.timestamp_format ~= omi_nse_nseix_mtbtndal_tbt_v1_5.prefs.timestamp_format then
    nse_nseix_mtbtndal_tbt_v1_5.timestamp_format = omi_nse_nseix_mtbtndal_tbt_v1_5.prefs.timestamp_format
  end
  local sign, hours, minutes = string.match(omi_nse_nseix_mtbtndal_tbt_v1_5.prefs.zone_offset, "^%s*([+-]?)(%d%d?):?(%d?%d?)%s*$")

  nse_nseix_mtbtndal_tbt_v1_5.zone_offset = 0

  if hours then
    nse_nseix_mtbtndal_tbt_v1_5.zone_offset = tonumber(hours) * 3600 + (tonumber(minutes) or 0) * 60
  end

  if sign == "-" then
    nse_nseix_mtbtndal_tbt_v1_5.zone_offset = -nse_nseix_mtbtndal_tbt_v1_5.zone_offset
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
nse_nseix_mtbtndal_tbt_v1_5.conversation = {}
nse_nseix_mtbtndal_tbt_v1_5.conversation.flows = {}

-- Revisit replay cursor for stream sequences: which frame is being
-- re-dissected and which memoized occurrence within it is next
nse_nseix_mtbtndal_tbt_v1_5.stream_frame = nil
nse_nseix_mtbtndal_tbt_v1_5.stream_occurrence = 0

-- Conversation key for the current packet (src/dst tuple)
nse_nseix_mtbtndal_tbt_v1_5.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
nse_nseix_mtbtndal_tbt_v1_5.conversation.data = function(packet)
  local key = nse_nseix_mtbtndal_tbt_v1_5.conversation.key(packet)
  local data = nse_nseix_mtbtndal_tbt_v1_5.conversation.flows[key]
  if data == nil then
    data = { sequence = { next = nil, frames = {} } }
    nse_nseix_mtbtndal_tbt_v1_5.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
nse_nseix_mtbtndal_tbt_v1_5.conversation.current = nil


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
-- Nse NseIx MtbtNdal Tbt 1.5 Fields
-----------------------------------------------------------------------

-- Buy Order Id
nse_nseix_mtbtndal_tbt_v1_5.buy_order_id = {}

-- Size: Buy Order Id
nse_nseix_mtbtndal_tbt_v1_5.buy_order_id.size = 8

-- Display: Buy Order Id
nse_nseix_mtbtndal_tbt_v1_5.buy_order_id.display = function(value)
  return "Buy Order Id: "..string.format("%.0f", value)
end

-- Dissect: Buy Order Id
nse_nseix_mtbtndal_tbt_v1_5.buy_order_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.buy_order_id.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nse_nseix_mtbtndal_tbt_v1_5.buy_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.buy_order_id, range, value, display)

  return offset + length, value
end

-- Change In Open Interest
nse_nseix_mtbtndal_tbt_v1_5.change_in_open_interest = {}

-- Size: Change In Open Interest
nse_nseix_mtbtndal_tbt_v1_5.change_in_open_interest.size = 4

-- Display: Change In Open Interest
nse_nseix_mtbtndal_tbt_v1_5.change_in_open_interest.display = function(value)
  return "Change In Open Interest: "..value
end

-- Dissect: Change In Open Interest
nse_nseix_mtbtndal_tbt_v1_5.change_in_open_interest.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.change_in_open_interest.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nseix_mtbtndal_tbt_v1_5.change_in_open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.change_in_open_interest, range, value, display)

  return offset + length, value
end

-- Closing Price
nse_nseix_mtbtndal_tbt_v1_5.closing_price = {}

-- Size: Closing Price
nse_nseix_mtbtndal_tbt_v1_5.closing_price.size = 8

-- Display: Closing Price
nse_nseix_mtbtndal_tbt_v1_5.closing_price.display = function(value)
  return "Closing Price: "..value
end

-- Dissect: Closing Price
nse_nseix_mtbtndal_tbt_v1_5.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.closing_price.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nse_nseix_mtbtndal_tbt_v1_5.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Contract Stream Id
nse_nseix_mtbtndal_tbt_v1_5.contract_stream_id = {}

-- Size: Contract Stream Id
nse_nseix_mtbtndal_tbt_v1_5.contract_stream_id.size = 2

-- Display: Contract Stream Id
nse_nseix_mtbtndal_tbt_v1_5.contract_stream_id.display = function(value)
  return "Stream Id: "..value
end

-- Dissect: Contract Stream Id
nse_nseix_mtbtndal_tbt_v1_5.contract_stream_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.contract_stream_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nseix_mtbtndal_tbt_v1_5.contract_stream_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.contract_stream_id, range, value, display)

  return offset + length, value
end

-- Daily Contract Indicator
nse_nseix_mtbtndal_tbt_v1_5.daily_contract_indicator = {}

-- Size: Daily Contract Indicator
nse_nseix_mtbtndal_tbt_v1_5.daily_contract_indicator.size = 1

-- Display: Daily Contract Indicator
nse_nseix_mtbtndal_tbt_v1_5.daily_contract_indicator.labels = {
  ["D"] = "Daily Contract Indicator: Daily Contract (D)",
  ["N"] = "Daily Contract Indicator: Not Applicable (N)",
}

nse_nseix_mtbtndal_tbt_v1_5.daily_contract_indicator.display = function(value)
  return nse_nseix_mtbtndal_tbt_v1_5.daily_contract_indicator.labels[value] or "Daily Contract Indicator: Unknown("..value..")"
end

-- Dissect: Daily Contract Indicator
nse_nseix_mtbtndal_tbt_v1_5.daily_contract_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.daily_contract_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_mtbtndal_tbt_v1_5.daily_contract_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.daily_contract_indicator, range, value, display)

  return offset + length, value
end

-- Day High Price Diff Range
nse_nseix_mtbtndal_tbt_v1_5.day_high_price_diff_range = {}

-- Size: Day High Price Diff Range
nse_nseix_mtbtndal_tbt_v1_5.day_high_price_diff_range.size = 4

-- Display: Day High Price Diff Range
nse_nseix_mtbtndal_tbt_v1_5.day_high_price_diff_range.display = function(value)
  return "Day High Price Diff Range: "..value
end

-- Translate: Day High Price Diff Range
nse_nseix_mtbtndal_tbt_v1_5.day_high_price_diff_range.translate = function(raw)
  return raw/10000
end

-- Dissect: Day High Price Diff Range
nse_nseix_mtbtndal_tbt_v1_5.day_high_price_diff_range.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.day_high_price_diff_range.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nse_nseix_mtbtndal_tbt_v1_5.day_high_price_diff_range.translate(raw)
  local display = nse_nseix_mtbtndal_tbt_v1_5.day_high_price_diff_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.day_high_price_diff_range, range, value, display)

  return offset + length, value
end

-- Day Low Price Diff Range
nse_nseix_mtbtndal_tbt_v1_5.day_low_price_diff_range = {}

-- Size: Day Low Price Diff Range
nse_nseix_mtbtndal_tbt_v1_5.day_low_price_diff_range.size = 4

-- Display: Day Low Price Diff Range
nse_nseix_mtbtndal_tbt_v1_5.day_low_price_diff_range.display = function(value)
  return "Day Low Price Diff Range: "..value
end

-- Translate: Day Low Price Diff Range
nse_nseix_mtbtndal_tbt_v1_5.day_low_price_diff_range.translate = function(raw)
  return raw/10000
end

-- Dissect: Day Low Price Diff Range
nse_nseix_mtbtndal_tbt_v1_5.day_low_price_diff_range.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.day_low_price_diff_range.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nse_nseix_mtbtndal_tbt_v1_5.day_low_price_diff_range.translate(raw)
  local display = nse_nseix_mtbtndal_tbt_v1_5.day_low_price_diff_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.day_low_price_diff_range, range, value, display)

  return offset + length, value
end

-- Expiry Date
nse_nseix_mtbtndal_tbt_v1_5.expiry_date = {}

-- Size: Expiry Date
nse_nseix_mtbtndal_tbt_v1_5.expiry_date.size = 4

-- Dissect: Expiry Date
nse_nseix_mtbtndal_tbt_v1_5.expiry_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.expiry_date.size
  local range = buffer(offset, length)
  local value = range:le_int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_mtbtndal_tbt_v1_5.fields.expiry_date
  if nse_nseix_mtbtndal_tbt_v1_5.timestamp_format == 3 then field = omi_nse_nseix_mtbtndal_tbt_v1_5.fields.expiry_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_mtbtndal_tbt_v1_5.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Expiry Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_mtbtndal_tbt_v1_5.zone_offset, 0))

  return offset + length, value
end

-- High Price Range
nse_nseix_mtbtndal_tbt_v1_5.high_price_range = {}

-- Size: High Price Range
nse_nseix_mtbtndal_tbt_v1_5.high_price_range.size = 4

-- Display: High Price Range
nse_nseix_mtbtndal_tbt_v1_5.high_price_range.display = function(value)
  return "High Price Range: "..value
end

-- Dissect: High Price Range
nse_nseix_mtbtndal_tbt_v1_5.high_price_range.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.high_price_range.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nseix_mtbtndal_tbt_v1_5.high_price_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.high_price_range, range, value, display)

  return offset + length, value
end

-- Identifier
nse_nseix_mtbtndal_tbt_v1_5.identifier = {}

-- Size: Identifier
nse_nseix_mtbtndal_tbt_v1_5.identifier.size = 1

-- Display: Identifier
nse_nseix_mtbtndal_tbt_v1_5.identifier.labels = {
  ["O"] = "Identifier: Indicative Open Price (O)",
  ["C"] = "Identifier: Indicative Close Price (C)",
}

nse_nseix_mtbtndal_tbt_v1_5.identifier.display = function(value)
  return nse_nseix_mtbtndal_tbt_v1_5.identifier.labels[value] or "Identifier: Unknown("..value..")"
end

-- Dissect: Identifier
nse_nseix_mtbtndal_tbt_v1_5.identifier.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.identifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_mtbtndal_tbt_v1_5.identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.identifier, range, value, display)

  return offset + length, value
end

-- Indicative Price
nse_nseix_mtbtndal_tbt_v1_5.indicative_price = {}

-- Size: Indicative Price
nse_nseix_mtbtndal_tbt_v1_5.indicative_price.size = 4

-- Display: Indicative Price
nse_nseix_mtbtndal_tbt_v1_5.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Translate: Indicative Price
nse_nseix_mtbtndal_tbt_v1_5.indicative_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Indicative Price
nse_nseix_mtbtndal_tbt_v1_5.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.indicative_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nse_nseix_mtbtndal_tbt_v1_5.indicative_price.translate(raw)
  local display = nse_nseix_mtbtndal_tbt_v1_5.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Indicative Quantity
nse_nseix_mtbtndal_tbt_v1_5.indicative_quantity = {}

-- Size: Indicative Quantity
nse_nseix_mtbtndal_tbt_v1_5.indicative_quantity.size = 4

-- Display: Indicative Quantity
nse_nseix_mtbtndal_tbt_v1_5.indicative_quantity.display = function(value)
  return "Indicative Quantity: "..value
end

-- Dissect: Indicative Quantity
nse_nseix_mtbtndal_tbt_v1_5.indicative_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.indicative_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nseix_mtbtndal_tbt_v1_5.indicative_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.indicative_quantity, range, value, display)

  return offset + length, value
end

-- Instrument
nse_nseix_mtbtndal_tbt_v1_5.instrument = {}

-- Size: Instrument
nse_nseix_mtbtndal_tbt_v1_5.instrument.size = 6

-- Display: Instrument
nse_nseix_mtbtndal_tbt_v1_5.instrument.display = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
nse_nseix_mtbtndal_tbt_v1_5.instrument.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.instrument.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_mtbtndal_tbt_v1_5.instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.instrument, range, value, display)

  return offset + length, value
end

-- Last Sequence No
nse_nseix_mtbtndal_tbt_v1_5.last_sequence_no = {}

-- Size: Last Sequence No
nse_nseix_mtbtndal_tbt_v1_5.last_sequence_no.size = 4

-- Display: Last Sequence No
nse_nseix_mtbtndal_tbt_v1_5.last_sequence_no.display = function(value)
  return "Last Sequence No: "..value
end

-- Dissect: Last Sequence No
nse_nseix_mtbtndal_tbt_v1_5.last_sequence_no.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.last_sequence_no.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nseix_mtbtndal_tbt_v1_5.last_sequence_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.last_sequence_no, range, value, display)

  return offset + length, value
end

-- Last Traded Price
nse_nseix_mtbtndal_tbt_v1_5.last_traded_price = {}

-- Size: Last Traded Price
nse_nseix_mtbtndal_tbt_v1_5.last_traded_price.size = 8

-- Display: Last Traded Price
nse_nseix_mtbtndal_tbt_v1_5.last_traded_price.display = function(value)
  return "Last Traded Price: "..value
end

-- Dissect: Last Traded Price
nse_nseix_mtbtndal_tbt_v1_5.last_traded_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.last_traded_price.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nse_nseix_mtbtndal_tbt_v1_5.last_traded_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.last_traded_price, range, value, display)

  return offset + length, value
end

-- Low Price Range
nse_nseix_mtbtndal_tbt_v1_5.low_price_range = {}

-- Size: Low Price Range
nse_nseix_mtbtndal_tbt_v1_5.low_price_range.size = 4

-- Display: Low Price Range
nse_nseix_mtbtndal_tbt_v1_5.low_price_range.display = function(value)
  return "Low Price Range: "..value
end

-- Dissect: Low Price Range
nse_nseix_mtbtndal_tbt_v1_5.low_price_range.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.low_price_range.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nseix_mtbtndal_tbt_v1_5.low_price_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.low_price_range, range, value, display)

  return offset + length, value
end

-- Message Length
nse_nseix_mtbtndal_tbt_v1_5.message_length = {}

-- Size: Message Length
nse_nseix_mtbtndal_tbt_v1_5.message_length.size = 2

-- Display: Message Length
nse_nseix_mtbtndal_tbt_v1_5.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nse_nseix_mtbtndal_tbt_v1_5.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.message_length.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nseix_mtbtndal_tbt_v1_5.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nse_nseix_mtbtndal_tbt_v1_5.message_type = {}

-- Size: Message Type
nse_nseix_mtbtndal_tbt_v1_5.message_type.size = 1

-- Display: Message Type
nse_nseix_mtbtndal_tbt_v1_5.message_type.labels = {
  ["c"] = "Message Type: Contract Information Message (c)",
  ["d"] = "Message Type: Spread Contract Information Message (d)",
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
  ["f"] = "Message Type: Market Statistics Information Message (f)",
  ["o"] = "Message Type: Open Interest Message (o)",
  ["Z"] = "Message Type: Heartbeat Message (Z)",
}

nse_nseix_mtbtndal_tbt_v1_5.message_type.display = function(value)
  return nse_nseix_mtbtndal_tbt_v1_5.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nse_nseix_mtbtndal_tbt_v1_5.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_mtbtndal_tbt_v1_5.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.message_type, range, value, display)

  return offset + length, value
end

-- Open Interest
nse_nseix_mtbtndal_tbt_v1_5.open_interest = {}

-- Size: Open Interest
nse_nseix_mtbtndal_tbt_v1_5.open_interest.size = 4

-- Display: Open Interest
nse_nseix_mtbtndal_tbt_v1_5.open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
nse_nseix_mtbtndal_tbt_v1_5.open_interest.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.open_interest.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nseix_mtbtndal_tbt_v1_5.open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Opening Price
nse_nseix_mtbtndal_tbt_v1_5.opening_price = {}

-- Size: Opening Price
nse_nseix_mtbtndal_tbt_v1_5.opening_price.size = 8

-- Display: Opening Price
nse_nseix_mtbtndal_tbt_v1_5.opening_price.display = function(value)
  return "Opening Price: "..value
end

-- Dissect: Opening Price
nse_nseix_mtbtndal_tbt_v1_5.opening_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.opening_price.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nse_nseix_mtbtndal_tbt_v1_5.opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.opening_price, range, value, display)

  return offset + length, value
end

-- Operating Range High Price Diff Range
nse_nseix_mtbtndal_tbt_v1_5.operating_range_high_price_diff_range = {}

-- Size: Operating Range High Price Diff Range
nse_nseix_mtbtndal_tbt_v1_5.operating_range_high_price_diff_range.size = 4

-- Display: Operating Range High Price Diff Range
nse_nseix_mtbtndal_tbt_v1_5.operating_range_high_price_diff_range.display = function(value)
  return "Operating Range High Price Diff Range: "..value
end

-- Translate: Operating Range High Price Diff Range
nse_nseix_mtbtndal_tbt_v1_5.operating_range_high_price_diff_range.translate = function(raw)
  return raw/10000
end

-- Dissect: Operating Range High Price Diff Range
nse_nseix_mtbtndal_tbt_v1_5.operating_range_high_price_diff_range.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.operating_range_high_price_diff_range.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nse_nseix_mtbtndal_tbt_v1_5.operating_range_high_price_diff_range.translate(raw)
  local display = nse_nseix_mtbtndal_tbt_v1_5.operating_range_high_price_diff_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.operating_range_high_price_diff_range, range, value, display)

  return offset + length, value
end

-- Operating Range Low Price Diff Range
nse_nseix_mtbtndal_tbt_v1_5.operating_range_low_price_diff_range = {}

-- Size: Operating Range Low Price Diff Range
nse_nseix_mtbtndal_tbt_v1_5.operating_range_low_price_diff_range.size = 4

-- Display: Operating Range Low Price Diff Range
nse_nseix_mtbtndal_tbt_v1_5.operating_range_low_price_diff_range.display = function(value)
  return "Operating Range Low Price Diff Range: "..value
end

-- Translate: Operating Range Low Price Diff Range
nse_nseix_mtbtndal_tbt_v1_5.operating_range_low_price_diff_range.translate = function(raw)
  return raw/10000
end

-- Dissect: Operating Range Low Price Diff Range
nse_nseix_mtbtndal_tbt_v1_5.operating_range_low_price_diff_range.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.operating_range_low_price_diff_range.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nse_nseix_mtbtndal_tbt_v1_5.operating_range_low_price_diff_range.translate(raw)
  local display = nse_nseix_mtbtndal_tbt_v1_5.operating_range_low_price_diff_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.operating_range_low_price_diff_range, range, value, display)

  return offset + length, value
end

-- Option Type
nse_nseix_mtbtndal_tbt_v1_5.option_type = {}

-- Size: Option Type
nse_nseix_mtbtndal_tbt_v1_5.option_type.size = 2

-- Display: Option Type
nse_nseix_mtbtndal_tbt_v1_5.option_type.display = function(value)
  return "Option Type: "..value
end

-- Dissect: Option Type
nse_nseix_mtbtndal_tbt_v1_5.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_mtbtndal_tbt_v1_5.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.option_type, range, value, display)

  return offset + length, value
end

-- Order Id
nse_nseix_mtbtndal_tbt_v1_5.order_id = {}

-- Size: Order Id
nse_nseix_mtbtndal_tbt_v1_5.order_id.size = 8

-- Display: Order Id
nse_nseix_mtbtndal_tbt_v1_5.order_id.display = function(value)
  return "Order Id: "..string.format("%.0f", value)
end

-- Dissect: Order Id
nse_nseix_mtbtndal_tbt_v1_5.order_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.order_id.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nse_nseix_mtbtndal_tbt_v1_5.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Type
nse_nseix_mtbtndal_tbt_v1_5.order_type = {}

-- Size: Order Type
nse_nseix_mtbtndal_tbt_v1_5.order_type.size = 1

-- Display: Order Type
nse_nseix_mtbtndal_tbt_v1_5.order_type.labels = {
  ["B"] = "Order Type: Buy Order (B)",
  ["S"] = "Order Type: Sell Order (S)",
}

nse_nseix_mtbtndal_tbt_v1_5.order_type.display = function(value)
  return nse_nseix_mtbtndal_tbt_v1_5.order_type.labels[value] or "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
nse_nseix_mtbtndal_tbt_v1_5.order_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_mtbtndal_tbt_v1_5.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.order_type, range, value, display)

  return offset + length, value
end

-- Previous Close Price
nse_nseix_mtbtndal_tbt_v1_5.previous_close_price = {}

-- Size: Previous Close Price
nse_nseix_mtbtndal_tbt_v1_5.previous_close_price.size = 8

-- Display: Previous Close Price
nse_nseix_mtbtndal_tbt_v1_5.previous_close_price.display = function(value)
  return "Previous Close Price: "..value
end

-- Dissect: Previous Close Price
nse_nseix_mtbtndal_tbt_v1_5.previous_close_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.previous_close_price.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nse_nseix_mtbtndal_tbt_v1_5.previous_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.previous_close_price, range, value, display)

  return offset + length, value
end

-- Price
nse_nseix_mtbtndal_tbt_v1_5.price = {}

-- Size: Price
nse_nseix_mtbtndal_tbt_v1_5.price.size = 4

-- Display: Price
nse_nseix_mtbtndal_tbt_v1_5.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nse_nseix_mtbtndal_tbt_v1_5.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
nse_nseix_mtbtndal_tbt_v1_5.price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nse_nseix_mtbtndal_tbt_v1_5.price.translate(raw)
  local display = nse_nseix_mtbtndal_tbt_v1_5.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
nse_nseix_mtbtndal_tbt_v1_5.quantity = {}

-- Size: Quantity
nse_nseix_mtbtndal_tbt_v1_5.quantity.size = 4

-- Display: Quantity
nse_nseix_mtbtndal_tbt_v1_5.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
nse_nseix_mtbtndal_tbt_v1_5.quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nseix_mtbtndal_tbt_v1_5.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.quantity, range, value, display)

  return offset + length, value
end

-- Sell Order Id
nse_nseix_mtbtndal_tbt_v1_5.sell_order_id = {}

-- Size: Sell Order Id
nse_nseix_mtbtndal_tbt_v1_5.sell_order_id.size = 8

-- Display: Sell Order Id
nse_nseix_mtbtndal_tbt_v1_5.sell_order_id.display = function(value)
  return "Sell Order Id: "..string.format("%.0f", value)
end

-- Dissect: Sell Order Id
nse_nseix_mtbtndal_tbt_v1_5.sell_order_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.sell_order_id.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nse_nseix_mtbtndal_tbt_v1_5.sell_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.sell_order_id, range, value, display)

  return offset + length, value
end

-- Sequence Number
nse_nseix_mtbtndal_tbt_v1_5.sequence_number = {}

-- Size: Sequence Number
nse_nseix_mtbtndal_tbt_v1_5.sequence_number.size = 4

-- Display: Sequence Number
nse_nseix_mtbtndal_tbt_v1_5.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nse_nseix_mtbtndal_tbt_v1_5.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nse_nseix_mtbtndal_tbt_v1_5.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Indicator
nse_nseix_mtbtndal_tbt_v1_5.session_indicator = {}

-- Size: Session Indicator
nse_nseix_mtbtndal_tbt_v1_5.session_indicator.size = 2

-- Display: Session Indicator
nse_nseix_mtbtndal_tbt_v1_5.session_indicator.labels = {
  [1] = "Session Indicator: T Session (1)",
  [2] = "Session Indicator: T 1 Session (2)",
}

nse_nseix_mtbtndal_tbt_v1_5.session_indicator.display = function(value)
  return nse_nseix_mtbtndal_tbt_v1_5.session_indicator.labels[value] or "Session Indicator: Unknown("..value..")"
end

-- Dissect: Session Indicator
nse_nseix_mtbtndal_tbt_v1_5.session_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.session_indicator.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nseix_mtbtndal_tbt_v1_5.session_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.session_indicator, range, value, display)

  return offset + length, value
end

-- Settlement Price
nse_nseix_mtbtndal_tbt_v1_5.settlement_price = {}

-- Size: Settlement Price
nse_nseix_mtbtndal_tbt_v1_5.settlement_price.size = 8

-- Display: Settlement Price
nse_nseix_mtbtndal_tbt_v1_5.settlement_price.display = function(value)
  return "Settlement Price: "..value
end

-- Dissect: Settlement Price
nse_nseix_mtbtndal_tbt_v1_5.settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.settlement_price.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nse_nseix_mtbtndal_tbt_v1_5.settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Statistics Open Interest
nse_nseix_mtbtndal_tbt_v1_5.statistics_open_interest = {}

-- Size: Statistics Open Interest
nse_nseix_mtbtndal_tbt_v1_5.statistics_open_interest.size = 4

-- Display: Statistics Open Interest
nse_nseix_mtbtndal_tbt_v1_5.statistics_open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Dissect: Statistics Open Interest
nse_nseix_mtbtndal_tbt_v1_5.statistics_open_interest.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.statistics_open_interest.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nseix_mtbtndal_tbt_v1_5.statistics_open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.statistics_open_interest, range, value, display)

  return offset + length, value
end

-- Status
nse_nseix_mtbtndal_tbt_v1_5.status = {}

-- Size: Status
nse_nseix_mtbtndal_tbt_v1_5.status.size = 2

-- Display: Status
nse_nseix_mtbtndal_tbt_v1_5.status.labels = {
  [0] = "Status: Pre Open (0)",
  [1] = "Status: Open (1)",
  [2] = "Status: Closed (2)",
  [3] = "Status: Pre Open End (3)",
  [4] = "Status: Pre Close (4)",
  [5] = "Status: Pre Close End (5)",
}

nse_nseix_mtbtndal_tbt_v1_5.status.display = function(value)
  return nse_nseix_mtbtndal_tbt_v1_5.status.labels[value] or "Status: Unknown("..value..")"
end

-- Dissect: Status
nse_nseix_mtbtndal_tbt_v1_5.status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.status.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nseix_mtbtndal_tbt_v1_5.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.status, range, value, display)

  return offset + length, value
end

-- Stream Id
nse_nseix_mtbtndal_tbt_v1_5.stream_id = {}

-- Size: Stream Id
nse_nseix_mtbtndal_tbt_v1_5.stream_id.size = 2

-- Display: Stream Id
nse_nseix_mtbtndal_tbt_v1_5.stream_id.display = function(value)
  return "Stream Id: "..value
end

-- Dissect: Stream Id
nse_nseix_mtbtndal_tbt_v1_5.stream_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.stream_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nseix_mtbtndal_tbt_v1_5.stream_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.stream_id, range, value, display)

  return offset + length, value
end

-- Strike Price
nse_nseix_mtbtndal_tbt_v1_5.strike_price = {}

-- Size: Strike Price
nse_nseix_mtbtndal_tbt_v1_5.strike_price.size = 4

-- Display: Strike Price
nse_nseix_mtbtndal_tbt_v1_5.strike_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == 0 then
    return "Strike Price: Futures Contract"
  end

  return "Strike Price: "..value
end

-- Translate: Strike Price
nse_nseix_mtbtndal_tbt_v1_5.strike_price.translate = function(raw)
  -- Check null sentinel value
  if raw == 0 then
    return 0/0
  end

  return raw/10000
end

-- Dissect: Strike Price
nse_nseix_mtbtndal_tbt_v1_5.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nse_nseix_mtbtndal_tbt_v1_5.strike_price.translate(raw)
  local display = nse_nseix_mtbtndal_tbt_v1_5.strike_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Symbol
nse_nseix_mtbtndal_tbt_v1_5.symbol = {}

-- Size: Symbol
nse_nseix_mtbtndal_tbt_v1_5.symbol.size = 10

-- Display: Symbol
nse_nseix_mtbtndal_tbt_v1_5.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nse_nseix_mtbtndal_tbt_v1_5.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_mtbtndal_tbt_v1_5.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.symbol, range, value, display)

  return offset + length, value
end

-- Timestamp
nse_nseix_mtbtndal_tbt_v1_5.timestamp = {}

-- Size: Timestamp
nse_nseix_mtbtndal_tbt_v1_5.timestamp.size = 8

-- Dissect: Timestamp
nse_nseix_mtbtndal_tbt_v1_5.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_mtbtndal_tbt_v1_5.fields.timestamp
  if nse_nseix_mtbtndal_tbt_v1_5.timestamp_format == 3 then field = omi_nse_nseix_mtbtndal_tbt_v1_5.fields.timestamp_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = (value / UInt64(1000000000)):tonumber() + 315532800
  local nanos = (value % UInt64(1000000000)):tonumber()

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_mtbtndal_tbt_v1_5.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, nanos))
    item:set_text("Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanos).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_mtbtndal_tbt_v1_5.zone_offset, nanos))

  return offset + length, value
end

-- Token
nse_nseix_mtbtndal_tbt_v1_5.token = {}

-- Size: Token
nse_nseix_mtbtndal_tbt_v1_5.token.size = 4

-- Display: Token
nse_nseix_mtbtndal_tbt_v1_5.token.display = function(value)
  return "Token: "..value
end

-- Dissect: Token
nse_nseix_mtbtndal_tbt_v1_5.token.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.token.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nseix_mtbtndal_tbt_v1_5.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.token, range, value, display)

  return offset + length, value
end

-- Token 1
nse_nseix_mtbtndal_tbt_v1_5.token_1 = {}

-- Size: Token 1
nse_nseix_mtbtndal_tbt_v1_5.token_1.size = 4

-- Display: Token 1
nse_nseix_mtbtndal_tbt_v1_5.token_1.display = function(value)
  return "Token 1: "..value
end

-- Dissect: Token 1
nse_nseix_mtbtndal_tbt_v1_5.token_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.token_1.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nseix_mtbtndal_tbt_v1_5.token_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.token_1, range, value, display)

  return offset + length, value
end

-- Token 2
nse_nseix_mtbtndal_tbt_v1_5.token_2 = {}

-- Size: Token 2
nse_nseix_mtbtndal_tbt_v1_5.token_2.size = 4

-- Display: Token 2
nse_nseix_mtbtndal_tbt_v1_5.token_2.display = function(value)
  return "Token 2: "..value
end

-- Dissect: Token 2
nse_nseix_mtbtndal_tbt_v1_5.token_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.token_2.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nseix_mtbtndal_tbt_v1_5.token_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.token_2, range, value, display)

  return offset + length, value
end

-- Token Number
nse_nseix_mtbtndal_tbt_v1_5.token_number = {}

-- Size: Token Number
nse_nseix_mtbtndal_tbt_v1_5.token_number.size = 4

-- Display: Token Number
nse_nseix_mtbtndal_tbt_v1_5.token_number.display = function(value)
  return "Token Number: "..value
end

-- Dissect: Token Number
nse_nseix_mtbtndal_tbt_v1_5.token_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.token_number.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nseix_mtbtndal_tbt_v1_5.token_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.token_number, range, value, display)

  return offset + length, value
end

-- Total Traded Quantity
nse_nseix_mtbtndal_tbt_v1_5.total_traded_quantity = {}

-- Size: Total Traded Quantity
nse_nseix_mtbtndal_tbt_v1_5.total_traded_quantity.size = 4

-- Display: Total Traded Quantity
nse_nseix_mtbtndal_tbt_v1_5.total_traded_quantity.display = function(value)
  return "Total Traded Quantity: "..value
end

-- Dissect: Total Traded Quantity
nse_nseix_mtbtndal_tbt_v1_5.total_traded_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.total_traded_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nseix_mtbtndal_tbt_v1_5.total_traded_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.total_traded_quantity, range, value, display)

  return offset + length, value
end

-- Total Traded Value
nse_nseix_mtbtndal_tbt_v1_5.total_traded_value = {}

-- Size: Total Traded Value
nse_nseix_mtbtndal_tbt_v1_5.total_traded_value.size = 8

-- Display: Total Traded Value
nse_nseix_mtbtndal_tbt_v1_5.total_traded_value.display = function(value)
  return "Total Traded Value: "..string.format("%.0f", value)
end

-- Dissect: Total Traded Value
nse_nseix_mtbtndal_tbt_v1_5.total_traded_value.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.total_traded_value.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nse_nseix_mtbtndal_tbt_v1_5.total_traded_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.total_traded_value, range, value, display)

  return offset + length, value
end

-- Trade High Price
nse_nseix_mtbtndal_tbt_v1_5.trade_high_price = {}

-- Size: Trade High Price
nse_nseix_mtbtndal_tbt_v1_5.trade_high_price.size = 8

-- Display: Trade High Price
nse_nseix_mtbtndal_tbt_v1_5.trade_high_price.display = function(value)
  return "Trade High Price: "..value
end

-- Dissect: Trade High Price
nse_nseix_mtbtndal_tbt_v1_5.trade_high_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.trade_high_price.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nse_nseix_mtbtndal_tbt_v1_5.trade_high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.trade_high_price, range, value, display)

  return offset + length, value
end

-- Trade Low Price
nse_nseix_mtbtndal_tbt_v1_5.trade_low_price = {}

-- Size: Trade Low Price
nse_nseix_mtbtndal_tbt_v1_5.trade_low_price.size = 8

-- Display: Trade Low Price
nse_nseix_mtbtndal_tbt_v1_5.trade_low_price.display = function(value)
  return "Trade Low Price: "..value
end

-- Dissect: Trade Low Price
nse_nseix_mtbtndal_tbt_v1_5.trade_low_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.trade_low_price.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nse_nseix_mtbtndal_tbt_v1_5.trade_low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.trade_low_price, range, value, display)

  return offset + length, value
end

-- Trade Price
nse_nseix_mtbtndal_tbt_v1_5.trade_price = {}

-- Size: Trade Price
nse_nseix_mtbtndal_tbt_v1_5.trade_price.size = 4

-- Display: Trade Price
nse_nseix_mtbtndal_tbt_v1_5.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
nse_nseix_mtbtndal_tbt_v1_5.trade_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Trade Price
nse_nseix_mtbtndal_tbt_v1_5.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.trade_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nse_nseix_mtbtndal_tbt_v1_5.trade_price.translate(raw)
  local display = nse_nseix_mtbtndal_tbt_v1_5.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Quantity
nse_nseix_mtbtndal_tbt_v1_5.trade_quantity = {}

-- Size: Trade Quantity
nse_nseix_mtbtndal_tbt_v1_5.trade_quantity.size = 4

-- Display: Trade Quantity
nse_nseix_mtbtndal_tbt_v1_5.trade_quantity.display = function(value)
  return "Trade Quantity: "..value
end

-- Dissect: Trade Quantity
nse_nseix_mtbtndal_tbt_v1_5.trade_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_mtbtndal_tbt_v1_5.trade_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nseix_mtbtndal_tbt_v1_5.trade_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.trade_quantity, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nse NseIx MtbtNdal Tbt 1.5
-----------------------------------------------------------------------

-- Heartbeat Message
nse_nseix_mtbtndal_tbt_v1_5.heartbeat_message = {}

-- Size: Heartbeat Message
nse_nseix_mtbtndal_tbt_v1_5.heartbeat_message.size =
  nse_nseix_mtbtndal_tbt_v1_5.last_sequence_no.size

-- Display: Heartbeat Message
nse_nseix_mtbtndal_tbt_v1_5.heartbeat_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Message
nse_nseix_mtbtndal_tbt_v1_5.heartbeat_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Sequence No: INT
  index, last_sequence_no = nse_nseix_mtbtndal_tbt_v1_5.last_sequence_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Message
nse_nseix_mtbtndal_tbt_v1_5.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.heartbeat_message, buffer(offset, 0))
    local index = nse_nseix_mtbtndal_tbt_v1_5.heartbeat_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_mtbtndal_tbt_v1_5.heartbeat_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_mtbtndal_tbt_v1_5.heartbeat_message.fields(buffer, offset, packet, parent)
  end
end

-- Open Interest Message
nse_nseix_mtbtndal_tbt_v1_5.open_interest_message = {}

-- Size: Open Interest Message
nse_nseix_mtbtndal_tbt_v1_5.open_interest_message.size =
  nse_nseix_mtbtndal_tbt_v1_5.timestamp.size + 
  nse_nseix_mtbtndal_tbt_v1_5.token.size + 
  nse_nseix_mtbtndal_tbt_v1_5.open_interest.size

-- Display: Open Interest Message
nse_nseix_mtbtndal_tbt_v1_5.open_interest_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Interest Message
nse_nseix_mtbtndal_tbt_v1_5.open_interest_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nseix_mtbtndal_tbt_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nseix_mtbtndal_tbt_v1_5.token.dissect(buffer, index, packet, parent)

  -- Open Interest: INT
  index, open_interest = nse_nseix_mtbtndal_tbt_v1_5.open_interest.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Interest Message
nse_nseix_mtbtndal_tbt_v1_5.open_interest_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.open_interest_message, buffer(offset, 0))
    local index = nse_nseix_mtbtndal_tbt_v1_5.open_interest_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_mtbtndal_tbt_v1_5.open_interest_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_mtbtndal_tbt_v1_5.open_interest_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Statistics Information Message
nse_nseix_mtbtndal_tbt_v1_5.market_statistics_information_message = {}

-- Size: Market Statistics Information Message
nse_nseix_mtbtndal_tbt_v1_5.market_statistics_information_message.size =
  nse_nseix_mtbtndal_tbt_v1_5.timestamp.size + 
  nse_nseix_mtbtndal_tbt_v1_5.token.size + 
  nse_nseix_mtbtndal_tbt_v1_5.opening_price.size + 
  nse_nseix_mtbtndal_tbt_v1_5.trade_high_price.size + 
  nse_nseix_mtbtndal_tbt_v1_5.trade_low_price.size + 
  nse_nseix_mtbtndal_tbt_v1_5.closing_price.size + 
  nse_nseix_mtbtndal_tbt_v1_5.last_traded_price.size + 
  nse_nseix_mtbtndal_tbt_v1_5.previous_close_price.size + 
  nse_nseix_mtbtndal_tbt_v1_5.settlement_price.size + 
  nse_nseix_mtbtndal_tbt_v1_5.total_traded_quantity.size + 
  nse_nseix_mtbtndal_tbt_v1_5.total_traded_value.size + 
  nse_nseix_mtbtndal_tbt_v1_5.statistics_open_interest.size + 
  nse_nseix_mtbtndal_tbt_v1_5.change_in_open_interest.size + 
  nse_nseix_mtbtndal_tbt_v1_5.session_indicator.size

-- Display: Market Statistics Information Message
nse_nseix_mtbtndal_tbt_v1_5.market_statistics_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Statistics Information Message
nse_nseix_mtbtndal_tbt_v1_5.market_statistics_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nseix_mtbtndal_tbt_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nseix_mtbtndal_tbt_v1_5.token.dissect(buffer, index, packet, parent)

  -- Opening Price: DOUBLE
  index, opening_price = nse_nseix_mtbtndal_tbt_v1_5.opening_price.dissect(buffer, index, packet, parent)

  -- Trade High Price: DOUBLE
  index, trade_high_price = nse_nseix_mtbtndal_tbt_v1_5.trade_high_price.dissect(buffer, index, packet, parent)

  -- Trade Low Price: DOUBLE
  index, trade_low_price = nse_nseix_mtbtndal_tbt_v1_5.trade_low_price.dissect(buffer, index, packet, parent)

  -- Closing Price: DOUBLE
  index, closing_price = nse_nseix_mtbtndal_tbt_v1_5.closing_price.dissect(buffer, index, packet, parent)

  -- Last Traded Price: DOUBLE
  index, last_traded_price = nse_nseix_mtbtndal_tbt_v1_5.last_traded_price.dissect(buffer, index, packet, parent)

  -- Previous Close Price: DOUBLE
  index, previous_close_price = nse_nseix_mtbtndal_tbt_v1_5.previous_close_price.dissect(buffer, index, packet, parent)

  -- Settlement Price: DOUBLE
  index, settlement_price = nse_nseix_mtbtndal_tbt_v1_5.settlement_price.dissect(buffer, index, packet, parent)

  -- Total Traded Quantity: INT
  index, total_traded_quantity = nse_nseix_mtbtndal_tbt_v1_5.total_traded_quantity.dissect(buffer, index, packet, parent)

  -- Total Traded Value: DOUBLE
  index, total_traded_value = nse_nseix_mtbtndal_tbt_v1_5.total_traded_value.dissect(buffer, index, packet, parent)

  -- Statistics Open Interest: INT
  index, statistics_open_interest = nse_nseix_mtbtndal_tbt_v1_5.statistics_open_interest.dissect(buffer, index, packet, parent)

  -- Change In Open Interest: INT
  index, change_in_open_interest = nse_nseix_mtbtndal_tbt_v1_5.change_in_open_interest.dissect(buffer, index, packet, parent)

  -- Session Indicator: SHORT
  index, session_indicator = nse_nseix_mtbtndal_tbt_v1_5.session_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Statistics Information Message
nse_nseix_mtbtndal_tbt_v1_5.market_statistics_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.market_statistics_information_message, buffer(offset, 0))
    local index = nse_nseix_mtbtndal_tbt_v1_5.market_statistics_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_mtbtndal_tbt_v1_5.market_statistics_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_mtbtndal_tbt_v1_5.market_statistics_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Indicative Price And Quantity Message
nse_nseix_mtbtndal_tbt_v1_5.indicative_price_and_quantity_message = {}

-- Size: Indicative Price And Quantity Message
nse_nseix_mtbtndal_tbt_v1_5.indicative_price_and_quantity_message.size =
  nse_nseix_mtbtndal_tbt_v1_5.timestamp.size + 
  nse_nseix_mtbtndal_tbt_v1_5.token.size + 
  nse_nseix_mtbtndal_tbt_v1_5.identifier.size + 
  nse_nseix_mtbtndal_tbt_v1_5.indicative_price.size + 
  nse_nseix_mtbtndal_tbt_v1_5.indicative_quantity.size

-- Display: Indicative Price And Quantity Message
nse_nseix_mtbtndal_tbt_v1_5.indicative_price_and_quantity_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indicative Price And Quantity Message
nse_nseix_mtbtndal_tbt_v1_5.indicative_price_and_quantity_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nseix_mtbtndal_tbt_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nseix_mtbtndal_tbt_v1_5.token.dissect(buffer, index, packet, parent)

  -- Identifier: CHAR
  index, identifier = nse_nseix_mtbtndal_tbt_v1_5.identifier.dissect(buffer, index, packet, parent)

  -- Indicative Price: INT
  index, indicative_price = nse_nseix_mtbtndal_tbt_v1_5.indicative_price.dissect(buffer, index, packet, parent)

  -- Indicative Quantity: INT
  index, indicative_quantity = nse_nseix_mtbtndal_tbt_v1_5.indicative_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Indicative Price And Quantity Message
nse_nseix_mtbtndal_tbt_v1_5.indicative_price_and_quantity_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.indicative_price_and_quantity_message, buffer(offset, 0))
    local index = nse_nseix_mtbtndal_tbt_v1_5.indicative_price_and_quantity_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_mtbtndal_tbt_v1_5.indicative_price_and_quantity_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_mtbtndal_tbt_v1_5.indicative_price_and_quantity_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Status Message
nse_nseix_mtbtndal_tbt_v1_5.market_status_message = {}

-- Size: Market Status Message
nse_nseix_mtbtndal_tbt_v1_5.market_status_message.size =
  nse_nseix_mtbtndal_tbt_v1_5.timestamp.size + 
  nse_nseix_mtbtndal_tbt_v1_5.instrument.size + 
  nse_nseix_mtbtndal_tbt_v1_5.status.size + 
  nse_nseix_mtbtndal_tbt_v1_5.session_indicator.size

-- Display: Market Status Message
nse_nseix_mtbtndal_tbt_v1_5.market_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Status Message
nse_nseix_mtbtndal_tbt_v1_5.market_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nseix_mtbtndal_tbt_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: CHAR
  index, instrument = nse_nseix_mtbtndal_tbt_v1_5.instrument.dissect(buffer, index, packet, parent)

  -- Status: SHORT
  index, status = nse_nseix_mtbtndal_tbt_v1_5.status.dissect(buffer, index, packet, parent)

  -- Session Indicator: SHORT
  index, session_indicator = nse_nseix_mtbtndal_tbt_v1_5.session_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Status Message
nse_nseix_mtbtndal_tbt_v1_5.market_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.market_status_message, buffer(offset, 0))
    local index = nse_nseix_mtbtndal_tbt_v1_5.market_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_mtbtndal_tbt_v1_5.market_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_mtbtndal_tbt_v1_5.market_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Spread Trade Message
nse_nseix_mtbtndal_tbt_v1_5.spread_trade_message = {}

-- Size: Spread Trade Message
nse_nseix_mtbtndal_tbt_v1_5.spread_trade_message.size =
  nse_nseix_mtbtndal_tbt_v1_5.timestamp.size + 
  nse_nseix_mtbtndal_tbt_v1_5.buy_order_id.size + 
  nse_nseix_mtbtndal_tbt_v1_5.sell_order_id.size + 
  nse_nseix_mtbtndal_tbt_v1_5.token.size + 
  nse_nseix_mtbtndal_tbt_v1_5.trade_price.size + 
  nse_nseix_mtbtndal_tbt_v1_5.quantity.size

-- Display: Spread Trade Message
nse_nseix_mtbtndal_tbt_v1_5.spread_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Trade Message
nse_nseix_mtbtndal_tbt_v1_5.spread_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nseix_mtbtndal_tbt_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Buy Order Id: DOUBLE
  index, buy_order_id = nse_nseix_mtbtndal_tbt_v1_5.buy_order_id.dissect(buffer, index, packet, parent)

  -- Sell Order Id: DOUBLE
  index, sell_order_id = nse_nseix_mtbtndal_tbt_v1_5.sell_order_id.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nseix_mtbtndal_tbt_v1_5.token.dissect(buffer, index, packet, parent)

  -- Trade Price: INT
  index, trade_price = nse_nseix_mtbtndal_tbt_v1_5.trade_price.dissect(buffer, index, packet, parent)

  -- Quantity: INT
  index, quantity = nse_nseix_mtbtndal_tbt_v1_5.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Trade Message
nse_nseix_mtbtndal_tbt_v1_5.spread_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.spread_trade_message, buffer(offset, 0))
    local index = nse_nseix_mtbtndal_tbt_v1_5.spread_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_mtbtndal_tbt_v1_5.spread_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_mtbtndal_tbt_v1_5.spread_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Spread Order Cancellation Message
nse_nseix_mtbtndal_tbt_v1_5.spread_order_cancellation_message = {}

-- Size: Spread Order Cancellation Message
nse_nseix_mtbtndal_tbt_v1_5.spread_order_cancellation_message.size =
  nse_nseix_mtbtndal_tbt_v1_5.timestamp.size + 
  nse_nseix_mtbtndal_tbt_v1_5.order_id.size + 
  nse_nseix_mtbtndal_tbt_v1_5.token.size + 
  nse_nseix_mtbtndal_tbt_v1_5.order_type.size + 
  nse_nseix_mtbtndal_tbt_v1_5.price.size + 
  nse_nseix_mtbtndal_tbt_v1_5.quantity.size

-- Display: Spread Order Cancellation Message
nse_nseix_mtbtndal_tbt_v1_5.spread_order_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Order Cancellation Message
nse_nseix_mtbtndal_tbt_v1_5.spread_order_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nseix_mtbtndal_tbt_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: DOUBLE
  index, order_id = nse_nseix_mtbtndal_tbt_v1_5.order_id.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nseix_mtbtndal_tbt_v1_5.token.dissect(buffer, index, packet, parent)

  -- Order Type: CHAR
  index, order_type = nse_nseix_mtbtndal_tbt_v1_5.order_type.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nseix_mtbtndal_tbt_v1_5.price.dissect(buffer, index, packet, parent)

  -- Quantity: INT
  index, quantity = nse_nseix_mtbtndal_tbt_v1_5.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Order Cancellation Message
nse_nseix_mtbtndal_tbt_v1_5.spread_order_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.spread_order_cancellation_message, buffer(offset, 0))
    local index = nse_nseix_mtbtndal_tbt_v1_5.spread_order_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_mtbtndal_tbt_v1_5.spread_order_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_mtbtndal_tbt_v1_5.spread_order_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Spread Order Modification Message
nse_nseix_mtbtndal_tbt_v1_5.spread_order_modification_message = {}

-- Size: Spread Order Modification Message
nse_nseix_mtbtndal_tbt_v1_5.spread_order_modification_message.size =
  nse_nseix_mtbtndal_tbt_v1_5.timestamp.size + 
  nse_nseix_mtbtndal_tbt_v1_5.order_id.size + 
  nse_nseix_mtbtndal_tbt_v1_5.token.size + 
  nse_nseix_mtbtndal_tbt_v1_5.order_type.size + 
  nse_nseix_mtbtndal_tbt_v1_5.price.size + 
  nse_nseix_mtbtndal_tbt_v1_5.quantity.size

-- Display: Spread Order Modification Message
nse_nseix_mtbtndal_tbt_v1_5.spread_order_modification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Order Modification Message
nse_nseix_mtbtndal_tbt_v1_5.spread_order_modification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nseix_mtbtndal_tbt_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: DOUBLE
  index, order_id = nse_nseix_mtbtndal_tbt_v1_5.order_id.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nseix_mtbtndal_tbt_v1_5.token.dissect(buffer, index, packet, parent)

  -- Order Type: CHAR
  index, order_type = nse_nseix_mtbtndal_tbt_v1_5.order_type.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nseix_mtbtndal_tbt_v1_5.price.dissect(buffer, index, packet, parent)

  -- Quantity: INT
  index, quantity = nse_nseix_mtbtndal_tbt_v1_5.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Order Modification Message
nse_nseix_mtbtndal_tbt_v1_5.spread_order_modification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.spread_order_modification_message, buffer(offset, 0))
    local index = nse_nseix_mtbtndal_tbt_v1_5.spread_order_modification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_mtbtndal_tbt_v1_5.spread_order_modification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_mtbtndal_tbt_v1_5.spread_order_modification_message.fields(buffer, offset, packet, parent)
  end
end

-- New Spread Order Message
nse_nseix_mtbtndal_tbt_v1_5.new_spread_order_message = {}

-- Size: New Spread Order Message
nse_nseix_mtbtndal_tbt_v1_5.new_spread_order_message.size =
  nse_nseix_mtbtndal_tbt_v1_5.timestamp.size + 
  nse_nseix_mtbtndal_tbt_v1_5.order_id.size + 
  nse_nseix_mtbtndal_tbt_v1_5.token.size + 
  nse_nseix_mtbtndal_tbt_v1_5.order_type.size + 
  nse_nseix_mtbtndal_tbt_v1_5.price.size + 
  nse_nseix_mtbtndal_tbt_v1_5.quantity.size

-- Display: New Spread Order Message
nse_nseix_mtbtndal_tbt_v1_5.new_spread_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Spread Order Message
nse_nseix_mtbtndal_tbt_v1_5.new_spread_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nseix_mtbtndal_tbt_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: DOUBLE
  index, order_id = nse_nseix_mtbtndal_tbt_v1_5.order_id.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nseix_mtbtndal_tbt_v1_5.token.dissect(buffer, index, packet, parent)

  -- Order Type: CHAR
  index, order_type = nse_nseix_mtbtndal_tbt_v1_5.order_type.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nseix_mtbtndal_tbt_v1_5.price.dissect(buffer, index, packet, parent)

  -- Quantity: INT
  index, quantity = nse_nseix_mtbtndal_tbt_v1_5.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Spread Order Message
nse_nseix_mtbtndal_tbt_v1_5.new_spread_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.new_spread_order_message, buffer(offset, 0))
    local index = nse_nseix_mtbtndal_tbt_v1_5.new_spread_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_mtbtndal_tbt_v1_5.new_spread_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_mtbtndal_tbt_v1_5.new_spread_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
nse_nseix_mtbtndal_tbt_v1_5.trade_message = {}

-- Size: Trade Message
nse_nseix_mtbtndal_tbt_v1_5.trade_message.size =
  nse_nseix_mtbtndal_tbt_v1_5.timestamp.size + 
  nse_nseix_mtbtndal_tbt_v1_5.buy_order_id.size + 
  nse_nseix_mtbtndal_tbt_v1_5.sell_order_id.size + 
  nse_nseix_mtbtndal_tbt_v1_5.token.size + 
  nse_nseix_mtbtndal_tbt_v1_5.trade_price.size + 
  nse_nseix_mtbtndal_tbt_v1_5.trade_quantity.size

-- Display: Trade Message
nse_nseix_mtbtndal_tbt_v1_5.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
nse_nseix_mtbtndal_tbt_v1_5.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nseix_mtbtndal_tbt_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Buy Order Id: DOUBLE
  index, buy_order_id = nse_nseix_mtbtndal_tbt_v1_5.buy_order_id.dissect(buffer, index, packet, parent)

  -- Sell Order Id: DOUBLE
  index, sell_order_id = nse_nseix_mtbtndal_tbt_v1_5.sell_order_id.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nseix_mtbtndal_tbt_v1_5.token.dissect(buffer, index, packet, parent)

  -- Trade Price: INT
  index, trade_price = nse_nseix_mtbtndal_tbt_v1_5.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Quantity: INT
  index, trade_quantity = nse_nseix_mtbtndal_tbt_v1_5.trade_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
nse_nseix_mtbtndal_tbt_v1_5.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.trade_message, buffer(offset, 0))
    local index = nse_nseix_mtbtndal_tbt_v1_5.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_mtbtndal_tbt_v1_5.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_mtbtndal_tbt_v1_5.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancellation Message
nse_nseix_mtbtndal_tbt_v1_5.order_cancellation_message = {}

-- Size: Order Cancellation Message
nse_nseix_mtbtndal_tbt_v1_5.order_cancellation_message.size =
  nse_nseix_mtbtndal_tbt_v1_5.timestamp.size + 
  nse_nseix_mtbtndal_tbt_v1_5.order_id.size + 
  nse_nseix_mtbtndal_tbt_v1_5.token.size + 
  nse_nseix_mtbtndal_tbt_v1_5.order_type.size + 
  nse_nseix_mtbtndal_tbt_v1_5.price.size + 
  nse_nseix_mtbtndal_tbt_v1_5.quantity.size

-- Display: Order Cancellation Message
nse_nseix_mtbtndal_tbt_v1_5.order_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancellation Message
nse_nseix_mtbtndal_tbt_v1_5.order_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nseix_mtbtndal_tbt_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: DOUBLE
  index, order_id = nse_nseix_mtbtndal_tbt_v1_5.order_id.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nseix_mtbtndal_tbt_v1_5.token.dissect(buffer, index, packet, parent)

  -- Order Type: CHAR
  index, order_type = nse_nseix_mtbtndal_tbt_v1_5.order_type.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nseix_mtbtndal_tbt_v1_5.price.dissect(buffer, index, packet, parent)

  -- Quantity: INT
  index, quantity = nse_nseix_mtbtndal_tbt_v1_5.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancellation Message
nse_nseix_mtbtndal_tbt_v1_5.order_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.order_cancellation_message, buffer(offset, 0))
    local index = nse_nseix_mtbtndal_tbt_v1_5.order_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_mtbtndal_tbt_v1_5.order_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_mtbtndal_tbt_v1_5.order_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Modification Message
nse_nseix_mtbtndal_tbt_v1_5.order_modification_message = {}

-- Size: Order Modification Message
nse_nseix_mtbtndal_tbt_v1_5.order_modification_message.size =
  nse_nseix_mtbtndal_tbt_v1_5.timestamp.size + 
  nse_nseix_mtbtndal_tbt_v1_5.order_id.size + 
  nse_nseix_mtbtndal_tbt_v1_5.token.size + 
  nse_nseix_mtbtndal_tbt_v1_5.order_type.size + 
  nse_nseix_mtbtndal_tbt_v1_5.price.size + 
  nse_nseix_mtbtndal_tbt_v1_5.quantity.size

-- Display: Order Modification Message
nse_nseix_mtbtndal_tbt_v1_5.order_modification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modification Message
nse_nseix_mtbtndal_tbt_v1_5.order_modification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nseix_mtbtndal_tbt_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: DOUBLE
  index, order_id = nse_nseix_mtbtndal_tbt_v1_5.order_id.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nseix_mtbtndal_tbt_v1_5.token.dissect(buffer, index, packet, parent)

  -- Order Type: CHAR
  index, order_type = nse_nseix_mtbtndal_tbt_v1_5.order_type.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nseix_mtbtndal_tbt_v1_5.price.dissect(buffer, index, packet, parent)

  -- Quantity: INT
  index, quantity = nse_nseix_mtbtndal_tbt_v1_5.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modification Message
nse_nseix_mtbtndal_tbt_v1_5.order_modification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.order_modification_message, buffer(offset, 0))
    local index = nse_nseix_mtbtndal_tbt_v1_5.order_modification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_mtbtndal_tbt_v1_5.order_modification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_mtbtndal_tbt_v1_5.order_modification_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Message
nse_nseix_mtbtndal_tbt_v1_5.new_order_message = {}

-- Size: New Order Message
nse_nseix_mtbtndal_tbt_v1_5.new_order_message.size =
  nse_nseix_mtbtndal_tbt_v1_5.timestamp.size + 
  nse_nseix_mtbtndal_tbt_v1_5.order_id.size + 
  nse_nseix_mtbtndal_tbt_v1_5.token.size + 
  nse_nseix_mtbtndal_tbt_v1_5.order_type.size + 
  nse_nseix_mtbtndal_tbt_v1_5.price.size + 
  nse_nseix_mtbtndal_tbt_v1_5.quantity.size

-- Display: New Order Message
nse_nseix_mtbtndal_tbt_v1_5.new_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Message
nse_nseix_mtbtndal_tbt_v1_5.new_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nseix_mtbtndal_tbt_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: DOUBLE
  index, order_id = nse_nseix_mtbtndal_tbt_v1_5.order_id.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nseix_mtbtndal_tbt_v1_5.token.dissect(buffer, index, packet, parent)

  -- Order Type: CHAR
  index, order_type = nse_nseix_mtbtndal_tbt_v1_5.order_type.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nseix_mtbtndal_tbt_v1_5.price.dissect(buffer, index, packet, parent)

  -- Quantity: INT
  index, quantity = nse_nseix_mtbtndal_tbt_v1_5.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Message
nse_nseix_mtbtndal_tbt_v1_5.new_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.new_order_message, buffer(offset, 0))
    local index = nse_nseix_mtbtndal_tbt_v1_5.new_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_mtbtndal_tbt_v1_5.new_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_mtbtndal_tbt_v1_5.new_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Spread Contract Information Message
nse_nseix_mtbtndal_tbt_v1_5.spread_contract_information_message = {}

-- Size: Spread Contract Information Message
nse_nseix_mtbtndal_tbt_v1_5.spread_contract_information_message.size =
  nse_nseix_mtbtndal_tbt_v1_5.timestamp.size + 
  nse_nseix_mtbtndal_tbt_v1_5.contract_stream_id.size + 
  nse_nseix_mtbtndal_tbt_v1_5.token_1.size + 
  nse_nseix_mtbtndal_tbt_v1_5.token_2.size + 
  nse_nseix_mtbtndal_tbt_v1_5.day_low_price_diff_range.size + 
  nse_nseix_mtbtndal_tbt_v1_5.day_high_price_diff_range.size + 
  nse_nseix_mtbtndal_tbt_v1_5.operating_range_low_price_diff_range.size + 
  nse_nseix_mtbtndal_tbt_v1_5.operating_range_high_price_diff_range.size

-- Display: Spread Contract Information Message
nse_nseix_mtbtndal_tbt_v1_5.spread_contract_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Contract Information Message
nse_nseix_mtbtndal_tbt_v1_5.spread_contract_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nseix_mtbtndal_tbt_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Contract Stream Id: SHORT
  index, contract_stream_id = nse_nseix_mtbtndal_tbt_v1_5.contract_stream_id.dissect(buffer, index, packet, parent)

  -- Token 1: INT
  index, token_1 = nse_nseix_mtbtndal_tbt_v1_5.token_1.dissect(buffer, index, packet, parent)

  -- Token 2: INT
  index, token_2 = nse_nseix_mtbtndal_tbt_v1_5.token_2.dissect(buffer, index, packet, parent)

  -- Day Low Price Diff Range: INT
  index, day_low_price_diff_range = nse_nseix_mtbtndal_tbt_v1_5.day_low_price_diff_range.dissect(buffer, index, packet, parent)

  -- Day High Price Diff Range: INT
  index, day_high_price_diff_range = nse_nseix_mtbtndal_tbt_v1_5.day_high_price_diff_range.dissect(buffer, index, packet, parent)

  -- Operating Range Low Price Diff Range: INT
  index, operating_range_low_price_diff_range = nse_nseix_mtbtndal_tbt_v1_5.operating_range_low_price_diff_range.dissect(buffer, index, packet, parent)

  -- Operating Range High Price Diff Range: INT
  index, operating_range_high_price_diff_range = nse_nseix_mtbtndal_tbt_v1_5.operating_range_high_price_diff_range.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Contract Information Message
nse_nseix_mtbtndal_tbt_v1_5.spread_contract_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.spread_contract_information_message, buffer(offset, 0))
    local index = nse_nseix_mtbtndal_tbt_v1_5.spread_contract_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_mtbtndal_tbt_v1_5.spread_contract_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_mtbtndal_tbt_v1_5.spread_contract_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Contract Information Message
nse_nseix_mtbtndal_tbt_v1_5.contract_information_message = {}

-- Size: Contract Information Message
nse_nseix_mtbtndal_tbt_v1_5.contract_information_message.size =
  nse_nseix_mtbtndal_tbt_v1_5.timestamp.size + 
  nse_nseix_mtbtndal_tbt_v1_5.contract_stream_id.size + 
  nse_nseix_mtbtndal_tbt_v1_5.token_number.size + 
  nse_nseix_mtbtndal_tbt_v1_5.instrument.size + 
  nse_nseix_mtbtndal_tbt_v1_5.symbol.size + 
  nse_nseix_mtbtndal_tbt_v1_5.expiry_date.size + 
  nse_nseix_mtbtndal_tbt_v1_5.strike_price.size + 
  nse_nseix_mtbtndal_tbt_v1_5.option_type.size + 
  nse_nseix_mtbtndal_tbt_v1_5.low_price_range.size + 
  nse_nseix_mtbtndal_tbt_v1_5.high_price_range.size + 
  nse_nseix_mtbtndal_tbt_v1_5.daily_contract_indicator.size

-- Display: Contract Information Message
nse_nseix_mtbtndal_tbt_v1_5.contract_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Contract Information Message
nse_nseix_mtbtndal_tbt_v1_5.contract_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nseix_mtbtndal_tbt_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Contract Stream Id: SHORT
  index, contract_stream_id = nse_nseix_mtbtndal_tbt_v1_5.contract_stream_id.dissect(buffer, index, packet, parent)

  -- Token Number: INT
  index, token_number = nse_nseix_mtbtndal_tbt_v1_5.token_number.dissect(buffer, index, packet, parent)

  -- Instrument: CHAR
  index, instrument = nse_nseix_mtbtndal_tbt_v1_5.instrument.dissect(buffer, index, packet, parent)

  -- Symbol: CHAR
  index, symbol = nse_nseix_mtbtndal_tbt_v1_5.symbol.dissect(buffer, index, packet, parent)

  -- Expiry Date: INT
  index, expiry_date = nse_nseix_mtbtndal_tbt_v1_5.expiry_date.dissect(buffer, index, packet, parent)

  -- Strike Price: INT
  index, strike_price = nse_nseix_mtbtndal_tbt_v1_5.strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: CHAR
  index, option_type = nse_nseix_mtbtndal_tbt_v1_5.option_type.dissect(buffer, index, packet, parent)

  -- Low Price Range: INT
  index, low_price_range = nse_nseix_mtbtndal_tbt_v1_5.low_price_range.dissect(buffer, index, packet, parent)

  -- High Price Range: INT
  index, high_price_range = nse_nseix_mtbtndal_tbt_v1_5.high_price_range.dissect(buffer, index, packet, parent)

  -- Daily Contract Indicator: CHAR
  index, daily_contract_indicator = nse_nseix_mtbtndal_tbt_v1_5.daily_contract_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Contract Information Message
nse_nseix_mtbtndal_tbt_v1_5.contract_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.contract_information_message, buffer(offset, 0))
    local index = nse_nseix_mtbtndal_tbt_v1_5.contract_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_mtbtndal_tbt_v1_5.contract_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_mtbtndal_tbt_v1_5.contract_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nse_nseix_mtbtndal_tbt_v1_5.payload = {}

-- Dispatch: Payload
nse_nseix_mtbtndal_tbt_v1_5.payload.dispatch = {
  ["c"] = nse_nseix_mtbtndal_tbt_v1_5.contract_information_message.dissect,
  ["d"] = nse_nseix_mtbtndal_tbt_v1_5.spread_contract_information_message.dissect,
  ["N"] = nse_nseix_mtbtndal_tbt_v1_5.new_order_message.dissect,
  ["M"] = nse_nseix_mtbtndal_tbt_v1_5.order_modification_message.dissect,
  ["X"] = nse_nseix_mtbtndal_tbt_v1_5.order_cancellation_message.dissect,
  ["T"] = nse_nseix_mtbtndal_tbt_v1_5.trade_message.dissect,
  ["G"] = nse_nseix_mtbtndal_tbt_v1_5.new_spread_order_message.dissect,
  ["H"] = nse_nseix_mtbtndal_tbt_v1_5.spread_order_modification_message.dissect,
  ["J"] = nse_nseix_mtbtndal_tbt_v1_5.spread_order_cancellation_message.dissect,
  ["K"] = nse_nseix_mtbtndal_tbt_v1_5.spread_trade_message.dissect,
  ["S"] = nse_nseix_mtbtndal_tbt_v1_5.market_status_message.dissect,
  ["P"] = nse_nseix_mtbtndal_tbt_v1_5.indicative_price_and_quantity_message.dissect,
  ["f"] = nse_nseix_mtbtndal_tbt_v1_5.market_statistics_information_message.dissect,
  ["o"] = nse_nseix_mtbtndal_tbt_v1_5.open_interest_message.dissect,
  ["Z"] = nse_nseix_mtbtndal_tbt_v1_5.heartbeat_message.dissect,
}

-- Dissect: Payload
nse_nseix_mtbtndal_tbt_v1_5.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = nse_nseix_mtbtndal_tbt_v1_5.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message
nse_nseix_mtbtndal_tbt_v1_5.message = {}

-- Display: Message
nse_nseix_mtbtndal_tbt_v1_5.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nse_nseix_mtbtndal_tbt_v1_5.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Type: Char
  index, message_type = nse_nseix_mtbtndal_tbt_v1_5.message_type.dissect(buffer, index, packet, parent)

  -- Dependency for Payload
  local end_of_payload = offset + size_of_message

  -- Payload: Runtime Type with 15 branches
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Payload: Runtime Type with 15 branches
    index = nse_nseix_mtbtndal_tbt_v1_5.payload.dissect(buffer, index, packet, parent, message_type)
  end

  return index
end

-- Dissect: Message
nse_nseix_mtbtndal_tbt_v1_5.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Its fields read only its own bytes: a layout running past them is marked, not raised
  local bounded = buffer(0, math.min(index, buffer:len())):tvb()

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.message, buffer(offset, 0))
    local decoded, failure = pcall(nse_nseix_mtbtndal_tbt_v1_5.message.fields, bounded, offset, packet, parent, size_of_message)
    if not decoded then
      undecoded(failure, parent, nse_nseix_mtbtndal_tbt_v1_5.experts.undecoded, "Message does not decode within its "..size_of_message.." bytes")
    end
    parent:set_len(size_of_message)
    local display = nse_nseix_mtbtndal_tbt_v1_5.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    local decoded, failure = pcall(nse_nseix_mtbtndal_tbt_v1_5.message.fields, bounded, offset, packet, parent, size_of_message)
    if not decoded then
      undecoded(failure, parent, nse_nseix_mtbtndal_tbt_v1_5.experts.undecoded, "Message does not decode within its "..size_of_message.." bytes")
    end

    return index
  end
end

-- Stream Header
nse_nseix_mtbtndal_tbt_v1_5.stream_header = {}

-- Size: Stream Header
nse_nseix_mtbtndal_tbt_v1_5.stream_header.size =
  nse_nseix_mtbtndal_tbt_v1_5.message_length.size + 
  nse_nseix_mtbtndal_tbt_v1_5.stream_id.size + 
  nse_nseix_mtbtndal_tbt_v1_5.sequence_number.size

-- Display: Stream Header
nse_nseix_mtbtndal_tbt_v1_5.stream_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Header
nse_nseix_mtbtndal_tbt_v1_5.stream_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: Short
  index, message_length = nse_nseix_mtbtndal_tbt_v1_5.message_length.dissect(buffer, index, packet, parent)

  -- Stream Id: SHORT
  index, stream_id = nse_nseix_mtbtndal_tbt_v1_5.stream_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: Uint
  index, sequence_number = nse_nseix_mtbtndal_tbt_v1_5.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Header
nse_nseix_mtbtndal_tbt_v1_5.stream_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5.fields.stream_header, buffer(offset, 0))
    local index = nse_nseix_mtbtndal_tbt_v1_5.stream_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_mtbtndal_tbt_v1_5.stream_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_mtbtndal_tbt_v1_5.stream_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nse_nseix_mtbtndal_tbt_v1_5.packet = {}

-- Verify required size of Udp packet
nse_nseix_mtbtndal_tbt_v1_5.packet.requiredsize = function(buffer)
  return buffer:len() >= nse_nseix_mtbtndal_tbt_v1_5.stream_header.size
end

-- Dissect Packet
nse_nseix_mtbtndal_tbt_v1_5.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Stream Header: Struct of 3 fields
  index, stream_header = nse_nseix_mtbtndal_tbt_v1_5.stream_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(index - 8, 2):le_int()

  -- Runtime Size Of: Message
  local size_of_message = message_length - 8

  -- Message: Struct of 2 fields
  index, message = nse_nseix_mtbtndal_tbt_v1_5.message.dissect(buffer, index, packet, parent, size_of_message)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nse_nseix_mtbtndal_tbt_v1_5.init()
end

-- Dissector for Nse NseIx MtbtNdal Tbt 1.5
function omi_nse_nseix_mtbtndal_tbt_v1_5.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nse_nseix_mtbtndal_tbt_v1_5.name

  -- Dissect protocol
  local protocol = parent:add(omi_nse_nseix_mtbtndal_tbt_v1_5, buffer(), omi_nse_nseix_mtbtndal_tbt_v1_5.description, "("..buffer:len().." Bytes)")
  return nse_nseix_mtbtndal_tbt_v1_5.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nse NseIx MtbtNdal Tbt 1.5 (Udp)
local function omi_nse_nseix_mtbtndal_tbt_v1_5_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nse_nseix_mtbtndal_tbt_v1_5.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nse_nseix_mtbtndal_tbt_v1_5
  omi_nse_nseix_mtbtndal_tbt_v1_5.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nse NseIx MtbtNdal Tbt 1.5
omi_nse_nseix_mtbtndal_tbt_v1_5:register_heuristic("udp", omi_nse_nseix_mtbtndal_tbt_v1_5_udp_heuristic)

-- Register Nse NseIx MtbtNdal Tbt 1.5 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nse_nseix_mtbtndal_tbt_v1_5)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Stock Exchange of India Ltd
--   Version: 1.5
--   Date: Monday, October 13, 2025
--   Specification: NDAL_NSEIXMTBTAPIv1_20260324142257.pdf
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
