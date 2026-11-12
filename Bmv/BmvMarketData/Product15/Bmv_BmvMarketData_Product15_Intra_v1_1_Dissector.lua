-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Bmv BmvMarketData Product15 Intra 1.1 Protocol
local omi_bmv_bmvmarketdata_product15_intra_v1_1 = Proto("Omi.Bmv.BmvMarketData.Product15.Intra.v1.1", "Bmv BmvMarketData Product15 Intra 1.1")

-- Protocol table
local bmv_bmvmarketdata_product15_intra_v1_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Bmv BmvMarketData Product15 Intra 1.1 Fields
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.amount = ProtoField.new("Amount", "bmv.bmvmarketdata.product15.intra.v1.1.amount", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.auction_indicator = ProtoField.new("Auction Indicator", "bmv.bmvmarketdata.product15.intra.v1.1.auctionindicator", ftypes.STRING, nil, nil, nil, "\"P\" – Opening Auction \"S\" – Other Auctions \" \" – Continuous Market \"N\" – Not Applicable")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.average = ProtoField.new("Average", "bmv.bmvmarketdata.product15.intra.v1.1.average", ftypes.DOUBLE, nil, nil, nil, "Average price of the day")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.beginning_time_of_auction = ProtoField.new("Beginning Time Of Auction", "bmv.bmvmarketdata.product15.intra.v1.1.beginningtimeofauction", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time at which auction begins")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.beginning_time_of_auction_utc = ProtoField.new("Beginning Time Of Auction", "bmv.bmvmarketdata.product15.intra.v1.1.beginningtimeofauction.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time at which auction begins")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.book_value = ProtoField.new("Book Value", "bmv.bmvmarketdata.product15.intra.v1.1.bookvalue", ftypes.DOUBLE, nil, nil, nil, "Book value by stock")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.buy = ProtoField.new("Buy", "bmv.bmvmarketdata.product15.intra.v1.1.buy", ftypes.STRING, nil, nil, nil, "Buyers’ brokerage house short key")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.buy_volume = ProtoField.new("Buy Volume", "bmv.bmvmarketdata.product15.intra.v1.1.buyvolume", ftypes.INT64)
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.concertation = ProtoField.new("Concertation", "bmv.bmvmarketdata.product15.intra.v1.1.concertation", ftypes.STRING, nil, nil, nil, "See the table of Concertation Type Catalog on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.concertation_type = ProtoField.new("Concertation Type", "bmv.bmvmarketdata.product15.intra.v1.1.concertationtype", ftypes.STRING, nil, nil, nil, "See the table of Concertation Type Catalog on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.date = ProtoField.new("Date", "bmv.bmvmarketdata.product15.intra.v1.1.date", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date for the addition of order")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.date_utc = ProtoField.new("Date", "bmv.bmvmarketdata.product15.intra.v1.1.date.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date for the addition of order")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.date_and_time = ProtoField.new("Date And Time", "bmv.bmvmarketdata.product15.intra.v1.1.dateandtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date and time for the addition of order")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.date_and_time_utc = ProtoField.new("Date And Time", "bmv.bmvmarketdata.product15.intra.v1.1.dateandtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date and time for the addition of order")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.datetime = ProtoField.new("Datetime", "bmv.bmvmarketdata.product15.intra.v1.1.datetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date and time the packet is created")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.datetime_utc = ProtoField.new("Datetime", "bmv.bmvmarketdata.product15.intra.v1.1.datetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date and time the packet is created")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.direction = ProtoField.new("Direction", "bmv.bmvmarketdata.product15.intra.v1.1.direction", ftypes.STRING, nil, nil, nil, "C - Buy V - Sell")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.end_auction_time = ProtoField.new("End Auction Time", "bmv.bmvmarketdata.product15.intra.v1.1.endauctiontime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time at which auction ends")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.end_auction_time_utc = ProtoField.new("End Auction Time", "bmv.bmvmarketdata.product15.intra.v1.1.endauctiontime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time at which auction ends")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.ending_time = ProtoField.new("Ending Time", "bmv.bmvmarketdata.product15.intra.v1.1.endingtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Recess official ending time. Only used when an official recess or automatic recess occurred.")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.ending_time_utc = ProtoField.new("Ending Time", "bmv.bmvmarketdata.product15.intra.v1.1.endingtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Recess official ending time. Only used when an official recess or automatic recess occurred.")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.event_code = ProtoField.new("Event Code", "bmv.bmvmarketdata.product15.intra.v1.1.eventcode", ftypes.STRING, nil, nil, nil, "See the table of System Event Codes Catalog on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.execution_price = ProtoField.new("Execution Price", "bmv.bmvmarketdata.product15.intra.v1.1.executionprice", ftypes.DOUBLE, nil, nil, nil, "Price with which the trade was made.")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.existing_postures = ProtoField.new("Existing Postures", "bmv.bmvmarketdata.product15.intra.v1.1.existingpostures", ftypes.STRING, nil, nil, nil, "For value equal to \"1\", True (there are postures), otherwise False (there are no postures).")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.firm = ProtoField.new("Firm", "bmv.bmvmarketdata.product15.intra.v1.1.firm", ftypes.STRING, nil, nil, nil, "Managing Brokerage Firm")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.income = ProtoField.new("Income", "bmv.bmvmarketdata.product15.intra.v1.1.income", ftypes.STRING, nil, nil, nil, "V-Variable income F-Fixed Income W-Warrants")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.instrument_number = ProtoField.new("Instrument Number", "bmv.bmvmarketdata.product15.intra.v1.1.instrumentnumber", ftypes.INT32, nil, nil, nil, "Always zero")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.instrument_status = ProtoField.new("Instrument Status", "bmv.bmvmarketdata.product15.intra.v1.1.instrumentstatus", ftypes.STRING, nil, nil, nil, "See the table of Instrument Status Catalog on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.issuer = ProtoField.new("Issuer", "bmv.bmvmarketdata.product15.intra.v1.1.issuer", ftypes.STRING, nil, nil, nil, "Issuers code")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.last = ProtoField.new("Last", "bmv.bmvmarketdata.product15.intra.v1.1.last", ftypes.DOUBLE, nil, nil, nil, "Last time price")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.length = ProtoField.new("Length", "bmv.bmvmarketdata.product15.intra.v1.1.length", ftypes.INT16, nil, nil, nil, "Packet length, including header and all attached messages")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.market = ProtoField.new("Market", "bmv.bmvmarketdata.product15.intra.v1.1.market", ftypes.STRING, nil, nil, nil, "See the table of Markets Catalog (only used when there is an official recess) on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.market_data_group = ProtoField.new("Market Data Group", "bmv.bmvmarketdata.product15.intra.v1.1.marketdatagroup", ftypes.INT8, nil, nil, nil, "See Market Data Groups Catalog")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.maximum = ProtoField.new("Maximum", "bmv.bmvmarketdata.product15.intra.v1.1.maximum", ftypes.DOUBLE, nil, nil, nil, "Maximum price")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.maximum_volume = ProtoField.new("Maximum Volume", "bmv.bmvmarketdata.product15.intra.v1.1.maximumvolume", ftypes.INT64)
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.message_length = ProtoField.new("Message Length", "bmv.bmvmarketdata.product15.intra.v1.1.messagelength", ftypes.INT16, nil, nil, nil, "Indicates message length contained in this message block")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.message_type = ProtoField.new("Message Type", "bmv.bmvmarketdata.product15.intra.v1.1.messagetype", ftypes.UINT8, nil, nil, nil, "Code identifying the message")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.minimum = ProtoField.new("Minimum", "bmv.bmvmarketdata.product15.intra.v1.1.minimum", ftypes.DOUBLE, nil, nil, nil, "Minimum price")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.movement = ProtoField.new("Movement", "bmv.bmvmarketdata.product15.intra.v1.1.movement", ftypes.STRING, nil, nil, nil, "A-Registry operation U-Operation authorization C-Placement operation B-Delete operation")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.new_date = ProtoField.new("New Date", "bmv.bmvmarketdata.product15.intra.v1.1.newdate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "New Date and time when the order was registered (Document label: Original date)")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.new_date_utc = ProtoField.new("New Date", "bmv.bmvmarketdata.product15.intra.v1.1.newdate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "New Date and time when the order was registered (Document label: Original date)")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.new_number = ProtoField.new("New Number", "bmv.bmvmarketdata.product15.intra.v1.1.newnumber", ftypes.INT32, nil, nil, nil, "Number allocated to the new order")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.number = ProtoField.new("Number", "bmv.bmvmarketdata.product15.intra.v1.1.number", ftypes.INT32, nil, nil, nil, "Virtual trade number")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.number_of_buy_transactions = ProtoField.new("Number Of Buy Transactions", "bmv.bmvmarketdata.product15.intra.v1.1.numberofbuytransactions", ftypes.INT32)
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.number_of_operations = ProtoField.new("Number Of Operations", "bmv.bmvmarketdata.product15.intra.v1.1.numberofoperations", ftypes.INT32)
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.number_of_sales_transactions = ProtoField.new("Number Of Sales Transactions", "bmv.bmvmarketdata.product15.intra.v1.1.numberofsalestransactions", ftypes.INT32)
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.offer_type = ProtoField.new("Offer Type", "bmv.bmvmarketdata.product15.intra.v1.1.offertype", ftypes.STRING, nil, nil, nil, "See the Public Offerings Catalog on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.opening_price = ProtoField.new("Opening Price", "bmv.bmvmarketdata.product15.intra.v1.1.openingprice", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.operation_type = ProtoField.new("Operation Type", "bmv.bmvmarketdata.product15.intra.v1.1.operationtype", ftypes.STRING, nil, nil, nil, "See the table of Type of Operation Catalog on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.original_date = ProtoField.new("Original Date", "bmv.bmvmarketdata.product15.intra.v1.1.originaldate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date and time when the order was registered")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.original_date_utc = ProtoField.new("Original Date", "bmv.bmvmarketdata.product15.intra.v1.1.originaldate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date and time when the order was registered")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.original_number = ProtoField.new("Original Number", "bmv.bmvmarketdata.product15.intra.v1.1.originalnumber", ftypes.INT32, nil, nil, nil, "Number originally allocated to the order")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.participant = ProtoField.new("Participant", "bmv.bmvmarketdata.product15.intra.v1.1.participant", ftypes.STRING, nil, nil, nil, "Short key of participant")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.price = ProtoField.new("Price", "bmv.bmvmarketdata.product15.intra.v1.1.price", ftypes.DOUBLE, nil, nil, nil, "Operation price")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.price_rate = ProtoField.new("Price Rate", "bmv.bmvmarketdata.product15.intra.v1.1.pricerate", ftypes.DOUBLE, nil, nil, nil, "Operation registry price")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.price_setter = ProtoField.new("Price Setter", "bmv.bmvmarketdata.product15.intra.v1.1.pricesetter", ftypes.STRING, nil, nil, nil, "For value equal to 1, be taken as true; otherwise, false.")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.probable_allocation_price = ProtoField.new("Probable Allocation Price", "bmv.bmvmarketdata.product15.intra.v1.1.probableallocationprice", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.registered_volume = ProtoField.new("Registered Volume", "bmv.bmvmarketdata.product15.intra.v1.1.registeredvolume", ftypes.INT64)
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.sales_volume = ProtoField.new("Sales Volume", "bmv.bmvmarketdata.product15.intra.v1.1.salesvolume", ftypes.INT64)
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.sell = ProtoField.new("Sell", "bmv.bmvmarketdata.product15.intra.v1.1.sell", ftypes.STRING, nil, nil, nil, "Seller’s brokerage house short key")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.sending_time = ProtoField.new("Sending Time", "bmv.bmvmarketdata.product15.intra.v1.1.sendingtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Recess’s official sending time. Only used when official recess has occurred.")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.sending_time_utc = ProtoField.new("Sending Time", "bmv.bmvmarketdata.product15.intra.v1.1.sendingtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Recess’s official sending time. Only used when official recess has occurred.")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.sequence_number = ProtoField.new("Sequence Number", "bmv.bmvmarketdata.product15.intra.v1.1.sequencenumber", ftypes.INT32, nil, nil, nil, "Sequence number of the first message attached to header")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.series = ProtoField.new("Series", "bmv.bmvmarketdata.product15.intra.v1.1.series", ftypes.STRING, nil, nil, nil, "Series code")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.session = ProtoField.new("Session", "bmv.bmvmarketdata.product15.intra.v1.1.session", ftypes.INT8, nil, nil, nil, "Current session identifier")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.settlement = ProtoField.new("Settlement", "bmv.bmvmarketdata.product15.intra.v1.1.settlement", ftypes.STRING, nil, nil, nil, "See the table of Settlement Type Catalog on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.settlement_date = ProtoField.new("Settlement Date", "bmv.bmvmarketdata.product15.intra.v1.1.settlementdate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.settlement_date_utc = ProtoField.new("Settlement Date", "bmv.bmvmarketdata.product15.intra.v1.1.settlementdate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.total_messages = ProtoField.new("Total Messages", "bmv.bmvmarketdata.product15.intra.v1.1.totalmessages", ftypes.INT8, nil, nil, nil, "Number of messages after the header")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.trade_date = ProtoField.new("Trade Date", "bmv.bmvmarketdata.product15.intra.v1.1.tradedate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date operation was carried out")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.trade_date_utc = ProtoField.new("Trade Date", "bmv.bmvmarketdata.product15.intra.v1.1.tradedate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date operation was carried out")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.trade_number = ProtoField.new("Trade Number", "bmv.bmvmarketdata.product15.intra.v1.1.tradenumber", ftypes.INT32, nil, nil, nil, "Stamp number by instrument")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.trade_time = ProtoField.new("Trade Time", "bmv.bmvmarketdata.product15.intra.v1.1.tradetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the operation was carried out")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.trade_time_utc = ProtoField.new("Trade Time", "bmv.bmvmarketdata.product15.intra.v1.1.tradetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the operation was carried out")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.value_type = ProtoField.new("Value Type", "bmv.bmvmarketdata.product15.intra.v1.1.valuetype", ftypes.STRING)
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.virtual_trades_status = ProtoField.new("Virtual Trades Status", "bmv.bmvmarketdata.product15.intra.v1.1.virtualtradesstatus", ftypes.STRING, nil, nil, nil, "A-Addition B-Deletion (Document label: Status)")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.volatility = ProtoField.new("Volatility", "bmv.bmvmarketdata.product15.intra.v1.1.volatility", ftypes.DOUBLE, nil, nil, nil, "Volatility instrument.")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.volume_int_324 = ProtoField.new("Volume Int 324", "bmv.bmvmarketdata.product15.intra.v1.1.volumeint324", ftypes.INT32, nil, nil, nil, "Traded stocks")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.volume_int_648 = ProtoField.new("Volume Int 648", "bmv.bmvmarketdata.product15.intra.v1.1.volumeint648", ftypes.INT64, nil, nil, nil, "Traded volume")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.weighted_average_price = ProtoField.new("Weighted Average Price", "bmv.bmvmarketdata.product15.intra.v1.1.weightedaverageprice", ftypes.DOUBLE, nil, nil, nil, "Average price instrument.")

-- Bmv BmvMarketData Product15 Intra 1.1 Framing
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.intra_multicast_header = ProtoField.new("INTRA Multicast Header", "bmv.bmvmarketdata.product15.intra.v1.1.intramulticastheader", ftypes.STRING, nil, nil, nil, "BMV INTRA Multicast Header")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.message_block = ProtoField.new("Message Block", "bmv.bmvmarketdata.product15.intra.v1.1.messageblock", ftypes.STRING, nil, nil, nil, "BMV INTRA Multicast message block")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.message_header = ProtoField.new("Message Header", "bmv.bmvmarketdata.product15.intra.v1.1.messageheader", ftypes.STRING, nil, nil, nil, "Message length and message type")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.packet = ProtoField.new("Packet", "bmv.bmvmarketdata.product15.intra.v1.1.packet", ftypes.STRING, nil, nil, nil, "Bmv INTRA Multicast Udp Packet")

-- Bmv BmvMarketData Product15 1.1 Application Messages
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.capital_trades_message = ProtoField.new("Capital Trades Message", "bmv.bmvmarketdata.product15.intra.v1.1.capitaltradesmessage", ftypes.STRING, nil, nil, nil, "Contains information on any BMV accepted transaction.")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.continuous_auctions_beginning_message = ProtoField.new("Continuous Auctions Beginning Message", "bmv.bmvmarketdata.product15.intra.v1.1.continuousauctionsbeginningmessage", ftypes.STRING, nil, nil, nil, "Sent at the moment one of the Continuous, Volatility or SIC auctions is generated.")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.events_system_message = ProtoField.new("Events System Message", "bmv.bmvmarketdata.product15.intra.v1.1.eventssystemmessage", ftypes.STRING, nil, nil, nil, "The system of events message is used to inform that an event has occurred, which needs to be of public domain.")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.execution_of_orders_message = ProtoField.new("Execution Of Orders Message", "bmv.bmvmarketdata.product15.intra.v1.1.executionofordersmessage", ftypes.STRING, nil, nil, nil, "The message is disseminated at the time there is a matching or closing in BMV’s electronic system.")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.middle_price_existing_quotes_message = ProtoField.new("Middle Price Existing Quotes Message", "bmv.bmvmarketdata.product15.intra.v1.1.middlepriceexistingquotesmessage", ftypes.STRING, nil, nil, nil, "Generated when an instrument enters a posture in the hidden electronic Middle Price book.")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.mutual_fund_trades_message = ProtoField.new("Mutual Fund Trades Message", "bmv.bmvmarketdata.product15.intra.v1.1.mutualfundtradesmessage", ftypes.STRING, nil, nil, nil, "Contains any mutual funds operation realized.")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.order_addition_message = ProtoField.new("Order Addition Message", "bmv.bmvmarketdata.product15.intra.v1.1.orderadditionmessage", ftypes.STRING, nil, nil, nil, "The moment an order is being accepted by the BMV central system; this message is diffused to the corresponding media.")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.order_cancellation_message = ProtoField.new("Order Cancellation Message", "bmv.bmvmarketdata.product15.intra.v1.1.ordercancellationmessage", ftypes.STRING, nil, nil, nil, "This message fully eliminates the order from the trading floor.")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.order_change_message = ProtoField.new("Order Change Message", "bmv.bmvmarketdata.product15.intra.v1.1.orderchangemessage", ftypes.STRING, nil, nil, nil, "Message sent when the order changes one of its data, the system allocates to it a new priority in the electronic book, the order to be replaced is identified with the original Instrument, Date and Number, the new allocation of priority in the electronic book appears in the New Date and Number fields.")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.probable_allocation_price_message = ProtoField.new("Probable Allocation Price Message", "bmv.bmvmarketdata.product15.intra.v1.1.probableallocationpricemessage", ftypes.STRING, nil, nil, nil, "Sent during any auction type (Opening, Continuous, Volatility and Intraday) and only on instruments where there is already a virtual match or pre-allocation.")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.registry_operations_message = ProtoField.new("Registry Operations Message", "bmv.bmvmarketdata.product15.intra.v1.1.registryoperationsmessage", ftypes.STRING, nil, nil, nil, "Sent whenever there is a debt or capital instrument placement.")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.status_changes_message = ProtoField.new("Status Changes Message", "bmv.bmvmarketdata.product15.intra.v1.1.statuschangesmessage", ftypes.STRING, nil, nil, nil, "All instruments are in a certain status before and during trading session.")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.tradability_message = ProtoField.new("Tradability Message", "bmv.bmvmarketdata.product15.intra.v1.1.tradabilitymessage", ftypes.STRING, nil, nil, nil, "Message sent every half hour during trading session, informing general tradability by instrument.")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.trade_cancellation_message = ProtoField.new("Trade Cancellation Message", "bmv.bmvmarketdata.product15.intra.v1.1.tradecancellationmessage", ftypes.STRING, nil, nil, nil, "This message is sent when a transaction is cancelled from the BMV system.")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.virtual_trades_message = ProtoField.new("Virtual Trades Message", "bmv.bmvmarketdata.product15.intra.v1.1.virtualtradesmessage", ftypes.STRING, nil, nil, nil, "When an operation has been pre-assigned to the at closing and average day Price electronic books, a virtual trade message is sent, where also notifying of this operation.")
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.weighted_average_price_settlement_prices_message = ProtoField.new("Weighted Average Price Settlement Prices Message", "bmv.bmvmarketdata.product15.intra.v1.1.weightedaveragepricesettlementpricesmessage", ftypes.STRING, nil, nil, nil, "For equities market, this message will be sent for each operation containing weighted average price per instrument generated within WAP calculation period (last 20 minutes of trading).")

-- Bmv BmvMarketData Product15 Intra 1.1 Generated Fields
omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.message_block_index = ProtoField.new("Message Block Index", "bmv.bmvmarketdata.product15.intra.v1.1.messageblockindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Bmv BmvMarketData Product15 Intra 1.1 Formatting
-----------------------------------------------------------------------

-- Text field character encoding (Wireshark ENC_ constant)
bmv_bmvmarketdata_product15_intra_v1_1.text_encoding = ENC_ASCII

-- timestamp format
local timestamp_format_enum = {
  { 1, "Full DateTime Local", 2 },
  { 2, "Full DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=Full DateTime Local, 3=Full DateTime Utc
bmv_bmvmarketdata_product15_intra_v1_1.timestamp_format = 2


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Bmv BmvMarketData Product15 Intra 1.1 Element Dissection Options
show.application_messages = true
show.headers = true
show.structs = true
show.indexes = true

-- Register Bmv BmvMarketData Product15 Intra 1.1 Show Options
omi_bmv_bmvmarketdata_product15_intra_v1_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_bmv_bmvmarketdata_product15_intra_v1_1.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_bmv_bmvmarketdata_product15_intra_v1_1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_bmv_bmvmarketdata_product15_intra_v1_1.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_bmv_bmvmarketdata_product15_intra_v1_1.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_bmv_bmvmarketdata_product15_intra_v1_1.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_bmv_bmvmarketdata_product15_intra_v1_1.prefs.show_application_messages then
    show.application_messages = omi_bmv_bmvmarketdata_product15_intra_v1_1.prefs.show_application_messages
  end
  if show.headers ~= omi_bmv_bmvmarketdata_product15_intra_v1_1.prefs.show_headers then
    show.headers = omi_bmv_bmvmarketdata_product15_intra_v1_1.prefs.show_headers
  end
  if show.structs ~= omi_bmv_bmvmarketdata_product15_intra_v1_1.prefs.show_structs then
    show.structs = omi_bmv_bmvmarketdata_product15_intra_v1_1.prefs.show_structs
  end
  if show.indexes ~= omi_bmv_bmvmarketdata_product15_intra_v1_1.prefs.show_indexes then
    show.indexes = omi_bmv_bmvmarketdata_product15_intra_v1_1.prefs.show_indexes
  end
  if bmv_bmvmarketdata_product15_intra_v1_1.timestamp_format ~= omi_bmv_bmvmarketdata_product15_intra_v1_1.prefs.timestamp_format then
    bmv_bmvmarketdata_product15_intra_v1_1.timestamp_format = omi_bmv_bmvmarketdata_product15_intra_v1_1.prefs.timestamp_format
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
-- Bmv BmvMarketData Product15 Intra 1.1 Fields
-----------------------------------------------------------------------

-- Amount
bmv_bmvmarketdata_product15_intra_v1_1.amount = {}

-- Size: Amount
bmv_bmvmarketdata_product15_intra_v1_1.amount.size = 8

-- Display: Amount
bmv_bmvmarketdata_product15_intra_v1_1.amount.display = function(value)
  return "Amount: "..value
end

-- Translate: Amount
bmv_bmvmarketdata_product15_intra_v1_1.amount.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Amount
bmv_bmvmarketdata_product15_intra_v1_1.amount.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.amount.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product15_intra_v1_1.amount.translate(raw)
  local display = bmv_bmvmarketdata_product15_intra_v1_1.amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.amount, range, value, display)

  return offset + length, value
end

-- Auction Indicator
bmv_bmvmarketdata_product15_intra_v1_1.auction_indicator = {}

-- Size: Auction Indicator
bmv_bmvmarketdata_product15_intra_v1_1.auction_indicator.size = 1

-- Display: Auction Indicator
bmv_bmvmarketdata_product15_intra_v1_1.auction_indicator.display = function(value)
  if value == "P" then
    return "Auction Indicator: Opening Auction (P)"
  end
  if value == "S" then
    return "Auction Indicator: Other Auctions (S)"
  end
  if value == " " then
    return "Auction Indicator: Continuous Market (<whitespace>)"
  end
  if value == "N" then
    return "Auction Indicator: Not Applicable (N)"
  end

  return "Auction Indicator: Unknown("..value..")"
end

-- Dissect: Auction Indicator
bmv_bmvmarketdata_product15_intra_v1_1.auction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.auction_indicator.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product15_intra_v1_1.auction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.auction_indicator, range, value, display)

  return offset + length, value
end

-- Average
bmv_bmvmarketdata_product15_intra_v1_1.average = {}

-- Size: Average
bmv_bmvmarketdata_product15_intra_v1_1.average.size = 8

-- Display: Average
bmv_bmvmarketdata_product15_intra_v1_1.average.display = function(value)
  return "Average: "..value
end

-- Translate: Average
bmv_bmvmarketdata_product15_intra_v1_1.average.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Average
bmv_bmvmarketdata_product15_intra_v1_1.average.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.average.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product15_intra_v1_1.average.translate(raw)
  local display = bmv_bmvmarketdata_product15_intra_v1_1.average.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.average, range, value, display)

  return offset + length, value
end

-- Beginning Time Of Auction
bmv_bmvmarketdata_product15_intra_v1_1.beginning_time_of_auction = {}

-- Size: Beginning Time Of Auction
bmv_bmvmarketdata_product15_intra_v1_1.beginning_time_of_auction.size = 8

-- Dissect: Beginning Time Of Auction
bmv_bmvmarketdata_product15_intra_v1_1.beginning_time_of_auction.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.beginning_time_of_auction.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.beginning_time_of_auction
  if bmv_bmvmarketdata_product15_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.beginning_time_of_auction_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Book Value
bmv_bmvmarketdata_product15_intra_v1_1.book_value = {}

-- Size: Book Value
bmv_bmvmarketdata_product15_intra_v1_1.book_value.size = 8

-- Display: Book Value
bmv_bmvmarketdata_product15_intra_v1_1.book_value.display = function(value)
  return "Book Value: "..value
end

-- Translate: Book Value
bmv_bmvmarketdata_product15_intra_v1_1.book_value.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Book Value
bmv_bmvmarketdata_product15_intra_v1_1.book_value.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.book_value.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product15_intra_v1_1.book_value.translate(raw)
  local display = bmv_bmvmarketdata_product15_intra_v1_1.book_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.book_value, range, value, display)

  return offset + length, value
end

-- Buy
bmv_bmvmarketdata_product15_intra_v1_1.buy = {}

-- Size: Buy
bmv_bmvmarketdata_product15_intra_v1_1.buy.size = 5

-- Display: Buy
bmv_bmvmarketdata_product15_intra_v1_1.buy.display = function(value)
  return "Buy: "..value
end

-- Dissect: Buy
bmv_bmvmarketdata_product15_intra_v1_1.buy.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.buy.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product15_intra_v1_1.buy.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.buy, range, value, display)

  return offset + length, value
end

-- Buy Volume
bmv_bmvmarketdata_product15_intra_v1_1.buy_volume = {}

-- Size: Buy Volume
bmv_bmvmarketdata_product15_intra_v1_1.buy_volume.size = 8

-- Display: Buy Volume
bmv_bmvmarketdata_product15_intra_v1_1.buy_volume.display = function(value)
  return "Buy Volume: "..value
end

-- Dissect: Buy Volume
bmv_bmvmarketdata_product15_intra_v1_1.buy_volume.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.buy_volume.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_product15_intra_v1_1.buy_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.buy_volume, range, value, display)

  return offset + length, value
end

-- Concertation
bmv_bmvmarketdata_product15_intra_v1_1.concertation = {}

-- Size: Concertation
bmv_bmvmarketdata_product15_intra_v1_1.concertation.size = 1

-- Display: Concertation
bmv_bmvmarketdata_product15_intra_v1_1.concertation.labels = {
  ["C"] = "Concertation: Crossing Operation (C)",
  ["O"] = "Concertation: Order Closing (O)",
  ["H"] = "Concertation: Operation At Closing Price (H)",
  ["D"] = "Concertation: Operation After Closing (D)",
  ["M"] = "Concertation: Operation At Medium Price (M)",
  ["P"] = "Concertation: Operation At Average Price For The Day (P)",
  ["X"] = "Concertation: Block Operations By Exception (X)",
  ["v"] = "Concertation: Vwap Operations By Exception (v)",
  ["w"] = "Concertation: Twap Operations By Exception (w)",
  ["%"] = "Concertation: Basket Trading (%)",
  ["x"] = "Concertation: Otc Recent Operations (x)",
  ["y"] = "Concertation: Otc Agreed Operations (y)",
  ["A"] = "Concertation: Buy Auto Entry (A)",
  ["B"] = "Concertation: Sell Auto Entry (B)",
  ["E"] = "Concertation: Block Trade (E)",
  ["F"] = "Concertation: Leg Of Blocktrade For Chain Of Forwards (F)",
  ["G"] = "Concertation: Leg Of Chain Of Forwards (G)",
  ["J"] = "Concertation: Leg Of Crossing Of Foreign Currency Strategy (J)",
  ["K"] = "Concertation: Sell Leg Auto Entry Of Foreign Currency Strategy (K)",
  ["L"] = "Concertation: Buy Leg Auto Entry Of Foreign Currency Strategy (L)",
  ["N"] = "Concertation: Leg Of Foreign Currency Strategy (N)",
  ["Q"] = "Concertation: Leg Of Foreign Currency Strategy (Q)",
  ["R"] = "Concertation: Leg Of Crossing Of Chain Of Forwards (R)",
  ["S"] = "Concertation: Sell Leg Auto Entry Of Chain Of Forwards (S)",
  ["T"] = "Concertation: Buy Leg Auto Entry Of Chain Of Forwards (T)",
  ["U"] = "Concertation: Leg Of Auction Of Chain Of Forwards (U)",
  ["V"] = "Concertation: Leg Of Round Of Chain Of Forwards (V)",
  ["W"] = "Concertation: Chains Of Forwards (W)",
  ["Y"] = "Concertation: Leg Of Rollover Crossing (Y)",
  ["Z"] = "Concertation: Sell Leg Auto Entry Of Rollover (Z)",
  ["a"] = "Concertation: Buy Leg Auto Entry Of Rollover (a)",
  ["b"] = "Concertation: Leg Of Round Of Rollover (b)",
  ["c"] = "Concertation: Depth Of Round Of Chain Of Forwards (c)",
  ["d"] = "Concertation: Trading Of Chain Of Forwards (d)",
  ["e"] = "Concertation: Depth Of Round (e)",
  ["f"] = "Concertation: Round Of Chain Of Forwards (f)",
  ["g"] = "Concertation: Rollover Sentra (g)",
  ["h"] = "Concertation: Type Round (h)",
  ["i"] = "Concertation: Auctions (i)",
  ["j"] = "Concertation: Leg Of Block Trade Of Rollover (j)",
  ["k"] = "Concertation: Leg Of Block Trade Of Foreign Currency Strategy (k)",
  ["l"] = "Concertation: Block Trade Of Foreign Currency Strategy (l)",
  ["m"] = "Concertation: Block Trade Of Chain Of Forwards (m)",
  ["n"] = "Concertation: Blocktrade Of Rollover (n)",
  ["o"] = "Concertation: Crossing Of Chain Of Forwards (o)",
  ["p"] = "Concertation: Sell Auto Entry Of Chain Of Forwards (p)",
  ["q"] = "Concertation: Buy Auto Entry Of Chain Of Forwards (q)",
  ["r"] = "Concertation: Swap Block Trade (r)",
  ["s"] = "Concertation: Swap Block Trade With Continuous Coupon (s)",
  ["t"] = "Concertation: Block Trade Of Unwind (t)",
  ["u"] = "Concertation: Block Trade Of Substitution (u)",
  ["z"] = "Concertation: Voice Over (z)",
  ["#"] = "Concertation: Firm Order (#)",
  ["I"] = "Concertation: Ipo Cross (I)",
  ["+"] = "Concertation: Unintentional Self Cross (+)",
  ["&"] = "Concertation: Without Concertation (&)",
  ["("] = "Concertation: Inav To Closing Price Trading (()",
  [")"] = "Concertation: Inav After Closing ())",
}

bmv_bmvmarketdata_product15_intra_v1_1.concertation.display = function(value)
  return bmv_bmvmarketdata_product15_intra_v1_1.concertation.labels[value] or "Concertation: Unknown("..value..")"
end

-- Dissect: Concertation
bmv_bmvmarketdata_product15_intra_v1_1.concertation.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.concertation.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product15_intra_v1_1.concertation.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.concertation, range, value, display)

  return offset + length, value
end

-- Concertation Type
bmv_bmvmarketdata_product15_intra_v1_1.concertation_type = {}

-- Size: Concertation Type
bmv_bmvmarketdata_product15_intra_v1_1.concertation_type.size = 1

-- Display: Concertation Type
bmv_bmvmarketdata_product15_intra_v1_1.concertation_type.labels = {
  ["C"] = "Concertation Type: Crossing Operation (C)",
  ["O"] = "Concertation Type: Order Closing (O)",
  ["H"] = "Concertation Type: Operation At Closing Price (H)",
  ["D"] = "Concertation Type: Operation After Closing (D)",
  ["M"] = "Concertation Type: Operation At Medium Price (M)",
  ["P"] = "Concertation Type: Operation At Average Price For The Day (P)",
  ["X"] = "Concertation Type: Block Operations By Exception (X)",
  ["v"] = "Concertation Type: Vwap Operations By Exception (v)",
  ["w"] = "Concertation Type: Twap Operations By Exception (w)",
  ["%"] = "Concertation Type: Basket Trading (%)",
  ["x"] = "Concertation Type: Otc Recent Operations (x)",
  ["y"] = "Concertation Type: Otc Agreed Operations (y)",
  ["A"] = "Concertation Type: Buy Auto Entry (A)",
  ["B"] = "Concertation Type: Sell Auto Entry (B)",
  ["E"] = "Concertation Type: Block Trade (E)",
  ["F"] = "Concertation Type: Leg Of Blocktrade For Chain Of Forwards (F)",
  ["G"] = "Concertation Type: Leg Of Chain Of Forwards (G)",
  ["J"] = "Concertation Type: Leg Of Crossing Of Foreign Currency Strategy (J)",
  ["K"] = "Concertation Type: Sell Leg Auto Entry Of Foreign Currency Strategy (K)",
  ["L"] = "Concertation Type: Buy Leg Auto Entry Of Foreign Currency Strategy (L)",
  ["N"] = "Concertation Type: Leg Of Foreign Currency Strategy (N)",
  ["Q"] = "Concertation Type: Leg Of Foreign Currency Strategy (Q)",
  ["R"] = "Concertation Type: Leg Of Crossing Of Chain Of Forwards (R)",
  ["S"] = "Concertation Type: Sell Leg Auto Entry Of Chain Of Forwards (S)",
  ["T"] = "Concertation Type: Buy Leg Auto Entry Of Chain Of Forwards (T)",
  ["U"] = "Concertation Type: Leg Of Auction Of Chain Of Forwards (U)",
  ["V"] = "Concertation Type: Leg Of Round Of Chain Of Forwards (V)",
  ["W"] = "Concertation Type: Chains Of Forwards (W)",
  ["Y"] = "Concertation Type: Leg Of Rollover Crossing (Y)",
  ["Z"] = "Concertation Type: Sell Leg Auto Entry Of Rollover (Z)",
  ["a"] = "Concertation Type: Buy Leg Auto Entry Of Rollover (a)",
  ["b"] = "Concertation Type: Leg Of Round Of Rollover (b)",
  ["c"] = "Concertation Type: Depth Of Round Of Chain Of Forwards (c)",
  ["d"] = "Concertation Type: Trading Of Chain Of Forwards (d)",
  ["e"] = "Concertation Type: Depth Of Round (e)",
  ["f"] = "Concertation Type: Round Of Chain Of Forwards (f)",
  ["g"] = "Concertation Type: Rollover Sentra (g)",
  ["h"] = "Concertation Type: Type Round (h)",
  ["i"] = "Concertation Type: Auctions (i)",
  ["j"] = "Concertation Type: Leg Of Block Trade Of Rollover (j)",
  ["k"] = "Concertation Type: Leg Of Block Trade Of Foreign Currency Strategy (k)",
  ["l"] = "Concertation Type: Block Trade Of Foreign Currency Strategy (l)",
  ["m"] = "Concertation Type: Block Trade Of Chain Of Forwards (m)",
  ["n"] = "Concertation Type: Blocktrade Of Rollover (n)",
  ["o"] = "Concertation Type: Crossing Of Chain Of Forwards (o)",
  ["p"] = "Concertation Type: Sell Auto Entry Of Chain Of Forwards (p)",
  ["q"] = "Concertation Type: Buy Auto Entry Of Chain Of Forwards (q)",
  ["r"] = "Concertation Type: Swap Block Trade (r)",
  ["s"] = "Concertation Type: Swap Block Trade With Continuous Coupon (s)",
  ["t"] = "Concertation Type: Block Trade Of Unwind (t)",
  ["u"] = "Concertation Type: Block Trade Of Substitution (u)",
  ["z"] = "Concertation Type: Voice Over (z)",
  ["#"] = "Concertation Type: Firm Order (#)",
  ["I"] = "Concertation Type: Ipo Cross (I)",
  ["+"] = "Concertation Type: Unintentional Self Cross (+)",
  ["&"] = "Concertation Type: Without Concertation (&)",
  ["("] = "Concertation Type: Inav To Closing Price Trading (()",
  [")"] = "Concertation Type: Inav After Closing ())",
}

bmv_bmvmarketdata_product15_intra_v1_1.concertation_type.display = function(value)
  return bmv_bmvmarketdata_product15_intra_v1_1.concertation_type.labels[value] or "Concertation Type: Unknown("..value..")"
end

-- Dissect: Concertation Type
bmv_bmvmarketdata_product15_intra_v1_1.concertation_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.concertation_type.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product15_intra_v1_1.concertation_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.concertation_type, range, value, display)

  return offset + length, value
end

-- Date
bmv_bmvmarketdata_product15_intra_v1_1.date = {}

-- Size: Date
bmv_bmvmarketdata_product15_intra_v1_1.date.size = 8

-- Dissect: Date
bmv_bmvmarketdata_product15_intra_v1_1.date.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.date.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.date
  if bmv_bmvmarketdata_product15_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.date_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Date And Time
bmv_bmvmarketdata_product15_intra_v1_1.date_and_time = {}

-- Size: Date And Time
bmv_bmvmarketdata_product15_intra_v1_1.date_and_time.size = 8

-- Dissect: Date And Time
bmv_bmvmarketdata_product15_intra_v1_1.date_and_time.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.date_and_time.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.date_and_time
  if bmv_bmvmarketdata_product15_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.date_and_time_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Datetime
bmv_bmvmarketdata_product15_intra_v1_1.datetime = {}

-- Size: Datetime
bmv_bmvmarketdata_product15_intra_v1_1.datetime.size = 8

-- Dissect: Datetime
bmv_bmvmarketdata_product15_intra_v1_1.datetime.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.datetime.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.datetime
  if bmv_bmvmarketdata_product15_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.datetime_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Direction
bmv_bmvmarketdata_product15_intra_v1_1.direction = {}

-- Size: Direction
bmv_bmvmarketdata_product15_intra_v1_1.direction.size = 1

-- Display: Direction
bmv_bmvmarketdata_product15_intra_v1_1.direction.labels = {
  ["C"] = "Direction: Buy (C)",
  ["V"] = "Direction: Sell (V)",
}

bmv_bmvmarketdata_product15_intra_v1_1.direction.display = function(value)
  return bmv_bmvmarketdata_product15_intra_v1_1.direction.labels[value] or "Direction: Unknown("..value..")"
end

-- Dissect: Direction
bmv_bmvmarketdata_product15_intra_v1_1.direction.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.direction.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product15_intra_v1_1.direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.direction, range, value, display)

  return offset + length, value
end

-- End Auction Time
bmv_bmvmarketdata_product15_intra_v1_1.end_auction_time = {}

-- Size: End Auction Time
bmv_bmvmarketdata_product15_intra_v1_1.end_auction_time.size = 8

-- Dissect: End Auction Time
bmv_bmvmarketdata_product15_intra_v1_1.end_auction_time.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.end_auction_time.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.end_auction_time
  if bmv_bmvmarketdata_product15_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.end_auction_time_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Ending Time
bmv_bmvmarketdata_product15_intra_v1_1.ending_time = {}

-- Size: Ending Time
bmv_bmvmarketdata_product15_intra_v1_1.ending_time.size = 8

-- Dissect: Ending Time
bmv_bmvmarketdata_product15_intra_v1_1.ending_time.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.ending_time.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.ending_time
  if bmv_bmvmarketdata_product15_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.ending_time_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Event Code
bmv_bmvmarketdata_product15_intra_v1_1.event_code = {}

-- Size: Event Code
bmv_bmvmarketdata_product15_intra_v1_1.event_code.size = 1

-- Display: Event Code
bmv_bmvmarketdata_product15_intra_v1_1.event_code.labels = {
  ["A"] = "Event Code: Start Of System Hours (A)",
  ["B"] = "Event Code: Cancelation Of Offers (B)",
  ["C"] = "Event Code: Start Of Opening Auction (C)",
  ["D"] = "Event Code: Start Of Continuous Market (D)",
  ["E"] = "Event Code: Start Of Wap Period (E)",
  ["F"] = "Event Code: Continuous Market Ends (F)",
  ["G"] = "Event Code: Start Of After Closing Phase (G)",
  ["H"] = "Event Code: It Ends After Closing (H)",
  ["J"] = "Event Code: Transmission Of Final Prices Ends (J)",
  ["K"] = "Event Code: End Of System Hours (K)",
  ["M"] = "Event Code: Start Of Administrative Recess (M)",
  ["N"] = "Event Code: End Of Administrative Recess (N)",
  ["O"] = "Event Code: Start Dvmamx Markets (O)",
  ["P"] = "Event Code: End Of Dvma Markets (P)",
  ["Q"] = "Event Code: End Of Mx Markets (Q)",
  ["R"] = "Event Code: Start Of Opc Modality (R)",
  ["S"] = "Event Code: End Of Opc Modality (S)",
  ["T"] = "Event Code: Start Of Settlement Auction (T)",
  ["U"] = "Event Code: End Of Settlement Auction (U)",
  ["V"] = "Event Code: Final Register Of Settlement Prices (V)",
  ["W"] = "Event Code: Open Interest (W)",
}

bmv_bmvmarketdata_product15_intra_v1_1.event_code.display = function(value)
  return bmv_bmvmarketdata_product15_intra_v1_1.event_code.labels[value] or "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
bmv_bmvmarketdata_product15_intra_v1_1.event_code.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.event_code.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product15_intra_v1_1.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.event_code, range, value, display)

  return offset + length, value
end

-- Execution Price
bmv_bmvmarketdata_product15_intra_v1_1.execution_price = {}

-- Size: Execution Price
bmv_bmvmarketdata_product15_intra_v1_1.execution_price.size = 8

-- Display: Execution Price
bmv_bmvmarketdata_product15_intra_v1_1.execution_price.display = function(value)
  return "Execution Price: "..value
end

-- Translate: Execution Price
bmv_bmvmarketdata_product15_intra_v1_1.execution_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Execution Price
bmv_bmvmarketdata_product15_intra_v1_1.execution_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.execution_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product15_intra_v1_1.execution_price.translate(raw)
  local display = bmv_bmvmarketdata_product15_intra_v1_1.execution_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.execution_price, range, value, display)

  return offset + length, value
end

-- Existing Postures
bmv_bmvmarketdata_product15_intra_v1_1.existing_postures = {}

-- Size: Existing Postures
bmv_bmvmarketdata_product15_intra_v1_1.existing_postures.size = 1

-- Display: Existing Postures
bmv_bmvmarketdata_product15_intra_v1_1.existing_postures.display = function(value)
  return "Existing Postures: "..value
end

-- Dissect: Existing Postures
bmv_bmvmarketdata_product15_intra_v1_1.existing_postures.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.existing_postures.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product15_intra_v1_1.existing_postures.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.existing_postures, range, value, display)

  return offset + length, value
end

-- Firm
bmv_bmvmarketdata_product15_intra_v1_1.firm = {}

-- Size: Firm
bmv_bmvmarketdata_product15_intra_v1_1.firm.size = 5

-- Display: Firm
bmv_bmvmarketdata_product15_intra_v1_1.firm.display = function(value)
  return "Firm: "..value
end

-- Dissect: Firm
bmv_bmvmarketdata_product15_intra_v1_1.firm.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.firm.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product15_intra_v1_1.firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.firm, range, value, display)

  return offset + length, value
end

-- Income
bmv_bmvmarketdata_product15_intra_v1_1.income = {}

-- Size: Income
bmv_bmvmarketdata_product15_intra_v1_1.income.size = 1

-- Display: Income
bmv_bmvmarketdata_product15_intra_v1_1.income.labels = {
  ["V"] = "Income: Variable Income (V)",
  ["F"] = "Income: Fixed Income (F)",
  ["W"] = "Income: Warrants (W)",
}

bmv_bmvmarketdata_product15_intra_v1_1.income.display = function(value)
  return bmv_bmvmarketdata_product15_intra_v1_1.income.labels[value] or "Income: Unknown("..value..")"
end

-- Dissect: Income
bmv_bmvmarketdata_product15_intra_v1_1.income.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.income.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product15_intra_v1_1.income.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.income, range, value, display)

  return offset + length, value
end

-- Instrument Number
bmv_bmvmarketdata_product15_intra_v1_1.instrument_number = {}

-- Size: Instrument Number
bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.size = 4

-- Display: Instrument Number
bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.display = function(value)
  return "Instrument Number: "..value
end

-- Dissect: Instrument Number
bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.instrument_number, range, value, display)

  return offset + length, value
end

-- Instrument Status
bmv_bmvmarketdata_product15_intra_v1_1.instrument_status = {}

-- Size: Instrument Status
bmv_bmvmarketdata_product15_intra_v1_1.instrument_status.size = 1

-- Display: Instrument Status
bmv_bmvmarketdata_product15_intra_v1_1.instrument_status.labels = {
  ["C"] = "Instrument Status: Cancellation Of Offers (C)",
  ["A"] = "Instrument Status: Opening Auction (A)",
  ["P"] = "Instrument Status: Pre Opening (P)",
  ["E"] = "Instrument Status: Being Allocated (E)",
  ["G"] = "Instrument Status: Auction Allocated (G)",
  ["T"] = "Instrument Status: Auction Ended (T)",
  ["N"] = "Instrument Status: Continuous Trading (N)",
  ["K"] = "Instrument Status: Breaking Auction Parameters (K)",
  ["M"] = "Instrument Status: Continuous Auction Due To Stop Operating More Than 20 Working Days (M)",
  ["U"] = "Instrument Status: Cleaving Auction (U)",
  ["O"] = "Instrument Status: Suspended Series (O)",
  ["V"] = "Instrument Status: Suspended Quotation (V)",
  ["L"] = "Instrument Status: Auction For Breach (L)",
  ["I"] = "Instrument Status: Withdrawal Of Orders On Continuous Auction (I)",
  ["B"] = "Instrument Status: Withdrawal Of Order On Intraday Auction (B)",
  ["W"] = "Instrument Status: News Pending (W)",
  ["X"] = "Instrument Status: Settlement Auction (X)",
  ["Y"] = "Instrument Status: Extraordinary Settlement Auction (Y)",
  ["R"] = "Instrument Status: Auction Total Of Ck Des (R)",
}

bmv_bmvmarketdata_product15_intra_v1_1.instrument_status.display = function(value)
  return bmv_bmvmarketdata_product15_intra_v1_1.instrument_status.labels[value] or "Instrument Status: Unknown("..value..")"
end

-- Dissect: Instrument Status
bmv_bmvmarketdata_product15_intra_v1_1.instrument_status.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.instrument_status.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product15_intra_v1_1.instrument_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.instrument_status, range, value, display)

  return offset + length, value
end

-- Issuer
bmv_bmvmarketdata_product15_intra_v1_1.issuer = {}

-- Size: Issuer
bmv_bmvmarketdata_product15_intra_v1_1.issuer.size = 7

-- Display: Issuer
bmv_bmvmarketdata_product15_intra_v1_1.issuer.display = function(value)
  return "Issuer: "..value
end

-- Dissect: Issuer
bmv_bmvmarketdata_product15_intra_v1_1.issuer.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.issuer.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product15_intra_v1_1.issuer.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.issuer, range, value, display)

  return offset + length, value
end

-- Last
bmv_bmvmarketdata_product15_intra_v1_1.last = {}

-- Size: Last
bmv_bmvmarketdata_product15_intra_v1_1.last.size = 8

-- Display: Last
bmv_bmvmarketdata_product15_intra_v1_1.last.display = function(value)
  return "Last: "..value
end

-- Translate: Last
bmv_bmvmarketdata_product15_intra_v1_1.last.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last
bmv_bmvmarketdata_product15_intra_v1_1.last.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.last.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product15_intra_v1_1.last.translate(raw)
  local display = bmv_bmvmarketdata_product15_intra_v1_1.last.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.last, range, value, display)

  return offset + length, value
end

-- Length
bmv_bmvmarketdata_product15_intra_v1_1.length = {}

-- Size: Length
bmv_bmvmarketdata_product15_intra_v1_1.length.size = 2

-- Display: Length
bmv_bmvmarketdata_product15_intra_v1_1.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
bmv_bmvmarketdata_product15_intra_v1_1.length.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product15_intra_v1_1.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.length, range, value, display)

  return offset + length, value
end

-- Market
bmv_bmvmarketdata_product15_intra_v1_1.market = {}

-- Size: Market
bmv_bmvmarketdata_product15_intra_v1_1.market.size = 1

-- Display: Market
bmv_bmvmarketdata_product15_intra_v1_1.market.display = function(value)
  if value == "L" then
    return "Market: Local (L)"
  end
  if value == "G" then
    return "Market: Global (G)"
  end
  if value == "D" then
    return "Market: Local Debt (D)"
  end
  if value == "F" then
    return "Market: Global Debt (F)"
  end
  if value == "E" then
    return "Market: Money (E)"
  end
  if value == "M" then
    return "Market: Dollar Option Market (M)"
  end
  if value == "X" then
    return "Market: Stock Market (X)"
  end
  if value == "V" then
    return "Market: Forex And Rates Market (V)"
  end
  if value == "J" then
    return "Market: Fixed Income (J)"
  end
  if value == "B" then
    return "Market: Variable Income (B)"
  end
  if value == "T" then
    return "Market: Metals (T)"
  end
  if value == "I" then
    return "Market: Mutual Funds (I)"
  end
  if value == "W" then
    return "Market: Warrants (W)"
  end
  if value == " " then
    return "Market: All Markets (<whitespace>)"
  end

  return "Market: Unknown("..value..")"
end

-- Dissect: Market
bmv_bmvmarketdata_product15_intra_v1_1.market.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.market.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product15_intra_v1_1.market.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.market, range, value, display)

  return offset + length, value
end

-- Market Data Group
bmv_bmvmarketdata_product15_intra_v1_1.market_data_group = {}

-- Size: Market Data Group
bmv_bmvmarketdata_product15_intra_v1_1.market_data_group.size = 1

-- Display: Market Data Group
bmv_bmvmarketdata_product15_intra_v1_1.market_data_group.labels = {
  [1] = "Market Data Group: Indepth Local Market (1)",
  [2] = "Market Data Group: Indepth Global Market (2)",
  [3] = "Market Data Group: Twenty Price Levels Of Local Market (3)",
  [4] = "Market Data Group: Twenty Price Levels Of Global Market (4)",
  [5] = "Market Data Group: Best Offers Of Local Market (5)",
  [6] = "Market Data Group: Best Offers Of Global Market (6)",
  [7] = "Market Data Group: Ten Price Levels Of Derivative Futures (7)",
  [8] = "Market Data Group: Ten Price Levels Of Derivative Options (8)",
  [9] = "Market Data Group: Best Offers For Derivative Futures (9)",
  [10] = "Market Data Group: Best Offers For Derivative Options (10)",
  [11] = "Market Data Group: Money Market (11)",
  [12] = "Market Data Group: Indices Components (12)",
  [13] = "Market Data Group: Level Of Indices (13)",
  [14] = "Market Data Group: Levels Of Inavs (14)",
  [15] = "Market Data Group: Indepth Local And Global Market (15)",
  [16] = "Market Data Group: Twenty Price Levels Of Local And Global Market (16)",
  [17] = "Market Data Group: Best Offers Of Local And Global Market With Money Market (17)",
  [18] = "Market Data Group: Twenty Price Levels Of Local And Global Market Indices Components Level Of Indices And Levels Of Inavs (18)",
  [19] = "Market Data Group: Ten Price Levels Of Derivate Futures And Derivative Options (19)",
  [20] = "Market Data Group: Best Offers For Derivative Futures And Derivative Options (20)",
  [21] = "Market Data Group: Added Value With Benchmark (21)",
  [22] = "Market Data Group: Added Value With Capitalization Rules (22)",
  [23] = "Market Data Group: Indices Levels With Delay (23)",
  [24] = "Market Data Group: Local And Global Market With Money Market Best Positions With Delay (24)",
  [25] = "Market Data Group: Equities Market Trades Consolidated Feed (25)",
  [26] = "Market Data Group: Best Bid Of The Equities Market Consolidated Feed (26)",
  [27] = "Market Data Group: Full Depth Consolidated Feed (27)",
  [28] = "Market Data Group: Closing Price Origin (28)",
  [29] = "Market Data Group: Analytics Price And Market Depth (29)",
  [32] = "Market Data Group: Analytics Market Quality (32)",
  [33] = "Market Data Group: Analytics Spead Performance (33)",
  [34] = "Market Data Group: Analytics Negotiation (34)",
  [40] = "Market Data Group: Channel Zero Catalogs (40)",
}

bmv_bmvmarketdata_product15_intra_v1_1.market_data_group.display = function(value)
  return bmv_bmvmarketdata_product15_intra_v1_1.market_data_group.labels[value] or "Market Data Group: Unknown("..value..")"
end

-- Dissect: Market Data Group
bmv_bmvmarketdata_product15_intra_v1_1.market_data_group.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.market_data_group.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product15_intra_v1_1.market_data_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Maximum
bmv_bmvmarketdata_product15_intra_v1_1.maximum = {}

-- Size: Maximum
bmv_bmvmarketdata_product15_intra_v1_1.maximum.size = 8

-- Display: Maximum
bmv_bmvmarketdata_product15_intra_v1_1.maximum.display = function(value)
  return "Maximum: "..value
end

-- Translate: Maximum
bmv_bmvmarketdata_product15_intra_v1_1.maximum.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Maximum
bmv_bmvmarketdata_product15_intra_v1_1.maximum.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.maximum.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product15_intra_v1_1.maximum.translate(raw)
  local display = bmv_bmvmarketdata_product15_intra_v1_1.maximum.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.maximum, range, value, display)

  return offset + length, value
end

-- Maximum Volume
bmv_bmvmarketdata_product15_intra_v1_1.maximum_volume = {}

-- Size: Maximum Volume
bmv_bmvmarketdata_product15_intra_v1_1.maximum_volume.size = 8

-- Display: Maximum Volume
bmv_bmvmarketdata_product15_intra_v1_1.maximum_volume.display = function(value)
  return "Maximum Volume: "..value
end

-- Dissect: Maximum Volume
bmv_bmvmarketdata_product15_intra_v1_1.maximum_volume.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.maximum_volume.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_product15_intra_v1_1.maximum_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.maximum_volume, range, value, display)

  return offset + length, value
end

-- Message Length
bmv_bmvmarketdata_product15_intra_v1_1.message_length = {}

-- Size: Message Length
bmv_bmvmarketdata_product15_intra_v1_1.message_length.size = 2

-- Display: Message Length
bmv_bmvmarketdata_product15_intra_v1_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
bmv_bmvmarketdata_product15_intra_v1_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.message_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product15_intra_v1_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
bmv_bmvmarketdata_product15_intra_v1_1.message_type = {}

-- Size: Message Type
bmv_bmvmarketdata_product15_intra_v1_1.message_type.size = 1

-- Display: Message Type
bmv_bmvmarketdata_product15_intra_v1_1.message_type.display = function(value)
  if value == 0x53 then
    return "Message Type: Events System Message (0x53)"
  end
  if value == 0x48 then
    return "Message Type: Trade Cancellation Message (0x48)"
  end
  if value == 0x34 then
    return "Message Type: Status Changes Message (0x34)"
  end
  if value == 0x4D then
    return "Message Type: Weighted Average Price Settlement Prices Message (0x4D)"
  end
  if value == 0x50 then
    return "Message Type: Capital Trades Message (0x50)"
  end
  if value == 0x32 then
    return "Message Type: Probable Allocation Price Message (0x32)"
  end
  if value == 0x33 then
    return "Message Type: Continuous Auctions Beginning Message (0x33)"
  end
  if value == 0x35 then
    return "Message Type: Middle Price Existing Quotes Message (0x35)"
  end
  if value == 0x5A then
    return "Message Type: Registry Operations Message (0x5A)"
  end
  if value == 0x59 then
    return "Message Type: Mutual Fund Trades Message (0x59)"
  end
  if value == 0x45 then
    return "Message Type: Tradability Message (0x45)"
  end
  if value == 0x56 then
    return "Message Type: Virtual Trades Message (0x56)"
  end
  if value == 0x41 then
    return "Message Type: Order Addition Message (0x41)"
  end
  if value == 0x43 then
    return "Message Type: Execution Of Orders Message (0x43)"
  end
  if value == 0x44 then
    return "Message Type: Order Cancellation Message (0x44)"
  end
  if value == 0x46 then
    return "Message Type: Order Change Message (0x46)"
  end

  return "Message Type: Unknown("..string.format("0x%02X", value)..")"
end

-- Dissect: Message Type
bmv_bmvmarketdata_product15_intra_v1_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bmv_bmvmarketdata_product15_intra_v1_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Minimum
bmv_bmvmarketdata_product15_intra_v1_1.minimum = {}

-- Size: Minimum
bmv_bmvmarketdata_product15_intra_v1_1.minimum.size = 8

-- Display: Minimum
bmv_bmvmarketdata_product15_intra_v1_1.minimum.display = function(value)
  return "Minimum: "..value
end

-- Translate: Minimum
bmv_bmvmarketdata_product15_intra_v1_1.minimum.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Minimum
bmv_bmvmarketdata_product15_intra_v1_1.minimum.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.minimum.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product15_intra_v1_1.minimum.translate(raw)
  local display = bmv_bmvmarketdata_product15_intra_v1_1.minimum.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.minimum, range, value, display)

  return offset + length, value
end

-- Movement
bmv_bmvmarketdata_product15_intra_v1_1.movement = {}

-- Size: Movement
bmv_bmvmarketdata_product15_intra_v1_1.movement.size = 1

-- Display: Movement
bmv_bmvmarketdata_product15_intra_v1_1.movement.labels = {
  ["A"] = "Movement: Registry Operation (A)",
  ["U"] = "Movement: Operation Authorization (U)",
  ["C"] = "Movement: Placement Operation (C)",
  ["B"] = "Movement: Delete Operation (B)",
}

bmv_bmvmarketdata_product15_intra_v1_1.movement.display = function(value)
  return bmv_bmvmarketdata_product15_intra_v1_1.movement.labels[value] or "Movement: Unknown("..value..")"
end

-- Dissect: Movement
bmv_bmvmarketdata_product15_intra_v1_1.movement.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.movement.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product15_intra_v1_1.movement.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.movement, range, value, display)

  return offset + length, value
end

-- New Date
bmv_bmvmarketdata_product15_intra_v1_1.new_date = {}

-- Size: New Date
bmv_bmvmarketdata_product15_intra_v1_1.new_date.size = 8

-- Dissect: New Date
bmv_bmvmarketdata_product15_intra_v1_1.new_date.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.new_date.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.new_date
  if bmv_bmvmarketdata_product15_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.new_date_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- New Number
bmv_bmvmarketdata_product15_intra_v1_1.new_number = {}

-- Size: New Number
bmv_bmvmarketdata_product15_intra_v1_1.new_number.size = 4

-- Display: New Number
bmv_bmvmarketdata_product15_intra_v1_1.new_number.display = function(value)
  return "New Number: "..value
end

-- Dissect: New Number
bmv_bmvmarketdata_product15_intra_v1_1.new_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.new_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product15_intra_v1_1.new_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.new_number, range, value, display)

  return offset + length, value
end

-- Number
bmv_bmvmarketdata_product15_intra_v1_1.number = {}

-- Size: Number
bmv_bmvmarketdata_product15_intra_v1_1.number.size = 4

-- Display: Number
bmv_bmvmarketdata_product15_intra_v1_1.number.display = function(value)
  return "Number: "..value
end

-- Dissect: Number
bmv_bmvmarketdata_product15_intra_v1_1.number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product15_intra_v1_1.number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.number, range, value, display)

  return offset + length, value
end

-- Number Of Buy Transactions
bmv_bmvmarketdata_product15_intra_v1_1.number_of_buy_transactions = {}

-- Size: Number Of Buy Transactions
bmv_bmvmarketdata_product15_intra_v1_1.number_of_buy_transactions.size = 4

-- Display: Number Of Buy Transactions
bmv_bmvmarketdata_product15_intra_v1_1.number_of_buy_transactions.display = function(value)
  return "Number Of Buy Transactions: "..value
end

-- Dissect: Number Of Buy Transactions
bmv_bmvmarketdata_product15_intra_v1_1.number_of_buy_transactions.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.number_of_buy_transactions.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product15_intra_v1_1.number_of_buy_transactions.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.number_of_buy_transactions, range, value, display)

  return offset + length, value
end

-- Number Of Operations
bmv_bmvmarketdata_product15_intra_v1_1.number_of_operations = {}

-- Size: Number Of Operations
bmv_bmvmarketdata_product15_intra_v1_1.number_of_operations.size = 4

-- Display: Number Of Operations
bmv_bmvmarketdata_product15_intra_v1_1.number_of_operations.display = function(value)
  return "Number Of Operations: "..value
end

-- Dissect: Number Of Operations
bmv_bmvmarketdata_product15_intra_v1_1.number_of_operations.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.number_of_operations.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product15_intra_v1_1.number_of_operations.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.number_of_operations, range, value, display)

  return offset + length, value
end

-- Number Of Sales Transactions
bmv_bmvmarketdata_product15_intra_v1_1.number_of_sales_transactions = {}

-- Size: Number Of Sales Transactions
bmv_bmvmarketdata_product15_intra_v1_1.number_of_sales_transactions.size = 4

-- Display: Number Of Sales Transactions
bmv_bmvmarketdata_product15_intra_v1_1.number_of_sales_transactions.display = function(value)
  return "Number Of Sales Transactions: "..value
end

-- Dissect: Number Of Sales Transactions
bmv_bmvmarketdata_product15_intra_v1_1.number_of_sales_transactions.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.number_of_sales_transactions.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product15_intra_v1_1.number_of_sales_transactions.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.number_of_sales_transactions, range, value, display)

  return offset + length, value
end

-- Offer Type
bmv_bmvmarketdata_product15_intra_v1_1.offer_type = {}

-- Size: Offer Type
bmv_bmvmarketdata_product15_intra_v1_1.offer_type.size = 1

-- Display: Offer Type
bmv_bmvmarketdata_product15_intra_v1_1.offer_type.labels = {
  ["P"] = "Offer Type: Public Offering (P)",
  ["R"] = "Offer Type: Registration Operation (R)",
  ["C"] = "Offer Type: Buy Public Offering (C)",
  ["A"] = "Offer Type: Overallocation (A)",
  ["S"] = "Offer Type: Reciprocal Subscription (S)",
}

bmv_bmvmarketdata_product15_intra_v1_1.offer_type.display = function(value)
  return bmv_bmvmarketdata_product15_intra_v1_1.offer_type.labels[value] or "Offer Type: Unknown("..value..")"
end

-- Dissect: Offer Type
bmv_bmvmarketdata_product15_intra_v1_1.offer_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.offer_type.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product15_intra_v1_1.offer_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.offer_type, range, value, display)

  return offset + length, value
end

-- Opening Price
bmv_bmvmarketdata_product15_intra_v1_1.opening_price = {}

-- Size: Opening Price
bmv_bmvmarketdata_product15_intra_v1_1.opening_price.size = 8

-- Display: Opening Price
bmv_bmvmarketdata_product15_intra_v1_1.opening_price.display = function(value)
  return "Opening Price: "..value
end

-- Translate: Opening Price
bmv_bmvmarketdata_product15_intra_v1_1.opening_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Opening Price
bmv_bmvmarketdata_product15_intra_v1_1.opening_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.opening_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product15_intra_v1_1.opening_price.translate(raw)
  local display = bmv_bmvmarketdata_product15_intra_v1_1.opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.opening_price, range, value, display)

  return offset + length, value
end

-- Operation Type
bmv_bmvmarketdata_product15_intra_v1_1.operation_type = {}

-- Size: Operation Type
bmv_bmvmarketdata_product15_intra_v1_1.operation_type.size = 1

-- Display: Operation Type
bmv_bmvmarketdata_product15_intra_v1_1.operation_type.labels = {
  ["C"] = "Operation Type: Cash (C)",
  ["O"] = "Operation Type: Public Offering (O)",
  ["R"] = "Operation Type: Registration Operation (R)",
  ["A"] = "Operation Type: Overallocation (A)",
  ["S"] = "Operation Type: Reciprocal Subscription (S)",
  ["F"] = "Operation Type: Public Buy Offering (F)",
  ["H"] = "Operation Type: Trades At Closing (H)",
  ["M"] = "Operation Type: Medium Price (M)",
  ["X"] = "Operation Type: Operation By Exception (X)",
  ["P"] = "Operation Type: Average For The Day (P)",
  ["D"] = "Operation Type: After Closing (D)",
  ["N"] = "Operation Type: Inav Trading (N)",
}

bmv_bmvmarketdata_product15_intra_v1_1.operation_type.display = function(value)
  return bmv_bmvmarketdata_product15_intra_v1_1.operation_type.labels[value] or "Operation Type: Unknown("..value..")"
end

-- Dissect: Operation Type
bmv_bmvmarketdata_product15_intra_v1_1.operation_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.operation_type.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product15_intra_v1_1.operation_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.operation_type, range, value, display)

  return offset + length, value
end

-- Original Date
bmv_bmvmarketdata_product15_intra_v1_1.original_date = {}

-- Size: Original Date
bmv_bmvmarketdata_product15_intra_v1_1.original_date.size = 8

-- Dissect: Original Date
bmv_bmvmarketdata_product15_intra_v1_1.original_date.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.original_date.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.original_date
  if bmv_bmvmarketdata_product15_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.original_date_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Original Number
bmv_bmvmarketdata_product15_intra_v1_1.original_number = {}

-- Size: Original Number
bmv_bmvmarketdata_product15_intra_v1_1.original_number.size = 4

-- Display: Original Number
bmv_bmvmarketdata_product15_intra_v1_1.original_number.display = function(value)
  return "Original Number: "..value
end

-- Dissect: Original Number
bmv_bmvmarketdata_product15_intra_v1_1.original_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.original_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product15_intra_v1_1.original_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.original_number, range, value, display)

  return offset + length, value
end

-- Participant
bmv_bmvmarketdata_product15_intra_v1_1.participant = {}

-- Size: Participant
bmv_bmvmarketdata_product15_intra_v1_1.participant.size = 5

-- Display: Participant
bmv_bmvmarketdata_product15_intra_v1_1.participant.display = function(value)
  return "Participant: "..value
end

-- Dissect: Participant
bmv_bmvmarketdata_product15_intra_v1_1.participant.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.participant.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product15_intra_v1_1.participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.participant, range, value, display)

  return offset + length, value
end

-- Price
bmv_bmvmarketdata_product15_intra_v1_1.price = {}

-- Size: Price
bmv_bmvmarketdata_product15_intra_v1_1.price.size = 8

-- Display: Price
bmv_bmvmarketdata_product15_intra_v1_1.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
bmv_bmvmarketdata_product15_intra_v1_1.price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price
bmv_bmvmarketdata_product15_intra_v1_1.price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product15_intra_v1_1.price.translate(raw)
  local display = bmv_bmvmarketdata_product15_intra_v1_1.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.price, range, value, display)

  return offset + length, value
end

-- Price Rate
bmv_bmvmarketdata_product15_intra_v1_1.price_rate = {}

-- Size: Price Rate
bmv_bmvmarketdata_product15_intra_v1_1.price_rate.size = 8

-- Display: Price Rate
bmv_bmvmarketdata_product15_intra_v1_1.price_rate.display = function(value)
  return "Price Rate: "..value
end

-- Translate: Price Rate
bmv_bmvmarketdata_product15_intra_v1_1.price_rate.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price Rate
bmv_bmvmarketdata_product15_intra_v1_1.price_rate.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.price_rate.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product15_intra_v1_1.price_rate.translate(raw)
  local display = bmv_bmvmarketdata_product15_intra_v1_1.price_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.price_rate, range, value, display)

  return offset + length, value
end

-- Price Setter
bmv_bmvmarketdata_product15_intra_v1_1.price_setter = {}

-- Size: Price Setter
bmv_bmvmarketdata_product15_intra_v1_1.price_setter.size = 1

-- Display: Price Setter
bmv_bmvmarketdata_product15_intra_v1_1.price_setter.display = function(value)
  return "Price Setter: "..value
end

-- Dissect: Price Setter
bmv_bmvmarketdata_product15_intra_v1_1.price_setter.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.price_setter.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product15_intra_v1_1.price_setter.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.price_setter, range, value, display)

  return offset + length, value
end

-- Probable Allocation Price
bmv_bmvmarketdata_product15_intra_v1_1.probable_allocation_price = {}

-- Size: Probable Allocation Price
bmv_bmvmarketdata_product15_intra_v1_1.probable_allocation_price.size = 8

-- Display: Probable Allocation Price
bmv_bmvmarketdata_product15_intra_v1_1.probable_allocation_price.display = function(value)
  return "Probable Allocation Price: "..value
end

-- Translate: Probable Allocation Price
bmv_bmvmarketdata_product15_intra_v1_1.probable_allocation_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Probable Allocation Price
bmv_bmvmarketdata_product15_intra_v1_1.probable_allocation_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.probable_allocation_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product15_intra_v1_1.probable_allocation_price.translate(raw)
  local display = bmv_bmvmarketdata_product15_intra_v1_1.probable_allocation_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.probable_allocation_price, range, value, display)

  return offset + length, value
end

-- Registered Volume
bmv_bmvmarketdata_product15_intra_v1_1.registered_volume = {}

-- Size: Registered Volume
bmv_bmvmarketdata_product15_intra_v1_1.registered_volume.size = 8

-- Display: Registered Volume
bmv_bmvmarketdata_product15_intra_v1_1.registered_volume.display = function(value)
  return "Registered Volume: "..value
end

-- Dissect: Registered Volume
bmv_bmvmarketdata_product15_intra_v1_1.registered_volume.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.registered_volume.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_product15_intra_v1_1.registered_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.registered_volume, range, value, display)

  return offset + length, value
end

-- Sales Volume
bmv_bmvmarketdata_product15_intra_v1_1.sales_volume = {}

-- Size: Sales Volume
bmv_bmvmarketdata_product15_intra_v1_1.sales_volume.size = 8

-- Display: Sales Volume
bmv_bmvmarketdata_product15_intra_v1_1.sales_volume.display = function(value)
  return "Sales Volume: "..value
end

-- Dissect: Sales Volume
bmv_bmvmarketdata_product15_intra_v1_1.sales_volume.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.sales_volume.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_product15_intra_v1_1.sales_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.sales_volume, range, value, display)

  return offset + length, value
end

-- Sell
bmv_bmvmarketdata_product15_intra_v1_1.sell = {}

-- Size: Sell
bmv_bmvmarketdata_product15_intra_v1_1.sell.size = 5

-- Display: Sell
bmv_bmvmarketdata_product15_intra_v1_1.sell.display = function(value)
  return "Sell: "..value
end

-- Dissect: Sell
bmv_bmvmarketdata_product15_intra_v1_1.sell.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.sell.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product15_intra_v1_1.sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.sell, range, value, display)

  return offset + length, value
end

-- Sending Time
bmv_bmvmarketdata_product15_intra_v1_1.sending_time = {}

-- Size: Sending Time
bmv_bmvmarketdata_product15_intra_v1_1.sending_time.size = 8

-- Dissect: Sending Time
bmv_bmvmarketdata_product15_intra_v1_1.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.sending_time.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.sending_time
  if bmv_bmvmarketdata_product15_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.sending_time_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Sequence Number
bmv_bmvmarketdata_product15_intra_v1_1.sequence_number = {}

-- Size: Sequence Number
bmv_bmvmarketdata_product15_intra_v1_1.sequence_number.size = 4

-- Display: Sequence Number
bmv_bmvmarketdata_product15_intra_v1_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
bmv_bmvmarketdata_product15_intra_v1_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.sequence_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product15_intra_v1_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Series
bmv_bmvmarketdata_product15_intra_v1_1.series = {}

-- Size: Series
bmv_bmvmarketdata_product15_intra_v1_1.series.size = 6

-- Display: Series
bmv_bmvmarketdata_product15_intra_v1_1.series.display = function(value)
  return "Series: "..value
end

-- Dissect: Series
bmv_bmvmarketdata_product15_intra_v1_1.series.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.series.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product15_intra_v1_1.series.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.series, range, value, display)

  return offset + length, value
end

-- Session
bmv_bmvmarketdata_product15_intra_v1_1.session = {}

-- Size: Session
bmv_bmvmarketdata_product15_intra_v1_1.session.size = 1

-- Display: Session
bmv_bmvmarketdata_product15_intra_v1_1.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
bmv_bmvmarketdata_product15_intra_v1_1.session.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.session.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product15_intra_v1_1.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.session, range, value, display)

  return offset + length, value
end

-- Settlement
bmv_bmvmarketdata_product15_intra_v1_1.settlement = {}

-- Size: Settlement
bmv_bmvmarketdata_product15_intra_v1_1.settlement.size = 1

-- Display: Settlement
bmv_bmvmarketdata_product15_intra_v1_1.settlement.labels = {
  ["M"] = "Settlement: Same Day (M)",
  ["2"] = "Settlement: Twenty Four Hours (2)",
  ["4"] = "Settlement: Forty Eight Hours (4)",
  ["7"] = "Settlement: Seventy Two Hours (7)",
  ["9"] = "Settlement: Ninety Six Hours (9)",
  ["1"] = "Settlement: One Hundred Twenty Hours (1)",
}

bmv_bmvmarketdata_product15_intra_v1_1.settlement.display = function(value)
  return bmv_bmvmarketdata_product15_intra_v1_1.settlement.labels[value] or "Settlement: Unknown("..value..")"
end

-- Dissect: Settlement
bmv_bmvmarketdata_product15_intra_v1_1.settlement.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.settlement.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product15_intra_v1_1.settlement.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.settlement, range, value, display)

  return offset + length, value
end

-- Settlement Date
bmv_bmvmarketdata_product15_intra_v1_1.settlement_date = {}

-- Size: Settlement Date
bmv_bmvmarketdata_product15_intra_v1_1.settlement_date.size = 8

-- Dissect: Settlement Date
bmv_bmvmarketdata_product15_intra_v1_1.settlement_date.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.settlement_date.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.settlement_date
  if bmv_bmvmarketdata_product15_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.settlement_date_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Total Messages
bmv_bmvmarketdata_product15_intra_v1_1.total_messages = {}

-- Size: Total Messages
bmv_bmvmarketdata_product15_intra_v1_1.total_messages.size = 1

-- Display: Total Messages
bmv_bmvmarketdata_product15_intra_v1_1.total_messages.display = function(value)
  return "Total Messages: "..value
end

-- Dissect: Total Messages
bmv_bmvmarketdata_product15_intra_v1_1.total_messages.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.total_messages.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product15_intra_v1_1.total_messages.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.total_messages, range, value, display)

  return offset + length, value
end

-- Trade Date
bmv_bmvmarketdata_product15_intra_v1_1.trade_date = {}

-- Size: Trade Date
bmv_bmvmarketdata_product15_intra_v1_1.trade_date.size = 8

-- Dissect: Trade Date
bmv_bmvmarketdata_product15_intra_v1_1.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.trade_date.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.trade_date
  if bmv_bmvmarketdata_product15_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.trade_date_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Trade Number
bmv_bmvmarketdata_product15_intra_v1_1.trade_number = {}

-- Size: Trade Number
bmv_bmvmarketdata_product15_intra_v1_1.trade_number.size = 4

-- Display: Trade Number
bmv_bmvmarketdata_product15_intra_v1_1.trade_number.display = function(value)
  return "Trade Number: "..value
end

-- Dissect: Trade Number
bmv_bmvmarketdata_product15_intra_v1_1.trade_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.trade_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product15_intra_v1_1.trade_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.trade_number, range, value, display)

  return offset + length, value
end

-- Trade Time
bmv_bmvmarketdata_product15_intra_v1_1.trade_time = {}

-- Size: Trade Time
bmv_bmvmarketdata_product15_intra_v1_1.trade_time.size = 8

-- Dissect: Trade Time
bmv_bmvmarketdata_product15_intra_v1_1.trade_time.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.trade_time.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.trade_time
  if bmv_bmvmarketdata_product15_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.trade_time_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Value Type
bmv_bmvmarketdata_product15_intra_v1_1.value_type = {}

-- Size: Value Type
bmv_bmvmarketdata_product15_intra_v1_1.value_type.size = 4

-- Display: Value Type
bmv_bmvmarketdata_product15_intra_v1_1.value_type.display = function(value)
  return "Value Type: "..value
end

-- Dissect: Value Type
bmv_bmvmarketdata_product15_intra_v1_1.value_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.value_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product15_intra_v1_1.value_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.value_type, range, value, display)

  return offset + length, value
end

-- Virtual Trades Status
bmv_bmvmarketdata_product15_intra_v1_1.virtual_trades_status = {}

-- Size: Virtual Trades Status
bmv_bmvmarketdata_product15_intra_v1_1.virtual_trades_status.size = 1

-- Display: Virtual Trades Status
bmv_bmvmarketdata_product15_intra_v1_1.virtual_trades_status.labels = {
  ["A"] = "Virtual Trades Status: Addition (A)",
  ["B"] = "Virtual Trades Status: Deletion (B)",
}

bmv_bmvmarketdata_product15_intra_v1_1.virtual_trades_status.display = function(value)
  return bmv_bmvmarketdata_product15_intra_v1_1.virtual_trades_status.labels[value] or "Virtual Trades Status: Unknown("..value..")"
end

-- Dissect: Virtual Trades Status
bmv_bmvmarketdata_product15_intra_v1_1.virtual_trades_status.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.virtual_trades_status.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product15_intra_v1_1.virtual_trades_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.virtual_trades_status, range, value, display)

  return offset + length, value
end

-- Volatility
bmv_bmvmarketdata_product15_intra_v1_1.volatility = {}

-- Size: Volatility
bmv_bmvmarketdata_product15_intra_v1_1.volatility.size = 8

-- Display: Volatility
bmv_bmvmarketdata_product15_intra_v1_1.volatility.display = function(value)
  return "Volatility: "..value
end

-- Translate: Volatility
bmv_bmvmarketdata_product15_intra_v1_1.volatility.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Volatility
bmv_bmvmarketdata_product15_intra_v1_1.volatility.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.volatility.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product15_intra_v1_1.volatility.translate(raw)
  local display = bmv_bmvmarketdata_product15_intra_v1_1.volatility.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.volatility, range, value, display)

  return offset + length, value
end

-- Volume Int 324
bmv_bmvmarketdata_product15_intra_v1_1.volume_int_324 = {}

-- Size: Volume Int 324
bmv_bmvmarketdata_product15_intra_v1_1.volume_int_324.size = 4

-- Display: Volume Int 324
bmv_bmvmarketdata_product15_intra_v1_1.volume_int_324.display = function(value)
  return "Volume Int 324: "..value
end

-- Dissect: Volume Int 324
bmv_bmvmarketdata_product15_intra_v1_1.volume_int_324.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.volume_int_324.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product15_intra_v1_1.volume_int_324.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.volume_int_324, range, value, display)

  return offset + length, value
end

-- Volume Int 648
bmv_bmvmarketdata_product15_intra_v1_1.volume_int_648 = {}

-- Size: Volume Int 648
bmv_bmvmarketdata_product15_intra_v1_1.volume_int_648.size = 8

-- Display: Volume Int 648
bmv_bmvmarketdata_product15_intra_v1_1.volume_int_648.display = function(value)
  return "Volume Int 648: "..value
end

-- Dissect: Volume Int 648
bmv_bmvmarketdata_product15_intra_v1_1.volume_int_648.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.volume_int_648.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_product15_intra_v1_1.volume_int_648.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.volume_int_648, range, value, display)

  return offset + length, value
end

-- Weighted Average Price
bmv_bmvmarketdata_product15_intra_v1_1.weighted_average_price = {}

-- Size: Weighted Average Price
bmv_bmvmarketdata_product15_intra_v1_1.weighted_average_price.size = 8

-- Display: Weighted Average Price
bmv_bmvmarketdata_product15_intra_v1_1.weighted_average_price.display = function(value)
  return "Weighted Average Price: "..value
end

-- Translate: Weighted Average Price
bmv_bmvmarketdata_product15_intra_v1_1.weighted_average_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Weighted Average Price
bmv_bmvmarketdata_product15_intra_v1_1.weighted_average_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product15_intra_v1_1.weighted_average_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product15_intra_v1_1.weighted_average_price.translate(raw)
  local display = bmv_bmvmarketdata_product15_intra_v1_1.weighted_average_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.weighted_average_price, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Bmv BmvMarketData Product15 Intra 1.1
-----------------------------------------------------------------------

-- Order Change Message
bmv_bmvmarketdata_product15_intra_v1_1.order_change_message = {}

-- Size: Order Change Message
bmv_bmvmarketdata_product15_intra_v1_1.order_change_message.size =
  bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.original_date.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.original_number.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.new_date.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.new_number.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.direction.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.volume_int_324.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.price.size

-- Display: Order Change Message
bmv_bmvmarketdata_product15_intra_v1_1.order_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Change Message
bmv_bmvmarketdata_product15_intra_v1_1.order_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Original Date: Timestamp(2)
  index, original_date = bmv_bmvmarketdata_product15_intra_v1_1.original_date.dissect(buffer, index, packet, parent)

  -- Original Number: Int32
  index, original_number = bmv_bmvmarketdata_product15_intra_v1_1.original_number.dissect(buffer, index, packet, parent)

  -- New Date: Timestamp(2)
  index, new_date = bmv_bmvmarketdata_product15_intra_v1_1.new_date.dissect(buffer, index, packet, parent)

  -- New Number: Int32
  index, new_number = bmv_bmvmarketdata_product15_intra_v1_1.new_number.dissect(buffer, index, packet, parent)

  -- Direction: ALPHA
  index, direction = bmv_bmvmarketdata_product15_intra_v1_1.direction.dissect(buffer, index, packet, parent)

  -- Volume Int 324: Int32
  index, volume_int_324 = bmv_bmvmarketdata_product15_intra_v1_1.volume_int_324.dissect(buffer, index, packet, parent)

  -- Price: Price (8)
  index, price = bmv_bmvmarketdata_product15_intra_v1_1.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Change Message
bmv_bmvmarketdata_product15_intra_v1_1.order_change_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.order_change_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product15_intra_v1_1.order_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product15_intra_v1_1.order_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product15_intra_v1_1.order_change_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancellation Message
bmv_bmvmarketdata_product15_intra_v1_1.order_cancellation_message = {}

-- Size: Order Cancellation Message
bmv_bmvmarketdata_product15_intra_v1_1.order_cancellation_message.size =
  bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.date.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.number.size

-- Display: Order Cancellation Message
bmv_bmvmarketdata_product15_intra_v1_1.order_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancellation Message
bmv_bmvmarketdata_product15_intra_v1_1.order_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Date: Timestamp(1)
  index, date = bmv_bmvmarketdata_product15_intra_v1_1.date.dissect(buffer, index, packet, parent)

  -- Number: Int32
  index, number = bmv_bmvmarketdata_product15_intra_v1_1.number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancellation Message
bmv_bmvmarketdata_product15_intra_v1_1.order_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.order_cancellation_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product15_intra_v1_1.order_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product15_intra_v1_1.order_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product15_intra_v1_1.order_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Of Orders Message
bmv_bmvmarketdata_product15_intra_v1_1.execution_of_orders_message = {}

-- Size: Execution Of Orders Message
bmv_bmvmarketdata_product15_intra_v1_1.execution_of_orders_message.size =
  bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.date.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.number.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.volume_int_324.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.trade_number.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.execution_price.size

-- Display: Execution Of Orders Message
bmv_bmvmarketdata_product15_intra_v1_1.execution_of_orders_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Of Orders Message
bmv_bmvmarketdata_product15_intra_v1_1.execution_of_orders_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Date: Timestamp(1)
  index, date = bmv_bmvmarketdata_product15_intra_v1_1.date.dissect(buffer, index, packet, parent)

  -- Number: Int32
  index, number = bmv_bmvmarketdata_product15_intra_v1_1.number.dissect(buffer, index, packet, parent)

  -- Volume Int 324: Int32
  index, volume_int_324 = bmv_bmvmarketdata_product15_intra_v1_1.volume_int_324.dissect(buffer, index, packet, parent)

  -- Trade Number: Int32
  index, trade_number = bmv_bmvmarketdata_product15_intra_v1_1.trade_number.dissect(buffer, index, packet, parent)

  -- Execution Price: Precio(8)
  index, execution_price = bmv_bmvmarketdata_product15_intra_v1_1.execution_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Of Orders Message
bmv_bmvmarketdata_product15_intra_v1_1.execution_of_orders_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.execution_of_orders_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product15_intra_v1_1.execution_of_orders_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product15_intra_v1_1.execution_of_orders_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product15_intra_v1_1.execution_of_orders_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Addition Message
bmv_bmvmarketdata_product15_intra_v1_1.order_addition_message = {}

-- Size: Order Addition Message
bmv_bmvmarketdata_product15_intra_v1_1.order_addition_message.size =
  bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.date_and_time.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.number.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.direction.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.volume_int_324.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.price.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.participant.size

-- Display: Order Addition Message
bmv_bmvmarketdata_product15_intra_v1_1.order_addition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Addition Message
bmv_bmvmarketdata_product15_intra_v1_1.order_addition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Date And Time: Timestamp(2)
  index, date_and_time = bmv_bmvmarketdata_product15_intra_v1_1.date_and_time.dissect(buffer, index, packet, parent)

  -- Number: Int32
  index, number = bmv_bmvmarketdata_product15_intra_v1_1.number.dissect(buffer, index, packet, parent)

  -- Direction: ALPHA
  index, direction = bmv_bmvmarketdata_product15_intra_v1_1.direction.dissect(buffer, index, packet, parent)

  -- Volume Int 324: Int32
  index, volume_int_324 = bmv_bmvmarketdata_product15_intra_v1_1.volume_int_324.dissect(buffer, index, packet, parent)

  -- Price: Price (8)
  index, price = bmv_bmvmarketdata_product15_intra_v1_1.price.dissect(buffer, index, packet, parent)

  -- Participant: ALPHA
  index, participant = bmv_bmvmarketdata_product15_intra_v1_1.participant.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Addition Message
bmv_bmvmarketdata_product15_intra_v1_1.order_addition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.order_addition_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product15_intra_v1_1.order_addition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product15_intra_v1_1.order_addition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product15_intra_v1_1.order_addition_message.fields(buffer, offset, packet, parent)
  end
end

-- Virtual Trades Message
bmv_bmvmarketdata_product15_intra_v1_1.virtual_trades_message = {}

-- Size: Virtual Trades Message
bmv_bmvmarketdata_product15_intra_v1_1.virtual_trades_message.size =
  bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.virtual_trades_status.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.operation_type.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.number.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.volume_int_324.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.concertation.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.buy.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.sell.size

-- Display: Virtual Trades Message
bmv_bmvmarketdata_product15_intra_v1_1.virtual_trades_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Virtual Trades Message
bmv_bmvmarketdata_product15_intra_v1_1.virtual_trades_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Virtual Trades Status: ALPHA
  index, virtual_trades_status = bmv_bmvmarketdata_product15_intra_v1_1.virtual_trades_status.dissect(buffer, index, packet, parent)

  -- Operation Type: ALPHA
  index, operation_type = bmv_bmvmarketdata_product15_intra_v1_1.operation_type.dissect(buffer, index, packet, parent)

  -- Number: Int32
  index, number = bmv_bmvmarketdata_product15_intra_v1_1.number.dissect(buffer, index, packet, parent)

  -- Volume Int 324: Int32
  index, volume_int_324 = bmv_bmvmarketdata_product15_intra_v1_1.volume_int_324.dissect(buffer, index, packet, parent)

  -- Concertation: ALPHA
  index, concertation = bmv_bmvmarketdata_product15_intra_v1_1.concertation.dissect(buffer, index, packet, parent)

  -- Buy: ALPHA
  index, buy = bmv_bmvmarketdata_product15_intra_v1_1.buy.dissect(buffer, index, packet, parent)

  -- Sell: ALPHA
  index, sell = bmv_bmvmarketdata_product15_intra_v1_1.sell.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Virtual Trades Message
bmv_bmvmarketdata_product15_intra_v1_1.virtual_trades_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.virtual_trades_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product15_intra_v1_1.virtual_trades_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product15_intra_v1_1.virtual_trades_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product15_intra_v1_1.virtual_trades_message.fields(buffer, offset, packet, parent)
  end
end

-- Tradability Message
bmv_bmvmarketdata_product15_intra_v1_1.tradability_message = {}

-- Size: Tradability Message
bmv_bmvmarketdata_product15_intra_v1_1.tradability_message.size =
  bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.number_of_operations.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.volume_int_648.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.amount.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.opening_price.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.maximum.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.minimum.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.average.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.last.size

-- Display: Tradability Message
bmv_bmvmarketdata_product15_intra_v1_1.tradability_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tradability Message
bmv_bmvmarketdata_product15_intra_v1_1.tradability_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Number Of Operations: Int32
  index, number_of_operations = bmv_bmvmarketdata_product15_intra_v1_1.number_of_operations.dissect(buffer, index, packet, parent)

  -- Volume Int 648: Int64
  index, volume_int_648 = bmv_bmvmarketdata_product15_intra_v1_1.volume_int_648.dissect(buffer, index, packet, parent)

  -- Amount: Precio(8)
  index, amount = bmv_bmvmarketdata_product15_intra_v1_1.amount.dissect(buffer, index, packet, parent)

  -- Opening Price: Price (8)
  index, opening_price = bmv_bmvmarketdata_product15_intra_v1_1.opening_price.dissect(buffer, index, packet, parent)

  -- Maximum: Price (8)
  index, maximum = bmv_bmvmarketdata_product15_intra_v1_1.maximum.dissect(buffer, index, packet, parent)

  -- Minimum: Price (8)
  index, minimum = bmv_bmvmarketdata_product15_intra_v1_1.minimum.dissect(buffer, index, packet, parent)

  -- Average: Price (8)
  index, average = bmv_bmvmarketdata_product15_intra_v1_1.average.dissect(buffer, index, packet, parent)

  -- Last: Price (8)
  index, last = bmv_bmvmarketdata_product15_intra_v1_1.last.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tradability Message
bmv_bmvmarketdata_product15_intra_v1_1.tradability_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.tradability_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product15_intra_v1_1.tradability_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product15_intra_v1_1.tradability_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product15_intra_v1_1.tradability_message.fields(buffer, offset, packet, parent)
  end
end

-- Mutual Fund Trades Message
bmv_bmvmarketdata_product15_intra_v1_1.mutual_fund_trades_message = {}

-- Size: Mutual Fund Trades Message
bmv_bmvmarketdata_product15_intra_v1_1.mutual_fund_trades_message.size =
  bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.trade_date.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.price.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.book_value.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.number_of_sales_transactions.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.sales_volume.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.number_of_buy_transactions.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.buy_volume.size

-- Display: Mutual Fund Trades Message
bmv_bmvmarketdata_product15_intra_v1_1.mutual_fund_trades_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mutual Fund Trades Message
bmv_bmvmarketdata_product15_intra_v1_1.mutual_fund_trades_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Trade Date: Timestamp(1)
  index, trade_date = bmv_bmvmarketdata_product15_intra_v1_1.trade_date.dissect(buffer, index, packet, parent)

  -- Price: Price (8)
  index, price = bmv_bmvmarketdata_product15_intra_v1_1.price.dissect(buffer, index, packet, parent)

  -- Book Value: Price (8)
  index, book_value = bmv_bmvmarketdata_product15_intra_v1_1.book_value.dissect(buffer, index, packet, parent)

  -- Number Of Sales Transactions: Int32
  index, number_of_sales_transactions = bmv_bmvmarketdata_product15_intra_v1_1.number_of_sales_transactions.dissect(buffer, index, packet, parent)

  -- Sales Volume: Int64
  index, sales_volume = bmv_bmvmarketdata_product15_intra_v1_1.sales_volume.dissect(buffer, index, packet, parent)

  -- Number Of Buy Transactions: Int32
  index, number_of_buy_transactions = bmv_bmvmarketdata_product15_intra_v1_1.number_of_buy_transactions.dissect(buffer, index, packet, parent)

  -- Buy Volume: Int64
  index, buy_volume = bmv_bmvmarketdata_product15_intra_v1_1.buy_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mutual Fund Trades Message
bmv_bmvmarketdata_product15_intra_v1_1.mutual_fund_trades_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.mutual_fund_trades_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product15_intra_v1_1.mutual_fund_trades_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product15_intra_v1_1.mutual_fund_trades_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product15_intra_v1_1.mutual_fund_trades_message.fields(buffer, offset, packet, parent)
  end
end

-- Registry Operations Message
bmv_bmvmarketdata_product15_intra_v1_1.registry_operations_message = {}

-- Size: Registry Operations Message
bmv_bmvmarketdata_product15_intra_v1_1.registry_operations_message.size =
  bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.offer_type.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.income.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.value_type.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.issuer.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.series.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.maximum_volume.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.registered_volume.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.price_rate.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.settlement_date.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.firm.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.movement.size

-- Display: Registry Operations Message
bmv_bmvmarketdata_product15_intra_v1_1.registry_operations_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Registry Operations Message
bmv_bmvmarketdata_product15_intra_v1_1.registry_operations_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Offer Type: ALPHA
  index, offer_type = bmv_bmvmarketdata_product15_intra_v1_1.offer_type.dissect(buffer, index, packet, parent)

  -- Income: ALPHA
  index, income = bmv_bmvmarketdata_product15_intra_v1_1.income.dissect(buffer, index, packet, parent)

  -- Value Type: ALPHA
  index, value_type = bmv_bmvmarketdata_product15_intra_v1_1.value_type.dissect(buffer, index, packet, parent)

  -- Issuer: ALPHA
  index, issuer = bmv_bmvmarketdata_product15_intra_v1_1.issuer.dissect(buffer, index, packet, parent)

  -- Series: ALPHA
  index, series = bmv_bmvmarketdata_product15_intra_v1_1.series.dissect(buffer, index, packet, parent)

  -- Maximum Volume: Int64
  index, maximum_volume = bmv_bmvmarketdata_product15_intra_v1_1.maximum_volume.dissect(buffer, index, packet, parent)

  -- Registered Volume: Int64
  index, registered_volume = bmv_bmvmarketdata_product15_intra_v1_1.registered_volume.dissect(buffer, index, packet, parent)

  -- Price Rate: Price (8)
  index, price_rate = bmv_bmvmarketdata_product15_intra_v1_1.price_rate.dissect(buffer, index, packet, parent)

  -- Settlement Date: Timestamp(1)
  index, settlement_date = bmv_bmvmarketdata_product15_intra_v1_1.settlement_date.dissect(buffer, index, packet, parent)

  -- Firm: ALPHA
  index, firm = bmv_bmvmarketdata_product15_intra_v1_1.firm.dissect(buffer, index, packet, parent)

  -- Movement: ALPHA
  index, movement = bmv_bmvmarketdata_product15_intra_v1_1.movement.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Registry Operations Message
bmv_bmvmarketdata_product15_intra_v1_1.registry_operations_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.registry_operations_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product15_intra_v1_1.registry_operations_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product15_intra_v1_1.registry_operations_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product15_intra_v1_1.registry_operations_message.fields(buffer, offset, packet, parent)
  end
end

-- Middle Price Existing Quotes Message
bmv_bmvmarketdata_product15_intra_v1_1.middle_price_existing_quotes_message = {}

-- Size: Middle Price Existing Quotes Message
bmv_bmvmarketdata_product15_intra_v1_1.middle_price_existing_quotes_message.size =
  bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.existing_postures.size

-- Display: Middle Price Existing Quotes Message
bmv_bmvmarketdata_product15_intra_v1_1.middle_price_existing_quotes_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Middle Price Existing Quotes Message
bmv_bmvmarketdata_product15_intra_v1_1.middle_price_existing_quotes_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Existing Postures: ALPHA
  index, existing_postures = bmv_bmvmarketdata_product15_intra_v1_1.existing_postures.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Middle Price Existing Quotes Message
bmv_bmvmarketdata_product15_intra_v1_1.middle_price_existing_quotes_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.middle_price_existing_quotes_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product15_intra_v1_1.middle_price_existing_quotes_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product15_intra_v1_1.middle_price_existing_quotes_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product15_intra_v1_1.middle_price_existing_quotes_message.fields(buffer, offset, packet, parent)
  end
end

-- Continuous Auctions Beginning Message
bmv_bmvmarketdata_product15_intra_v1_1.continuous_auctions_beginning_message = {}

-- Size: Continuous Auctions Beginning Message
bmv_bmvmarketdata_product15_intra_v1_1.continuous_auctions_beginning_message.size =
  bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.beginning_time_of_auction.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.end_auction_time.size

-- Display: Continuous Auctions Beginning Message
bmv_bmvmarketdata_product15_intra_v1_1.continuous_auctions_beginning_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Continuous Auctions Beginning Message
bmv_bmvmarketdata_product15_intra_v1_1.continuous_auctions_beginning_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Beginning Time Of Auction: Timestamp(2)
  index, beginning_time_of_auction = bmv_bmvmarketdata_product15_intra_v1_1.beginning_time_of_auction.dissect(buffer, index, packet, parent)

  -- End Auction Time: Timestamp(2)
  index, end_auction_time = bmv_bmvmarketdata_product15_intra_v1_1.end_auction_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Continuous Auctions Beginning Message
bmv_bmvmarketdata_product15_intra_v1_1.continuous_auctions_beginning_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.continuous_auctions_beginning_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product15_intra_v1_1.continuous_auctions_beginning_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product15_intra_v1_1.continuous_auctions_beginning_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product15_intra_v1_1.continuous_auctions_beginning_message.fields(buffer, offset, packet, parent)
  end
end

-- Probable Allocation Price Message
bmv_bmvmarketdata_product15_intra_v1_1.probable_allocation_price_message = {}

-- Size: Probable Allocation Price Message
bmv_bmvmarketdata_product15_intra_v1_1.probable_allocation_price_message.size =
  bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.probable_allocation_price.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.volume_int_324.size

-- Display: Probable Allocation Price Message
bmv_bmvmarketdata_product15_intra_v1_1.probable_allocation_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Probable Allocation Price Message
bmv_bmvmarketdata_product15_intra_v1_1.probable_allocation_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Probable Allocation Price: Precio (8)
  index, probable_allocation_price = bmv_bmvmarketdata_product15_intra_v1_1.probable_allocation_price.dissect(buffer, index, packet, parent)

  -- Volume Int 324: Int32
  index, volume_int_324 = bmv_bmvmarketdata_product15_intra_v1_1.volume_int_324.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Probable Allocation Price Message
bmv_bmvmarketdata_product15_intra_v1_1.probable_allocation_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.probable_allocation_price_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product15_intra_v1_1.probable_allocation_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product15_intra_v1_1.probable_allocation_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product15_intra_v1_1.probable_allocation_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Capital Trades Message
bmv_bmvmarketdata_product15_intra_v1_1.capital_trades_message = {}

-- Size: Capital Trades Message
bmv_bmvmarketdata_product15_intra_v1_1.capital_trades_message.size =
  bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.trade_time.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.volume_int_324.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.price.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.concertation_type.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.trade_number.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.price_setter.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.operation_type.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.amount.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.buy.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.sell.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.settlement.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.auction_indicator.size

-- Display: Capital Trades Message
bmv_bmvmarketdata_product15_intra_v1_1.capital_trades_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Capital Trades Message
bmv_bmvmarketdata_product15_intra_v1_1.capital_trades_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Trade Time: Timestamp(2)
  index, trade_time = bmv_bmvmarketdata_product15_intra_v1_1.trade_time.dissect(buffer, index, packet, parent)

  -- Volume Int 324: Int32
  index, volume_int_324 = bmv_bmvmarketdata_product15_intra_v1_1.volume_int_324.dissect(buffer, index, packet, parent)

  -- Price: Price (8)
  index, price = bmv_bmvmarketdata_product15_intra_v1_1.price.dissect(buffer, index, packet, parent)

  -- Concertation Type: ALPHA
  index, concertation_type = bmv_bmvmarketdata_product15_intra_v1_1.concertation_type.dissect(buffer, index, packet, parent)

  -- Trade Number: Int32
  index, trade_number = bmv_bmvmarketdata_product15_intra_v1_1.trade_number.dissect(buffer, index, packet, parent)

  -- Price Setter: ALPHA
  index, price_setter = bmv_bmvmarketdata_product15_intra_v1_1.price_setter.dissect(buffer, index, packet, parent)

  -- Operation Type: ALPHA
  index, operation_type = bmv_bmvmarketdata_product15_intra_v1_1.operation_type.dissect(buffer, index, packet, parent)

  -- Amount: Precio(8)
  index, amount = bmv_bmvmarketdata_product15_intra_v1_1.amount.dissect(buffer, index, packet, parent)

  -- Buy: ALPHA
  index, buy = bmv_bmvmarketdata_product15_intra_v1_1.buy.dissect(buffer, index, packet, parent)

  -- Sell: ALPHA
  index, sell = bmv_bmvmarketdata_product15_intra_v1_1.sell.dissect(buffer, index, packet, parent)

  -- Settlement: ALPHA
  index, settlement = bmv_bmvmarketdata_product15_intra_v1_1.settlement.dissect(buffer, index, packet, parent)

  -- Auction Indicator: ALPHA
  index, auction_indicator = bmv_bmvmarketdata_product15_intra_v1_1.auction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Capital Trades Message
bmv_bmvmarketdata_product15_intra_v1_1.capital_trades_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.capital_trades_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product15_intra_v1_1.capital_trades_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product15_intra_v1_1.capital_trades_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product15_intra_v1_1.capital_trades_message.fields(buffer, offset, packet, parent)
  end
end

-- Weighted Average Price Settlement Prices Message
bmv_bmvmarketdata_product15_intra_v1_1.weighted_average_price_settlement_prices_message = {}

-- Size: Weighted Average Price Settlement Prices Message
bmv_bmvmarketdata_product15_intra_v1_1.weighted_average_price_settlement_prices_message.size =
  bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.weighted_average_price.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.volatility.size

-- Display: Weighted Average Price Settlement Prices Message
bmv_bmvmarketdata_product15_intra_v1_1.weighted_average_price_settlement_prices_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Weighted Average Price Settlement Prices Message
bmv_bmvmarketdata_product15_intra_v1_1.weighted_average_price_settlement_prices_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Weighted Average Price: Price (8)
  index, weighted_average_price = bmv_bmvmarketdata_product15_intra_v1_1.weighted_average_price.dissect(buffer, index, packet, parent)

  -- Volatility: Price (8)
  index, volatility = bmv_bmvmarketdata_product15_intra_v1_1.volatility.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Weighted Average Price Settlement Prices Message
bmv_bmvmarketdata_product15_intra_v1_1.weighted_average_price_settlement_prices_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.weighted_average_price_settlement_prices_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product15_intra_v1_1.weighted_average_price_settlement_prices_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product15_intra_v1_1.weighted_average_price_settlement_prices_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product15_intra_v1_1.weighted_average_price_settlement_prices_message.fields(buffer, offset, packet, parent)
  end
end

-- Status Changes Message
bmv_bmvmarketdata_product15_intra_v1_1.status_changes_message = {}

-- Size: Status Changes Message
bmv_bmvmarketdata_product15_intra_v1_1.status_changes_message.size =
  bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.instrument_status.size

-- Display: Status Changes Message
bmv_bmvmarketdata_product15_intra_v1_1.status_changes_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Status Changes Message
bmv_bmvmarketdata_product15_intra_v1_1.status_changes_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Instrument Status: ALPHA
  index, instrument_status = bmv_bmvmarketdata_product15_intra_v1_1.instrument_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Status Changes Message
bmv_bmvmarketdata_product15_intra_v1_1.status_changes_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.status_changes_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product15_intra_v1_1.status_changes_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product15_intra_v1_1.status_changes_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product15_intra_v1_1.status_changes_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancellation Message
bmv_bmvmarketdata_product15_intra_v1_1.trade_cancellation_message = {}

-- Size: Trade Cancellation Message
bmv_bmvmarketdata_product15_intra_v1_1.trade_cancellation_message.size =
  bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.trade_number.size

-- Display: Trade Cancellation Message
bmv_bmvmarketdata_product15_intra_v1_1.trade_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancellation Message
bmv_bmvmarketdata_product15_intra_v1_1.trade_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Trade Number: Int32
  index, trade_number = bmv_bmvmarketdata_product15_intra_v1_1.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancellation Message
bmv_bmvmarketdata_product15_intra_v1_1.trade_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.trade_cancellation_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product15_intra_v1_1.trade_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product15_intra_v1_1.trade_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product15_intra_v1_1.trade_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Events System Message
bmv_bmvmarketdata_product15_intra_v1_1.events_system_message = {}

-- Size: Events System Message
bmv_bmvmarketdata_product15_intra_v1_1.events_system_message.size =
  bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.event_code.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.market.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.sending_time.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.ending_time.size

-- Display: Events System Message
bmv_bmvmarketdata_product15_intra_v1_1.events_system_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Events System Message
bmv_bmvmarketdata_product15_intra_v1_1.events_system_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product15_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Event Code: ALPHA
  index, event_code = bmv_bmvmarketdata_product15_intra_v1_1.event_code.dissect(buffer, index, packet, parent)

  -- Market: ALPHA
  index, market = bmv_bmvmarketdata_product15_intra_v1_1.market.dissect(buffer, index, packet, parent)

  -- Sending Time: Timestamp(2)
  index, sending_time = bmv_bmvmarketdata_product15_intra_v1_1.sending_time.dissect(buffer, index, packet, parent)

  -- Ending Time: Timestamp(2)
  index, ending_time = bmv_bmvmarketdata_product15_intra_v1_1.ending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Events System Message
bmv_bmvmarketdata_product15_intra_v1_1.events_system_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.events_system_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product15_intra_v1_1.events_system_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product15_intra_v1_1.events_system_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product15_intra_v1_1.events_system_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
bmv_bmvmarketdata_product15_intra_v1_1.payload = {}

-- Dissect: Payload
bmv_bmvmarketdata_product15_intra_v1_1.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Events System Message
  if message_type == 0x53 then
    return bmv_bmvmarketdata_product15_intra_v1_1.events_system_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancellation Message
  if message_type == 0x48 then
    return bmv_bmvmarketdata_product15_intra_v1_1.trade_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Status Changes Message
  if message_type == 0x34 then
    return bmv_bmvmarketdata_product15_intra_v1_1.status_changes_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Weighted Average Price Settlement Prices Message
  if message_type == 0x4D then
    return bmv_bmvmarketdata_product15_intra_v1_1.weighted_average_price_settlement_prices_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Capital Trades Message
  if message_type == 0x50 then
    return bmv_bmvmarketdata_product15_intra_v1_1.capital_trades_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Probable Allocation Price Message
  if message_type == 0x32 then
    return bmv_bmvmarketdata_product15_intra_v1_1.probable_allocation_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Continuous Auctions Beginning Message
  if message_type == 0x33 then
    return bmv_bmvmarketdata_product15_intra_v1_1.continuous_auctions_beginning_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Middle Price Existing Quotes Message
  if message_type == 0x35 then
    return bmv_bmvmarketdata_product15_intra_v1_1.middle_price_existing_quotes_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Registry Operations Message
  if message_type == 0x5A then
    return bmv_bmvmarketdata_product15_intra_v1_1.registry_operations_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mutual Fund Trades Message
  if message_type == 0x59 then
    return bmv_bmvmarketdata_product15_intra_v1_1.mutual_fund_trades_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tradability Message
  if message_type == 0x45 then
    return bmv_bmvmarketdata_product15_intra_v1_1.tradability_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Virtual Trades Message
  if message_type == 0x56 then
    return bmv_bmvmarketdata_product15_intra_v1_1.virtual_trades_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Addition Message
  if message_type == 0x41 then
    return bmv_bmvmarketdata_product15_intra_v1_1.order_addition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Of Orders Message
  if message_type == 0x43 then
    return bmv_bmvmarketdata_product15_intra_v1_1.execution_of_orders_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancellation Message
  if message_type == 0x44 then
    return bmv_bmvmarketdata_product15_intra_v1_1.order_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Change Message
  if message_type == 0x46 then
    return bmv_bmvmarketdata_product15_intra_v1_1.order_change_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
bmv_bmvmarketdata_product15_intra_v1_1.message_header = {}

-- Size: Message Header
bmv_bmvmarketdata_product15_intra_v1_1.message_header.size =
  bmv_bmvmarketdata_product15_intra_v1_1.message_length.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.message_type.size

-- Display: Message Header
bmv_bmvmarketdata_product15_intra_v1_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
bmv_bmvmarketdata_product15_intra_v1_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: Int16
  index, message_length = bmv_bmvmarketdata_product15_intra_v1_1.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: ALPHA
  index, message_type = bmv_bmvmarketdata_product15_intra_v1_1.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
bmv_bmvmarketdata_product15_intra_v1_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.message_header, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product15_intra_v1_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product15_intra_v1_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product15_intra_v1_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message Block
bmv_bmvmarketdata_product15_intra_v1_1.message_block = {}

-- Display: Message Block
bmv_bmvmarketdata_product15_intra_v1_1.message_block.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Block
bmv_bmvmarketdata_product15_intra_v1_1.message_block.fields = function(buffer, offset, packet, parent, size_of_message_block, message_block_index)
  local index = offset

  -- Implicit Message Block Index
  if message_block_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.message_block_index, message_block_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = bmv_bmvmarketdata_product15_intra_v1_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 16 branches
  index = bmv_bmvmarketdata_product15_intra_v1_1.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message Block
bmv_bmvmarketdata_product15_intra_v1_1.message_block.dissect = function(buffer, offset, packet, parent, size_of_message_block, message_block_index)
  local index = offset + size_of_message_block

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.message_block, buffer(offset, 0))
    local current = bmv_bmvmarketdata_product15_intra_v1_1.message_block.fields(buffer, offset, packet, parent, size_of_message_block, message_block_index)
    parent:set_len(size_of_message_block)
    local display = bmv_bmvmarketdata_product15_intra_v1_1.message_block.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bmv_bmvmarketdata_product15_intra_v1_1.message_block.fields(buffer, offset, packet, parent, size_of_message_block, message_block_index)

    return index
  end
end

-- INTRA Multicast Header
bmv_bmvmarketdata_product15_intra_v1_1.intra_multicast_header = {}

-- Size: INTRA Multicast Header
bmv_bmvmarketdata_product15_intra_v1_1.intra_multicast_header.size =
  bmv_bmvmarketdata_product15_intra_v1_1.length.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.total_messages.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.market_data_group.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.session.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.sequence_number.size + 
  bmv_bmvmarketdata_product15_intra_v1_1.datetime.size

-- Display: INTRA Multicast Header
bmv_bmvmarketdata_product15_intra_v1_1.intra_multicast_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: INTRA Multicast Header
bmv_bmvmarketdata_product15_intra_v1_1.intra_multicast_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: Int16
  index, length = bmv_bmvmarketdata_product15_intra_v1_1.length.dissect(buffer, index, packet, parent)

  -- Total Messages: Int8
  index, total_messages = bmv_bmvmarketdata_product15_intra_v1_1.total_messages.dissect(buffer, index, packet, parent)

  -- Market Data Group: Int8
  index, market_data_group = bmv_bmvmarketdata_product15_intra_v1_1.market_data_group.dissect(buffer, index, packet, parent)

  -- Session: Int8
  index, session = bmv_bmvmarketdata_product15_intra_v1_1.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: Int32
  index, sequence_number = bmv_bmvmarketdata_product15_intra_v1_1.sequence_number.dissect(buffer, index, packet, parent)

  -- Datetime: Timestamp(3)
  index, datetime = bmv_bmvmarketdata_product15_intra_v1_1.datetime.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: INTRA Multicast Header
bmv_bmvmarketdata_product15_intra_v1_1.intra_multicast_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1.fields.intra_multicast_header, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product15_intra_v1_1.intra_multicast_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product15_intra_v1_1.intra_multicast_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product15_intra_v1_1.intra_multicast_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
bmv_bmvmarketdata_product15_intra_v1_1.packet = {}

-- Verify required size of Udp packet
bmv_bmvmarketdata_product15_intra_v1_1.packet.requiredsize = function(buffer)
  return buffer:len() >= bmv_bmvmarketdata_product15_intra_v1_1.intra_multicast_header.size
end

-- Dissect Packet
bmv_bmvmarketdata_product15_intra_v1_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- INTRA Multicast Header: Struct of 6 fields
  index, intra_multicast_header = bmv_bmvmarketdata_product15_intra_v1_1.intra_multicast_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message Block
  local end_of_payload = buffer:len()

  -- Message Block: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):int()

    -- Runtime Size Of: Message Block
    local size_of_message_block = message_length + 2

    -- Message Block: Struct of 2 fields
    index, message_block = bmv_bmvmarketdata_product15_intra_v1_1.message_block.dissect(buffer, index, packet, parent, size_of_message_block, message_block_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_bmv_bmvmarketdata_product15_intra_v1_1.init()
end

-- Dissector for Bmv BmvMarketData Product15 Intra 1.1
function omi_bmv_bmvmarketdata_product15_intra_v1_1.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_bmv_bmvmarketdata_product15_intra_v1_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_bmv_bmvmarketdata_product15_intra_v1_1, buffer(), omi_bmv_bmvmarketdata_product15_intra_v1_1.description, "("..buffer:len().." Bytes)")
  return bmv_bmvmarketdata_product15_intra_v1_1.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
bmv_bmvmarketdata_product15_intra_v1_1.packet.fingerprint = function(buffer)
  if buffer:len() < 20 then
    return false
  end

  local message_type = buffer(19, 1):uint()

  -- Events System Message
  if message_type == 0x53 then
    return true
  end

  -- Trade Cancellation Message
  if message_type == 0x48 then
    return true
  end

  -- Status Changes Message
  if message_type == 0x34 then
    return true
  end

  -- Weighted Average Price Settlement Prices Message
  if message_type == 0x4D then
    return true
  end

  -- Capital Trades Message
  if message_type == 0x50 then
    return true
  end

  -- Probable Allocation Price Message
  if message_type == 0x32 then
    return true
  end

  -- Continuous Auctions Beginning Message
  if message_type == 0x33 then
    return true
  end

  -- Middle Price Existing Quotes Message
  if message_type == 0x35 then
    return true
  end

  -- Registry Operations Message
  if message_type == 0x5A then
    return true
  end

  -- Mutual Fund Trades Message
  if message_type == 0x59 then
    return true
  end

  -- Tradability Message
  if message_type == 0x45 then
    return true
  end

  -- Virtual Trades Message
  if message_type == 0x56 then
    return true
  end

  -- Order Addition Message
  if message_type == 0x41 then
    return true
  end

  -- Execution Of Orders Message
  if message_type == 0x43 then
    return true
  end

  -- Order Cancellation Message
  if message_type == 0x44 then
    return true
  end

  -- Order Change Message
  if message_type == 0x46 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Bmv BmvMarketData Product15 Intra 1.1 (Udp)
local function omi_bmv_bmvmarketdata_product15_intra_v1_1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not bmv_bmvmarketdata_product15_intra_v1_1.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not bmv_bmvmarketdata_product15_intra_v1_1.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_bmv_bmvmarketdata_product15_intra_v1_1
  omi_bmv_bmvmarketdata_product15_intra_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Bmv BmvMarketData Product15 Intra 1.1
omi_bmv_bmvmarketdata_product15_intra_v1_1:register_heuristic("udp", omi_bmv_bmvmarketdata_product15_intra_v1_1_udp_heuristic)

-- Register Bmv BmvMarketData Product15 Intra 1.1 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_bmv_bmvmarketdata_product15_intra_v1_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Bolsa Mexicana de Valores
--   Version: 1.1
--   Specification: Market Data Multicast_P15_1_ENG.pdf
--   Specification: Connection_Appendix_6.pdf
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
