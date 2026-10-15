-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Gpw Wse PricesAndTrades Xdp 6.8 Protocol
local omi_gpw_wse_pricesandtrades_xdp_v6_8 = Proto("Omi.Gpw.Wse.PricesAndTrades.Xdp.v6.8", "Gpw Wse PricesAndTrades Xdp 6.8")

-- Protocol table
local gpw_wse_pricesandtrades_xdp_v6_8 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Gpw Wse PricesAndTrades Xdp 6.8 Fields
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.adjusted_closing_price = ProtoField.new("Adjusted Closing Price", "gpw.wse.pricesandtrades.xdp.v6.8.adjustedclosingprice", ftypes.UINT32, nil, nil, nil, "Adjusted VWAP/Closing Price (To be calculated with the ScaleCode)")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.amount_traded = ProtoField.new("Amount Traded", "gpw.wse.pricesandtrades.xdp.v6.8.amounttraded", ftypes.UINT64, nil, nil, nil, "Total cumulated amount traded on this instrument since the beginning of the Trading day (To be calculated with the ScaleCode) Not Provided for Derivatives")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.closing_price = ProtoField.new("Closing Price", "gpw.wse.pricesandtrades.xdp.v6.8.closingprice", ftypes.UINT32, nil, nil, nil, "Current VWAP/Closing Price (To be calculated with the ScaleCode) Not Provided for Derivatives")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.closing_price_rule = ProtoField.new("Closing Price Rule", "gpw.wse.pricesandtrades.xdp.v6.8.closingpricerule", ftypes.UINT16, nil, nil, nil, "Indicates the Closing Price calculation rule")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.cumulative_quantity = ProtoField.new("Cumulative Quantity", "gpw.wse.pricesandtrades.xdp.v6.8.cumulativequantity", ftypes.UINT32, nil, nil, nil, "Cumulative number of securities traded on UTP since the start of the current trading session Note: Value accumulated within the individual segments")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.delivery_flag = ProtoField.new("Delivery Flag", "gpw.wse.pricesandtrades.xdp.v6.8.deliveryflag", ftypes.UINT8, nil, nil, nil, "Indicates delivery method, and a client reads it to determine whether the packet is ZliB compressed")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.first_price = ProtoField.new("First Price", "gpw.wse.pricesandtrades.xdp.v6.8.firstprice", ftypes.UINT32, nil, nil, nil, "First traded price for the current trading day (To be calculated with the PriceScaleCode)")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.highest_price = ProtoField.new("Highest Price", "gpw.wse.pricesandtrades.xdp.v6.8.highestprice", ftypes.UINT32, nil, nil, nil, "Highest Price traded during the day(To be calculated with the PriceScaleCode)")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.instrument_id_code = ProtoField.new("Instrument Id Code", "gpw.wse.pricesandtrades.xdp.v6.8.instrumentidcode", ftypes.STRING, nil, nil, nil, "ISIN code used to identify the financial instrument, as defined in ISO 6166")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.instrument_id_code_type = ProtoField.new("Instrument Id Code Type", "gpw.wse.pricesandtrades.xdp.v6.8.instrumentidcodetype", ftypes.STRING, nil, nil, nil, "Code type used to identify the financial instrument Always equal to 'ISIN'")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.instrument_valuation_price = ProtoField.new("Instrument Valuation Price", "gpw.wse.pricesandtrades.xdp.v6.8.instrumentvaluationprice", ftypes.STRING, nil, nil, nil, "Indicates whether the data item \"last price\" is a valuation price following a valuation trade")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.last_price = ProtoField.new("Last Price", "gpw.wse.pricesandtrades.xdp.v6.8.lastprice", ftypes.UINT32, nil, nil, nil, "Most recent traded price for the current trading day (until the message is sent)")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.last_trade_indicator = ProtoField.new("Last Trade Indicator", "gpw.wse.pricesandtrades.xdp.v6.8.lasttradeindicator", ftypes.STRING, nil, nil, nil, "Last trade at same price indicator")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.lowest_price = ProtoField.new("Lowest Price", "gpw.wse.pricesandtrades.xdp.v6.8.lowestprice", ftypes.UINT32, nil, nil, nil, "Lowest Price traded during the day(To be calculated with the PriceScaleCode)")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.message_size = ProtoField.new("Message Size", "gpw.wse.pricesandtrades.xdp.v6.8.messagesize", ftypes.UINT16, nil, nil, nil, "Length of the message body, excluding the 2 byte MsgSize field")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.message_type = ProtoField.new("Message Type", "gpw.wse.pricesandtrades.xdp.v6.8.messagetype", ftypes.UINT16, nil, nil, nil, "The type of this message")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.mmt_agency_cross_indicator = ProtoField.new("Mmt Agency Cross Indicator", "gpw.wse.pricesandtrades.xdp.v6.8.mmtagencycrossindicator", ftypes.STRING, nil, nil, nil, "Transactions where an investment firm has brought together clients' orders with the purchase and the sale conducted as one transaction and involving the same volume and price")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.mmt_algorithmic_indicator = ProtoField.new("Mmt Algorithmic Indicator", "gpw.wse.pricesandtrades.xdp.v6.8.mmtalgorithmicindicator", ftypes.STRING, nil, nil, nil, "Defines the algorithmic indicator following MMT level 3.9")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.mmt_benchmark_indicator = ProtoField.new("Mmt Benchmark Indicator", "gpw.wse.pricesandtrades.xdp.v6.8.mmtbenchmarkindicator", ftypes.STRING, nil, nil, nil, "Defines the benchmark indicator or the reference price indicator following MMT level 3.5")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.mmt_contribution_to_price = ProtoField.new("Mmt Contribution To Price", "gpw.wse.pricesandtrades.xdp.v6.8.mmtcontributiontoprice", ftypes.STRING, nil, nil, nil, "Defines the contribution to price or the price discovery process following MMT level 3.8")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.mmt_duplicative_indicator = ProtoField.new("Mmt Duplicative Indicator", "gpw.wse.pricesandtrades.xdp.v6.8.mmtduplicativeindicator", ftypes.STRING, nil, nil, nil, "Defines the duplicative indicator following MMT level 5")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.mmt_market_mechanism = ProtoField.new("Mmt Market Mechanism", "gpw.wse.pricesandtrades.xdp.v6.8.mmtmarketmechanism", ftypes.STRING, nil, nil, nil, "Defines the market mechanism following MMT level 1")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.mmt_modification_indicator = ProtoField.new("Mmt Modification Indicator", "gpw.wse.pricesandtrades.xdp.v6.8.mmtmodificationindicator", ftypes.STRING, nil, nil, nil, "Defines the modification indicator following MMT level 3.4")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.mmt_negotiation_indicator = ProtoField.new("Mmt Negotiation Indicator", "gpw.wse.pricesandtrades.xdp.v6.8.mmtnegotiationindicator", ftypes.STRING, nil, nil, nil, "Defines the negotiation indicator or pre-trade transparency waiver following MMT level 3.2")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.mmt_publication_mode = ProtoField.new("Mmt Publication Mode", "gpw.wse.pricesandtrades.xdp.v6.8.mmtpublicationmode", ftypes.STRING, nil, nil, nil, "Defines the publication mode or post- trade deferral reason following MMT level 4.1")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.mmt_special_dividend_indicator = ProtoField.new("Mmt Special Dividend Indicator", "gpw.wse.pricesandtrades.xdp.v6.8.mmtspecialdividendindicator", ftypes.STRING, nil, nil, nil, "Defines the special dividend indicator following MMT level 3.6")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.mmt_trading_mode = ProtoField.new("Mmt Trading Mode", "gpw.wse.pricesandtrades.xdp.v6.8.mmttradingmode", ftypes.STRING, nil, nil, nil, "Defines the trading Mode mechanism following MMT level 2 Possible values: - '1': Undefined Auction (not used) - 'O': Scheduled Opening Auction - 'K': Scheduled Closing Auction - 'I': Scheduled Intraday Auction (not used) - 'U': Unscheduled Auction - '2': Continuous Trading - '3': At Market Close Trading - '4': Out of Main Session Trading (not used) - '5': Trade Reporting (On Exchange) - '6': Trade Reporting (Off Exchange) - '7': Trade Reporting (Systematic Internaliser) (not used)")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.mmt_transaction_category = ProtoField.new("Mmt Transaction Category", "gpw.wse.pricesandtrades.xdp.v6.8.mmttransactioncategory", ftypes.STRING, nil, nil, nil, "Defines the transaction category following MMT level 3.1")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.multiplier_scale_code = ProtoField.new("Multiplier Scale Code", "gpw.wse.pricesandtrades.xdp.v6.8.multiplierscalecode", ftypes.UINT8, nil, nil, nil, "To be combined with PriceMultiplier")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.nb_trades = ProtoField.new("Nb Trades", "gpw.wse.pricesandtrades.xdp.v6.8.nbtrades", ftypes.UINT32, nil, nil, nil, "Number of Trades executed on this Instrument since the beginning of the Trading Day")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.notional_amount = ProtoField.new("Notional Amount", "gpw.wse.pricesandtrades.xdp.v6.8.notionalamount", ftypes.STRING, nil, nil, nil, "Nominal amount or notional amount")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.notional_currency = ProtoField.new("Notional Currency", "gpw.wse.pricesandtrades.xdp.v6.8.notionalcurrency", ftypes.STRING, nil, nil, nil, "Currency in which the notional is denominated as defined by ISO 4217")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.number_msg_entries = ProtoField.new("Number Msg Entries", "gpw.wse.pricesandtrades.xdp.v6.8.numbermsgentries", ftypes.UINT8, nil, nil, nil, "The number of messages that are contained within the packet")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.opening_trade_indicator = ProtoField.new("Opening Trade Indicator", "gpw.wse.pricesandtrades.xdp.v6.8.openingtradeindicator", ftypes.STRING, nil, nil, nil, "If the trade took place during the opening auction or during the core session")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.packet_length = ProtoField.new("Packet Length", "gpw.wse.pricesandtrades.xdp.v6.8.packetlength", ftypes.UINT16, nil, nil, nil, "Length of the packet including the 16 byte packet header")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.packet_sequence_number = ProtoField.new("Packet Sequence Number", "gpw.wse.pricesandtrades.xdp.v6.8.packetsequencenumber", ftypes.UINT32, nil, nil, nil, "The packet sequence number, unique for each broadcast stream and used for gap detection. It increases serially and monotonically and is reset to 1 at the beginning of each trading day. It is unique for packets containing market data only, and heartbeats inherit it from the last market data packet or packet sequence number reset packet")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.packet_type = ProtoField.new("Packet Type", "gpw.wse.pricesandtrades.xdp.v6.8.packettype", ftypes.UINT16, nil, nil, nil, "Identifier for the type of data contained in the packet. Section 1.1 states one value, 501 for Market Data messages, for every feed the document specifies")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.price_ascii_ch_20 = ProtoField.new("Price Ascii Ch 20", "gpw.wse.pricesandtrades.xdp.v6.8.priceasciich20", ftypes.STRING, nil, nil, nil, "Traded price of the transaction excluding, where applicable, commission and accrued interest")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.price_binary_int_4 = ProtoField.new("Price Binary Int 4", "gpw.wse.pricesandtrades.xdp.v6.8.pricebinaryint4", ftypes.UINT32, nil, nil, nil, "Last Price of the trading day (To be calculated with the ScaleCode)")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.price_currency = ProtoField.new("Price Currency", "gpw.wse.pricesandtrades.xdp.v6.8.pricecurrency", ftypes.STRING, nil, nil, nil, "Currency in which the price is expressed as defined by ISO 4217 (applicable if the price is expressed as monetary value)")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.price_multiplier = ProtoField.new("Price Multiplier", "gpw.wse.pricesandtrades.xdp.v6.8.pricemultiplier", ftypes.UINT32, nil, nil, nil, "Number of units of the financial instrument that are contained a trading lot (to be calculated with the MultiplierScaleCode)")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.price_notation = ProtoField.new("Price Notation", "gpw.wse.pricesandtrades.xdp.v6.8.pricenotation", ftypes.STRING, nil, nil, nil, "Indication as to whether the price is expressed in monetary value, in percentage or in yield")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.price_scale_code = ProtoField.new("Price Scale Code", "gpw.wse.pricesandtrades.xdp.v6.8.pricescalecode", ftypes.UINT8, nil, nil, nil, "Applicable to all prices in the message except for the field \"Price\"")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.publication_date_time = ProtoField.new("Publication Date Time", "gpw.wse.pricesandtrades.xdp.v6.8.publicationdatetime", ftypes.STRING, nil, nil, nil, "Date and time when the transaction was published by a trading venue")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.qty_shares = ProtoField.new("Qty Shares", "gpw.wse.pricesandtrades.xdp.v6.8.qtyshares", ftypes.UINT32, nil, nil, nil, "Cumulated Quantity traded (number of securities) on this instrument since the beginning of the Trading Day Not Provided for Derivatives")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.quantity = ProtoField.new("Quantity", "gpw.wse.pricesandtrades.xdp.v6.8.quantity", ftypes.STRING, nil, nil, nil, "Number of units of the financial instrument, or the number of derivative contracts in the transaction")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.reserved_1 = ProtoField.new("Reserved 1", "gpw.wse.pricesandtrades.xdp.v6.8.reserved1", ftypes.BYTES, nil, nil, nil, "For future use")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.reserved_2 = ProtoField.new("Reserved 2", "gpw.wse.pricesandtrades.xdp.v6.8.reserved2", ftypes.BYTES, nil, nil, nil, "For future use")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.reserved_5 = ProtoField.new("Reserved 5", "gpw.wse.pricesandtrades.xdp.v6.8.reserved5", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.scale_code = ProtoField.new("Scale Code", "gpw.wse.pricesandtrades.xdp.v6.8.scalecode", ftypes.UINT8, nil, nil, nil, "Applicable to ClosingPrice, AdjustedClosingPrice and AmountTraded")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.send_time = ProtoField.new("Send Time", "gpw.wse.pricesandtrades.xdp.v6.8.sendtime", ftypes.UINT32, nil, nil, nil, "Timestamp in millisecond indicating the packet broadcast time. The number represents the number of milliseconds since midnight of the last Sunday 00:00 UTC, a weekly epoch no Epoch trait represents, so the field carries no epoch and a reader resolves the absolute time against the Sunday preceding the capture")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.sending_indicator = ProtoField.new("Sending Indicator", "gpw.wse.pricesandtrades.xdp.v6.8.sendingindicator", ftypes.UINT16, nil, nil, nil, "Indicates the \"sending mode\"")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.service_id = ProtoField.new("Service Id", "gpw.wse.pricesandtrades.xdp.v6.8.serviceid", ftypes.UINT16, nil, nil, nil, "Numeric value identifying the broadcast stream. Section 1.1 states that the possible values are described in the XDP CDE Configuration document, a companion this specification does not reproduce, so no value set is declared here")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.source_seq_num = ProtoField.new("Source Seq Num", "gpw.wse.pricesandtrades.xdp.v6.8.sourceseqnum", ftypes.UINT32, nil, nil, nil, "This field specifies the sequence number assigned by the source system to this message")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.source_time = ProtoField.new("Source Time", "gpw.wse.pricesandtrades.xdp.v6.8.sourcetime", ftypes.UINT32, nil, nil, nil, "This field specifies the Trade generation time")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.source_time_micro_secs = ProtoField.new("Source Time Micro Secs", "gpw.wse.pricesandtrades.xdp.v6.8.sourcetimemicrosecs", ftypes.UINT16, nil, nil, nil, "Number of micro seconds")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.symbol_index = ProtoField.new("Symbol Index", "gpw.wse.pricesandtrades.xdp.v6.8.symbolindex", ftypes.UINT32, nil, nil, nil, "UTP-MD proprietary identification of the instrument")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.system_id = ProtoField.new("System Id", "gpw.wse.pricesandtrades.xdp.v6.8.systemid", ftypes.UINT32, nil, nil, nil, "The ID of the originating Exchange/System of the message")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.tcs_trade_id = ProtoField.new("Tcs Trade Id", "gpw.wse.pricesandtrades.xdp.v6.8.tcstradeid", ftypes.STRING, nil, nil, nil, "Unique reference of the trade")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.tick_direction = ProtoField.new("Tick Direction", "gpw.wse.pricesandtrades.xdp.v6.8.tickdirection", ftypes.STRING, nil, nil, nil, "Symbol of the variation of the price versus the previous (traded or reference) price")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.trade_id_number = ProtoField.new("Trade Id Number", "gpw.wse.pricesandtrades.xdp.v6.8.tradeidnumber", ftypes.UINT32, nil, nil, nil, "Unique numeric and increasing Identifier of the trade, set by the trading engine")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.trade_origin = ProtoField.new("Trade Origin", "gpw.wse.pricesandtrades.xdp.v6.8.tradeorigin", ftypes.STRING, nil, nil, nil, "This field indicates the origin of the trade")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.trading_date_time = ProtoField.new("Trading Date Time", "gpw.wse.pricesandtrades.xdp.v6.8.tradingdatetime", ftypes.STRING, nil, nil, nil, "Date and time when the transaction was executed")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.transaction_id_code = ProtoField.new("Transaction Id Code", "gpw.wse.pricesandtrades.xdp.v6.8.transactionidcode", ftypes.STRING, nil, nil, nil, "Alphanumerical code assigned by trading venue used in any subsequent reference to the specific trade")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.transaction_to_be_cleared = ProtoField.new("Transaction To Be Cleared", "gpw.wse.pricesandtrades.xdp.v6.8.transactiontobecleared", ftypes.STRING, nil, nil, nil, "Code to identify whether the transaction will be cleared")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.type_of_last_price = ProtoField.new("Type Of Last Price", "gpw.wse.pricesandtrades.xdp.v6.8.typeoflastprice", ftypes.UINT16, nil, nil, nil, "Indicates the message trade type")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.type_of_price = ProtoField.new("Type Of Price", "gpw.wse.pricesandtrades.xdp.v6.8.typeofprice", ftypes.UINT16, nil, nil, nil, "Market- Code identifying the type of price that is updated")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.type_of_trade = ProtoField.new("Type Of Trade", "gpw.wse.pricesandtrades.xdp.v6.8.typeoftrade", ftypes.STRING, nil, nil, nil, "Trade related conditions")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.variation = ProtoField.new("Variation", "gpw.wse.pricesandtrades.xdp.v6.8.variation", ftypes.INT32, nil, nil, nil, "Percentage variation of the last trade price against the previous day's reference price for the instrument (signed) concerned, ie the last known price or the last price indication (variation price).(To be calculated with the VariationScaleCode)")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.variation_last_price = ProtoField.new("Variation Last Price", "gpw.wse.pricesandtrades.xdp.v6.8.variationlastprice", ftypes.INT32, nil, nil, nil, "Percentage variation of Last Traded Price to last reference price (signed) (To be calculated with the VariationScaleCode)")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.variation_scale_code = ProtoField.new("Variation Scale Code", "gpw.wse.pricesandtrades.xdp.v6.8.variationscalecode", ftypes.UINT8, nil, nil, nil, "To be combined with VariationLastPrice")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.venue_of_execution = ProtoField.new("Venue Of Execution", "gpw.wse.pricesandtrades.xdp.v6.8.venueofexecution", ftypes.STRING, nil, nil, nil, "Identification of the venue where the transaction was executed")

-- Gpw Wse PricesAndTrades Xdp 6.8 Framing
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.message = ProtoField.new("Message", "gpw.wse.pricesandtrades.xdp.v6.8.message", ftypes.STRING)
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.message_header = ProtoField.new("Message Header", "gpw.wse.pricesandtrades.xdp.v6.8.messageheader", ftypes.STRING)
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.packet = ProtoField.new("Packet", "gpw.wse.pricesandtrades.xdp.v6.8.packet", ftypes.STRING, nil, nil, nil, "Gpw Xdp Udp Packet")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.packet_header = ProtoField.new("Packet Header", "gpw.wse.pricesandtrades.xdp.v6.8.packetheader", ftypes.STRING, nil, nil, nil, "All messages are preceded by a common packet header format, which section 1.1 states for every Market Information message")

-- Gpw Wse PricesAndTrades 6.8 Application Messages
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "gpw.wse.pricesandtrades.xdp.v6.8.auctionsummarymessage", ftypes.STRING, nil, nil, nil, "An Auction Summary message summarizes an instrument's opening or auction trades")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.price_update_message = ProtoField.new("Price Update Message", "gpw.wse.pricesandtrades.xdp.v6.8.priceupdatemessage", ftypes.STRING, nil, nil, nil, "The Price update message contains a bid price or an ask price in case of alternative indicative price (AIP), or the modification of the last reference price on a given instrument")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.trade_full_information_message = ProtoField.new("Trade Full Information Message", "gpw.wse.pricesandtrades.xdp.v6.8.tradefullinformationmessage", ftypes.STRING, nil, nil, nil, "Trade full information message is sent each time a trade or a cancellation of a trade has occurred")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.trade_publication_message = ProtoField.new("Trade Publication Message", "gpw.wse.pricesandtrades.xdp.v6.8.tradepublicationmessage", ftypes.STRING, nil, nil, nil, "A trade publication message is sent by the reporting system whenever a trade is reported")
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.vwap_closing_price_message = ProtoField.new("Vwap Closing Price Message", "gpw.wse.pricesandtrades.xdp.v6.8.vwapclosingpricemessage", ftypes.STRING, nil, nil, nil, "This message contains the Volume-Weighted Average Price for an instrument, along with few statistical information related to the cumulated traded value and volume")

-- Gpw Wse PricesAndTrades Xdp 6.8 Generated Fields
omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.message_index = ProtoField.new("Message Index", "gpw.wse.pricesandtrades.xdp.v6.8.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Gpw Wse PricesAndTrades Xdp 6.8 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Gpw Wse PricesAndTrades Xdp 6.8 Show Options
omi_gpw_wse_pricesandtrades_xdp_v6_8.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_gpw_wse_pricesandtrades_xdp_v6_8.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_gpw_wse_pricesandtrades_xdp_v6_8.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_gpw_wse_pricesandtrades_xdp_v6_8.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_gpw_wse_pricesandtrades_xdp_v6_8.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_gpw_wse_pricesandtrades_xdp_v6_8.prefs.show_application_messages then
    show.application_messages = omi_gpw_wse_pricesandtrades_xdp_v6_8.prefs.show_application_messages
  end
  if show.headers ~= omi_gpw_wse_pricesandtrades_xdp_v6_8.prefs.show_headers then
    show.headers = omi_gpw_wse_pricesandtrades_xdp_v6_8.prefs.show_headers
  end
  if show.structs ~= omi_gpw_wse_pricesandtrades_xdp_v6_8.prefs.show_structs then
    show.structs = omi_gpw_wse_pricesandtrades_xdp_v6_8.prefs.show_structs
  end
  if show.indexes ~= omi_gpw_wse_pricesandtrades_xdp_v6_8.prefs.show_indexes then
    show.indexes = omi_gpw_wse_pricesandtrades_xdp_v6_8.prefs.show_indexes
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


-- Zlib decompression: wireshark built in inflate (uncompress_zlib from 4.4, uncompress before)
local function zlib_decompress(range)
  local ok, decompressed = pcall(function() return range:uncompress_zlib("Decompressed") end)

  if ok then
    return decompressed
  end

  return range:uncompress("Decompressed")
end
-----------------------------------------------------------------------
-- Gpw Wse PricesAndTrades Xdp 6.8 Fields
-----------------------------------------------------------------------

-- Adjusted Closing Price
gpw_wse_pricesandtrades_xdp_v6_8.adjusted_closing_price = {}

-- Size: Adjusted Closing Price
gpw_wse_pricesandtrades_xdp_v6_8.adjusted_closing_price.size = 4

-- Display: Adjusted Closing Price
gpw_wse_pricesandtrades_xdp_v6_8.adjusted_closing_price.display = function(value)
  return "Adjusted Closing Price: "..value
end

-- Dissect: Adjusted Closing Price
gpw_wse_pricesandtrades_xdp_v6_8.adjusted_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.adjusted_closing_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.adjusted_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.adjusted_closing_price, range, value, display)

  return offset + length, value
end

-- Amount Traded
gpw_wse_pricesandtrades_xdp_v6_8.amount_traded = {}

-- Size: Amount Traded
gpw_wse_pricesandtrades_xdp_v6_8.amount_traded.size = 8

-- Display: Amount Traded
gpw_wse_pricesandtrades_xdp_v6_8.amount_traded.display = function(value)
  return "Amount Traded: "..value
end

-- Dissect: Amount Traded
gpw_wse_pricesandtrades_xdp_v6_8.amount_traded.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.amount_traded.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.amount_traded.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.amount_traded, range, value, display)

  return offset + length, value
end

-- Closing Price
gpw_wse_pricesandtrades_xdp_v6_8.closing_price = {}

-- Size: Closing Price
gpw_wse_pricesandtrades_xdp_v6_8.closing_price.size = 4

-- Display: Closing Price
gpw_wse_pricesandtrades_xdp_v6_8.closing_price.display = function(value)
  return "Closing Price: "..value
end

-- Dissect: Closing Price
gpw_wse_pricesandtrades_xdp_v6_8.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.closing_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Closing Price Rule
gpw_wse_pricesandtrades_xdp_v6_8.closing_price_rule = {}

-- Size: Closing Price Rule
gpw_wse_pricesandtrades_xdp_v6_8.closing_price_rule.size = 2

-- Display: Closing Price Rule
gpw_wse_pricesandtrades_xdp_v6_8.closing_price_rule.display = function(value)
  if value == 1 then
    return "Closing Price Rule: Ltp Last Traded Price (1)"
  end
  if value == 2 then
    return "Closing Price Rule: Vwap Volume Weighted Average Price Not Provided For Derivatives (2)"
  end

  return "Closing Price Rule: Unknown("..value..")"
end

-- Dissect: Closing Price Rule
gpw_wse_pricesandtrades_xdp_v6_8.closing_price_rule.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.closing_price_rule.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.closing_price_rule.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.closing_price_rule, range, value, display)

  return offset + length, value
end

-- Cumulative Quantity
gpw_wse_pricesandtrades_xdp_v6_8.cumulative_quantity = {}

-- Size: Cumulative Quantity
gpw_wse_pricesandtrades_xdp_v6_8.cumulative_quantity.size = 4

-- Display: Cumulative Quantity
gpw_wse_pricesandtrades_xdp_v6_8.cumulative_quantity.display = function(value)
  return "Cumulative Quantity: "..value
end

-- Dissect: Cumulative Quantity
gpw_wse_pricesandtrades_xdp_v6_8.cumulative_quantity.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.cumulative_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.cumulative_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.cumulative_quantity, range, value, display)

  return offset + length, value
end

-- Delivery Flag
gpw_wse_pricesandtrades_xdp_v6_8.delivery_flag = {}

-- Size: Delivery Flag
gpw_wse_pricesandtrades_xdp_v6_8.delivery_flag.size = 1

-- Display: Delivery Flag
gpw_wse_pricesandtrades_xdp_v6_8.delivery_flag.display = function(value)
  if value == 0 then
    return "Delivery Flag: Real Time Message Uncompressed (0)"
  end
  if value == 2 then
    return "Delivery Flag: Retransmission Message Uncompressed (2)"
  end
  if value == 16 then
    return "Delivery Flag: Real Time Message Zlib Compressed (16)"
  end
  if value == 17 then
    return "Delivery Flag: Refresh Message Zlib Compressed (17)"
  end
  if value == 18 then
    return "Delivery Flag: Retransmission Message Compressed (18)"
  end

  return "Delivery Flag: Unknown("..value..")"
end

-- Dissect: Delivery Flag
gpw_wse_pricesandtrades_xdp_v6_8.delivery_flag.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.delivery_flag.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.delivery_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- First Price
gpw_wse_pricesandtrades_xdp_v6_8.first_price = {}

-- Size: First Price
gpw_wse_pricesandtrades_xdp_v6_8.first_price.size = 4

-- Display: First Price
gpw_wse_pricesandtrades_xdp_v6_8.first_price.display = function(value)
  return "First Price: "..value
end

-- Dissect: First Price
gpw_wse_pricesandtrades_xdp_v6_8.first_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.first_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.first_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.first_price, range, value, display)

  return offset + length, value
end

-- Highest Price
gpw_wse_pricesandtrades_xdp_v6_8.highest_price = {}

-- Size: Highest Price
gpw_wse_pricesandtrades_xdp_v6_8.highest_price.size = 4

-- Display: Highest Price
gpw_wse_pricesandtrades_xdp_v6_8.highest_price.display = function(value)
  return "Highest Price: "..value
end

-- Dissect: Highest Price
gpw_wse_pricesandtrades_xdp_v6_8.highest_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.highest_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.highest_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.highest_price, range, value, display)

  return offset + length, value
end

-- Instrument Id Code
gpw_wse_pricesandtrades_xdp_v6_8.instrument_id_code = {}

-- Size: Instrument Id Code
gpw_wse_pricesandtrades_xdp_v6_8.instrument_id_code.size = 12

-- Display: Instrument Id Code
gpw_wse_pricesandtrades_xdp_v6_8.instrument_id_code.display = function(value)
  return "Instrument Id Code: "..value
end

-- Dissect: Instrument Id Code
gpw_wse_pricesandtrades_xdp_v6_8.instrument_id_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.instrument_id_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_pricesandtrades_xdp_v6_8.instrument_id_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.instrument_id_code, range, value, display)

  return offset + length, value
end

-- Instrument Id Code Type
gpw_wse_pricesandtrades_xdp_v6_8.instrument_id_code_type = {}

-- Size: Instrument Id Code Type
gpw_wse_pricesandtrades_xdp_v6_8.instrument_id_code_type.size = 4

-- Display: Instrument Id Code Type
gpw_wse_pricesandtrades_xdp_v6_8.instrument_id_code_type.display = function(value)
  return "Instrument Id Code Type: "..value
end

-- Dissect: Instrument Id Code Type
gpw_wse_pricesandtrades_xdp_v6_8.instrument_id_code_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.instrument_id_code_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_pricesandtrades_xdp_v6_8.instrument_id_code_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.instrument_id_code_type, range, value, display)

  return offset + length, value
end

-- Instrument Valuation Price
gpw_wse_pricesandtrades_xdp_v6_8.instrument_valuation_price = {}

-- Size: Instrument Valuation Price
gpw_wse_pricesandtrades_xdp_v6_8.instrument_valuation_price.size = 1

-- Display: Instrument Valuation Price
gpw_wse_pricesandtrades_xdp_v6_8.instrument_valuation_price.display = function(value)
  if value == "0" then
    return "Instrument Valuation Price: Not A Valuation Price (0)"
  end
  if value == "1" then
    return "Instrument Valuation Price: Valuation Price (1)"
  end

  return "Instrument Valuation Price: Unknown("..value..")"
end

-- Dissect: Instrument Valuation Price
gpw_wse_pricesandtrades_xdp_v6_8.instrument_valuation_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.instrument_valuation_price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.instrument_valuation_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.instrument_valuation_price, range, value, display)

  return offset + length, value
end

-- Last Price
gpw_wse_pricesandtrades_xdp_v6_8.last_price = {}

-- Size: Last Price
gpw_wse_pricesandtrades_xdp_v6_8.last_price.size = 4

-- Display: Last Price
gpw_wse_pricesandtrades_xdp_v6_8.last_price.display = function(value)
  return "Last Price: "..value
end

-- Dissect: Last Price
gpw_wse_pricesandtrades_xdp_v6_8.last_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.last_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.last_price, range, value, display)

  return offset + length, value
end

-- Last Trade Indicator
gpw_wse_pricesandtrades_xdp_v6_8.last_trade_indicator = {}

-- Size: Last Trade Indicator
gpw_wse_pricesandtrades_xdp_v6_8.last_trade_indicator.size = 1

-- Display: Last Trade Indicator
gpw_wse_pricesandtrades_xdp_v6_8.last_trade_indicator.display = function(value)
  if value == "0" then
    return "Last Trade Indicator: Not Last Of A Series Of Trade At The Same Price (0)"
  end
  if value == "1" then
    return "Last Trade Indicator: Last Of A Series Of Trade At The Same Price And (1)"
  end

  return "Last Trade Indicator: Unknown("..value..")"
end

-- Dissect: Last Trade Indicator
gpw_wse_pricesandtrades_xdp_v6_8.last_trade_indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.last_trade_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.last_trade_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.last_trade_indicator, range, value, display)

  return offset + length, value
end

-- Lowest Price
gpw_wse_pricesandtrades_xdp_v6_8.lowest_price = {}

-- Size: Lowest Price
gpw_wse_pricesandtrades_xdp_v6_8.lowest_price.size = 4

-- Display: Lowest Price
gpw_wse_pricesandtrades_xdp_v6_8.lowest_price.display = function(value)
  return "Lowest Price: "..value
end

-- Dissect: Lowest Price
gpw_wse_pricesandtrades_xdp_v6_8.lowest_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.lowest_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.lowest_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.lowest_price, range, value, display)

  return offset + length, value
end

-- Message Size
gpw_wse_pricesandtrades_xdp_v6_8.message_size = {}

-- Size: Message Size
gpw_wse_pricesandtrades_xdp_v6_8.message_size.size = 2

-- Display: Message Size
gpw_wse_pricesandtrades_xdp_v6_8.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
gpw_wse_pricesandtrades_xdp_v6_8.message_size.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.message_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
gpw_wse_pricesandtrades_xdp_v6_8.message_type = {}

-- Size: Message Type
gpw_wse_pricesandtrades_xdp_v6_8.message_type.size = 2

-- Display: Message Type
gpw_wse_pricesandtrades_xdp_v6_8.message_type.display = function(value)
  if value == 240 then
    return "Message Type: Trade Full Information Message (240)"
  end
  if value == 241 then
    return "Message Type: Price Update Message (241)"
  end
  if value == 243 then
    return "Message Type: Trade Publication Message (243)"
  end
  if value == 245 then
    return "Message Type: Auction Summary Message (245)"
  end
  if value == 247 then
    return "Message Type: Vwap Closing Price Message (247)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
gpw_wse_pricesandtrades_xdp_v6_8.message_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mmt Agency Cross Indicator
gpw_wse_pricesandtrades_xdp_v6_8.mmt_agency_cross_indicator = {}

-- Size: Mmt Agency Cross Indicator
gpw_wse_pricesandtrades_xdp_v6_8.mmt_agency_cross_indicator.size = 4

-- Display: Mmt Agency Cross Indicator
gpw_wse_pricesandtrades_xdp_v6_8.mmt_agency_cross_indicator.display = function(value)
  return "Mmt Agency Cross Indicator: "..value
end

-- Dissect: Mmt Agency Cross Indicator
gpw_wse_pricesandtrades_xdp_v6_8.mmt_agency_cross_indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.mmt_agency_cross_indicator.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_pricesandtrades_xdp_v6_8.mmt_agency_cross_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.mmt_agency_cross_indicator, range, value, display)

  return offset + length, value
end

-- Mmt Algorithmic Indicator
gpw_wse_pricesandtrades_xdp_v6_8.mmt_algorithmic_indicator = {}

-- Size: Mmt Algorithmic Indicator
gpw_wse_pricesandtrades_xdp_v6_8.mmt_algorithmic_indicator.size = 4

-- Display: Mmt Algorithmic Indicator
gpw_wse_pricesandtrades_xdp_v6_8.mmt_algorithmic_indicator.display = function(value)
  return "Mmt Algorithmic Indicator: "..value
end

-- Dissect: Mmt Algorithmic Indicator
gpw_wse_pricesandtrades_xdp_v6_8.mmt_algorithmic_indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.mmt_algorithmic_indicator.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_pricesandtrades_xdp_v6_8.mmt_algorithmic_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.mmt_algorithmic_indicator, range, value, display)

  return offset + length, value
end

-- Mmt Benchmark Indicator
gpw_wse_pricesandtrades_xdp_v6_8.mmt_benchmark_indicator = {}

-- Size: Mmt Benchmark Indicator
gpw_wse_pricesandtrades_xdp_v6_8.mmt_benchmark_indicator.size = 4

-- Display: Mmt Benchmark Indicator
gpw_wse_pricesandtrades_xdp_v6_8.mmt_benchmark_indicator.display = function(value)
  return "Mmt Benchmark Indicator: "..value
end

-- Dissect: Mmt Benchmark Indicator
gpw_wse_pricesandtrades_xdp_v6_8.mmt_benchmark_indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.mmt_benchmark_indicator.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_pricesandtrades_xdp_v6_8.mmt_benchmark_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.mmt_benchmark_indicator, range, value, display)

  return offset + length, value
end

-- Mmt Contribution To Price
gpw_wse_pricesandtrades_xdp_v6_8.mmt_contribution_to_price = {}

-- Size: Mmt Contribution To Price
gpw_wse_pricesandtrades_xdp_v6_8.mmt_contribution_to_price.size = 4

-- Display: Mmt Contribution To Price
gpw_wse_pricesandtrades_xdp_v6_8.mmt_contribution_to_price.display = function(value)
  return "Mmt Contribution To Price: "..value
end

-- Dissect: Mmt Contribution To Price
gpw_wse_pricesandtrades_xdp_v6_8.mmt_contribution_to_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.mmt_contribution_to_price.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_pricesandtrades_xdp_v6_8.mmt_contribution_to_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.mmt_contribution_to_price, range, value, display)

  return offset + length, value
end

-- Mmt Duplicative Indicator
gpw_wse_pricesandtrades_xdp_v6_8.mmt_duplicative_indicator = {}

-- Size: Mmt Duplicative Indicator
gpw_wse_pricesandtrades_xdp_v6_8.mmt_duplicative_indicator.size = 4

-- Display: Mmt Duplicative Indicator
gpw_wse_pricesandtrades_xdp_v6_8.mmt_duplicative_indicator.display = function(value)
  return "Mmt Duplicative Indicator: "..value
end

-- Dissect: Mmt Duplicative Indicator
gpw_wse_pricesandtrades_xdp_v6_8.mmt_duplicative_indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.mmt_duplicative_indicator.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_pricesandtrades_xdp_v6_8.mmt_duplicative_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.mmt_duplicative_indicator, range, value, display)

  return offset + length, value
end

-- Mmt Market Mechanism
gpw_wse_pricesandtrades_xdp_v6_8.mmt_market_mechanism = {}

-- Size: Mmt Market Mechanism
gpw_wse_pricesandtrades_xdp_v6_8.mmt_market_mechanism.size = 1

-- Display: Mmt Market Mechanism
gpw_wse_pricesandtrades_xdp_v6_8.mmt_market_mechanism.display = function(value)
  return "Mmt Market Mechanism: "..value
end

-- Dissect: Mmt Market Mechanism
gpw_wse_pricesandtrades_xdp_v6_8.mmt_market_mechanism.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.mmt_market_mechanism.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.mmt_market_mechanism.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.mmt_market_mechanism, range, value, display)

  return offset + length, value
end

-- Mmt Modification Indicator
gpw_wse_pricesandtrades_xdp_v6_8.mmt_modification_indicator = {}

-- Size: Mmt Modification Indicator
gpw_wse_pricesandtrades_xdp_v6_8.mmt_modification_indicator.size = 4

-- Display: Mmt Modification Indicator
gpw_wse_pricesandtrades_xdp_v6_8.mmt_modification_indicator.display = function(value)
  return "Mmt Modification Indicator: "..value
end

-- Dissect: Mmt Modification Indicator
gpw_wse_pricesandtrades_xdp_v6_8.mmt_modification_indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.mmt_modification_indicator.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_pricesandtrades_xdp_v6_8.mmt_modification_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.mmt_modification_indicator, range, value, display)

  return offset + length, value
end

-- Mmt Negotiation Indicator
gpw_wse_pricesandtrades_xdp_v6_8.mmt_negotiation_indicator = {}

-- Size: Mmt Negotiation Indicator
gpw_wse_pricesandtrades_xdp_v6_8.mmt_negotiation_indicator.size = 4

-- Display: Mmt Negotiation Indicator
gpw_wse_pricesandtrades_xdp_v6_8.mmt_negotiation_indicator.display = function(value)
  return "Mmt Negotiation Indicator: "..value
end

-- Dissect: Mmt Negotiation Indicator
gpw_wse_pricesandtrades_xdp_v6_8.mmt_negotiation_indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.mmt_negotiation_indicator.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_pricesandtrades_xdp_v6_8.mmt_negotiation_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.mmt_negotiation_indicator, range, value, display)

  return offset + length, value
end

-- Mmt Publication Mode
gpw_wse_pricesandtrades_xdp_v6_8.mmt_publication_mode = {}

-- Size: Mmt Publication Mode
gpw_wse_pricesandtrades_xdp_v6_8.mmt_publication_mode.size = 4

-- Display: Mmt Publication Mode
gpw_wse_pricesandtrades_xdp_v6_8.mmt_publication_mode.display = function(value)
  return "Mmt Publication Mode: "..value
end

-- Dissect: Mmt Publication Mode
gpw_wse_pricesandtrades_xdp_v6_8.mmt_publication_mode.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.mmt_publication_mode.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_pricesandtrades_xdp_v6_8.mmt_publication_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.mmt_publication_mode, range, value, display)

  return offset + length, value
end

-- Mmt Special Dividend Indicator
gpw_wse_pricesandtrades_xdp_v6_8.mmt_special_dividend_indicator = {}

-- Size: Mmt Special Dividend Indicator
gpw_wse_pricesandtrades_xdp_v6_8.mmt_special_dividend_indicator.size = 4

-- Display: Mmt Special Dividend Indicator
gpw_wse_pricesandtrades_xdp_v6_8.mmt_special_dividend_indicator.display = function(value)
  return "Mmt Special Dividend Indicator: "..value
end

-- Dissect: Mmt Special Dividend Indicator
gpw_wse_pricesandtrades_xdp_v6_8.mmt_special_dividend_indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.mmt_special_dividend_indicator.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_pricesandtrades_xdp_v6_8.mmt_special_dividend_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.mmt_special_dividend_indicator, range, value, display)

  return offset + length, value
end

-- Mmt Trading Mode
gpw_wse_pricesandtrades_xdp_v6_8.mmt_trading_mode = {}

-- Size: Mmt Trading Mode
gpw_wse_pricesandtrades_xdp_v6_8.mmt_trading_mode.size = 1

-- Display: Mmt Trading Mode
gpw_wse_pricesandtrades_xdp_v6_8.mmt_trading_mode.display = function(value)
  return "Mmt Trading Mode: "..value
end

-- Dissect: Mmt Trading Mode
gpw_wse_pricesandtrades_xdp_v6_8.mmt_trading_mode.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.mmt_trading_mode.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.mmt_trading_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.mmt_trading_mode, range, value, display)

  return offset + length, value
end

-- Mmt Transaction Category
gpw_wse_pricesandtrades_xdp_v6_8.mmt_transaction_category = {}

-- Size: Mmt Transaction Category
gpw_wse_pricesandtrades_xdp_v6_8.mmt_transaction_category.size = 4

-- Display: Mmt Transaction Category
gpw_wse_pricesandtrades_xdp_v6_8.mmt_transaction_category.display = function(value)
  return "Mmt Transaction Category: "..value
end

-- Dissect: Mmt Transaction Category
gpw_wse_pricesandtrades_xdp_v6_8.mmt_transaction_category.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.mmt_transaction_category.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_pricesandtrades_xdp_v6_8.mmt_transaction_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.mmt_transaction_category, range, value, display)

  return offset + length, value
end

-- Multiplier Scale Code
gpw_wse_pricesandtrades_xdp_v6_8.multiplier_scale_code = {}

-- Size: Multiplier Scale Code
gpw_wse_pricesandtrades_xdp_v6_8.multiplier_scale_code.size = 1

-- Display: Multiplier Scale Code
gpw_wse_pricesandtrades_xdp_v6_8.multiplier_scale_code.display = function(value)
  return "Multiplier Scale Code: "..value
end

-- Dissect: Multiplier Scale Code
gpw_wse_pricesandtrades_xdp_v6_8.multiplier_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.multiplier_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.multiplier_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.multiplier_scale_code, range, value, display)

  return offset + length, value
end

-- Nb Trades
gpw_wse_pricesandtrades_xdp_v6_8.nb_trades = {}

-- Size: Nb Trades
gpw_wse_pricesandtrades_xdp_v6_8.nb_trades.size = 4

-- Display: Nb Trades
gpw_wse_pricesandtrades_xdp_v6_8.nb_trades.display = function(value)
  return "Nb Trades: "..value
end

-- Dissect: Nb Trades
gpw_wse_pricesandtrades_xdp_v6_8.nb_trades.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.nb_trades.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.nb_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.nb_trades, range, value, display)

  return offset + length, value
end

-- Notional Amount
gpw_wse_pricesandtrades_xdp_v6_8.notional_amount = {}

-- Size: Notional Amount
gpw_wse_pricesandtrades_xdp_v6_8.notional_amount.size = 20

-- Display: Notional Amount
gpw_wse_pricesandtrades_xdp_v6_8.notional_amount.display = function(value)
  return "Notional Amount: "..value
end

-- Dissect: Notional Amount
gpw_wse_pricesandtrades_xdp_v6_8.notional_amount.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.notional_amount.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_pricesandtrades_xdp_v6_8.notional_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.notional_amount, range, value, display)

  return offset + length, value
end

-- Notional Currency
gpw_wse_pricesandtrades_xdp_v6_8.notional_currency = {}

-- Size: Notional Currency
gpw_wse_pricesandtrades_xdp_v6_8.notional_currency.size = 3

-- Display: Notional Currency
gpw_wse_pricesandtrades_xdp_v6_8.notional_currency.display = function(value)
  return "Notional Currency: "..value
end

-- Dissect: Notional Currency
gpw_wse_pricesandtrades_xdp_v6_8.notional_currency.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.notional_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_pricesandtrades_xdp_v6_8.notional_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.notional_currency, range, value, display)

  return offset + length, value
end

-- Number Msg Entries
gpw_wse_pricesandtrades_xdp_v6_8.number_msg_entries = {}

-- Size: Number Msg Entries
gpw_wse_pricesandtrades_xdp_v6_8.number_msg_entries.size = 1

-- Display: Number Msg Entries
gpw_wse_pricesandtrades_xdp_v6_8.number_msg_entries.display = function(value)
  return "Number Msg Entries: "..value
end

-- Dissect: Number Msg Entries
gpw_wse_pricesandtrades_xdp_v6_8.number_msg_entries.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.number_msg_entries.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.number_msg_entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.number_msg_entries, range, value, display)

  return offset + length, value
end

-- Opening Trade Indicator
gpw_wse_pricesandtrades_xdp_v6_8.opening_trade_indicator = {}

-- Size: Opening Trade Indicator
gpw_wse_pricesandtrades_xdp_v6_8.opening_trade_indicator.size = 1

-- Display: Opening Trade Indicator
gpw_wse_pricesandtrades_xdp_v6_8.opening_trade_indicator.display = function(value)
  if value == "O" then
    return "Opening Trade Indicator: Opening (O)"
  end
  if value == "S" then
    return "Opening Trade Indicator: Core Continuous (S)"
  end
  if value == " " then
    return "Opening Trade Indicator: Bond Spot Always Fills The Field With A Space (<whitespace>)"
  end

  return "Opening Trade Indicator: Unknown("..value..")"
end

-- Dissect: Opening Trade Indicator
gpw_wse_pricesandtrades_xdp_v6_8.opening_trade_indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.opening_trade_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.opening_trade_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.opening_trade_indicator, range, value, display)

  return offset + length, value
end

-- Packet Length
gpw_wse_pricesandtrades_xdp_v6_8.packet_length = {}

-- Size: Packet Length
gpw_wse_pricesandtrades_xdp_v6_8.packet_length.size = 2

-- Display: Packet Length
gpw_wse_pricesandtrades_xdp_v6_8.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
gpw_wse_pricesandtrades_xdp_v6_8.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Sequence Number
gpw_wse_pricesandtrades_xdp_v6_8.packet_sequence_number = {}

-- Size: Packet Sequence Number
gpw_wse_pricesandtrades_xdp_v6_8.packet_sequence_number.size = 4

-- Display: Packet Sequence Number
gpw_wse_pricesandtrades_xdp_v6_8.packet_sequence_number.display = function(value)
  return "Packet Sequence Number: "..value
end

-- Dissect: Packet Sequence Number
gpw_wse_pricesandtrades_xdp_v6_8.packet_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.packet_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.packet_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.packet_sequence_number, range, value, display)

  return offset + length, value
end

-- Packet Type
gpw_wse_pricesandtrades_xdp_v6_8.packet_type = {}

-- Size: Packet Type
gpw_wse_pricesandtrades_xdp_v6_8.packet_type.size = 2

-- Display: Packet Type
gpw_wse_pricesandtrades_xdp_v6_8.packet_type.display = function(value)
  if value == 501 then
    return "Packet Type: Market Data Messages (501)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
gpw_wse_pricesandtrades_xdp_v6_8.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.packet_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Price Ascii Ch 20
gpw_wse_pricesandtrades_xdp_v6_8.price_ascii_ch_20 = {}

-- Size: Price Ascii Ch 20
gpw_wse_pricesandtrades_xdp_v6_8.price_ascii_ch_20.size = 20

-- Display: Price Ascii Ch 20
gpw_wse_pricesandtrades_xdp_v6_8.price_ascii_ch_20.display = function(value)
  return "Price Ascii Ch 20: "..value
end

-- Dissect: Price Ascii Ch 20
gpw_wse_pricesandtrades_xdp_v6_8.price_ascii_ch_20.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.price_ascii_ch_20.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_pricesandtrades_xdp_v6_8.price_ascii_ch_20.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.price_ascii_ch_20, range, value, display)

  return offset + length, value
end

-- Price Binary Int 4
gpw_wse_pricesandtrades_xdp_v6_8.price_binary_int_4 = {}

-- Size: Price Binary Int 4
gpw_wse_pricesandtrades_xdp_v6_8.price_binary_int_4.size = 4

-- Display: Price Binary Int 4
gpw_wse_pricesandtrades_xdp_v6_8.price_binary_int_4.display = function(value)
  return "Price Binary Int 4: "..value
end

-- Dissect: Price Binary Int 4
gpw_wse_pricesandtrades_xdp_v6_8.price_binary_int_4.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.price_binary_int_4.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.price_binary_int_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.price_binary_int_4, range, value, display)

  return offset + length, value
end

-- Price Currency
gpw_wse_pricesandtrades_xdp_v6_8.price_currency = {}

-- Size: Price Currency
gpw_wse_pricesandtrades_xdp_v6_8.price_currency.size = 3

-- Display: Price Currency
gpw_wse_pricesandtrades_xdp_v6_8.price_currency.display = function(value)
  return "Price Currency: "..value
end

-- Dissect: Price Currency
gpw_wse_pricesandtrades_xdp_v6_8.price_currency.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.price_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_pricesandtrades_xdp_v6_8.price_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.price_currency, range, value, display)

  return offset + length, value
end

-- Price Multiplier
gpw_wse_pricesandtrades_xdp_v6_8.price_multiplier = {}

-- Size: Price Multiplier
gpw_wse_pricesandtrades_xdp_v6_8.price_multiplier.size = 4

-- Display: Price Multiplier
gpw_wse_pricesandtrades_xdp_v6_8.price_multiplier.display = function(value)
  return "Price Multiplier: "..value
end

-- Dissect: Price Multiplier
gpw_wse_pricesandtrades_xdp_v6_8.price_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.price_multiplier.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.price_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.price_multiplier, range, value, display)

  return offset + length, value
end

-- Price Notation
gpw_wse_pricesandtrades_xdp_v6_8.price_notation = {}

-- Size: Price Notation
gpw_wse_pricesandtrades_xdp_v6_8.price_notation.size = 4

-- Display: Price Notation
gpw_wse_pricesandtrades_xdp_v6_8.price_notation.display = function(value)
  return "Price Notation: "..value
end

-- Dissect: Price Notation
gpw_wse_pricesandtrades_xdp_v6_8.price_notation.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.price_notation.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_pricesandtrades_xdp_v6_8.price_notation.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.price_notation, range, value, display)

  return offset + length, value
end

-- Price Scale Code
gpw_wse_pricesandtrades_xdp_v6_8.price_scale_code = {}

-- Size: Price Scale Code
gpw_wse_pricesandtrades_xdp_v6_8.price_scale_code.size = 1

-- Display: Price Scale Code
gpw_wse_pricesandtrades_xdp_v6_8.price_scale_code.display = function(value)
  return "Price Scale Code: "..value
end

-- Dissect: Price Scale Code
gpw_wse_pricesandtrades_xdp_v6_8.price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.price_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Publication Date Time
gpw_wse_pricesandtrades_xdp_v6_8.publication_date_time = {}

-- Size: Publication Date Time
gpw_wse_pricesandtrades_xdp_v6_8.publication_date_time.size = 27

-- Display: Publication Date Time
gpw_wse_pricesandtrades_xdp_v6_8.publication_date_time.display = function(value)
  return "Publication Date Time: "..value
end

-- Dissect: Publication Date Time
gpw_wse_pricesandtrades_xdp_v6_8.publication_date_time.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.publication_date_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_pricesandtrades_xdp_v6_8.publication_date_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.publication_date_time, range, value, display)

  return offset + length, value
end

-- Qty Shares
gpw_wse_pricesandtrades_xdp_v6_8.qty_shares = {}

-- Size: Qty Shares
gpw_wse_pricesandtrades_xdp_v6_8.qty_shares.size = 4

-- Display: Qty Shares
gpw_wse_pricesandtrades_xdp_v6_8.qty_shares.display = function(value)
  return "Qty Shares: "..value
end

-- Dissect: Qty Shares
gpw_wse_pricesandtrades_xdp_v6_8.qty_shares.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.qty_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.qty_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.qty_shares, range, value, display)

  return offset + length, value
end

-- Quantity
gpw_wse_pricesandtrades_xdp_v6_8.quantity = {}

-- Size: Quantity
gpw_wse_pricesandtrades_xdp_v6_8.quantity.size = 20

-- Display: Quantity
gpw_wse_pricesandtrades_xdp_v6_8.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
gpw_wse_pricesandtrades_xdp_v6_8.quantity.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.quantity.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_pricesandtrades_xdp_v6_8.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reserved 1
gpw_wse_pricesandtrades_xdp_v6_8.reserved_1 = {}

-- Size: Reserved 1
gpw_wse_pricesandtrades_xdp_v6_8.reserved_1.size = 1

-- Display: Reserved 1
gpw_wse_pricesandtrades_xdp_v6_8.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
gpw_wse_pricesandtrades_xdp_v6_8.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = gpw_wse_pricesandtrades_xdp_v6_8.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
gpw_wse_pricesandtrades_xdp_v6_8.reserved_2 = {}

-- Size: Reserved 2
gpw_wse_pricesandtrades_xdp_v6_8.reserved_2.size = 2

-- Display: Reserved 2
gpw_wse_pricesandtrades_xdp_v6_8.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
gpw_wse_pricesandtrades_xdp_v6_8.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = gpw_wse_pricesandtrades_xdp_v6_8.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 5
gpw_wse_pricesandtrades_xdp_v6_8.reserved_5 = {}

-- Size: Reserved 5
gpw_wse_pricesandtrades_xdp_v6_8.reserved_5.size = 5

-- Display: Reserved 5
gpw_wse_pricesandtrades_xdp_v6_8.reserved_5.display = function(value)
  return "Reserved 5: "..value
end

-- Dissect: Reserved 5
gpw_wse_pricesandtrades_xdp_v6_8.reserved_5.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.reserved_5.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = gpw_wse_pricesandtrades_xdp_v6_8.reserved_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.reserved_5, range, value, display)

  return offset + length, value
end

-- Scale Code
gpw_wse_pricesandtrades_xdp_v6_8.scale_code = {}

-- Size: Scale Code
gpw_wse_pricesandtrades_xdp_v6_8.scale_code.size = 1

-- Display: Scale Code
gpw_wse_pricesandtrades_xdp_v6_8.scale_code.display = function(value)
  return "Scale Code: "..value
end

-- Dissect: Scale Code
gpw_wse_pricesandtrades_xdp_v6_8.scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.scale_code, range, value, display)

  return offset + length, value
end

-- Send Time
gpw_wse_pricesandtrades_xdp_v6_8.send_time = {}

-- Size: Send Time
gpw_wse_pricesandtrades_xdp_v6_8.send_time.size = 4

-- Display: Send Time
gpw_wse_pricesandtrades_xdp_v6_8.send_time.display = function(value)
  return "Send Time: "..value
end

-- Dissect: Send Time
gpw_wse_pricesandtrades_xdp_v6_8.send_time.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.send_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.send_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.send_time, range, value, display)

  return offset + length, value
end

-- Sending Indicator
gpw_wse_pricesandtrades_xdp_v6_8.sending_indicator = {}

-- Size: Sending Indicator
gpw_wse_pricesandtrades_xdp_v6_8.sending_indicator.size = 2

-- Display: Sending Indicator
gpw_wse_pricesandtrades_xdp_v6_8.sending_indicator.display = function(value)
  if value == 1 then
    return "Sending Indicator: Real Time Not Used For Wse (1)"
  end
  if value == 2 then
    return "Sending Indicator: Batch Mode (2)"
  end

  return "Sending Indicator: Unknown("..value..")"
end

-- Dissect: Sending Indicator
gpw_wse_pricesandtrades_xdp_v6_8.sending_indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.sending_indicator.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.sending_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.sending_indicator, range, value, display)

  return offset + length, value
end

-- Service Id
gpw_wse_pricesandtrades_xdp_v6_8.service_id = {}

-- Size: Service Id
gpw_wse_pricesandtrades_xdp_v6_8.service_id.size = 2

-- Display: Service Id
gpw_wse_pricesandtrades_xdp_v6_8.service_id.display = function(value)
  return "Service Id: "..value
end

-- Dissect: Service Id
gpw_wse_pricesandtrades_xdp_v6_8.service_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.service_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.service_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.service_id, range, value, display)

  return offset + length, value
end

-- Source Seq Num
gpw_wse_pricesandtrades_xdp_v6_8.source_seq_num = {}

-- Size: Source Seq Num
gpw_wse_pricesandtrades_xdp_v6_8.source_seq_num.size = 4

-- Display: Source Seq Num
gpw_wse_pricesandtrades_xdp_v6_8.source_seq_num.display = function(value)
  return "Source Seq Num: "..value
end

-- Dissect: Source Seq Num
gpw_wse_pricesandtrades_xdp_v6_8.source_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.source_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.source_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.source_seq_num, range, value, display)

  return offset + length, value
end

-- Source Time
gpw_wse_pricesandtrades_xdp_v6_8.source_time = {}

-- Size: Source Time
gpw_wse_pricesandtrades_xdp_v6_8.source_time.size = 4

-- Display: Source Time
gpw_wse_pricesandtrades_xdp_v6_8.source_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if gpw_wse_pricesandtrades_xdp_v6_8.timestamp_format == 0 then
    return "Source Time: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if gpw_wse_pricesandtrades_xdp_v6_8.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = gpw_wse_pricesandtrades_xdp_v6_8.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Source Time: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "Source Time: "..os.date("%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Source Time
gpw_wse_pricesandtrades_xdp_v6_8.source_time.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.source_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.source_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.source_time, range, value, display)

  return offset + length, value
end

-- Source Time Micro Secs
gpw_wse_pricesandtrades_xdp_v6_8.source_time_micro_secs = {}

-- Size: Source Time Micro Secs
gpw_wse_pricesandtrades_xdp_v6_8.source_time_micro_secs.size = 2

-- Display: Source Time Micro Secs
gpw_wse_pricesandtrades_xdp_v6_8.source_time_micro_secs.display = function(value)
  return "Source Time Micro Secs: "..value
end

-- Dissect: Source Time Micro Secs
gpw_wse_pricesandtrades_xdp_v6_8.source_time_micro_secs.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.source_time_micro_secs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.source_time_micro_secs.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.source_time_micro_secs, range, value, display)

  return offset + length, value
end

-- Symbol Index
gpw_wse_pricesandtrades_xdp_v6_8.symbol_index = {}

-- Size: Symbol Index
gpw_wse_pricesandtrades_xdp_v6_8.symbol_index.size = 4

-- Display: Symbol Index
gpw_wse_pricesandtrades_xdp_v6_8.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
gpw_wse_pricesandtrades_xdp_v6_8.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.symbol_index.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- System Id
gpw_wse_pricesandtrades_xdp_v6_8.system_id = {}

-- Size: System Id
gpw_wse_pricesandtrades_xdp_v6_8.system_id.size = 4

-- Display: System Id
gpw_wse_pricesandtrades_xdp_v6_8.system_id.display = function(value)
  if value == 1 then
    return "System Id: All Non Utp Systems (1)"
  end
  if value == 11 then
    return "System Id: Utp Trading Unit 1 (11)"
  end
  if value == 12 then
    return "System Id: Utp Trading Unit 2 (12)"
  end

  return "System Id: Unknown("..value..")"
end

-- Dissect: System Id
gpw_wse_pricesandtrades_xdp_v6_8.system_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.system_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.system_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.system_id, range, value, display)

  return offset + length, value
end

-- Tcs Trade Id
gpw_wse_pricesandtrades_xdp_v6_8.tcs_trade_id = {}

-- Size: Tcs Trade Id
gpw_wse_pricesandtrades_xdp_v6_8.tcs_trade_id.size = 16

-- Display: Tcs Trade Id
gpw_wse_pricesandtrades_xdp_v6_8.tcs_trade_id.display = function(value)
  return "Tcs Trade Id: "..value
end

-- Dissect: Tcs Trade Id
gpw_wse_pricesandtrades_xdp_v6_8.tcs_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.tcs_trade_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_pricesandtrades_xdp_v6_8.tcs_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.tcs_trade_id, range, value, display)

  return offset + length, value
end

-- Tick Direction
gpw_wse_pricesandtrades_xdp_v6_8.tick_direction = {}

-- Size: Tick Direction
gpw_wse_pricesandtrades_xdp_v6_8.tick_direction.size = 1

-- Display: Tick Direction
gpw_wse_pricesandtrades_xdp_v6_8.tick_direction.display = function(value)
  if value == "+" then
    return "Tick Direction: Positive Rising (+)"
  end
  if value == "-" then
    return "Tick Direction: Negative Falling (-)"
  end
  if value == "0" then
    return "Tick Direction: No Variation Unchanged Or Data Field Not Significant Used For Trade Cancellation (0)"
  end

  return "Tick Direction: Unknown("..value..")"
end

-- Dissect: Tick Direction
gpw_wse_pricesandtrades_xdp_v6_8.tick_direction.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.tick_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.tick_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.tick_direction, range, value, display)

  return offset + length, value
end

-- Trade Id Number
gpw_wse_pricesandtrades_xdp_v6_8.trade_id_number = {}

-- Size: Trade Id Number
gpw_wse_pricesandtrades_xdp_v6_8.trade_id_number.size = 4

-- Display: Trade Id Number
gpw_wse_pricesandtrades_xdp_v6_8.trade_id_number.display = function(value)
  return "Trade Id Number: "..value
end

-- Dissect: Trade Id Number
gpw_wse_pricesandtrades_xdp_v6_8.trade_id_number.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.trade_id_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.trade_id_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.trade_id_number, range, value, display)

  return offset + length, value
end

-- Trade Origin
gpw_wse_pricesandtrades_xdp_v6_8.trade_origin = {}

-- Size: Trade Origin
gpw_wse_pricesandtrades_xdp_v6_8.trade_origin.size = 1

-- Display: Trade Origin
gpw_wse_pricesandtrades_xdp_v6_8.trade_origin.display = function(value)
  if value == "B" then
    return "Trade Origin: Orders From The Book (B)"
  end
  if value == "O" then
    return "Trade Origin: Block Trade (O)"
  end
  if value == "I" then
    return "Trade Origin: Ipo Trade (I)"
  end
  if value == "T" then
    return "Trade Origin: Tender Offer Trade (T)"
  end
  if value == "S" then
    return "Trade Origin: Biso Trade (S)"
  end
  if value == "R" then
    return "Trade Origin: Trade Reporting For Future Use (R)"
  end

  return "Trade Origin: Unknown("..value..")"
end

-- Dissect: Trade Origin
gpw_wse_pricesandtrades_xdp_v6_8.trade_origin.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.trade_origin.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.trade_origin.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.trade_origin, range, value, display)

  return offset + length, value
end

-- Trading Date Time
gpw_wse_pricesandtrades_xdp_v6_8.trading_date_time = {}

-- Size: Trading Date Time
gpw_wse_pricesandtrades_xdp_v6_8.trading_date_time.size = 27

-- Display: Trading Date Time
gpw_wse_pricesandtrades_xdp_v6_8.trading_date_time.display = function(value)
  return "Trading Date Time: "..value
end

-- Dissect: Trading Date Time
gpw_wse_pricesandtrades_xdp_v6_8.trading_date_time.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.trading_date_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_pricesandtrades_xdp_v6_8.trading_date_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.trading_date_time, range, value, display)

  return offset + length, value
end

-- Transaction Id Code
gpw_wse_pricesandtrades_xdp_v6_8.transaction_id_code = {}

-- Size: Transaction Id Code
gpw_wse_pricesandtrades_xdp_v6_8.transaction_id_code.size = 52

-- Display: Transaction Id Code
gpw_wse_pricesandtrades_xdp_v6_8.transaction_id_code.display = function(value)
  return "Transaction Id Code: "..value
end

-- Dissect: Transaction Id Code
gpw_wse_pricesandtrades_xdp_v6_8.transaction_id_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.transaction_id_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_pricesandtrades_xdp_v6_8.transaction_id_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.transaction_id_code, range, value, display)

  return offset + length, value
end

-- Transaction To Be Cleared
gpw_wse_pricesandtrades_xdp_v6_8.transaction_to_be_cleared = {}

-- Size: Transaction To Be Cleared
gpw_wse_pricesandtrades_xdp_v6_8.transaction_to_be_cleared.size = 4

-- Display: Transaction To Be Cleared
gpw_wse_pricesandtrades_xdp_v6_8.transaction_to_be_cleared.display = function(value)
  return "Transaction To Be Cleared: "..value
end

-- Dissect: Transaction To Be Cleared
gpw_wse_pricesandtrades_xdp_v6_8.transaction_to_be_cleared.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.transaction_to_be_cleared.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_pricesandtrades_xdp_v6_8.transaction_to_be_cleared.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.transaction_to_be_cleared, range, value, display)

  return offset + length, value
end

-- Type Of Last Price
gpw_wse_pricesandtrades_xdp_v6_8.type_of_last_price = {}

-- Size: Type Of Last Price
gpw_wse_pricesandtrades_xdp_v6_8.type_of_last_price.size = 2

-- Display: Type Of Last Price
gpw_wse_pricesandtrades_xdp_v6_8.type_of_last_price.display = function(value)
  if value == 4 then
    return "Type Of Last Price: 1st traded price (4)"
  end
  if value == 7 then
    return "Type Of Last Price: N Th Traded Price Resume After Unhalting Of The Instrument (7)"
  end

  return "Type Of Last Price: Unknown("..value..")"
end

-- Dissect: Type Of Last Price
gpw_wse_pricesandtrades_xdp_v6_8.type_of_last_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.type_of_last_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.type_of_last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.type_of_last_price, range, value, display)

  return offset + length, value
end

-- Type Of Price
gpw_wse_pricesandtrades_xdp_v6_8.type_of_price = {}

-- Size: Type Of Price
gpw_wse_pricesandtrades_xdp_v6_8.type_of_price.size = 2

-- Display: Type Of Price
gpw_wse_pricesandtrades_xdp_v6_8.type_of_price.display = function(value)
  if value == 2 then
    return "Type Of Price: Bid Price (2)"
  end
  if value == 3 then
    return "Type Of Price: Ask Price (3)"
  end
  if value == 30 then
    return "Type Of Price: First Traded Price Of The Day (30)"
  end
  if value == 33 then
    return "Type Of Price: New Last Price (33)"
  end
  if value == 34 then
    return "Type Of Price: New Previous Days Closing Price The Last Adjusted Closing Price Or Lp Midpoint (34)"
  end
  if value == 35 then
    return "Type Of Price: Daily Settlement Price (35)"
  end
  if value == 36 then
    return "Type Of Price: Final Settlement Price (36)"
  end
  if value == 37 then
    return "Type Of Price: Theoretical Price (37)"
  end
  if value == 51 then
    return "Type Of Price: Alternative Indicative Price Aip (51)"
  end

  return "Type Of Price: Unknown("..value..")"
end

-- Dissect: Type Of Price
gpw_wse_pricesandtrades_xdp_v6_8.type_of_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.type_of_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.type_of_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.type_of_price, range, value, display)

  return offset + length, value
end

-- Type Of Trade
gpw_wse_pricesandtrades_xdp_v6_8.type_of_trade = {}

-- Size: Type Of Trade
gpw_wse_pricesandtrades_xdp_v6_8.type_of_trade.size = 1

-- Display: Type Of Trade
gpw_wse_pricesandtrades_xdp_v6_8.type_of_trade.display = function(value)
  if value == "0" then
    return "Type Of Trade: Trade Does Not Stem From A Cross Order (0)"
  end
  if value == "1" then
    return "Type Of Trade: Trade Stems From A Cross Order (1)"
  end
  if value == "4" then
    return "Type Of Trade: Valuation Trade (4)"
  end
  if value == "5" then
    return "Type Of Trade: Internalized Trade (5)"
  end
  if value == "6" then
    return "Type Of Trade: Internalized Cross Trade (6)"
  end

  return "Type Of Trade: Unknown("..value..")"
end

-- Dissect: Type Of Trade
gpw_wse_pricesandtrades_xdp_v6_8.type_of_trade.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.type_of_trade.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.type_of_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.type_of_trade, range, value, display)

  return offset + length, value
end

-- Variation
gpw_wse_pricesandtrades_xdp_v6_8.variation = {}

-- Size: Variation
gpw_wse_pricesandtrades_xdp_v6_8.variation.size = 4

-- Display: Variation
gpw_wse_pricesandtrades_xdp_v6_8.variation.display = function(value)
  return "Variation: "..value
end

-- Dissect: Variation
gpw_wse_pricesandtrades_xdp_v6_8.variation.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.variation.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.variation.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.variation, range, value, display)

  return offset + length, value
end

-- Variation Last Price
gpw_wse_pricesandtrades_xdp_v6_8.variation_last_price = {}

-- Size: Variation Last Price
gpw_wse_pricesandtrades_xdp_v6_8.variation_last_price.size = 4

-- Display: Variation Last Price
gpw_wse_pricesandtrades_xdp_v6_8.variation_last_price.display = function(value)
  return "Variation Last Price: "..value
end

-- Dissect: Variation Last Price
gpw_wse_pricesandtrades_xdp_v6_8.variation_last_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.variation_last_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.variation_last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.variation_last_price, range, value, display)

  return offset + length, value
end

-- Variation Scale Code
gpw_wse_pricesandtrades_xdp_v6_8.variation_scale_code = {}

-- Size: Variation Scale Code
gpw_wse_pricesandtrades_xdp_v6_8.variation_scale_code.size = 1

-- Display: Variation Scale Code
gpw_wse_pricesandtrades_xdp_v6_8.variation_scale_code.display = function(value)
  return "Variation Scale Code: "..value
end

-- Dissect: Variation Scale Code
gpw_wse_pricesandtrades_xdp_v6_8.variation_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.variation_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_pricesandtrades_xdp_v6_8.variation_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.variation_scale_code, range, value, display)

  return offset + length, value
end

-- Venue Of Execution
gpw_wse_pricesandtrades_xdp_v6_8.venue_of_execution = {}

-- Size: Venue Of Execution
gpw_wse_pricesandtrades_xdp_v6_8.venue_of_execution.size = 4

-- Display: Venue Of Execution
gpw_wse_pricesandtrades_xdp_v6_8.venue_of_execution.display = function(value)
  return "Venue Of Execution: "..value
end

-- Dissect: Venue Of Execution
gpw_wse_pricesandtrades_xdp_v6_8.venue_of_execution.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_pricesandtrades_xdp_v6_8.venue_of_execution.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_pricesandtrades_xdp_v6_8.venue_of_execution.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.venue_of_execution, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Gpw Wse PricesAndTrades Xdp 6.8
-----------------------------------------------------------------------

-- Vwap Closing Price Message
gpw_wse_pricesandtrades_xdp_v6_8.vwap_closing_price_message = {}

-- Size: Vwap Closing Price Message
gpw_wse_pricesandtrades_xdp_v6_8.vwap_closing_price_message.size =
  gpw_wse_pricesandtrades_xdp_v6_8.symbol_index.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.source_time.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.source_seq_num.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.sending_indicator.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.closing_price_rule.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.closing_price.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.adjusted_closing_price.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.nb_trades.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.amount_traded.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.qty_shares.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.system_id.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.source_time_micro_secs.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.scale_code.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.reserved_5.size

-- Display: Vwap Closing Price Message
gpw_wse_pricesandtrades_xdp_v6_8.vwap_closing_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Vwap Closing Price Message
gpw_wse_pricesandtrades_xdp_v6_8.vwap_closing_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = gpw_wse_pricesandtrades_xdp_v6_8.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = gpw_wse_pricesandtrades_xdp_v6_8.source_time.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = gpw_wse_pricesandtrades_xdp_v6_8.source_seq_num.dissect(buffer, index, packet, parent)

  -- Sending Indicator: Binary Int.
  index, sending_indicator = gpw_wse_pricesandtrades_xdp_v6_8.sending_indicator.dissect(buffer, index, packet, parent)

  -- Closing Price Rule: Binary Int.
  index, closing_price_rule = gpw_wse_pricesandtrades_xdp_v6_8.closing_price_rule.dissect(buffer, index, packet, parent)

  -- Closing Price: Binary Int.
  index, closing_price = gpw_wse_pricesandtrades_xdp_v6_8.closing_price.dissect(buffer, index, packet, parent)

  -- Adjusted Closing Price: Binary Int.
  index, adjusted_closing_price = gpw_wse_pricesandtrades_xdp_v6_8.adjusted_closing_price.dissect(buffer, index, packet, parent)

  -- Nb Trades: Binary Int.
  index, nb_trades = gpw_wse_pricesandtrades_xdp_v6_8.nb_trades.dissect(buffer, index, packet, parent)

  -- Amount Traded: Binary Int.
  index, amount_traded = gpw_wse_pricesandtrades_xdp_v6_8.amount_traded.dissect(buffer, index, packet, parent)

  -- Qty Shares: Binary Int.
  index, qty_shares = gpw_wse_pricesandtrades_xdp_v6_8.qty_shares.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = gpw_wse_pricesandtrades_xdp_v6_8.system_id.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = gpw_wse_pricesandtrades_xdp_v6_8.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Scale Code: Binary Int.
  index, scale_code = gpw_wse_pricesandtrades_xdp_v6_8.scale_code.dissect(buffer, index, packet, parent)

  -- Reserved 5: Binary Int.
  index, reserved_5 = gpw_wse_pricesandtrades_xdp_v6_8.reserved_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Vwap Closing Price Message
gpw_wse_pricesandtrades_xdp_v6_8.vwap_closing_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.vwap_closing_price_message, buffer(offset, 0))
    local index = gpw_wse_pricesandtrades_xdp_v6_8.vwap_closing_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_pricesandtrades_xdp_v6_8.vwap_closing_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_pricesandtrades_xdp_v6_8.vwap_closing_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Summary Message
gpw_wse_pricesandtrades_xdp_v6_8.auction_summary_message = {}

-- Size: Auction Summary Message
gpw_wse_pricesandtrades_xdp_v6_8.auction_summary_message.size =
  gpw_wse_pricesandtrades_xdp_v6_8.symbol_index.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.source_time.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.source_seq_num.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.first_price.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.last_price.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.highest_price.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.lowest_price.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.cumulative_quantity.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.variation.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.system_id.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.source_time_micro_secs.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.type_of_last_price.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.tick_direction.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.instrument_valuation_price.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.price_scale_code.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.variation_scale_code.size

-- Display: Auction Summary Message
gpw_wse_pricesandtrades_xdp_v6_8.auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
gpw_wse_pricesandtrades_xdp_v6_8.auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = gpw_wse_pricesandtrades_xdp_v6_8.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = gpw_wse_pricesandtrades_xdp_v6_8.source_time.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = gpw_wse_pricesandtrades_xdp_v6_8.source_seq_num.dissect(buffer, index, packet, parent)

  -- First Price: Binary Int.
  index, first_price = gpw_wse_pricesandtrades_xdp_v6_8.first_price.dissect(buffer, index, packet, parent)

  -- Last Price: Binary Int.
  index, last_price = gpw_wse_pricesandtrades_xdp_v6_8.last_price.dissect(buffer, index, packet, parent)

  -- Highest Price: Binary Int.
  index, highest_price = gpw_wse_pricesandtrades_xdp_v6_8.highest_price.dissect(buffer, index, packet, parent)

  -- Lowest Price: Binary Int.
  index, lowest_price = gpw_wse_pricesandtrades_xdp_v6_8.lowest_price.dissect(buffer, index, packet, parent)

  -- Cumulative Quantity: Binary Int.
  index, cumulative_quantity = gpw_wse_pricesandtrades_xdp_v6_8.cumulative_quantity.dissect(buffer, index, packet, parent)

  -- Variation: Binary Int. (signed)
  index, variation = gpw_wse_pricesandtrades_xdp_v6_8.variation.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = gpw_wse_pricesandtrades_xdp_v6_8.system_id.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = gpw_wse_pricesandtrades_xdp_v6_8.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Type Of Last Price: Binary Int.
  index, type_of_last_price = gpw_wse_pricesandtrades_xdp_v6_8.type_of_last_price.dissect(buffer, index, packet, parent)

  -- Tick Direction: ASCII Ch.
  index, tick_direction = gpw_wse_pricesandtrades_xdp_v6_8.tick_direction.dissect(buffer, index, packet, parent)

  -- Instrument Valuation Price: ASCII Ch.
  index, instrument_valuation_price = gpw_wse_pricesandtrades_xdp_v6_8.instrument_valuation_price.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary Int.
  index, price_scale_code = gpw_wse_pricesandtrades_xdp_v6_8.price_scale_code.dissect(buffer, index, packet, parent)

  -- Variation Scale Code: Binary Int.
  index, variation_scale_code = gpw_wse_pricesandtrades_xdp_v6_8.variation_scale_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
gpw_wse_pricesandtrades_xdp_v6_8.auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.auction_summary_message, buffer(offset, 0))
    local index = gpw_wse_pricesandtrades_xdp_v6_8.auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_pricesandtrades_xdp_v6_8.auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_pricesandtrades_xdp_v6_8.auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Publication Message
gpw_wse_pricesandtrades_xdp_v6_8.trade_publication_message = {}

-- Size: Trade Publication Message
gpw_wse_pricesandtrades_xdp_v6_8.trade_publication_message.size =
  gpw_wse_pricesandtrades_xdp_v6_8.symbol_index.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.source_time.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.source_seq_num.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.venue_of_execution.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.instrument_id_code_type.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.price_multiplier.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.system_id.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.source_time_micro_secs.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.trading_date_time.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.price_currency.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.instrument_id_code.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.publication_date_time.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.notional_currency.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.tcs_trade_id.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.price_notation.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.reserved_1.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.transaction_to_be_cleared.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.mmt_benchmark_indicator.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.mmt_contribution_to_price.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.multiplier_scale_code.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.price_ascii_ch_20.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.quantity.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.notional_amount.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.transaction_id_code.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.mmt_market_mechanism.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.mmt_trading_mode.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.mmt_special_dividend_indicator.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.mmt_negotiation_indicator.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.mmt_agency_cross_indicator.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.mmt_transaction_category.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.mmt_modification_indicator.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.mmt_duplicative_indicator.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.mmt_publication_mode.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.mmt_algorithmic_indicator.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.reserved_2.size

-- Display: Trade Publication Message
gpw_wse_pricesandtrades_xdp_v6_8.trade_publication_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Publication Message
gpw_wse_pricesandtrades_xdp_v6_8.trade_publication_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = gpw_wse_pricesandtrades_xdp_v6_8.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = gpw_wse_pricesandtrades_xdp_v6_8.source_time.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = gpw_wse_pricesandtrades_xdp_v6_8.source_seq_num.dissect(buffer, index, packet, parent)

  -- Venue Of Execution: ASCII Ch.
  index, venue_of_execution = gpw_wse_pricesandtrades_xdp_v6_8.venue_of_execution.dissect(buffer, index, packet, parent)

  -- Instrument Id Code Type: ASCII Ch.
  index, instrument_id_code_type = gpw_wse_pricesandtrades_xdp_v6_8.instrument_id_code_type.dissect(buffer, index, packet, parent)

  -- Price Multiplier: Binary Int.
  index, price_multiplier = gpw_wse_pricesandtrades_xdp_v6_8.price_multiplier.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = gpw_wse_pricesandtrades_xdp_v6_8.system_id.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = gpw_wse_pricesandtrades_xdp_v6_8.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Trading Date Time: ASCII Ch.
  index, trading_date_time = gpw_wse_pricesandtrades_xdp_v6_8.trading_date_time.dissect(buffer, index, packet, parent)

  -- Price Currency: ASCII Ch.
  index, price_currency = gpw_wse_pricesandtrades_xdp_v6_8.price_currency.dissect(buffer, index, packet, parent)

  -- Instrument Id Code: ASCII Ch.
  index, instrument_id_code = gpw_wse_pricesandtrades_xdp_v6_8.instrument_id_code.dissect(buffer, index, packet, parent)

  -- Publication Date Time: ASCII Ch.
  index, publication_date_time = gpw_wse_pricesandtrades_xdp_v6_8.publication_date_time.dissect(buffer, index, packet, parent)

  -- Notional Currency: ASCII Ch.
  index, notional_currency = gpw_wse_pricesandtrades_xdp_v6_8.notional_currency.dissect(buffer, index, packet, parent)

  -- Tcs Trade Id: ASCII Ch.
  index, tcs_trade_id = gpw_wse_pricesandtrades_xdp_v6_8.tcs_trade_id.dissect(buffer, index, packet, parent)

  -- Price Notation: ASCII Ch.
  index, price_notation = gpw_wse_pricesandtrades_xdp_v6_8.price_notation.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary Int.
  index, reserved_1 = gpw_wse_pricesandtrades_xdp_v6_8.reserved_1.dissect(buffer, index, packet, parent)

  -- Transaction To Be Cleared: ASCII Ch.
  index, transaction_to_be_cleared = gpw_wse_pricesandtrades_xdp_v6_8.transaction_to_be_cleared.dissect(buffer, index, packet, parent)

  -- Mmt Benchmark Indicator: ASCII Ch.
  index, mmt_benchmark_indicator = gpw_wse_pricesandtrades_xdp_v6_8.mmt_benchmark_indicator.dissect(buffer, index, packet, parent)

  -- Mmt Contribution To Price: ASCII Ch.
  index, mmt_contribution_to_price = gpw_wse_pricesandtrades_xdp_v6_8.mmt_contribution_to_price.dissect(buffer, index, packet, parent)

  -- Multiplier Scale Code: Binary Int.
  index, multiplier_scale_code = gpw_wse_pricesandtrades_xdp_v6_8.multiplier_scale_code.dissect(buffer, index, packet, parent)

  -- Price Ascii Ch 20: ASCII Ch.
  index, price_ascii_ch_20 = gpw_wse_pricesandtrades_xdp_v6_8.price_ascii_ch_20.dissect(buffer, index, packet, parent)

  -- Quantity: ASCII Ch.
  index, quantity = gpw_wse_pricesandtrades_xdp_v6_8.quantity.dissect(buffer, index, packet, parent)

  -- Notional Amount: ASCII Ch.
  index, notional_amount = gpw_wse_pricesandtrades_xdp_v6_8.notional_amount.dissect(buffer, index, packet, parent)

  -- Transaction Id Code: ASCII Ch.
  index, transaction_id_code = gpw_wse_pricesandtrades_xdp_v6_8.transaction_id_code.dissect(buffer, index, packet, parent)

  -- Mmt Market Mechanism: ASCII Ch.
  index, mmt_market_mechanism = gpw_wse_pricesandtrades_xdp_v6_8.mmt_market_mechanism.dissect(buffer, index, packet, parent)

  -- Mmt Trading Mode: ASCII Ch.
  index, mmt_trading_mode = gpw_wse_pricesandtrades_xdp_v6_8.mmt_trading_mode.dissect(buffer, index, packet, parent)

  -- Mmt Special Dividend Indicator: ASCII Ch.
  index, mmt_special_dividend_indicator = gpw_wse_pricesandtrades_xdp_v6_8.mmt_special_dividend_indicator.dissect(buffer, index, packet, parent)

  -- Mmt Negotiation Indicator: ASCII Ch.
  index, mmt_negotiation_indicator = gpw_wse_pricesandtrades_xdp_v6_8.mmt_negotiation_indicator.dissect(buffer, index, packet, parent)

  -- Mmt Agency Cross Indicator: ASCII Ch.
  index, mmt_agency_cross_indicator = gpw_wse_pricesandtrades_xdp_v6_8.mmt_agency_cross_indicator.dissect(buffer, index, packet, parent)

  -- Mmt Transaction Category: ASCII Ch.
  index, mmt_transaction_category = gpw_wse_pricesandtrades_xdp_v6_8.mmt_transaction_category.dissect(buffer, index, packet, parent)

  -- Mmt Modification Indicator: ASCII Ch.
  index, mmt_modification_indicator = gpw_wse_pricesandtrades_xdp_v6_8.mmt_modification_indicator.dissect(buffer, index, packet, parent)

  -- Mmt Duplicative Indicator: ASCII Ch.
  index, mmt_duplicative_indicator = gpw_wse_pricesandtrades_xdp_v6_8.mmt_duplicative_indicator.dissect(buffer, index, packet, parent)

  -- Mmt Publication Mode: ASCII Ch.
  index, mmt_publication_mode = gpw_wse_pricesandtrades_xdp_v6_8.mmt_publication_mode.dissect(buffer, index, packet, parent)

  -- Mmt Algorithmic Indicator: ASCII Ch.
  index, mmt_algorithmic_indicator = gpw_wse_pricesandtrades_xdp_v6_8.mmt_algorithmic_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 2: Binary Int.
  index, reserved_2 = gpw_wse_pricesandtrades_xdp_v6_8.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Publication Message
gpw_wse_pricesandtrades_xdp_v6_8.trade_publication_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.trade_publication_message, buffer(offset, 0))
    local index = gpw_wse_pricesandtrades_xdp_v6_8.trade_publication_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_pricesandtrades_xdp_v6_8.trade_publication_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_pricesandtrades_xdp_v6_8.trade_publication_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Update Message
gpw_wse_pricesandtrades_xdp_v6_8.price_update_message = {}

-- Size: Price Update Message
gpw_wse_pricesandtrades_xdp_v6_8.price_update_message.size =
  gpw_wse_pricesandtrades_xdp_v6_8.symbol_index.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.source_time.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.source_seq_num.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.price_binary_int_4.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.highest_price.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.lowest_price.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.variation_last_price.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.system_id.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.source_time_micro_secs.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.type_of_price.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.reserved_2.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.price_scale_code.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.variation_scale_code.size

-- Display: Price Update Message
gpw_wse_pricesandtrades_xdp_v6_8.price_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Update Message
gpw_wse_pricesandtrades_xdp_v6_8.price_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = gpw_wse_pricesandtrades_xdp_v6_8.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = gpw_wse_pricesandtrades_xdp_v6_8.source_time.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = gpw_wse_pricesandtrades_xdp_v6_8.source_seq_num.dissect(buffer, index, packet, parent)

  -- Price Binary Int 4: Binary Int.
  index, price_binary_int_4 = gpw_wse_pricesandtrades_xdp_v6_8.price_binary_int_4.dissect(buffer, index, packet, parent)

  -- Highest Price: Binary Int.
  index, highest_price = gpw_wse_pricesandtrades_xdp_v6_8.highest_price.dissect(buffer, index, packet, parent)

  -- Lowest Price: Binary Int.
  index, lowest_price = gpw_wse_pricesandtrades_xdp_v6_8.lowest_price.dissect(buffer, index, packet, parent)

  -- Variation Last Price: Binary Int. (signed)
  index, variation_last_price = gpw_wse_pricesandtrades_xdp_v6_8.variation_last_price.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = gpw_wse_pricesandtrades_xdp_v6_8.system_id.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = gpw_wse_pricesandtrades_xdp_v6_8.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Type Of Price: Binary Int.
  index, type_of_price = gpw_wse_pricesandtrades_xdp_v6_8.type_of_price.dissect(buffer, index, packet, parent)

  -- Reserved 2: Binary Int.
  index, reserved_2 = gpw_wse_pricesandtrades_xdp_v6_8.reserved_2.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary Int.
  index, price_scale_code = gpw_wse_pricesandtrades_xdp_v6_8.price_scale_code.dissect(buffer, index, packet, parent)

  -- Variation Scale Code: Binary Int.
  index, variation_scale_code = gpw_wse_pricesandtrades_xdp_v6_8.variation_scale_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Update Message
gpw_wse_pricesandtrades_xdp_v6_8.price_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.price_update_message, buffer(offset, 0))
    local index = gpw_wse_pricesandtrades_xdp_v6_8.price_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_pricesandtrades_xdp_v6_8.price_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_pricesandtrades_xdp_v6_8.price_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Full Information Message
gpw_wse_pricesandtrades_xdp_v6_8.trade_full_information_message = {}

-- Size: Trade Full Information Message
gpw_wse_pricesandtrades_xdp_v6_8.trade_full_information_message.size =
  gpw_wse_pricesandtrades_xdp_v6_8.symbol_index.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.source_time.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.trade_id_number.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.venue_of_execution.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.source_seq_num.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.price_notation.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.transaction_to_be_cleared.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.cumulative_quantity.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.highest_price.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.lowest_price.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.variation_last_price.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.system_id.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.source_time_micro_secs.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.price_currency.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.last_trade_indicator.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.type_of_trade.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.trade_origin.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.tick_direction.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.opening_trade_indicator.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.variation_scale_code.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.price_scale_code.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.trading_date_time.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.publication_date_time.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.instrument_id_code_type.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.instrument_id_code.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.price_ascii_ch_20.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.quantity.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.notional_amount.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.notional_currency.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.reserved_1.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.transaction_id_code.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.mmt_market_mechanism.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.mmt_trading_mode.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.mmt_algorithmic_indicator.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.mmt_modification_indicator.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.mmt_negotiation_indicator.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.mmt_special_dividend_indicator.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.mmt_contribution_to_price.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.mmt_benchmark_indicator.size

-- Display: Trade Full Information Message
gpw_wse_pricesandtrades_xdp_v6_8.trade_full_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Full Information Message
gpw_wse_pricesandtrades_xdp_v6_8.trade_full_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = gpw_wse_pricesandtrades_xdp_v6_8.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = gpw_wse_pricesandtrades_xdp_v6_8.source_time.dissect(buffer, index, packet, parent)

  -- Trade Id Number: Binary Int.
  index, trade_id_number = gpw_wse_pricesandtrades_xdp_v6_8.trade_id_number.dissect(buffer, index, packet, parent)

  -- Venue Of Execution: ASCII Ch.
  index, venue_of_execution = gpw_wse_pricesandtrades_xdp_v6_8.venue_of_execution.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = gpw_wse_pricesandtrades_xdp_v6_8.source_seq_num.dissect(buffer, index, packet, parent)

  -- Price Notation: ASCII Ch.
  index, price_notation = gpw_wse_pricesandtrades_xdp_v6_8.price_notation.dissect(buffer, index, packet, parent)

  -- Transaction To Be Cleared: ASCII Ch.
  index, transaction_to_be_cleared = gpw_wse_pricesandtrades_xdp_v6_8.transaction_to_be_cleared.dissect(buffer, index, packet, parent)

  -- Cumulative Quantity: Binary Int.
  index, cumulative_quantity = gpw_wse_pricesandtrades_xdp_v6_8.cumulative_quantity.dissect(buffer, index, packet, parent)

  -- Highest Price: Binary Int.
  index, highest_price = gpw_wse_pricesandtrades_xdp_v6_8.highest_price.dissect(buffer, index, packet, parent)

  -- Lowest Price: Binary Int.
  index, lowest_price = gpw_wse_pricesandtrades_xdp_v6_8.lowest_price.dissect(buffer, index, packet, parent)

  -- Variation Last Price: Binary Int. (signed)
  index, variation_last_price = gpw_wse_pricesandtrades_xdp_v6_8.variation_last_price.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = gpw_wse_pricesandtrades_xdp_v6_8.system_id.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = gpw_wse_pricesandtrades_xdp_v6_8.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Price Currency: ASCII Ch.
  index, price_currency = gpw_wse_pricesandtrades_xdp_v6_8.price_currency.dissect(buffer, index, packet, parent)

  -- Last Trade Indicator: ASCII Ch.
  index, last_trade_indicator = gpw_wse_pricesandtrades_xdp_v6_8.last_trade_indicator.dissect(buffer, index, packet, parent)

  -- Type Of Trade: ASCII Ch.
  index, type_of_trade = gpw_wse_pricesandtrades_xdp_v6_8.type_of_trade.dissect(buffer, index, packet, parent)

  -- Trade Origin: ASCII Ch.
  index, trade_origin = gpw_wse_pricesandtrades_xdp_v6_8.trade_origin.dissect(buffer, index, packet, parent)

  -- Tick Direction: ASCII Ch.
  index, tick_direction = gpw_wse_pricesandtrades_xdp_v6_8.tick_direction.dissect(buffer, index, packet, parent)

  -- Opening Trade Indicator: ASCII Ch.
  index, opening_trade_indicator = gpw_wse_pricesandtrades_xdp_v6_8.opening_trade_indicator.dissect(buffer, index, packet, parent)

  -- Variation Scale Code: Binary Int.
  index, variation_scale_code = gpw_wse_pricesandtrades_xdp_v6_8.variation_scale_code.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary Int.
  index, price_scale_code = gpw_wse_pricesandtrades_xdp_v6_8.price_scale_code.dissect(buffer, index, packet, parent)

  -- Trading Date Time: ASCII Ch.
  index, trading_date_time = gpw_wse_pricesandtrades_xdp_v6_8.trading_date_time.dissect(buffer, index, packet, parent)

  -- Publication Date Time: ASCII Ch.
  index, publication_date_time = gpw_wse_pricesandtrades_xdp_v6_8.publication_date_time.dissect(buffer, index, packet, parent)

  -- Instrument Id Code Type: ASCII Ch.
  index, instrument_id_code_type = gpw_wse_pricesandtrades_xdp_v6_8.instrument_id_code_type.dissect(buffer, index, packet, parent)

  -- Instrument Id Code: ASCII Ch.
  index, instrument_id_code = gpw_wse_pricesandtrades_xdp_v6_8.instrument_id_code.dissect(buffer, index, packet, parent)

  -- Price Ascii Ch 20: ASCII Ch.
  index, price_ascii_ch_20 = gpw_wse_pricesandtrades_xdp_v6_8.price_ascii_ch_20.dissect(buffer, index, packet, parent)

  -- Quantity: ASCII Ch.
  index, quantity = gpw_wse_pricesandtrades_xdp_v6_8.quantity.dissect(buffer, index, packet, parent)

  -- Notional Amount: ASCII Ch.
  index, notional_amount = gpw_wse_pricesandtrades_xdp_v6_8.notional_amount.dissect(buffer, index, packet, parent)

  -- Notional Currency: ASCII Ch.
  index, notional_currency = gpw_wse_pricesandtrades_xdp_v6_8.notional_currency.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary Int.
  index, reserved_1 = gpw_wse_pricesandtrades_xdp_v6_8.reserved_1.dissect(buffer, index, packet, parent)

  -- Transaction Id Code: ASCII Ch.
  index, transaction_id_code = gpw_wse_pricesandtrades_xdp_v6_8.transaction_id_code.dissect(buffer, index, packet, parent)

  -- Mmt Market Mechanism: ASCII Ch.
  index, mmt_market_mechanism = gpw_wse_pricesandtrades_xdp_v6_8.mmt_market_mechanism.dissect(buffer, index, packet, parent)

  -- Mmt Trading Mode: ASCII Ch.
  index, mmt_trading_mode = gpw_wse_pricesandtrades_xdp_v6_8.mmt_trading_mode.dissect(buffer, index, packet, parent)

  -- Mmt Algorithmic Indicator: ASCII Ch.
  index, mmt_algorithmic_indicator = gpw_wse_pricesandtrades_xdp_v6_8.mmt_algorithmic_indicator.dissect(buffer, index, packet, parent)

  -- Mmt Modification Indicator: ASCII Ch.
  index, mmt_modification_indicator = gpw_wse_pricesandtrades_xdp_v6_8.mmt_modification_indicator.dissect(buffer, index, packet, parent)

  -- Mmt Negotiation Indicator: ASCII Ch.
  index, mmt_negotiation_indicator = gpw_wse_pricesandtrades_xdp_v6_8.mmt_negotiation_indicator.dissect(buffer, index, packet, parent)

  -- Mmt Special Dividend Indicator: ASCII Ch.
  index, mmt_special_dividend_indicator = gpw_wse_pricesandtrades_xdp_v6_8.mmt_special_dividend_indicator.dissect(buffer, index, packet, parent)

  -- Mmt Contribution To Price: ASCII Ch.
  index, mmt_contribution_to_price = gpw_wse_pricesandtrades_xdp_v6_8.mmt_contribution_to_price.dissect(buffer, index, packet, parent)

  -- Mmt Benchmark Indicator: ASCII Ch.
  index, mmt_benchmark_indicator = gpw_wse_pricesandtrades_xdp_v6_8.mmt_benchmark_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Full Information Message
gpw_wse_pricesandtrades_xdp_v6_8.trade_full_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.trade_full_information_message, buffer(offset, 0))
    local index = gpw_wse_pricesandtrades_xdp_v6_8.trade_full_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_pricesandtrades_xdp_v6_8.trade_full_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_pricesandtrades_xdp_v6_8.trade_full_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
gpw_wse_pricesandtrades_xdp_v6_8.payload = {}

-- Dissect: Payload
gpw_wse_pricesandtrades_xdp_v6_8.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Trade Full Information Message
  if message_type == 240 then
    return gpw_wse_pricesandtrades_xdp_v6_8.trade_full_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Update Message
  if message_type == 241 then
    return gpw_wse_pricesandtrades_xdp_v6_8.price_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Publication Message
  if message_type == 243 then
    return gpw_wse_pricesandtrades_xdp_v6_8.trade_publication_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if message_type == 245 then
    return gpw_wse_pricesandtrades_xdp_v6_8.auction_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Vwap Closing Price Message
  if message_type == 247 then
    return gpw_wse_pricesandtrades_xdp_v6_8.vwap_closing_price_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
gpw_wse_pricesandtrades_xdp_v6_8.message_header = {}

-- Size: Message Header
gpw_wse_pricesandtrades_xdp_v6_8.message_header.size =
  gpw_wse_pricesandtrades_xdp_v6_8.message_size.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.message_type.size

-- Display: Message Header
gpw_wse_pricesandtrades_xdp_v6_8.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
gpw_wse_pricesandtrades_xdp_v6_8.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: Binary Int.
  index, message_size = gpw_wse_pricesandtrades_xdp_v6_8.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: Binary Int.
  index, message_type = gpw_wse_pricesandtrades_xdp_v6_8.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
gpw_wse_pricesandtrades_xdp_v6_8.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.message_header, buffer(offset, 0))
    local index = gpw_wse_pricesandtrades_xdp_v6_8.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_pricesandtrades_xdp_v6_8.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_pricesandtrades_xdp_v6_8.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
gpw_wse_pricesandtrades_xdp_v6_8.message = {}

-- Display: Message
gpw_wse_pricesandtrades_xdp_v6_8.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
gpw_wse_pricesandtrades_xdp_v6_8.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = gpw_wse_pricesandtrades_xdp_v6_8.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):uint()

  -- Payload: Runtime Type with 5 branches
  index = gpw_wse_pricesandtrades_xdp_v6_8.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
gpw_wse_pricesandtrades_xdp_v6_8.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.message, buffer(offset, 0))
    local current = gpw_wse_pricesandtrades_xdp_v6_8.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = gpw_wse_pricesandtrades_xdp_v6_8.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    gpw_wse_pricesandtrades_xdp_v6_8.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
gpw_wse_pricesandtrades_xdp_v6_8.packet_header = {}

-- Size: Packet Header
gpw_wse_pricesandtrades_xdp_v6_8.packet_header.size =
  gpw_wse_pricesandtrades_xdp_v6_8.packet_length.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.packet_type.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.packet_sequence_number.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.send_time.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.service_id.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.delivery_flag.size + 
  gpw_wse_pricesandtrades_xdp_v6_8.number_msg_entries.size

-- Display: Packet Header
gpw_wse_pricesandtrades_xdp_v6_8.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
gpw_wse_pricesandtrades_xdp_v6_8.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: Binary Int.
  index, packet_length = gpw_wse_pricesandtrades_xdp_v6_8.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: Binary Int.
  index, packet_type = gpw_wse_pricesandtrades_xdp_v6_8.packet_type.dissect(buffer, index, packet, parent)

  -- Packet Sequence Number: Binary Int.
  index, packet_sequence_number = gpw_wse_pricesandtrades_xdp_v6_8.packet_sequence_number.dissect(buffer, index, packet, parent)

  -- Send Time: Binary Int.
  index, send_time = gpw_wse_pricesandtrades_xdp_v6_8.send_time.dissect(buffer, index, packet, parent)

  -- Service Id: Binary Int.
  index, service_id = gpw_wse_pricesandtrades_xdp_v6_8.service_id.dissect(buffer, index, packet, parent)

  -- Delivery Flag: Binary Int.
  index, delivery_flag = gpw_wse_pricesandtrades_xdp_v6_8.delivery_flag.dissect(buffer, index, packet, parent)

  -- Number Msg Entries: Binary Int.
  index, number_msg_entries = gpw_wse_pricesandtrades_xdp_v6_8.number_msg_entries.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
gpw_wse_pricesandtrades_xdp_v6_8.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8.fields.packet_header, buffer(offset, 0))
    local index = gpw_wse_pricesandtrades_xdp_v6_8.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_pricesandtrades_xdp_v6_8.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_pricesandtrades_xdp_v6_8.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
gpw_wse_pricesandtrades_xdp_v6_8.packet = {}

-- Verify required size of Udp packet
gpw_wse_pricesandtrades_xdp_v6_8.packet.requiredsize = function(buffer)
  return buffer:len() >= gpw_wse_pricesandtrades_xdp_v6_8.packet_header.size
end

-- Dissect Packet
gpw_wse_pricesandtrades_xdp_v6_8.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 7 fields
  index, packet_header = gpw_wse_pricesandtrades_xdp_v6_8.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Delivery Flag
  local delivery_flag = buffer(index - 2, 1):uint()

  local message_conversion = delivery_flag > 15

  if message_conversion then
    buffer = zlib_decompress(buffer(index, buffer:len() - index))
    index = 0
  end

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_size + 2

    -- Message: Struct of 2 fields
    index, message = gpw_wse_pricesandtrades_xdp_v6_8.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_gpw_wse_pricesandtrades_xdp_v6_8.init()
end

-- Dissector for Gpw Wse PricesAndTrades Xdp 6.8
function omi_gpw_wse_pricesandtrades_xdp_v6_8.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_gpw_wse_pricesandtrades_xdp_v6_8.name

  -- Dissect protocol
  local protocol = parent:add(omi_gpw_wse_pricesandtrades_xdp_v6_8, buffer(), omi_gpw_wse_pricesandtrades_xdp_v6_8.description, "("..buffer:len().." Bytes)")
  return gpw_wse_pricesandtrades_xdp_v6_8.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Gpw Wse PricesAndTrades Xdp 6.8 (Udp)
local function omi_gpw_wse_pricesandtrades_xdp_v6_8_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not gpw_wse_pricesandtrades_xdp_v6_8.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_gpw_wse_pricesandtrades_xdp_v6_8
  omi_gpw_wse_pricesandtrades_xdp_v6_8.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Gpw Wse PricesAndTrades Xdp 6.8
omi_gpw_wse_pricesandtrades_xdp_v6_8:register_heuristic("udp", omi_gpw_wse_pricesandtrades_xdp_v6_8_udp_heuristic)

-- Register Gpw Wse PricesAndTrades Xdp 6.8 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_gpw_wse_pricesandtrades_xdp_v6_8)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Giełda Papierów Wartościowych w Warszawie
--   Version: 6.8
--   Date: Tuesday, February 11, 2020
--   Specification: WSE_CDE_XDP_Message_Specifications_v_68.pdf
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
