-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Tmx Mx SolaTcpRetransmission Hsvf 1.11 Protocol
local omi_tmx_mx_solatcpretransmission_hsvf_v1_11 = Proto("Omi.Tmx.Mx.SolaTcpRetransmission.Hsvf.v1.11", "Tmx Mx SolaTcpRetransmission Hsvf 1.11")

-- Protocol table
local tmx_mx_solatcpretransmission_hsvf_v1_11 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Tmx Mx SolaTcpRetransmission Hsvf 1.11 Fields
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_fraction_indicator = ProtoField.new("Ask Price Fraction Indicator", "tmx.mx.solatcpretransmission.hsvf.v1.11.askpricefractionindicator", ftypes.STRING, nil, nil, nil, "Defines number of decimal places or fraction positions")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_futures_depth_futures_market_depth_trading_instrument_numeric_pair = ProtoField.new("Ask Price Futures Depth Futures Market Depth Trading Instrument Numeric Pair", "tmx.mx.solatcpretransmission.hsvf.v1.11.askpricefuturesdepthfuturesmarketdepthtradinginstrumentnumericpair", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_futures_depth_futures_market_depth_trading_instrument_opening_pair = ProtoField.new("Ask Price Futures Depth Futures Market Depth Trading Instrument Opening Pair", "tmx.mx.solatcpretransmission.hsvf.v1.11.askpricefuturesdepthfuturesmarketdepthtradinginstrumentopeningpair", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_futures_depth_numeric = ProtoField.new("Ask Price Futures Depth Numeric", "tmx.mx.solatcpretransmission.hsvf.v1.11.askpricefuturesdepthnumeric", ftypes.UINT32, nil, nil, nil, "Ask Price for the future contract For Implied, it represents the best (1st limit) indicative implied ask price")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_futures_depth_opening = ProtoField.new("Ask Price Futures Depth Opening", "tmx.mx.solatcpretransmission.hsvf.v1.11.askpricefuturesdepthopening", ftypes.STRING, nil, nil, nil, "Ask Price for the future contract For Implied, it represents the best (1st limit) indicative implied ask price")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_quote_futures_quote_message_numeric_pair = ProtoField.new("Ask Price Quote Futures Quote Message Numeric Pair", "tmx.mx.solatcpretransmission.hsvf.v1.11.askpricequotefuturesquotemessagenumericpair", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_quote_futures_quote_message_opening_pair = ProtoField.new("Ask Price Quote Futures Quote Message Opening Pair", "tmx.mx.solatcpretransmission.hsvf.v1.11.askpricequotefuturesquotemessageopeningpair", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_quote_numeric = ProtoField.new("Ask Price Quote Numeric", "tmx.mx.solatcpretransmission.hsvf.v1.11.askpricequotenumeric", ftypes.UINT32, nil, nil, nil, "Ask price for the option series")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_quote_numeric_pair = ProtoField.new("Ask Price Quote Numeric Pair", "tmx.mx.solatcpretransmission.hsvf.v1.11.askpricequotenumericpair", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_quote_opening = ProtoField.new("Ask Price Quote Opening", "tmx.mx.solatcpretransmission.hsvf.v1.11.askpricequoteopening", ftypes.STRING, nil, nil, nil, "Ask price for the option series")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_quote_opening_pair = ProtoField.new("Ask Price Quote Opening Pair", "tmx.mx.solatcpretransmission.hsvf.v1.11.askpricequoteopeningpair", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_quote_strategy_quote_message_numeric_pair = ProtoField.new("Ask Price Quote Strategy Quote Message Numeric Pair", "tmx.mx.solatcpretransmission.hsvf.v1.11.askpricequotestrategyquotemessagenumericpair", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_quote_strategy_quote_message_opening_pair = ProtoField.new("Ask Price Quote Strategy Quote Message Opening Pair", "tmx.mx.solatcpretransmission.hsvf.v1.11.askpricequotestrategyquotemessageopeningpair", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_sign = ProtoField.new("Ask Price Sign", "tmx.mx.solatcpretransmission.hsvf.v1.11.askpricesign", ftypes.STRING, nil, nil, nil, "For Ask Price field")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_summary = ProtoField.new("Ask Price Summary", "tmx.mx.solatcpretransmission.hsvf.v1.11.askpricesummary", ftypes.UINT32, nil, nil, nil, "Closing or most recent ask price")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_size = ProtoField.new("Ask Size", "tmx.mx.solatcpretransmission.hsvf.v1.11.asksize", ftypes.STRING, nil, nil, nil, "Number of option contracts represented by the Ask Price. If size is greater than 99999, the 5th character becomes an exponent")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.associated_product_delivery_month = ProtoField.new("Associated Product Delivery Month", "tmx.mx.solatcpretransmission.hsvf.v1.11.associatedproductdeliverymonth", ftypes.STRING, nil, nil, nil, "Delivery month for the contract")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.associated_product_delivery_year = ProtoField.new("Associated Product Delivery Year", "tmx.mx.solatcpretransmission.hsvf.v1.11.associatedproductdeliveryyear", ftypes.UINT8, nil, nil, nil, "Two last digits of the delivery year of the future series")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.associated_product_expiry_day = ProtoField.new("Associated Product Expiry Day", "tmx.mx.solatcpretransmission.hsvf.v1.11.associatedproductexpiryday", ftypes.UINT8, nil, nil, nil, "Expiry day of the option")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.associated_product_root_symbol = ProtoField.new("Associated Product Root Symbol", "tmx.mx.solatcpretransmission.hsvf.v1.11.associatedproductrootsymbol", ftypes.STRING, nil, nil, nil, "Associated product’s class symbol")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bid_price_fraction_indicator = ProtoField.new("Bid Price Fraction Indicator", "tmx.mx.solatcpretransmission.hsvf.v1.11.bidpricefractionindicator", ftypes.STRING, nil, nil, nil, "Defines number of decimal places or fraction positions")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bid_price_quote_futures_market_depth_trading_instrument_numeric_pair = ProtoField.new("Bid Price Quote Futures Market Depth Trading Instrument Numeric Pair", "tmx.mx.solatcpretransmission.hsvf.v1.11.bidpricequotefuturesmarketdepthtradinginstrumentnumericpair", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bid_price_quote_futures_market_depth_trading_instrument_opening_pair = ProtoField.new("Bid Price Quote Futures Market Depth Trading Instrument Opening Pair", "tmx.mx.solatcpretransmission.hsvf.v1.11.bidpricequotefuturesmarketdepthtradinginstrumentopeningpair", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bid_price_quote_futures_quote_message_numeric_pair = ProtoField.new("Bid Price Quote Futures Quote Message Numeric Pair", "tmx.mx.solatcpretransmission.hsvf.v1.11.bidpricequotefuturesquotemessagenumericpair", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bid_price_quote_futures_quote_message_opening_pair = ProtoField.new("Bid Price Quote Futures Quote Message Opening Pair", "tmx.mx.solatcpretransmission.hsvf.v1.11.bidpricequotefuturesquotemessageopeningpair", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bid_price_quote_numeric = ProtoField.new("Bid Price Quote Numeric", "tmx.mx.solatcpretransmission.hsvf.v1.11.bidpricequotenumeric", ftypes.UINT32, nil, nil, nil, "Bid price for the option series")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bid_price_quote_numeric_pair = ProtoField.new("Bid Price Quote Numeric Pair", "tmx.mx.solatcpretransmission.hsvf.v1.11.bidpricequotenumericpair", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bid_price_quote_opening = ProtoField.new("Bid Price Quote Opening", "tmx.mx.solatcpretransmission.hsvf.v1.11.bidpricequoteopening", ftypes.STRING, nil, nil, nil, "Bid price for the option series")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bid_price_quote_opening_pair = ProtoField.new("Bid Price Quote Opening Pair", "tmx.mx.solatcpretransmission.hsvf.v1.11.bidpricequoteopeningpair", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bid_price_quote_strategy_quote_message_numeric_pair = ProtoField.new("Bid Price Quote Strategy Quote Message Numeric Pair", "tmx.mx.solatcpretransmission.hsvf.v1.11.bidpricequotestrategyquotemessagenumericpair", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bid_price_quote_strategy_quote_message_opening_pair = ProtoField.new("Bid Price Quote Strategy Quote Message Opening Pair", "tmx.mx.solatcpretransmission.hsvf.v1.11.bidpricequotestrategyquotemessageopeningpair", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bid_price_sign = ProtoField.new("Bid Price Sign", "tmx.mx.solatcpretransmission.hsvf.v1.11.bidpricesign", ftypes.STRING, nil, nil, nil, "For Bid Price field")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bid_price_summary = ProtoField.new("Bid Price Summary", "tmx.mx.solatcpretransmission.hsvf.v1.11.bidpricesummary", ftypes.UINT32, nil, nil, nil, "Closing or most recent bid price")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bid_size = ProtoField.new("Bid Size", "tmx.mx.solatcpretransmission.hsvf.v1.11.bidsize", ftypes.STRING, nil, nil, nil, "Number of option contracts represented by the Bid Price. If size is greater than 99999, the 5th character becomes an exponent")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bulletin_type = ProtoField.new("Bulletin Type", "tmx.mx.solatcpretransmission.hsvf.v1.11.bulletintype", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.call_put_code = ProtoField.new("Call Put Code", "tmx.mx.solatcpretransmission.hsvf.v1.11.callputcode", ftypes.STRING, nil, nil, nil, "C = Call, P = Put")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.cash_flow_alignment_date = ProtoField.new("Cash Flow Alignment Date", "tmx.mx.solatcpretransmission.hsvf.v1.11.cashflowalignmentdate", ftypes.STRING, nil, nil, nil, "The date used to set up the Payment and Reset Dates of the contract (YYMMDD)")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.client_message_type = ProtoField.new("Client Message Type", "tmx.mx.solatcpretransmission.hsvf.v1.11.clientmessagetype", ftypes.STRING, nil, nil, nil, "Identifies the type of message being sent")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.continue_marker = ProtoField.new("Continue Marker", "tmx.mx.solatcpretransmission.hsvf.v1.11.continuemarker", ftypes.UINT8)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.contract_month_code = ProtoField.new("Contract Month Code", "tmx.mx.solatcpretransmission.hsvf.v1.11.contractmonthcode", ftypes.STRING, nil, nil, nil, "Option month code")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.contract_size = ProtoField.new("Contract Size", "tmx.mx.solatcpretransmission.hsvf.v1.11.contractsize", ftypes.UINT32, nil, nil, nil, "Defines the quantity of an underlying per contract")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.currency = ProtoField.new("Currency", "tmx.mx.solatcpretransmission.hsvf.v1.11.currency", ftypes.STRING, nil, nil, nil, "Defines the currency of an underlying")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.day_count_convention = ProtoField.new("Day Count Convention", "tmx.mx.solatcpretransmission.hsvf.v1.11.daycountconvention", ftypes.STRING, nil, nil, nil, "Convention used in the swap future contract settlement price calculations:")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.delivery_day = ProtoField.new("Delivery Day", "tmx.mx.solatcpretransmission.hsvf.v1.11.deliveryday", ftypes.UINT8, nil, nil, nil, "Delivery day of the future series")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.delivery_month = ProtoField.new("Delivery Month", "tmx.mx.solatcpretransmission.hsvf.v1.11.deliverymonth", ftypes.STRING, nil, nil, nil, "Delivery month for the contract")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.delivery_month_strategy = ProtoField.new("Delivery Month Strategy", "tmx.mx.solatcpretransmission.hsvf.v1.11.deliverymonthstrategy", ftypes.STRING, nil, nil, nil, "Delivery month for the contract Refer to Month Codes")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.delivery_type = ProtoField.new("Delivery Type", "tmx.mx.solatcpretransmission.hsvf.v1.11.deliverytype", ftypes.STRING, nil, nil, nil, "Indicates the delivery type of the instrument")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.delivery_year_futures = ProtoField.new("Delivery Year Futures", "tmx.mx.solatcpretransmission.hsvf.v1.11.deliveryyearfutures", ftypes.UINT8, nil, nil, nil, "Two last digits of the delivery year of the future series")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.delivery_year_underlying = ProtoField.new("Delivery Year Underlying", "tmx.mx.solatcpretransmission.hsvf.v1.11.deliveryyearunderlying", ftypes.UINT8, nil, nil, nil, "Last digit of the delivery year of the underlying futures contract")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.effective_date = ProtoField.new("Effective Date", "tmx.mx.solatcpretransmission.hsvf.v1.11.effectivedate", ftypes.STRING, nil, nil, nil, "The date when the swap contract becomes effective (YYMMDD)")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.end_ = ProtoField.new("End", "tmx.mx.solatcpretransmission.hsvf.v1.11.end", ftypes.UINT32, nil, nil, nil, "Ending message number")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.error_code = ProtoField.new("Error Code", "tmx.mx.solatcpretransmission.hsvf.v1.11.errorcode", ftypes.UINT16, nil, nil, nil, "Error Code; Refer to Error Definitions")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.error_msg = ProtoField.new("Error Msg", "tmx.mx.solatcpretransmission.hsvf.v1.11.errormsg", ftypes.STRING, nil, nil, nil, "Error Message; Refer to Error Definitions")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.exchange_id = ProtoField.new("Exchange Id", "tmx.mx.solatcpretransmission.hsvf.v1.11.exchangeid", ftypes.STRING, nil, nil, nil, "Exchange on which the trade occurred Q = Montreal")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.expiry_day = ProtoField.new("Expiry Day", "tmx.mx.solatcpretransmission.hsvf.v1.11.expiryday", ftypes.UINT8, nil, nil, nil, "Expiry day of the option")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.expiry_month = ProtoField.new("Expiry Month", "tmx.mx.solatcpretransmission.hsvf.v1.11.expirymonth", ftypes.STRING, nil, nil, nil, "Expiry month code of the option")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.expiry_month_swap_future = ProtoField.new("Expiry Month Swap Future", "tmx.mx.solatcpretransmission.hsvf.v1.11.expirymonthswapfuture", ftypes.STRING, nil, nil, nil, "Expiry month code of the swap future Refer to Month Codes")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.expiry_year = ProtoField.new("Expiry Year", "tmx.mx.solatcpretransmission.hsvf.v1.11.expiryyear", ftypes.UINT8, nil, nil, nil, "Last two digits of the option expiry year")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.external_price_at_source = ProtoField.new("External Price At Source", "tmx.mx.solatcpretransmission.hsvf.v1.11.externalpriceatsource", ftypes.UINT32, nil, nil, nil, "Last price obtained from an external pricing source")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.external_price_fraction_indicator = ProtoField.new("External Price Fraction Indicator", "tmx.mx.solatcpretransmission.hsvf.v1.11.externalpricefractionindicator", ftypes.STRING, nil, nil, nil, "Fraction indicator for last price obtained from external pricing source")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.external_symbol = ProtoField.new("External Symbol", "tmx.mx.solatcpretransmission.hsvf.v1.11.externalsymbol", ftypes.STRING, nil, nil, nil, "External identifier used by traders when entering an order")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.filler_1 = ProtoField.new("Filler 1", "tmx.mx.solatcpretransmission.hsvf.v1.11.filler1", ftypes.BYTES, nil, nil, nil, "Filler")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.filler_2 = ProtoField.new("Filler 2", "tmx.mx.solatcpretransmission.hsvf.v1.11.filler2", ftypes.BYTES, nil, nil, nil, "Filler")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.filler_6 = ProtoField.new("Filler 6", "tmx.mx.solatcpretransmission.hsvf.v1.11.filler6", ftypes.BYTES, nil, nil, nil, "Filler")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.first_payment_date = ProtoField.new("First Payment Date", "tmx.mx.solatcpretransmission.hsvf.v1.11.firstpaymentdate", ftypes.STRING, nil, nil, nil, "The date when the first payment is made (YYMMDD)")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.first_reset_date = ProtoField.new("First Reset Date", "tmx.mx.solatcpretransmission.hsvf.v1.11.firstresetdate", ftypes.STRING, nil, nil, nil, "The date when the floating rate is set for the first time (YYMMDD)")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.fixed_rate = ProtoField.new("Fixed Rate", "tmx.mx.solatcpretransmission.hsvf.v1.11.fixedrate", ftypes.UINT32, nil, nil, nil, "The swap fixed rate")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.fixed_rate_fraction_indicator = ProtoField.new("Fixed Rate Fraction Indicator", "tmx.mx.solatcpretransmission.hsvf.v1.11.fixedratefractionindicator", ftypes.STRING, nil, nil, nil, "Defines number of decimal places or fraction positions")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.future_options_market_depth_trading_instrument = ProtoField.new("Future Options Market Depth Trading Instrument", "tmx.mx.solatcpretransmission.hsvf.v1.11.futureoptionsmarketdepthtradinginstrument", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.futures_market_depth_trading_instrument = ProtoField.new("Futures Market Depth Trading Instrument", "tmx.mx.solatcpretransmission.hsvf.v1.11.futuresmarketdepthtradinginstrument", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.group_instrument = ProtoField.new("Group Instrument", "tmx.mx.solatcpretransmission.hsvf.v1.11.groupinstrument", ftypes.STRING, nil, nil, nil, "group of the instrument")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.group_status = ProtoField.new("Group Status", "tmx.mx.solatcpretransmission.hsvf.v1.11.groupstatus", ftypes.STRING, nil, nil, nil, "group status of the trading instrument")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.high_price = ProtoField.new("High Price", "tmx.mx.solatcpretransmission.hsvf.v1.11.highprice", ftypes.UINT32, nil, nil, nil, "Highest trade price of the day or current high price if sent after a cancellation")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.high_price_fraction_indicator = ProtoField.new("High Price Fraction Indicator", "tmx.mx.solatcpretransmission.hsvf.v1.11.highpricefractionindicator", ftypes.STRING, nil, nil, nil, "Defines number of decimal places or fraction positions")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.high_price_sign = ProtoField.new("High Price Sign", "tmx.mx.solatcpretransmission.hsvf.v1.11.highpricesign", ftypes.STRING, nil, nil, nil, "For the High Price field")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.historical_coupon_b = ProtoField.new("Historical Coupon B", "tmx.mx.solatcpretransmission.hsvf.v1.11.historicalcouponb", ftypes.UINT64, nil, nil, nil, "Net present value of all cash flows in the past (Floating cash flow - Fixed cash flow)")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.historical_coupon_fraction_indicator = ProtoField.new("Historical Coupon Fraction Indicator", "tmx.mx.solatcpretransmission.hsvf.v1.11.historicalcouponfractionindicator", ftypes.STRING, nil, nil, nil, "Defines number of decimal places or fraction positions")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.hsvf_etx = ProtoField.new("Hsvf Etx", "tmx.mx.solatcpretransmission.hsvf.v1.11.hsvfetx", ftypes.INT8, nil, nil, nil, "End of Hsvf message")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.hsvf_stx = ProtoField.new("Hsvf Stx", "tmx.mx.solatcpretransmission.hsvf.v1.11.hsvfstx", ftypes.INT8, nil, nil, nil, "Start of Hsvf message")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.initial_effective_date = ProtoField.new("Initial Effective Date", "tmx.mx.solatcpretransmission.hsvf.v1.11.initialeffectivedate", ftypes.STRING, nil, nil, nil, "The third Wednesday of the effective months (March, June, September, and December) (Quarterly IMM Dates (International Monetary Market Dates)). This date will be different from the Effective Date if it falls on a non-business date (YYMMDD)")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.instrument = ProtoField.new("Instrument", "tmx.mx.solatcpretransmission.hsvf.v1.11.instrument", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.instrument_external_code = ProtoField.new("Instrument External Code", "tmx.mx.solatcpretransmission.hsvf.v1.11.instrumentexternalcode", ftypes.STRING, nil, nil, nil, "External identifier used by traders when entering an order")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.instrument_id = ProtoField.new("Instrument Id", "tmx.mx.solatcpretransmission.hsvf.v1.11.instrumentid", ftypes.STRING, nil, nil, nil, "Instrument")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.instrument_status_marker = ProtoField.new("Instrument Status Marker", "tmx.mx.solatcpretransmission.hsvf.v1.11.instrumentstatusmarker", ftypes.STRING, nil, nil, nil, "Indicates instrument status")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.last_price = ProtoField.new("Last Price", "tmx.mx.solatcpretransmission.hsvf.v1.11.lastprice", ftypes.UINT32, nil, nil, nil, "Closing or most recent trade price")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.last_price_fraction_indicator = ProtoField.new("Last Price Fraction Indicator", "tmx.mx.solatcpretransmission.hsvf.v1.11.lastpricefractionindicator", ftypes.STRING, nil, nil, nil, "Defines number of decimal places or fraction positions")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.last_price_sign = ProtoField.new("Last Price Sign", "tmx.mx.solatcpretransmission.hsvf.v1.11.lastpricesign", ftypes.STRING, nil, nil, nil, "For the Last Price field")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.leg_ratio = ProtoField.new("Leg Ratio", "tmx.mx.solatcpretransmission.hsvf.v1.11.legratio", ftypes.UINT8, nil, nil, nil, "Quantity (bought or sold) on underlying in the strategy. 1 to 20")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.leg_ratio_sign = ProtoField.new("Leg Ratio Sign", "tmx.mx.solatcpretransmission.hsvf.v1.11.legratiosign", ftypes.STRING, nil, nil, nil, "Identification of the transaction in the strategy (buy or sell of the underlying)")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.leg_symbol = ProtoField.new("Leg Symbol", "tmx.mx.solatcpretransmission.hsvf.v1.11.legsymbol", ftypes.STRING, nil, nil, nil, "Identification of the underlying (also referred to as HSVF Symbol)")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.level = ProtoField.new("Level", "tmx.mx.solatcpretransmission.hsvf.v1.11.level", ftypes.STRING, nil, nil, nil, "Level of market depth. 1 - 5 and A (Implied)")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.level_of_market_depth = ProtoField.new("Level Of Market Depth", "tmx.mx.solatcpretransmission.hsvf.v1.11.levelofmarketdepth", ftypes.STRING, nil, nil, nil, "Level of market depth. 1 to 5 and A (Implied)")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.line = ProtoField.new("Line", "tmx.mx.solatcpretransmission.hsvf.v1.11.line", ftypes.STRING, nil, nil, nil, "Specific address and port on which market is disseminated based on a list of CPUs and Market Depth Setting. Refer to Line Definitions")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.login_timestamp = ProtoField.new("Login Timestamp", "tmx.mx.solatcpretransmission.hsvf.v1.11.logintimestamp", ftypes.UINT32, nil, nil, nil, "Time submitted")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.low_price = ProtoField.new("Low Price", "tmx.mx.solatcpretransmission.hsvf.v1.11.lowprice", ftypes.UINT32, nil, nil, nil, "Lowest trade price of the day or current low price if sent after a cancellation")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.low_price_fraction_indicator = ProtoField.new("Low Price Fraction Indicator", "tmx.mx.solatcpretransmission.hsvf.v1.11.lowpricefractionindicator", ftypes.STRING, nil, nil, nil, "Defines number of decimal places or fraction positions")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.low_price_sign = ProtoField.new("Low Price Sign", "tmx.mx.solatcpretransmission.hsvf.v1.11.lowpricesign", ftypes.STRING, nil, nil, nil, "For the Low Price field")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.market_flow = ProtoField.new("Market Flow", "tmx.mx.solatcpretransmission.hsvf.v1.11.marketflow", ftypes.STRING, nil, nil, nil, "Defines the type of instruments")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.market_flow_indicator = ProtoField.new("Market Flow Indicator", "tmx.mx.solatcpretransmission.hsvf.v1.11.marketflowindicator", ftypes.STRING, nil, nil, nil, "Defines the type of instruments")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.market_price_indicator = ProtoField.new("Market Price Indicator", "tmx.mx.solatcpretransmission.hsvf.v1.11.marketpriceindicator", ftypes.STRING, nil, nil, nil, "Identifies the type of transaction")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.maximum_number_of_contracts_per_order = ProtoField.new("Maximum Number Of Contracts Per Order", "tmx.mx.solatcpretransmission.hsvf.v1.11.maximumnumberofcontractsperorder", ftypes.STRING, nil, nil, nil, "Maximum authorized number of contract per order")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.maximum_threshold_price_fraction_indicator = ProtoField.new("Maximum Threshold Price Fraction Indicator", "tmx.mx.solatcpretransmission.hsvf.v1.11.maximumthresholdpricefractionindicator", ftypes.STRING, nil, nil, nil, "Defines number of decimal places or fraction positions")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.maximum_threshold_price_futures = ProtoField.new("Maximum Threshold Price Futures", "tmx.mx.solatcpretransmission.hsvf.v1.11.maximumthresholdpricefutures", ftypes.UINT32, nil, nil, nil, "Maximum threshold price authorized for an option contract")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.maximum_threshold_price_options = ProtoField.new("Maximum Threshold Price Options", "tmx.mx.solatcpretransmission.hsvf.v1.11.maximumthresholdpriceoptions", ftypes.UINT32, nil, nil, nil, "Maximum threshold price authorized for an option contract")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.message_type = ProtoField.new("Message Type", "tmx.mx.solatcpretransmission.hsvf.v1.11.messagetype", ftypes.STRING, nil, nil, nil, "Identifies the type of message being sent")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.min_price = ProtoField.new("Min Price", "tmx.mx.solatcpretransmission.hsvf.v1.11.minprice", ftypes.UINT32, nil, nil, nil, "Starting price for this tick entry")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.min_price_fraction_indicator = ProtoField.new("Min Price Fraction Indicator", "tmx.mx.solatcpretransmission.hsvf.v1.11.minpricefractionindicator", ftypes.STRING, nil, nil, nil, "Defines number of decimal places or fraction positions")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.minimum_number_of_contracts_per_order = ProtoField.new("Minimum Number Of Contracts Per Order", "tmx.mx.solatcpretransmission.hsvf.v1.11.minimumnumberofcontractsperorder", ftypes.STRING, nil, nil, nil, "Minimum authorized number of contract per order")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.minimum_threshold_price_fraction_indicator = ProtoField.new("Minimum Threshold Price Fraction Indicator", "tmx.mx.solatcpretransmission.hsvf.v1.11.minimumthresholdpricefractionindicator", ftypes.STRING, nil, nil, nil, "Defines number of decimal places or fraction positions")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.minimum_threshold_price_futures = ProtoField.new("Minimum Threshold Price Futures", "tmx.mx.solatcpretransmission.hsvf.v1.11.minimumthresholdpricefutures", ftypes.UINT32, nil, nil, nil, "Minimum threshold price authorized for an option contract")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.minimum_threshold_price_options = ProtoField.new("Minimum Threshold Price Options", "tmx.mx.solatcpretransmission.hsvf.v1.11.minimumthresholdpriceoptions", ftypes.UINT32, nil, nil, nil, "Minimum threshold price authorized for an option contract")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.net_change = ProtoField.new("Net Change", "tmx.mx.solatcpretransmission.hsvf.v1.11.netchange", ftypes.UINT32, nil, nil, nil, "Net change = last trade price - previous close")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.net_change_fraction_indicator = ProtoField.new("Net Change Fraction Indicator", "tmx.mx.solatcpretransmission.hsvf.v1.11.netchangefractionindicator", ftypes.STRING, nil, nil, nil, "Fraction indicator for the net change")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.net_change_sign = ProtoField.new("Net Change Sign", "tmx.mx.solatcpretransmission.hsvf.v1.11.netchangesign", ftypes.STRING, nil, nil, nil, "For the net change field")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.net_present_value_a = ProtoField.new("Net Present Value A", "tmx.mx.solatcpretransmission.hsvf.v1.11.netpresentvaluea", ftypes.UINT64, nil, nil, nil, "Net present value of all cash flows in the future (Floating cash flow - Fixed cash flow)")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.net_present_value_fraction_indicator = ProtoField.new("Net Present Value Fraction Indicator", "tmx.mx.solatcpretransmission.hsvf.v1.11.netpresentvaluefractionindicator", ftypes.STRING, nil, nil, nil, "Defines number of decimal places or fraction positions")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.next_payment_date = ProtoField.new("Next Payment Date", "tmx.mx.solatcpretransmission.hsvf.v1.11.nextpaymentdate", ftypes.STRING, nil, nil, nil, "The date when the next payment will be made (YYMMDD)")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.next_reset_date = ProtoField.new("Next Reset Date", "tmx.mx.solatcpretransmission.hsvf.v1.11.nextresetdate", ftypes.STRING, nil, nil, nil, "The date when the next floating rate will be set (YYMMDD)")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.notional_principal_amount = ProtoField.new("Notional Principal Amount", "tmx.mx.solatcpretransmission.hsvf.v1.11.notionalprincipalamount", ftypes.UINT32, nil, nil, nil, "Value of the contract")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.notional_principal_amount_faction_indicator = ProtoField.new("Notional Principal Amount Faction Indicator", "tmx.mx.solatcpretransmission.hsvf.v1.11.notionalprincipalamountfactionindicator", ftypes.STRING, nil, nil, nil, "Defines number of decimal places or fraction positions")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.number_of_ask_orders = ProtoField.new("Number Of Ask Orders", "tmx.mx.solatcpretransmission.hsvf.v1.11.numberofaskorders", ftypes.STRING, nil, nil, nil, "Number of Ask Orders, present at a given moment, in the order book. For Implied, it represents the indicative number of implied ask orders making up the implied ask size at that implied ask price. If greater than 99, the 2nd character becomes an exponent")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.number_of_bid_orders = ProtoField.new("Number Of Bid Orders", "tmx.mx.solatcpretransmission.hsvf.v1.11.numberofbidorders", ftypes.STRING, nil, nil, nil, "Number of bid orders, present at a given moment, in the order book. For Implied, it represents the indicative number of implied bid orders making up the implied bid size at that implied bid price. If greater than 99-> the 2nd character becomes an exponent.")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.number_of_entries = ProtoField.new("Number Of Entries", "tmx.mx.solatcpretransmission.hsvf.v1.11.numberofentries", ftypes.UINT8, nil, nil, nil, "Indicates the number of entries in the table (from 1 to 30)")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.number_of_legs = ProtoField.new("Number Of Legs", "tmx.mx.solatcpretransmission.hsvf.v1.11.numberoflegs", ftypes.UINT8, nil, nil, nil, "Number of legs in the strategy. 2 to 20")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.number_of_level = ProtoField.new("Number Of Level", "tmx.mx.solatcpretransmission.hsvf.v1.11.numberoflevel", ftypes.UINT8, nil, nil, nil, "Number of level for the trading instrument. 1 to 5")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.open_interest = ProtoField.new("Open Interest", "tmx.mx.solatcpretransmission.hsvf.v1.11.openinterest", ftypes.UINT32, nil, nil, nil, "This field contains the outstanding number of contracts in the series Updated on a trade by trade basis Refer to Indicator Code")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.open_price = ProtoField.new("Open Price", "tmx.mx.solatcpretransmission.hsvf.v1.11.openprice", ftypes.UINT32, nil, nil, nil, "Price of the first trade of the day")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.open_price_fraction_indicator = ProtoField.new("Open Price Fraction Indicator", "tmx.mx.solatcpretransmission.hsvf.v1.11.openpricefractionindicator", ftypes.STRING, nil, nil, nil, "Defines number of decimal places or fraction positions")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.open_price_sign = ProtoField.new("Open Price Sign", "tmx.mx.solatcpretransmission.hsvf.v1.11.openpricesign", ftypes.STRING, nil, nil, nil, "For the Open Price field")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.opening_price = ProtoField.new("Opening Price", "tmx.mx.solatcpretransmission.hsvf.v1.11.openingprice", ftypes.UINT32, nil, nil, nil, "Opening price of the option series for the day")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.opening_price_fraction_indicator = ProtoField.new("Opening Price Fraction Indicator", "tmx.mx.solatcpretransmission.hsvf.v1.11.openingpricefractionindicator", ftypes.STRING, nil, nil, nil, "Defines number of decimal places or fraction positions")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.option_marker = ProtoField.new("Option Marker", "tmx.mx.solatcpretransmission.hsvf.v1.11.optionmarker", ftypes.STRING, nil, nil, nil, "Refer to Options Markers")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.option_market_depth_trading_instrument = ProtoField.new("Option Market Depth Trading Instrument", "tmx.mx.solatcpretransmission.hsvf.v1.11.optionmarketdepthtradinginstrument", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.option_type = ProtoField.new("Option Type", "tmx.mx.solatcpretransmission.hsvf.v1.11.optiontype", ftypes.STRING, nil, nil, nil, "Type of option")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.payment_frequency = ProtoField.new("Payment Frequency", "tmx.mx.solatcpretransmission.hsvf.v1.11.paymentfrequency", ftypes.STRING, nil, nil, nil, "Frequency on which Payment Dates are defined")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.previous_reset_date = ProtoField.new("Previous Reset Date", "tmx.mx.solatcpretransmission.hsvf.v1.11.previousresetdate", ftypes.STRING, nil, nil, nil, "The date when the previous floating rate was set. When the current date is a Reset Date, the previous Reset Date will be the current date (YYMMDD)")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.previous_reset_rate = ProtoField.new("Previous Reset Rate", "tmx.mx.solatcpretransmission.hsvf.v1.11.previousresetrate", ftypes.UINT32, nil, nil, nil, "Reset rate at the previous reset date")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.previous_reset_rate_fraction_indicator = ProtoField.new("Previous Reset Rate Fraction Indicator", "tmx.mx.solatcpretransmission.hsvf.v1.11.previousresetratefractionindicator", ftypes.STRING, nil, nil, nil, "Defines number of decimal places or fraction positions")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.previous_settlement = ProtoField.new("Previous Settlement", "tmx.mx.solatcpretransmission.hsvf.v1.11.previoussettlement", ftypes.UINT32, nil, nil, nil, "Settlement Price for the previous day")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.previous_settlement_fraction_indicator = ProtoField.new("Previous Settlement Fraction Indicator", "tmx.mx.solatcpretransmission.hsvf.v1.11.previoussettlementfractionindicator", ftypes.STRING, nil, nil, nil, "Fraction indicator for the previous Settlement Price")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.previous_settlement_price = ProtoField.new("Previous Settlement Price", "tmx.mx.solatcpretransmission.hsvf.v1.11.previoussettlementprice", ftypes.UINT32)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.previous_settlement_price_fraction_indicator = ProtoField.new("Previous Settlement Price Fraction Indicator", "tmx.mx.solatcpretransmission.hsvf.v1.11.previoussettlementpricefractionindicator", ftypes.STRING, nil, nil, nil, "Defines number of decimal places or fraction positions")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.price = ProtoField.new("Price", "tmx.mx.solatcpretransmission.hsvf.v1.11.price", ftypes.UINT32, nil, nil, nil, "Price at which the transaction took place")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.price_alignment_interest_c = ProtoField.new("Price Alignment Interest C", "tmx.mx.solatcpretransmission.hsvf.v1.11.pricealignmentinterestc", ftypes.UINT64, nil, nil, nil, "Cumulative daily interest adjustment")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.price_alignment_interest_fraction_indicator = ProtoField.new("Price Alignment Interest Fraction Indicator", "tmx.mx.solatcpretransmission.hsvf.v1.11.pricealignmentinterestfractionindicator", ftypes.STRING, nil, nil, nil, "Defines number of decimal places or fraction positions")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.price_fraction_indicator = ProtoField.new("Price Fraction Indicator", "tmx.mx.solatcpretransmission.hsvf.v1.11.pricefractionindicator", ftypes.STRING, nil, nil, nil, "Defines number of decimal places or fraction positions")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.price_indicator_marker = ProtoField.new("Price Indicator Marker", "tmx.mx.solatcpretransmission.hsvf.v1.11.priceindicatormarker", ftypes.STRING, nil, nil, nil, "Identifies the type of transaction")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.protocol = ProtoField.new("Protocol", "tmx.mx.solatcpretransmission.hsvf.v1.11.protocol", ftypes.STRING, nil, nil, nil, "Value(s) supported: D4, D5. Refer to Protocol Version")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.pwd = ProtoField.new("Pwd", "tmx.mx.solatcpretransmission.hsvf.v1.11.pwd", ftypes.STRING, nil, nil, nil, "Participant password. For future use")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.reason = ProtoField.new("Reason", "tmx.mx.solatcpretransmission.hsvf.v1.11.reason", ftypes.STRING, nil, nil, nil, "Indicates the reason of the summary message")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.regular_bulletin_contents = ProtoField.new("Regular Bulletin Contents", "tmx.mx.solatcpretransmission.hsvf.v1.11.regularbulletincontents", ftypes.STRING, nil, nil, nil, "Bulletin in textual form")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.regular_text_bulletin = ProtoField.new("Regular Text Bulletin", "tmx.mx.solatcpretransmission.hsvf.v1.11.regulartextbulletin", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.requested_market_side = ProtoField.new("Requested Market Side", "tmx.mx.solatcpretransmission.hsvf.v1.11.requestedmarketside", ftypes.STRING, nil, nil, nil, "Requested quote side")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.requested_size = ProtoField.new("Requested Size", "tmx.mx.solatcpretransmission.hsvf.v1.11.requestedsize", ftypes.STRING, nil, nil, nil, "Size of the market requested")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.reserved = ProtoField.new("Reserved", "tmx.mx.solatcpretransmission.hsvf.v1.11.reserved", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.reset_frequency = ProtoField.new("Reset Frequency", "tmx.mx.solatcpretransmission.hsvf.v1.11.resetfrequency", ftypes.STRING, nil, nil, nil, "Frequency on which Reset Dates are defined")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.retransmitted_message = ProtoField.new("Retransmitted Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.retransmittedmessage", ftypes.STRING, nil, nil, nil, "Retransmitted market data with its original message layout")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.root_symbol = ProtoField.new("Root Symbol", "tmx.mx.solatcpretransmission.hsvf.v1.11.rootsymbol", ftypes.STRING, nil, nil, nil, "Option base symbol (symbol of the underlying)")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.root_symbol_group = ProtoField.new("Root Symbol Group", "tmx.mx.solatcpretransmission.hsvf.v1.11.rootsymbolgroup", ftypes.STRING, nil, nil, nil, "Root of the instrument group")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.root_symbol_swap_future = ProtoField.new("Root Symbol Swap Future", "tmx.mx.solatcpretransmission.hsvf.v1.11.rootsymbolswapfuture", ftypes.STRING, nil, nil, nil, "Swap future base symbol")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scheduled_status_change_time = ProtoField.new("Scheduled Status Change Time", "tmx.mx.solatcpretransmission.hsvf.v1.11.scheduledstatuschangetime", ftypes.UINT32, nil, nil, nil, "Time at which the status change is scheduled. HHMMSS")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.second_filler_1 = ProtoField.new("Second Filler 1", "tmx.mx.solatcpretransmission.hsvf.v1.11.secondfiller1", ftypes.BYTES, nil, nil, nil, "Filler")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.sequence_number = ProtoField.new("Sequence Number", "tmx.mx.solatcpretransmission.hsvf.v1.11.sequencenumber", ftypes.UINT32, nil, nil, nil, "Sequence numbers will range from ascii decimal 000000001 to 999999999")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.series_status = ProtoField.new("Series Status", "tmx.mx.solatcpretransmission.hsvf.v1.11.seriesstatus", ftypes.STRING, nil, nil, nil, "Series status of the trading instrument")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.settlement_price = ProtoField.new("Settlement Price", "tmx.mx.solatcpretransmission.hsvf.v1.11.settlementprice", ftypes.UINT32)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.settlement_price_fraction_indicator = ProtoField.new("Settlement Price Fraction Indicator", "tmx.mx.solatcpretransmission.hsvf.v1.11.settlementpricefractionindicator", ftypes.STRING, nil, nil, nil, "Defines number of decimal places or fraction positions")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.special_bulletin_contents = ProtoField.new("Special Bulletin Contents", "tmx.mx.solatcpretransmission.hsvf.v1.11.specialbulletincontents", ftypes.STRING, nil, nil, nil, "Bulletin in textual form")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.special_text_bulletin = ProtoField.new("Special Text Bulletin", "tmx.mx.solatcpretransmission.hsvf.v1.11.specialtextbulletin", ftypes.STRING, nil, nil, nil, "This bulletin type will be used for bulletins relating to a specific trading instrument. Any continuation records will also contain the symbol as the first 30 bytes of the bulletin field.")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.start = ProtoField.new("Start", "tmx.mx.solatcpretransmission.hsvf.v1.11.start", ftypes.UINT32, nil, nil, nil, "Starting message number")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strategy_allow_implied = ProtoField.new("Strategy Allow Implied", "tmx.mx.solatcpretransmission.hsvf.v1.11.strategyallowimplied", ftypes.STRING, nil, nil, nil, "Indicates if the Strategy supports Implied Pricing")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strategy_market_depth_trading_instrument = ProtoField.new("Strategy Market Depth Trading Instrument", "tmx.mx.solatcpretransmission.hsvf.v1.11.strategymarketdepthtradinginstrument", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strategy_summary_strategy_leg = ProtoField.new("Strategy Summary Strategy Leg", "tmx.mx.solatcpretransmission.hsvf.v1.11.strategysummarystrategyleg", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strategy_symbol = ProtoField.new("Strategy Symbol", "tmx.mx.solatcpretransmission.hsvf.v1.11.strategysymbol", ftypes.STRING, nil, nil, nil, "Identification of the strategy. The legs (underlying) are defined in message type NS")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strike_price_currency = ProtoField.new("Strike Price Currency", "tmx.mx.solatcpretransmission.hsvf.v1.11.strikepricecurrency", ftypes.STRING, nil, nil, nil, "Currency used for the Option Strike Price")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strike_price_fraction_indicator = ProtoField.new("Strike Price Fraction Indicator", "tmx.mx.solatcpretransmission.hsvf.v1.11.strikepricefractionindicator", ftypes.STRING, nil, nil, nil, "Defines number of decimal places or fraction positions")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strike_price_instrument = ProtoField.new("Strike Price Instrument", "tmx.mx.solatcpretransmission.hsvf.v1.11.strikepriceinstrument", ftypes.UINT32, nil, nil, nil, "Strike price of the option in full")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strike_price_schedule_notice = ProtoField.new("Strike Price Schedule Notice", "tmx.mx.solatcpretransmission.hsvf.v1.11.strikepriceschedulenotice", ftypes.UINT32, nil, nil, nil, "Strike Price of the option in full.")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.swap_future_market_depth_trading_instrument = ProtoField.new("Swap Future Market Depth Trading Instrument", "tmx.mx.solatcpretransmission.hsvf.v1.11.swapfuturemarketdepthtradinginstrument", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.symbol = ProtoField.new("Symbol", "tmx.mx.solatcpretransmission.hsvf.v1.11.symbol", ftypes.STRING, nil, nil, nil, "Identifies the strategy. The legs (underlying) are defined in message type NS. Alphanumeric with \".\", \"+\", \"-\"")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tenor = ProtoField.new("Tenor", "tmx.mx.solatcpretransmission.hsvf.v1.11.tenor", ftypes.UINT8, nil, nil, nil, "The tenor of the swap future")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick = ProtoField.new("Tick", "tmx.mx.solatcpretransmission.hsvf.v1.11.tick", ftypes.STRING, nil, nil, nil, "Determined by the difference between last price and the previous different trade price")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick_entry_group = ProtoField.new("Tick Entry Group", "tmx.mx.solatcpretransmission.hsvf.v1.11.tickentrygroup", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick_increment_fraction_indicator = ProtoField.new("Tick Increment Fraction Indicator", "tmx.mx.solatcpretransmission.hsvf.v1.11.tickincrementfractionindicator", ftypes.STRING, nil, nil, nil, "If Tick Increment starts with TT= (Table Name available), Fraction Indicator is blank. Otherwise, defines number of decimal places or fraction positions")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick_increment_numeric = ProtoField.new("Tick Increment Numeric", "tmx.mx.solatcpretransmission.hsvf.v1.11.tickincrementnumeric", ftypes.UINT32, nil, nil, nil, "Contains the Tick Table Short Name if available. If so, field starts with TT=. Otherwise, indicates precision with which the price of an order limit can be expressed")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick_increment_numeric_pair = ProtoField.new("Tick Increment Numeric Pair", "tmx.mx.solatcpretransmission.hsvf.v1.11.tickincrementnumericpair", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick_increment_raw = ProtoField.new("Tick Increment Raw", "tmx.mx.solatcpretransmission.hsvf.v1.11.tickincrementraw", ftypes.STRING, nil, nil, nil, "Contains the Tick Table Short Name if available. If so, field starts with TT=. Otherwise, indicates precision with which the price of an order limit can be expressed")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick_increment_raw_pair = ProtoField.new("Tick Increment Raw Pair", "tmx.mx.solatcpretransmission.hsvf.v1.11.tickincrementrawpair", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick_price = ProtoField.new("Tick Price", "tmx.mx.solatcpretransmission.hsvf.v1.11.tickprice", ftypes.UINT32, nil, nil, nil, "Used for this instrument if the price is higher than Min Price")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick_price_fraction_indicator = ProtoField.new("Tick Price Fraction Indicator", "tmx.mx.solatcpretransmission.hsvf.v1.11.tickpricefractionindicator", ftypes.STRING, nil, nil, nil, "Defines number of decimal places or fraction positions")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick_table_name = ProtoField.new("Tick Table Name", "tmx.mx.solatcpretransmission.hsvf.v1.11.ticktablename", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick_table_short_name = ProtoField.new("Tick Table Short Name", "tmx.mx.solatcpretransmission.hsvf.v1.11.ticktableshortname", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick_value = ProtoField.new("Tick Value", "tmx.mx.solatcpretransmission.hsvf.v1.11.tickvalue", ftypes.UINT32, nil, nil, nil, "Exchange premium multiplier for derivatives with a contract size equal to 1. All derivatives with a contract size > 1 will have a tick value defaulted to 1.")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick_value_fraction_indicator = ProtoField.new("Tick Value Fraction Indicator", "tmx.mx.solatcpretransmission.hsvf.v1.11.tickvaluefractionindicator", ftypes.STRING, nil, nil, nil, "Defines number of decimal places or fraction positions")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.time = ProtoField.new("Time", "tmx.mx.solatcpretransmission.hsvf.v1.11.time", ftypes.UINT32, nil, nil, nil, "Time at which the message is transmitted. HHMMSS")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.time_with_milliseconds = ProtoField.new("Time With Milliseconds", "tmx.mx.solatcpretransmission.hsvf.v1.11.timewithmilliseconds", ftypes.UINT32, nil, nil, nil, "Time at which the message is transmitted HHMMSSmmm")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.timestamp = ProtoField.new("Timestamp", "tmx.mx.solatcpretransmission.hsvf.v1.11.timestamp", ftypes.UINT32, nil, nil, nil, "Time of transaction (HHMMSSmmm)")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.trade_number = ProtoField.new("Trade Number", "tmx.mx.solatcpretransmission.hsvf.v1.11.tradenumber", ftypes.STRING, nil, nil, nil, "Unique Trade Number for this instrument")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.trade_price = ProtoField.new("Trade Price", "tmx.mx.solatcpretransmission.hsvf.v1.11.tradeprice", ftypes.UINT32, nil, nil, nil, "Price at which the transaction took place")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.trade_price_fraction_indicator = ProtoField.new("Trade Price Fraction Indicator", "tmx.mx.solatcpretransmission.hsvf.v1.11.tradepricefractionindicator", ftypes.STRING, nil, nil, nil, "Defines number of decimal places or fraction positions")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.trade_price_sign = ProtoField.new("Trade Price Sign", "tmx.mx.solatcpretransmission.hsvf.v1.11.tradepricesign", ftypes.STRING, nil, nil, nil, "For Trade Price field (sign)")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.trade_volume = ProtoField.new("Trade Volume", "tmx.mx.solatcpretransmission.hsvf.v1.11.tradevolume", ftypes.UINT32, nil, nil, nil, "Total number of contracts traded")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "tmx.mx.solatcpretransmission.hsvf.v1.11.underlyingsymbol", ftypes.STRING, nil, nil, nil, "Symbol root for the underlying security")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.underlying_symbol_root_future_options = ProtoField.new("Underlying Symbol Root Future Options", "tmx.mx.solatcpretransmission.hsvf.v1.11.underlyingsymbolrootfutureoptions", ftypes.STRING, nil, nil, nil, "Base symbol of the underlying future")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.underlying_symbol_root_options = ProtoField.new("Underlying Symbol Root Options", "tmx.mx.solatcpretransmission.hsvf.v1.11.underlyingsymbolrootoptions", ftypes.STRING, nil, nil, nil, "Symbol root for the underlying security")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.user = ProtoField.new("User", "tmx.mx.solatcpretransmission.hsvf.v1.11.user", ftypes.STRING, nil, nil, nil, "Participant logging in. For future use")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.volume = ProtoField.new("Volume", "tmx.mx.solatcpretransmission.hsvf.v1.11.volume", ftypes.UINT32, nil, nil, nil, "Number of contracts for the trade")

-- Tmx Mx SolaTcpRetransmission Hsvf 1.11 Framing
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.client_frame = ProtoField.new("Client Frame", "tmx.mx.solatcpretransmission.hsvf.v1.11.clientframe", ftypes.STRING, nil, nil, nil, "One Hsvf record, from STX through ETX")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.client_message_header = ProtoField.new("Client Message Header", "tmx.mx.solatcpretransmission.hsvf.v1.11.clientmessageheader", ftypes.STRING, nil, nil, nil, "Standard Hsvf message header")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.client_packet = ProtoField.new("Client Packet", "tmx.mx.solatcpretransmission.hsvf.v1.11.clientpacket", ftypes.STRING, nil, nil, nil, "Hsvf Tcp stream sent by the participant")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.message_header = ProtoField.new("Message Header", "tmx.mx.solatcpretransmission.hsvf.v1.11.messageheader", ftypes.STRING, nil, nil, nil, "Standard Hsvf message header")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.server_frame = ProtoField.new("Server Frame", "tmx.mx.solatcpretransmission.hsvf.v1.11.serverframe", ftypes.STRING, nil, nil, nil, "One Hsvf record, from STX through ETX")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.server_packet = ProtoField.new("Server Packet", "tmx.mx.solatcpretransmission.hsvf.v1.11.serverpacket", ftypes.STRING, nil, nil, nil, "Hsvf Tcp stream sent by the exchange")

-- Tmx Mx SolaTcpRetransmission 1.11 Application Messages
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.beginning_of_future_options_summary_message = ProtoField.new("Beginning Of Future Options Summary Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.beginningoffutureoptionssummarymessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.beginning_of_futures_summary_message = ProtoField.new("Beginning Of Futures Summary Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.beginningoffuturessummarymessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.beginning_of_options_summary_message = ProtoField.new("Beginning Of Options Summary Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.beginningofoptionssummarymessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.beginning_of_strategy_summary_message = ProtoField.new("Beginning Of Strategy Summary Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.beginningofstrategysummarymessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bulletins_message = ProtoField.new("Bulletins Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.bulletinsmessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.circuit_assurance_message = ProtoField.new("Circuit Assurance Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.circuitassurancemessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.end_of_sales_message = ProtoField.new("End Of Sales Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.endofsalesmessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.end_of_transmission_message = ProtoField.new("End Of Transmission Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.endoftransmissionmessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.error_message = ProtoField.new("Error Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.errormessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.future_options_instrument_keys_message = ProtoField.new("Future Options Instrument Keys Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.futureoptionsinstrumentkeysmessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.future_options_market_depth_message = ProtoField.new("Future Options Market Depth Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.futureoptionsmarketdepthmessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.future_options_quote_message = ProtoField.new("Future Options Quote Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.futureoptionsquotemessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.future_options_rfq_message = ProtoField.new("Future Options Rfq Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.futureoptionsrfqmessage", ftypes.STRING, nil, nil, nil, "Future Options Request for Quote message")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.future_options_summary_message = ProtoField.new("Future Options Summary Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.futureoptionssummarymessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.future_options_trade_cancellation_message = ProtoField.new("Future Options Trade Cancellation Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.futureoptionstradecancellationmessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.future_options_trade_correction_message = ProtoField.new("Future Options Trade Correction Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.futureoptionstradecorrectionmessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.future_options_trade_message = ProtoField.new("Future Options Trade Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.futureoptionstrademessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.futures_instrument_keys_message = ProtoField.new("Futures Instrument Keys Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.futuresinstrumentkeysmessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.futures_market_depth_message = ProtoField.new("Futures Market Depth Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.futuresmarketdepthmessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.futures_quote_message = ProtoField.new("Futures Quote Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.futuresquotemessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.futures_rfq_message = ProtoField.new("Futures Rfq Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.futuresrfqmessage", ftypes.STRING, nil, nil, nil, "Futures Request for Quote message")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.futures_summary_message = ProtoField.new("Futures Summary Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.futuressummarymessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.futures_trade_cancellation_message = ProtoField.new("Futures Trade Cancellation Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.futurestradecancellationmessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.futures_trade_correction_message = ProtoField.new("Futures Trade Correction Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.futurestradecorrectionmessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.futures_trade_message = ProtoField.new("Futures Trade Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.futurestrademessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.group_status_message = ProtoField.new("Group Status Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.groupstatusmessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.group_status_strategies_message = ProtoField.new("Group Status Strategies Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.groupstatusstrategiesmessage", ftypes.STRING, nil, nil, nil, "Strategies message")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.instrument_schedule_notice_future_message = ProtoField.new("Instrument Schedule Notice Future Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.instrumentschedulenoticefuturemessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.instrument_schedule_notice_futures_option_message = ProtoField.new("Instrument Schedule Notice Futures Option Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.instrumentschedulenoticefuturesoptionmessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.instrument_schedule_notice_option_message = ProtoField.new("Instrument Schedule Notice Option Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.instrumentschedulenoticeoptionmessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.instrument_schedule_notice_strategy_message = ProtoField.new("Instrument Schedule Notice Strategy Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.instrumentschedulenoticestrategymessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.instrument_schedule_notice_swap_future_message = ProtoField.new("Instrument Schedule Notice Swap Future Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.instrumentschedulenoticeswapfuturemessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.login_acknowledgement_message = ProtoField.new("Login Acknowledgement Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.loginacknowledgementmessage", ftypes.BYTES, nil, nil, nil, "Login Acknowledgement")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.login_message = ProtoField.new("Login Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.loginmessage", ftypes.STRING, nil, nil, nil, "Login")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.logout_acknowledgement_message = ProtoField.new("Logout Acknowledgement Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.logoutacknowledgementmessage", ftypes.BYTES, nil, nil, nil, "Logout Acknowledgement")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.logout_message = ProtoField.new("Logout Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.logoutmessage", ftypes.BYTES, nil, nil, nil, "Logout")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.option_instrument_keys_message = ProtoField.new("Option Instrument Keys Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.optioninstrumentkeysmessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.option_market_depth_message = ProtoField.new("Option Market Depth Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.optionmarketdepthmessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.option_quote_message = ProtoField.new("Option Quote Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.optionquotemessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.option_rfq_message = ProtoField.new("Option Rfq Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.optionrfqmessage", ftypes.STRING, nil, nil, nil, "Option Request for Quote message")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.option_summary_message = ProtoField.new("Option Summary Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.optionsummarymessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.option_trade_cancellation_message = ProtoField.new("Option Trade Cancellation Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.optiontradecancellationmessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.option_trade_correction_message = ProtoField.new("Option Trade Correction Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.optiontradecorrectionmessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.option_trade_message = ProtoField.new("Option Trade Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.optiontrademessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.retransmission_begin_message = ProtoField.new("Retransmission Begin Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.retransmissionbeginmessage", ftypes.BYTES, nil, nil, nil, "Retransmission Begin")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.retransmission_end_message = ProtoField.new("Retransmission End Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.retransmissionendmessage", ftypes.BYTES, nil, nil, nil, "Retransmission End")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.retransmissionrequestmessage", ftypes.STRING, nil, nil, nil, "Retransmission Request")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strategy_instrument_keys_message = ProtoField.new("Strategy Instrument Keys Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.strategyinstrumentkeysmessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strategy_market_depth_message = ProtoField.new("Strategy Market Depth Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.strategymarketdepthmessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strategy_quote_message = ProtoField.new("Strategy Quote Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.strategyquotemessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strategy_rfq_message = ProtoField.new("Strategy Rfq Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.strategyrfqmessage", ftypes.STRING, nil, nil, nil, "Strategy Request for Quote message")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strategy_summary_message = ProtoField.new("Strategy Summary Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.strategysummarymessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strategy_trade_cancellation_message = ProtoField.new("Strategy Trade Cancellation Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.strategytradecancellationmessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strategy_trade_correction_message = ProtoField.new("Strategy Trade Correction Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.strategytradecorrectionmessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strategy_trade_message = ProtoField.new("Strategy Trade Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.strategytrademessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.swap_future_beginning_of_summary_message = ProtoField.new("Swap Future Beginning Of Summary Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.swapfuturebeginningofsummarymessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.swap_future_instrument_keys_message = ProtoField.new("Swap Future Instrument Keys Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.swapfutureinstrumentkeysmessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.swap_future_market_depth_message = ProtoField.new("Swap Future Market Depth Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.swapfuturemarketdepthmessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.swap_future_quote_message = ProtoField.new("Swap Future Quote Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.swapfuturequotemessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.swap_future_rfq_message = ProtoField.new("Swap Future Rfq Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.swapfuturerfqmessage", ftypes.STRING, nil, nil, nil, "Swap Future Request for Quote message")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.swap_future_summary_message = ProtoField.new("Swap Future Summary Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.swapfuturesummarymessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.swap_future_trade_cancellation_message = ProtoField.new("Swap Future Trade Cancellation Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.swapfuturetradecancellationmessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.swap_future_trade_correction_message = ProtoField.new("Swap Future Trade Correction Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.swapfuturetradecorrectionmessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.swap_future_trade_message = ProtoField.new("Swap Future Trade Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.swapfuturetrademessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick_table_message = ProtoField.new("Tick Table Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.ticktablemessage", ftypes.STRING)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.timebeat_message = ProtoField.new("Timebeat Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.timebeatmessage", ftypes.STRING, nil, nil, nil, "This message is sent out every second.")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.underlying_instrument_keys_message = ProtoField.new("Underlying Instrument Keys Message", "tmx.mx.solatcpretransmission.hsvf.v1.11.underlyinginstrumentkeysmessage", ftypes.STRING)

-- Tmx Mx SolaTcpRetransmission Hsvf 1.11 Generated Fields
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.future_options_market_depth_trading_instrument_index = ProtoField.new("Future Options Market Depth Trading Instrument Index", "tmx.mx.solatcpretransmission.hsvf.v1.11.futureoptionsmarketdepthtradinginstrumentindex", ftypes.UINT16)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.futures_market_depth_trading_instrument_index = ProtoField.new("Futures Market Depth Trading Instrument Index", "tmx.mx.solatcpretransmission.hsvf.v1.11.futuresmarketdepthtradinginstrumentindex", ftypes.UINT16)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.option_market_depth_trading_instrument_index = ProtoField.new("Option Market Depth Trading Instrument Index", "tmx.mx.solatcpretransmission.hsvf.v1.11.optionmarketdepthtradinginstrumentindex", ftypes.UINT16)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strategy_market_depth_trading_instrument_index = ProtoField.new("Strategy Market Depth Trading Instrument Index", "tmx.mx.solatcpretransmission.hsvf.v1.11.strategymarketdepthtradinginstrumentindex", ftypes.UINT16)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strategy_summary_strategy_leg_index = ProtoField.new("Strategy Summary Strategy Leg Index", "tmx.mx.solatcpretransmission.hsvf.v1.11.strategysummarystrategylegindex", ftypes.UINT16)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.swap_future_market_depth_trading_instrument_index = ProtoField.new("Swap Future Market Depth Trading Instrument Index", "tmx.mx.solatcpretransmission.hsvf.v1.11.swapfuturemarketdepthtradinginstrumentindex", ftypes.UINT16)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick_entry_group_index = ProtoField.new("Tick Entry Group Index", "tmx.mx.solatcpretransmission.hsvf.v1.11.tickentrygroupindex", ftypes.UINT16)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_ask_price_futures_depth = ProtoField.new("Scaled Ask Price Futures Depth", "tmx.mx.solatcpretransmission.hsvf.v1.11.scaledaskpricefuturesdepth", ftypes.DOUBLE)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_ask_price_quote = ProtoField.new("Scaled Ask Price Quote", "tmx.mx.solatcpretransmission.hsvf.v1.11.scaledaskpricequote", ftypes.DOUBLE)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_ask_price_summary = ProtoField.new("Scaled Ask Price Summary", "tmx.mx.solatcpretransmission.hsvf.v1.11.scaledaskpricesummary", ftypes.DOUBLE)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_bid_price_quote = ProtoField.new("Scaled Bid Price Quote", "tmx.mx.solatcpretransmission.hsvf.v1.11.scaledbidpricequote", ftypes.DOUBLE)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_bid_price_summary = ProtoField.new("Scaled Bid Price Summary", "tmx.mx.solatcpretransmission.hsvf.v1.11.scaledbidpricesummary", ftypes.DOUBLE)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_external_price_at_source = ProtoField.new("Scaled External Price At Source", "tmx.mx.solatcpretransmission.hsvf.v1.11.scaledexternalpriceatsource", ftypes.DOUBLE)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_fixed_rate = ProtoField.new("Scaled Fixed Rate", "tmx.mx.solatcpretransmission.hsvf.v1.11.scaledfixedrate", ftypes.DOUBLE)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_high_price = ProtoField.new("Scaled High Price", "tmx.mx.solatcpretransmission.hsvf.v1.11.scaledhighprice", ftypes.DOUBLE)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_historical_coupon_b = ProtoField.new("Scaled Historical Coupon B", "tmx.mx.solatcpretransmission.hsvf.v1.11.scaledhistoricalcouponb", ftypes.DOUBLE)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_last_price = ProtoField.new("Scaled Last Price", "tmx.mx.solatcpretransmission.hsvf.v1.11.scaledlastprice", ftypes.DOUBLE)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_low_price = ProtoField.new("Scaled Low Price", "tmx.mx.solatcpretransmission.hsvf.v1.11.scaledlowprice", ftypes.DOUBLE)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_maximum_threshold_price_futures = ProtoField.new("Scaled Maximum Threshold Price Futures", "tmx.mx.solatcpretransmission.hsvf.v1.11.scaledmaximumthresholdpricefutures", ftypes.DOUBLE)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_maximum_threshold_price_options = ProtoField.new("Scaled Maximum Threshold Price Options", "tmx.mx.solatcpretransmission.hsvf.v1.11.scaledmaximumthresholdpriceoptions", ftypes.DOUBLE)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_min_price = ProtoField.new("Scaled Min Price", "tmx.mx.solatcpretransmission.hsvf.v1.11.scaledminprice", ftypes.DOUBLE)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_minimum_threshold_price_futures = ProtoField.new("Scaled Minimum Threshold Price Futures", "tmx.mx.solatcpretransmission.hsvf.v1.11.scaledminimumthresholdpricefutures", ftypes.DOUBLE)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_minimum_threshold_price_options = ProtoField.new("Scaled Minimum Threshold Price Options", "tmx.mx.solatcpretransmission.hsvf.v1.11.scaledminimumthresholdpriceoptions", ftypes.DOUBLE)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_net_change = ProtoField.new("Scaled Net Change", "tmx.mx.solatcpretransmission.hsvf.v1.11.scalednetchange", ftypes.DOUBLE)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_net_present_value_a = ProtoField.new("Scaled Net Present Value A", "tmx.mx.solatcpretransmission.hsvf.v1.11.scalednetpresentvaluea", ftypes.DOUBLE)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_notional_principal_amount = ProtoField.new("Scaled Notional Principal Amount", "tmx.mx.solatcpretransmission.hsvf.v1.11.scalednotionalprincipalamount", ftypes.DOUBLE)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_open_price = ProtoField.new("Scaled Open Price", "tmx.mx.solatcpretransmission.hsvf.v1.11.scaledopenprice", ftypes.DOUBLE)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_opening_price = ProtoField.new("Scaled Opening Price", "tmx.mx.solatcpretransmission.hsvf.v1.11.scaledopeningprice", ftypes.DOUBLE)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_previous_reset_rate = ProtoField.new("Scaled Previous Reset Rate", "tmx.mx.solatcpretransmission.hsvf.v1.11.scaledpreviousresetrate", ftypes.DOUBLE)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_previous_settlement = ProtoField.new("Scaled Previous Settlement", "tmx.mx.solatcpretransmission.hsvf.v1.11.scaledprevioussettlement", ftypes.DOUBLE)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_previous_settlement_price = ProtoField.new("Scaled Previous Settlement Price", "tmx.mx.solatcpretransmission.hsvf.v1.11.scaledprevioussettlementprice", ftypes.DOUBLE)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_price = ProtoField.new("Scaled Price", "tmx.mx.solatcpretransmission.hsvf.v1.11.scaledprice", ftypes.DOUBLE)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_price_alignment_interest_c = ProtoField.new("Scaled Price Alignment Interest C", "tmx.mx.solatcpretransmission.hsvf.v1.11.scaledpricealignmentinterestc", ftypes.DOUBLE)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_settlement_price = ProtoField.new("Scaled Settlement Price", "tmx.mx.solatcpretransmission.hsvf.v1.11.scaledsettlementprice", ftypes.DOUBLE)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_strike_price_instrument = ProtoField.new("Scaled Strike Price Instrument", "tmx.mx.solatcpretransmission.hsvf.v1.11.scaledstrikepriceinstrument", ftypes.DOUBLE)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_strike_price_schedule_notice = ProtoField.new("Scaled Strike Price Schedule Notice", "tmx.mx.solatcpretransmission.hsvf.v1.11.scaledstrikepriceschedulenotice", ftypes.DOUBLE)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_tick_increment = ProtoField.new("Scaled Tick Increment", "tmx.mx.solatcpretransmission.hsvf.v1.11.scaledtickincrement", ftypes.DOUBLE)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_tick_price = ProtoField.new("Scaled Tick Price", "tmx.mx.solatcpretransmission.hsvf.v1.11.scaledtickprice", ftypes.DOUBLE)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_tick_value = ProtoField.new("Scaled Tick Value", "tmx.mx.solatcpretransmission.hsvf.v1.11.scaledtickvalue", ftypes.DOUBLE)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_trade_price = ProtoField.new("Scaled Trade Price", "tmx.mx.solatcpretransmission.hsvf.v1.11.scaledtradeprice", ftypes.DOUBLE)

-- Tmx Mx SolaTcpRetransmission Hsvf 1.11 Expert Info
tmx_mx_solatcpretransmission_hsvf_v1_11.experts = {}
tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number = ProtoExpert.new("tmx.mx.solatcpretransmission.hsvf.v1.11.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.experts = { tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number }

-----------------------------------------------------------------------
-- Tmx Mx SolaTcpRetransmission Hsvf 1.11 Formatting
-----------------------------------------------------------------------

-- Scaled Strike Price Instrument format (true = decimal-scaled, false = raw mantissa)
tmx_mx_solatcpretransmission_hsvf_v1_11.format_decimals = true

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

-- Tmx Mx SolaTcpRetransmission Hsvf 1.11 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true
show.repeating_groups = true
show.indexes = true

-- Register Tmx Mx SolaTcpRetransmission Hsvf 1.11 Show Options
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_tmx_mx_solatcpretransmission_hsvf_v1_11.prefs.format_decimals = Pref.bool("Format Decimals", true, "Format decimal-scaled fields as scaled values (off = raw mantissa)")

-- Handle changed preferences
function omi_tmx_mx_solatcpretransmission_hsvf_v1_11.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_tmx_mx_solatcpretransmission_hsvf_v1_11.prefs.show_application_messages then
    show.application_messages = omi_tmx_mx_solatcpretransmission_hsvf_v1_11.prefs.show_application_messages
  end
  if show.headers ~= omi_tmx_mx_solatcpretransmission_hsvf_v1_11.prefs.show_headers then
    show.headers = omi_tmx_mx_solatcpretransmission_hsvf_v1_11.prefs.show_headers
  end
  if show.repeating_groups ~= omi_tmx_mx_solatcpretransmission_hsvf_v1_11.prefs.show_repeating_groups then
    show.repeating_groups = omi_tmx_mx_solatcpretransmission_hsvf_v1_11.prefs.show_repeating_groups
  end
  if show.structs ~= omi_tmx_mx_solatcpretransmission_hsvf_v1_11.prefs.show_structs then
    show.structs = omi_tmx_mx_solatcpretransmission_hsvf_v1_11.prefs.show_structs
  end
  if show.indexes ~= omi_tmx_mx_solatcpretransmission_hsvf_v1_11.prefs.show_indexes then
    show.indexes = omi_tmx_mx_solatcpretransmission_hsvf_v1_11.prefs.show_indexes
  end
  if tmx_mx_solatcpretransmission_hsvf_v1_11.format_decimals ~= omi_tmx_mx_solatcpretransmission_hsvf_v1_11.prefs.format_decimals then
    tmx_mx_solatcpretransmission_hsvf_v1_11.format_decimals = omi_tmx_mx_solatcpretransmission_hsvf_v1_11.prefs.format_decimals
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
-- Tmx Mx SolaTcpRetransmission Hsvf 1.11 Fields
-----------------------------------------------------------------------

-- Ask Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_fraction_indicator = {}

-- Size: Ask Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_fraction_indicator.size = 1

-- Display: Ask Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_fraction_indicator.display = function(value)
  if value == "0" then
    return "Ask Price Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Ask Price Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Ask Price Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Ask Price Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Ask Price Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Ask Price Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Ask Price Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Ask Price Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Ask Price Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Ask Price Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Ask Price Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Ask Price Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Ask Price Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Ask Price Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Ask Price Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Ask Price Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Ask Price Fraction Indicator: Negative Million (G)"
  end

  return "Ask Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Ask Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Ask Price Futures Depth Numeric
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_numeric = {}

-- Size: Ask Price Futures Depth Numeric
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_numeric.size = 6

-- Display: Ask Price Futures Depth Numeric
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_numeric.display = function(value)
  return "Ask Price Futures Depth Numeric: "..value
end

-- Dissect: Ask Price Futures Depth Numeric
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_numeric.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_numeric.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_futures_depth_numeric, range, value, "Ask Price Futures Depth Numeric: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Ask Price Futures Depth Numeric is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_numeric.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_futures_depth_numeric, range, value, display)

  return offset + length, value
end

-- Ask Price Futures Depth Opening
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_opening = {}

-- Size: Ask Price Futures Depth Opening
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_opening.size = 6

-- Display: Ask Price Futures Depth Opening
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_opening.display = function(value)
  return "Ask Price Futures Depth Opening: "..value
end

-- Dissect: Ask Price Futures Depth Opening
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_opening.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_opening.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_opening.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_futures_depth_opening, range, value, display)

  return offset + length, value
end

-- Ask Price Quote Numeric
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_numeric = {}

-- Size: Ask Price Quote Numeric
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_numeric.size = 6

-- Display: Ask Price Quote Numeric
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_numeric.display = function(value)
  return "Ask Price Quote Numeric: "..value
end

-- Dissect: Ask Price Quote Numeric
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_numeric.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_numeric.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_quote_numeric, range, value, "Ask Price Quote Numeric: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Ask Price Quote Numeric is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_numeric.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_quote_numeric, range, value, display)

  return offset + length, value
end

-- Ask Price Quote Opening
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_opening = {}

-- Size: Ask Price Quote Opening
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_opening.size = 6

-- Display: Ask Price Quote Opening
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_opening.display = function(value)
  return "Ask Price Quote Opening: "..value
end

-- Dissect: Ask Price Quote Opening
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_opening.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_opening.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_opening.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_quote_opening, range, value, display)

  return offset + length, value
end

-- Ask Price Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_sign = {}

-- Size: Ask Price Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_sign.size = 1

-- Display: Ask Price Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_sign.display = function(value)
  if value == "+" then
    return "Ask Price Sign: Positive (+)"
  end
  if value == "-" then
    return "Ask Price Sign: Negative (-)"
  end

  return "Ask Price Sign: Unknown("..value..")"
end

-- Dissect: Ask Price Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_sign, range, value, display)

  return offset + length, value
end

-- Ask Price Summary
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_summary = {}

-- Size: Ask Price Summary
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_summary.size = 6

-- Display: Ask Price Summary
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_summary.display = function(value)
  return "Ask Price Summary: "..value
end

-- Dissect: Ask Price Summary
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_summary.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_summary.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_summary, range, value, "Ask Price Summary: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Ask Price Summary is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_summary.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_summary, range, value, display)

  return offset + length, value
end

-- Ask Size
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size = {}

-- Size: Ask Size
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.size = 5

-- Display: Ask Size
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.display = function(value, buffer, offset, packet, parent)
  return "Ask Size: "..string.format("%.0f", value)
end

-- Dissect: Ask Size
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.size
  local range = buffer(offset, length)
  local text = range:string()
  local powers = { ["C"] = 2, ["D"] = 3, ["E"] = 4, ["F"] = 5, ["G"] = 6, ["H"] = 7, ["I"] = 8, ["J"] = 9 }
  local value = 0
  local power = 0

  for index = 1, #text do
    local character = text:sub(index, index)
    if powers[character] then
      power = powers[character]
    else
      value = value * 10 + (tonumber(character) or 0)
    end
  end

  value = value * (10 ^ power)

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Associated Product Delivery Month
tmx_mx_solatcpretransmission_hsvf_v1_11.associated_product_delivery_month = {}

-- Size: Associated Product Delivery Month
tmx_mx_solatcpretransmission_hsvf_v1_11.associated_product_delivery_month.size = 1

-- Display: Associated Product Delivery Month
tmx_mx_solatcpretransmission_hsvf_v1_11.associated_product_delivery_month.display = function(value)
  if value == "F" then
    return "Associated Product Delivery Month: January (F)"
  end
  if value == "G" then
    return "Associated Product Delivery Month: February (G)"
  end
  if value == "H" then
    return "Associated Product Delivery Month: March (H)"
  end
  if value == "J" then
    return "Associated Product Delivery Month: April (J)"
  end
  if value == "K" then
    return "Associated Product Delivery Month: May (K)"
  end
  if value == "M" then
    return "Associated Product Delivery Month: June (M)"
  end
  if value == "N" then
    return "Associated Product Delivery Month: July (N)"
  end
  if value == "Q" then
    return "Associated Product Delivery Month: August (Q)"
  end
  if value == "U" then
    return "Associated Product Delivery Month: September (U)"
  end
  if value == "V" then
    return "Associated Product Delivery Month: October (V)"
  end
  if value == "X" then
    return "Associated Product Delivery Month: November (X)"
  end
  if value == "Z" then
    return "Associated Product Delivery Month: December (Z)"
  end

  return "Associated Product Delivery Month: Unknown("..value..")"
end

-- Dissect: Associated Product Delivery Month
tmx_mx_solatcpretransmission_hsvf_v1_11.associated_product_delivery_month.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.associated_product_delivery_month.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.associated_product_delivery_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.associated_product_delivery_month, range, value, display)

  return offset + length, value
end

-- Associated Product Delivery Year
tmx_mx_solatcpretransmission_hsvf_v1_11.associated_product_delivery_year = {}

-- Size: Associated Product Delivery Year
tmx_mx_solatcpretransmission_hsvf_v1_11.associated_product_delivery_year.size = 2

-- Display: Associated Product Delivery Year
tmx_mx_solatcpretransmission_hsvf_v1_11.associated_product_delivery_year.display = function(value)
  return "Associated Product Delivery Year: "..value
end

-- Dissect: Associated Product Delivery Year
tmx_mx_solatcpretransmission_hsvf_v1_11.associated_product_delivery_year.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.associated_product_delivery_year.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.associated_product_delivery_year, range, value, "Associated Product Delivery Year: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Associated Product Delivery Year is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.associated_product_delivery_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.associated_product_delivery_year, range, value, display)

  return offset + length, value
end

-- Associated Product Expiry Day
tmx_mx_solatcpretransmission_hsvf_v1_11.associated_product_expiry_day = {}

-- Size: Associated Product Expiry Day
tmx_mx_solatcpretransmission_hsvf_v1_11.associated_product_expiry_day.size = 2

-- Display: Associated Product Expiry Day
tmx_mx_solatcpretransmission_hsvf_v1_11.associated_product_expiry_day.display = function(value)
  return "Associated Product Expiry Day: "..value
end

-- Dissect: Associated Product Expiry Day
tmx_mx_solatcpretransmission_hsvf_v1_11.associated_product_expiry_day.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.associated_product_expiry_day.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.associated_product_expiry_day, range, value, "Associated Product Expiry Day: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Associated Product Expiry Day is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.associated_product_expiry_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.associated_product_expiry_day, range, value, display)

  return offset + length, value
end

-- Associated Product Root Symbol
tmx_mx_solatcpretransmission_hsvf_v1_11.associated_product_root_symbol = {}

-- Size: Associated Product Root Symbol
tmx_mx_solatcpretransmission_hsvf_v1_11.associated_product_root_symbol.size = 6

-- Display: Associated Product Root Symbol
tmx_mx_solatcpretransmission_hsvf_v1_11.associated_product_root_symbol.display = function(value)
  return "Associated Product Root Symbol: "..value
end

-- Dissect: Associated Product Root Symbol
tmx_mx_solatcpretransmission_hsvf_v1_11.associated_product_root_symbol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.associated_product_root_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.associated_product_root_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.associated_product_root_symbol, range, value, display)

  return offset + length, value
end

-- Bid Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_fraction_indicator = {}

-- Size: Bid Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_fraction_indicator.size = 1

-- Display: Bid Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_fraction_indicator.display = function(value)
  if value == "0" then
    return "Bid Price Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Bid Price Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Bid Price Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Bid Price Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Bid Price Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Bid Price Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Bid Price Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Bid Price Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Bid Price Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Bid Price Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Bid Price Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Bid Price Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Bid Price Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Bid Price Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Bid Price Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Bid Price Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Bid Price Fraction Indicator: Negative Million (G)"
  end

  return "Bid Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Bid Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bid_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Bid Price Quote Numeric
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_numeric = {}

-- Size: Bid Price Quote Numeric
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_numeric.size = 6

-- Display: Bid Price Quote Numeric
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_numeric.display = function(value)
  return "Bid Price Quote Numeric: "..value
end

-- Dissect: Bid Price Quote Numeric
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_numeric.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_numeric.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bid_price_quote_numeric, range, value, "Bid Price Quote Numeric: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Bid Price Quote Numeric is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_numeric.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bid_price_quote_numeric, range, value, display)

  return offset + length, value
end

-- Bid Price Quote Opening
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_opening = {}

-- Size: Bid Price Quote Opening
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_opening.size = 6

-- Display: Bid Price Quote Opening
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_opening.display = function(value)
  return "Bid Price Quote Opening: "..value
end

-- Dissect: Bid Price Quote Opening
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_opening.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_opening.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_opening.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bid_price_quote_opening, range, value, display)

  return offset + length, value
end

-- Bid Price Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_sign = {}

-- Size: Bid Price Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_sign.size = 1

-- Display: Bid Price Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_sign.display = function(value)
  if value == "+" then
    return "Bid Price Sign: Positive (+)"
  end
  if value == "-" then
    return "Bid Price Sign: Negative (-)"
  end

  return "Bid Price Sign: Unknown("..value..")"
end

-- Dissect: Bid Price Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bid_price_sign, range, value, display)

  return offset + length, value
end

-- Bid Price Summary
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_summary = {}

-- Size: Bid Price Summary
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_summary.size = 6

-- Display: Bid Price Summary
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_summary.display = function(value)
  return "Bid Price Summary: "..value
end

-- Dissect: Bid Price Summary
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_summary.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_summary.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bid_price_summary, range, value, "Bid Price Summary: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Bid Price Summary is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_summary.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bid_price_summary, range, value, display)

  return offset + length, value
end

-- Bid Size
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size = {}

-- Size: Bid Size
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.size = 5

-- Display: Bid Size
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.display = function(value, buffer, offset, packet, parent)
  return "Bid Size: "..string.format("%.0f", value)
end

-- Dissect: Bid Size
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.size
  local range = buffer(offset, length)
  local text = range:string()
  local powers = { ["C"] = 2, ["D"] = 3, ["E"] = 4, ["F"] = 5, ["G"] = 6, ["H"] = 7, ["I"] = 8, ["J"] = 9 }
  local value = 0
  local power = 0

  for index = 1, #text do
    local character = text:sub(index, index)
    if powers[character] then
      power = powers[character]
    else
      value = value * 10 + (tonumber(character) or 0)
    end
  end

  value = value * (10 ^ power)

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Bulletin Type
tmx_mx_solatcpretransmission_hsvf_v1_11.bulletin_type = {}

-- Size: Bulletin Type
tmx_mx_solatcpretransmission_hsvf_v1_11.bulletin_type.size = 1

-- Display: Bulletin Type
tmx_mx_solatcpretransmission_hsvf_v1_11.bulletin_type.display = function(value)
  if value == "1" then
    return "Bulletin Type: Regular Text Bulletin (1)"
  end
  if value == "2" then
    return "Bulletin Type: Special Text Bulletin (2)"
  end

  return "Bulletin Type: Unknown("..value..")"
end

-- Dissect: Bulletin Type
tmx_mx_solatcpretransmission_hsvf_v1_11.bulletin_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.bulletin_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.bulletin_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bulletin_type, range, value, display)

  return offset + length, value
end

-- Call Put Code
tmx_mx_solatcpretransmission_hsvf_v1_11.call_put_code = {}

-- Size: Call Put Code
tmx_mx_solatcpretransmission_hsvf_v1_11.call_put_code.size = 1

-- Display: Call Put Code
tmx_mx_solatcpretransmission_hsvf_v1_11.call_put_code.display = function(value)
  if value == "C" then
    return "Call Put Code: Call (C)"
  end
  if value == "P" then
    return "Call Put Code: Put (P)"
  end

  return "Call Put Code: Unknown("..value..")"
end

-- Dissect: Call Put Code
tmx_mx_solatcpretransmission_hsvf_v1_11.call_put_code.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.call_put_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.call_put_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.call_put_code, range, value, display)

  return offset + length, value
end

-- Cash Flow Alignment Date
tmx_mx_solatcpretransmission_hsvf_v1_11.cash_flow_alignment_date = {}

-- Size: Cash Flow Alignment Date
tmx_mx_solatcpretransmission_hsvf_v1_11.cash_flow_alignment_date.size = 6

-- Display: Cash Flow Alignment Date
tmx_mx_solatcpretransmission_hsvf_v1_11.cash_flow_alignment_date.display = function(value)
  return "Cash Flow Alignment Date: "..value
end

-- Dissect: Cash Flow Alignment Date
tmx_mx_solatcpretransmission_hsvf_v1_11.cash_flow_alignment_date.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.cash_flow_alignment_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.cash_flow_alignment_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.cash_flow_alignment_date, range, value, display)

  return offset + length, value
end

-- Client Message Type
tmx_mx_solatcpretransmission_hsvf_v1_11.client_message_type = {}

-- Size: Client Message Type
tmx_mx_solatcpretransmission_hsvf_v1_11.client_message_type.size = 2

-- Display: Client Message Type
tmx_mx_solatcpretransmission_hsvf_v1_11.client_message_type.display = function(value)
  if value == "LI" then
    return "Client Message Type: Login Message (LI)"
  end
  if value == "LO" then
    return "Client Message Type: Logout Message (LO)"
  end
  if value == "RT" then
    return "Client Message Type: Retransmission Request Message (RT)"
  end

  return "Client Message Type: Unknown("..value..")"
end

-- Dissect: Client Message Type
tmx_mx_solatcpretransmission_hsvf_v1_11.client_message_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.client_message_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.client_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.client_message_type, range, value, display)

  return offset + length, value
end

-- Continue Marker
tmx_mx_solatcpretransmission_hsvf_v1_11.continue_marker = {}

-- Size: Continue Marker
tmx_mx_solatcpretransmission_hsvf_v1_11.continue_marker.size = 1

-- Display: Continue Marker
tmx_mx_solatcpretransmission_hsvf_v1_11.continue_marker.display = function(value)
  if value == 0 then
    return "Continue Marker: Bulletin Continues In Next Record (0)"
  end
  if value == 1 then
    return "Continue Marker: Bulletin Ended (1)"
  end

  return "Continue Marker: Unknown("..value..")"
end

-- Dissect: Continue Marker
tmx_mx_solatcpretransmission_hsvf_v1_11.continue_marker.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.continue_marker.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.continue_marker, range, value, "Continue Marker: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Continue Marker is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.continue_marker.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.continue_marker, range, value, display)

  return offset + length, value
end

-- Contract Month Code
tmx_mx_solatcpretransmission_hsvf_v1_11.contract_month_code = {}

-- Size: Contract Month Code
tmx_mx_solatcpretransmission_hsvf_v1_11.contract_month_code.size = 1

-- Display: Contract Month Code
tmx_mx_solatcpretransmission_hsvf_v1_11.contract_month_code.display = function(value)
  if value == "F" then
    return "Contract Month Code: January (F)"
  end
  if value == "G" then
    return "Contract Month Code: February (G)"
  end
  if value == "H" then
    return "Contract Month Code: March (H)"
  end
  if value == "J" then
    return "Contract Month Code: April (J)"
  end
  if value == "K" then
    return "Contract Month Code: May (K)"
  end
  if value == "M" then
    return "Contract Month Code: June (M)"
  end
  if value == "N" then
    return "Contract Month Code: July (N)"
  end
  if value == "Q" then
    return "Contract Month Code: August (Q)"
  end
  if value == "U" then
    return "Contract Month Code: September (U)"
  end
  if value == "V" then
    return "Contract Month Code: October (V)"
  end
  if value == "X" then
    return "Contract Month Code: November (X)"
  end
  if value == "Z" then
    return "Contract Month Code: December (Z)"
  end

  return "Contract Month Code: Unknown("..value..")"
end

-- Dissect: Contract Month Code
tmx_mx_solatcpretransmission_hsvf_v1_11.contract_month_code.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.contract_month_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.contract_month_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.contract_month_code, range, value, display)

  return offset + length, value
end

-- Contract Size
tmx_mx_solatcpretransmission_hsvf_v1_11.contract_size = {}

-- Size: Contract Size
tmx_mx_solatcpretransmission_hsvf_v1_11.contract_size.size = 8

-- Display: Contract Size
tmx_mx_solatcpretransmission_hsvf_v1_11.contract_size.display = function(value)
  return "Contract Size: "..value
end

-- Dissect: Contract Size
tmx_mx_solatcpretransmission_hsvf_v1_11.contract_size.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.contract_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.contract_size, range, value, "Contract Size: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Contract Size is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.contract_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.contract_size, range, value, display)

  return offset + length, value
end

-- Currency
tmx_mx_solatcpretransmission_hsvf_v1_11.currency = {}

-- Size: Currency
tmx_mx_solatcpretransmission_hsvf_v1_11.currency.size = 3

-- Display: Currency
tmx_mx_solatcpretransmission_hsvf_v1_11.currency.display = function(value)
  if value == "USD" then
    return "Currency: Us (USD)"
  end
  if value == "CAD" then
    return "Currency: Canadian (CAD)"
  end
  if value == "   " then
    return "Currency: Not Provided (<whitespace>)"
  end

  return "Currency: Unknown("..value..")"
end

-- Dissect: Currency
tmx_mx_solatcpretransmission_hsvf_v1_11.currency.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.currency, range, value, display)

  return offset + length, value
end

-- Day Count Convention
tmx_mx_solatcpretransmission_hsvf_v1_11.day_count_convention = {}

-- Size: Day Count Convention
tmx_mx_solatcpretransmission_hsvf_v1_11.day_count_convention.size = 1

-- Display: Day Count Convention
tmx_mx_solatcpretransmission_hsvf_v1_11.day_count_convention.display = function(value)
  if value == "A" then
    return "Day Count Convention: Act 365 (A)"
  end
  if value == "B" then
    return "Day Count Convention: Act 360 (B)"
  end
  if value == "C" then
    return "Day Count Convention: Thirty 360 (C)"
  end

  return "Day Count Convention: Unknown("..value..")"
end

-- Dissect: Day Count Convention
tmx_mx_solatcpretransmission_hsvf_v1_11.day_count_convention.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.day_count_convention.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.day_count_convention.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.day_count_convention, range, value, display)

  return offset + length, value
end

-- Delivery Day
tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_day = {}

-- Size: Delivery Day
tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_day.size = 2

-- Display: Delivery Day
tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_day.display = function(value)
  return "Delivery Day: "..value
end

-- Dissect: Delivery Day
tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_day.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_day.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.delivery_day, range, value, "Delivery Day: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Delivery Day is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.delivery_day, range, value, display)

  return offset + length, value
end

-- Delivery Month
tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_month = {}

-- Size: Delivery Month
tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_month.size = 1

-- Display: Delivery Month
tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_month.display = function(value)
  if value == "F" then
    return "Delivery Month: January (F)"
  end
  if value == "G" then
    return "Delivery Month: February (G)"
  end
  if value == "H" then
    return "Delivery Month: March (H)"
  end
  if value == "J" then
    return "Delivery Month: April (J)"
  end
  if value == "K" then
    return "Delivery Month: May (K)"
  end
  if value == "M" then
    return "Delivery Month: June (M)"
  end
  if value == "N" then
    return "Delivery Month: July (N)"
  end
  if value == "Q" then
    return "Delivery Month: August (Q)"
  end
  if value == "U" then
    return "Delivery Month: September (U)"
  end
  if value == "V" then
    return "Delivery Month: October (V)"
  end
  if value == "X" then
    return "Delivery Month: November (X)"
  end
  if value == "Z" then
    return "Delivery Month: December (Z)"
  end

  return "Delivery Month: Unknown("..value..")"
end

-- Dissect: Delivery Month
tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_month.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_month.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.delivery_month, range, value, display)

  return offset + length, value
end

-- Delivery Month Strategy
tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_month_strategy = {}

-- Size: Delivery Month Strategy
tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_month_strategy.size = 1

-- Display: Delivery Month Strategy
tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_month_strategy.display = function(value)
  return "Delivery Month Strategy: "..value
end

-- Dissect: Delivery Month Strategy
tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_month_strategy.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_month_strategy.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_month_strategy.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.delivery_month_strategy, range, value, display)

  return offset + length, value
end

-- Delivery Type
tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_type = {}

-- Size: Delivery Type
tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_type.size = 1

-- Display: Delivery Type
tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_type.display = function(value)
  if value == "C" then
    return "Delivery Type: Cash (C)"
  end
  if value == "P" then
    return "Delivery Type: Physical (P)"
  end

  return "Delivery Type: Unknown("..value..")"
end

-- Dissect: Delivery Type
tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.delivery_type, range, value, display)

  return offset + length, value
end

-- Delivery Year Futures
tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_year_futures = {}

-- Size: Delivery Year Futures
tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_year_futures.size = 2

-- Display: Delivery Year Futures
tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_year_futures.display = function(value)
  return "Delivery Year Futures: "..value
end

-- Dissect: Delivery Year Futures
tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_year_futures.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_year_futures.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.delivery_year_futures, range, value, "Delivery Year Futures: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Delivery Year Futures is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_year_futures.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.delivery_year_futures, range, value, display)

  return offset + length, value
end

-- Delivery Year Underlying
tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_year_underlying = {}

-- Size: Delivery Year Underlying
tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_year_underlying.size = 1

-- Display: Delivery Year Underlying
tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_year_underlying.display = function(value)
  return "Delivery Year Underlying: "..value
end

-- Dissect: Delivery Year Underlying
tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_year_underlying.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_year_underlying.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.delivery_year_underlying, range, value, "Delivery Year Underlying: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Delivery Year Underlying is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_year_underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.delivery_year_underlying, range, value, display)

  return offset + length, value
end

-- Effective Date
tmx_mx_solatcpretransmission_hsvf_v1_11.effective_date = {}

-- Size: Effective Date
tmx_mx_solatcpretransmission_hsvf_v1_11.effective_date.size = 6

-- Display: Effective Date
tmx_mx_solatcpretransmission_hsvf_v1_11.effective_date.display = function(value)
  return "Effective Date: "..value
end

-- Dissect: Effective Date
tmx_mx_solatcpretransmission_hsvf_v1_11.effective_date.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.effective_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.effective_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.effective_date, range, value, display)

  return offset + length, value
end

-- End
tmx_mx_solatcpretransmission_hsvf_v1_11.end_ = {}

-- Size: End
tmx_mx_solatcpretransmission_hsvf_v1_11.end_.size = 9

-- Display: End
tmx_mx_solatcpretransmission_hsvf_v1_11.end_.display = function(value)
  return "End: "..value
end

-- Dissect: End
tmx_mx_solatcpretransmission_hsvf_v1_11.end_.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.end_.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.end_, range, value, "End: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "End is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.end_.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.end_, range, value, display)

  return offset + length, value
end

-- Error Code
tmx_mx_solatcpretransmission_hsvf_v1_11.error_code = {}

-- Size: Error Code
tmx_mx_solatcpretransmission_hsvf_v1_11.error_code.size = 4

-- Display: Error Code
tmx_mx_solatcpretransmission_hsvf_v1_11.error_code.display = function(value)
  if value == 0001 then
    return "Error Code: Unknown Message Type (0001)"
  end
  if value == 0002 then
    return "Error Code: Invalid Message Length (0002)"
  end
  if value == 0003 then
    return "Error Code: Invalid Characters (0003)"
  end
  if value == 0100 then
    return "Error Code: Invalid Protocol Version (0100)"
  end
  if value == 0101 then
    return "Error Code: Already Logged In (0101)"
  end
  if value == 0102 then
    return "Error Code: Not Logged In (0102)"
  end
  if value == 0103 then
    return "Error Code: Invalid Line Name (0103)"
  end
  if value == 0104 then
    return "Error Code: Maximum Number Of Retransmission Request Reached (0104)"
  end
  if value == 0105 then
    return "Error Code: Invalid Sequence Number (0105)"
  end
  if value == 0106 then
    return "Error Code: Continuous Feed Request In Progress (0106)"
  end
  if value == 0107 then
    return "Error Code: Cannot Process Legacy Mode Command Tcp Mode Already In Use (0107)"
  end
  if value == 0108 then
    return "Error Code: Cannot Process Tcp Mode Command Legacy Mode Already In Use (0108)"
  end

  return "Error Code: Unknown("..value..")"
end

-- Dissect: Error Code
tmx_mx_solatcpretransmission_hsvf_v1_11.error_code.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.error_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.error_code, range, value, "Error Code: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Error Code is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.error_code, range, value, display)

  return offset + length, value
end

-- Error Msg
tmx_mx_solatcpretransmission_hsvf_v1_11.error_msg = {}

-- Size: Error Msg
tmx_mx_solatcpretransmission_hsvf_v1_11.error_msg.size = 80

-- Display: Error Msg
tmx_mx_solatcpretransmission_hsvf_v1_11.error_msg.display = function(value)
  return "Error Msg: "..value
end

-- Dissect: Error Msg
tmx_mx_solatcpretransmission_hsvf_v1_11.error_msg.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.error_msg.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.error_msg.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.error_msg, range, value, display)

  return offset + length, value
end

-- Exchange Id
tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id = {}

-- Size: Exchange Id
tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size = 1

-- Display: Exchange Id
tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.display = function(value)
  if value == "Q" then
    return "Exchange Id: Montreal (Q)"
  end

  return "Exchange Id: Unknown("..value..")"
end

-- Dissect: Exchange Id
tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.exchange_id, range, value, display)

  return offset + length, value
end

-- Expiry Day
tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day = {}

-- Size: Expiry Day
tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.size = 2

-- Display: Expiry Day
tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.display = function(value)
  return "Expiry Day: "..value
end

-- Dissect: Expiry Day
tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.expiry_day, range, value, "Expiry Day: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Expiry Day is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.expiry_day, range, value, display)

  return offset + length, value
end

-- Expiry Month
tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month = {}

-- Size: Expiry Month
tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month.size = 1

-- Display: Expiry Month
tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month.display = function(value)
  if value == "A" then
    return "Expiry Month: January Call (A)"
  end
  if value == "B" then
    return "Expiry Month: February Call (B)"
  end
  if value == "C" then
    return "Expiry Month: March Call (C)"
  end
  if value == "D" then
    return "Expiry Month: April Call (D)"
  end
  if value == "E" then
    return "Expiry Month: May Call (E)"
  end
  if value == "F" then
    return "Expiry Month: June Call (F)"
  end
  if value == "G" then
    return "Expiry Month: July Call (G)"
  end
  if value == "H" then
    return "Expiry Month: August Call (H)"
  end
  if value == "I" then
    return "Expiry Month: September Call (I)"
  end
  if value == "J" then
    return "Expiry Month: October Call (J)"
  end
  if value == "K" then
    return "Expiry Month: November Call (K)"
  end
  if value == "L" then
    return "Expiry Month: December Call (L)"
  end
  if value == "M" then
    return "Expiry Month: January Put (M)"
  end
  if value == "N" then
    return "Expiry Month: February Put (N)"
  end
  if value == "O" then
    return "Expiry Month: March Put (O)"
  end
  if value == "P" then
    return "Expiry Month: April Put (P)"
  end
  if value == "Q" then
    return "Expiry Month: May Put (Q)"
  end
  if value == "R" then
    return "Expiry Month: June Put (R)"
  end
  if value == "S" then
    return "Expiry Month: July Put (S)"
  end
  if value == "T" then
    return "Expiry Month: August Put (T)"
  end
  if value == "U" then
    return "Expiry Month: September Put (U)"
  end
  if value == "V" then
    return "Expiry Month: October Put (V)"
  end
  if value == "W" then
    return "Expiry Month: November Put (W)"
  end
  if value == "X" then
    return "Expiry Month: December Put (X)"
  end

  return "Expiry Month: Unknown("..value..")"
end

-- Dissect: Expiry Month
tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.expiry_month, range, value, display)

  return offset + length, value
end

-- Expiry Month Swap Future
tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month_swap_future = {}

-- Size: Expiry Month Swap Future
tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month_swap_future.size = 1

-- Display: Expiry Month Swap Future
tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month_swap_future.display = function(value)
  if value == "F" then
    return "Expiry Month Swap Future: January (F)"
  end
  if value == "G" then
    return "Expiry Month Swap Future: February (G)"
  end
  if value == "H" then
    return "Expiry Month Swap Future: March (H)"
  end
  if value == "J" then
    return "Expiry Month Swap Future: April (J)"
  end
  if value == "K" then
    return "Expiry Month Swap Future: May (K)"
  end
  if value == "M" then
    return "Expiry Month Swap Future: June (M)"
  end
  if value == "N" then
    return "Expiry Month Swap Future: July (N)"
  end
  if value == "Q" then
    return "Expiry Month Swap Future: August (Q)"
  end
  if value == "U" then
    return "Expiry Month Swap Future: September (U)"
  end
  if value == "V" then
    return "Expiry Month Swap Future: October (V)"
  end
  if value == "X" then
    return "Expiry Month Swap Future: November (X)"
  end
  if value == "Z" then
    return "Expiry Month Swap Future: December (Z)"
  end

  return "Expiry Month Swap Future: Unknown("..value..")"
end

-- Dissect: Expiry Month Swap Future
tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month_swap_future.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month_swap_future.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month_swap_future.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.expiry_month_swap_future, range, value, display)

  return offset + length, value
end

-- Expiry Year
tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year = {}

-- Size: Expiry Year
tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.size = 2

-- Display: Expiry Year
tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.display = function(value)
  return "Expiry Year: "..value
end

-- Dissect: Expiry Year
tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.expiry_year, range, value, "Expiry Year: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Expiry Year is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.expiry_year, range, value, display)

  return offset + length, value
end

-- External Price At Source
tmx_mx_solatcpretransmission_hsvf_v1_11.external_price_at_source = {}

-- Size: External Price At Source
tmx_mx_solatcpretransmission_hsvf_v1_11.external_price_at_source.size = 6

-- Display: External Price At Source
tmx_mx_solatcpretransmission_hsvf_v1_11.external_price_at_source.display = function(value)
  return "External Price At Source: "..value
end

-- Dissect: External Price At Source
tmx_mx_solatcpretransmission_hsvf_v1_11.external_price_at_source.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.external_price_at_source.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.external_price_at_source, range, value, "External Price At Source: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "External Price At Source is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.external_price_at_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.external_price_at_source, range, value, display)

  return offset + length, value
end

-- External Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.external_price_fraction_indicator = {}

-- Size: External Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.external_price_fraction_indicator.size = 1

-- Display: External Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.external_price_fraction_indicator.display = function(value)
  if value == "0" then
    return "External Price Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "External Price Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "External Price Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "External Price Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "External Price Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "External Price Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "External Price Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "External Price Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "External Price Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "External Price Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "External Price Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "External Price Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "External Price Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "External Price Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "External Price Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "External Price Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "External Price Fraction Indicator: Negative Million (G)"
  end

  return "External Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: External Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.external_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.external_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.external_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.external_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- External Symbol
tmx_mx_solatcpretransmission_hsvf_v1_11.external_symbol = {}

-- Size: External Symbol
tmx_mx_solatcpretransmission_hsvf_v1_11.external_symbol.size = 30

-- Display: External Symbol
tmx_mx_solatcpretransmission_hsvf_v1_11.external_symbol.display = function(value)
  return "External Symbol: "..value
end

-- Dissect: External Symbol
tmx_mx_solatcpretransmission_hsvf_v1_11.external_symbol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.external_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.external_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.external_symbol, range, value, display)

  return offset + length, value
end

-- Filler 1
tmx_mx_solatcpretransmission_hsvf_v1_11.filler_1 = {}

-- Size: Filler 1
tmx_mx_solatcpretransmission_hsvf_v1_11.filler_1.size = 1

-- Display: Filler 1
tmx_mx_solatcpretransmission_hsvf_v1_11.filler_1.display = function(value)
  return "Filler 1: "..value
end

-- Dissect: Filler 1
tmx_mx_solatcpretransmission_hsvf_v1_11.filler_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.filler_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.filler_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.filler_1, range, value, display)

  return offset + length, value
end

-- Filler 2
tmx_mx_solatcpretransmission_hsvf_v1_11.filler_2 = {}

-- Size: Filler 2
tmx_mx_solatcpretransmission_hsvf_v1_11.filler_2.size = 2

-- Display: Filler 2
tmx_mx_solatcpretransmission_hsvf_v1_11.filler_2.display = function(value)
  return "Filler 2: "..value
end

-- Dissect: Filler 2
tmx_mx_solatcpretransmission_hsvf_v1_11.filler_2.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.filler_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.filler_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.filler_2, range, value, display)

  return offset + length, value
end

-- Filler 6
tmx_mx_solatcpretransmission_hsvf_v1_11.filler_6 = {}

-- Size: Filler 6
tmx_mx_solatcpretransmission_hsvf_v1_11.filler_6.size = 6

-- Display: Filler 6
tmx_mx_solatcpretransmission_hsvf_v1_11.filler_6.display = function(value)
  return "Filler 6: "..value
end

-- Dissect: Filler 6
tmx_mx_solatcpretransmission_hsvf_v1_11.filler_6.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.filler_6.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.filler_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.filler_6, range, value, display)

  return offset + length, value
end

-- First Payment Date
tmx_mx_solatcpretransmission_hsvf_v1_11.first_payment_date = {}

-- Size: First Payment Date
tmx_mx_solatcpretransmission_hsvf_v1_11.first_payment_date.size = 6

-- Display: First Payment Date
tmx_mx_solatcpretransmission_hsvf_v1_11.first_payment_date.display = function(value)
  return "First Payment Date: "..value
end

-- Dissect: First Payment Date
tmx_mx_solatcpretransmission_hsvf_v1_11.first_payment_date.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.first_payment_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.first_payment_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.first_payment_date, range, value, display)

  return offset + length, value
end

-- First Reset Date
tmx_mx_solatcpretransmission_hsvf_v1_11.first_reset_date = {}

-- Size: First Reset Date
tmx_mx_solatcpretransmission_hsvf_v1_11.first_reset_date.size = 6

-- Display: First Reset Date
tmx_mx_solatcpretransmission_hsvf_v1_11.first_reset_date.display = function(value)
  return "First Reset Date: "..value
end

-- Dissect: First Reset Date
tmx_mx_solatcpretransmission_hsvf_v1_11.first_reset_date.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.first_reset_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.first_reset_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.first_reset_date, range, value, display)

  return offset + length, value
end

-- Fixed Rate
tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate = {}

-- Size: Fixed Rate
tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate.size = 5

-- Display: Fixed Rate
tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate.display = function(value)
  return "Fixed Rate: "..value
end

-- Dissect: Fixed Rate
tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.fixed_rate, range, value, "Fixed Rate: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Fixed Rate is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.fixed_rate, range, value, display)

  return offset + length, value
end

-- Fixed Rate Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate_fraction_indicator = {}

-- Size: Fixed Rate Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate_fraction_indicator.size = 1

-- Display: Fixed Rate Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate_fraction_indicator.display = function(value)
  if value == "0" then
    return "Fixed Rate Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Fixed Rate Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Fixed Rate Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Fixed Rate Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Fixed Rate Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Fixed Rate Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Fixed Rate Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Fixed Rate Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Fixed Rate Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Fixed Rate Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Fixed Rate Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Fixed Rate Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Fixed Rate Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Fixed Rate Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Fixed Rate Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Fixed Rate Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Fixed Rate Fraction Indicator: Negative Million (G)"
  end

  return "Fixed Rate Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Fixed Rate Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.fixed_rate_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Group Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.group_instrument = {}

-- Size: Group Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.group_instrument.size = 2

-- Display: Group Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.group_instrument.display = function(value)
  return "Group Instrument: "..value
end

-- Dissect: Group Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.group_instrument.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.group_instrument.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.group_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.group_instrument, range, value, display)

  return offset + length, value
end

-- Group Status
tmx_mx_solatcpretransmission_hsvf_v1_11.group_status = {}

-- Size: Group Status
tmx_mx_solatcpretransmission_hsvf_v1_11.group_status.size = 1

-- Display: Group Status
tmx_mx_solatcpretransmission_hsvf_v1_11.group_status.display = function(value)
  if value == "Y" then
    return "Group Status: Preopening Phase (Y)"
  end
  if value == "O" then
    return "Group Status: Opening Phase (O)"
  end
  if value == "T" then
    return "Group Status: Opened For Trading (T)"
  end
  if value == "F" then
    return "Group Status: Forbidden Phase (F)"
  end
  if value == "E" then
    return "Group Status: Intervention Before Opening (E)"
  end
  if value == "H" then
    return "Group Status: Trading Halted (H)"
  end
  if value == "A" then
    return "Group Status: Surveillance Intervention Phase (A)"
  end
  if value == "C" then
    return "Group Status: Endof Day Inquiries Phase (C)"
  end
  if value == " " then
    return "Group Status: If Not Used (<whitespace>)"
  end

  return "Group Status: Unknown("..value..")"
end

-- Dissect: Group Status
tmx_mx_solatcpretransmission_hsvf_v1_11.group_status.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.group_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.group_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.group_status, range, value, display)

  return offset + length, value
end

-- High Price
tmx_mx_solatcpretransmission_hsvf_v1_11.high_price = {}

-- Size: High Price
tmx_mx_solatcpretransmission_hsvf_v1_11.high_price.size = 6

-- Display: High Price
tmx_mx_solatcpretransmission_hsvf_v1_11.high_price.display = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
tmx_mx_solatcpretransmission_hsvf_v1_11.high_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.high_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.high_price, range, value, "High Price: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "High Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.high_price, range, value, display)

  return offset + length, value
end

-- High Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.high_price_fraction_indicator = {}

-- Size: High Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.high_price_fraction_indicator.size = 1

-- Display: High Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.high_price_fraction_indicator.display = function(value)
  if value == "0" then
    return "High Price Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "High Price Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "High Price Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "High Price Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "High Price Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "High Price Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "High Price Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "High Price Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "High Price Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "High Price Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "High Price Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "High Price Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "High Price Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "High Price Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "High Price Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "High Price Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "High Price Fraction Indicator: Negative Million (G)"
  end

  return "High Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: High Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.high_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.high_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.high_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.high_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- High Price Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.high_price_sign = {}

-- Size: High Price Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.high_price_sign.size = 1

-- Display: High Price Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.high_price_sign.display = function(value)
  if value == "+" then
    return "High Price Sign: Positive (+)"
  end
  if value == "-" then
    return "High Price Sign: Negative (-)"
  end

  return "High Price Sign: Unknown("..value..")"
end

-- Dissect: High Price Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.high_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.high_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.high_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.high_price_sign, range, value, display)

  return offset + length, value
end

-- Historical Coupon B
tmx_mx_solatcpretransmission_hsvf_v1_11.historical_coupon_b = {}

-- Size: Historical Coupon B
tmx_mx_solatcpretransmission_hsvf_v1_11.historical_coupon_b.size = 11

-- Display: Historical Coupon B
tmx_mx_solatcpretransmission_hsvf_v1_11.historical_coupon_b.display = function(value)
  return "Historical Coupon B: "..value
end

-- Dissect: Historical Coupon B
tmx_mx_solatcpretransmission_hsvf_v1_11.historical_coupon_b.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.historical_coupon_b.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.historical_coupon_b, range, value, "Historical Coupon B: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Historical Coupon B is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.historical_coupon_b.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.historical_coupon_b, range, value, display)

  return offset + length, value
end

-- Historical Coupon Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.historical_coupon_fraction_indicator = {}

-- Size: Historical Coupon Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.historical_coupon_fraction_indicator.size = 1

-- Display: Historical Coupon Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.historical_coupon_fraction_indicator.display = function(value)
  if value == "0" then
    return "Historical Coupon Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Historical Coupon Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Historical Coupon Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Historical Coupon Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Historical Coupon Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Historical Coupon Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Historical Coupon Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Historical Coupon Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Historical Coupon Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Historical Coupon Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Historical Coupon Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Historical Coupon Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Historical Coupon Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Historical Coupon Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Historical Coupon Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Historical Coupon Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Historical Coupon Fraction Indicator: Negative Million (G)"
  end

  return "Historical Coupon Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Historical Coupon Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.historical_coupon_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.historical_coupon_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.historical_coupon_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.historical_coupon_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Hsvf Etx
tmx_mx_solatcpretransmission_hsvf_v1_11.hsvf_etx = {}

-- Size: Hsvf Etx
tmx_mx_solatcpretransmission_hsvf_v1_11.hsvf_etx.size = 1

-- Display: Hsvf Etx
tmx_mx_solatcpretransmission_hsvf_v1_11.hsvf_etx.display = function(value)
  if value == 3 then
    return "Hsvf Etx: Etx"
  end

  return "Hsvf Etx: Unknown("..value..")"
end

-- Dissect: Hsvf Etx
tmx_mx_solatcpretransmission_hsvf_v1_11.hsvf_etx.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.hsvf_etx.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.hsvf_etx.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.hsvf_etx, range, value, display)

  return offset + length, value
end

-- Hsvf Stx
tmx_mx_solatcpretransmission_hsvf_v1_11.hsvf_stx = {}

-- Size: Hsvf Stx
tmx_mx_solatcpretransmission_hsvf_v1_11.hsvf_stx.size = 1

-- Display: Hsvf Stx
tmx_mx_solatcpretransmission_hsvf_v1_11.hsvf_stx.display = function(value)
  if value == 2 then
    return "Hsvf Stx: Stx"
  end

  return "Hsvf Stx: Unknown("..value..")"
end

-- Dissect: Hsvf Stx
tmx_mx_solatcpretransmission_hsvf_v1_11.hsvf_stx.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.hsvf_stx.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.hsvf_stx.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.hsvf_stx, range, value, display)

  return offset + length, value
end

-- Initial Effective Date
tmx_mx_solatcpretransmission_hsvf_v1_11.initial_effective_date = {}

-- Size: Initial Effective Date
tmx_mx_solatcpretransmission_hsvf_v1_11.initial_effective_date.size = 6

-- Display: Initial Effective Date
tmx_mx_solatcpretransmission_hsvf_v1_11.initial_effective_date.display = function(value)
  return "Initial Effective Date: "..value
end

-- Dissect: Initial Effective Date
tmx_mx_solatcpretransmission_hsvf_v1_11.initial_effective_date.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.initial_effective_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.initial_effective_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.initial_effective_date, range, value, display)

  return offset + length, value
end

-- Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument = {}

-- Size: Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument.size = 4

-- Display: Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument.display = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.instrument, range, value, display)

  return offset + length, value
end

-- Instrument External Code
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_external_code = {}

-- Size: Instrument External Code
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_external_code.size = 30

-- Display: Instrument External Code
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_external_code.display = function(value)
  return "Instrument External Code: "..value
end

-- Dissect: Instrument External Code
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_external_code.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_external_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_external_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.instrument_external_code, range, value, display)

  return offset + length, value
end

-- Instrument Id
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_id = {}

-- Size: Instrument Id
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_id.size = 4

-- Display: Instrument Id
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Instrument Status Marker
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_status_marker = {}

-- Size: Instrument Status Marker
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_status_marker.size = 1

-- Display: Instrument Status Marker
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_status_marker.display = function(value)
  if value == "Y" then
    return "Instrument Status Marker: Preopening Phase (Y)"
  end
  if value == "O" then
    return "Instrument Status Marker: Opening Phase (O)"
  end
  if value == "T" then
    return "Instrument Status Marker: Opened For Trading (T)"
  end
  if value == "F" then
    return "Instrument Status Marker: Forbidden Phase (F)"
  end
  if value == "E" then
    return "Instrument Status Marker: Intervention Before Opening (E)"
  end
  if value == "H" then
    return "Instrument Status Marker: Trading Halted (H)"
  end
  if value == "R" then
    return "Instrument Status Marker: Reserved Phase (R)"
  end
  if value == "S" then
    return "Instrument Status Marker: Suspended Phase (S)"
  end
  if value == "Z" then
    return "Instrument Status Marker: Frozen (Z)"
  end
  if value == "A" then
    return "Instrument Status Marker: Surveillance Intervention Phase (A)"
  end
  if value == "C" then
    return "Instrument Status Marker: Endof Day Inquiries Phase (C)"
  end
  if value == " " then
    return "Instrument Status Marker: If Not Used (<whitespace>)"
  end

  return "Instrument Status Marker: Unknown("..value..")"
end

-- Dissect: Instrument Status Marker
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_status_marker.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_status_marker.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_status_marker.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.instrument_status_marker, range, value, display)

  return offset + length, value
end

-- Last Price
tmx_mx_solatcpretransmission_hsvf_v1_11.last_price = {}

-- Size: Last Price
tmx_mx_solatcpretransmission_hsvf_v1_11.last_price.size = 6

-- Display: Last Price
tmx_mx_solatcpretransmission_hsvf_v1_11.last_price.display = function(value)
  return "Last Price: "..value
end

-- Dissect: Last Price
tmx_mx_solatcpretransmission_hsvf_v1_11.last_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.last_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.last_price, range, value, "Last Price: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Last Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.last_price, range, value, display)

  return offset + length, value
end

-- Last Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.last_price_fraction_indicator = {}

-- Size: Last Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.last_price_fraction_indicator.size = 1

-- Display: Last Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.last_price_fraction_indicator.display = function(value)
  if value == "0" then
    return "Last Price Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Last Price Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Last Price Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Last Price Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Last Price Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Last Price Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Last Price Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Last Price Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Last Price Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Last Price Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Last Price Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Last Price Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Last Price Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Last Price Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Last Price Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Last Price Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Last Price Fraction Indicator: Negative Million (G)"
  end

  return "Last Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Last Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.last_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.last_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.last_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.last_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Last Price Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.last_price_sign = {}

-- Size: Last Price Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.last_price_sign.size = 1

-- Display: Last Price Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.last_price_sign.display = function(value)
  if value == "+" then
    return "Last Price Sign: Positive (+)"
  end
  if value == "-" then
    return "Last Price Sign: Negative (-)"
  end

  return "Last Price Sign: Unknown("..value..")"
end

-- Dissect: Last Price Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.last_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.last_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.last_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.last_price_sign, range, value, display)

  return offset + length, value
end

-- Leg Ratio
tmx_mx_solatcpretransmission_hsvf_v1_11.leg_ratio = {}

-- Size: Leg Ratio
tmx_mx_solatcpretransmission_hsvf_v1_11.leg_ratio.size = 2

-- Display: Leg Ratio
tmx_mx_solatcpretransmission_hsvf_v1_11.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
tmx_mx_solatcpretransmission_hsvf_v1_11.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.leg_ratio.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.leg_ratio, range, value, "Leg Ratio: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Leg Ratio is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Ratio Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.leg_ratio_sign = {}

-- Size: Leg Ratio Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.leg_ratio_sign.size = 1

-- Display: Leg Ratio Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.leg_ratio_sign.display = function(value)
  if value == "+" then
    return "Leg Ratio Sign: Buy Of The Underlying (+)"
  end
  if value == "-" then
    return "Leg Ratio Sign: Sell Of The Underlying (-)"
  end

  return "Leg Ratio Sign: Unknown("..value..")"
end

-- Dissect: Leg Ratio Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.leg_ratio_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.leg_ratio_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.leg_ratio_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.leg_ratio_sign, range, value, display)

  return offset + length, value
end

-- Leg Symbol
tmx_mx_solatcpretransmission_hsvf_v1_11.leg_symbol = {}

-- Size: Leg Symbol
tmx_mx_solatcpretransmission_hsvf_v1_11.leg_symbol.size = 30

-- Display: Leg Symbol
tmx_mx_solatcpretransmission_hsvf_v1_11.leg_symbol.display = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
tmx_mx_solatcpretransmission_hsvf_v1_11.leg_symbol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.leg_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.leg_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Level
tmx_mx_solatcpretransmission_hsvf_v1_11.level = {}

-- Size: Level
tmx_mx_solatcpretransmission_hsvf_v1_11.level.size = 1

-- Display: Level
tmx_mx_solatcpretransmission_hsvf_v1_11.level.display = function(value)
  if value == "1" then
    return "Level: Level 1 (1)"
  end
  if value == "2" then
    return "Level: Level 2 (2)"
  end
  if value == "3" then
    return "Level: Level 3 (3)"
  end
  if value == "4" then
    return "Level: Level 4 (4)"
  end
  if value == "5" then
    return "Level: Level 5 (5)"
  end
  if value == "A" then
    return "Level: Implied (A)"
  end

  return "Level: Unknown("..value..")"
end

-- Dissect: Level
tmx_mx_solatcpretransmission_hsvf_v1_11.level.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.level.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.level.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.level, range, value, display)

  return offset + length, value
end

-- Level Of Market Depth
tmx_mx_solatcpretransmission_hsvf_v1_11.level_of_market_depth = {}

-- Size: Level Of Market Depth
tmx_mx_solatcpretransmission_hsvf_v1_11.level_of_market_depth.size = 1

-- Display: Level Of Market Depth
tmx_mx_solatcpretransmission_hsvf_v1_11.level_of_market_depth.display = function(value)
  if value == "1" then
    return "Level Of Market Depth: Level 1 (1)"
  end
  if value == "2" then
    return "Level Of Market Depth: Level 2 (2)"
  end
  if value == "3" then
    return "Level Of Market Depth: Level 3 (3)"
  end
  if value == "4" then
    return "Level Of Market Depth: Level 4 (4)"
  end
  if value == "5" then
    return "Level Of Market Depth: Level 5 (5)"
  end
  if value == "A" then
    return "Level Of Market Depth: Implied (A)"
  end

  return "Level Of Market Depth: Unknown("..value..")"
end

-- Dissect: Level Of Market Depth
tmx_mx_solatcpretransmission_hsvf_v1_11.level_of_market_depth.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.level_of_market_depth.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.level_of_market_depth.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.level_of_market_depth, range, value, display)

  return offset + length, value
end

-- Line
tmx_mx_solatcpretransmission_hsvf_v1_11.line = {}

-- Size: Line
tmx_mx_solatcpretransmission_hsvf_v1_11.line.size = 2

-- Display: Line
tmx_mx_solatcpretransmission_hsvf_v1_11.line.display = function(value)
  if value == "O1" then
    return "Line: O 1 (O1)"
  end
  if value == "O2" then
    return "Line: O 2 (O2)"
  end
  if value == "F1" then
    return "Line: F 1 (F1)"
  end
  if value == "F2" then
    return "Line: F 2 (F2)"
  end

  return "Line: Unknown("..value..")"
end

-- Dissect: Line
tmx_mx_solatcpretransmission_hsvf_v1_11.line.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.line.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.line.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.line, range, value, display)

  return offset + length, value
end

-- Login Timestamp
tmx_mx_solatcpretransmission_hsvf_v1_11.login_timestamp = {}

-- Size: Login Timestamp
tmx_mx_solatcpretransmission_hsvf_v1_11.login_timestamp.size = 6

-- Display: Login Timestamp
tmx_mx_solatcpretransmission_hsvf_v1_11.login_timestamp.display = function(value)
  return "Login Timestamp: "..value
end

-- Dissect: Login Timestamp
tmx_mx_solatcpretransmission_hsvf_v1_11.login_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.login_timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.login_timestamp, range, value, "Login Timestamp: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Login Timestamp is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.login_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.login_timestamp, range, value, display)

  return offset + length, value
end

-- Low Price
tmx_mx_solatcpretransmission_hsvf_v1_11.low_price = {}

-- Size: Low Price
tmx_mx_solatcpretransmission_hsvf_v1_11.low_price.size = 6

-- Display: Low Price
tmx_mx_solatcpretransmission_hsvf_v1_11.low_price.display = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
tmx_mx_solatcpretransmission_hsvf_v1_11.low_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.low_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.low_price, range, value, "Low Price: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Low Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.low_price, range, value, display)

  return offset + length, value
end

-- Low Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.low_price_fraction_indicator = {}

-- Size: Low Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.low_price_fraction_indicator.size = 1

-- Display: Low Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.low_price_fraction_indicator.display = function(value)
  if value == "0" then
    return "Low Price Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Low Price Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Low Price Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Low Price Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Low Price Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Low Price Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Low Price Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Low Price Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Low Price Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Low Price Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Low Price Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Low Price Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Low Price Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Low Price Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Low Price Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Low Price Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Low Price Fraction Indicator: Negative Million (G)"
  end

  return "Low Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Low Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.low_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.low_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.low_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.low_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Low Price Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.low_price_sign = {}

-- Size: Low Price Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.low_price_sign.size = 1

-- Display: Low Price Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.low_price_sign.display = function(value)
  if value == "+" then
    return "Low Price Sign: Positive (+)"
  end
  if value == "-" then
    return "Low Price Sign: Negative (-)"
  end

  return "Low Price Sign: Unknown("..value..")"
end

-- Dissect: Low Price Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.low_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.low_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.low_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.low_price_sign, range, value, display)

  return offset + length, value
end

-- Market Flow
tmx_mx_solatcpretransmission_hsvf_v1_11.market_flow = {}

-- Size: Market Flow
tmx_mx_solatcpretransmission_hsvf_v1_11.market_flow.size = 2

-- Display: Market Flow
tmx_mx_solatcpretransmission_hsvf_v1_11.market_flow.display = function(value)
  return "Market Flow: "..value
end

-- Dissect: Market Flow
tmx_mx_solatcpretransmission_hsvf_v1_11.market_flow.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.market_flow.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.market_flow.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.market_flow, range, value, display)

  return offset + length, value
end

-- Market Flow Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.market_flow_indicator = {}

-- Size: Market Flow Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.market_flow_indicator.size = 2

-- Display: Market Flow Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.market_flow_indicator.display = function(value)
  return "Market Flow Indicator: "..value
end

-- Dissect: Market Flow Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.market_flow_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.market_flow_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.market_flow_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.market_flow_indicator, range, value, display)

  return offset + length, value
end

-- Market Price Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.market_price_indicator = {}

-- Size: Market Price Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.market_price_indicator.size = 1

-- Display: Market Price Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.market_price_indicator.display = function(value)
  if value == "A" then
    return "Market Price Indicator: Asoftrade (A)"
  end
  if value == "B" then
    return "Market Price Indicator: Block Trade (B)"
  end
  if value == " " then
    return "Market Price Indicator: Actual Transaction Took Place (<whitespace>)"
  end
  if value == "D" then
    return "Market Price Indicator: Crossed (D)"
  end
  if value == "E" then
    return "Market Price Indicator: Efp Reporting (E)"
  end
  if value == "G" then
    return "Market Price Indicator: Contingent Trade (G)"
  end
  if value == "H" then
    return "Market Price Indicator: Riskless Basis Cross (H)"
  end
  if value == "I" then
    return "Market Price Indicator: Implied Trade (I)"
  end
  if value == "J" then
    return "Market Price Indicator: Delta Trade (J)"
  end
  if value == "K" then
    return "Market Price Indicator: Committed Block (K)"
  end
  if value == "L" then
    return "Market Price Indicator: Late Trade (L)"
  end
  if value == "M" then
    return "Market Price Indicator: For Future Use (M)"
  end
  if value == "N" then
    return "Market Price Indicator: For Future Use (N)"
  end
  if value == "P" then
    return "Market Price Indicator: Strategy Reporting (P)"
  end
  if value == "Q" then
    return "Market Price Indicator: For Future Use (Q)"
  end
  if value == "R" then
    return "Market Price Indicator: Efr Reporting (R)"
  end
  if value == "S" then
    return "Market Price Indicator: Reference Price (S)"
  end
  if value == "t" then
    return "Market Price Indicator: Trade Correction (t)"
  end
  if value == "T" then
    return "Market Price Indicator: Committed (T)"
  end
  if value == "U" then
    return "Market Price Indicator: Basis On Close (U)"
  end
  if value == "V" then
    return "Market Price Indicator: Price Volume Adjustment (V)"
  end
  if value == "Y" then
    return "Market Price Indicator: For Future Use (Y)"
  end
  if value == "Z" then
    return "Market Price Indicator: For Future Use (Z)"
  end

  return "Market Price Indicator: Unknown("..value..")"
end

-- Dissect: Market Price Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.market_price_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.market_price_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.market_price_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.market_price_indicator, range, value, display)

  return offset + length, value
end

-- Maximum Number Of Contracts Per Order
tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_number_of_contracts_per_order = {}

-- Size: Maximum Number Of Contracts Per Order
tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_number_of_contracts_per_order.size = 6

-- Display: Maximum Number Of Contracts Per Order
tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_number_of_contracts_per_order.display = function(value)
  return "Maximum Number Of Contracts Per Order: "..value
end

-- Dissect: Maximum Number Of Contracts Per Order
tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_number_of_contracts_per_order.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_number_of_contracts_per_order.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_number_of_contracts_per_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.maximum_number_of_contracts_per_order, range, value, display)

  return offset + length, value
end

-- Maximum Threshold Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_fraction_indicator = {}

-- Size: Maximum Threshold Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_fraction_indicator.size = 1

-- Display: Maximum Threshold Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_fraction_indicator.display = function(value)
  if value == "0" then
    return "Maximum Threshold Price Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Maximum Threshold Price Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Maximum Threshold Price Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Maximum Threshold Price Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Maximum Threshold Price Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Maximum Threshold Price Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Maximum Threshold Price Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Maximum Threshold Price Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Maximum Threshold Price Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Maximum Threshold Price Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Maximum Threshold Price Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Maximum Threshold Price Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Maximum Threshold Price Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Maximum Threshold Price Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Maximum Threshold Price Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Maximum Threshold Price Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Maximum Threshold Price Fraction Indicator: Negative Million (G)"
  end

  return "Maximum Threshold Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Maximum Threshold Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.maximum_threshold_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Maximum Threshold Price Futures
tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_futures = {}

-- Size: Maximum Threshold Price Futures
tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_futures.size = 6

-- Display: Maximum Threshold Price Futures
tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_futures.display = function(value)
  return "Maximum Threshold Price Futures: "..value
end

-- Dissect: Maximum Threshold Price Futures
tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_futures.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_futures.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.maximum_threshold_price_futures, range, value, "Maximum Threshold Price Futures: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Maximum Threshold Price Futures is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_futures.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.maximum_threshold_price_futures, range, value, display)

  return offset + length, value
end

-- Maximum Threshold Price Options
tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_options = {}

-- Size: Maximum Threshold Price Options
tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_options.size = 6

-- Display: Maximum Threshold Price Options
tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_options.display = function(value)
  return "Maximum Threshold Price Options: "..value
end

-- Dissect: Maximum Threshold Price Options
tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_options.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_options.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.maximum_threshold_price_options, range, value, "Maximum Threshold Price Options: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Maximum Threshold Price Options is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_options.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.maximum_threshold_price_options, range, value, display)

  return offset + length, value
end

-- Message Type
tmx_mx_solatcpretransmission_hsvf_v1_11.message_type = {}

-- Size: Message Type
tmx_mx_solatcpretransmission_hsvf_v1_11.message_type.size = 2

-- Display: Message Type
tmx_mx_solatcpretransmission_hsvf_v1_11.message_type.display = function(value)
  if value == "C" then
    return "Message Type: Option Trade Message (C)"
  end
  if value == "CB" then
    return "Message Type: Future Options Trade Message (CB)"
  end
  if value == "CF" then
    return "Message Type: Futures Trade Message (CF)"
  end
  if value == "CS" then
    return "Message Type: Strategy Trade Message (CS)"
  end
  if value == "CW" then
    return "Message Type: Swap Future Trade Message (CW)"
  end
  if value == "D" then
    return "Message Type: Option Rfq Message (D)"
  end
  if value == "DB" then
    return "Message Type: Future Options Rfq Message (DB)"
  end
  if value == "DF" then
    return "Message Type: Futures Rfq Message (DF)"
  end
  if value == "DS" then
    return "Message Type: Strategy Rfq Message (DS)"
  end
  if value == "DW" then
    return "Message Type: Swap Future Rfq Message (DW)"
  end
  if value == "E" then
    return "Message Type: Instrument Schedule Notice Option Message (E)"
  end
  if value == "EB" then
    return "Message Type: Instrument Schedule Notice Futures Option Message (EB)"
  end
  if value == "EF" then
    return "Message Type: Instrument Schedule Notice Future Message (EF)"
  end
  if value == "ES" then
    return "Message Type: Instrument Schedule Notice Strategy Message (ES)"
  end
  if value == "EW" then
    return "Message Type: Instrument Schedule Notice Swap Future Message (EW)"
  end
  if value == "F" then
    return "Message Type: Option Quote Message (F)"
  end
  if value == "FB" then
    return "Message Type: Future Options Quote Message (FB)"
  end
  if value == "FF" then
    return "Message Type: Futures Quote Message (FF)"
  end
  if value == "FS" then
    return "Message Type: Strategy Quote Message (FS)"
  end
  if value == "FW" then
    return "Message Type: Swap Future Quote Message (FW)"
  end
  if value == "H" then
    return "Message Type: Option Market Depth Message (H)"
  end
  if value == "HB" then
    return "Message Type: Future Options Market Depth Message (HB)"
  end
  if value == "HF" then
    return "Message Type: Futures Market Depth Message (HF)"
  end
  if value == "HS" then
    return "Message Type: Strategy Market Depth Message (HS)"
  end
  if value == "HW" then
    return "Message Type: Swap Future Market Depth Message (HW)"
  end
  if value == "I" then
    return "Message Type: Option Trade Cancellation Message (I)"
  end
  if value == "IB" then
    return "Message Type: Future Options Trade Cancellation Message (IB)"
  end
  if value == "IF" then
    return "Message Type: Futures Trade Cancellation Message (IF)"
  end
  if value == "IS" then
    return "Message Type: Strategy Trade Cancellation Message (IS)"
  end
  if value == "IW" then
    return "Message Type: Swap Future Trade Cancellation Message (IW)"
  end
  if value == "J" then
    return "Message Type: Option Instrument Keys Message (J)"
  end
  if value == "JB" then
    return "Message Type: Future Options Instrument Keys Message (JB)"
  end
  if value == "JE" then
    return "Message Type: Underlying Instrument Keys Message (JE)"
  end
  if value == "JF" then
    return "Message Type: Futures Instrument Keys Message (JF)"
  end
  if value == "JS" then
    return "Message Type: Strategy Instrument Keys Message (JS)"
  end
  if value == "JW" then
    return "Message Type: Swap Future Instrument Keys Message (JW)"
  end
  if value == "N" then
    return "Message Type: Option Summary Message (N)"
  end
  if value == "NB" then
    return "Message Type: Future Options Summary Message (NB)"
  end
  if value == "NF" then
    return "Message Type: Futures Summary Message (NF)"
  end
  if value == "NS" then
    return "Message Type: Strategy Summary Message (NS)"
  end
  if value == "NW" then
    return "Message Type: Swap Future Summary Message (NW)"
  end
  if value == "Q" then
    return "Message Type: Beginning Of Options Summary Message (Q)"
  end
  if value == "QB" then
    return "Message Type: Beginning Of Future Options Summary Message (QB)"
  end
  if value == "QF" then
    return "Message Type: Beginning Of Futures Summary Message (QF)"
  end
  if value == "QS" then
    return "Message Type: Beginning Of Strategy Summary Message (QS)"
  end
  if value == "QW" then
    return "Message Type: Swap Future Beginning Of Summary Message (QW)"
  end
  if value == "X" then
    return "Message Type: Option Trade Correction Message (X)"
  end
  if value == "XB" then
    return "Message Type: Future Options Trade Correction Message (XB)"
  end
  if value == "XF" then
    return "Message Type: Futures Trade Correction Message (XF)"
  end
  if value == "XS" then
    return "Message Type: Strategy Trade Correction Message (XS)"
  end
  if value == "XW" then
    return "Message Type: Swap Future Trade Correction Message (XW)"
  end
  if value == "GR" then
    return "Message Type: Group Status Message (GR)"
  end
  if value == "GS" then
    return "Message Type: Group Status Strategies Message (GS)"
  end
  if value == "L" then
    return "Message Type: Bulletins Message (L)"
  end
  if value == "S" then
    return "Message Type: End Of Sales Message (S)"
  end
  if value == "TT" then
    return "Message Type: Tick Table Message (TT)"
  end
  if value == "U" then
    return "Message Type: End Of Transmission Message (U)"
  end
  if value == "V" then
    return "Message Type: Circuit Assurance Message (V)"
  end
  if value == "Z" then
    return "Message Type: Timebeat Message (Z)"
  end
  if value == "KI" then
    return "Message Type: Login Acknowledgement Message (KI)"
  end
  if value == "KO" then
    return "Message Type: Logout Acknowledgement Message (KO)"
  end
  if value == "RB" then
    return "Message Type: Retransmission Begin Message (RB)"
  end
  if value == "RE" then
    return "Message Type: Retransmission End Message (RE)"
  end
  if value == "ER" then
    return "Message Type: Error Message (ER)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
tmx_mx_solatcpretransmission_hsvf_v1_11.message_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.message_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.message_type, range, value, display)

  return offset + length, value
end

-- Min Price
tmx_mx_solatcpretransmission_hsvf_v1_11.min_price = {}

-- Size: Min Price
tmx_mx_solatcpretransmission_hsvf_v1_11.min_price.size = 6

-- Display: Min Price
tmx_mx_solatcpretransmission_hsvf_v1_11.min_price.display = function(value)
  return "Min Price: "..value
end

-- Dissect: Min Price
tmx_mx_solatcpretransmission_hsvf_v1_11.min_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.min_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.min_price, range, value, "Min Price: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Min Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.min_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.min_price, range, value, display)

  return offset + length, value
end

-- Min Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.min_price_fraction_indicator = {}

-- Size: Min Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.min_price_fraction_indicator.size = 1

-- Display: Min Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.min_price_fraction_indicator.display = function(value)
  if value == "0" then
    return "Min Price Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Min Price Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Min Price Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Min Price Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Min Price Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Min Price Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Min Price Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Min Price Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Min Price Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Min Price Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Min Price Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Min Price Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Min Price Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Min Price Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Min Price Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Min Price Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Min Price Fraction Indicator: Negative Million (G)"
  end

  return "Min Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Min Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.min_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.min_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.min_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.min_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Minimum Number Of Contracts Per Order
tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_number_of_contracts_per_order = {}

-- Size: Minimum Number Of Contracts Per Order
tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_number_of_contracts_per_order.size = 6

-- Display: Minimum Number Of Contracts Per Order
tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_number_of_contracts_per_order.display = function(value)
  return "Minimum Number Of Contracts Per Order: "..value
end

-- Dissect: Minimum Number Of Contracts Per Order
tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_number_of_contracts_per_order.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_number_of_contracts_per_order.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_number_of_contracts_per_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.minimum_number_of_contracts_per_order, range, value, display)

  return offset + length, value
end

-- Minimum Threshold Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_fraction_indicator = {}

-- Size: Minimum Threshold Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_fraction_indicator.size = 1

-- Display: Minimum Threshold Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_fraction_indicator.display = function(value)
  if value == "0" then
    return "Minimum Threshold Price Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Minimum Threshold Price Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Minimum Threshold Price Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Minimum Threshold Price Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Minimum Threshold Price Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Minimum Threshold Price Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Minimum Threshold Price Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Minimum Threshold Price Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Minimum Threshold Price Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Minimum Threshold Price Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Minimum Threshold Price Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Minimum Threshold Price Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Minimum Threshold Price Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Minimum Threshold Price Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Minimum Threshold Price Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Minimum Threshold Price Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Minimum Threshold Price Fraction Indicator: Negative Million (G)"
  end

  return "Minimum Threshold Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Minimum Threshold Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.minimum_threshold_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Minimum Threshold Price Futures
tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_futures = {}

-- Size: Minimum Threshold Price Futures
tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_futures.size = 6

-- Display: Minimum Threshold Price Futures
tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_futures.display = function(value)
  return "Minimum Threshold Price Futures: "..value
end

-- Dissect: Minimum Threshold Price Futures
tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_futures.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_futures.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.minimum_threshold_price_futures, range, value, "Minimum Threshold Price Futures: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Minimum Threshold Price Futures is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_futures.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.minimum_threshold_price_futures, range, value, display)

  return offset + length, value
end

-- Minimum Threshold Price Options
tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_options = {}

-- Size: Minimum Threshold Price Options
tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_options.size = 6

-- Display: Minimum Threshold Price Options
tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_options.display = function(value)
  return "Minimum Threshold Price Options: "..value
end

-- Dissect: Minimum Threshold Price Options
tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_options.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_options.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.minimum_threshold_price_options, range, value, "Minimum Threshold Price Options: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Minimum Threshold Price Options is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_options.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.minimum_threshold_price_options, range, value, display)

  return offset + length, value
end

-- Net Change
tmx_mx_solatcpretransmission_hsvf_v1_11.net_change = {}

-- Size: Net Change
tmx_mx_solatcpretransmission_hsvf_v1_11.net_change.size = 6

-- Display: Net Change
tmx_mx_solatcpretransmission_hsvf_v1_11.net_change.display = function(value)
  return "Net Change: "..value
end

-- Dissect: Net Change
tmx_mx_solatcpretransmission_hsvf_v1_11.net_change.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.net_change, range, value, "Net Change: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Net Change is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.net_change, range, value, display)

  return offset + length, value
end

-- Net Change Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator = {}

-- Size: Net Change Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.size = 1

-- Display: Net Change Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.display = function(value)
  if value == "0" then
    return "Net Change Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Net Change Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Net Change Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Net Change Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Net Change Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Net Change Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Net Change Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Net Change Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Net Change Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Net Change Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Net Change Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Net Change Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Net Change Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Net Change Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Net Change Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Net Change Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Net Change Fraction Indicator: Negative Million (G)"
  end

  return "Net Change Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Net Change Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.net_change_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Net Change Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign = {}

-- Size: Net Change Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.size = 1

-- Display: Net Change Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.display = function(value)
  if value == "+" then
    return "Net Change Sign: Positive (+)"
  end
  if value == "-" then
    return "Net Change Sign: Negative (-)"
  end

  return "Net Change Sign: Unknown("..value..")"
end

-- Dissect: Net Change Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.net_change_sign, range, value, display)

  return offset + length, value
end

-- Net Present Value A
tmx_mx_solatcpretransmission_hsvf_v1_11.net_present_value_a = {}

-- Size: Net Present Value A
tmx_mx_solatcpretransmission_hsvf_v1_11.net_present_value_a.size = 11

-- Display: Net Present Value A
tmx_mx_solatcpretransmission_hsvf_v1_11.net_present_value_a.display = function(value)
  return "Net Present Value A: "..value
end

-- Dissect: Net Present Value A
tmx_mx_solatcpretransmission_hsvf_v1_11.net_present_value_a.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.net_present_value_a.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.net_present_value_a, range, value, "Net Present Value A: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Net Present Value A is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.net_present_value_a.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.net_present_value_a, range, value, display)

  return offset + length, value
end

-- Net Present Value Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.net_present_value_fraction_indicator = {}

-- Size: Net Present Value Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.net_present_value_fraction_indicator.size = 1

-- Display: Net Present Value Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.net_present_value_fraction_indicator.display = function(value)
  if value == "0" then
    return "Net Present Value Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Net Present Value Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Net Present Value Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Net Present Value Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Net Present Value Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Net Present Value Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Net Present Value Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Net Present Value Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Net Present Value Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Net Present Value Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Net Present Value Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Net Present Value Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Net Present Value Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Net Present Value Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Net Present Value Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Net Present Value Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Net Present Value Fraction Indicator: Negative Million (G)"
  end

  return "Net Present Value Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Net Present Value Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.net_present_value_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.net_present_value_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.net_present_value_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.net_present_value_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Next Payment Date
tmx_mx_solatcpretransmission_hsvf_v1_11.next_payment_date = {}

-- Size: Next Payment Date
tmx_mx_solatcpretransmission_hsvf_v1_11.next_payment_date.size = 6

-- Display: Next Payment Date
tmx_mx_solatcpretransmission_hsvf_v1_11.next_payment_date.display = function(value)
  return "Next Payment Date: "..value
end

-- Dissect: Next Payment Date
tmx_mx_solatcpretransmission_hsvf_v1_11.next_payment_date.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.next_payment_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.next_payment_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.next_payment_date, range, value, display)

  return offset + length, value
end

-- Next Reset Date
tmx_mx_solatcpretransmission_hsvf_v1_11.next_reset_date = {}

-- Size: Next Reset Date
tmx_mx_solatcpretransmission_hsvf_v1_11.next_reset_date.size = 6

-- Display: Next Reset Date
tmx_mx_solatcpretransmission_hsvf_v1_11.next_reset_date.display = function(value)
  return "Next Reset Date: "..value
end

-- Dissect: Next Reset Date
tmx_mx_solatcpretransmission_hsvf_v1_11.next_reset_date.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.next_reset_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.next_reset_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.next_reset_date, range, value, display)

  return offset + length, value
end

-- Notional Principal Amount
tmx_mx_solatcpretransmission_hsvf_v1_11.notional_principal_amount = {}

-- Size: Notional Principal Amount
tmx_mx_solatcpretransmission_hsvf_v1_11.notional_principal_amount.size = 8

-- Display: Notional Principal Amount
tmx_mx_solatcpretransmission_hsvf_v1_11.notional_principal_amount.display = function(value)
  return "Notional Principal Amount: "..value
end

-- Dissect: Notional Principal Amount
tmx_mx_solatcpretransmission_hsvf_v1_11.notional_principal_amount.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.notional_principal_amount.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.notional_principal_amount, range, value, "Notional Principal Amount: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Notional Principal Amount is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.notional_principal_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.notional_principal_amount, range, value, display)

  return offset + length, value
end

-- Notional Principal Amount Faction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.notional_principal_amount_faction_indicator = {}

-- Size: Notional Principal Amount Faction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.notional_principal_amount_faction_indicator.size = 1

-- Display: Notional Principal Amount Faction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.notional_principal_amount_faction_indicator.display = function(value)
  if value == "0" then
    return "Notional Principal Amount Faction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Notional Principal Amount Faction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Notional Principal Amount Faction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Notional Principal Amount Faction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Notional Principal Amount Faction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Notional Principal Amount Faction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Notional Principal Amount Faction Indicator: Million (6)"
  end
  if value == "7" then
    return "Notional Principal Amount Faction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Notional Principal Amount Faction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Notional Principal Amount Faction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Notional Principal Amount Faction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Notional Principal Amount Faction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Notional Principal Amount Faction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Notional Principal Amount Faction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Notional Principal Amount Faction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Notional Principal Amount Faction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Notional Principal Amount Faction Indicator: Negative Million (G)"
  end

  return "Notional Principal Amount Faction Indicator: Unknown("..value..")"
end

-- Dissect: Notional Principal Amount Faction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.notional_principal_amount_faction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.notional_principal_amount_faction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.notional_principal_amount_faction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.notional_principal_amount_faction_indicator, range, value, display)

  return offset + length, value
end

-- Number Of Ask Orders
tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_ask_orders = {}

-- Size: Number Of Ask Orders
tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_ask_orders.size = 2

-- Display: Number Of Ask Orders
tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_ask_orders.display = function(value, buffer, offset, packet, parent)
  return "Number Of Ask Orders: "..string.format("%.0f", value)
end

-- Dissect: Number Of Ask Orders
tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_ask_orders.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_ask_orders.size
  local range = buffer(offset, length)
  local text = range:string()
  local powers = { ["C"] = 2, ["D"] = 3, ["E"] = 4, ["F"] = 5, ["G"] = 6, ["H"] = 7, ["I"] = 8, ["J"] = 9 }
  local value = 0
  local power = 0

  for index = 1, #text do
    local character = text:sub(index, index)
    if powers[character] then
      power = powers[character]
    else
      value = value * 10 + (tonumber(character) or 0)
    end
  end

  value = value * (10 ^ power)

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_ask_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.number_of_ask_orders, range, value, display)

  return offset + length, value
end

-- Number Of Bid Orders
tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_bid_orders = {}

-- Size: Number Of Bid Orders
tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_bid_orders.size = 2

-- Display: Number Of Bid Orders
tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_bid_orders.display = function(value, buffer, offset, packet, parent)
  return "Number Of Bid Orders: "..string.format("%.0f", value)
end

-- Dissect: Number Of Bid Orders
tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_bid_orders.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_bid_orders.size
  local range = buffer(offset, length)
  local text = range:string()
  local powers = { ["C"] = 2, ["D"] = 3, ["E"] = 4, ["F"] = 5, ["G"] = 6, ["H"] = 7, ["I"] = 8, ["J"] = 9 }
  local value = 0
  local power = 0

  for index = 1, #text do
    local character = text:sub(index, index)
    if powers[character] then
      power = powers[character]
    else
      value = value * 10 + (tonumber(character) or 0)
    end
  end

  value = value * (10 ^ power)

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_bid_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.number_of_bid_orders, range, value, display)

  return offset + length, value
end

-- Number Of Entries
tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_entries = {}

-- Size: Number Of Entries
tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_entries.size = 2

-- Display: Number Of Entries
tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_entries.display = function(value)
  return "Number Of Entries: "..value
end

-- Dissect: Number Of Entries
tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_entries.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_entries.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.number_of_entries, range, value, "Number Of Entries: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Number Of Entries is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.number_of_entries, range, value, display)

  return offset + length, value
end

-- Number Of Legs
tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_legs = {}

-- Size: Number Of Legs
tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_legs.size = 2

-- Display: Number Of Legs
tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_legs.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.number_of_legs, range, value, "Number Of Legs: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Number Of Legs is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Number Of Level
tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_level = {}

-- Size: Number Of Level
tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_level.size = 1

-- Display: Number Of Level
tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_level.display = function(value)
  return "Number Of Level: "..value
end

-- Dissect: Number Of Level
tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_level.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_level.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.number_of_level, range, value, "Number Of Level: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Number Of Level is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.number_of_level, range, value, display)

  return offset + length, value
end

-- Open Interest
tmx_mx_solatcpretransmission_hsvf_v1_11.open_interest = {}

-- Size: Open Interest
tmx_mx_solatcpretransmission_hsvf_v1_11.open_interest.size = 7

-- Display: Open Interest
tmx_mx_solatcpretransmission_hsvf_v1_11.open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
tmx_mx_solatcpretransmission_hsvf_v1_11.open_interest.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.open_interest.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.open_interest, range, value, "Open Interest: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Open Interest is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Open Price
tmx_mx_solatcpretransmission_hsvf_v1_11.open_price = {}

-- Size: Open Price
tmx_mx_solatcpretransmission_hsvf_v1_11.open_price.size = 6

-- Display: Open Price
tmx_mx_solatcpretransmission_hsvf_v1_11.open_price.display = function(value)
  return "Open Price: "..value
end

-- Dissect: Open Price
tmx_mx_solatcpretransmission_hsvf_v1_11.open_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.open_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.open_price, range, value, "Open Price: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Open Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.open_price, range, value, display)

  return offset + length, value
end

-- Open Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.open_price_fraction_indicator = {}

-- Size: Open Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.open_price_fraction_indicator.size = 1

-- Display: Open Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.open_price_fraction_indicator.display = function(value)
  if value == "0" then
    return "Open Price Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Open Price Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Open Price Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Open Price Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Open Price Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Open Price Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Open Price Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Open Price Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Open Price Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Open Price Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Open Price Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Open Price Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Open Price Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Open Price Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Open Price Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Open Price Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Open Price Fraction Indicator: Negative Million (G)"
  end

  return "Open Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Open Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.open_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.open_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.open_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.open_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Open Price Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.open_price_sign = {}

-- Size: Open Price Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.open_price_sign.size = 1

-- Display: Open Price Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.open_price_sign.display = function(value)
  if value == "+" then
    return "Open Price Sign: Positive (+)"
  end
  if value == "-" then
    return "Open Price Sign: Negative (-)"
  end

  return "Open Price Sign: Unknown("..value..")"
end

-- Dissect: Open Price Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.open_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.open_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.open_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.open_price_sign, range, value, display)

  return offset + length, value
end

-- Opening Price
tmx_mx_solatcpretransmission_hsvf_v1_11.opening_price = {}

-- Size: Opening Price
tmx_mx_solatcpretransmission_hsvf_v1_11.opening_price.size = 6

-- Display: Opening Price
tmx_mx_solatcpretransmission_hsvf_v1_11.opening_price.display = function(value)
  return "Opening Price: "..value
end

-- Dissect: Opening Price
tmx_mx_solatcpretransmission_hsvf_v1_11.opening_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.opening_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.opening_price, range, value, "Opening Price: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Opening Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.opening_price, range, value, display)

  return offset + length, value
end

-- Opening Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.opening_price_fraction_indicator = {}

-- Size: Opening Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.opening_price_fraction_indicator.size = 1

-- Display: Opening Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.opening_price_fraction_indicator.display = function(value)
  if value == "0" then
    return "Opening Price Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Opening Price Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Opening Price Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Opening Price Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Opening Price Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Opening Price Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Opening Price Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Opening Price Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Opening Price Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Opening Price Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Opening Price Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Opening Price Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Opening Price Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Opening Price Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Opening Price Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Opening Price Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Opening Price Fraction Indicator: Negative Million (G)"
  end

  return "Opening Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Opening Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.opening_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.opening_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.opening_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.opening_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Option Marker
tmx_mx_solatcpretransmission_hsvf_v1_11.option_marker = {}

-- Size: Option Marker
tmx_mx_solatcpretransmission_hsvf_v1_11.option_marker.size = 2

-- Display: Option Marker
tmx_mx_solatcpretransmission_hsvf_v1_11.option_marker.display = function(value)
  if value == "B" then
    return "Option Marker: Trading In British Pound (B)"
  end
  if value == "C" then
    return "Option Marker: Trading In Canadian Dollar (C)"
  end
  if value == "D" then
    return "Option Marker: Danish Krone (D)"
  end
  if value == "E" then
    return "Option Marker: Trading In Swiss Franc (E)"
  end
  if value == "F" then
    return "Option Marker: Trading In Euro (F)"
  end
  if value == "N" then
    return "Option Marker: Norwegian Krone (N)"
  end
  if value == "S" then
    return "Option Marker: Swedish Krona (S)"
  end
  if value == "U" then
    return "Option Marker: Trading In Us Dollar (U)"
  end
  if value == "Y" then
    return "Option Marker: Trading In Japanese Yen (Y)"
  end
  if value == "X" then
    return "Option Marker: British Pence (X)"
  end

  return "Option Marker: Unknown("..value..")"
end

-- Dissect: Option Marker
tmx_mx_solatcpretransmission_hsvf_v1_11.option_marker.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.option_marker.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.option_marker.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.option_marker, range, value, display)

  return offset + length, value
end

-- Option Type
tmx_mx_solatcpretransmission_hsvf_v1_11.option_type = {}

-- Size: Option Type
tmx_mx_solatcpretransmission_hsvf_v1_11.option_type.size = 1

-- Display: Option Type
tmx_mx_solatcpretransmission_hsvf_v1_11.option_type.display = function(value)
  if value == "A" then
    return "Option Type: American (A)"
  end
  if value == "E" then
    return "Option Type: European (E)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
tmx_mx_solatcpretransmission_hsvf_v1_11.option_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.option_type, range, value, display)

  return offset + length, value
end

-- Payment Frequency
tmx_mx_solatcpretransmission_hsvf_v1_11.payment_frequency = {}

-- Size: Payment Frequency
tmx_mx_solatcpretransmission_hsvf_v1_11.payment_frequency.size = 2

-- Display: Payment Frequency
tmx_mx_solatcpretransmission_hsvf_v1_11.payment_frequency.display = function(value)
  if value == "2W" then
    return "Payment Frequency: Two Weeks (2W)"
  end
  if value == "1M" then
    return "Payment Frequency: One Month (1M)"
  end
  if value == "3M" then
    return "Payment Frequency: Three Months (3M)"
  end
  if value == "6M" then
    return "Payment Frequency: Six Months (6M)"
  end
  if value == "1Y" then
    return "Payment Frequency: One Year (1Y)"
  end

  return "Payment Frequency: Unknown("..value..")"
end

-- Dissect: Payment Frequency
tmx_mx_solatcpretransmission_hsvf_v1_11.payment_frequency.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.payment_frequency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.payment_frequency.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.payment_frequency, range, value, display)

  return offset + length, value
end

-- Previous Reset Date
tmx_mx_solatcpretransmission_hsvf_v1_11.previous_reset_date = {}

-- Size: Previous Reset Date
tmx_mx_solatcpretransmission_hsvf_v1_11.previous_reset_date.size = 6

-- Display: Previous Reset Date
tmx_mx_solatcpretransmission_hsvf_v1_11.previous_reset_date.display = function(value)
  return "Previous Reset Date: "..value
end

-- Dissect: Previous Reset Date
tmx_mx_solatcpretransmission_hsvf_v1_11.previous_reset_date.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.previous_reset_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.previous_reset_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.previous_reset_date, range, value, display)

  return offset + length, value
end

-- Previous Reset Rate
tmx_mx_solatcpretransmission_hsvf_v1_11.previous_reset_rate = {}

-- Size: Previous Reset Rate
tmx_mx_solatcpretransmission_hsvf_v1_11.previous_reset_rate.size = 6

-- Display: Previous Reset Rate
tmx_mx_solatcpretransmission_hsvf_v1_11.previous_reset_rate.display = function(value)
  return "Previous Reset Rate: "..value
end

-- Dissect: Previous Reset Rate
tmx_mx_solatcpretransmission_hsvf_v1_11.previous_reset_rate.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.previous_reset_rate.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.previous_reset_rate, range, value, "Previous Reset Rate: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Previous Reset Rate is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.previous_reset_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.previous_reset_rate, range, value, display)

  return offset + length, value
end

-- Previous Reset Rate Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.previous_reset_rate_fraction_indicator = {}

-- Size: Previous Reset Rate Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.previous_reset_rate_fraction_indicator.size = 1

-- Display: Previous Reset Rate Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.previous_reset_rate_fraction_indicator.display = function(value)
  if value == "0" then
    return "Previous Reset Rate Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Previous Reset Rate Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Previous Reset Rate Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Previous Reset Rate Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Previous Reset Rate Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Previous Reset Rate Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Previous Reset Rate Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Previous Reset Rate Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Previous Reset Rate Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Previous Reset Rate Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Previous Reset Rate Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Previous Reset Rate Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Previous Reset Rate Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Previous Reset Rate Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Previous Reset Rate Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Previous Reset Rate Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Previous Reset Rate Fraction Indicator: Negative Million (G)"
  end

  return "Previous Reset Rate Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Previous Reset Rate Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.previous_reset_rate_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.previous_reset_rate_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.previous_reset_rate_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.previous_reset_rate_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Previous Settlement
tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement = {}

-- Size: Previous Settlement
tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement.size = 6

-- Display: Previous Settlement
tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement.display = function(value)
  return "Previous Settlement: "..value
end

-- Dissect: Previous Settlement
tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.previous_settlement, range, value, "Previous Settlement: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Previous Settlement is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.previous_settlement, range, value, display)

  return offset + length, value
end

-- Previous Settlement Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement_fraction_indicator = {}

-- Size: Previous Settlement Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement_fraction_indicator.size = 1

-- Display: Previous Settlement Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement_fraction_indicator.display = function(value)
  if value == "0" then
    return "Previous Settlement Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Previous Settlement Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Previous Settlement Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Previous Settlement Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Previous Settlement Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Previous Settlement Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Previous Settlement Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Previous Settlement Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Previous Settlement Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Previous Settlement Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Previous Settlement Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Previous Settlement Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Previous Settlement Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Previous Settlement Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Previous Settlement Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Previous Settlement Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Previous Settlement Fraction Indicator: Negative Million (G)"
  end

  return "Previous Settlement Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Previous Settlement Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.previous_settlement_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Previous Settlement Price
tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement_price = {}

-- Size: Previous Settlement Price
tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement_price.size = 6

-- Display: Previous Settlement Price
tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement_price.display = function(value)
  return "Previous Settlement Price: "..value
end

-- Dissect: Previous Settlement Price
tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.previous_settlement_price, range, value, "Previous Settlement Price: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Previous Settlement Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.previous_settlement_price, range, value, display)

  return offset + length, value
end

-- Previous Settlement Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement_price_fraction_indicator = {}

-- Size: Previous Settlement Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement_price_fraction_indicator.size = 1

-- Display: Previous Settlement Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement_price_fraction_indicator.display = function(value)
  if value == "0" then
    return "Previous Settlement Price Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Previous Settlement Price Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Previous Settlement Price Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Previous Settlement Price Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Previous Settlement Price Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Previous Settlement Price Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Previous Settlement Price Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Previous Settlement Price Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Previous Settlement Price Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Previous Settlement Price Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Previous Settlement Price Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Previous Settlement Price Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Previous Settlement Price Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Previous Settlement Price Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Previous Settlement Price Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Previous Settlement Price Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Previous Settlement Price Fraction Indicator: Negative Million (G)"
  end

  return "Previous Settlement Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Previous Settlement Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.previous_settlement_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Price
tmx_mx_solatcpretransmission_hsvf_v1_11.price = {}

-- Size: Price
tmx_mx_solatcpretransmission_hsvf_v1_11.price.size = 6

-- Display: Price
tmx_mx_solatcpretransmission_hsvf_v1_11.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
tmx_mx_solatcpretransmission_hsvf_v1_11.price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.price, range, value, "Price: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.price, range, value, display)

  return offset + length, value
end

-- Price Alignment Interest C
tmx_mx_solatcpretransmission_hsvf_v1_11.price_alignment_interest_c = {}

-- Size: Price Alignment Interest C
tmx_mx_solatcpretransmission_hsvf_v1_11.price_alignment_interest_c.size = 11

-- Display: Price Alignment Interest C
tmx_mx_solatcpretransmission_hsvf_v1_11.price_alignment_interest_c.display = function(value)
  return "Price Alignment Interest C: "..value
end

-- Dissect: Price Alignment Interest C
tmx_mx_solatcpretransmission_hsvf_v1_11.price_alignment_interest_c.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.price_alignment_interest_c.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.price_alignment_interest_c, range, value, "Price Alignment Interest C: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Price Alignment Interest C is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.price_alignment_interest_c.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.price_alignment_interest_c, range, value, display)

  return offset + length, value
end

-- Price Alignment Interest Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.price_alignment_interest_fraction_indicator = {}

-- Size: Price Alignment Interest Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.price_alignment_interest_fraction_indicator.size = 1

-- Display: Price Alignment Interest Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.price_alignment_interest_fraction_indicator.display = function(value)
  if value == "0" then
    return "Price Alignment Interest Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Price Alignment Interest Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Price Alignment Interest Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Price Alignment Interest Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Price Alignment Interest Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Price Alignment Interest Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Price Alignment Interest Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Price Alignment Interest Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Price Alignment Interest Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Price Alignment Interest Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Price Alignment Interest Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Price Alignment Interest Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Price Alignment Interest Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Price Alignment Interest Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Price Alignment Interest Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Price Alignment Interest Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Price Alignment Interest Fraction Indicator: Negative Million (G)"
  end

  return "Price Alignment Interest Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Price Alignment Interest Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.price_alignment_interest_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.price_alignment_interest_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.price_alignment_interest_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.price_alignment_interest_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.price_fraction_indicator = {}

-- Size: Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.price_fraction_indicator.size = 1

-- Display: Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.price_fraction_indicator.display = function(value)
  if value == "0" then
    return "Price Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Price Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Price Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Price Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Price Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Price Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Price Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Price Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Price Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Price Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Price Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Price Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Price Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Price Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Price Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Price Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Price Fraction Indicator: Negative Million (G)"
  end

  return "Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Price Indicator Marker
tmx_mx_solatcpretransmission_hsvf_v1_11.price_indicator_marker = {}

-- Size: Price Indicator Marker
tmx_mx_solatcpretransmission_hsvf_v1_11.price_indicator_marker.size = 1

-- Display: Price Indicator Marker
tmx_mx_solatcpretransmission_hsvf_v1_11.price_indicator_marker.display = function(value)
  if value == "A" then
    return "Price Indicator Marker: Asoftrade (A)"
  end
  if value == "B" then
    return "Price Indicator Marker: Block Trade (B)"
  end
  if value == " " then
    return "Price Indicator Marker: Actual Transaction Took Place (<whitespace>)"
  end
  if value == "D" then
    return "Price Indicator Marker: Crossed (D)"
  end
  if value == "E" then
    return "Price Indicator Marker: Efp Reporting (E)"
  end
  if value == "G" then
    return "Price Indicator Marker: Contingent Trade (G)"
  end
  if value == "H" then
    return "Price Indicator Marker: Riskless Basis Cross (H)"
  end
  if value == "I" then
    return "Price Indicator Marker: Implied Trade (I)"
  end
  if value == "J" then
    return "Price Indicator Marker: Delta Trade (J)"
  end
  if value == "K" then
    return "Price Indicator Marker: Committed Block (K)"
  end
  if value == "L" then
    return "Price Indicator Marker: Late Trade (L)"
  end
  if value == "M" then
    return "Price Indicator Marker: For Future Use (M)"
  end
  if value == "N" then
    return "Price Indicator Marker: For Future Use (N)"
  end
  if value == "P" then
    return "Price Indicator Marker: Strategy Reporting (P)"
  end
  if value == "Q" then
    return "Price Indicator Marker: For Future Use (Q)"
  end
  if value == "R" then
    return "Price Indicator Marker: Efr Reporting (R)"
  end
  if value == "S" then
    return "Price Indicator Marker: Reference Price (S)"
  end
  if value == "t" then
    return "Price Indicator Marker: Trade Correction (t)"
  end
  if value == "T" then
    return "Price Indicator Marker: Committed (T)"
  end
  if value == "U" then
    return "Price Indicator Marker: Basis On Close (U)"
  end
  if value == "V" then
    return "Price Indicator Marker: Price Volume Adjustment (V)"
  end
  if value == "Y" then
    return "Price Indicator Marker: For Future Use (Y)"
  end
  if value == "Z" then
    return "Price Indicator Marker: For Future Use (Z)"
  end

  return "Price Indicator Marker: Unknown("..value..")"
end

-- Dissect: Price Indicator Marker
tmx_mx_solatcpretransmission_hsvf_v1_11.price_indicator_marker.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.price_indicator_marker.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.price_indicator_marker.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.price_indicator_marker, range, value, display)

  return offset + length, value
end

-- Protocol
tmx_mx_solatcpretransmission_hsvf_v1_11.protocol = {}

-- Size: Protocol
tmx_mx_solatcpretransmission_hsvf_v1_11.protocol.size = 2

-- Display: Protocol
tmx_mx_solatcpretransmission_hsvf_v1_11.protocol.display = function(value)
  if value == "D4" then
    return "Protocol: D 4 (D4)"
  end
  if value == "D5" then
    return "Protocol: D 5 (D5)"
  end

  return "Protocol: Unknown("..value..")"
end

-- Dissect: Protocol
tmx_mx_solatcpretransmission_hsvf_v1_11.protocol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.protocol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.protocol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.protocol, range, value, display)

  return offset + length, value
end

-- Pwd
tmx_mx_solatcpretransmission_hsvf_v1_11.pwd = {}

-- Size: Pwd
tmx_mx_solatcpretransmission_hsvf_v1_11.pwd.size = 16

-- Display: Pwd
tmx_mx_solatcpretransmission_hsvf_v1_11.pwd.display = function(value)
  return "Pwd: "..value
end

-- Dissect: Pwd
tmx_mx_solatcpretransmission_hsvf_v1_11.pwd.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.pwd.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.pwd.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.pwd, range, value, display)

  return offset + length, value
end

-- Reason
tmx_mx_solatcpretransmission_hsvf_v1_11.reason = {}

-- Size: Reason
tmx_mx_solatcpretransmission_hsvf_v1_11.reason.size = 1

-- Display: Reason
tmx_mx_solatcpretransmission_hsvf_v1_11.reason.display = function(value)
  if value == "S" then
    return "Reason: Start Of Day (S)"
  end
  if value == "E" then
    return "Reason: End Of Day (E)"
  end
  if value == "U" then
    return "Reason: Instrument New Or Update (U)"
  end
  if value == "C" then
    return "Reason: Trade Cancellation (C)"
  end

  return "Reason: Unknown("..value..")"
end

-- Dissect: Reason
tmx_mx_solatcpretransmission_hsvf_v1_11.reason.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.reason, range, value, display)

  return offset + length, value
end

-- Regular Bulletin Contents
tmx_mx_solatcpretransmission_hsvf_v1_11.regular_bulletin_contents = {}

-- Size: Regular Bulletin Contents
tmx_mx_solatcpretransmission_hsvf_v1_11.regular_bulletin_contents.size = 79

-- Display: Regular Bulletin Contents
tmx_mx_solatcpretransmission_hsvf_v1_11.regular_bulletin_contents.display = function(value)
  return "Regular Bulletin Contents: "..value
end

-- Dissect: Regular Bulletin Contents
tmx_mx_solatcpretransmission_hsvf_v1_11.regular_bulletin_contents.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.regular_bulletin_contents.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.regular_bulletin_contents.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.regular_bulletin_contents, range, value, display)

  return offset + length, value
end

-- Requested Market Side
tmx_mx_solatcpretransmission_hsvf_v1_11.requested_market_side = {}

-- Size: Requested Market Side
tmx_mx_solatcpretransmission_hsvf_v1_11.requested_market_side.size = 1

-- Display: Requested Market Side
tmx_mx_solatcpretransmission_hsvf_v1_11.requested_market_side.display = function(value)
  if value == "B" then
    return "Requested Market Side: Buy (B)"
  end
  if value == "S" then
    return "Requested Market Side: Sell (S)"
  end
  if value == "2" then
    return "Requested Market Side: Both (2)"
  end

  return "Requested Market Side: Unknown("..value..")"
end

-- Dissect: Requested Market Side
tmx_mx_solatcpretransmission_hsvf_v1_11.requested_market_side.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.requested_market_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.requested_market_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.requested_market_side, range, value, display)

  return offset + length, value
end

-- Requested Size
tmx_mx_solatcpretransmission_hsvf_v1_11.requested_size = {}

-- Size: Requested Size
tmx_mx_solatcpretransmission_hsvf_v1_11.requested_size.size = 8

-- Display: Requested Size
tmx_mx_solatcpretransmission_hsvf_v1_11.requested_size.display = function(value)
  return "Requested Size: "..value
end

-- Dissect: Requested Size
tmx_mx_solatcpretransmission_hsvf_v1_11.requested_size.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.requested_size.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.requested_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.requested_size, range, value, display)

  return offset + length, value
end

-- Reserved
tmx_mx_solatcpretransmission_hsvf_v1_11.reserved = {}

-- Size: Reserved
tmx_mx_solatcpretransmission_hsvf_v1_11.reserved.size = 1

-- Display: Reserved
tmx_mx_solatcpretransmission_hsvf_v1_11.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
tmx_mx_solatcpretransmission_hsvf_v1_11.reserved.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.reserved.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.reserved, range, value, display)

  return offset + length, value
end

-- Reset Frequency
tmx_mx_solatcpretransmission_hsvf_v1_11.reset_frequency = {}

-- Size: Reset Frequency
tmx_mx_solatcpretransmission_hsvf_v1_11.reset_frequency.size = 2

-- Display: Reset Frequency
tmx_mx_solatcpretransmission_hsvf_v1_11.reset_frequency.display = function(value)
  if value == "2W" then
    return "Reset Frequency: Two Weeks (2W)"
  end
  if value == "1M" then
    return "Reset Frequency: One Month (1M)"
  end
  if value == "3M" then
    return "Reset Frequency: Three Months (3M)"
  end
  if value == "6M" then
    return "Reset Frequency: Six Months (6M)"
  end
  if value == "1Y" then
    return "Reset Frequency: One Year (1Y)"
  end

  return "Reset Frequency: Unknown("..value..")"
end

-- Dissect: Reset Frequency
tmx_mx_solatcpretransmission_hsvf_v1_11.reset_frequency.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.reset_frequency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.reset_frequency.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.reset_frequency, range, value, display)

  return offset + length, value
end

-- Root Symbol
tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol = {}

-- Size: Root Symbol
tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.size = 6

-- Display: Root Symbol
tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.display = function(value)
  return "Root Symbol: "..value
end

-- Dissect: Root Symbol
tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.root_symbol, range, value, display)

  return offset + length, value
end

-- Root Symbol Group
tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol_group = {}

-- Size: Root Symbol Group
tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol_group.size = 6

-- Display: Root Symbol Group
tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol_group.display = function(value)
  return "Root Symbol Group: "..value
end

-- Dissect: Root Symbol Group
tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol_group.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.root_symbol_group, range, value, display)

  return offset + length, value
end

-- Root Symbol Swap Future
tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol_swap_future = {}

-- Size: Root Symbol Swap Future
tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol_swap_future.size = 6

-- Display: Root Symbol Swap Future
tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol_swap_future.display = function(value)
  return "Root Symbol Swap Future: "..value
end

-- Dissect: Root Symbol Swap Future
tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol_swap_future.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol_swap_future.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol_swap_future.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.root_symbol_swap_future, range, value, display)

  return offset + length, value
end

-- Scheduled Status Change Time
tmx_mx_solatcpretransmission_hsvf_v1_11.scheduled_status_change_time = {}

-- Size: Scheduled Status Change Time
tmx_mx_solatcpretransmission_hsvf_v1_11.scheduled_status_change_time.size = 6

-- Display: Scheduled Status Change Time
tmx_mx_solatcpretransmission_hsvf_v1_11.scheduled_status_change_time.display = function(value)
  return "Scheduled Status Change Time: "..value
end

-- Dissect: Scheduled Status Change Time
tmx_mx_solatcpretransmission_hsvf_v1_11.scheduled_status_change_time.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.scheduled_status_change_time.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scheduled_status_change_time, range, value, "Scheduled Status Change Time: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Scheduled Status Change Time is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.scheduled_status_change_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scheduled_status_change_time, range, value, display)

  return offset + length, value
end

-- Second Filler 1
tmx_mx_solatcpretransmission_hsvf_v1_11.second_filler_1 = {}

-- Size: Second Filler 1
tmx_mx_solatcpretransmission_hsvf_v1_11.second_filler_1.size = 1

-- Display: Second Filler 1
tmx_mx_solatcpretransmission_hsvf_v1_11.second_filler_1.display = function(value)
  return "Second Filler 1: "..value
end

-- Dissect: Second Filler 1
tmx_mx_solatcpretransmission_hsvf_v1_11.second_filler_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.second_filler_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.second_filler_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.second_filler_1, range, value, display)

  return offset + length, value
end

-- Sequence Number
tmx_mx_solatcpretransmission_hsvf_v1_11.sequence_number = {}

-- Size: Sequence Number
tmx_mx_solatcpretransmission_hsvf_v1_11.sequence_number.size = 9

-- Display: Sequence Number
tmx_mx_solatcpretransmission_hsvf_v1_11.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
tmx_mx_solatcpretransmission_hsvf_v1_11.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.sequence_number, range, value, "Sequence Number: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Series Status
tmx_mx_solatcpretransmission_hsvf_v1_11.series_status = {}

-- Size: Series Status
tmx_mx_solatcpretransmission_hsvf_v1_11.series_status.size = 1

-- Display: Series Status
tmx_mx_solatcpretransmission_hsvf_v1_11.series_status.display = function(value)
  if value == "Y" then
    return "Series Status: Preopening Phase (Y)"
  end
  if value == "O" then
    return "Series Status: Opening Phase (O)"
  end
  if value == "T" then
    return "Series Status: Opened For Trading (T)"
  end
  if value == "F" then
    return "Series Status: Forbidden Phase (F)"
  end
  if value == "E" then
    return "Series Status: Intervention Before Opening (E)"
  end
  if value == "H" then
    return "Series Status: Trading Halted (H)"
  end
  if value == "R" then
    return "Series Status: Reserved Phase (R)"
  end
  if value == "S" then
    return "Series Status: Suspended Phase (S)"
  end
  if value == "Z" then
    return "Series Status: Frozen (Z)"
  end
  if value == "A" then
    return "Series Status: Surveillance Intervention Phase (A)"
  end
  if value == "C" then
    return "Series Status: Endof Day Inquiries Phase (C)"
  end
  if value == " " then
    return "Series Status: If Not Used (<whitespace>)"
  end

  return "Series Status: Unknown("..value..")"
end

-- Dissect: Series Status
tmx_mx_solatcpretransmission_hsvf_v1_11.series_status.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.series_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.series_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.series_status, range, value, display)

  return offset + length, value
end

-- Settlement Price
tmx_mx_solatcpretransmission_hsvf_v1_11.settlement_price = {}

-- Size: Settlement Price
tmx_mx_solatcpretransmission_hsvf_v1_11.settlement_price.size = 6

-- Display: Settlement Price
tmx_mx_solatcpretransmission_hsvf_v1_11.settlement_price.display = function(value)
  return "Settlement Price: "..value
end

-- Dissect: Settlement Price
tmx_mx_solatcpretransmission_hsvf_v1_11.settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.settlement_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.settlement_price, range, value, "Settlement Price: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Settlement Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Settlement Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.settlement_price_fraction_indicator = {}

-- Size: Settlement Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.settlement_price_fraction_indicator.size = 1

-- Display: Settlement Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.settlement_price_fraction_indicator.display = function(value)
  if value == "0" then
    return "Settlement Price Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Settlement Price Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Settlement Price Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Settlement Price Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Settlement Price Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Settlement Price Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Settlement Price Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Settlement Price Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Settlement Price Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Settlement Price Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Settlement Price Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Settlement Price Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Settlement Price Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Settlement Price Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Settlement Price Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Settlement Price Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Settlement Price Fraction Indicator: Negative Million (G)"
  end

  return "Settlement Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Settlement Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.settlement_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.settlement_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.settlement_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.settlement_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Special Bulletin Contents
tmx_mx_solatcpretransmission_hsvf_v1_11.special_bulletin_contents = {}

-- Size: Special Bulletin Contents
tmx_mx_solatcpretransmission_hsvf_v1_11.special_bulletin_contents.size = 49

-- Display: Special Bulletin Contents
tmx_mx_solatcpretransmission_hsvf_v1_11.special_bulletin_contents.display = function(value)
  return "Special Bulletin Contents: "..value
end

-- Dissect: Special Bulletin Contents
tmx_mx_solatcpretransmission_hsvf_v1_11.special_bulletin_contents.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.special_bulletin_contents.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.special_bulletin_contents.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.special_bulletin_contents, range, value, display)

  return offset + length, value
end

-- Start
tmx_mx_solatcpretransmission_hsvf_v1_11.start = {}

-- Size: Start
tmx_mx_solatcpretransmission_hsvf_v1_11.start.size = 9

-- Display: Start
tmx_mx_solatcpretransmission_hsvf_v1_11.start.display = function(value)
  return "Start: "..value
end

-- Dissect: Start
tmx_mx_solatcpretransmission_hsvf_v1_11.start.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.start.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.start, range, value, "Start: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Start is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.start.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.start, range, value, display)

  return offset + length, value
end

-- Strategy Allow Implied
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_allow_implied = {}

-- Size: Strategy Allow Implied
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_allow_implied.size = 1

-- Display: Strategy Allow Implied
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_allow_implied.display = function(value)
  if value == "Y" then
    return "Strategy Allow Implied: Yes (Y)"
  end
  if value == "N" then
    return "Strategy Allow Implied: No (N)"
  end

  return "Strategy Allow Implied: Unknown("..value..")"
end

-- Dissect: Strategy Allow Implied
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_allow_implied.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_allow_implied.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_allow_implied.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strategy_allow_implied, range, value, display)

  return offset + length, value
end

-- Strategy Symbol
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_symbol = {}

-- Size: Strategy Symbol
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_symbol.size = 30

-- Display: Strategy Symbol
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_symbol.display = function(value)
  return "Strategy Symbol: "..value
end

-- Dissect: Strategy Symbol
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_symbol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strategy_symbol, range, value, display)

  return offset + length, value
end

-- Strike Price Currency
tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_currency = {}

-- Size: Strike Price Currency
tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_currency.size = 3

-- Display: Strike Price Currency
tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_currency.display = function(value)
  if value == "USD" then
    return "Strike Price Currency: Us (USD)"
  end
  if value == "CAD" then
    return "Strike Price Currency: Canadian (CAD)"
  end
  if value == "   " then
    return "Strike Price Currency: Not Provided (<whitespace>)"
  end

  return "Strike Price Currency: Unknown("..value..")"
end

-- Dissect: Strike Price Currency
tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_currency.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strike_price_currency, range, value, display)

  return offset + length, value
end

-- Strike Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator = {}

-- Size: Strike Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.size = 1

-- Display: Strike Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.display = function(value)
  if value == "0" then
    return "Strike Price Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Strike Price Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Strike Price Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Strike Price Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Strike Price Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Strike Price Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Strike Price Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Strike Price Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Strike Price Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Strike Price Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Strike Price Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Strike Price Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Strike Price Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Strike Price Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Strike Price Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Strike Price Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Strike Price Fraction Indicator: Negative Million (G)"
  end

  return "Strike Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Strike Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strike_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Strike Price Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_instrument = {}

-- Size: Strike Price Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_instrument.size = 7

-- Display: Strike Price Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_instrument.display = function(value)
  return "Strike Price Instrument: "..value
end

-- Dissect: Strike Price Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_instrument.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_instrument.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strike_price_instrument, range, value, "Strike Price Instrument: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Strike Price Instrument is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strike_price_instrument, range, value, display)

  return offset + length, value
end

-- Strike Price Schedule Notice
tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_schedule_notice = {}

-- Size: Strike Price Schedule Notice
tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_schedule_notice.size = 7

-- Display: Strike Price Schedule Notice
tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_schedule_notice.display = function(value)
  return "Strike Price Schedule Notice: "..value
end

-- Dissect: Strike Price Schedule Notice
tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_schedule_notice.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_schedule_notice.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strike_price_schedule_notice, range, value, "Strike Price Schedule Notice: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Strike Price Schedule Notice is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_schedule_notice.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strike_price_schedule_notice, range, value, display)

  return offset + length, value
end

-- Symbol
tmx_mx_solatcpretransmission_hsvf_v1_11.symbol = {}

-- Size: Symbol
tmx_mx_solatcpretransmission_hsvf_v1_11.symbol.size = 30

-- Display: Symbol
tmx_mx_solatcpretransmission_hsvf_v1_11.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
tmx_mx_solatcpretransmission_hsvf_v1_11.symbol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.symbol, range, value, display)

  return offset + length, value
end

-- Tenor
tmx_mx_solatcpretransmission_hsvf_v1_11.tenor = {}

-- Size: Tenor
tmx_mx_solatcpretransmission_hsvf_v1_11.tenor.size = 2

-- Display: Tenor
tmx_mx_solatcpretransmission_hsvf_v1_11.tenor.display = function(value)
  return "Tenor: "..value
end

-- Dissect: Tenor
tmx_mx_solatcpretransmission_hsvf_v1_11.tenor.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.tenor.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tenor, range, value, "Tenor: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Tenor is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.tenor.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tenor, range, value, display)

  return offset + length, value
end

-- Tick
tmx_mx_solatcpretransmission_hsvf_v1_11.tick = {}

-- Size: Tick
tmx_mx_solatcpretransmission_hsvf_v1_11.tick.size = 1

-- Display: Tick
tmx_mx_solatcpretransmission_hsvf_v1_11.tick.display = function(value)
  if value == "+" then
    return "Tick: Uptick (+)"
  end
  if value == "-" then
    return "Tick: Downtick (-)"
  end

  return "Tick: Unknown("..value..")"
end

-- Dissect: Tick
tmx_mx_solatcpretransmission_hsvf_v1_11.tick.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.tick.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.tick.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick, range, value, display)

  return offset + length, value
end

-- Tick Increment Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_fraction_indicator = {}

-- Size: Tick Increment Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_fraction_indicator.size = 1

-- Display: Tick Increment Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_fraction_indicator.display = function(value)
  if value == "0" then
    return "Tick Increment Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Tick Increment Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Tick Increment Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Tick Increment Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Tick Increment Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Tick Increment Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Tick Increment Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Tick Increment Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Tick Increment Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Tick Increment Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Tick Increment Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Tick Increment Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Tick Increment Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Tick Increment Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Tick Increment Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Tick Increment Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Tick Increment Fraction Indicator: Negative Million (G)"
  end

  return "Tick Increment Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Tick Increment Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick_increment_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Tick Increment Numeric
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_numeric = {}

-- Size: Tick Increment Numeric
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_numeric.size = 6

-- Display: Tick Increment Numeric
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_numeric.display = function(value)
  return "Tick Increment Numeric: "..value
end

-- Dissect: Tick Increment Numeric
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_numeric.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_numeric.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick_increment_numeric, range, value, "Tick Increment Numeric: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Tick Increment Numeric is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_numeric.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick_increment_numeric, range, value, display)

  return offset + length, value
end

-- Tick Increment Raw
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_raw = {}

-- Size: Tick Increment Raw
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_raw.size = 6

-- Display: Tick Increment Raw
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_raw.display = function(value)
  return "Tick Increment Raw: "..value
end

-- Dissect: Tick Increment Raw
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_raw.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_raw.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_raw.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick_increment_raw, range, value, display)

  return offset + length, value
end

-- Tick Price
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_price = {}

-- Size: Tick Price
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_price.size = 6

-- Display: Tick Price
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_price.display = function(value)
  return "Tick Price: "..value
end

-- Dissect: Tick Price
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick_price, range, value, "Tick Price: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Tick Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick_price, range, value, display)

  return offset + length, value
end

-- Tick Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_price_fraction_indicator = {}

-- Size: Tick Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_price_fraction_indicator.size = 1

-- Display: Tick Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_price_fraction_indicator.display = function(value)
  if value == "0" then
    return "Tick Price Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Tick Price Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Tick Price Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Tick Price Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Tick Price Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Tick Price Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Tick Price Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Tick Price Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Tick Price Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Tick Price Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Tick Price Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Tick Price Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Tick Price Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Tick Price Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Tick Price Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Tick Price Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Tick Price Fraction Indicator: Negative Million (G)"
  end

  return "Tick Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Tick Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Tick Table Name
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_table_name = {}

-- Size: Tick Table Name
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_table_name.size = 50

-- Display: Tick Table Name
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_table_name.display = function(value)
  return "Tick Table Name: "..value
end

-- Dissect: Tick Table Name
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_table_name.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_table_name.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_table_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick_table_name, range, value, display)

  return offset + length, value
end

-- Tick Table Short Name
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_table_short_name = {}

-- Size: Tick Table Short Name
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_table_short_name.size = 2

-- Display: Tick Table Short Name
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_table_short_name.display = function(value)
  return "Tick Table Short Name: "..value
end

-- Dissect: Tick Table Short Name
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_table_short_name.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_table_short_name.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_table_short_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick_table_short_name, range, value, display)

  return offset + length, value
end

-- Tick Value
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_value = {}

-- Size: Tick Value
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_value.size = 6

-- Display: Tick Value
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_value.display = function(value)
  return "Tick Value: "..value
end

-- Dissect: Tick Value
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_value.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick_value, range, value, "Tick Value: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Tick Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick_value, range, value, display)

  return offset + length, value
end

-- Tick Value Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_value_fraction_indicator = {}

-- Size: Tick Value Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_value_fraction_indicator.size = 1

-- Display: Tick Value Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_value_fraction_indicator.display = function(value)
  if value == "0" then
    return "Tick Value Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Tick Value Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Tick Value Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Tick Value Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Tick Value Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Tick Value Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Tick Value Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Tick Value Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Tick Value Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Tick Value Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Tick Value Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Tick Value Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Tick Value Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Tick Value Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Tick Value Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Tick Value Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Tick Value Fraction Indicator: Negative Million (G)"
  end

  return "Tick Value Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Tick Value Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_value_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_value_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_value_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick_value_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Time
tmx_mx_solatcpretransmission_hsvf_v1_11.time = {}

-- Size: Time
tmx_mx_solatcpretransmission_hsvf_v1_11.time.size = 6

-- Display: Time
tmx_mx_solatcpretransmission_hsvf_v1_11.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
tmx_mx_solatcpretransmission_hsvf_v1_11.time.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.time.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.time, range, value, "Time: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Time is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.time, range, value, display)

  return offset + length, value
end

-- Time With Milliseconds
tmx_mx_solatcpretransmission_hsvf_v1_11.time_with_milliseconds = {}

-- Size: Time With Milliseconds
tmx_mx_solatcpretransmission_hsvf_v1_11.time_with_milliseconds.size = 9

-- Display: Time With Milliseconds
tmx_mx_solatcpretransmission_hsvf_v1_11.time_with_milliseconds.display = function(value)
  return "Time With Milliseconds: "..value
end

-- Dissect: Time With Milliseconds
tmx_mx_solatcpretransmission_hsvf_v1_11.time_with_milliseconds.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.time_with_milliseconds.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.time_with_milliseconds, range, value, "Time With Milliseconds: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Time With Milliseconds is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.time_with_milliseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.time_with_milliseconds, range, value, display)

  return offset + length, value
end

-- Timestamp
tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp = {}

-- Size: Timestamp
tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.size = 9

-- Display: Timestamp
tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.timestamp, range, value, "Timestamp: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Timestamp is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Number
tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number = {}

-- Size: Trade Number
tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.size = 8

-- Display: Trade Number
tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.display = function(value)
  return "Trade Number: "..value
end

-- Dissect: Trade Number
tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.trade_number, range, value, display)

  return offset + length, value
end

-- Trade Price
tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price = {}

-- Size: Trade Price
tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price.size = 6

-- Display: Trade Price
tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Dissect: Trade Price
tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.trade_price, range, value, "Trade Price: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Trade Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_fraction_indicator = {}

-- Size: Trade Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_fraction_indicator.size = 1

-- Display: Trade Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_fraction_indicator.display = function(value)
  if value == "0" then
    return "Trade Price Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Trade Price Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Trade Price Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Trade Price Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Trade Price Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Trade Price Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Trade Price Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Trade Price Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Trade Price Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Trade Price Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Trade Price Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Trade Price Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Trade Price Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Trade Price Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Trade Price Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Trade Price Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Trade Price Fraction Indicator: Negative Million (G)"
  end

  return "Trade Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Trade Price Fraction Indicator
tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.trade_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Trade Price Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_sign = {}

-- Size: Trade Price Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_sign.size = 1

-- Display: Trade Price Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_sign.display = function(value)
  if value == "+" then
    return "Trade Price Sign: Positive (+)"
  end
  if value == "-" then
    return "Trade Price Sign: Negative (-)"
  end

  return "Trade Price Sign: Unknown("..value..")"
end

-- Dissect: Trade Price Sign
tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.trade_price_sign, range, value, display)

  return offset + length, value
end

-- Trade Volume
tmx_mx_solatcpretransmission_hsvf_v1_11.trade_volume = {}

-- Size: Trade Volume
tmx_mx_solatcpretransmission_hsvf_v1_11.trade_volume.size = 8

-- Display: Trade Volume
tmx_mx_solatcpretransmission_hsvf_v1_11.trade_volume.display = function(value)
  return "Trade Volume: "..value
end

-- Dissect: Trade Volume
tmx_mx_solatcpretransmission_hsvf_v1_11.trade_volume.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.trade_volume, range, value, "Trade Volume: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Trade Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.trade_volume, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_symbol = {}

-- Size: Underlying Symbol
tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_symbol.size = 10

-- Display: Underlying Symbol
tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Underlying Symbol Root Future Options
tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_symbol_root_future_options = {}

-- Size: Underlying Symbol Root Future Options
tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_symbol_root_future_options.size = 3

-- Display: Underlying Symbol Root Future Options
tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_symbol_root_future_options.display = function(value)
  return "Underlying Symbol Root Future Options: "..value
end

-- Dissect: Underlying Symbol Root Future Options
tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_symbol_root_future_options.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_symbol_root_future_options.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_symbol_root_future_options.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.underlying_symbol_root_future_options, range, value, display)

  return offset + length, value
end

-- Underlying Symbol Root Options
tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_symbol_root_options = {}

-- Size: Underlying Symbol Root Options
tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_symbol_root_options.size = 10

-- Display: Underlying Symbol Root Options
tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_symbol_root_options.display = function(value)
  return "Underlying Symbol Root Options: "..value
end

-- Dissect: Underlying Symbol Root Options
tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_symbol_root_options.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_symbol_root_options.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_symbol_root_options.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.underlying_symbol_root_options, range, value, display)

  return offset + length, value
end

-- User
tmx_mx_solatcpretransmission_hsvf_v1_11.user = {}

-- Size: User
tmx_mx_solatcpretransmission_hsvf_v1_11.user.size = 16

-- Display: User
tmx_mx_solatcpretransmission_hsvf_v1_11.user.display = function(value)
  return "User: "..value
end

-- Dissect: User
tmx_mx_solatcpretransmission_hsvf_v1_11.user.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.user.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.user.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.user, range, value, display)

  return offset + length, value
end

-- Volume
tmx_mx_solatcpretransmission_hsvf_v1_11.volume = {}

-- Size: Volume
tmx_mx_solatcpretransmission_hsvf_v1_11.volume.size = 8

-- Display: Volume
tmx_mx_solatcpretransmission_hsvf_v1_11.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
tmx_mx_solatcpretransmission_hsvf_v1_11.volume.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.volume, range, value, "Volume: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solatcpretransmission_hsvf_v1_11.experts.not_a_number, "Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.volume, range, value, display)

  return offset + length, value
end

-- Scaled Ask Price Futures Depth
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_futures_depth = {}

-- Display: Scaled Ask Price Futures Depth
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_futures_depth.display = function(value)
  return "Scaled Ask Price Futures Depth: " .. string.format("%g", value)
end

-- Display: Scaled Ask Price Futures Depth with an unrecognised code
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_futures_depth.display_uncoded = function(value)
  return "Scaled Ask Price Futures Depth: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Ask Price Futures Depth
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_futures_depth.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_numeric.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if ask_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_futures_depth.display(value)
  elseif ask_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_futures_depth.display(value)
  elseif ask_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_futures_depth.display(value)
  elseif ask_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_futures_depth.display(value)
  elseif ask_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_futures_depth.display(value)
  elseif ask_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_futures_depth.display(value)
  elseif ask_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_futures_depth.display(value)
  elseif ask_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_futures_depth.display(value)
  elseif ask_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_futures_depth.display(value)
  elseif ask_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_futures_depth.display(value)
  else
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_futures_depth.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_ask_price_futures_depth, range, value, display)
  local mantissa_display = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_numeric.display(mantissa)

  field_tree:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_futures_depth_numeric, range, mantissa, mantissa_display)

  local ask_price_fraction_indicator_entry = field_tree:add("Ask Price Fraction Indicator: " .. tostring(ask_price_fraction_indicator))
  ask_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Ask Price Quote
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_quote = {}

-- Display: Scaled Ask Price Quote
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_quote.display = function(value)
  return "Scaled Ask Price Quote: " .. string.format("%g", value)
end

-- Display: Scaled Ask Price Quote with an unrecognised code
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_quote.display_uncoded = function(value)
  return "Scaled Ask Price Quote: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Ask Price Quote
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_quote.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_numeric.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if ask_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_quote.display(value)
  elseif ask_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_quote.display(value)
  elseif ask_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_quote.display(value)
  elseif ask_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_quote.display(value)
  elseif ask_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_quote.display(value)
  elseif ask_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_quote.display(value)
  elseif ask_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_quote.display(value)
  elseif ask_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_quote.display(value)
  elseif ask_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_quote.display(value)
  elseif ask_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_quote.display(value)
  else
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_quote.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_ask_price_quote, range, value, display)
  local mantissa_display = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_numeric.display(mantissa)

  field_tree:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_quote_numeric, range, mantissa, mantissa_display)

  local ask_price_fraction_indicator_entry = field_tree:add("Ask Price Fraction Indicator: " .. tostring(ask_price_fraction_indicator))
  ask_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Ask Price Summary
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_summary = {}

-- Display: Scaled Ask Price Summary
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_summary.display = function(value)
  return "Scaled Ask Price Summary: " .. string.format("%g", value)
end

-- Display: Scaled Ask Price Summary with an unrecognised code
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_summary.display_uncoded = function(value)
  return "Scaled Ask Price Summary: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Ask Price Summary
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_summary.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_summary.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if ask_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_summary.display(value)
  elseif ask_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_summary.display(value)
  elseif ask_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_summary.display(value)
  elseif ask_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_summary.display(value)
  elseif ask_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_summary.display(value)
  elseif ask_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_summary.display(value)
  elseif ask_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_summary.display(value)
  elseif ask_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_summary.display(value)
  elseif ask_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_summary.display(value)
  elseif ask_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_summary.display(value)
  else
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_summary.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_ask_price_summary, range, value, display)
  local mantissa_display = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_summary.display(mantissa)

  field_tree:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_summary, range, mantissa, mantissa_display)

  local ask_price_fraction_indicator_entry = field_tree:add("Ask Price Fraction Indicator: " .. tostring(ask_price_fraction_indicator))
  ask_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Bid Price Quote
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_quote = {}

-- Display: Scaled Bid Price Quote
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_quote.display = function(value)
  return "Scaled Bid Price Quote: " .. string.format("%g", value)
end

-- Display: Scaled Bid Price Quote with an unrecognised code
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_quote.display_uncoded = function(value)
  return "Scaled Bid Price Quote: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Bid Price Quote
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_quote.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_numeric.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if bid_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_quote.display(value)
  elseif bid_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_quote.display(value)
  elseif bid_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_quote.display(value)
  elseif bid_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_quote.display(value)
  elseif bid_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_quote.display(value)
  elseif bid_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_quote.display(value)
  elseif bid_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_quote.display(value)
  elseif bid_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_quote.display(value)
  elseif bid_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_quote.display(value)
  elseif bid_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_quote.display(value)
  else
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_quote.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_bid_price_quote, range, value, display)
  local mantissa_display = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_numeric.display(mantissa)

  field_tree:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bid_price_quote_numeric, range, mantissa, mantissa_display)

  local bid_price_fraction_indicator_entry = field_tree:add("Bid Price Fraction Indicator: " .. tostring(bid_price_fraction_indicator))
  bid_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Bid Price Summary
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_summary = {}

-- Display: Scaled Bid Price Summary
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_summary.display = function(value)
  return "Scaled Bid Price Summary: " .. string.format("%g", value)
end

-- Display: Scaled Bid Price Summary with an unrecognised code
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_summary.display_uncoded = function(value)
  return "Scaled Bid Price Summary: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Bid Price Summary
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_summary.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_summary.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if bid_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_summary.display(value)
  elseif bid_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_summary.display(value)
  elseif bid_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_summary.display(value)
  elseif bid_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_summary.display(value)
  elseif bid_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_summary.display(value)
  elseif bid_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_summary.display(value)
  elseif bid_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_summary.display(value)
  elseif bid_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_summary.display(value)
  elseif bid_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_summary.display(value)
  elseif bid_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_summary.display(value)
  else
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_summary.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_bid_price_summary, range, value, display)
  local mantissa_display = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_summary.display(mantissa)

  field_tree:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bid_price_summary, range, mantissa, mantissa_display)

  local bid_price_fraction_indicator_entry = field_tree:add("Bid Price Fraction Indicator: " .. tostring(bid_price_fraction_indicator))
  bid_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled External Price At Source
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_external_price_at_source = {}

-- Display: Scaled External Price At Source
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_external_price_at_source.display = function(value)
  return "Scaled External Price At Source: " .. string.format("%g", value)
end

-- Display: Scaled External Price At Source with an unrecognised code
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_external_price_at_source.display_uncoded = function(value)
  return "Scaled External Price At Source: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled External Price At Source
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_external_price_at_source.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.external_price_at_source.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if external_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_external_price_at_source.display(value)
  elseif external_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_external_price_at_source.display(value)
  elseif external_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_external_price_at_source.display(value)
  elseif external_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_external_price_at_source.display(value)
  elseif external_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_external_price_at_source.display(value)
  elseif external_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_external_price_at_source.display(value)
  elseif external_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_external_price_at_source.display(value)
  elseif external_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_external_price_at_source.display(value)
  elseif external_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_external_price_at_source.display(value)
  elseif external_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_external_price_at_source.display(value)
  else
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_external_price_at_source.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_external_price_at_source, range, value, display)
  local mantissa_display = tmx_mx_solatcpretransmission_hsvf_v1_11.external_price_at_source.display(mantissa)

  field_tree:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.external_price_at_source, range, mantissa, mantissa_display)

  local external_price_fraction_indicator_entry = field_tree:add("External Price Fraction Indicator: " .. tostring(external_price_fraction_indicator))
  external_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Fixed Rate
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_fixed_rate = {}

-- Display: Scaled Fixed Rate
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_fixed_rate.display = function(value)
  return "Scaled Fixed Rate: " .. string.format("%g", value)
end

-- Display: Scaled Fixed Rate with an unrecognised code
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_fixed_rate.display_uncoded = function(value)
  return "Scaled Fixed Rate: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Fixed Rate
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_fixed_rate.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if fixed_rate_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_fixed_rate.display(value)
  elseif fixed_rate_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_fixed_rate.display(value)
  elseif fixed_rate_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_fixed_rate.display(value)
  elseif fixed_rate_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_fixed_rate.display(value)
  elseif fixed_rate_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_fixed_rate.display(value)
  elseif fixed_rate_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_fixed_rate.display(value)
  elseif fixed_rate_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_fixed_rate.display(value)
  elseif fixed_rate_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_fixed_rate.display(value)
  elseif fixed_rate_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_fixed_rate.display(value)
  elseif fixed_rate_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_fixed_rate.display(value)
  else
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_fixed_rate.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_fixed_rate, range, value, display)
  local mantissa_display = tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate.display(mantissa)

  field_tree:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.fixed_rate, range, mantissa, mantissa_display)

  local fixed_rate_fraction_indicator_entry = field_tree:add("Fixed Rate Fraction Indicator: " .. tostring(fixed_rate_fraction_indicator))
  fixed_rate_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled High Price
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_high_price = {}

-- Display: Scaled High Price
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_high_price.display = function(value)
  return "Scaled High Price: " .. string.format("%g", value)
end

-- Display: Scaled High Price with an unrecognised code
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_high_price.display_uncoded = function(value)
  return "Scaled High Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled High Price
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_high_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.high_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if high_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_high_price.display(value)
  elseif high_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_high_price.display(value)
  elseif high_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_high_price.display(value)
  elseif high_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_high_price.display(value)
  elseif high_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_high_price.display(value)
  elseif high_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_high_price.display(value)
  elseif high_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_high_price.display(value)
  elseif high_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_high_price.display(value)
  elseif high_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_high_price.display(value)
  elseif high_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_high_price.display(value)
  else
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_high_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_high_price, range, value, display)
  local mantissa_display = tmx_mx_solatcpretransmission_hsvf_v1_11.high_price.display(mantissa)

  field_tree:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.high_price, range, mantissa, mantissa_display)

  local high_price_fraction_indicator_entry = field_tree:add("High Price Fraction Indicator: " .. tostring(high_price_fraction_indicator))
  high_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Historical Coupon B
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_historical_coupon_b = {}

-- Display: Scaled Historical Coupon B
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_historical_coupon_b.display = function(value)
  return "Scaled Historical Coupon B: " .. string.format("%g", value)
end

-- Display: Scaled Historical Coupon B with an unrecognised code
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_historical_coupon_b.display_uncoded = function(value)
  return "Scaled Historical Coupon B: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Historical Coupon B
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_historical_coupon_b.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.historical_coupon_b.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if historical_coupon_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_historical_coupon_b.display(value)
  elseif historical_coupon_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_historical_coupon_b.display(value)
  elseif historical_coupon_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_historical_coupon_b.display(value)
  elseif historical_coupon_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_historical_coupon_b.display(value)
  elseif historical_coupon_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_historical_coupon_b.display(value)
  elseif historical_coupon_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_historical_coupon_b.display(value)
  elseif historical_coupon_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_historical_coupon_b.display(value)
  elseif historical_coupon_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_historical_coupon_b.display(value)
  elseif historical_coupon_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_historical_coupon_b.display(value)
  elseif historical_coupon_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_historical_coupon_b.display(value)
  else
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_historical_coupon_b.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_historical_coupon_b, range, value, display)
  local mantissa_display = tmx_mx_solatcpretransmission_hsvf_v1_11.historical_coupon_b.display(mantissa)

  field_tree:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.historical_coupon_b, range, mantissa, mantissa_display)

  local historical_coupon_fraction_indicator_entry = field_tree:add("Historical Coupon Fraction Indicator: " .. tostring(historical_coupon_fraction_indicator))
  historical_coupon_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Last Price
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_last_price = {}

-- Display: Scaled Last Price
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_last_price.display = function(value)
  return "Scaled Last Price: " .. string.format("%g", value)
end

-- Display: Scaled Last Price with an unrecognised code
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_last_price.display_uncoded = function(value)
  return "Scaled Last Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Last Price
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_last_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.last_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if last_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_last_price.display(value)
  elseif last_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_last_price.display(value)
  elseif last_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_last_price.display(value)
  elseif last_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_last_price.display(value)
  elseif last_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_last_price.display(value)
  elseif last_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_last_price.display(value)
  elseif last_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_last_price.display(value)
  elseif last_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_last_price.display(value)
  elseif last_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_last_price.display(value)
  elseif last_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_last_price.display(value)
  else
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_last_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_last_price, range, value, display)
  local mantissa_display = tmx_mx_solatcpretransmission_hsvf_v1_11.last_price.display(mantissa)

  field_tree:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.last_price, range, mantissa, mantissa_display)

  local last_price_fraction_indicator_entry = field_tree:add("Last Price Fraction Indicator: " .. tostring(last_price_fraction_indicator))
  last_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Low Price
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_low_price = {}

-- Display: Scaled Low Price
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_low_price.display = function(value)
  return "Scaled Low Price: " .. string.format("%g", value)
end

-- Display: Scaled Low Price with an unrecognised code
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_low_price.display_uncoded = function(value)
  return "Scaled Low Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Low Price
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_low_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.low_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if low_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_low_price.display(value)
  elseif low_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_low_price.display(value)
  elseif low_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_low_price.display(value)
  elseif low_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_low_price.display(value)
  elseif low_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_low_price.display(value)
  elseif low_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_low_price.display(value)
  elseif low_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_low_price.display(value)
  elseif low_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_low_price.display(value)
  elseif low_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_low_price.display(value)
  elseif low_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_low_price.display(value)
  else
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_low_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_low_price, range, value, display)
  local mantissa_display = tmx_mx_solatcpretransmission_hsvf_v1_11.low_price.display(mantissa)

  field_tree:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.low_price, range, mantissa, mantissa_display)

  local low_price_fraction_indicator_entry = field_tree:add("Low Price Fraction Indicator: " .. tostring(low_price_fraction_indicator))
  low_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Maximum Threshold Price Futures
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_futures = {}

-- Display: Scaled Maximum Threshold Price Futures
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_futures.display = function(value)
  return "Scaled Maximum Threshold Price Futures: " .. string.format("%g", value)
end

-- Display: Scaled Maximum Threshold Price Futures with an unrecognised code
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_futures.display_uncoded = function(value)
  return "Scaled Maximum Threshold Price Futures: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Maximum Threshold Price Futures
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_futures.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_futures.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if maximum_threshold_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_futures.display(value)
  elseif maximum_threshold_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_futures.display(value)
  elseif maximum_threshold_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_futures.display(value)
  elseif maximum_threshold_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_futures.display(value)
  elseif maximum_threshold_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_futures.display(value)
  elseif maximum_threshold_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_futures.display(value)
  elseif maximum_threshold_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_futures.display(value)
  elseif maximum_threshold_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_futures.display(value)
  elseif maximum_threshold_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_futures.display(value)
  elseif maximum_threshold_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_futures.display(value)
  else
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_futures.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_maximum_threshold_price_futures, range, value, display)
  local mantissa_display = tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_futures.display(mantissa)

  field_tree:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.maximum_threshold_price_futures, range, mantissa, mantissa_display)

  local maximum_threshold_price_fraction_indicator_entry = field_tree:add("Maximum Threshold Price Fraction Indicator: " .. tostring(maximum_threshold_price_fraction_indicator))
  maximum_threshold_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Maximum Threshold Price Options
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_options = {}

-- Display: Scaled Maximum Threshold Price Options
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_options.display = function(value)
  return "Scaled Maximum Threshold Price Options: " .. string.format("%g", value)
end

-- Display: Scaled Maximum Threshold Price Options with an unrecognised code
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_options.display_uncoded = function(value)
  return "Scaled Maximum Threshold Price Options: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Maximum Threshold Price Options
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_options.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_options.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if maximum_threshold_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_options.display(value)
  elseif maximum_threshold_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_options.display(value)
  elseif maximum_threshold_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_options.display(value)
  elseif maximum_threshold_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_options.display(value)
  elseif maximum_threshold_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_options.display(value)
  elseif maximum_threshold_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_options.display(value)
  elseif maximum_threshold_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_options.display(value)
  elseif maximum_threshold_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_options.display(value)
  elseif maximum_threshold_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_options.display(value)
  elseif maximum_threshold_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_options.display(value)
  else
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_options.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_maximum_threshold_price_options, range, value, display)
  local mantissa_display = tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_options.display(mantissa)

  field_tree:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.maximum_threshold_price_options, range, mantissa, mantissa_display)

  local maximum_threshold_price_fraction_indicator_entry = field_tree:add("Maximum Threshold Price Fraction Indicator: " .. tostring(maximum_threshold_price_fraction_indicator))
  maximum_threshold_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Min Price
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_min_price = {}

-- Display: Scaled Min Price
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_min_price.display = function(value)
  return "Scaled Min Price: " .. string.format("%g", value)
end

-- Display: Scaled Min Price with an unrecognised code
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_min_price.display_uncoded = function(value)
  return "Scaled Min Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Min Price
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_min_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.min_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if min_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_min_price.display(value)
  elseif min_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_min_price.display(value)
  elseif min_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_min_price.display(value)
  elseif min_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_min_price.display(value)
  elseif min_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_min_price.display(value)
  elseif min_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_min_price.display(value)
  elseif min_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_min_price.display(value)
  elseif min_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_min_price.display(value)
  elseif min_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_min_price.display(value)
  elseif min_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_min_price.display(value)
  else
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_min_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_min_price, range, value, display)
  local mantissa_display = tmx_mx_solatcpretransmission_hsvf_v1_11.min_price.display(mantissa)

  field_tree:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.min_price, range, mantissa, mantissa_display)

  local min_price_fraction_indicator_entry = field_tree:add("Min Price Fraction Indicator: " .. tostring(min_price_fraction_indicator))
  min_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Minimum Threshold Price Futures
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_futures = {}

-- Display: Scaled Minimum Threshold Price Futures
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_futures.display = function(value)
  return "Scaled Minimum Threshold Price Futures: " .. string.format("%g", value)
end

-- Display: Scaled Minimum Threshold Price Futures with an unrecognised code
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_futures.display_uncoded = function(value)
  return "Scaled Minimum Threshold Price Futures: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Minimum Threshold Price Futures
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_futures.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_futures.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if minimum_threshold_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_futures.display(value)
  elseif minimum_threshold_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_futures.display(value)
  elseif minimum_threshold_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_futures.display(value)
  elseif minimum_threshold_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_futures.display(value)
  elseif minimum_threshold_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_futures.display(value)
  elseif minimum_threshold_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_futures.display(value)
  elseif minimum_threshold_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_futures.display(value)
  elseif minimum_threshold_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_futures.display(value)
  elseif minimum_threshold_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_futures.display(value)
  elseif minimum_threshold_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_futures.display(value)
  else
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_futures.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_minimum_threshold_price_futures, range, value, display)
  local mantissa_display = tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_futures.display(mantissa)

  field_tree:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.minimum_threshold_price_futures, range, mantissa, mantissa_display)

  local minimum_threshold_price_fraction_indicator_entry = field_tree:add("Minimum Threshold Price Fraction Indicator: " .. tostring(minimum_threshold_price_fraction_indicator))
  minimum_threshold_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Minimum Threshold Price Options
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_options = {}

-- Display: Scaled Minimum Threshold Price Options
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_options.display = function(value)
  return "Scaled Minimum Threshold Price Options: " .. string.format("%g", value)
end

-- Display: Scaled Minimum Threshold Price Options with an unrecognised code
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_options.display_uncoded = function(value)
  return "Scaled Minimum Threshold Price Options: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Minimum Threshold Price Options
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_options.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_options.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if minimum_threshold_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_options.display(value)
  elseif minimum_threshold_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_options.display(value)
  elseif minimum_threshold_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_options.display(value)
  elseif minimum_threshold_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_options.display(value)
  elseif minimum_threshold_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_options.display(value)
  elseif minimum_threshold_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_options.display(value)
  elseif minimum_threshold_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_options.display(value)
  elseif minimum_threshold_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_options.display(value)
  elseif minimum_threshold_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_options.display(value)
  elseif minimum_threshold_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_options.display(value)
  else
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_options.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_minimum_threshold_price_options, range, value, display)
  local mantissa_display = tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_options.display(mantissa)

  field_tree:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.minimum_threshold_price_options, range, mantissa, mantissa_display)

  local minimum_threshold_price_fraction_indicator_entry = field_tree:add("Minimum Threshold Price Fraction Indicator: " .. tostring(minimum_threshold_price_fraction_indicator))
  minimum_threshold_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Net Change
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_change = {}

-- Display: Scaled Net Change
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_change.display = function(value)
  return "Scaled Net Change: " .. string.format("%g", value)
end

-- Display: Scaled Net Change with an unrecognised code
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_change.display_uncoded = function(value)
  return "Scaled Net Change: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Net Change
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_change.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if net_change_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_change.display(value)
  elseif net_change_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_change.display(value)
  elseif net_change_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_change.display(value)
  elseif net_change_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_change.display(value)
  elseif net_change_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_change.display(value)
  elseif net_change_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_change.display(value)
  elseif net_change_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_change.display(value)
  elseif net_change_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_change.display(value)
  elseif net_change_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_change.display(value)
  elseif net_change_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_change.display(value)
  else
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_change.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_net_change, range, value, display)
  local mantissa_display = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change.display(mantissa)

  field_tree:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.net_change, range, mantissa, mantissa_display)

  local net_change_fraction_indicator_entry = field_tree:add("Net Change Fraction Indicator: " .. tostring(net_change_fraction_indicator))
  net_change_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Net Present Value A
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_present_value_a = {}

-- Display: Scaled Net Present Value A
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_present_value_a.display = function(value)
  return "Scaled Net Present Value A: " .. string.format("%g", value)
end

-- Display: Scaled Net Present Value A with an unrecognised code
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_present_value_a.display_uncoded = function(value)
  return "Scaled Net Present Value A: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Net Present Value A
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_present_value_a.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.net_present_value_a.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if net_present_value_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_present_value_a.display(value)
  elseif net_present_value_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_present_value_a.display(value)
  elseif net_present_value_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_present_value_a.display(value)
  elseif net_present_value_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_present_value_a.display(value)
  elseif net_present_value_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_present_value_a.display(value)
  elseif net_present_value_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_present_value_a.display(value)
  elseif net_present_value_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_present_value_a.display(value)
  elseif net_present_value_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_present_value_a.display(value)
  elseif net_present_value_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_present_value_a.display(value)
  elseif net_present_value_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_present_value_a.display(value)
  else
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_present_value_a.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_net_present_value_a, range, value, display)
  local mantissa_display = tmx_mx_solatcpretransmission_hsvf_v1_11.net_present_value_a.display(mantissa)

  field_tree:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.net_present_value_a, range, mantissa, mantissa_display)

  local net_present_value_fraction_indicator_entry = field_tree:add("Net Present Value Fraction Indicator: " .. tostring(net_present_value_fraction_indicator))
  net_present_value_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Notional Principal Amount
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_notional_principal_amount = {}

-- Display: Scaled Notional Principal Amount
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_notional_principal_amount.display = function(value)
  return "Scaled Notional Principal Amount: " .. string.format("%g", value)
end

-- Display: Scaled Notional Principal Amount with an unrecognised code
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_notional_principal_amount.display_uncoded = function(value)
  return "Scaled Notional Principal Amount: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Notional Principal Amount
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_notional_principal_amount.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.notional_principal_amount.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if notional_principal_amount_faction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_notional_principal_amount.display(value)
  elseif notional_principal_amount_faction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_notional_principal_amount.display(value)
  elseif notional_principal_amount_faction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_notional_principal_amount.display(value)
  elseif notional_principal_amount_faction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_notional_principal_amount.display(value)
  elseif notional_principal_amount_faction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_notional_principal_amount.display(value)
  elseif notional_principal_amount_faction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_notional_principal_amount.display(value)
  elseif notional_principal_amount_faction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_notional_principal_amount.display(value)
  elseif notional_principal_amount_faction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_notional_principal_amount.display(value)
  elseif notional_principal_amount_faction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_notional_principal_amount.display(value)
  elseif notional_principal_amount_faction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_notional_principal_amount.display(value)
  else
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_notional_principal_amount.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_notional_principal_amount, range, value, display)
  local mantissa_display = tmx_mx_solatcpretransmission_hsvf_v1_11.notional_principal_amount.display(mantissa)

  field_tree:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.notional_principal_amount, range, mantissa, mantissa_display)

  local notional_principal_amount_faction_indicator_entry = field_tree:add("Notional Principal Amount Faction Indicator: " .. tostring(notional_principal_amount_faction_indicator))
  notional_principal_amount_faction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Open Price
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_open_price = {}

-- Display: Scaled Open Price
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_open_price.display = function(value)
  return "Scaled Open Price: " .. string.format("%g", value)
end

-- Display: Scaled Open Price with an unrecognised code
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_open_price.display_uncoded = function(value)
  return "Scaled Open Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Open Price
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_open_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.open_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if open_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_open_price.display(value)
  elseif open_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_open_price.display(value)
  elseif open_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_open_price.display(value)
  elseif open_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_open_price.display(value)
  elseif open_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_open_price.display(value)
  elseif open_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_open_price.display(value)
  elseif open_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_open_price.display(value)
  elseif open_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_open_price.display(value)
  elseif open_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_open_price.display(value)
  elseif open_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_open_price.display(value)
  else
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_open_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_open_price, range, value, display)
  local mantissa_display = tmx_mx_solatcpretransmission_hsvf_v1_11.open_price.display(mantissa)

  field_tree:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.open_price, range, mantissa, mantissa_display)

  local open_price_fraction_indicator_entry = field_tree:add("Open Price Fraction Indicator: " .. tostring(open_price_fraction_indicator))
  open_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Opening Price
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_opening_price = {}

-- Display: Scaled Opening Price
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_opening_price.display = function(value)
  return "Scaled Opening Price: " .. string.format("%g", value)
end

-- Display: Scaled Opening Price with an unrecognised code
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_opening_price.display_uncoded = function(value)
  return "Scaled Opening Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Opening Price
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_opening_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.opening_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if opening_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_opening_price.display(value)
  elseif opening_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_opening_price.display(value)
  elseif opening_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_opening_price.display(value)
  elseif opening_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_opening_price.display(value)
  elseif opening_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_opening_price.display(value)
  elseif opening_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_opening_price.display(value)
  elseif opening_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_opening_price.display(value)
  elseif opening_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_opening_price.display(value)
  elseif opening_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_opening_price.display(value)
  elseif opening_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_opening_price.display(value)
  else
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_opening_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_opening_price, range, value, display)
  local mantissa_display = tmx_mx_solatcpretransmission_hsvf_v1_11.opening_price.display(mantissa)

  field_tree:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.opening_price, range, mantissa, mantissa_display)

  local opening_price_fraction_indicator_entry = field_tree:add("Opening Price Fraction Indicator: " .. tostring(opening_price_fraction_indicator))
  opening_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Previous Reset Rate
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_reset_rate = {}

-- Display: Scaled Previous Reset Rate
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_reset_rate.display = function(value)
  return "Scaled Previous Reset Rate: " .. string.format("%g", value)
end

-- Display: Scaled Previous Reset Rate with an unrecognised code
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_reset_rate.display_uncoded = function(value)
  return "Scaled Previous Reset Rate: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Previous Reset Rate
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_reset_rate.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.previous_reset_rate.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if previous_reset_rate_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_reset_rate.display(value)
  elseif previous_reset_rate_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_reset_rate.display(value)
  elseif previous_reset_rate_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_reset_rate.display(value)
  elseif previous_reset_rate_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_reset_rate.display(value)
  elseif previous_reset_rate_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_reset_rate.display(value)
  elseif previous_reset_rate_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_reset_rate.display(value)
  elseif previous_reset_rate_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_reset_rate.display(value)
  elseif previous_reset_rate_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_reset_rate.display(value)
  elseif previous_reset_rate_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_reset_rate.display(value)
  elseif previous_reset_rate_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_reset_rate.display(value)
  else
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_reset_rate.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_previous_reset_rate, range, value, display)
  local mantissa_display = tmx_mx_solatcpretransmission_hsvf_v1_11.previous_reset_rate.display(mantissa)

  field_tree:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.previous_reset_rate, range, mantissa, mantissa_display)

  local previous_reset_rate_fraction_indicator_entry = field_tree:add("Previous Reset Rate Fraction Indicator: " .. tostring(previous_reset_rate_fraction_indicator))
  previous_reset_rate_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Previous Settlement
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_settlement = {}

-- Display: Scaled Previous Settlement
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_settlement.display = function(value)
  return "Scaled Previous Settlement: " .. string.format("%g", value)
end

-- Display: Scaled Previous Settlement with an unrecognised code
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_settlement.display_uncoded = function(value)
  return "Scaled Previous Settlement: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Previous Settlement
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_settlement.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if previous_settlement_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_settlement.display(value)
  elseif previous_settlement_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_settlement.display(value)
  elseif previous_settlement_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_settlement.display(value)
  elseif previous_settlement_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_settlement.display(value)
  elseif previous_settlement_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_settlement.display(value)
  elseif previous_settlement_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_settlement.display(value)
  elseif previous_settlement_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_settlement.display(value)
  elseif previous_settlement_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_settlement.display(value)
  elseif previous_settlement_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_settlement.display(value)
  elseif previous_settlement_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_settlement.display(value)
  else
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_settlement.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_previous_settlement, range, value, display)
  local mantissa_display = tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement.display(mantissa)

  field_tree:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.previous_settlement, range, mantissa, mantissa_display)

  local previous_settlement_fraction_indicator_entry = field_tree:add("Previous Settlement Fraction Indicator: " .. tostring(previous_settlement_fraction_indicator))
  previous_settlement_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Previous Settlement Price
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_settlement_price = {}

-- Display: Scaled Previous Settlement Price
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_settlement_price.display = function(value)
  return "Scaled Previous Settlement Price: " .. string.format("%g", value)
end

-- Display: Scaled Previous Settlement Price with an unrecognised code
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_settlement_price.display_uncoded = function(value)
  return "Scaled Previous Settlement Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Previous Settlement Price
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if previous_settlement_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_settlement_price.display(value)
  elseif previous_settlement_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_settlement_price.display(value)
  elseif previous_settlement_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_settlement_price.display(value)
  elseif previous_settlement_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_settlement_price.display(value)
  elseif previous_settlement_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_settlement_price.display(value)
  elseif previous_settlement_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_settlement_price.display(value)
  elseif previous_settlement_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_settlement_price.display(value)
  elseif previous_settlement_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_settlement_price.display(value)
  elseif previous_settlement_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_settlement_price.display(value)
  elseif previous_settlement_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_settlement_price.display(value)
  else
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_settlement_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_previous_settlement_price, range, value, display)
  local mantissa_display = tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement_price.display(mantissa)

  field_tree:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.previous_settlement_price, range, mantissa, mantissa_display)

  local previous_settlement_price_fraction_indicator_entry = field_tree:add("Previous Settlement Price Fraction Indicator: " .. tostring(previous_settlement_price_fraction_indicator))
  previous_settlement_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Price
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_price = {}

-- Display: Scaled Price
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_price.display = function(value)
  return "Scaled Price: " .. string.format("%g", value)
end

-- Display: Scaled Price with an unrecognised code
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_price.display_uncoded = function(value)
  return "Scaled Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Price
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.price.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_price.display(value)
  elseif price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_price.display(value)
  elseif price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_price.display(value)
  elseif price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_price.display(value)
  elseif price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_price.display(value)
  elseif price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_price.display(value)
  elseif price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_price.display(value)
  elseif price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_price.display(value)
  elseif price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_price.display(value)
  elseif price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_price.display(value)
  else
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_price, range, value, display)
  local mantissa_display = tmx_mx_solatcpretransmission_hsvf_v1_11.price.display(mantissa)

  field_tree:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.price, range, mantissa, mantissa_display)

  local price_fraction_indicator_entry = field_tree:add("Price Fraction Indicator: " .. tostring(price_fraction_indicator))
  price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Price Alignment Interest C
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_price_alignment_interest_c = {}

-- Display: Scaled Price Alignment Interest C
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_price_alignment_interest_c.display = function(value)
  return "Scaled Price Alignment Interest C: " .. string.format("%g", value)
end

-- Display: Scaled Price Alignment Interest C with an unrecognised code
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_price_alignment_interest_c.display_uncoded = function(value)
  return "Scaled Price Alignment Interest C: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Price Alignment Interest C
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_price_alignment_interest_c.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.price_alignment_interest_c.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if price_alignment_interest_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_price_alignment_interest_c.display(value)
  elseif price_alignment_interest_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_price_alignment_interest_c.display(value)
  elseif price_alignment_interest_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_price_alignment_interest_c.display(value)
  elseif price_alignment_interest_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_price_alignment_interest_c.display(value)
  elseif price_alignment_interest_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_price_alignment_interest_c.display(value)
  elseif price_alignment_interest_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_price_alignment_interest_c.display(value)
  elseif price_alignment_interest_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_price_alignment_interest_c.display(value)
  elseif price_alignment_interest_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_price_alignment_interest_c.display(value)
  elseif price_alignment_interest_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_price_alignment_interest_c.display(value)
  elseif price_alignment_interest_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_price_alignment_interest_c.display(value)
  else
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_price_alignment_interest_c.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_price_alignment_interest_c, range, value, display)
  local mantissa_display = tmx_mx_solatcpretransmission_hsvf_v1_11.price_alignment_interest_c.display(mantissa)

  field_tree:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.price_alignment_interest_c, range, mantissa, mantissa_display)

  local price_alignment_interest_fraction_indicator_entry = field_tree:add("Price Alignment Interest Fraction Indicator: " .. tostring(price_alignment_interest_fraction_indicator))
  price_alignment_interest_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Settlement Price
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_settlement_price = {}

-- Display: Scaled Settlement Price
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_settlement_price.display = function(value)
  return "Scaled Settlement Price: " .. string.format("%g", value)
end

-- Display: Scaled Settlement Price with an unrecognised code
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_settlement_price.display_uncoded = function(value)
  return "Scaled Settlement Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Settlement Price
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.settlement_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if settlement_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_settlement_price.display(value)
  elseif settlement_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_settlement_price.display(value)
  elseif settlement_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_settlement_price.display(value)
  elseif settlement_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_settlement_price.display(value)
  elseif settlement_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_settlement_price.display(value)
  elseif settlement_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_settlement_price.display(value)
  elseif settlement_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_settlement_price.display(value)
  elseif settlement_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_settlement_price.display(value)
  elseif settlement_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_settlement_price.display(value)
  elseif settlement_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_settlement_price.display(value)
  else
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_settlement_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_settlement_price, range, value, display)
  local mantissa_display = tmx_mx_solatcpretransmission_hsvf_v1_11.settlement_price.display(mantissa)

  field_tree:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.settlement_price, range, mantissa, mantissa_display)

  local settlement_price_fraction_indicator_entry = field_tree:add("Settlement Price Fraction Indicator: " .. tostring(settlement_price_fraction_indicator))
  settlement_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Strike Price Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_instrument = {}

-- Display: Scaled Strike Price Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_instrument.display = function(value)
  return "Scaled Strike Price Instrument: " .. string.format("%g", value)
end

-- Display: Scaled Strike Price Instrument with an unrecognised code
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_instrument.display_uncoded = function(value)
  return "Scaled Strike Price Instrument: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Strike Price Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_instrument.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_instrument.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if strike_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_instrument.display(value)
  elseif strike_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_instrument.display(value)
  elseif strike_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_instrument.display(value)
  elseif strike_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_instrument.display(value)
  elseif strike_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_instrument.display(value)
  elseif strike_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_instrument.display(value)
  elseif strike_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_instrument.display(value)
  elseif strike_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_instrument.display(value)
  elseif strike_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_instrument.display(value)
  elseif strike_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_instrument.display(value)
  else
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_instrument.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_strike_price_instrument, range, value, display)
  local mantissa_display = tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_instrument.display(mantissa)

  field_tree:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strike_price_instrument, range, mantissa, mantissa_display)

  local strike_price_fraction_indicator_entry = field_tree:add("Strike Price Fraction Indicator: " .. tostring(strike_price_fraction_indicator))
  strike_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Strike Price Schedule Notice
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_schedule_notice = {}

-- Display: Scaled Strike Price Schedule Notice
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_schedule_notice.display = function(value)
  return "Scaled Strike Price Schedule Notice: " .. string.format("%g", value)
end

-- Display: Scaled Strike Price Schedule Notice with an unrecognised code
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_schedule_notice.display_uncoded = function(value)
  return "Scaled Strike Price Schedule Notice: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Strike Price Schedule Notice
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_schedule_notice.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_schedule_notice.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if strike_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_schedule_notice.display(value)
  elseif strike_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_schedule_notice.display(value)
  elseif strike_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_schedule_notice.display(value)
  elseif strike_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_schedule_notice.display(value)
  elseif strike_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_schedule_notice.display(value)
  elseif strike_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_schedule_notice.display(value)
  elseif strike_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_schedule_notice.display(value)
  elseif strike_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_schedule_notice.display(value)
  elseif strike_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_schedule_notice.display(value)
  elseif strike_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_schedule_notice.display(value)
  else
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_schedule_notice.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_strike_price_schedule_notice, range, value, display)
  local mantissa_display = tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_schedule_notice.display(mantissa)

  field_tree:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strike_price_schedule_notice, range, mantissa, mantissa_display)

  local strike_price_fraction_indicator_entry = field_tree:add("Strike Price Fraction Indicator: " .. tostring(strike_price_fraction_indicator))
  strike_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Tick Increment
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_increment = {}

-- Display: Scaled Tick Increment
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_increment.display = function(value)
  return "Scaled Tick Increment: " .. string.format("%g", value)
end

-- Display: Scaled Tick Increment with an unrecognised code
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_increment.display_uncoded = function(value)
  return "Scaled Tick Increment: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Tick Increment
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_increment.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_numeric.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if tick_increment_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_increment.display(value)
  elseif tick_increment_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_increment.display(value)
  elseif tick_increment_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_increment.display(value)
  elseif tick_increment_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_increment.display(value)
  elseif tick_increment_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_increment.display(value)
  elseif tick_increment_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_increment.display(value)
  elseif tick_increment_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_increment.display(value)
  elseif tick_increment_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_increment.display(value)
  elseif tick_increment_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_increment.display(value)
  elseif tick_increment_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_increment.display(value)
  else
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_increment.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_tick_increment, range, value, display)
  local mantissa_display = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_numeric.display(mantissa)

  field_tree:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick_increment_numeric, range, mantissa, mantissa_display)

  local tick_increment_fraction_indicator_entry = field_tree:add("Tick Increment Fraction Indicator: " .. tostring(tick_increment_fraction_indicator))
  tick_increment_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Tick Price
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_price = {}

-- Display: Scaled Tick Price
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_price.display = function(value)
  return "Scaled Tick Price: " .. string.format("%g", value)
end

-- Display: Scaled Tick Price with an unrecognised code
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_price.display_uncoded = function(value)
  return "Scaled Tick Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Tick Price
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if tick_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_price.display(value)
  elseif tick_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_price.display(value)
  elseif tick_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_price.display(value)
  elseif tick_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_price.display(value)
  elseif tick_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_price.display(value)
  elseif tick_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_price.display(value)
  elseif tick_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_price.display(value)
  elseif tick_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_price.display(value)
  elseif tick_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_price.display(value)
  elseif tick_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_price.display(value)
  else
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_tick_price, range, value, display)
  local mantissa_display = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_price.display(mantissa)

  field_tree:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick_price, range, mantissa, mantissa_display)

  local tick_price_fraction_indicator_entry = field_tree:add("Tick Price Fraction Indicator: " .. tostring(tick_price_fraction_indicator))
  tick_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Tick Value
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_value = {}

-- Display: Scaled Tick Value
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_value.display = function(value)
  return "Scaled Tick Value: " .. string.format("%g", value)
end

-- Display: Scaled Tick Value with an unrecognised code
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_value.display_uncoded = function(value)
  return "Scaled Tick Value: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Tick Value
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_value.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_value.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if tick_value_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_value.display(value)
  elseif tick_value_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_value.display(value)
  elseif tick_value_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_value.display(value)
  elseif tick_value_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_value.display(value)
  elseif tick_value_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_value.display(value)
  elseif tick_value_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_value.display(value)
  elseif tick_value_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_value.display(value)
  elseif tick_value_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_value.display(value)
  elseif tick_value_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_value.display(value)
  elseif tick_value_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_value.display(value)
  else
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_value.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_tick_value, range, value, display)
  local mantissa_display = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_value.display(mantissa)

  field_tree:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick_value, range, mantissa, mantissa_display)

  local tick_value_fraction_indicator_entry = field_tree:add("Tick Value Fraction Indicator: " .. tostring(tick_value_fraction_indicator))
  tick_value_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Trade Price
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_trade_price = {}

-- Display: Scaled Trade Price
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_trade_price.display = function(value)
  return "Scaled Trade Price: " .. string.format("%g", value)
end

-- Display: Scaled Trade Price with an unrecognised code
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_trade_price.display_uncoded = function(value)
  return "Scaled Trade Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Trade Price
tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if trade_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_trade_price.display(value)
  elseif trade_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_trade_price.display(value)
  elseif trade_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_trade_price.display(value)
  elseif trade_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_trade_price.display(value)
  elseif trade_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_trade_price.display(value)
  elseif trade_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_trade_price.display(value)
  elseif trade_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_trade_price.display(value)
  elseif trade_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_trade_price.display(value)
  elseif trade_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_trade_price.display(value)
  elseif trade_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_trade_price.display(value)
  else
    value = mantissa
    display = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_trade_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.scaled_trade_price, range, value, display)
  local mantissa_display = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price.display(mantissa)

  field_tree:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.trade_price, range, mantissa, mantissa_display)

  local trade_price_fraction_indicator_entry = field_tree:add("Trade Price Fraction Indicator: " .. tostring(trade_price_fraction_indicator))
  trade_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Tmx Mx SolaTcpRetransmission Hsvf 1.11
-----------------------------------------------------------------------

-- Timebeat Message
tmx_mx_solatcpretransmission_hsvf_v1_11.timebeat_message = {}

-- Size: Timebeat Message
tmx_mx_solatcpretransmission_hsvf_v1_11.timebeat_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.time_with_milliseconds.size

-- Display: Timebeat Message
tmx_mx_solatcpretransmission_hsvf_v1_11.timebeat_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Timebeat Message
tmx_mx_solatcpretransmission_hsvf_v1_11.timebeat_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time With Milliseconds: N
  index, time_with_milliseconds = tmx_mx_solatcpretransmission_hsvf_v1_11.time_with_milliseconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Timebeat Message
tmx_mx_solatcpretransmission_hsvf_v1_11.timebeat_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.timebeat_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.timebeat_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.timebeat_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.timebeat_message.fields(buffer, offset, packet, parent)
  end
end

-- Circuit Assurance Message
tmx_mx_solatcpretransmission_hsvf_v1_11.circuit_assurance_message = {}

-- Size: Circuit Assurance Message
tmx_mx_solatcpretransmission_hsvf_v1_11.circuit_assurance_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.time.size

-- Display: Circuit Assurance Message
tmx_mx_solatcpretransmission_hsvf_v1_11.circuit_assurance_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Circuit Assurance Message
tmx_mx_solatcpretransmission_hsvf_v1_11.circuit_assurance_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: N
  index, time = tmx_mx_solatcpretransmission_hsvf_v1_11.time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Circuit Assurance Message
tmx_mx_solatcpretransmission_hsvf_v1_11.circuit_assurance_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.circuit_assurance_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.circuit_assurance_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.circuit_assurance_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.circuit_assurance_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Transmission Message
tmx_mx_solatcpretransmission_hsvf_v1_11.end_of_transmission_message = {}

-- Size: End Of Transmission Message
tmx_mx_solatcpretransmission_hsvf_v1_11.end_of_transmission_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.time.size

-- Display: End Of Transmission Message
tmx_mx_solatcpretransmission_hsvf_v1_11.end_of_transmission_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Transmission Message
tmx_mx_solatcpretransmission_hsvf_v1_11.end_of_transmission_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Time: N
  index, time = tmx_mx_solatcpretransmission_hsvf_v1_11.time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Transmission Message
tmx_mx_solatcpretransmission_hsvf_v1_11.end_of_transmission_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.end_of_transmission_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.end_of_transmission_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.end_of_transmission_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.end_of_transmission_message.fields(buffer, offset, packet, parent)
  end
end

-- Tick Entry Group
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_entry_group = {}

-- Size: Tick Entry Group
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_entry_group.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.min_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.min_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.tick_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.tick_price_fraction_indicator.size

-- Display: Tick Entry Group
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_entry_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Entry Group
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_entry_group.fields = function(buffer, offset, packet, parent, tick_entry_group_index)
  local index = offset

  -- Implicit Tick Entry Group Index
  if tick_entry_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick_entry_group_index, tick_entry_group_index)
    iteration:set_generated()
  end

  -- Min Price: N
  index, min_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_min_price.dissect(buffer, index, packet, parent)

  -- Min Price Fraction Indicator: X
  index, min_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.min_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Tick Price: N
  index, tick_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_price.dissect(buffer, index, packet, parent)

  -- Tick Price Fraction Indicator: X
  index, tick_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Entry Group
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_entry_group.dissect = function(buffer, offset, packet, parent, tick_entry_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick_entry_group, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_entry_group.fields(buffer, offset, packet, parent, tick_entry_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_entry_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.tick_entry_group.fields(buffer, offset, packet, parent, tick_entry_group_index)
  end
end

-- Tick Table Message
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_table_message = {}

-- Calculate size of: Tick Table Message
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_table_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.tick_table_name.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.tick_table_short_name.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_entries.size

  -- Calculate field size from count
  local tick_entry_group_count = buffer(offset + index - 2, 2):string()
  index = index + tick_entry_group_count * 14

  return index
end

-- Display: Tick Table Message
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_table_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Table Message
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_table_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Tick Table Name: X
  index, tick_table_name = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_table_name.dissect(buffer, index, packet, parent)

  -- Tick Table Short Name: X
  index, tick_table_short_name = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_table_short_name.dissect(buffer, index, packet, parent)

  -- Number Of Entries: N
  index, number_of_entries = tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Tick Entry Group
  for tick_entry_group_index = 1, number_of_entries do
    index, tick_entry_group = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_entry_group.dissect(buffer, index, packet, parent, tick_entry_group_index)
  end

  return index
end

-- Dissect: Tick Table Message
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_table_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick_table_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_table_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_table_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.tick_table_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Sales Message
tmx_mx_solatcpretransmission_hsvf_v1_11.end_of_sales_message = {}

-- Size: End Of Sales Message
tmx_mx_solatcpretransmission_hsvf_v1_11.end_of_sales_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.reserved.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.time.size

-- Display: End Of Sales Message
tmx_mx_solatcpretransmission_hsvf_v1_11.end_of_sales_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Sales Message
tmx_mx_solatcpretransmission_hsvf_v1_11.end_of_sales_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved: 1 Byte
  index, reserved = tmx_mx_solatcpretransmission_hsvf_v1_11.reserved.dissect(buffer, index, packet, parent)

  -- Time: N
  index, time = tmx_mx_solatcpretransmission_hsvf_v1_11.time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Sales Message
tmx_mx_solatcpretransmission_hsvf_v1_11.end_of_sales_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.end_of_sales_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.end_of_sales_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.end_of_sales_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.end_of_sales_message.fields(buffer, offset, packet, parent)
  end
end

-- Special Text Bulletin
tmx_mx_solatcpretransmission_hsvf_v1_11.special_text_bulletin = {}

-- Size: Special Text Bulletin
tmx_mx_solatcpretransmission_hsvf_v1_11.special_text_bulletin.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.symbol.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.special_bulletin_contents.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.continue_marker.size

-- Display: Special Text Bulletin
tmx_mx_solatcpretransmission_hsvf_v1_11.special_text_bulletin.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Special Text Bulletin
tmx_mx_solatcpretransmission_hsvf_v1_11.special_text_bulletin.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: X
  index, symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.symbol.dissect(buffer, index, packet, parent)

  -- Special Bulletin Contents: X
  index, special_bulletin_contents = tmx_mx_solatcpretransmission_hsvf_v1_11.special_bulletin_contents.dissect(buffer, index, packet, parent)

  -- Continue Marker: N
  index, continue_marker = tmx_mx_solatcpretransmission_hsvf_v1_11.continue_marker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Special Text Bulletin
tmx_mx_solatcpretransmission_hsvf_v1_11.special_text_bulletin.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.special_text_bulletin, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.special_text_bulletin.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.special_text_bulletin.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.special_text_bulletin.fields(buffer, offset, packet, parent)
  end
end

-- Regular Text Bulletin
tmx_mx_solatcpretransmission_hsvf_v1_11.regular_text_bulletin = {}

-- Size: Regular Text Bulletin
tmx_mx_solatcpretransmission_hsvf_v1_11.regular_text_bulletin.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.regular_bulletin_contents.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.continue_marker.size

-- Display: Regular Text Bulletin
tmx_mx_solatcpretransmission_hsvf_v1_11.regular_text_bulletin.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Regular Text Bulletin
tmx_mx_solatcpretransmission_hsvf_v1_11.regular_text_bulletin.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Regular Bulletin Contents: X
  index, regular_bulletin_contents = tmx_mx_solatcpretransmission_hsvf_v1_11.regular_bulletin_contents.dissect(buffer, index, packet, parent)

  -- Continue Marker: N
  index, continue_marker = tmx_mx_solatcpretransmission_hsvf_v1_11.continue_marker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Regular Text Bulletin
tmx_mx_solatcpretransmission_hsvf_v1_11.regular_text_bulletin.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.regular_text_bulletin, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.regular_text_bulletin.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.regular_text_bulletin.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.regular_text_bulletin.fields(buffer, offset, packet, parent)
  end
end

-- Bulletin
tmx_mx_solatcpretransmission_hsvf_v1_11.bulletin = {}

-- Dissect: Bulletin
tmx_mx_solatcpretransmission_hsvf_v1_11.bulletin.dissect = function(buffer, offset, packet, parent, bulletin_type)
  -- Dissect Regular Text Bulletin
  if bulletin_type == "1" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.regular_text_bulletin.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Special Text Bulletin
  if bulletin_type == "2" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.special_text_bulletin.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Bulletins Message
tmx_mx_solatcpretransmission_hsvf_v1_11.bulletins_message = {}

-- Calculate size of: Bulletins Message
tmx_mx_solatcpretransmission_hsvf_v1_11.bulletins_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.reserved.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.bulletin_type.size

  -- Calculate runtime size of Bulletin field
  local bulletin_offset = offset + index
  local bulletin_type = buffer(bulletin_offset - 1, 1):string()
  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.bulletin.size(buffer, bulletin_offset, bulletin_type)

  return index
end

-- Display: Bulletins Message
tmx_mx_solatcpretransmission_hsvf_v1_11.bulletins_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulletins Message
tmx_mx_solatcpretransmission_hsvf_v1_11.bulletins_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved: 1 Byte
  index, reserved = tmx_mx_solatcpretransmission_hsvf_v1_11.reserved.dissect(buffer, index, packet, parent)

  -- Bulletin Type: X
  index, bulletin_type = tmx_mx_solatcpretransmission_hsvf_v1_11.bulletin_type.dissect(buffer, index, packet, parent)

  -- Bulletin: Runtime Type with 2 branches
  index = tmx_mx_solatcpretransmission_hsvf_v1_11.bulletin.dissect(buffer, index, packet, parent, bulletin_type)

  return index
end

-- Dissect: Bulletins Message
tmx_mx_solatcpretransmission_hsvf_v1_11.bulletins_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bulletins_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.bulletins_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.bulletins_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.bulletins_message.fields(buffer, offset, packet, parent)
  end
end

-- Group Status Strategies Message
tmx_mx_solatcpretransmission_hsvf_v1_11.group_status_strategies_message = {}

-- Size: Group Status Strategies Message
tmx_mx_solatcpretransmission_hsvf_v1_11.group_status_strategies_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.group_instrument.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.group_status.size

-- Display: Group Status Strategies Message
tmx_mx_solatcpretransmission_hsvf_v1_11.group_status_strategies_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Status Strategies Message
tmx_mx_solatcpretransmission_hsvf_v1_11.group_status_strategies_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = tmx_mx_solatcpretransmission_hsvf_v1_11.group_instrument.dissect(buffer, index, packet, parent)

  -- Group Status: A
  index, group_status = tmx_mx_solatcpretransmission_hsvf_v1_11.group_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Status Strategies Message
tmx_mx_solatcpretransmission_hsvf_v1_11.group_status_strategies_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.group_status_strategies_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.group_status_strategies_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.group_status_strategies_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.group_status_strategies_message.fields(buffer, offset, packet, parent)
  end
end

-- Group Status Message
tmx_mx_solatcpretransmission_hsvf_v1_11.group_status_message = {}

-- Size: Group Status Message
tmx_mx_solatcpretransmission_hsvf_v1_11.group_status_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol_group.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.group_status.size

-- Display: Group Status Message
tmx_mx_solatcpretransmission_hsvf_v1_11.group_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Status Message
tmx_mx_solatcpretransmission_hsvf_v1_11.group_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol Group: X
  index, root_symbol_group = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol_group.dissect(buffer, index, packet, parent)

  -- Group Status: A
  index, group_status = tmx_mx_solatcpretransmission_hsvf_v1_11.group_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Status Message
tmx_mx_solatcpretransmission_hsvf_v1_11.group_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.group_status_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.group_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.group_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.group_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Swap Future Trade Correction Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_trade_correction_message = {}

-- Size: Swap Future Trade Correction Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_trade_correction_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol_swap_future.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month_swap_future.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.tenor.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_volume.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.price_indicator_marker.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.size

-- Display: Swap Future Trade Correction Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Swap Future Trade Correction Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol Swap Future: X
  index, root_symbol_swap_future = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol_swap_future.dissect(buffer, index, packet, parent)

  -- Expiry Month Swap Future: A
  index, expiry_month_swap_future = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month_swap_future.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Tenor: N
  index, tenor = tmx_mx_solatcpretransmission_hsvf_v1_11.tenor.dissect(buffer, index, packet, parent)

  -- Fixed Rate: N
  index, fixed_rate = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_fixed_rate.dissect(buffer, index, packet, parent)

  -- Fixed Rate Fraction Indicator: X
  index, fixed_rate_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Trade Volume: N
  index, trade_volume = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_volume.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign: X
  index, net_change_sign = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker: X
  index, price_indicator_marker = tmx_mx_solatcpretransmission_hsvf_v1_11.price_indicator_marker.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Swap Future Trade Correction Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.swap_future_trade_correction_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Trade Correction Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_trade_correction_message = {}

-- Size: Strategy Trade Correction Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_trade_correction_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.symbol.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.volume.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_sign.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.filler_6.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.price_indicator_marker.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.size

-- Display: Strategy Trade Correction Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Trade Correction Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Symbol: X
  index, symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.symbol.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_solatcpretransmission_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Trade Price Sign: X
  index, trade_price_sign = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_sign.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign: X
  index, net_change_sign = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Filler 6: N
  index, filler_6 = tmx_mx_solatcpretransmission_hsvf_v1_11.filler_6.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker: X
  index, price_indicator_marker = tmx_mx_solatcpretransmission_hsvf_v1_11.price_indicator_marker.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Trade Correction Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strategy_trade_correction_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Futures Trade Correction Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_trade_correction_message = {}

-- Size: Futures Trade Correction Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_trade_correction_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_month.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_year_futures.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_day.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.volume.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.filler_6.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.price_indicator_marker.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.size

-- Display: Futures Trade Correction Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Trade Correction Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: A
  index, root_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.dissect(buffer, index, packet, parent)

  -- Delivery Month: A
  index, delivery_month = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_month.dissect(buffer, index, packet, parent)

  -- Delivery Year Futures: N
  index, delivery_year_futures = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_year_futures.dissect(buffer, index, packet, parent)

  -- Delivery Day: N
  index, delivery_day = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_day.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_solatcpretransmission_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign: X
  index, net_change_sign = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Filler 6: N
  index, filler_6 = tmx_mx_solatcpretransmission_hsvf_v1_11.filler_6.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker: X
  index, price_indicator_marker = tmx_mx_solatcpretransmission_hsvf_v1_11.price_indicator_marker.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Trade Correction Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.futures_trade_correction_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.futures_trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.futures_trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.futures_trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Future Options Trade Correction Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_trade_correction_message = {}

-- Size: Future Options Trade Correction Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_trade_correction_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.contract_month_code.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.call_put_code.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_instrument.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.volume.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.price_indicator_marker.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.filler_6.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.open_interest.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.filler_2.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.size

-- Display: Future Options Trade Correction Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Trade Correction Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: A
  index, root_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.dissect(buffer, index, packet, parent)

  -- Contract Month Code: A
  index, contract_month_code = tmx_mx_solatcpretransmission_hsvf_v1_11.contract_month_code.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Call Put Code: A
  index, call_put_code = tmx_mx_solatcpretransmission_hsvf_v1_11.call_put_code.dissect(buffer, index, packet, parent)

  -- Strike Price Instrument: N
  index, strike_price_instrument = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_instrument.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_solatcpretransmission_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker: A
  index, price_indicator_marker = tmx_mx_solatcpretransmission_hsvf_v1_11.price_indicator_marker.dissect(buffer, index, packet, parent)

  -- Net Change Sign: A
  index, net_change_sign = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: A
  index, net_change_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Filler 6: N
  index, filler_6 = tmx_mx_solatcpretransmission_hsvf_v1_11.filler_6.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Open Interest: N
  index, open_interest = tmx_mx_solatcpretransmission_hsvf_v1_11.open_interest.dissect(buffer, index, packet, parent)

  -- Filler 2: X
  index, filler_2 = tmx_mx_solatcpretransmission_hsvf_v1_11.filler_2.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Trade Correction Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.future_options_trade_correction_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Trade Correction Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_trade_correction_message = {}

-- Size: Option Trade Correction Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_trade_correction_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.filler_1.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_instrument.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.volume.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.filler_6.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.open_interest.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.second_filler_1.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.price_indicator_marker.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.size

-- Display: Option Trade Correction Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Trade Correction Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: X
  index, root_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.dissect(buffer, index, packet, parent)

  -- Expiry Month: A
  index, expiry_month = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month.dissect(buffer, index, packet, parent)

  -- Filler 1: A
  index, filler_1 = tmx_mx_solatcpretransmission_hsvf_v1_11.filler_1.dissect(buffer, index, packet, parent)

  -- Strike Price Instrument: N
  index, strike_price_instrument = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_instrument.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_solatcpretransmission_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign: A
  index, net_change_sign = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Filler 6: N
  index, filler_6 = tmx_mx_solatcpretransmission_hsvf_v1_11.filler_6.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Open Interest: N
  index, open_interest = tmx_mx_solatcpretransmission_hsvf_v1_11.open_interest.dissect(buffer, index, packet, parent)

  -- Second Filler 1: X
  index, second_filler_1 = tmx_mx_solatcpretransmission_hsvf_v1_11.second_filler_1.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker: A
  index, price_indicator_marker = tmx_mx_solatcpretransmission_hsvf_v1_11.price_indicator_marker.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Trade Correction Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.option_trade_correction_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.option_trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.option_trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.option_trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Swap Future Beginning Of Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_beginning_of_summary_message = {}

-- Size: Swap Future Beginning Of Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_beginning_of_summary_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size

-- Display: Swap Future Beginning Of Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_beginning_of_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Swap Future Beginning Of Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_beginning_of_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Swap Future Beginning Of Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_beginning_of_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.swap_future_beginning_of_summary_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_beginning_of_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_beginning_of_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_beginning_of_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Beginning Of Strategy Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_strategy_summary_message = {}

-- Size: Beginning Of Strategy Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_strategy_summary_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size

-- Display: Beginning Of Strategy Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_strategy_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Beginning Of Strategy Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_strategy_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Beginning Of Strategy Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_strategy_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.beginning_of_strategy_summary_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_strategy_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_strategy_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_strategy_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Beginning Of Futures Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_futures_summary_message = {}

-- Size: Beginning Of Futures Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_futures_summary_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size

-- Display: Beginning Of Futures Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_futures_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Beginning Of Futures Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_futures_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Beginning Of Futures Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_futures_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.beginning_of_futures_summary_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_futures_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_futures_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_futures_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Beginning Of Future Options Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_future_options_summary_message = {}

-- Size: Beginning Of Future Options Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_future_options_summary_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size

-- Display: Beginning Of Future Options Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_future_options_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Beginning Of Future Options Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_future_options_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Beginning Of Future Options Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_future_options_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.beginning_of_future_options_summary_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_future_options_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_future_options_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_future_options_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Beginning Of Options Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_options_summary_message = {}

-- Size: Beginning Of Options Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_options_summary_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size

-- Display: Beginning Of Options Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_options_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Beginning Of Options Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_options_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Beginning Of Options Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_options_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.beginning_of_options_summary_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_options_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_options_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_options_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Swap Future Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_summary_message = {}

-- Size: Swap Future Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_summary_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month_swap_future.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.tenor.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_summary.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_summary.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.last_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.last_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.open_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.open_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.high_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.high_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.low_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.low_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.settlement_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.settlement_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_present_value_a.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_present_value_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.historical_coupon_b.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.historical_coupon_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.price_alignment_interest_c.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.price_alignment_interest_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.volume.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.previous_reset_rate.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.previous_reset_rate_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.open_interest.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.reason.size

-- Display: Swap Future Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Swap Future Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: X
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: A
  index, root_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.dissect(buffer, index, packet, parent)

  -- Expiry Month Swap Future: A
  index, expiry_month_swap_future = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month_swap_future.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Tenor: N
  index, tenor = tmx_mx_solatcpretransmission_hsvf_v1_11.tenor.dissect(buffer, index, packet, parent)

  -- Fixed Rate: N
  index, fixed_rate = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_fixed_rate.dissect(buffer, index, packet, parent)

  -- Fixed Rate Fraction Indicator: X
  index, fixed_rate_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Price Summary: N
  index, bid_price_summary = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_summary.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price Summary: N
  index, ask_price_summary = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_summary.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.dissect(buffer, index, packet, parent)

  -- Last Price: N
  index, last_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_last_price.dissect(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: X
  index, last_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.last_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Open Price: N
  index, open_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_open_price.dissect(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: X
  index, open_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.open_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- High Price: N
  index, high_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_high_price.dissect(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.high_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Low Price: N
  index, low_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_low_price.dissect(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.low_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Settlement Price: N
  index, settlement_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_settlement_price.dissect(buffer, index, packet, parent)

  -- Settlement Price Fraction Indicator: X
  index, settlement_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.settlement_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Present Value A: N
  index, net_present_value_a = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_present_value_a.dissect(buffer, index, packet, parent)

  -- Net Present Value Fraction Indicator: X
  index, net_present_value_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.net_present_value_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Historical Coupon B: N
  index, historical_coupon_b = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_historical_coupon_b.dissect(buffer, index, packet, parent)

  -- Historical Coupon Fraction Indicator: X
  index, historical_coupon_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.historical_coupon_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Price Alignment Interest C: N
  index, price_alignment_interest_c = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_price_alignment_interest_c.dissect(buffer, index, packet, parent)

  -- Price Alignment Interest Fraction Indicator: X
  index, price_alignment_interest_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.price_alignment_interest_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign: X
  index, net_change_sign = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_solatcpretransmission_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Previous Settlement Price: N
  index, previous_settlement_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_settlement_price.dissect(buffer, index, packet, parent)

  -- Previous Settlement Price Fraction Indicator: X
  index, previous_settlement_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Previous Reset Rate: X
  index, previous_reset_rate = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_reset_rate.dissect(buffer, index, packet, parent)

  -- Previous Reset Rate Fraction Indicator: X
  index, previous_reset_rate_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.previous_reset_rate_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Open Interest: N
  index, open_interest = tmx_mx_solatcpretransmission_hsvf_v1_11.open_interest.dissect(buffer, index, packet, parent)

  -- Reason: X
  index, reason = tmx_mx_solatcpretransmission_hsvf_v1_11.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Swap Future Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.swap_future_summary_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Summary Strategy Leg
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_summary_strategy_leg = {}

-- Size: Strategy Summary Strategy Leg
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_summary_strategy_leg.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.leg_ratio_sign.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.leg_ratio.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.leg_symbol.size

-- Display: Strategy Summary Strategy Leg
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_summary_strategy_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Summary Strategy Leg
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_summary_strategy_leg.fields = function(buffer, offset, packet, parent, strategy_summary_strategy_leg_index)
  local index = offset

  -- Implicit Strategy Summary Strategy Leg Index
  if strategy_summary_strategy_leg_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strategy_summary_strategy_leg_index, strategy_summary_strategy_leg_index)
    iteration:set_generated()
  end

  -- Leg Ratio Sign: X
  index, leg_ratio_sign = tmx_mx_solatcpretransmission_hsvf_v1_11.leg_ratio_sign.dissect(buffer, index, packet, parent)

  -- Leg Ratio: N
  index, leg_ratio = tmx_mx_solatcpretransmission_hsvf_v1_11.leg_ratio.dissect(buffer, index, packet, parent)

  -- Leg Symbol: X
  index, leg_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.leg_symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Summary Strategy Leg
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_summary_strategy_leg.dissect = function(buffer, offset, packet, parent, strategy_summary_strategy_leg_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strategy_summary_strategy_leg, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_summary_strategy_leg.fields(buffer, offset, packet, parent, strategy_summary_strategy_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_summary_strategy_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_summary_strategy_leg.fields(buffer, offset, packet, parent, strategy_summary_strategy_leg_index)
  end
end

-- Strategy Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_summary_message = {}

-- Calculate size of: Strategy Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_summary_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_symbol.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_sign.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_summary.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_fraction_indicator.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_sign.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_summary.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_fraction_indicator.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.last_price_sign.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.last_price.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.last_price_fraction_indicator.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.open_price_sign.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.open_price.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.open_price_fraction_indicator.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.high_price_sign.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.high_price.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.high_price_fraction_indicator.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.low_price_sign.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.low_price.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.low_price_fraction_indicator.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.net_change.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.volume.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.reason.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_legs.size

  -- Calculate field size from count
  local strategy_summary_strategy_leg_count = buffer(offset + index - 2, 2):string()
  index = index + strategy_summary_strategy_leg_count * 33

  return index
end

-- Display: Strategy Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: X
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Strategy Symbol: X
  index, strategy_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_symbol.dissect(buffer, index, packet, parent)

  -- Bid Price Sign: X
  index, bid_price_sign = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_sign.dissect(buffer, index, packet, parent)

  -- Bid Price Summary: N
  index, bid_price_summary = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_summary.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price Sign: X
  index, ask_price_sign = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_sign.dissect(buffer, index, packet, parent)

  -- Ask Price Summary: N
  index, ask_price_summary = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_summary.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.dissect(buffer, index, packet, parent)

  -- Last Price Sign: X
  index, last_price_sign = tmx_mx_solatcpretransmission_hsvf_v1_11.last_price_sign.dissect(buffer, index, packet, parent)

  -- Last Price: N
  index, last_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_last_price.dissect(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: X
  index, last_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.last_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Open Price Sign: X
  index, open_price_sign = tmx_mx_solatcpretransmission_hsvf_v1_11.open_price_sign.dissect(buffer, index, packet, parent)

  -- Open Price: N
  index, open_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_open_price.dissect(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: X
  index, open_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.open_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- High Price Sign: X
  index, high_price_sign = tmx_mx_solatcpretransmission_hsvf_v1_11.high_price_sign.dissect(buffer, index, packet, parent)

  -- High Price: N
  index, high_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_high_price.dissect(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.high_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Low Price Sign: X
  index, low_price_sign = tmx_mx_solatcpretransmission_hsvf_v1_11.low_price_sign.dissect(buffer, index, packet, parent)

  -- Low Price: N
  index, low_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_low_price.dissect(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.low_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign: X
  index, net_change_sign = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_solatcpretransmission_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Reason: X
  index, reason = tmx_mx_solatcpretransmission_hsvf_v1_11.reason.dissect(buffer, index, packet, parent)

  -- Number Of Legs: N
  index, number_of_legs = tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Strategy Summary Strategy Leg
  for strategy_summary_strategy_leg_index = 1, number_of_legs do
    index, strategy_summary_strategy_leg = tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_summary_strategy_leg.dissect(buffer, index, packet, parent, strategy_summary_strategy_leg_index)
  end

  return index
end

-- Dissect: Strategy Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strategy_summary_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Futures Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_summary_message = {}

-- Size: Futures Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_summary_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_month.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_year_futures.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_day.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_summary.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_summary.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.last_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.last_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.open_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.open_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.high_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.high_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.low_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.low_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.settlement_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.settlement_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.volume.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.open_interest.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.reason.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.external_price_at_source.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.external_price_fraction_indicator.size

-- Display: Futures Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: A
  index, root_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.dissect(buffer, index, packet, parent)

  -- Delivery Month: A
  index, delivery_month = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_month.dissect(buffer, index, packet, parent)

  -- Delivery Year Futures: N
  index, delivery_year_futures = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_year_futures.dissect(buffer, index, packet, parent)

  -- Delivery Day: N
  index, delivery_day = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_day.dissect(buffer, index, packet, parent)

  -- Bid Price Summary: N
  index, bid_price_summary = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_summary.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price Summary: N
  index, ask_price_summary = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_summary.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.dissect(buffer, index, packet, parent)

  -- Last Price: N
  index, last_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_last_price.dissect(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: X
  index, last_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.last_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Open Price: N
  index, open_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_open_price.dissect(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: X
  index, open_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.open_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- High Price: N
  index, high_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_high_price.dissect(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.high_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Low Price: N
  index, low_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_low_price.dissect(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.low_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Settlement Price: N
  index, settlement_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_settlement_price.dissect(buffer, index, packet, parent)

  -- Settlement Price Fraction Indicator: X
  index, settlement_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.settlement_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign: X
  index, net_change_sign = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_solatcpretransmission_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Previous Settlement: N
  index, previous_settlement = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_settlement.dissect(buffer, index, packet, parent)

  -- Previous Settlement Fraction Indicator: X
  index, previous_settlement_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Open Interest: N
  index, open_interest = tmx_mx_solatcpretransmission_hsvf_v1_11.open_interest.dissect(buffer, index, packet, parent)

  -- Reason: X
  index, reason = tmx_mx_solatcpretransmission_hsvf_v1_11.reason.dissect(buffer, index, packet, parent)

  -- External Price At Source: N
  index, external_price_at_source = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_external_price_at_source.dissect(buffer, index, packet, parent)

  -- External Price Fraction Indicator: X
  index, external_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.external_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.futures_summary_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.futures_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.futures_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.futures_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Future Options Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_summary_message = {}

-- Size: Future Options Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_summary_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.contract_month_code.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.call_put_code.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_instrument.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_summary.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_summary.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.last_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.last_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.open_interest.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.tick.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.volume.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.opening_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.opening_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.high_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.high_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.low_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.low_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.filler_2.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_symbol_root_future_options.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_month.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_year_underlying.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.settlement_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.settlement_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.reason.size

-- Display: Future Options Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: A
  index, root_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.dissect(buffer, index, packet, parent)

  -- Contract Month Code: A
  index, contract_month_code = tmx_mx_solatcpretransmission_hsvf_v1_11.contract_month_code.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Call Put Code: S
  index, call_put_code = tmx_mx_solatcpretransmission_hsvf_v1_11.call_put_code.dissect(buffer, index, packet, parent)

  -- Strike Price Instrument: N
  index, strike_price_instrument = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_instrument.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Price Summary: N
  index, bid_price_summary = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_summary.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price Summary: N
  index, ask_price_summary = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_summary.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.dissect(buffer, index, packet, parent)

  -- Last Price: N
  index, last_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_last_price.dissect(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: X
  index, last_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.last_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Open Interest: N
  index, open_interest = tmx_mx_solatcpretransmission_hsvf_v1_11.open_interest.dissect(buffer, index, packet, parent)

  -- Tick: X
  index, tick = tmx_mx_solatcpretransmission_hsvf_v1_11.tick.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_solatcpretransmission_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Net Change Sign: X
  index, net_change_sign = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Opening Price: N
  index, opening_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_opening_price.dissect(buffer, index, packet, parent)

  -- Opening Price Fraction Indicator: X
  index, opening_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.opening_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- High Price: N
  index, high_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_high_price.dissect(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.high_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Low Price: N
  index, low_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_low_price.dissect(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.low_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Filler 2: X
  index, filler_2 = tmx_mx_solatcpretransmission_hsvf_v1_11.filler_2.dissect(buffer, index, packet, parent)

  -- Underlying Symbol Root Future Options: A
  index, underlying_symbol_root_future_options = tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_symbol_root_future_options.dissect(buffer, index, packet, parent)

  -- Delivery Month: A
  index, delivery_month = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_month.dissect(buffer, index, packet, parent)

  -- Delivery Year Underlying: N
  index, delivery_year_underlying = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_year_underlying.dissect(buffer, index, packet, parent)

  -- Settlement Price: N
  index, settlement_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_settlement_price.dissect(buffer, index, packet, parent)

  -- Settlement Price Fraction Indicator: X
  index, settlement_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.settlement_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Previous Settlement Price: N
  index, previous_settlement_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_settlement_price.dissect(buffer, index, packet, parent)

  -- Previous Settlement Price Fraction Indicator: X
  index, previous_settlement_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Reason: X
  index, reason = tmx_mx_solatcpretransmission_hsvf_v1_11.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.future_options_summary_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_summary_message = {}

-- Size: Option Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_summary_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.filler_1.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_instrument.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_summary.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_summary.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.last_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.last_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.open_interest.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.tick.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.volume.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.open_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.open_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.high_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.high_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.low_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.low_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.option_marker.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_symbol_root_options.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.settlement_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.settlement_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.reason.size

-- Display: Option Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: X
  index, root_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.dissect(buffer, index, packet, parent)

  -- Expiry Month: A
  index, expiry_month = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month.dissect(buffer, index, packet, parent)

  -- Filler 1: A
  index, filler_1 = tmx_mx_solatcpretransmission_hsvf_v1_11.filler_1.dissect(buffer, index, packet, parent)

  -- Strike Price Instrument: N
  index, strike_price_instrument = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_instrument.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Bid Price Summary: N
  index, bid_price_summary = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_summary.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price Summary: N
  index, ask_price_summary = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_summary.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.dissect(buffer, index, packet, parent)

  -- Last Price: N
  index, last_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_last_price.dissect(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: X
  index, last_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.last_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Open Interest: N
  index, open_interest = tmx_mx_solatcpretransmission_hsvf_v1_11.open_interest.dissect(buffer, index, packet, parent)

  -- Tick: X
  index, tick = tmx_mx_solatcpretransmission_hsvf_v1_11.tick.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_solatcpretransmission_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Net Change Sign: X
  index, net_change_sign = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Open Price: N
  index, open_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_open_price.dissect(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: X
  index, open_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.open_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- High Price: N
  index, high_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_high_price.dissect(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.high_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Low Price: N
  index, low_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_low_price.dissect(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.low_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Option Marker: A
  index, option_marker = tmx_mx_solatcpretransmission_hsvf_v1_11.option_marker.dissect(buffer, index, packet, parent)

  -- Underlying Symbol Root Options: X
  index, underlying_symbol_root_options = tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_symbol_root_options.dissect(buffer, index, packet, parent)

  -- Settlement Price: N
  index, settlement_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_settlement_price.dissect(buffer, index, packet, parent)

  -- Settlement Price Fraction Indicator: N
  index, settlement_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.settlement_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Previous Settlement Price: N
  index, previous_settlement_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_previous_settlement_price.dissect(buffer, index, packet, parent)

  -- Previous Settlement Price Fraction Indicator: X
  index, previous_settlement_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.previous_settlement_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Reason: X
  index, reason = tmx_mx_solatcpretransmission_hsvf_v1_11.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Summary Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.option_summary_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.option_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.option_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.option_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Tick Increment Raw Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_raw_pair = {}

-- Size: Tick Increment Raw Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_raw_pair.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_raw.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_fraction_indicator.size

-- Display: Tick Increment Raw Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_raw_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Increment Raw Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_raw_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tick Increment Raw: X
  index, tick_increment_raw = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_raw.dissect(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator: X
  index, tick_increment_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Increment Raw Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_raw_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick_increment_raw_pair, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_raw_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_raw_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_raw_pair.fields(buffer, offset, packet, parent)
  end
end

-- Tick Increment Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_numeric_pair = {}

-- Size: Tick Increment Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_numeric_pair.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_numeric.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_fraction_indicator.size

-- Display: Tick Increment Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_numeric_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Increment Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_numeric_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tick Increment Numeric: X
  index, tick_increment_numeric = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_increment.dissect(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator: X
  index, tick_increment_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Increment Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_numeric_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.tick_increment_numeric_pair, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_numeric_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_numeric_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_numeric_pair.fields(buffer, offset, packet, parent)
  end
end

-- Tick Increment
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment = {}

-- Dissect: Tick Increment
tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment.dissect = function(buffer, offset, packet, parent, tick_increment_fraction_indicator)
  -- Dissect Tick Increment Numeric Pair
  if tick_increment_fraction_indicator == "0" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Increment Numeric Pair
  if tick_increment_fraction_indicator == "1" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Increment Numeric Pair
  if tick_increment_fraction_indicator == "2" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Increment Numeric Pair
  if tick_increment_fraction_indicator == "3" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Increment Numeric Pair
  if tick_increment_fraction_indicator == "4" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Increment Numeric Pair
  if tick_increment_fraction_indicator == "5" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Increment Numeric Pair
  if tick_increment_fraction_indicator == "6" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Increment Numeric Pair
  if tick_increment_fraction_indicator == "7" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Increment Numeric Pair
  if tick_increment_fraction_indicator == "8" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Increment Numeric Pair
  if tick_increment_fraction_indicator == "9" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Increment Numeric Pair
  if tick_increment_fraction_indicator == "A" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Increment Numeric Pair
  if tick_increment_fraction_indicator == "B" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Increment Numeric Pair
  if tick_increment_fraction_indicator == "C" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Increment Numeric Pair
  if tick_increment_fraction_indicator == "D" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Increment Numeric Pair
  if tick_increment_fraction_indicator == "E" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Increment Numeric Pair
  if tick_increment_fraction_indicator == "F" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Increment Numeric Pair
  if tick_increment_fraction_indicator == "G" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_numeric_pair.dissect(buffer, offset, packet, parent)
  end

  -- Dissect Tick Increment Raw Pair
  return tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment_raw_pair.dissect(buffer, offset, packet, parent)
end

-- Swap Future Instrument Keys Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_instrument_keys_message = {}

-- Calculate size of: Swap Future Instrument Keys Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_instrument_keys_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month_swap_future.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.tenor.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate_fraction_indicator.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_number_of_contracts_per_order.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_number_of_contracts_per_order.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_options.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_fraction_indicator.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_options.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_fraction_indicator.size

  -- Calculate runtime size of Tick Increment field
  local tick_increment_offset = offset + index
  local tick_increment_type = buffer(tick_increment_offset + 6, 1):string()
  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment.size(buffer, tick_increment_offset, tick_increment_type)

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.market_flow.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.group_instrument.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_id.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.external_symbol.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.contract_size.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.tick_value.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.tick_value_fraction_indicator.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.currency.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.effective_date.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.initial_effective_date.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.cash_flow_alignment_date.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.payment_frequency.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.reset_frequency.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.notional_principal_amount.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.notional_principal_amount_faction_indicator.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.day_count_convention.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.first_payment_date.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.next_payment_date.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.first_reset_date.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.next_reset_date.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.previous_reset_date.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_type.size

  return index
end

-- Display: Swap Future Instrument Keys Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_instrument_keys_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Swap Future Instrument Keys Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_instrument_keys_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: A
  index, root_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.dissect(buffer, index, packet, parent)

  -- Expiry Month Swap Future: A
  index, expiry_month_swap_future = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month_swap_future.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Tenor: N
  index, tenor = tmx_mx_solatcpretransmission_hsvf_v1_11.tenor.dissect(buffer, index, packet, parent)

  -- Fixed Rate: N
  index, fixed_rate = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_fixed_rate.dissect(buffer, index, packet, parent)

  -- Fixed Rate Fraction Indicator: X
  index, fixed_rate_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Maximum Number Of Contracts Per Order: X
  index, maximum_number_of_contracts_per_order = tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Minimum Number Of Contracts Per Order: X
  index, minimum_number_of_contracts_per_order = tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price Options: X
  index, maximum_threshold_price_options = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_options.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: X
  index, maximum_threshold_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price Options: X
  index, minimum_threshold_price_options = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_options.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: X
  index, minimum_threshold_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Dependency element: Tick Increment Fraction Indicator
  local tick_increment_fraction_indicator = buffer(index + 6, 1):string()

  -- Tick Increment: Runtime Type with 2 branches
  index = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment.dissect(buffer, index, packet, parent, tick_increment_fraction_indicator)

  -- Market Flow: X
  index, market_flow = tmx_mx_solatcpretransmission_hsvf_v1_11.market_flow.dissect(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = tmx_mx_solatcpretransmission_hsvf_v1_11.group_instrument.dissect(buffer, index, packet, parent)

  -- Instrument Id: X
  index, instrument_id = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_id.dissect(buffer, index, packet, parent)

  -- External Symbol: X
  index, external_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.external_symbol.dissect(buffer, index, packet, parent)

  -- Contract Size: N
  index, contract_size = tmx_mx_solatcpretransmission_hsvf_v1_11.contract_size.dissect(buffer, index, packet, parent)

  -- Tick Value: N
  index, tick_value = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_value.dissect(buffer, index, packet, parent)

  -- Tick Value Fraction Indicator: X
  index, tick_value_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_value_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Currency: A
  index, currency = tmx_mx_solatcpretransmission_hsvf_v1_11.currency.dissect(buffer, index, packet, parent)

  -- Effective Date: A
  index, effective_date = tmx_mx_solatcpretransmission_hsvf_v1_11.effective_date.dissect(buffer, index, packet, parent)

  -- Initial Effective Date: A
  index, initial_effective_date = tmx_mx_solatcpretransmission_hsvf_v1_11.initial_effective_date.dissect(buffer, index, packet, parent)

  -- Cash Flow Alignment Date: A
  index, cash_flow_alignment_date = tmx_mx_solatcpretransmission_hsvf_v1_11.cash_flow_alignment_date.dissect(buffer, index, packet, parent)

  -- Payment Frequency: X
  index, payment_frequency = tmx_mx_solatcpretransmission_hsvf_v1_11.payment_frequency.dissect(buffer, index, packet, parent)

  -- Reset Frequency: X
  index, reset_frequency = tmx_mx_solatcpretransmission_hsvf_v1_11.reset_frequency.dissect(buffer, index, packet, parent)

  -- Notional Principal Amount: N
  index, notional_principal_amount = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_notional_principal_amount.dissect(buffer, index, packet, parent)

  -- Notional Principal Amount Faction Indicator: X
  index, notional_principal_amount_faction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.notional_principal_amount_faction_indicator.dissect(buffer, index, packet, parent)

  -- Day Count Convention: A
  index, day_count_convention = tmx_mx_solatcpretransmission_hsvf_v1_11.day_count_convention.dissect(buffer, index, packet, parent)

  -- First Payment Date: A
  index, first_payment_date = tmx_mx_solatcpretransmission_hsvf_v1_11.first_payment_date.dissect(buffer, index, packet, parent)

  -- Next Payment Date: A
  index, next_payment_date = tmx_mx_solatcpretransmission_hsvf_v1_11.next_payment_date.dissect(buffer, index, packet, parent)

  -- First Reset Date: A
  index, first_reset_date = tmx_mx_solatcpretransmission_hsvf_v1_11.first_reset_date.dissect(buffer, index, packet, parent)

  -- Next Reset Date: A
  index, next_reset_date = tmx_mx_solatcpretransmission_hsvf_v1_11.next_reset_date.dissect(buffer, index, packet, parent)

  -- Previous Reset Date: A
  index, previous_reset_date = tmx_mx_solatcpretransmission_hsvf_v1_11.previous_reset_date.dissect(buffer, index, packet, parent)

  -- Delivery Type: X
  index, delivery_type = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Swap Future Instrument Keys Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_instrument_keys_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.swap_future_instrument_keys_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_instrument_keys_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_instrument_keys_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_instrument_keys_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Instrument Keys Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_instrument_keys_message = {}

-- Calculate size of: Strategy Instrument Keys Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_instrument_keys_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_symbol.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_month_strategy.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_number_of_contracts_per_order.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_number_of_contracts_per_order.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_options.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_fraction_indicator.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_options.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_fraction_indicator.size

  -- Calculate runtime size of Tick Increment field
  local tick_increment_offset = offset + index
  local tick_increment_type = buffer(tick_increment_offset + 6, 1):string()
  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment.size(buffer, tick_increment_offset, tick_increment_type)

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.market_flow_indicator.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.group_instrument.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.instrument.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_external_code.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_allow_implied.size

  return index
end

-- Display: Strategy Instrument Keys Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_instrument_keys_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Instrument Keys Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_instrument_keys_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Strategy Symbol: X
  index, strategy_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_symbol.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Delivery Month Strategy: A
  index, delivery_month_strategy = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_month_strategy.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Maximum Number Of Contracts Per Order: X
  index, maximum_number_of_contracts_per_order = tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Minimum Number Of Contracts Per Order: X
  index, minimum_number_of_contracts_per_order = tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price Options: X
  index, maximum_threshold_price_options = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_options.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: X
  index, maximum_threshold_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price Options: X
  index, minimum_threshold_price_options = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_options.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: X
  index, minimum_threshold_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Dependency element: Tick Increment Fraction Indicator
  local tick_increment_fraction_indicator = buffer(index + 6, 1):string()

  -- Tick Increment: Runtime Type with 2 branches
  index = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment.dissect(buffer, index, packet, parent, tick_increment_fraction_indicator)

  -- Market Flow Indicator: X
  index, market_flow_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.market_flow_indicator.dissect(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = tmx_mx_solatcpretransmission_hsvf_v1_11.group_instrument.dissect(buffer, index, packet, parent)

  -- Instrument: X
  index, instrument = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument.dissect(buffer, index, packet, parent)

  -- Instrument External Code: X
  index, instrument_external_code = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_external_code.dissect(buffer, index, packet, parent)

  -- Strategy Allow Implied: A
  index, strategy_allow_implied = tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_allow_implied.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Instrument Keys Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_instrument_keys_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strategy_instrument_keys_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_instrument_keys_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_instrument_keys_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_instrument_keys_message.fields(buffer, offset, packet, parent)
  end
end

-- Futures Instrument Keys Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_instrument_keys_message = {}

-- Calculate size of: Futures Instrument Keys Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_instrument_keys_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_month.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_year_futures.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_number_of_contracts_per_order.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_number_of_contracts_per_order.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_futures.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_fraction_indicator.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_futures.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_fraction_indicator.size

  -- Calculate runtime size of Tick Increment field
  local tick_increment_offset = offset + index
  local tick_increment_type = buffer(tick_increment_offset + 6, 1):string()
  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment.size(buffer, tick_increment_offset, tick_increment_type)

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.market_flow_indicator.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.group_instrument.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.instrument.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_external_code.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.contract_size.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.tick_value.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.tick_value_fraction_indicator.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.currency.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_symbol.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_type.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.associated_product_root_symbol.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.associated_product_delivery_month.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.associated_product_delivery_year.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.associated_product_expiry_day.size

  return index
end

-- Display: Futures Instrument Keys Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_instrument_keys_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Instrument Keys Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_instrument_keys_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: A
  index, root_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.dissect(buffer, index, packet, parent)

  -- Delivery Month: A
  index, delivery_month = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_month.dissect(buffer, index, packet, parent)

  -- Delivery Year Futures: N
  index, delivery_year_futures = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_year_futures.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Maximum Number Of Contracts Per Order: X
  index, maximum_number_of_contracts_per_order = tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Minimum Number Of Contracts Per Order: X
  index, minimum_number_of_contracts_per_order = tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price Futures: N
  index, maximum_threshold_price_futures = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_futures.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: X
  index, maximum_threshold_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price Futures: N
  index, minimum_threshold_price_futures = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_futures.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: X
  index, minimum_threshold_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Dependency element: Tick Increment Fraction Indicator
  local tick_increment_fraction_indicator = buffer(index + 6, 1):string()

  -- Tick Increment: Runtime Type with 2 branches
  index = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment.dissect(buffer, index, packet, parent, tick_increment_fraction_indicator)

  -- Market Flow Indicator: X
  index, market_flow_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.market_flow_indicator.dissect(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = tmx_mx_solatcpretransmission_hsvf_v1_11.group_instrument.dissect(buffer, index, packet, parent)

  -- Instrument: X
  index, instrument = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument.dissect(buffer, index, packet, parent)

  -- Instrument External Code: X
  index, instrument_external_code = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_external_code.dissect(buffer, index, packet, parent)

  -- Contract Size: N
  index, contract_size = tmx_mx_solatcpretransmission_hsvf_v1_11.contract_size.dissect(buffer, index, packet, parent)

  -- Tick Value: N
  index, tick_value = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_value.dissect(buffer, index, packet, parent)

  -- Tick Value Fraction Indicator: X
  index, tick_value_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_value_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Currency: A
  index, currency = tmx_mx_solatcpretransmission_hsvf_v1_11.currency.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: A
  index, underlying_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Delivery Type: X
  index, delivery_type = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_type.dissect(buffer, index, packet, parent)

  -- Associated Product Root Symbol: A
  index, associated_product_root_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.associated_product_root_symbol.dissect(buffer, index, packet, parent)

  -- Associated Product Delivery Month: A
  index, associated_product_delivery_month = tmx_mx_solatcpretransmission_hsvf_v1_11.associated_product_delivery_month.dissect(buffer, index, packet, parent)

  -- Associated Product Delivery Year: N
  index, associated_product_delivery_year = tmx_mx_solatcpretransmission_hsvf_v1_11.associated_product_delivery_year.dissect(buffer, index, packet, parent)

  -- Associated Product Expiry Day: N
  index, associated_product_expiry_day = tmx_mx_solatcpretransmission_hsvf_v1_11.associated_product_expiry_day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Instrument Keys Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_instrument_keys_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.futures_instrument_keys_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.futures_instrument_keys_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.futures_instrument_keys_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.futures_instrument_keys_message.fields(buffer, offset, packet, parent)
  end
end

-- Underlying Instrument Keys Message
tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_instrument_keys_message = {}

-- Size: Underlying Instrument Keys Message
tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_instrument_keys_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.group_instrument.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.instrument.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_external_code.size

-- Display: Underlying Instrument Keys Message
tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_instrument_keys_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Instrument Keys Message
tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_instrument_keys_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = tmx_mx_solatcpretransmission_hsvf_v1_11.group_instrument.dissect(buffer, index, packet, parent)

  -- Instrument: X
  index, instrument = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument.dissect(buffer, index, packet, parent)

  -- Instrument External Code: X
  index, instrument_external_code = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_external_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Instrument Keys Message
tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_instrument_keys_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.underlying_instrument_keys_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_instrument_keys_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_instrument_keys_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_instrument_keys_message.fields(buffer, offset, packet, parent)
  end
end

-- Future Options Instrument Keys Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_instrument_keys_message = {}

-- Calculate size of: Future Options Instrument Keys Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_instrument_keys_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.contract_month_code.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.call_put_code.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_instrument.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_currency.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_number_of_contracts_per_order.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_number_of_contracts_per_order.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_options.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_fraction_indicator.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_options.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_fraction_indicator.size

  -- Calculate runtime size of Tick Increment field
  local tick_increment_offset = offset + index
  local tick_increment_type = buffer(tick_increment_offset + 6, 1):string()
  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment.size(buffer, tick_increment_offset, tick_increment_type)

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.market_flow_indicator.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.group_instrument.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.instrument.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_external_code.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.contract_size.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.tick_value.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.tick_value_fraction_indicator.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.currency.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_type.size

  return index
end

-- Display: Future Options Instrument Keys Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_instrument_keys_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Instrument Keys Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_instrument_keys_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: A
  index, root_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.dissect(buffer, index, packet, parent)

  -- Contract Month Code: A
  index, contract_month_code = tmx_mx_solatcpretransmission_hsvf_v1_11.contract_month_code.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Call Put Code: A
  index, call_put_code = tmx_mx_solatcpretransmission_hsvf_v1_11.call_put_code.dissect(buffer, index, packet, parent)

  -- Strike Price Instrument: N
  index, strike_price_instrument = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_instrument.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Strike Price Currency: A
  index, strike_price_currency = tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_currency.dissect(buffer, index, packet, parent)

  -- Maximum Number Of Contracts Per Order: X
  index, maximum_number_of_contracts_per_order = tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Minimum Number Of Contracts Per Order: X
  index, minimum_number_of_contracts_per_order = tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price Options: X
  index, maximum_threshold_price_options = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_options.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: X
  index, maximum_threshold_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price Options: X
  index, minimum_threshold_price_options = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_options.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: X
  index, minimum_threshold_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Dependency element: Tick Increment Fraction Indicator
  local tick_increment_fraction_indicator = buffer(index + 6, 1):string()

  -- Tick Increment: Runtime Type with 2 branches
  index = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment.dissect(buffer, index, packet, parent, tick_increment_fraction_indicator)

  -- Market Flow Indicator: X
  index, market_flow_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.market_flow_indicator.dissect(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = tmx_mx_solatcpretransmission_hsvf_v1_11.group_instrument.dissect(buffer, index, packet, parent)

  -- Instrument: X
  index, instrument = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument.dissect(buffer, index, packet, parent)

  -- Instrument External Code: X
  index, instrument_external_code = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_external_code.dissect(buffer, index, packet, parent)

  -- Contract Size: N
  index, contract_size = tmx_mx_solatcpretransmission_hsvf_v1_11.contract_size.dissect(buffer, index, packet, parent)

  -- Tick Value: N
  index, tick_value = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_value.dissect(buffer, index, packet, parent)

  -- Tick Value Fraction Indicator: X
  index, tick_value_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_value_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Currency: A
  index, currency = tmx_mx_solatcpretransmission_hsvf_v1_11.currency.dissect(buffer, index, packet, parent)

  -- Delivery Type: X
  index, delivery_type = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Instrument Keys Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_instrument_keys_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.future_options_instrument_keys_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_instrument_keys_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_instrument_keys_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_instrument_keys_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Instrument Keys Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_instrument_keys_message = {}

-- Calculate size of: Option Instrument Keys Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_instrument_keys_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.filler_1.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_instrument.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_currency.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_number_of_contracts_per_order.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_number_of_contracts_per_order.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_options.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_fraction_indicator.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_options.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_fraction_indicator.size

  -- Calculate runtime size of Tick Increment field
  local tick_increment_offset = offset + index
  local tick_increment_type = buffer(tick_increment_offset + 6, 1):string()
  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment.size(buffer, tick_increment_offset, tick_increment_type)

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.option_type.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.market_flow_indicator.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.group_instrument.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.instrument.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_external_code.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.option_marker.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_symbol_root_options.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.contract_size.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.tick_value.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.tick_value_fraction_indicator.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.currency.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_type.size

  return index
end

-- Display: Option Instrument Keys Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_instrument_keys_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Instrument Keys Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_instrument_keys_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: X
  index, root_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.dissect(buffer, index, packet, parent)

  -- Expiry Month: A
  index, expiry_month = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month.dissect(buffer, index, packet, parent)

  -- Filler 1: A
  index, filler_1 = tmx_mx_solatcpretransmission_hsvf_v1_11.filler_1.dissect(buffer, index, packet, parent)

  -- Strike Price Instrument: N
  index, strike_price_instrument = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_instrument.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Strike Price Currency: A
  index, strike_price_currency = tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_currency.dissect(buffer, index, packet, parent)

  -- Maximum Number Of Contracts Per Order: X
  index, maximum_number_of_contracts_per_order = tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Minimum Number Of Contracts Per Order: X
  index, minimum_number_of_contracts_per_order = tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price Options: X
  index, maximum_threshold_price_options = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_maximum_threshold_price_options.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: X
  index, maximum_threshold_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.maximum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price Options: X
  index, minimum_threshold_price_options = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_minimum_threshold_price_options.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: X
  index, minimum_threshold_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.minimum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Dependency element: Tick Increment Fraction Indicator
  local tick_increment_fraction_indicator = buffer(index + 6, 1):string()

  -- Tick Increment: Runtime Type with 2 branches
  index = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_increment.dissect(buffer, index, packet, parent, tick_increment_fraction_indicator)

  -- Option Type: N
  index, option_type = tmx_mx_solatcpretransmission_hsvf_v1_11.option_type.dissect(buffer, index, packet, parent)

  -- Market Flow Indicator: X
  index, market_flow_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.market_flow_indicator.dissect(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = tmx_mx_solatcpretransmission_hsvf_v1_11.group_instrument.dissect(buffer, index, packet, parent)

  -- Instrument: X
  index, instrument = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument.dissect(buffer, index, packet, parent)

  -- Instrument External Code: X
  index, instrument_external_code = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_external_code.dissect(buffer, index, packet, parent)

  -- Option Marker: A
  index, option_marker = tmx_mx_solatcpretransmission_hsvf_v1_11.option_marker.dissect(buffer, index, packet, parent)

  -- Underlying Symbol Root Options: X
  index, underlying_symbol_root_options = tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_symbol_root_options.dissect(buffer, index, packet, parent)

  -- Contract Size: N
  index, contract_size = tmx_mx_solatcpretransmission_hsvf_v1_11.contract_size.dissect(buffer, index, packet, parent)

  -- Tick Value: N
  index, tick_value = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_tick_value.dissect(buffer, index, packet, parent)

  -- Tick Value Fraction Indicator: X
  index, tick_value_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.tick_value_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Currency: A
  index, currency = tmx_mx_solatcpretransmission_hsvf_v1_11.currency.dissect(buffer, index, packet, parent)

  -- Delivery Type: X
  index, delivery_type = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Instrument Keys Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_instrument_keys_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.option_instrument_keys_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.option_instrument_keys_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.option_instrument_keys_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.option_instrument_keys_message.fields(buffer, offset, packet, parent)
  end
end

-- Swap Future Trade Cancellation Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_trade_cancellation_message = {}

-- Size: Swap Future Trade Cancellation Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_trade_cancellation_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol_swap_future.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month_swap_future.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.tenor.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.volume.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.market_price_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.size

-- Display: Swap Future Trade Cancellation Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_trade_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Swap Future Trade Cancellation Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_trade_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol Swap Future: X
  index, root_symbol_swap_future = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol_swap_future.dissect(buffer, index, packet, parent)

  -- Expiry Month Swap Future: A
  index, expiry_month_swap_future = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month_swap_future.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Tenor: N
  index, tenor = tmx_mx_solatcpretransmission_hsvf_v1_11.tenor.dissect(buffer, index, packet, parent)

  -- Fixed Rate: N
  index, fixed_rate = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_fixed_rate.dissect(buffer, index, packet, parent)

  -- Fixed Rate Fraction Indicator: X
  index, fixed_rate_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_solatcpretransmission_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Market Price Indicator: X
  index, market_price_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.market_price_indicator.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Swap Future Trade Cancellation Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_trade_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.swap_future_trade_cancellation_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_trade_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_trade_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_trade_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Trade Cancellation Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_trade_cancellation_message = {}

-- Size: Strategy Trade Cancellation Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_trade_cancellation_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.symbol.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.volume.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_sign.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.filler_6.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.filler_1.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.size

-- Display: Strategy Trade Cancellation Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_trade_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Trade Cancellation Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_trade_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Symbol: X
  index, symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.symbol.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_solatcpretransmission_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Trade Price Sign: X
  index, trade_price_sign = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_sign.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Filler 6: N
  index, filler_6 = tmx_mx_solatcpretransmission_hsvf_v1_11.filler_6.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Filler 1: X
  index, filler_1 = tmx_mx_solatcpretransmission_hsvf_v1_11.filler_1.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Trade Cancellation Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_trade_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strategy_trade_cancellation_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_trade_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_trade_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_trade_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Futures Trade Cancellation Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_trade_cancellation_message = {}

-- Size: Futures Trade Cancellation Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_trade_cancellation_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_month.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_year_futures.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_day.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.volume.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.filler_6.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.price_indicator_marker.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.size

-- Display: Futures Trade Cancellation Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_trade_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Trade Cancellation Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_trade_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: A
  index, root_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.dissect(buffer, index, packet, parent)

  -- Delivery Month: A
  index, delivery_month = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_month.dissect(buffer, index, packet, parent)

  -- Delivery Year Futures: N
  index, delivery_year_futures = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_year_futures.dissect(buffer, index, packet, parent)

  -- Delivery Day: N
  index, delivery_day = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_day.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_solatcpretransmission_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Filler 6: N
  index, filler_6 = tmx_mx_solatcpretransmission_hsvf_v1_11.filler_6.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker: X
  index, price_indicator_marker = tmx_mx_solatcpretransmission_hsvf_v1_11.price_indicator_marker.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Trade Cancellation Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_trade_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.futures_trade_cancellation_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.futures_trade_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.futures_trade_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.futures_trade_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Future Options Trade Cancellation Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_trade_cancellation_message = {}

-- Size: Future Options Trade Cancellation Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_trade_cancellation_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.contract_month_code.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.call_put_code.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_instrument.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.volume.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.price_indicator_marker.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.filler_6.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.open_interest.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.filler_2.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.size

-- Display: Future Options Trade Cancellation Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_trade_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Trade Cancellation Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_trade_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: A
  index, root_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.dissect(buffer, index, packet, parent)

  -- Contract Month Code: A
  index, contract_month_code = tmx_mx_solatcpretransmission_hsvf_v1_11.contract_month_code.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Call Put Code: A
  index, call_put_code = tmx_mx_solatcpretransmission_hsvf_v1_11.call_put_code.dissect(buffer, index, packet, parent)

  -- Strike Price Instrument: N
  index, strike_price_instrument = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_instrument.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_solatcpretransmission_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Price: N
  index, price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_price.dissect(buffer, index, packet, parent)

  -- Price Fraction Indicator: X
  index, price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker: A
  index, price_indicator_marker = tmx_mx_solatcpretransmission_hsvf_v1_11.price_indicator_marker.dissect(buffer, index, packet, parent)

  -- Filler 6: X
  index, filler_6 = tmx_mx_solatcpretransmission_hsvf_v1_11.filler_6.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Open Interest: N
  index, open_interest = tmx_mx_solatcpretransmission_hsvf_v1_11.open_interest.dissect(buffer, index, packet, parent)

  -- Filler 2: X
  index, filler_2 = tmx_mx_solatcpretransmission_hsvf_v1_11.filler_2.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Trade Cancellation Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_trade_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.future_options_trade_cancellation_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_trade_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_trade_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_trade_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Trade Cancellation Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_trade_cancellation_message = {}

-- Size: Option Trade Cancellation Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_trade_cancellation_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.filler_1.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_instrument.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.volume.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.filler_6.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.open_interest.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.second_filler_1.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.price_indicator_marker.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.size

-- Display: Option Trade Cancellation Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_trade_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Trade Cancellation Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_trade_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: X
  index, root_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.dissect(buffer, index, packet, parent)

  -- Expiry Month: A
  index, expiry_month = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month.dissect(buffer, index, packet, parent)

  -- Filler 1: A
  index, filler_1 = tmx_mx_solatcpretransmission_hsvf_v1_11.filler_1.dissect(buffer, index, packet, parent)

  -- Strike Price Instrument: N
  index, strike_price_instrument = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_instrument.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_solatcpretransmission_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Filler 6: N
  index, filler_6 = tmx_mx_solatcpretransmission_hsvf_v1_11.filler_6.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Open Interest: N
  index, open_interest = tmx_mx_solatcpretransmission_hsvf_v1_11.open_interest.dissect(buffer, index, packet, parent)

  -- Second Filler 1: X
  index, second_filler_1 = tmx_mx_solatcpretransmission_hsvf_v1_11.second_filler_1.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker: A
  index, price_indicator_marker = tmx_mx_solatcpretransmission_hsvf_v1_11.price_indicator_marker.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Trade Cancellation Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_trade_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.option_trade_cancellation_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.option_trade_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.option_trade_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.option_trade_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Ask Price Quote Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_numeric_pair = {}

-- Size: Ask Price Quote Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_numeric_pair.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_numeric.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_fraction_indicator.size

-- Display: Ask Price Quote Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_numeric_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ask Price Quote Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_numeric_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Ask Price Quote Numeric: X
  index, ask_price_quote_numeric = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_quote.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask Price Quote Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_numeric_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_quote_numeric_pair, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_numeric_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_numeric_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_numeric_pair.fields(buffer, offset, packet, parent)
  end
end

-- Ask Price Quote Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_opening_pair = {}

-- Size: Ask Price Quote Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_opening_pair.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_opening.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_fraction_indicator.size

-- Display: Ask Price Quote Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_opening_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ask Price Quote Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_opening_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Ask Price Quote Opening: X
  index, ask_price_quote_opening = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_opening.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask Price Quote Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_opening_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_quote_opening_pair, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_opening_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_opening_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_opening_pair.fields(buffer, offset, packet, parent)
  end
end

-- Ask Price Quote
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote = {}

-- Dissect: Ask Price Quote
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote.dissect = function(buffer, offset, packet, parent, ask_price_quote_opening, ask_price_fraction_indicator)
  -- Dissect Ask Price Quote Opening Pair
  if ask_price_quote_opening == "OUV" and ask_price_fraction_indicator == "0" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_opening_pair.dissect(buffer, offset, packet, parent)
  end

  -- Dissect Ask Price Quote Numeric Pair
  return tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_numeric_pair.dissect(buffer, offset, packet, parent)
end

-- Bid Price Quote Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_numeric_pair = {}

-- Size: Bid Price Quote Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_numeric_pair.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_numeric.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_fraction_indicator.size

-- Display: Bid Price Quote Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_numeric_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid Price Quote Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_numeric_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bid Price Quote Numeric: X
  index, bid_price_quote_numeric = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_quote.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid Price Quote Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_numeric_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bid_price_quote_numeric_pair, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_numeric_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_numeric_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_numeric_pair.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price Quote Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_opening_pair = {}

-- Size: Bid Price Quote Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_opening_pair.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_opening.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_fraction_indicator.size

-- Display: Bid Price Quote Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_opening_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid Price Quote Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_opening_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bid Price Quote Opening: X
  index, bid_price_quote_opening = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_opening.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid Price Quote Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_opening_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bid_price_quote_opening_pair, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_opening_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_opening_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_opening_pair.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price Quote
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote = {}

-- Dissect: Bid Price Quote
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote.dissect = function(buffer, offset, packet, parent, bid_price_quote_opening, bid_price_fraction_indicator)
  -- Dissect Bid Price Quote Opening Pair
  if bid_price_quote_opening == "OUV" and bid_price_fraction_indicator == "0" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_opening_pair.dissect(buffer, offset, packet, parent)
  end

  -- Dissect Bid Price Quote Numeric Pair
  return tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_numeric_pair.dissect(buffer, offset, packet, parent)
end

-- Swap Future Market Depth Trading Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_market_depth_trading_instrument = {}

-- Calculate size of: Swap Future Market Depth Trading Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_market_depth_trading_instrument.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.level.size

  -- Calculate runtime size of Bid Price Quote field
  local bid_price_quote_offset = offset + index
  local bid_price_quote_type = buffer(bid_price_quote_offset - 0, 6):string()
  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote.size(buffer, bid_price_quote_offset, bid_price_quote_type)

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_bid_orders.size

  -- Calculate runtime size of Ask Price Quote field
  local ask_price_quote_offset = offset + index
  local ask_price_quote_type = buffer(ask_price_quote_offset - 0, 6):string()
  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote.size(buffer, ask_price_quote_offset, ask_price_quote_type)

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_ask_orders.size

  return index
end

-- Display: Swap Future Market Depth Trading Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_market_depth_trading_instrument.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Swap Future Market Depth Trading Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_market_depth_trading_instrument.fields = function(buffer, offset, packet, parent, swap_future_market_depth_trading_instrument_index)
  local index = offset

  -- Implicit Swap Future Market Depth Trading Instrument Index
  if swap_future_market_depth_trading_instrument_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.swap_future_market_depth_trading_instrument_index, swap_future_market_depth_trading_instrument_index)
    iteration:set_generated()
  end

  -- Level: X
  index, level = tmx_mx_solatcpretransmission_hsvf_v1_11.level.dissect(buffer, index, packet, parent)

  -- Dependency element: Bid Price Quote Opening
  local bid_price_quote_opening = buffer(index, 6):string()

  -- Dependency element: Bid Price Fraction Indicator
  local bid_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Bid Price Quote: Runtime Type with 2 branches
  index = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote.dissect(buffer, index, packet, parent, bid_price_quote_opening, bid_price_fraction_indicator)

  -- Bid Size: X
  index, bid_size = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.dissect(buffer, index, packet, parent)

  -- Number Of Bid Orders: X
  index, number_of_bid_orders = tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_bid_orders.dissect(buffer, index, packet, parent)

  -- Dependency element: Ask Price Quote Opening
  local ask_price_quote_opening = buffer(index, 6):string()

  -- Dependency element: Ask Price Fraction Indicator
  local ask_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Ask Price Quote: Runtime Type with 2 branches
  index = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote.dissect(buffer, index, packet, parent, ask_price_quote_opening, ask_price_fraction_indicator)

  -- Ask Size: X
  index, ask_size = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.dissect(buffer, index, packet, parent)

  -- Number Of Ask Orders: X
  index, number_of_ask_orders = tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_ask_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Swap Future Market Depth Trading Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_market_depth_trading_instrument.dissect = function(buffer, offset, packet, parent, swap_future_market_depth_trading_instrument_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.swap_future_market_depth_trading_instrument, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_market_depth_trading_instrument.fields(buffer, offset, packet, parent, swap_future_market_depth_trading_instrument_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_market_depth_trading_instrument.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_market_depth_trading_instrument.fields(buffer, offset, packet, parent, swap_future_market_depth_trading_instrument_index)
  end
end

-- Swap Future Market Depth Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_market_depth_message = {}

-- Calculate size of: Swap Future Market Depth Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_market_depth_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol_swap_future.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month_swap_future.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.tenor.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate_fraction_indicator.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_status_marker.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_level.size

  -- Calculate field size from count
  local swap_future_market_depth_trading_instrument_count = buffer(offset + index - 1, 1):string()
  for i = 1, swap_future_market_depth_trading_instrument_count do
    index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_market_depth_trading_instrument.size(buffer, offset + index)
  end
  return index
end

-- Display: Swap Future Market Depth Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_market_depth_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Swap Future Market Depth Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_market_depth_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol Swap Future: X
  index, root_symbol_swap_future = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol_swap_future.dissect(buffer, index, packet, parent)

  -- Expiry Month Swap Future: A
  index, expiry_month_swap_future = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month_swap_future.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Tenor: N
  index, tenor = tmx_mx_solatcpretransmission_hsvf_v1_11.tenor.dissect(buffer, index, packet, parent)

  -- Fixed Rate: N
  index, fixed_rate = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_fixed_rate.dissect(buffer, index, packet, parent)

  -- Fixed Rate Fraction Indicator: X
  index, fixed_rate_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_status_marker.dissect(buffer, index, packet, parent)

  -- Number Of Level: N
  index, number_of_level = tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_level.dissect(buffer, index, packet, parent)

  -- Repeating: Swap Future Market Depth Trading Instrument
  for swap_future_market_depth_trading_instrument_index = 1, number_of_level do
    index, swap_future_market_depth_trading_instrument = tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_market_depth_trading_instrument.dissect(buffer, index, packet, parent, swap_future_market_depth_trading_instrument_index)
  end

  return index
end

-- Dissect: Swap Future Market Depth Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_market_depth_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.swap_future_market_depth_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_market_depth_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_market_depth_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_market_depth_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Market Depth Trading Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_market_depth_trading_instrument = {}

-- Calculate size of: Strategy Market Depth Trading Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_market_depth_trading_instrument.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.level_of_market_depth.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_sign.size

  -- Calculate runtime size of Bid Price Quote field
  local bid_price_quote_offset = offset + index
  local bid_price_quote_type = buffer(bid_price_quote_offset - 0, 6):string()
  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote.size(buffer, bid_price_quote_offset, bid_price_quote_type)

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_bid_orders.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_sign.size

  -- Calculate runtime size of Ask Price Quote field
  local ask_price_quote_offset = offset + index
  local ask_price_quote_type = buffer(ask_price_quote_offset - 0, 6):string()
  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote.size(buffer, ask_price_quote_offset, ask_price_quote_type)

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_ask_orders.size

  return index
end

-- Display: Strategy Market Depth Trading Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_market_depth_trading_instrument.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Market Depth Trading Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_market_depth_trading_instrument.fields = function(buffer, offset, packet, parent, strategy_market_depth_trading_instrument_index)
  local index = offset

  -- Implicit Strategy Market Depth Trading Instrument Index
  if strategy_market_depth_trading_instrument_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strategy_market_depth_trading_instrument_index, strategy_market_depth_trading_instrument_index)
    iteration:set_generated()
  end

  -- Level Of Market Depth: X
  index, level_of_market_depth = tmx_mx_solatcpretransmission_hsvf_v1_11.level_of_market_depth.dissect(buffer, index, packet, parent)

  -- Bid Price Sign: X
  index, bid_price_sign = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_sign.dissect(buffer, index, packet, parent)

  -- Dependency element: Bid Price Quote Opening
  local bid_price_quote_opening = buffer(index, 6):string()

  -- Dependency element: Bid Price Fraction Indicator
  local bid_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Bid Price Quote: Runtime Type with 2 branches
  index = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote.dissect(buffer, index, packet, parent, bid_price_quote_opening, bid_price_fraction_indicator)

  -- Bid Size: X
  index, bid_size = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.dissect(buffer, index, packet, parent)

  -- Number Of Bid Orders: X
  index, number_of_bid_orders = tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_bid_orders.dissect(buffer, index, packet, parent)

  -- Ask Price Sign: X
  index, ask_price_sign = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_sign.dissect(buffer, index, packet, parent)

  -- Dependency element: Ask Price Quote Opening
  local ask_price_quote_opening = buffer(index, 6):string()

  -- Dependency element: Ask Price Fraction Indicator
  local ask_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Ask Price Quote: Runtime Type with 2 branches
  index = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote.dissect(buffer, index, packet, parent, ask_price_quote_opening, ask_price_fraction_indicator)

  -- Ask Size: X
  index, ask_size = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.dissect(buffer, index, packet, parent)

  -- Number Of Ask Orders: X
  index, number_of_ask_orders = tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_ask_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Market Depth Trading Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_market_depth_trading_instrument.dissect = function(buffer, offset, packet, parent, strategy_market_depth_trading_instrument_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strategy_market_depth_trading_instrument, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_market_depth_trading_instrument.fields(buffer, offset, packet, parent, strategy_market_depth_trading_instrument_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_market_depth_trading_instrument.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_market_depth_trading_instrument.fields(buffer, offset, packet, parent, strategy_market_depth_trading_instrument_index)
  end
end

-- Strategy Market Depth Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_market_depth_message = {}

-- Calculate size of: Strategy Market Depth Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_market_depth_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.symbol.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_status_marker.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_level.size

  -- Calculate field size from count
  local strategy_market_depth_trading_instrument_count = buffer(offset + index - 1, 1):string()
  for i = 1, strategy_market_depth_trading_instrument_count do
    index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_market_depth_trading_instrument.size(buffer, offset + index)
  end
  return index
end

-- Display: Strategy Market Depth Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_market_depth_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Market Depth Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_market_depth_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Symbol: X
  index, symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.symbol.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_status_marker.dissect(buffer, index, packet, parent)

  -- Number Of Level: N
  index, number_of_level = tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_level.dissect(buffer, index, packet, parent)

  -- Repeating: Strategy Market Depth Trading Instrument
  for strategy_market_depth_trading_instrument_index = 1, number_of_level do
    index, strategy_market_depth_trading_instrument = tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_market_depth_trading_instrument.dissect(buffer, index, packet, parent, strategy_market_depth_trading_instrument_index)
  end

  return index
end

-- Dissect: Strategy Market Depth Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_market_depth_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strategy_market_depth_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_market_depth_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_market_depth_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_market_depth_message.fields(buffer, offset, packet, parent)
  end
end

-- Ask Price Futures Depth Futures Market Depth Trading Instrument Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_futures_market_depth_trading_instrument_numeric_pair = {}

-- Size: Ask Price Futures Depth Futures Market Depth Trading Instrument Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_futures_market_depth_trading_instrument_numeric_pair.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_numeric.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_fraction_indicator.size

-- Display: Ask Price Futures Depth Futures Market Depth Trading Instrument Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_futures_market_depth_trading_instrument_numeric_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ask Price Futures Depth Futures Market Depth Trading Instrument Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_futures_market_depth_trading_instrument_numeric_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Ask Price Futures Depth Numeric: N
  index, ask_price_futures_depth_numeric = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_futures_depth.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask Price Futures Depth Futures Market Depth Trading Instrument Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_futures_market_depth_trading_instrument_numeric_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_futures_depth_futures_market_depth_trading_instrument_numeric_pair, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_futures_market_depth_trading_instrument_numeric_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_futures_market_depth_trading_instrument_numeric_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_futures_market_depth_trading_instrument_numeric_pair.fields(buffer, offset, packet, parent)
  end
end

-- Ask Price Futures Depth Futures Market Depth Trading Instrument Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_futures_market_depth_trading_instrument_opening_pair = {}

-- Size: Ask Price Futures Depth Futures Market Depth Trading Instrument Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_futures_market_depth_trading_instrument_opening_pair.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_opening.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_fraction_indicator.size

-- Display: Ask Price Futures Depth Futures Market Depth Trading Instrument Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_futures_market_depth_trading_instrument_opening_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ask Price Futures Depth Futures Market Depth Trading Instrument Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_futures_market_depth_trading_instrument_opening_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Ask Price Futures Depth Opening: N
  index, ask_price_futures_depth_opening = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_opening.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask Price Futures Depth Futures Market Depth Trading Instrument Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_futures_market_depth_trading_instrument_opening_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_futures_depth_futures_market_depth_trading_instrument_opening_pair, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_futures_market_depth_trading_instrument_opening_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_futures_market_depth_trading_instrument_opening_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_futures_market_depth_trading_instrument_opening_pair.fields(buffer, offset, packet, parent)
  end
end

-- Ask Price Futures Depth Futures Market Depth Trading Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_futures_market_depth_trading_instrument = {}

-- Dissect: Ask Price Futures Depth Futures Market Depth Trading Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_futures_market_depth_trading_instrument.dissect = function(buffer, offset, packet, parent, ask_price_futures_depth_opening, ask_price_fraction_indicator)
  -- Dissect Ask Price Futures Depth Futures Market Depth Trading Instrument Opening Pair
  if ask_price_futures_depth_opening == "OUV" and ask_price_fraction_indicator == "0" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_futures_market_depth_trading_instrument_opening_pair.dissect(buffer, offset, packet, parent)
  end

  -- Dissect Ask Price Futures Depth Futures Market Depth Trading Instrument Numeric Pair
  return tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_futures_market_depth_trading_instrument_numeric_pair.dissect(buffer, offset, packet, parent)
end

-- Bid Price Quote Futures Market Depth Trading Instrument Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_market_depth_trading_instrument_numeric_pair = {}

-- Size: Bid Price Quote Futures Market Depth Trading Instrument Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_market_depth_trading_instrument_numeric_pair.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_numeric.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_fraction_indicator.size

-- Display: Bid Price Quote Futures Market Depth Trading Instrument Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_market_depth_trading_instrument_numeric_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid Price Quote Futures Market Depth Trading Instrument Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_market_depth_trading_instrument_numeric_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bid Price Quote Numeric: X
  index, bid_price_quote_numeric = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_quote.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid Price Quote Futures Market Depth Trading Instrument Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_market_depth_trading_instrument_numeric_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bid_price_quote_futures_market_depth_trading_instrument_numeric_pair, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_market_depth_trading_instrument_numeric_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_market_depth_trading_instrument_numeric_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_market_depth_trading_instrument_numeric_pair.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price Quote Futures Market Depth Trading Instrument Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_market_depth_trading_instrument_opening_pair = {}

-- Size: Bid Price Quote Futures Market Depth Trading Instrument Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_market_depth_trading_instrument_opening_pair.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_opening.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_fraction_indicator.size

-- Display: Bid Price Quote Futures Market Depth Trading Instrument Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_market_depth_trading_instrument_opening_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid Price Quote Futures Market Depth Trading Instrument Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_market_depth_trading_instrument_opening_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bid Price Quote Opening: X
  index, bid_price_quote_opening = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_opening.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid Price Quote Futures Market Depth Trading Instrument Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_market_depth_trading_instrument_opening_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bid_price_quote_futures_market_depth_trading_instrument_opening_pair, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_market_depth_trading_instrument_opening_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_market_depth_trading_instrument_opening_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_market_depth_trading_instrument_opening_pair.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price Quote Futures Market Depth Trading Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_market_depth_trading_instrument = {}

-- Dissect: Bid Price Quote Futures Market Depth Trading Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_market_depth_trading_instrument.dissect = function(buffer, offset, packet, parent, bid_price_quote_opening, bid_price_fraction_indicator)
  -- Dissect Bid Price Quote Futures Market Depth Trading Instrument Opening Pair
  if bid_price_quote_opening == "OUV" and bid_price_fraction_indicator == "0" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_market_depth_trading_instrument_opening_pair.dissect(buffer, offset, packet, parent)
  end

  -- Dissect Bid Price Quote Futures Market Depth Trading Instrument Numeric Pair
  return tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_market_depth_trading_instrument_numeric_pair.dissect(buffer, offset, packet, parent)
end

-- Futures Market Depth Trading Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_market_depth_trading_instrument = {}

-- Calculate size of: Futures Market Depth Trading Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_market_depth_trading_instrument.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.level_of_market_depth.size

  -- Calculate runtime size of Bid Price Quote Futures Market Depth Trading Instrument field
  local bid_price_quote_futures_market_depth_trading_instrument_offset = offset + index
  local bid_price_quote_futures_market_depth_trading_instrument_type = buffer(bid_price_quote_futures_market_depth_trading_instrument_offset - 0, 6):string()
  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_market_depth_trading_instrument.size(buffer, bid_price_quote_futures_market_depth_trading_instrument_offset, bid_price_quote_futures_market_depth_trading_instrument_type)

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_bid_orders.size

  -- Calculate runtime size of Ask Price Futures Depth Futures Market Depth Trading Instrument field
  local ask_price_futures_depth_futures_market_depth_trading_instrument_offset = offset + index
  local ask_price_futures_depth_futures_market_depth_trading_instrument_type = buffer(ask_price_futures_depth_futures_market_depth_trading_instrument_offset - 0, 6):string()
  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_futures_market_depth_trading_instrument.size(buffer, ask_price_futures_depth_futures_market_depth_trading_instrument_offset, ask_price_futures_depth_futures_market_depth_trading_instrument_type)

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_ask_orders.size

  return index
end

-- Display: Futures Market Depth Trading Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_market_depth_trading_instrument.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Market Depth Trading Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_market_depth_trading_instrument.fields = function(buffer, offset, packet, parent, futures_market_depth_trading_instrument_index)
  local index = offset

  -- Implicit Futures Market Depth Trading Instrument Index
  if futures_market_depth_trading_instrument_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.futures_market_depth_trading_instrument_index, futures_market_depth_trading_instrument_index)
    iteration:set_generated()
  end

  -- Level Of Market Depth: X
  index, level_of_market_depth = tmx_mx_solatcpretransmission_hsvf_v1_11.level_of_market_depth.dissect(buffer, index, packet, parent)

  -- Dependency element: Bid Price Quote Opening
  local bid_price_quote_opening = buffer(index, 6):string()

  -- Dependency element: Bid Price Fraction Indicator
  local bid_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Bid Price Quote Futures Market Depth Trading Instrument: Runtime Type with 2 branches
  index = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_market_depth_trading_instrument.dissect(buffer, index, packet, parent, bid_price_quote_opening, bid_price_fraction_indicator)

  -- Bid Size: X
  index, bid_size = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.dissect(buffer, index, packet, parent)

  -- Number Of Bid Orders: X
  index, number_of_bid_orders = tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_bid_orders.dissect(buffer, index, packet, parent)

  -- Dependency element: Ask Price Futures Depth Opening
  local ask_price_futures_depth_opening = buffer(index, 6):string()

  -- Dependency element: Ask Price Fraction Indicator
  local ask_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Ask Price Futures Depth Futures Market Depth Trading Instrument: Runtime Type with 2 branches
  index = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_futures_depth_futures_market_depth_trading_instrument.dissect(buffer, index, packet, parent, ask_price_futures_depth_opening, ask_price_fraction_indicator)

  -- Ask Size: X
  index, ask_size = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.dissect(buffer, index, packet, parent)

  -- Number Of Ask Orders: X
  index, number_of_ask_orders = tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_ask_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Market Depth Trading Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_market_depth_trading_instrument.dissect = function(buffer, offset, packet, parent, futures_market_depth_trading_instrument_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.futures_market_depth_trading_instrument, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.futures_market_depth_trading_instrument.fields(buffer, offset, packet, parent, futures_market_depth_trading_instrument_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.futures_market_depth_trading_instrument.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.futures_market_depth_trading_instrument.fields(buffer, offset, packet, parent, futures_market_depth_trading_instrument_index)
  end
end

-- Futures Market Depth Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_market_depth_message = {}

-- Calculate size of: Futures Market Depth Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_market_depth_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_month.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_year_futures.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_day.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_status_marker.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_level.size

  -- Calculate field size from count
  local futures_market_depth_trading_instrument_count = buffer(offset + index - 1, 1):string()
  for i = 1, futures_market_depth_trading_instrument_count do
    index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.futures_market_depth_trading_instrument.size(buffer, offset + index)
  end
  return index
end

-- Display: Futures Market Depth Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_market_depth_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Market Depth Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_market_depth_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: A
  index, root_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.dissect(buffer, index, packet, parent)

  -- Delivery Month: A
  index, delivery_month = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_month.dissect(buffer, index, packet, parent)

  -- Delivery Year Futures: N
  index, delivery_year_futures = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_year_futures.dissect(buffer, index, packet, parent)

  -- Delivery Day: N
  index, delivery_day = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_day.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_status_marker.dissect(buffer, index, packet, parent)

  -- Number Of Level: N
  index, number_of_level = tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_level.dissect(buffer, index, packet, parent)

  -- Repeating: Futures Market Depth Trading Instrument
  for futures_market_depth_trading_instrument_index = 1, number_of_level do
    index, futures_market_depth_trading_instrument = tmx_mx_solatcpretransmission_hsvf_v1_11.futures_market_depth_trading_instrument.dissect(buffer, index, packet, parent, futures_market_depth_trading_instrument_index)
  end

  return index
end

-- Dissect: Futures Market Depth Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_market_depth_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.futures_market_depth_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.futures_market_depth_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.futures_market_depth_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.futures_market_depth_message.fields(buffer, offset, packet, parent)
  end
end

-- Future Options Market Depth Trading Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_market_depth_trading_instrument = {}

-- Calculate size of: Future Options Market Depth Trading Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_market_depth_trading_instrument.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.level_of_market_depth.size

  -- Calculate runtime size of Bid Price Quote field
  local bid_price_quote_offset = offset + index
  local bid_price_quote_type = buffer(bid_price_quote_offset - 0, 6):string()
  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote.size(buffer, bid_price_quote_offset, bid_price_quote_type)

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_bid_orders.size

  -- Calculate runtime size of Ask Price Quote field
  local ask_price_quote_offset = offset + index
  local ask_price_quote_type = buffer(ask_price_quote_offset - 0, 6):string()
  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote.size(buffer, ask_price_quote_offset, ask_price_quote_type)

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_ask_orders.size

  return index
end

-- Display: Future Options Market Depth Trading Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_market_depth_trading_instrument.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Market Depth Trading Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_market_depth_trading_instrument.fields = function(buffer, offset, packet, parent, future_options_market_depth_trading_instrument_index)
  local index = offset

  -- Implicit Future Options Market Depth Trading Instrument Index
  if future_options_market_depth_trading_instrument_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.future_options_market_depth_trading_instrument_index, future_options_market_depth_trading_instrument_index)
    iteration:set_generated()
  end

  -- Level Of Market Depth: X
  index, level_of_market_depth = tmx_mx_solatcpretransmission_hsvf_v1_11.level_of_market_depth.dissect(buffer, index, packet, parent)

  -- Dependency element: Bid Price Quote Opening
  local bid_price_quote_opening = buffer(index, 6):string()

  -- Dependency element: Bid Price Fraction Indicator
  local bid_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Bid Price Quote: Runtime Type with 2 branches
  index = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote.dissect(buffer, index, packet, parent, bid_price_quote_opening, bid_price_fraction_indicator)

  -- Bid Size: X
  index, bid_size = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.dissect(buffer, index, packet, parent)

  -- Number Of Bid Orders: X
  index, number_of_bid_orders = tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_bid_orders.dissect(buffer, index, packet, parent)

  -- Dependency element: Ask Price Quote Opening
  local ask_price_quote_opening = buffer(index, 6):string()

  -- Dependency element: Ask Price Fraction Indicator
  local ask_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Ask Price Quote: Runtime Type with 2 branches
  index = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote.dissect(buffer, index, packet, parent, ask_price_quote_opening, ask_price_fraction_indicator)

  -- Ask Size: X
  index, ask_size = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.dissect(buffer, index, packet, parent)

  -- Number Of Ask Orders: X
  index, number_of_ask_orders = tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_ask_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Market Depth Trading Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_market_depth_trading_instrument.dissect = function(buffer, offset, packet, parent, future_options_market_depth_trading_instrument_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.future_options_market_depth_trading_instrument, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_market_depth_trading_instrument.fields(buffer, offset, packet, parent, future_options_market_depth_trading_instrument_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_market_depth_trading_instrument.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_market_depth_trading_instrument.fields(buffer, offset, packet, parent, future_options_market_depth_trading_instrument_index)
  end
end

-- Future Options Market Depth Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_market_depth_message = {}

-- Calculate size of: Future Options Market Depth Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_market_depth_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.contract_month_code.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.call_put_code.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_instrument.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_status_marker.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_level.size

  -- Calculate field size from count
  local future_options_market_depth_trading_instrument_count = buffer(offset + index - 1, 1):string()
  for i = 1, future_options_market_depth_trading_instrument_count do
    index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_market_depth_trading_instrument.size(buffer, offset + index)
  end
  return index
end

-- Display: Future Options Market Depth Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_market_depth_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Market Depth Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_market_depth_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: A
  index, root_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.dissect(buffer, index, packet, parent)

  -- Contract Month Code: A
  index, contract_month_code = tmx_mx_solatcpretransmission_hsvf_v1_11.contract_month_code.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Call Put Code: A
  index, call_put_code = tmx_mx_solatcpretransmission_hsvf_v1_11.call_put_code.dissect(buffer, index, packet, parent)

  -- Strike Price Instrument: N
  index, strike_price_instrument = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_instrument.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_status_marker.dissect(buffer, index, packet, parent)

  -- Number Of Level: N
  index, number_of_level = tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_level.dissect(buffer, index, packet, parent)

  -- Repeating: Future Options Market Depth Trading Instrument
  for future_options_market_depth_trading_instrument_index = 1, number_of_level do
    index, future_options_market_depth_trading_instrument = tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_market_depth_trading_instrument.dissect(buffer, index, packet, parent, future_options_market_depth_trading_instrument_index)
  end

  return index
end

-- Dissect: Future Options Market Depth Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_market_depth_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.future_options_market_depth_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_market_depth_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_market_depth_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_market_depth_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Market Depth Trading Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.option_market_depth_trading_instrument = {}

-- Calculate size of: Option Market Depth Trading Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.option_market_depth_trading_instrument.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.level_of_market_depth.size

  -- Calculate runtime size of Bid Price Quote field
  local bid_price_quote_offset = offset + index
  local bid_price_quote_type = buffer(bid_price_quote_offset - 0, 6):string()
  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote.size(buffer, bid_price_quote_offset, bid_price_quote_type)

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_bid_orders.size

  -- Calculate runtime size of Ask Price Quote field
  local ask_price_quote_offset = offset + index
  local ask_price_quote_type = buffer(ask_price_quote_offset - 0, 6):string()
  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote.size(buffer, ask_price_quote_offset, ask_price_quote_type)

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_ask_orders.size

  return index
end

-- Display: Option Market Depth Trading Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.option_market_depth_trading_instrument.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Market Depth Trading Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.option_market_depth_trading_instrument.fields = function(buffer, offset, packet, parent, option_market_depth_trading_instrument_index)
  local index = offset

  -- Implicit Option Market Depth Trading Instrument Index
  if option_market_depth_trading_instrument_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.option_market_depth_trading_instrument_index, option_market_depth_trading_instrument_index)
    iteration:set_generated()
  end

  -- Level Of Market Depth: X
  index, level_of_market_depth = tmx_mx_solatcpretransmission_hsvf_v1_11.level_of_market_depth.dissect(buffer, index, packet, parent)

  -- Dependency element: Bid Price Quote Opening
  local bid_price_quote_opening = buffer(index, 6):string()

  -- Dependency element: Bid Price Fraction Indicator
  local bid_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Bid Price Quote: Runtime Type with 2 branches
  index = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote.dissect(buffer, index, packet, parent, bid_price_quote_opening, bid_price_fraction_indicator)

  -- Bid Size: X
  index, bid_size = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.dissect(buffer, index, packet, parent)

  -- Number Of Bid Orders: X
  index, number_of_bid_orders = tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_bid_orders.dissect(buffer, index, packet, parent)

  -- Dependency element: Ask Price Quote Opening
  local ask_price_quote_opening = buffer(index, 6):string()

  -- Dependency element: Ask Price Fraction Indicator
  local ask_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Ask Price Quote: Runtime Type with 2 branches
  index = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote.dissect(buffer, index, packet, parent, ask_price_quote_opening, ask_price_fraction_indicator)

  -- Ask Size: X
  index, ask_size = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.dissect(buffer, index, packet, parent)

  -- Number Of Ask Orders: X
  index, number_of_ask_orders = tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_ask_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Market Depth Trading Instrument
tmx_mx_solatcpretransmission_hsvf_v1_11.option_market_depth_trading_instrument.dissect = function(buffer, offset, packet, parent, option_market_depth_trading_instrument_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.option_market_depth_trading_instrument, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.option_market_depth_trading_instrument.fields(buffer, offset, packet, parent, option_market_depth_trading_instrument_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.option_market_depth_trading_instrument.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.option_market_depth_trading_instrument.fields(buffer, offset, packet, parent, option_market_depth_trading_instrument_index)
  end
end

-- Option Market Depth Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_market_depth_message = {}

-- Calculate size of: Option Market Depth Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_market_depth_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.filler_1.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_instrument.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_status_marker.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_level.size

  -- Calculate field size from count
  local option_market_depth_trading_instrument_count = buffer(offset + index - 1, 1):string()
  for i = 1, option_market_depth_trading_instrument_count do
    index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.option_market_depth_trading_instrument.size(buffer, offset + index)
  end
  return index
end

-- Display: Option Market Depth Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_market_depth_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Market Depth Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_market_depth_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: X
  index, root_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.dissect(buffer, index, packet, parent)

  -- Expiry Month: A
  index, expiry_month = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month.dissect(buffer, index, packet, parent)

  -- Filler 1: A
  index, filler_1 = tmx_mx_solatcpretransmission_hsvf_v1_11.filler_1.dissect(buffer, index, packet, parent)

  -- Strike Price Instrument: N
  index, strike_price_instrument = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_instrument.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_status_marker.dissect(buffer, index, packet, parent)

  -- Number Of Level: N
  index, number_of_level = tmx_mx_solatcpretransmission_hsvf_v1_11.number_of_level.dissect(buffer, index, packet, parent)

  -- Repeating: Option Market Depth Trading Instrument
  for option_market_depth_trading_instrument_index = 1, number_of_level do
    index, option_market_depth_trading_instrument = tmx_mx_solatcpretransmission_hsvf_v1_11.option_market_depth_trading_instrument.dissect(buffer, index, packet, parent, option_market_depth_trading_instrument_index)
  end

  return index
end

-- Dissect: Option Market Depth Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_market_depth_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.option_market_depth_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.option_market_depth_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.option_market_depth_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.option_market_depth_message.fields(buffer, offset, packet, parent)
  end
end

-- Ask Price Quote Strategy Quote Message Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_strategy_quote_message_numeric_pair = {}

-- Size: Ask Price Quote Strategy Quote Message Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_strategy_quote_message_numeric_pair.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_numeric.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_fraction_indicator.size

-- Display: Ask Price Quote Strategy Quote Message Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_strategy_quote_message_numeric_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ask Price Quote Strategy Quote Message Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_strategy_quote_message_numeric_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Ask Price Quote Numeric: X
  index, ask_price_quote_numeric = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_quote.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask Price Quote Strategy Quote Message Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_strategy_quote_message_numeric_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_quote_strategy_quote_message_numeric_pair, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_strategy_quote_message_numeric_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_strategy_quote_message_numeric_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_strategy_quote_message_numeric_pair.fields(buffer, offset, packet, parent)
  end
end

-- Ask Price Quote Strategy Quote Message Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_strategy_quote_message_opening_pair = {}

-- Size: Ask Price Quote Strategy Quote Message Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_strategy_quote_message_opening_pair.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_opening.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_fraction_indicator.size

-- Display: Ask Price Quote Strategy Quote Message Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_strategy_quote_message_opening_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ask Price Quote Strategy Quote Message Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_strategy_quote_message_opening_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Ask Price Quote Opening: X
  index, ask_price_quote_opening = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_opening.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask Price Quote Strategy Quote Message Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_strategy_quote_message_opening_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_quote_strategy_quote_message_opening_pair, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_strategy_quote_message_opening_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_strategy_quote_message_opening_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_strategy_quote_message_opening_pair.fields(buffer, offset, packet, parent)
  end
end

-- Ask Price Quote Strategy Quote Message
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_strategy_quote_message = {}

-- Dissect: Ask Price Quote Strategy Quote Message
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_strategy_quote_message.dissect = function(buffer, offset, packet, parent, ask_price_quote_opening, ask_price_fraction_indicator)
  -- Dissect Ask Price Quote Strategy Quote Message Opening Pair
  if ask_price_quote_opening == "OUV" and ask_price_fraction_indicator == "0" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_strategy_quote_message_opening_pair.dissect(buffer, offset, packet, parent)
  end

  -- Dissect Ask Price Quote Strategy Quote Message Numeric Pair
  return tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_strategy_quote_message_numeric_pair.dissect(buffer, offset, packet, parent)
end

-- Bid Price Quote Futures Quote Message Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_quote_message_numeric_pair = {}

-- Size: Bid Price Quote Futures Quote Message Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_quote_message_numeric_pair.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_numeric.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_fraction_indicator.size

-- Display: Bid Price Quote Futures Quote Message Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_quote_message_numeric_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid Price Quote Futures Quote Message Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_quote_message_numeric_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bid Price Quote Numeric: X
  index, bid_price_quote_numeric = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_quote.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid Price Quote Futures Quote Message Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_quote_message_numeric_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bid_price_quote_futures_quote_message_numeric_pair, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_quote_message_numeric_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_quote_message_numeric_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_quote_message_numeric_pair.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price Quote Futures Quote Message Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_quote_message_opening_pair = {}

-- Size: Bid Price Quote Futures Quote Message Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_quote_message_opening_pair.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_opening.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_fraction_indicator.size

-- Display: Bid Price Quote Futures Quote Message Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_quote_message_opening_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid Price Quote Futures Quote Message Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_quote_message_opening_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bid Price Quote Opening: X
  index, bid_price_quote_opening = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_opening.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid Price Quote Futures Quote Message Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_quote_message_opening_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bid_price_quote_futures_quote_message_opening_pair, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_quote_message_opening_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_quote_message_opening_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_quote_message_opening_pair.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price Quote Futures Quote Message
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_quote_message = {}

-- Dissect: Bid Price Quote Futures Quote Message
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_quote_message.dissect = function(buffer, offset, packet, parent, bid_price_quote_opening, bid_price_fraction_indicator)
  -- Dissect Bid Price Quote Futures Quote Message Opening Pair
  if bid_price_quote_opening == "OUV" and bid_price_fraction_indicator == "0" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_quote_message_opening_pair.dissect(buffer, offset, packet, parent)
  end

  -- Dissect Bid Price Quote Futures Quote Message Numeric Pair
  return tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_quote_message_numeric_pair.dissect(buffer, offset, packet, parent)
end

-- Swap Future Quote Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_quote_message = {}

-- Calculate size of: Swap Future Quote Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol_swap_future.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month_swap_future.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.tenor.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate_fraction_indicator.size

  -- Calculate runtime size of Bid Price Quote Futures Quote Message field
  local bid_price_quote_futures_quote_message_offset = offset + index
  local bid_price_quote_futures_quote_message_type = buffer(bid_price_quote_futures_quote_message_offset - 0, 6):string()
  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_quote_message.size(buffer, bid_price_quote_futures_quote_message_offset, bid_price_quote_futures_quote_message_type)

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.size

  -- Calculate runtime size of Ask Price Quote Strategy Quote Message field
  local ask_price_quote_strategy_quote_message_offset = offset + index
  local ask_price_quote_strategy_quote_message_type = buffer(ask_price_quote_strategy_quote_message_offset - 0, 6):string()
  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_strategy_quote_message.size(buffer, ask_price_quote_strategy_quote_message_offset, ask_price_quote_strategy_quote_message_type)

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_status_marker.size

  return index
end

-- Display: Swap Future Quote Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Swap Future Quote Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol Swap Future: X
  index, root_symbol_swap_future = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol_swap_future.dissect(buffer, index, packet, parent)

  -- Expiry Month Swap Future: A
  index, expiry_month_swap_future = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month_swap_future.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Tenor: N
  index, tenor = tmx_mx_solatcpretransmission_hsvf_v1_11.tenor.dissect(buffer, index, packet, parent)

  -- Fixed Rate: N
  index, fixed_rate = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_fixed_rate.dissect(buffer, index, packet, parent)

  -- Fixed Rate Fraction Indicator: X
  index, fixed_rate_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Dependency element: Bid Price Quote Opening
  local bid_price_quote_opening = buffer(index, 6):string()

  -- Dependency element: Bid Price Fraction Indicator
  local bid_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Bid Price Quote Futures Quote Message: Runtime Type with 2 branches
  index = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_quote_message.dissect(buffer, index, packet, parent, bid_price_quote_opening, bid_price_fraction_indicator)

  -- Bid Size: X
  index, bid_size = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Ask Price Quote Opening
  local ask_price_quote_opening = buffer(index, 6):string()

  -- Dependency element: Ask Price Fraction Indicator
  local ask_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Ask Price Quote Strategy Quote Message: Runtime Type with 2 branches
  index = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_strategy_quote_message.dissect(buffer, index, packet, parent, ask_price_quote_opening, ask_price_fraction_indicator)

  -- Ask Size: X
  index, ask_size = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker: X
  index, instrument_status_marker = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_status_marker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Swap Future Quote Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.swap_future_quote_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price Quote Strategy Quote Message Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_strategy_quote_message_numeric_pair = {}

-- Size: Bid Price Quote Strategy Quote Message Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_strategy_quote_message_numeric_pair.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_numeric.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_fraction_indicator.size

-- Display: Bid Price Quote Strategy Quote Message Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_strategy_quote_message_numeric_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid Price Quote Strategy Quote Message Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_strategy_quote_message_numeric_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bid Price Quote Numeric: X
  index, bid_price_quote_numeric = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_bid_price_quote.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid Price Quote Strategy Quote Message Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_strategy_quote_message_numeric_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bid_price_quote_strategy_quote_message_numeric_pair, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_strategy_quote_message_numeric_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_strategy_quote_message_numeric_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_strategy_quote_message_numeric_pair.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price Quote Strategy Quote Message Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_strategy_quote_message_opening_pair = {}

-- Size: Bid Price Quote Strategy Quote Message Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_strategy_quote_message_opening_pair.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_opening.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_fraction_indicator.size

-- Display: Bid Price Quote Strategy Quote Message Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_strategy_quote_message_opening_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid Price Quote Strategy Quote Message Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_strategy_quote_message_opening_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bid Price Quote Opening: X
  index, bid_price_quote_opening = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_opening.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid Price Quote Strategy Quote Message Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_strategy_quote_message_opening_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.bid_price_quote_strategy_quote_message_opening_pair, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_strategy_quote_message_opening_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_strategy_quote_message_opening_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_strategy_quote_message_opening_pair.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price Quote Strategy Quote Message
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_strategy_quote_message = {}

-- Dissect: Bid Price Quote Strategy Quote Message
tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_strategy_quote_message.dissect = function(buffer, offset, packet, parent, bid_price_quote_opening, bid_price_fraction_indicator)
  -- Dissect Bid Price Quote Strategy Quote Message Opening Pair
  if bid_price_quote_opening == "OUV" and bid_price_fraction_indicator == "0" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_strategy_quote_message_opening_pair.dissect(buffer, offset, packet, parent)
  end

  -- Dissect Bid Price Quote Strategy Quote Message Numeric Pair
  return tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_strategy_quote_message_numeric_pair.dissect(buffer, offset, packet, parent)
end

-- Strategy Quote Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_quote_message = {}

-- Calculate size of: Strategy Quote Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.symbol.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_sign.size

  -- Calculate runtime size of Bid Price Quote Strategy Quote Message field
  local bid_price_quote_strategy_quote_message_offset = offset + index
  local bid_price_quote_strategy_quote_message_type = buffer(bid_price_quote_strategy_quote_message_offset - 0, 6):string()
  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_strategy_quote_message.size(buffer, bid_price_quote_strategy_quote_message_offset, bid_price_quote_strategy_quote_message_type)

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_sign.size

  -- Calculate runtime size of Ask Price Quote Strategy Quote Message field
  local ask_price_quote_strategy_quote_message_offset = offset + index
  local ask_price_quote_strategy_quote_message_type = buffer(ask_price_quote_strategy_quote_message_offset - 0, 6):string()
  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_strategy_quote_message.size(buffer, ask_price_quote_strategy_quote_message_offset, ask_price_quote_strategy_quote_message_type)

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_status_marker.size

  return index
end

-- Display: Strategy Quote Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Quote Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Symbol: X
  index, symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.symbol.dissect(buffer, index, packet, parent)

  -- Bid Price Sign: X
  index, bid_price_sign = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_sign.dissect(buffer, index, packet, parent)

  -- Dependency element: Bid Price Quote Opening
  local bid_price_quote_opening = buffer(index, 6):string()

  -- Dependency element: Bid Price Fraction Indicator
  local bid_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Bid Price Quote Strategy Quote Message: Runtime Type with 2 branches
  index = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_strategy_quote_message.dissect(buffer, index, packet, parent, bid_price_quote_opening, bid_price_fraction_indicator)

  -- Bid Size: X
  index, bid_size = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price Sign: X
  index, ask_price_sign = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_sign.dissect(buffer, index, packet, parent)

  -- Dependency element: Ask Price Quote Opening
  local ask_price_quote_opening = buffer(index, 6):string()

  -- Dependency element: Ask Price Fraction Indicator
  local ask_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Ask Price Quote Strategy Quote Message: Runtime Type with 2 branches
  index = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_strategy_quote_message.dissect(buffer, index, packet, parent, ask_price_quote_opening, ask_price_fraction_indicator)

  -- Ask Size: X
  index, ask_size = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker: X
  index, instrument_status_marker = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_status_marker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Quote Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strategy_quote_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Ask Price Quote Futures Quote Message Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_futures_quote_message_numeric_pair = {}

-- Size: Ask Price Quote Futures Quote Message Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_futures_quote_message_numeric_pair.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_numeric.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_fraction_indicator.size

-- Display: Ask Price Quote Futures Quote Message Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_futures_quote_message_numeric_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ask Price Quote Futures Quote Message Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_futures_quote_message_numeric_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Ask Price Quote Numeric: X
  index, ask_price_quote_numeric = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_ask_price_quote.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask Price Quote Futures Quote Message Numeric Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_futures_quote_message_numeric_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_quote_futures_quote_message_numeric_pair, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_futures_quote_message_numeric_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_futures_quote_message_numeric_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_futures_quote_message_numeric_pair.fields(buffer, offset, packet, parent)
  end
end

-- Ask Price Quote Futures Quote Message Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_futures_quote_message_opening_pair = {}

-- Size: Ask Price Quote Futures Quote Message Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_futures_quote_message_opening_pair.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_opening.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_fraction_indicator.size

-- Display: Ask Price Quote Futures Quote Message Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_futures_quote_message_opening_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ask Price Quote Futures Quote Message Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_futures_quote_message_opening_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Ask Price Quote Opening: X
  index, ask_price_quote_opening = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_opening.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask Price Quote Futures Quote Message Opening Pair
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_futures_quote_message_opening_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.ask_price_quote_futures_quote_message_opening_pair, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_futures_quote_message_opening_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_futures_quote_message_opening_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_futures_quote_message_opening_pair.fields(buffer, offset, packet, parent)
  end
end

-- Ask Price Quote Futures Quote Message
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_futures_quote_message = {}

-- Dissect: Ask Price Quote Futures Quote Message
tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_futures_quote_message.dissect = function(buffer, offset, packet, parent, ask_price_quote_opening, ask_price_fraction_indicator)
  -- Dissect Ask Price Quote Futures Quote Message Opening Pair
  if ask_price_quote_opening == "OUV" and ask_price_fraction_indicator == "0" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_futures_quote_message_opening_pair.dissect(buffer, offset, packet, parent)
  end

  -- Dissect Ask Price Quote Futures Quote Message Numeric Pair
  return tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_futures_quote_message_numeric_pair.dissect(buffer, offset, packet, parent)
end

-- Futures Quote Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_quote_message = {}

-- Calculate size of: Futures Quote Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_month.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_year_futures.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_day.size

  -- Calculate runtime size of Bid Price Quote Futures Quote Message field
  local bid_price_quote_futures_quote_message_offset = offset + index
  local bid_price_quote_futures_quote_message_type = buffer(bid_price_quote_futures_quote_message_offset - 0, 6):string()
  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_quote_message.size(buffer, bid_price_quote_futures_quote_message_offset, bid_price_quote_futures_quote_message_type)

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.size

  -- Calculate runtime size of Ask Price Quote Futures Quote Message field
  local ask_price_quote_futures_quote_message_offset = offset + index
  local ask_price_quote_futures_quote_message_type = buffer(ask_price_quote_futures_quote_message_offset - 0, 6):string()
  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_futures_quote_message.size(buffer, ask_price_quote_futures_quote_message_offset, ask_price_quote_futures_quote_message_type)

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_status_marker.size

  return index
end

-- Display: Futures Quote Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Quote Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: A
  index, root_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.dissect(buffer, index, packet, parent)

  -- Delivery Month: A
  index, delivery_month = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_month.dissect(buffer, index, packet, parent)

  -- Delivery Year Futures: N
  index, delivery_year_futures = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_year_futures.dissect(buffer, index, packet, parent)

  -- Delivery Day: N
  index, delivery_day = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_day.dissect(buffer, index, packet, parent)

  -- Dependency element: Bid Price Quote Opening
  local bid_price_quote_opening = buffer(index, 6):string()

  -- Dependency element: Bid Price Fraction Indicator
  local bid_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Bid Price Quote Futures Quote Message: Runtime Type with 2 branches
  index = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote_futures_quote_message.dissect(buffer, index, packet, parent, bid_price_quote_opening, bid_price_fraction_indicator)

  -- Bid Size: X
  index, bid_size = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Ask Price Quote Opening
  local ask_price_quote_opening = buffer(index, 6):string()

  -- Dependency element: Ask Price Fraction Indicator
  local ask_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Ask Price Quote Futures Quote Message: Runtime Type with 2 branches
  index = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote_futures_quote_message.dissect(buffer, index, packet, parent, ask_price_quote_opening, ask_price_fraction_indicator)

  -- Ask Size: X
  index, ask_size = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_status_marker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Quote Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.futures_quote_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.futures_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.futures_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.futures_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Future Options Quote Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_quote_message = {}

-- Calculate size of: Future Options Quote Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.contract_month_code.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.call_put_code.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_instrument.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.size

  -- Calculate runtime size of Bid Price Quote field
  local bid_price_quote_offset = offset + index
  local bid_price_quote_type = buffer(bid_price_quote_offset - 0, 6):string()
  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote.size(buffer, bid_price_quote_offset, bid_price_quote_type)

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.size

  -- Calculate runtime size of Ask Price Quote field
  local ask_price_quote_offset = offset + index
  local ask_price_quote_type = buffer(ask_price_quote_offset - 0, 6):string()
  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote.size(buffer, ask_price_quote_offset, ask_price_quote_type)

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_status_marker.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.filler_1.size

  return index
end

-- Display: Future Options Quote Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Quote Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: A
  index, root_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.dissect(buffer, index, packet, parent)

  -- Contract Month Code: A
  index, contract_month_code = tmx_mx_solatcpretransmission_hsvf_v1_11.contract_month_code.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Call Put Code: A
  index, call_put_code = tmx_mx_solatcpretransmission_hsvf_v1_11.call_put_code.dissect(buffer, index, packet, parent)

  -- Strike Price Instrument: N
  index, strike_price_instrument = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_instrument.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Dependency element: Bid Price Quote Opening
  local bid_price_quote_opening = buffer(index, 6):string()

  -- Dependency element: Bid Price Fraction Indicator
  local bid_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Bid Price Quote: Runtime Type with 2 branches
  index = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote.dissect(buffer, index, packet, parent, bid_price_quote_opening, bid_price_fraction_indicator)

  -- Bid Size: X
  index, bid_size = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Ask Price Quote Opening
  local ask_price_quote_opening = buffer(index, 6):string()

  -- Dependency element: Ask Price Fraction Indicator
  local ask_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Ask Price Quote: Runtime Type with 2 branches
  index = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote.dissect(buffer, index, packet, parent, ask_price_quote_opening, ask_price_fraction_indicator)

  -- Ask Size: X
  index, ask_size = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_status_marker.dissect(buffer, index, packet, parent)

  -- Filler 1: X
  index, filler_1 = tmx_mx_solatcpretransmission_hsvf_v1_11.filler_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Quote Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.future_options_quote_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Quote Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_quote_message = {}

-- Calculate size of: Option Quote Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.filler_1.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_instrument.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.size

  -- Calculate runtime size of Bid Price Quote field
  local bid_price_quote_offset = offset + index
  local bid_price_quote_type = buffer(bid_price_quote_offset - 0, 6):string()
  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote.size(buffer, bid_price_quote_offset, bid_price_quote_type)

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.size

  -- Calculate runtime size of Ask Price Quote field
  local ask_price_quote_offset = offset + index
  local ask_price_quote_type = buffer(ask_price_quote_offset - 0, 6):string()
  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote.size(buffer, ask_price_quote_offset, ask_price_quote_type)

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.second_filler_1.size

  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_status_marker.size

  return index
end

-- Display: Option Quote Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Quote Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: X
  index, root_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.dissect(buffer, index, packet, parent)

  -- Expiry Month: A
  index, expiry_month = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month.dissect(buffer, index, packet, parent)

  -- Filler 1: A
  index, filler_1 = tmx_mx_solatcpretransmission_hsvf_v1_11.filler_1.dissect(buffer, index, packet, parent)

  -- Strike Price Instrument: N
  index, strike_price_instrument = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_instrument.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Dependency element: Bid Price Quote Opening
  local bid_price_quote_opening = buffer(index, 6):string()

  -- Dependency element: Bid Price Fraction Indicator
  local bid_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Bid Price Quote: Runtime Type with 2 branches
  index = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_price_quote.dissect(buffer, index, packet, parent, bid_price_quote_opening, bid_price_fraction_indicator)

  -- Bid Size: X
  index, bid_size = tmx_mx_solatcpretransmission_hsvf_v1_11.bid_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Ask Price Quote Opening
  local ask_price_quote_opening = buffer(index, 6):string()

  -- Dependency element: Ask Price Fraction Indicator
  local ask_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Ask Price Quote: Runtime Type with 2 branches
  index = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_price_quote.dissect(buffer, index, packet, parent, ask_price_quote_opening, ask_price_fraction_indicator)

  -- Ask Size: X
  index, ask_size = tmx_mx_solatcpretransmission_hsvf_v1_11.ask_size.dissect(buffer, index, packet, parent)

  -- Second Filler 1: X
  index, second_filler_1 = tmx_mx_solatcpretransmission_hsvf_v1_11.second_filler_1.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_status_marker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Quote Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.option_quote_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.option_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.option_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.option_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Schedule Notice Swap Future Message
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_swap_future_message = {}

-- Size: Instrument Schedule Notice Swap Future Message
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_swap_future_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month_swap_future.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.tenor.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.series_status.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.scheduled_status_change_time.size

-- Display: Instrument Schedule Notice Swap Future Message
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_swap_future_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Schedule Notice Swap Future Message
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_swap_future_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: A
  index, root_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.dissect(buffer, index, packet, parent)

  -- Expiry Month Swap Future: A
  index, expiry_month_swap_future = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month_swap_future.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Tenor: N
  index, tenor = tmx_mx_solatcpretransmission_hsvf_v1_11.tenor.dissect(buffer, index, packet, parent)

  -- Fixed Rate: N
  index, fixed_rate = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_fixed_rate.dissect(buffer, index, packet, parent)

  -- Fixed Rate Fraction Indicator: X
  index, fixed_rate_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Series Status: A
  index, series_status = tmx_mx_solatcpretransmission_hsvf_v1_11.series_status.dissect(buffer, index, packet, parent)

  -- Scheduled Status Change Time: N
  index, scheduled_status_change_time = tmx_mx_solatcpretransmission_hsvf_v1_11.scheduled_status_change_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Schedule Notice Swap Future Message
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_swap_future_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.instrument_schedule_notice_swap_future_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_swap_future_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_swap_future_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_swap_future_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Schedule Notice Strategy Message
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_strategy_message = {}

-- Size: Instrument Schedule Notice Strategy Message
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_strategy_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_symbol.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.series_status.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.scheduled_status_change_time.size

-- Display: Instrument Schedule Notice Strategy Message
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_strategy_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Schedule Notice Strategy Message
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_strategy_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Strategy Symbol: X
  index, strategy_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_symbol.dissect(buffer, index, packet, parent)

  -- Series Status: A
  index, series_status = tmx_mx_solatcpretransmission_hsvf_v1_11.series_status.dissect(buffer, index, packet, parent)

  -- Scheduled Status Change Time: N
  index, scheduled_status_change_time = tmx_mx_solatcpretransmission_hsvf_v1_11.scheduled_status_change_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Schedule Notice Strategy Message
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_strategy_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.instrument_schedule_notice_strategy_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_strategy_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_strategy_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_strategy_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Schedule Notice Future Message
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_future_message = {}

-- Size: Instrument Schedule Notice Future Message
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_future_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_month.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_year_futures.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_day.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.series_status.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.scheduled_status_change_time.size

-- Display: Instrument Schedule Notice Future Message
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_future_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Schedule Notice Future Message
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_future_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: A
  index, root_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.dissect(buffer, index, packet, parent)

  -- Delivery Month: A
  index, delivery_month = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_month.dissect(buffer, index, packet, parent)

  -- Delivery Year Futures: N
  index, delivery_year_futures = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_year_futures.dissect(buffer, index, packet, parent)

  -- Delivery Day: N
  index, delivery_day = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_day.dissect(buffer, index, packet, parent)

  -- Series Status: A
  index, series_status = tmx_mx_solatcpretransmission_hsvf_v1_11.series_status.dissect(buffer, index, packet, parent)

  -- Scheduled Status Change Time: N
  index, scheduled_status_change_time = tmx_mx_solatcpretransmission_hsvf_v1_11.scheduled_status_change_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Schedule Notice Future Message
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_future_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.instrument_schedule_notice_future_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_future_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_future_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_future_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Schedule Notice Futures Option Message
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_futures_option_message = {}

-- Size: Instrument Schedule Notice Futures Option Message
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_futures_option_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.contract_month_code.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.call_put_code.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_instrument.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.series_status.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.scheduled_status_change_time.size

-- Display: Instrument Schedule Notice Futures Option Message
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_futures_option_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Schedule Notice Futures Option Message
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_futures_option_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: A
  index, root_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.dissect(buffer, index, packet, parent)

  -- Contract Month Code: A
  index, contract_month_code = tmx_mx_solatcpretransmission_hsvf_v1_11.contract_month_code.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Call Put Code: S
  index, call_put_code = tmx_mx_solatcpretransmission_hsvf_v1_11.call_put_code.dissect(buffer, index, packet, parent)

  -- Strike Price Instrument: N
  index, strike_price_instrument = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_instrument.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Series Status: A
  index, series_status = tmx_mx_solatcpretransmission_hsvf_v1_11.series_status.dissect(buffer, index, packet, parent)

  -- Scheduled Status Change Time: N
  index, scheduled_status_change_time = tmx_mx_solatcpretransmission_hsvf_v1_11.scheduled_status_change_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Schedule Notice Futures Option Message
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_futures_option_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.instrument_schedule_notice_futures_option_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_futures_option_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_futures_option_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_futures_option_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Schedule Notice Option Message
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_option_message = {}

-- Size: Instrument Schedule Notice Option Message
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_option_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.filler_1.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_schedule_notice.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.series_status.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.scheduled_status_change_time.size

-- Display: Instrument Schedule Notice Option Message
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_option_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Schedule Notice Option Message
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_option_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: X
  index, root_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.dissect(buffer, index, packet, parent)

  -- Expiry Month: A
  index, expiry_month = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month.dissect(buffer, index, packet, parent)

  -- Filler 1: A
  index, filler_1 = tmx_mx_solatcpretransmission_hsvf_v1_11.filler_1.dissect(buffer, index, packet, parent)

  -- Strike Price Schedule Notice: X
  index, strike_price_schedule_notice = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_schedule_notice.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Series Status: A
  index, series_status = tmx_mx_solatcpretransmission_hsvf_v1_11.series_status.dissect(buffer, index, packet, parent)

  -- Scheduled Status Change Time: N
  index, scheduled_status_change_time = tmx_mx_solatcpretransmission_hsvf_v1_11.scheduled_status_change_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Schedule Notice Option Message
tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_option_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.instrument_schedule_notice_option_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_option_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_option_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_option_message.fields(buffer, offset, packet, parent)
  end
end

-- Swap Future Rfq Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_rfq_message = {}

-- Size: Swap Future Rfq Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_rfq_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol_swap_future.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month_swap_future.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.tenor.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.requested_size.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.requested_market_side.size

-- Display: Swap Future Rfq Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_rfq_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Swap Future Rfq Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_rfq_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol Swap Future: X
  index, root_symbol_swap_future = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol_swap_future.dissect(buffer, index, packet, parent)

  -- Expiry Month Swap Future: A
  index, expiry_month_swap_future = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month_swap_future.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Tenor: N
  index, tenor = tmx_mx_solatcpretransmission_hsvf_v1_11.tenor.dissect(buffer, index, packet, parent)

  -- Fixed Rate: N
  index, fixed_rate = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_fixed_rate.dissect(buffer, index, packet, parent)

  -- Fixed Rate Fraction Indicator: X
  index, fixed_rate_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Requested Size: X
  index, requested_size = tmx_mx_solatcpretransmission_hsvf_v1_11.requested_size.dissect(buffer, index, packet, parent)

  -- Requested Market Side: X
  index, requested_market_side = tmx_mx_solatcpretransmission_hsvf_v1_11.requested_market_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Swap Future Rfq Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_rfq_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.swap_future_rfq_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_rfq_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_rfq_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_rfq_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Rfq Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_rfq_message = {}

-- Size: Strategy Rfq Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_rfq_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.symbol.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.requested_size.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.requested_market_side.size

-- Display: Strategy Rfq Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_rfq_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Rfq Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_rfq_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Symbol: X
  index, symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.symbol.dissect(buffer, index, packet, parent)

  -- Requested Size: X
  index, requested_size = tmx_mx_solatcpretransmission_hsvf_v1_11.requested_size.dissect(buffer, index, packet, parent)

  -- Requested Market Side: X
  index, requested_market_side = tmx_mx_solatcpretransmission_hsvf_v1_11.requested_market_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Rfq Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_rfq_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strategy_rfq_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_rfq_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_rfq_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_rfq_message.fields(buffer, offset, packet, parent)
  end
end

-- Futures Rfq Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_rfq_message = {}

-- Size: Futures Rfq Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_rfq_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_month.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_year_futures.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_day.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.requested_size.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.requested_market_side.size

-- Display: Futures Rfq Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_rfq_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Rfq Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_rfq_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: A
  index, root_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.dissect(buffer, index, packet, parent)

  -- Delivery Month: A
  index, delivery_month = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_month.dissect(buffer, index, packet, parent)

  -- Delivery Year Futures: N
  index, delivery_year_futures = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_year_futures.dissect(buffer, index, packet, parent)

  -- Delivery Day: N
  index, delivery_day = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_day.dissect(buffer, index, packet, parent)

  -- Requested Size: X
  index, requested_size = tmx_mx_solatcpretransmission_hsvf_v1_11.requested_size.dissect(buffer, index, packet, parent)

  -- Requested Market Side: X
  index, requested_market_side = tmx_mx_solatcpretransmission_hsvf_v1_11.requested_market_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Rfq Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_rfq_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.futures_rfq_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.futures_rfq_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.futures_rfq_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.futures_rfq_message.fields(buffer, offset, packet, parent)
  end
end

-- Future Options Rfq Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_rfq_message = {}

-- Size: Future Options Rfq Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_rfq_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.contract_month_code.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.call_put_code.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_instrument.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.requested_size.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.requested_market_side.size

-- Display: Future Options Rfq Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_rfq_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Rfq Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_rfq_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: A
  index, root_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.dissect(buffer, index, packet, parent)

  -- Contract Month Code: A
  index, contract_month_code = tmx_mx_solatcpretransmission_hsvf_v1_11.contract_month_code.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Call Put Code: A
  index, call_put_code = tmx_mx_solatcpretransmission_hsvf_v1_11.call_put_code.dissect(buffer, index, packet, parent)

  -- Strike Price Instrument: N
  index, strike_price_instrument = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_instrument.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Requested Size: X
  index, requested_size = tmx_mx_solatcpretransmission_hsvf_v1_11.requested_size.dissect(buffer, index, packet, parent)

  -- Requested Market Side: X
  index, requested_market_side = tmx_mx_solatcpretransmission_hsvf_v1_11.requested_market_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Rfq Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_rfq_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.future_options_rfq_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_rfq_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_rfq_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_rfq_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Rfq Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_rfq_message = {}

-- Size: Option Rfq Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_rfq_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.filler_1.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_instrument.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.requested_size.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.requested_market_side.size

-- Display: Option Rfq Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_rfq_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Rfq Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_rfq_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: X
  index, root_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.dissect(buffer, index, packet, parent)

  -- Expiry Month: A
  index, expiry_month = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month.dissect(buffer, index, packet, parent)

  -- Filler 1: A
  index, filler_1 = tmx_mx_solatcpretransmission_hsvf_v1_11.filler_1.dissect(buffer, index, packet, parent)

  -- Strike Price Instrument: N
  index, strike_price_instrument = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_instrument.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Requested Size: X
  index, requested_size = tmx_mx_solatcpretransmission_hsvf_v1_11.requested_size.dissect(buffer, index, packet, parent)

  -- Requested Market Side: X
  index, requested_market_side = tmx_mx_solatcpretransmission_hsvf_v1_11.requested_market_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Rfq Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_rfq_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.option_rfq_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.option_rfq_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.option_rfq_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.option_rfq_message.fields(buffer, offset, packet, parent)
  end
end

-- Swap Future Trade Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_trade_message = {}

-- Size: Swap Future Trade Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_trade_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol_swap_future.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month_swap_future.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.tenor.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_volume.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.price_indicator_marker.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.size

-- Display: Swap Future Trade Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Swap Future Trade Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol Swap Future: X
  index, root_symbol_swap_future = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol_swap_future.dissect(buffer, index, packet, parent)

  -- Expiry Month Swap Future: A
  index, expiry_month_swap_future = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month_swap_future.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Tenor: N
  index, tenor = tmx_mx_solatcpretransmission_hsvf_v1_11.tenor.dissect(buffer, index, packet, parent)

  -- Fixed Rate: N
  index, fixed_rate = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_fixed_rate.dissect(buffer, index, packet, parent)

  -- Fixed Rate Fraction Indicator: X
  index, fixed_rate_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.fixed_rate_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Trade Volume: N
  index, trade_volume = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_volume.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign: X
  index, net_change_sign = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker: X
  index, price_indicator_marker = tmx_mx_solatcpretransmission_hsvf_v1_11.price_indicator_marker.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Swap Future Trade Message
tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.swap_future_trade_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Trade Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_trade_message = {}

-- Size: Strategy Trade Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_trade_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.symbol.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.volume.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_sign.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.filler_6.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.price_indicator_marker.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.size

-- Display: Strategy Trade Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Trade Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Symbol: X
  index, symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.symbol.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_solatcpretransmission_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Trade Price Sign: X
  index, trade_price_sign = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_sign.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign: X
  index, net_change_sign = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Filler 6: N
  index, filler_6 = tmx_mx_solatcpretransmission_hsvf_v1_11.filler_6.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker: X
  index, price_indicator_marker = tmx_mx_solatcpretransmission_hsvf_v1_11.price_indicator_marker.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Trade Message
tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.strategy_trade_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Futures Trade Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_trade_message = {}

-- Size: Futures Trade Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_trade_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_month.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_year_futures.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_day.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.volume.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.filler_6.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.price_indicator_marker.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.size

-- Display: Futures Trade Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Trade Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: A
  index, root_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.dissect(buffer, index, packet, parent)

  -- Delivery Month: A
  index, delivery_month = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_month.dissect(buffer, index, packet, parent)

  -- Delivery Year Futures: N
  index, delivery_year_futures = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_year_futures.dissect(buffer, index, packet, parent)

  -- Delivery Day: N
  index, delivery_day = tmx_mx_solatcpretransmission_hsvf_v1_11.delivery_day.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_solatcpretransmission_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign: X
  index, net_change_sign = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Filler 6: N
  index, filler_6 = tmx_mx_solatcpretransmission_hsvf_v1_11.filler_6.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker: X
  index, price_indicator_marker = tmx_mx_solatcpretransmission_hsvf_v1_11.price_indicator_marker.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Trade Message
tmx_mx_solatcpretransmission_hsvf_v1_11.futures_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.futures_trade_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.futures_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.futures_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.futures_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Future Options Trade Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_trade_message = {}

-- Size: Future Options Trade Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_trade_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.contract_month_code.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.call_put_code.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_instrument.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.volume.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.price_indicator_marker.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.filler_6.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.open_interest.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.filler_2.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.size

-- Display: Future Options Trade Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Trade Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: A
  index, root_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.dissect(buffer, index, packet, parent)

  -- Contract Month Code: A
  index, contract_month_code = tmx_mx_solatcpretransmission_hsvf_v1_11.contract_month_code.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Call Put Code: A
  index, call_put_code = tmx_mx_solatcpretransmission_hsvf_v1_11.call_put_code.dissect(buffer, index, packet, parent)

  -- Strike Price Instrument: N
  index, strike_price_instrument = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_instrument.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_solatcpretransmission_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker: A
  index, price_indicator_marker = tmx_mx_solatcpretransmission_hsvf_v1_11.price_indicator_marker.dissect(buffer, index, packet, parent)

  -- Net Change Sign: A
  index, net_change_sign = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: A
  index, net_change_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Filler 6: N
  index, filler_6 = tmx_mx_solatcpretransmission_hsvf_v1_11.filler_6.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Open Interest: N
  index, open_interest = tmx_mx_solatcpretransmission_hsvf_v1_11.open_interest.dissect(buffer, index, packet, parent)

  -- Filler 2: X
  index, filler_2 = tmx_mx_solatcpretransmission_hsvf_v1_11.filler_2.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Trade Message
tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.future_options_trade_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Trade Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_trade_message = {}

-- Size: Option Trade Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_trade_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.filler_1.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_instrument.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.volume.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.filler_6.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.open_interest.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.second_filler_1.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.price_indicator_marker.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.size

-- Display: Option Trade Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Trade Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solatcpretransmission_hsvf_v1_11.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: X
  index, root_symbol = tmx_mx_solatcpretransmission_hsvf_v1_11.root_symbol.dissect(buffer, index, packet, parent)

  -- Expiry Month: A
  index, expiry_month = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_month.dissect(buffer, index, packet, parent)

  -- Filler 1: A
  index, filler_1 = tmx_mx_solatcpretransmission_hsvf_v1_11.filler_1.dissect(buffer, index, packet, parent)

  -- Strike Price Instrument: N
  index, strike_price_instrument = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_strike_price_instrument.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_solatcpretransmission_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_solatcpretransmission_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign: A
  index, net_change_sign = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_sign.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_solatcpretransmission_hsvf_v1_11.scaled_net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = tmx_mx_solatcpretransmission_hsvf_v1_11.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Filler 6: N
  index, filler_6 = tmx_mx_solatcpretransmission_hsvf_v1_11.filler_6.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = tmx_mx_solatcpretransmission_hsvf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Open Interest: N
  index, open_interest = tmx_mx_solatcpretransmission_hsvf_v1_11.open_interest.dissect(buffer, index, packet, parent)

  -- Second Filler 1: X
  index, second_filler_1 = tmx_mx_solatcpretransmission_hsvf_v1_11.second_filler_1.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker: A
  index, price_indicator_marker = tmx_mx_solatcpretransmission_hsvf_v1_11.price_indicator_marker.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_solatcpretransmission_hsvf_v1_11.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Trade Message
tmx_mx_solatcpretransmission_hsvf_v1_11.option_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.option_trade_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.option_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.option_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.option_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Body
tmx_mx_solatcpretransmission_hsvf_v1_11.message_body = {}

-- Dissect: Message Body
tmx_mx_solatcpretransmission_hsvf_v1_11.message_body.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Option Trade Message
  if message_type == "C" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.option_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Trade Message
  if message_type == "CB" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Trade Message
  if message_type == "CF" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.futures_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Trade Message
  if message_type == "CS" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Swap Future Trade Message
  if message_type == "CW" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Rfq Message
  if message_type == "D" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.option_rfq_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Rfq Message
  if message_type == "DB" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_rfq_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Rfq Message
  if message_type == "DF" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.futures_rfq_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Rfq Message
  if message_type == "DS" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_rfq_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Swap Future Rfq Message
  if message_type == "DW" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_rfq_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Schedule Notice Option Message
  if message_type == "E" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_option_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Schedule Notice Futures Option Message
  if message_type == "EB" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_futures_option_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Schedule Notice Future Message
  if message_type == "EF" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_future_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Schedule Notice Strategy Message
  if message_type == "ES" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_strategy_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Schedule Notice Swap Future Message
  if message_type == "EW" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.instrument_schedule_notice_swap_future_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Quote Message
  if message_type == "F" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.option_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Quote Message
  if message_type == "FB" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Quote Message
  if message_type == "FF" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.futures_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Quote Message
  if message_type == "FS" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Swap Future Quote Message
  if message_type == "FW" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Market Depth Message
  if message_type == "H" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.option_market_depth_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Market Depth Message
  if message_type == "HB" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_market_depth_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Market Depth Message
  if message_type == "HF" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.futures_market_depth_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Market Depth Message
  if message_type == "HS" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_market_depth_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Swap Future Market Depth Message
  if message_type == "HW" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_market_depth_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Trade Cancellation Message
  if message_type == "I" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.option_trade_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Trade Cancellation Message
  if message_type == "IB" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_trade_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Trade Cancellation Message
  if message_type == "IF" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.futures_trade_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Trade Cancellation Message
  if message_type == "IS" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_trade_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Swap Future Trade Cancellation Message
  if message_type == "IW" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_trade_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Instrument Keys Message
  if message_type == "J" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.option_instrument_keys_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Instrument Keys Message
  if message_type == "JB" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_instrument_keys_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Instrument Keys Message
  if message_type == "JE" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.underlying_instrument_keys_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Instrument Keys Message
  if message_type == "JF" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.futures_instrument_keys_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Instrument Keys Message
  if message_type == "JS" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_instrument_keys_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Swap Future Instrument Keys Message
  if message_type == "JW" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_instrument_keys_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Summary Message
  if message_type == "N" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.option_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Summary Message
  if message_type == "NB" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Summary Message
  if message_type == "NF" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.futures_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Summary Message
  if message_type == "NS" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Swap Future Summary Message
  if message_type == "NW" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Beginning Of Options Summary Message
  if message_type == "Q" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_options_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Beginning Of Future Options Summary Message
  if message_type == "QB" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_future_options_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Beginning Of Futures Summary Message
  if message_type == "QF" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_futures_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Beginning Of Strategy Summary Message
  if message_type == "QS" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.beginning_of_strategy_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Swap Future Beginning Of Summary Message
  if message_type == "QW" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_beginning_of_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Trade Correction Message
  if message_type == "X" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.option_trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Trade Correction Message
  if message_type == "XB" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.future_options_trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Trade Correction Message
  if message_type == "XF" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.futures_trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Trade Correction Message
  if message_type == "XS" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.strategy_trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Swap Future Trade Correction Message
  if message_type == "XW" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.swap_future_trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Group Status Message
  if message_type == "GR" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.group_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Group Status Strategies Message
  if message_type == "GS" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.group_status_strategies_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bulletins Message
  if message_type == "L" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.bulletins_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Sales Message
  if message_type == "S" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.end_of_sales_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Table Message
  if message_type == "TT" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.tick_table_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Transmission Message
  if message_type == "U" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.end_of_transmission_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Circuit Assurance Message
  if message_type == "V" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.circuit_assurance_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Timebeat Message
  if message_type == "Z" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.timebeat_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Retransmitted Message
tmx_mx_solatcpretransmission_hsvf_v1_11.retransmitted_message = {}

-- Calculate size of: Retransmitted Message
tmx_mx_solatcpretransmission_hsvf_v1_11.retransmitted_message.size = function(buffer, offset)
  local index = 0

  -- Calculate runtime size of Message Body field
  local message_body_offset = offset + index
  local message_body_type = buffer(message_body_offset - 2, 2):string()
  index = index + tmx_mx_solatcpretransmission_hsvf_v1_11.message_body.size(buffer, message_body_offset, message_body_type)

  return index
end

-- Display: Retransmitted Message
tmx_mx_solatcpretransmission_hsvf_v1_11.retransmitted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmitted Message
tmx_mx_solatcpretransmission_hsvf_v1_11.retransmitted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Message Type
  local message_type = trim_right_spaces(buffer(offset - 2, 2):string())

  -- Message Body: Runtime Type with 59 branches
  index = tmx_mx_solatcpretransmission_hsvf_v1_11.message_body.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Retransmitted Message
tmx_mx_solatcpretransmission_hsvf_v1_11.retransmitted_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.retransmitted_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.retransmitted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.retransmitted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.retransmitted_message.fields(buffer, offset, packet, parent)
  end
end

-- Error Message
tmx_mx_solatcpretransmission_hsvf_v1_11.error_message = {}

-- Size: Error Message
tmx_mx_solatcpretransmission_hsvf_v1_11.error_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.error_code.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.error_msg.size

-- Display: Error Message
tmx_mx_solatcpretransmission_hsvf_v1_11.error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Error Message
tmx_mx_solatcpretransmission_hsvf_v1_11.error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Error Code: N
  index, error_code = tmx_mx_solatcpretransmission_hsvf_v1_11.error_code.dissect(buffer, index, packet, parent)

  -- Error Msg: X
  index, error_msg = tmx_mx_solatcpretransmission_hsvf_v1_11.error_msg.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Error Message
tmx_mx_solatcpretransmission_hsvf_v1_11.error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.error_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.error_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission End Message
tmx_mx_solatcpretransmission_hsvf_v1_11.retransmission_end_message = {}

-- Display: Retransmission End Message
tmx_mx_solatcpretransmission_hsvf_v1_11.retransmission_end_message.display = function(packet, parent, length)
  return "Retransmission End Message"
end


-- Dissect: Retransmission End Message
tmx_mx_solatcpretransmission_hsvf_v1_11.retransmission_end_message.dissect = function(buffer, offset, packet, parent)
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.retransmission_end_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Retransmission Begin Message
tmx_mx_solatcpretransmission_hsvf_v1_11.retransmission_begin_message = {}

-- Display: Retransmission Begin Message
tmx_mx_solatcpretransmission_hsvf_v1_11.retransmission_begin_message.display = function(packet, parent, length)
  return "Retransmission Begin Message"
end


-- Dissect: Retransmission Begin Message
tmx_mx_solatcpretransmission_hsvf_v1_11.retransmission_begin_message.dissect = function(buffer, offset, packet, parent)
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.retransmission_begin_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Logout Acknowledgement Message
tmx_mx_solatcpretransmission_hsvf_v1_11.logout_acknowledgement_message = {}

-- Display: Logout Acknowledgement Message
tmx_mx_solatcpretransmission_hsvf_v1_11.logout_acknowledgement_message.display = function(packet, parent, length)
  return "Logout Acknowledgement Message"
end


-- Dissect: Logout Acknowledgement Message
tmx_mx_solatcpretransmission_hsvf_v1_11.logout_acknowledgement_message.dissect = function(buffer, offset, packet, parent)
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.logout_acknowledgement_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Login Acknowledgement Message
tmx_mx_solatcpretransmission_hsvf_v1_11.login_acknowledgement_message = {}

-- Display: Login Acknowledgement Message
tmx_mx_solatcpretransmission_hsvf_v1_11.login_acknowledgement_message.display = function(packet, parent, length)
  return "Login Acknowledgement Message"
end


-- Dissect: Login Acknowledgement Message
tmx_mx_solatcpretransmission_hsvf_v1_11.login_acknowledgement_message.dissect = function(buffer, offset, packet, parent)
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.login_acknowledgement_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Message
tmx_mx_solatcpretransmission_hsvf_v1_11.server_message = {}

-- Dissect: Server Message
tmx_mx_solatcpretransmission_hsvf_v1_11.server_message.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Acknowledgement Message
  if message_type == "KI" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.login_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Acknowledgement Message
  if message_type == "KO" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.logout_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Begin Message
  if message_type == "RB" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.retransmission_begin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission End Message
  if message_type == "RE" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.retransmission_end_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Error Message
  if message_type == "ER" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.error_message.dissect(buffer, offset, packet, parent)
  end

  -- Dissect Retransmitted Message
  return tmx_mx_solatcpretransmission_hsvf_v1_11.retransmitted_message.dissect(buffer, offset, packet, parent)
end

-- Message Header
tmx_mx_solatcpretransmission_hsvf_v1_11.message_header = {}

-- Size: Message Header
tmx_mx_solatcpretransmission_hsvf_v1_11.message_header.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.sequence_number.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.message_type.size

-- Display: Message Header
tmx_mx_solatcpretransmission_hsvf_v1_11.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
tmx_mx_solatcpretransmission_hsvf_v1_11.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: N
  index, sequence_number = tmx_mx_solatcpretransmission_hsvf_v1_11.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Type: X
  index, message_type = tmx_mx_solatcpretransmission_hsvf_v1_11.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
tmx_mx_solatcpretransmission_hsvf_v1_11.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.message_header, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Frame
tmx_mx_solatcpretransmission_hsvf_v1_11.server_frame = {}

-- Display: Server Frame
tmx_mx_solatcpretransmission_hsvf_v1_11.server_frame.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Frame
tmx_mx_solatcpretransmission_hsvf_v1_11.server_frame.fields = function(buffer, offset, packet, parent, size_of_server_frame)
  local index = offset

  -- Hsvf Stx: character
  index, hsvf_stx = tmx_mx_solatcpretransmission_hsvf_v1_11.hsvf_stx.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 2 fields
  index, message_header = tmx_mx_solatcpretransmission_hsvf_v1_11.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = trim_right_spaces(buffer(index - 2, 2):string())

  -- Server Message: Runtime Type with 6 branches
  index = tmx_mx_solatcpretransmission_hsvf_v1_11.server_message.dissect(buffer, index, packet, parent, message_type)

  -- Hsvf Etx: character
  index, hsvf_etx = tmx_mx_solatcpretransmission_hsvf_v1_11.hsvf_etx.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Frame
tmx_mx_solatcpretransmission_hsvf_v1_11.server_frame.dissect = function(buffer, offset, packet, parent, size_of_server_frame)
  local index = offset + size_of_server_frame

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.server_frame, buffer(offset, 0))
    local current = tmx_mx_solatcpretransmission_hsvf_v1_11.server_frame.fields(buffer, offset, packet, parent, size_of_server_frame)
    parent:set_len(size_of_server_frame)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.server_frame.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    tmx_mx_solatcpretransmission_hsvf_v1_11.server_frame.fields(buffer, offset, packet, parent, size_of_server_frame)

    return index
  end
end

-- Remaining Bytes For: Server Frame
local server_frame_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- A message runs to the first terminator byte: scan for it
  local terminator = 3
  local current = 0
  while current < remaining and buffer(index + current, 1):uint() ~= terminator do
    current = current + 1
  end

  -- The terminator is not in the bytes available yet: ask for one more segment
  if current >= remaining then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- The message includes the terminator byte it ends on
  current = current + 1

  return remaining, current
end

-- Server Packet
tmx_mx_solatcpretransmission_hsvf_v1_11.server_packet = {}

-- Verify required size of Tcp packet
tmx_mx_solatcpretransmission_hsvf_v1_11.server_packet.requiredsize = function(buffer)
  return buffer:len() >= tmx_mx_solatcpretransmission_hsvf_v1_11.hsvf_stx.size + tmx_mx_solatcpretransmission_hsvf_v1_11.message_header.size
end

-- Dissect Server Packet
tmx_mx_solatcpretransmission_hsvf_v1_11.server_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Server Frame
  local end_of_payload = buffer:len()

  -- Server Frame: Struct of 4 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_frame = server_frame_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_server_frame):tvb()
      index = tmx_mx_solatcpretransmission_hsvf_v1_11.server_frame.dissect(frame, index, packet, parent, size_of_server_frame)
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

-- Retransmission Request Message
tmx_mx_solatcpretransmission_hsvf_v1_11.retransmission_request_message = {}

-- Size: Retransmission Request Message
tmx_mx_solatcpretransmission_hsvf_v1_11.retransmission_request_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.line.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.start.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.end_.size

-- Display: Retransmission Request Message
tmx_mx_solatcpretransmission_hsvf_v1_11.retransmission_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
tmx_mx_solatcpretransmission_hsvf_v1_11.retransmission_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Line: X
  index, line = tmx_mx_solatcpretransmission_hsvf_v1_11.line.dissect(buffer, index, packet, parent)

  -- Start: N
  index, start = tmx_mx_solatcpretransmission_hsvf_v1_11.start.dissect(buffer, index, packet, parent)

  -- End: N
  index, end_ = tmx_mx_solatcpretransmission_hsvf_v1_11.end_.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
tmx_mx_solatcpretransmission_hsvf_v1_11.retransmission_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.retransmission_request_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.retransmission_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.retransmission_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.retransmission_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Logout Message
tmx_mx_solatcpretransmission_hsvf_v1_11.logout_message = {}

-- Display: Logout Message
tmx_mx_solatcpretransmission_hsvf_v1_11.logout_message.display = function(packet, parent, length)
  return "Logout Message"
end


-- Dissect: Logout Message
tmx_mx_solatcpretransmission_hsvf_v1_11.logout_message.dissect = function(buffer, offset, packet, parent)
  local display = tmx_mx_solatcpretransmission_hsvf_v1_11.logout_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Login Message
tmx_mx_solatcpretransmission_hsvf_v1_11.login_message = {}

-- Size: Login Message
tmx_mx_solatcpretransmission_hsvf_v1_11.login_message.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.user.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.pwd.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.login_timestamp.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.protocol.size

-- Display: Login Message
tmx_mx_solatcpretransmission_hsvf_v1_11.login_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Message
tmx_mx_solatcpretransmission_hsvf_v1_11.login_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User: X
  index, user = tmx_mx_solatcpretransmission_hsvf_v1_11.user.dissect(buffer, index, packet, parent)

  -- Pwd: X
  index, pwd = tmx_mx_solatcpretransmission_hsvf_v1_11.pwd.dissect(buffer, index, packet, parent)

  -- Login Timestamp: N
  index, login_timestamp = tmx_mx_solatcpretransmission_hsvf_v1_11.login_timestamp.dissect(buffer, index, packet, parent)

  -- Protocol: X
  index, protocol = tmx_mx_solatcpretransmission_hsvf_v1_11.protocol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Message
tmx_mx_solatcpretransmission_hsvf_v1_11.login_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.login_message, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.login_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.login_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.login_message.fields(buffer, offset, packet, parent)
  end
end

-- Client Message Body
tmx_mx_solatcpretransmission_hsvf_v1_11.client_message_body = {}

-- Dissect: Client Message Body
tmx_mx_solatcpretransmission_hsvf_v1_11.client_message_body.dissect = function(buffer, offset, packet, parent, client_message_type)
  -- Dissect Login Message
  if client_message_type == "LI" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.login_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Message
  if client_message_type == "LO" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.logout_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request Message
  if client_message_type == "RT" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.retransmission_request_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Message Header
tmx_mx_solatcpretransmission_hsvf_v1_11.client_message_header = {}

-- Size: Client Message Header
tmx_mx_solatcpretransmission_hsvf_v1_11.client_message_header.size =
  tmx_mx_solatcpretransmission_hsvf_v1_11.sequence_number.size + 
  tmx_mx_solatcpretransmission_hsvf_v1_11.client_message_type.size

-- Display: Client Message Header
tmx_mx_solatcpretransmission_hsvf_v1_11.client_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Message Header
tmx_mx_solatcpretransmission_hsvf_v1_11.client_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: N
  index, sequence_number = tmx_mx_solatcpretransmission_hsvf_v1_11.sequence_number.dissect(buffer, index, packet, parent)

  -- Client Message Type: X
  index, client_message_type = tmx_mx_solatcpretransmission_hsvf_v1_11.client_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Message Header
tmx_mx_solatcpretransmission_hsvf_v1_11.client_message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.client_message_header, buffer(offset, 0))
    local index = tmx_mx_solatcpretransmission_hsvf_v1_11.client_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.client_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solatcpretransmission_hsvf_v1_11.client_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Frame
tmx_mx_solatcpretransmission_hsvf_v1_11.client_frame = {}

-- Display: Client Frame
tmx_mx_solatcpretransmission_hsvf_v1_11.client_frame.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Frame
tmx_mx_solatcpretransmission_hsvf_v1_11.client_frame.fields = function(buffer, offset, packet, parent, size_of_client_frame)
  local index = offset

  -- Hsvf Stx: character
  index, hsvf_stx = tmx_mx_solatcpretransmission_hsvf_v1_11.hsvf_stx.dissect(buffer, index, packet, parent)

  -- Client Message Header: Struct of 2 fields
  index, client_message_header = tmx_mx_solatcpretransmission_hsvf_v1_11.client_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Message Type
  local client_message_type = trim_right_spaces(buffer(index - 2, 2):string())

  -- Client Message Body: Runtime Type with 3 branches
  index = tmx_mx_solatcpretransmission_hsvf_v1_11.client_message_body.dissect(buffer, index, packet, parent, client_message_type)

  -- Hsvf Etx: character
  index, hsvf_etx = tmx_mx_solatcpretransmission_hsvf_v1_11.hsvf_etx.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Frame
tmx_mx_solatcpretransmission_hsvf_v1_11.client_frame.dissect = function(buffer, offset, packet, parent, size_of_client_frame)
  local index = offset + size_of_client_frame

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11.fields.client_frame, buffer(offset, 0))
    local current = tmx_mx_solatcpretransmission_hsvf_v1_11.client_frame.fields(buffer, offset, packet, parent, size_of_client_frame)
    parent:set_len(size_of_client_frame)
    local display = tmx_mx_solatcpretransmission_hsvf_v1_11.client_frame.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    tmx_mx_solatcpretransmission_hsvf_v1_11.client_frame.fields(buffer, offset, packet, parent, size_of_client_frame)

    return index
  end
end

-- Remaining Bytes For: Client Frame
local client_frame_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- A message runs to the first terminator byte: scan for it
  local terminator = 3
  local current = 0
  while current < remaining and buffer(index + current, 1):uint() ~= terminator do
    current = current + 1
  end

  -- The terminator is not in the bytes available yet: ask for one more segment
  if current >= remaining then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- The message includes the terminator byte it ends on
  current = current + 1

  return remaining, current
end

-- Client Packet
tmx_mx_solatcpretransmission_hsvf_v1_11.client_packet = {}

-- Verify required size of Tcp packet
tmx_mx_solatcpretransmission_hsvf_v1_11.client_packet.requiredsize = function(buffer)
  return buffer:len() >= tmx_mx_solatcpretransmission_hsvf_v1_11.hsvf_stx.size + tmx_mx_solatcpretransmission_hsvf_v1_11.client_message_header.size
end

-- Dissect Client Packet
tmx_mx_solatcpretransmission_hsvf_v1_11.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Frame
  local end_of_payload = buffer:len()

  -- Client Frame: Struct of 4 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_frame = client_frame_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_client_frame):tvb()
      index = tmx_mx_solatcpretransmission_hsvf_v1_11.client_frame.dissect(frame, index, packet, parent, size_of_client_frame)
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
function omi_tmx_mx_solatcpretransmission_hsvf_v1_11.init()
end

-- Connection roles for Tmx Mx SolaTcpRetransmission Hsvf 1.11: Client is the initiator, Server is the acceptor
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
tmx_mx_solatcpretransmission_hsvf_v1_11.role = function(packet)
  if omi_tmx_mx_solatcpretransmission_hsvf_v1_11.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_tmx_mx_solatcpretransmission_hsvf_v1_11.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_tmx_mx_solatcpretransmission_hsvf_v1_11.prefs.acceptor_port

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

  if omi_tmx_mx_solatcpretransmission_hsvf_v1_11.prefs.swap_sides then
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
tmx_mx_solatcpretransmission_hsvf_v1_11.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Tmx Mx SolaTcpRetransmission Hsvf 1.11
function omi_tmx_mx_solatcpretransmission_hsvf_v1_11.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_tmx_mx_solatcpretransmission_hsvf_v1_11.name

  -- Dissect protocol
  local protocol = parent:add(omi_tmx_mx_solatcpretransmission_hsvf_v1_11, buffer(), omi_tmx_mx_solatcpretransmission_hsvf_v1_11.description, "("..buffer:len().." Bytes)")
  local role = tmx_mx_solatcpretransmission_hsvf_v1_11.role(packet)

  if role == "initiator" then
    return tmx_mx_solatcpretransmission_hsvf_v1_11.client_packet.dissect(buffer, packet, protocol)
  end

  return tmx_mx_solatcpretransmission_hsvf_v1_11.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
tmx_mx_solatcpretransmission_hsvf_v1_11.client_packet.fingerprint = function(buffer)
  if buffer:len() < 12 then
    return false
  end

  local client_message_type = buffer(10, 2):string()

  -- Login Message
  if client_message_type == "LI" then
    return true
  end

  -- Logout Message
  if client_message_type == "LO" then
    return true
  end

  -- Retransmission Request Message
  if client_message_type == "RT" then
    return true
  end

  return false
end

-- Fingerprint of Server Packet: would its message dispatch accept this frame?
tmx_mx_solatcpretransmission_hsvf_v1_11.server_packet.fingerprint = function(buffer)
  if buffer:len() < 12 then
    return false
  end

  local message_type = buffer(10, 2):string()

  -- Login Acknowledgement Message
  if message_type == "KI" then
    return true
  end

  -- Logout Acknowledgement Message
  if message_type == "KO" then
    return true
  end

  -- Retransmission Begin Message
  if message_type == "RB" then
    return true
  end

  -- Retransmission End Message
  if message_type == "RE" then
    return true
  end

  -- Error Message
  if message_type == "ER" then
    return true
  end

  -- Retransmitted Message: carries the application messages, which tell this protocol from others sharing the session framing
  if buffer:len() < 12 then
    return false
  end

  local message_type = buffer(10, 2):string()

  -- Option Trade Message
  if message_type == "C" then
    return true
  end

  -- Future Options Trade Message
  if message_type == "CB" then
    return true
  end

  -- Futures Trade Message
  if message_type == "CF" then
    return true
  end

  -- Strategy Trade Message
  if message_type == "CS" then
    return true
  end

  -- Swap Future Trade Message
  if message_type == "CW" then
    return true
  end

  -- Option Rfq Message
  if message_type == "D" then
    return true
  end

  -- Future Options Rfq Message
  if message_type == "DB" then
    return true
  end

  -- Futures Rfq Message
  if message_type == "DF" then
    return true
  end

  -- Strategy Rfq Message
  if message_type == "DS" then
    return true
  end

  -- Swap Future Rfq Message
  if message_type == "DW" then
    return true
  end

  -- Instrument Schedule Notice Option Message
  if message_type == "E" then
    return true
  end

  -- Instrument Schedule Notice Futures Option Message
  if message_type == "EB" then
    return true
  end

  -- Instrument Schedule Notice Future Message
  if message_type == "EF" then
    return true
  end

  -- Instrument Schedule Notice Strategy Message
  if message_type == "ES" then
    return true
  end

  -- Instrument Schedule Notice Swap Future Message
  if message_type == "EW" then
    return true
  end

  -- Option Quote Message
  if message_type == "F" then
    return true
  end

  -- Future Options Quote Message
  if message_type == "FB" then
    return true
  end

  -- Futures Quote Message
  if message_type == "FF" then
    return true
  end

  -- Strategy Quote Message
  if message_type == "FS" then
    return true
  end

  -- Swap Future Quote Message
  if message_type == "FW" then
    return true
  end

  -- Option Market Depth Message
  if message_type == "H" then
    return true
  end

  -- Future Options Market Depth Message
  if message_type == "HB" then
    return true
  end

  -- Futures Market Depth Message
  if message_type == "HF" then
    return true
  end

  -- Strategy Market Depth Message
  if message_type == "HS" then
    return true
  end

  -- Swap Future Market Depth Message
  if message_type == "HW" then
    return true
  end

  -- Option Trade Cancellation Message
  if message_type == "I" then
    return true
  end

  -- Future Options Trade Cancellation Message
  if message_type == "IB" then
    return true
  end

  -- Futures Trade Cancellation Message
  if message_type == "IF" then
    return true
  end

  -- Strategy Trade Cancellation Message
  if message_type == "IS" then
    return true
  end

  -- Swap Future Trade Cancellation Message
  if message_type == "IW" then
    return true
  end

  -- Option Instrument Keys Message
  if message_type == "J" then
    return true
  end

  -- Future Options Instrument Keys Message
  if message_type == "JB" then
    return true
  end

  -- Underlying Instrument Keys Message
  if message_type == "JE" then
    return true
  end

  -- Futures Instrument Keys Message
  if message_type == "JF" then
    return true
  end

  -- Strategy Instrument Keys Message
  if message_type == "JS" then
    return true
  end

  -- Swap Future Instrument Keys Message
  if message_type == "JW" then
    return true
  end

  -- Option Summary Message
  if message_type == "N" then
    return true
  end

  -- Future Options Summary Message
  if message_type == "NB" then
    return true
  end

  -- Futures Summary Message
  if message_type == "NF" then
    return true
  end

  -- Strategy Summary Message
  if message_type == "NS" then
    return true
  end

  -- Swap Future Summary Message
  if message_type == "NW" then
    return true
  end

  -- Beginning Of Options Summary Message
  if message_type == "Q" then
    return true
  end

  -- Beginning Of Future Options Summary Message
  if message_type == "QB" then
    return true
  end

  -- Beginning Of Futures Summary Message
  if message_type == "QF" then
    return true
  end

  -- Beginning Of Strategy Summary Message
  if message_type == "QS" then
    return true
  end

  -- Swap Future Beginning Of Summary Message
  if message_type == "QW" then
    return true
  end

  -- Option Trade Correction Message
  if message_type == "X" then
    return true
  end

  -- Future Options Trade Correction Message
  if message_type == "XB" then
    return true
  end

  -- Futures Trade Correction Message
  if message_type == "XF" then
    return true
  end

  -- Strategy Trade Correction Message
  if message_type == "XS" then
    return true
  end

  -- Swap Future Trade Correction Message
  if message_type == "XW" then
    return true
  end

  -- Group Status Message
  if message_type == "GR" then
    return true
  end

  -- Group Status Strategies Message
  if message_type == "GS" then
    return true
  end

  -- Bulletins Message
  if message_type == "L" then
    return true
  end

  -- End Of Sales Message
  if message_type == "S" then
    return true
  end

  -- Tick Table Message
  if message_type == "TT" then
    return true
  end

  -- End Of Transmission Message
  if message_type == "U" then
    return true
  end

  -- Circuit Assurance Message
  if message_type == "V" then
    return true
  end

  -- Timebeat Message
  if message_type == "Z" then
    return true
  end


  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Hsvf Stx Field
tmx_mx_solatcpretransmission_hsvf_v1_11.hsvf_stx.client_packet_verify = function(buffer)
  -- Attempt to read field
  local value = buffer(0, 1):int()

  if value == 2 then
    return true
  end

  return false
end

-- Verify Hsvf Stx Field
tmx_mx_solatcpretransmission_hsvf_v1_11.hsvf_stx.server_packet_verify = function(buffer)
  -- Attempt to read field
  local value = buffer(0, 1):int()

  if value == 2 then
    return true
  end

  return false
end

-- Dissector Heuristic for Tmx Mx SolaTcpRetransmission Hsvf 1.11 (Tcp)
local function omi_tmx_mx_solatcpretransmission_hsvf_v1_11_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not tmx_mx_solatcpretransmission_hsvf_v1_11.client_packet.requiredsize(buffer) then return false end

  -- Verify Hsvf Stx
  if not tmx_mx_solatcpretransmission_hsvf_v1_11.hsvf_stx.client_packet_verify(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not tmx_mx_solatcpretransmission_hsvf_v1_11.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_tmx_mx_solatcpretransmission_hsvf_v1_11
  omi_tmx_mx_solatcpretransmission_hsvf_v1_11.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Tmx Mx SolaTcpRetransmission Hsvf 1.11 (Tcp)
local function omi_tmx_mx_solatcpretransmission_hsvf_v1_11_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not tmx_mx_solatcpretransmission_hsvf_v1_11.server_packet.requiredsize(buffer) then return false end

  -- Verify Hsvf Stx
  if not tmx_mx_solatcpretransmission_hsvf_v1_11.hsvf_stx.server_packet_verify(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not tmx_mx_solatcpretransmission_hsvf_v1_11.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_tmx_mx_solatcpretransmission_hsvf_v1_11
  omi_tmx_mx_solatcpretransmission_hsvf_v1_11.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Tmx Mx SolaTcpRetransmission Hsvf 1.11 (Tcp): apply the heuristic of the sender's connection role
local function omi_tmx_mx_solatcpretransmission_hsvf_v1_11_tcp_heuristic(buffer, packet, parent)
  local role = tmx_mx_solatcpretransmission_hsvf_v1_11.role(packet)
  local initiator = omi_tmx_mx_solatcpretransmission_hsvf_v1_11_tcp_initiator_heuristic
  local acceptor = omi_tmx_mx_solatcpretransmission_hsvf_v1_11_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  tmx_mx_solatcpretransmission_hsvf_v1_11.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  tmx_mx_solatcpretransmission_hsvf_v1_11.swap(packet)

  return false
end

-- Register Heuristics for Tmx Mx SolaTcpRetransmission Hsvf 1.11
omi_tmx_mx_solatcpretransmission_hsvf_v1_11:register_heuristic("tcp", omi_tmx_mx_solatcpretransmission_hsvf_v1_11_tcp_heuristic)

-- Register Tmx Mx SolaTcpRetransmission Hsvf 1.11 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_tmx_mx_solatcpretransmission_hsvf_v1_11)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: TMX Group
--   Version: 1.11
--   Date: Wednesday, January 23, 2019
--   Specification: MX SOLA HSVF Multicast Specifications Guide (1.11).pdf
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
