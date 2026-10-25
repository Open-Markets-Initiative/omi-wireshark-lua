-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax OnyxFutures DepthOfMarket Mach 1.3.a Protocol
local omi_miax_onyxfutures_depthofmarket_mach_v1_3_a = Proto("Omi.Miax.OnyxFutures.DepthOfMarket.Mach.v1.3.a", "Miax OnyxFutures DepthOfMarket Mach 1.3.a")

-- Protocol table
local miax_onyxfutures_depthofmarket_mach_v1_3_a = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax OnyxFutures DepthOfMarket Mach 1.3.a Fields
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.aggressor_side = ProtoField.new("Aggressor Side", "miax.onyxfutures.depthofmarket.mach.v1.3.a.aggressorside", ftypes.STRING, nil, nil, nil, "Side of the trade that was the Aggressor:")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.anticipated_opening_price = ProtoField.new("Anticipated Opening Price", "miax.onyxfutures.depthofmarket.mach.v1.3.a.anticipatedopeningprice", ftypes.DOUBLE)
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.application_message = ProtoField.new("Application Message", "miax.onyxfutures.depthofmarket.mach.v1.3.a.applicationmessage", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.buy_order_id = ProtoField.new("Buy Order Id", "miax.onyxfutures.depthofmarket.mach.v1.3.a.buyorderid", ftypes.UINT64, nil, nil, nil, "Provided in the Add Order message")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.complex_trade_id = ProtoField.new("Complex Trade Id", "miax.onyxfutures.depthofmarket.mach.v1.3.a.complextradeid", ftypes.UINT64, nil, nil, nil, "For Trade Type")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.contract_date = ProtoField.new("Contract Date", "miax.onyxfutures.depthofmarket.mach.v1.3.a.contractdate", ftypes.UINT32, nil, nil, nil, "The Contract Date will be assigned to each Simple Instrument")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.correction_number = ProtoField.new("Correction Number", "miax.onyxfutures.depthofmarket.mach.v1.3.a.correctionnumber", ftypes.UINT8, nil, nil, nil, "Trade correction number")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.currency = ProtoField.new("Currency", "miax.onyxfutures.depthofmarket.mach.v1.3.a.currency", ftypes.STRING, nil, nil, nil, "The currency in which all Futures Instruments of the Futures Product will trade")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.deprecated_instrument_leg = ProtoField.new("Deprecated Instrument Leg", "miax.onyxfutures.depthofmarket.mach.v1.3.a.deprecatedinstrumentleg", ftypes.STRING, nil, nil, nil, "Complex Strategy Number of Legs")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.do_m_version = ProtoField.new("Do M Version", "miax.onyxfutures.depthofmarket.mach.v1.3.a.domversion", ftypes.STRING, nil, nil, nil, "e.g.: DoM1.0")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.exchange = ProtoField.new("Exchange", "miax.onyxfutures.depthofmarket.mach.v1.3.a.exchange", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.first_delivery_date = ProtoField.new("First Delivery Date", "miax.onyxfutures.depthofmarket.mach.v1.3.a.firstdeliverydate", ftypes.UINT16, nil, nil, nil, "First Delivery Date will be the first business day of the month of the Maturity Date of the Simple Instrument")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.first_notice_date = ProtoField.new("First Notice Date", "miax.onyxfutures.depthofmarket.mach.v1.3.a.firstnoticedate", ftypes.UINT16, nil, nil, nil, "Last business date of the month preceding the month of the Maturity Date of the Simple Instrument")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.first_trade_date = ProtoField.new("First Trade Date", "miax.onyxfutures.depthofmarket.mach.v1.3.a.firsttradedate", ftypes.UINT16, nil, nil, nil, "First Trade Date will be the Trading Date that the Simple Instrument is initially made available for Trading on MIAX Futures Onyx")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.high_limit_price = ProtoField.new("High Limit Price", "miax.onyxfutures.depthofmarket.mach.v1.3.a.highlimitprice", ftypes.DOUBLE, nil, nil, nil, "The Upper Band of the Daily Trading Limit of a Futures Product")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.instrument_id = ProtoField.new("Instrument Id", "miax.onyxfutures.depthofmarket.mach.v1.3.a.instrumentid", ftypes.UINT32, nil, nil, nil, "Unique numeric ID assigned by MIAX Futures Onyx for a Simple instrument and is permanent for the life of a Simple instrument")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.instrument_id_formerly_known_as_strategy_id = ProtoField.new("Instrument Id Formerly Known As Strategy Id", "miax.onyxfutures.depthofmarket.mach.v1.3.a.instrumentidformerlyknownasstrategyid", ftypes.UINT32, nil, nil, nil, "Unique ID assigned by MIAX Futures Onyx for a Complex instrument and is permanent for the life of an instrument")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.instrument_id_source = ProtoField.new("Instrument Id Source", "miax.onyxfutures.depthofmarket.mach.v1.3.a.instrumentidsource", ftypes.STRING, nil, nil, nil, "Indicates whether the Instrument ID has been assigned by the exchange or from an external industry source")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.instrument_leg = ProtoField.new("Instrument Leg", "miax.onyxfutures.depthofmarket.mach.v1.3.a.instrumentleg", ftypes.STRING, nil, nil, nil, "Complex Strategy Number of Legs")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.instrument_listing_status = ProtoField.new("Instrument Listing Status", "miax.onyxfutures.depthofmarket.mach.v1.3.a.instrumentlistingstatus", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.instrument_type = ProtoField.new("Instrument Type", "miax.onyxfutures.depthofmarket.mach.v1.3.a.instrumenttype", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.last_delivery_date = ProtoField.new("Last Delivery Date", "miax.onyxfutures.depthofmarket.mach.v1.3.a.lastdeliverydate", ftypes.UINT16, nil, nil, nil, "Last Delivery Date will be the seventh business day following the Last Trading Date of the Simple Instrument")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.last_notice_date = ProtoField.new("Last Notice Date", "miax.onyxfutures.depthofmarket.mach.v1.3.a.lastnoticedate", ftypes.UINT16, nil, nil, nil, "Last Notice Date will be the business day preceding the Last Delivery Date of the Simple Instrument")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.last_trade_date = ProtoField.new("Last Trade Date", "miax.onyxfutures.depthofmarket.mach.v1.3.a.lasttradedate", ftypes.UINT16, nil, nil, nil, "Last Trade Date will be the Maturity Date of the Simple Instrument")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.leg_ratio_and_side = ProtoField.new("Leg Ratio And Side", "miax.onyxfutures.depthofmarket.mach.v1.3.a.legratioandside", ftypes.INT32, nil, nil, nil, "Leg ratio for the specified instrument Positive indicates Buy Negative indicates Sell")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.low_limit_price = ProtoField.new("Low Limit Price", "miax.onyxfutures.depthofmarket.mach.v1.3.a.lowlimitprice", ftypes.DOUBLE, nil, nil, nil, "The Lower Band of the Daily Trading Limit of a Futures Product")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.market_state = ProtoField.new("Market State", "miax.onyxfutures.depthofmarket.mach.v1.3.a.marketstate", ftypes.UINT8, nil, nil, nil, "1 - Pre-Opening 2 - Extended 1 Trading Session 3 - Regular Trading Session 4 - Extended 2 Trading Session")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.match_algorithm = ProtoField.new("Match Algorithm", "miax.onyxfutures.depthofmarket.mach.v1.3.a.matchalgorithm", ftypes.STRING, nil, nil, nil, "The allocation model used by the MIAX Futures Onyx Trading Platform for the Product")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.maturity_date = ProtoField.new("Maturity Date", "miax.onyxfutures.depthofmarket.mach.v1.3.a.maturitydate", ftypes.UINT16, nil, nil, nil, "Maturity Date is the expiration date of a Simple Instrument")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.maximum_size = ProtoField.new("Maximum Size", "miax.onyxfutures.depthofmarket.mach.v1.3.a.maximumsize", ftypes.UINT32, nil, nil, nil, "Maximum Order Size")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.message_type = ProtoField.new("Message Type", "miax.onyxfutures.depthofmarket.mach.v1.3.a.messagetype", ftypes.UINT8, nil, nil, nil, "Code identifying this message type")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.minimum_size = ProtoField.new("Minimum Size", "miax.onyxfutures.depthofmarket.mach.v1.3.a.minimumsize", ftypes.UINT32, nil, nil, nil, "Minimum Order Size")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.number_of_legs = ProtoField.new("Number Of Legs", "miax.onyxfutures.depthofmarket.mach.v1.3.a.numberoflegs", ftypes.UINT8, nil, nil, nil, "Number of strategy legs")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.open_interest_quantity = ProtoField.new("Open Interest Quantity", "miax.onyxfutures.depthofmarket.mach.v1.3.a.openinterestquantity", ftypes.UINT32, nil, nil, nil, "The amount of aggregate open contracts in a Simple Instrument")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.opening_match_quantity = ProtoField.new("Opening Match Quantity", "miax.onyxfutures.depthofmarket.mach.v1.3.a.openingmatchquantity", ftypes.UINT32, nil, nil, nil, "Opening Matched Quantity")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.option_expiration_type = ProtoField.new("Option Expiration Type", "miax.onyxfutures.depthofmarket.mach.v1.3.a.optionexpirationtype", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.option_strike_currency = ProtoField.new("Option Strike Currency", "miax.onyxfutures.depthofmarket.mach.v1.3.a.optionstrikecurrency", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.option_strike_price = ProtoField.new("Option Strike Price", "miax.onyxfutures.depthofmarket.mach.v1.3.a.optionstrikeprice", ftypes.DOUBLE, nil, nil, nil, "NULL when Instrument Type not equal to")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.option_type = ProtoField.new("Option Type", "miax.onyxfutures.depthofmarket.mach.v1.3.a.optiontype", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.order_id = ProtoField.new("Order Id", "miax.onyxfutures.depthofmarket.mach.v1.3.a.orderid", ftypes.UINT64, nil, nil, nil, "Matching engine assigned Order ID")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.order_side = ProtoField.new("Order Side", "miax.onyxfutures.depthofmarket.mach.v1.3.a.orderside", ftypes.STRING, nil, nil, nil, "Side of order")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.order_type = ProtoField.new("Order Type", "miax.onyxfutures.depthofmarket.mach.v1.3.a.ordertype", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.packet_length = ProtoField.new("Packet Length", "miax.onyxfutures.depthofmarket.mach.v1.3.a.packetlength", ftypes.UINT16, nil, nil, nil, "Length of the packet. This includes the header and application data")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.packet_type = ProtoField.new("Packet Type", "miax.onyxfutures.depthofmarket.mach.v1.3.a.packettype", ftypes.UINT8, nil, nil, nil, "protocol packet type")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.price = ProtoField.new("Price", "miax.onyxfutures.depthofmarket.mach.v1.3.a.price", ftypes.DOUBLE, nil, nil, nil, "Order price")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.product_group_code_alphanumeric_13 = ProtoField.new("Product Group Code Alphanumeric 13", "miax.onyxfutures.depthofmarket.mach.v1.3.a.productgroupcodealphanumeric13", ftypes.STRING, nil, nil, nil, "Product Group Code: e.g.: MWE for Hard Red Spring Wheat Standard Deliverable (5000 Bushels) Cross Product Spread example: XXX-YYY")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.product_group_code_alphanumeric_6 = ProtoField.new("Product Group Code Alphanumeric 6", "miax.onyxfutures.depthofmarket.mach.v1.3.a.productgroupcodealphanumeric6", ftypes.STRING, nil, nil, nil, "Product Group Code: e.g.: MWE for Hard Red Spring Wheat Standard Deliverable (5000 Bushels)")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.reserved_16 = ProtoField.new("Reserved 16", "miax.onyxfutures.depthofmarket.mach.v1.3.a.reserved16", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.reserved_3 = ProtoField.new("Reserved 3", "miax.onyxfutures.depthofmarket.mach.v1.3.a.reserved3", ftypes.BYTES, nil, nil, nil, "Currently reserved for future use")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.reserved_32 = ProtoField.new("Reserved 32", "miax.onyxfutures.depthofmarket.mach.v1.3.a.reserved32", ftypes.BYTES, nil, nil, nil, "Currently reserved for future use")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.reserved_4 = ProtoField.new("Reserved 4", "miax.onyxfutures.depthofmarket.mach.v1.3.a.reserved4", ftypes.BYTES, nil, nil, nil, "Previously was Maturity Month-Year field; replaced by the Maturity Date field below")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.reserved_6 = ProtoField.new("Reserved 6", "miax.onyxfutures.depthofmarket.mach.v1.3.a.reserved6", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.reserved_64 = ProtoField.new("Reserved 64", "miax.onyxfutures.depthofmarket.mach.v1.3.a.reserved64", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.sell_order_id = ProtoField.new("Sell Order Id", "miax.onyxfutures.depthofmarket.mach.v1.3.a.sellorderid", ftypes.UINT64, nil, nil, nil, "Provided in the Add Order message")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.sequence_number = ProtoField.new("Sequence Number", "miax.onyxfutures.depthofmarket.mach.v1.3.a.sequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of this data packet")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.session_id = ProtoField.new("Session Id", "miax.onyxfutures.depthofmarket.mach.v1.3.a.sessionid", ftypes.UINT8, nil, nil, nil, "Current trading session identifier")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.session_number = ProtoField.new("Session Number", "miax.onyxfutures.depthofmarket.mach.v1.3.a.sessionnumber", ftypes.UINT8, nil, nil, nil, "The Session this packet was generated from")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.settlement_currency = ProtoField.new("Settlement Currency", "miax.onyxfutures.depthofmarket.mach.v1.3.a.settlementcurrency", ftypes.STRING, nil, nil, nil, "The Currency in which the Product settles")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.settlement_price = ProtoField.new("Settlement Price", "miax.onyxfutures.depthofmarket.mach.v1.3.a.settlementprice", ftypes.DOUBLE, nil, nil, nil, "The previous day")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.settlement_price_type = ProtoField.new("Settlement Price Type", "miax.onyxfutures.depthofmarket.mach.v1.3.a.settlementpricetype", ftypes.STRING, nil, nil, nil, "Daily or Final Settlement Price Indicator")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.settlement_price_type_calc_method = ProtoField.new("Settlement Price Type Calc Method", "miax.onyxfutures.depthofmarket.mach.v1.3.a.settlementpricetypecalcmethod", ftypes.STRING, nil, nil, nil, "Actual or Theoretical Settlement Price Indicator")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.size = ProtoField.new("Size", "miax.onyxfutures.depthofmarket.mach.v1.3.a.size", ftypes.UINT32, nil, nil, nil, "Open order size")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.size_flags = ProtoField.new("Size Flags", "miax.onyxfutures.depthofmarket.mach.v1.3.a.sizeflags", ftypes.UINT32, nil, nil, nil, "Open order size after this modify")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.spread_type = ProtoField.new("Spread Type", "miax.onyxfutures.depthofmarket.mach.v1.3.a.spreadtype", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.system_status = ProtoField.new("System Status", "miax.onyxfutures.depthofmarket.mach.v1.3.a.systemstatus", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.tick = ProtoField.new("Tick", "miax.onyxfutures.depthofmarket.mach.v1.3.a.tick", ftypes.DOUBLE, nil, nil, nil, "Order Entry Price Tick of the Product")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.timestamp = ProtoField.new("Timestamp", "miax.onyxfutures.depthofmarket.mach.v1.3.a.timestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Matching Engine time")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.timestamp_utc = ProtoField.new("Timestamp", "miax.onyxfutures.depthofmarket.mach.v1.3.a.timestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Matching Engine time")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.total_volume = ProtoField.new("Total Volume", "miax.onyxfutures.depthofmarket.mach.v1.3.a.totalvolume", ftypes.UINT32, nil, nil, nil, "The aggregate amount of volume that has traded from the prior Trading Day")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.trade_date = ProtoField.new("Trade Date", "miax.onyxfutures.depthofmarket.mach.v1.3.a.tradedate", ftypes.UINT16)
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.trade_id = ProtoField.new("Trade Id", "miax.onyxfutures.depthofmarket.mach.v1.3.a.tradeid", ftypes.UINT64, nil, nil, nil, "Unique ID assigned by the Matching Engine")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.trade_type = ProtoField.new("Trade Type", "miax.onyxfutures.depthofmarket.mach.v1.3.a.tradetype", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.trading_collar_variation = ProtoField.new("Trading Collar Variation", "miax.onyxfutures.depthofmarket.mach.v1.3.a.tradingcollarvariation", ftypes.DOUBLE, nil, nil, nil, "The Dollar Value or Percentage Value used in the calculation of the Trading Collar")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.trading_collar_variation_type = ProtoField.new("Trading Collar Variation Type", "miax.onyxfutures.depthofmarket.mach.v1.3.a.tradingcollarvariationtype", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.trading_status = ProtoField.new("Trading Status", "miax.onyxfutures.depthofmarket.mach.v1.3.a.tradingstatus", ftypes.UINT8, nil, nil, nil, "1 - Pre-Open 2 - Opening Freeze 3 - Trading 4 - Halt 5 - Operational Halt 6 - Closed")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.underlying_asset_alphanumeric_4 = ProtoField.new("Underlying Asset Alphanumeric 4", "miax.onyxfutures.depthofmarket.mach.v1.3.a.underlyingassetalphanumeric4", ftypes.STRING, nil, nil, nil, "Underlying Asset Code")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.underlying_asset_alphanumeric_9 = ProtoField.new("Underlying Asset Alphanumeric 9", "miax.onyxfutures.depthofmarket.mach.v1.3.a.underlyingassetalphanumeric9", ftypes.STRING, nil, nil, nil, "Underlying Asset Code")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.underlying_asset_type = ProtoField.new("Underlying Asset Type", "miax.onyxfutures.depthofmarket.mach.v1.3.a.underlyingassettype", ftypes.STRING, nil, nil, nil, "Underlying Asset Type of this instrument:")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.underlying_future_instrument_id = ProtoField.new("Underlying Future Instrument Id", "miax.onyxfutures.depthofmarket.mach.v1.3.a.underlyingfutureinstrumentid", ftypes.UINT32, nil, nil, nil, "The Instrument ID of the Futures Instrument that is the Underlying Asset of the Options on Futures , TAS, or BTIC, Instrument Value of 0 when Instrument Type is")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.unit_of_measure = ProtoField.new("Unit Of Measure", "miax.onyxfutures.depthofmarket.mach.v1.3.a.unitofmeasure", ftypes.STRING, nil, nil, nil, "Individual unit of the Deliverable of the Underlying Asset associated with the Futures Contract")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.unit_of_measure_quantity = ProtoField.new("Unit Of Measure Quantity", "miax.onyxfutures.depthofmarket.mach.v1.3.a.unitofmeasurequantity", ftypes.UINT32, nil, nil, nil, "The quantity of the Underlying Asset that is required for the Deliverable associated with the Futures Contract")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.valuation_date = ProtoField.new("Valuation Date", "miax.onyxfutures.depthofmarket.mach.v1.3.a.valuationdate", ftypes.UINT16, nil, nil, nil, "The date that the Final Settlement Price will be calculated for purposes of Simple Instrument expiration")

-- Miax OnyxFutures DepthOfMarket Mach 1.3.a Framing
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.mach_message = ProtoField.new("Mach Message", "miax.onyxfutures.depthofmarket.mach.v1.3.a.machmessage", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.mach_packet_header = ProtoField.new("Mach Packet Header", "miax.onyxfutures.depthofmarket.mach.v1.3.a.machpacketheader", ftypes.STRING, nil, nil, nil, "Mach packet header (12 bytes)")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.packet = ProtoField.new("Packet", "miax.onyxfutures.depthofmarket.mach.v1.3.a.packet", ftypes.STRING)

-- Miax OnyxFutures DepthOfMarket 1.3.a Application Messages
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.add_order_message = ProtoField.new("Add Order Message", "miax.onyxfutures.depthofmarket.mach.v1.3.a.addordermessage", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.anticipated_opening_price_message = ProtoField.new("Anticipated Opening Price Message", "miax.onyxfutures.depthofmarket.mach.v1.3.a.anticipatedopeningpricemessage", ftypes.STRING, nil, nil, nil, "Anticipated Opening Price")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.complex_instrument_definition_deprecated_message = ProtoField.new("Complex Instrument Definition Deprecated Message", "miax.onyxfutures.depthofmarket.mach.v1.3.a.complexinstrumentdefinitiondeprecatedmessage", ftypes.STRING, nil, nil, nil, "Complex Instrument Definition (deprecated)")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.complex_instrument_definition_message = ProtoField.new("Complex Instrument Definition Message", "miax.onyxfutures.depthofmarket.mach.v1.3.a.complexinstrumentdefinitionmessage", ftypes.STRING, nil, nil, nil, "Complex Instrument Definition")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.delete_order_message = ProtoField.new("Delete Order Message", "miax.onyxfutures.depthofmarket.mach.v1.3.a.deleteordermessage", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.instrument_clear_message = ProtoField.new("Instrument Clear Message", "miax.onyxfutures.depthofmarket.mach.v1.3.a.instrumentclearmessage", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.instrument_trading_status_notification_message = ProtoField.new("Instrument Trading Status Notification Message", "miax.onyxfutures.depthofmarket.mach.v1.3.a.instrumenttradingstatusnotificationmessage", ftypes.STRING, nil, nil, nil, "Instrument Trading Status Notification")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.modify_order_message = ProtoField.new("Modify Order Message", "miax.onyxfutures.depthofmarket.mach.v1.3.a.modifyordermessage", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.open_interest_update_message = ProtoField.new("Open Interest Update Message", "miax.onyxfutures.depthofmarket.mach.v1.3.a.openinterestupdatemessage", ftypes.STRING, nil, nil, nil, "Open Interest Update")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.order_execution_message = ProtoField.new("Order Execution Message", "miax.onyxfutures.depthofmarket.mach.v1.3.a.orderexecutionmessage", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.settlement_price_update_message = ProtoField.new("Settlement Price Update Message", "miax.onyxfutures.depthofmarket.mach.v1.3.a.settlementpriceupdatemessage", ftypes.STRING, nil, nil, nil, "Settlement Price Update")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.simple_instrument_definition_message = ProtoField.new("Simple Instrument Definition Message", "miax.onyxfutures.depthofmarket.mach.v1.3.a.simpleinstrumentdefinitionmessage", ftypes.STRING, nil, nil, nil, "Simple Instrument Definition")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.system_state_message = ProtoField.new("System State Message", "miax.onyxfutures.depthofmarket.mach.v1.3.a.systemstatemessage", ftypes.STRING, nil, nil, nil, "System State")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.total_volume_update_message = ProtoField.new("Total Volume Update Message", "miax.onyxfutures.depthofmarket.mach.v1.3.a.totalvolumeupdatemessage", ftypes.STRING, nil, nil, nil, "Total Volume Update")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "miax.onyxfutures.depthofmarket.mach.v1.3.a.tradecancelmessage", ftypes.STRING)

-- Miax OnyxFutures DepthOfMarket Mach 1.3.a Generated Fields
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.deprecated_instrument_leg_index = ProtoField.new("Deprecated Instrument Leg Index", "miax.onyxfutures.depthofmarket.mach.v1.3.a.deprecatedinstrumentlegindex", ftypes.UINT16)
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.instrument_leg_index = ProtoField.new("Instrument Leg Index", "miax.onyxfutures.depthofmarket.mach.v1.3.a.instrumentlegindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Miax OnyxFutures DepthOfMarket Mach 1.3.a Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
miax_onyxfutures_depthofmarket_mach_v1_3_a.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Miax OnyxFutures DepthOfMarket Mach 1.3.a Element Dissection Options
show.application_messages = true
show.structs = true
show.repeating_groups = true
show.headers = true
show.indexes = true

-- Register Miax OnyxFutures DepthOfMarket Mach 1.3.a Show Options
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.prefs.show_application_messages then
    show.application_messages = omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.prefs.show_application_messages
  end
  if show.headers ~= omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.prefs.show_headers then
    show.headers = omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.prefs.show_headers
  end
  if show.repeating_groups ~= omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.prefs.show_repeating_groups then
    show.repeating_groups = omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.prefs.show_repeating_groups
  end
  if show.structs ~= omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.prefs.show_structs then
    show.structs = omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.prefs.show_structs
  end
  if show.indexes ~= omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.prefs.show_indexes then
    show.indexes = omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.prefs.show_indexes
  end
  if miax_onyxfutures_depthofmarket_mach_v1_3_a.absolute_time_base ~= omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.prefs.absolute_time_base then
    miax_onyxfutures_depthofmarket_mach_v1_3_a.absolute_time_base = omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.prefs.absolute_time_base
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
-- Miax OnyxFutures DepthOfMarket Mach 1.3.a Fields
-----------------------------------------------------------------------

-- Aggressor Side
miax_onyxfutures_depthofmarket_mach_v1_3_a.aggressor_side = {}

-- Size: Aggressor Side
miax_onyxfutures_depthofmarket_mach_v1_3_a.aggressor_side.size = 1

-- Display: Aggressor Side
miax_onyxfutures_depthofmarket_mach_v1_3_a.aggressor_side.labels = {
  ["B"] = "Aggressor Side: Buy (B)",
  ["S"] = "Aggressor Side: Sell (S)",
  ["N"] = "Aggressor Side: Not (N)",
}

miax_onyxfutures_depthofmarket_mach_v1_3_a.aggressor_side.display = function(value)
  return miax_onyxfutures_depthofmarket_mach_v1_3_a.aggressor_side.labels[value] or "Aggressor Side: Unknown("..value..")"
end

-- Dissect: Aggressor Side
miax_onyxfutures_depthofmarket_mach_v1_3_a.aggressor_side.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.aggressor_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.aggressor_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.aggressor_side, range, value, display)

  return offset + length, value
end

-- Anticipated Opening Price
miax_onyxfutures_depthofmarket_mach_v1_3_a.anticipated_opening_price = {}

-- Size: Anticipated Opening Price
miax_onyxfutures_depthofmarket_mach_v1_3_a.anticipated_opening_price.size = 8

-- Display: Anticipated Opening Price
miax_onyxfutures_depthofmarket_mach_v1_3_a.anticipated_opening_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xA763FFFF, 0x0DE0B6B3) then
    return "Anticipated Opening Price: No Value"
  end

  return "Anticipated Opening Price: "..value
end

-- Translate: Anticipated Opening Price
miax_onyxfutures_depthofmarket_mach_v1_3_a.anticipated_opening_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xA763FFFF, 0x0DE0B6B3) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Anticipated Opening Price
miax_onyxfutures_depthofmarket_mach_v1_3_a.anticipated_opening_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.anticipated_opening_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_depthofmarket_mach_v1_3_a.anticipated_opening_price.translate(raw)
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.anticipated_opening_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.anticipated_opening_price, range, value, display)

  return offset + length, value
end

-- Buy Order Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.buy_order_id = {}

-- Size: Buy Order Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.buy_order_id.size = 8

-- Display: Buy Order Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.buy_order_id.display = function(value)
  return "Buy Order Id: "..value
end

-- Dissect: Buy Order Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.buy_order_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.buy_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.buy_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.buy_order_id, range, value, display)

  return offset + length, value
end

-- Complex Trade Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.complex_trade_id = {}

-- Size: Complex Trade Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.complex_trade_id.size = 8

-- Display: Complex Trade Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.complex_trade_id.display = function(value)
  return "Complex Trade Id: "..value
end

-- Dissect: Complex Trade Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.complex_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.complex_trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.complex_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.complex_trade_id, range, value, display)

  return offset + length, value
end

-- Contract Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.contract_date = {}

-- Size: Contract Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.contract_date.size = 4

-- Display: Contract Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.contract_date.display = function(value)
  return "Contract Date: "..value
end

-- Dissect: Contract Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.contract_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.contract_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.contract_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.contract_date, range, value, display)

  return offset + length, value
end

-- Correction Number
miax_onyxfutures_depthofmarket_mach_v1_3_a.correction_number = {}

-- Size: Correction Number
miax_onyxfutures_depthofmarket_mach_v1_3_a.correction_number.size = 1

-- Display: Correction Number
miax_onyxfutures_depthofmarket_mach_v1_3_a.correction_number.display = function(value)
  return "Correction Number: "..value
end

-- Dissect: Correction Number
miax_onyxfutures_depthofmarket_mach_v1_3_a.correction_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.correction_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.correction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.correction_number, range, value, display)

  return offset + length, value
end

-- Currency
miax_onyxfutures_depthofmarket_mach_v1_3_a.currency = {}

-- Size: Currency
miax_onyxfutures_depthofmarket_mach_v1_3_a.currency.size = 1

-- Display: Currency
miax_onyxfutures_depthofmarket_mach_v1_3_a.currency.labels = {
  ["U"] = "Currency: Usd (U)",
}

miax_onyxfutures_depthofmarket_mach_v1_3_a.currency.display = function(value)
  return miax_onyxfutures_depthofmarket_mach_v1_3_a.currency.labels[value] or "Currency: Unknown("..value..")"
end

-- Dissect: Currency
miax_onyxfutures_depthofmarket_mach_v1_3_a.currency.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.currency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.currency, range, value, display)

  return offset + length, value
end

-- Do M Version
miax_onyxfutures_depthofmarket_mach_v1_3_a.do_m_version = {}

-- Size: Do M Version
miax_onyxfutures_depthofmarket_mach_v1_3_a.do_m_version.size = 8

-- Display: Do M Version
miax_onyxfutures_depthofmarket_mach_v1_3_a.do_m_version.display = function(value)
  return "Do M Version: "..value
end

-- Dissect: Do M Version
miax_onyxfutures_depthofmarket_mach_v1_3_a.do_m_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.do_m_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.do_m_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.do_m_version, range, value, display)

  return offset + length, value
end

-- Exchange
miax_onyxfutures_depthofmarket_mach_v1_3_a.exchange = {}

-- Size: Exchange
miax_onyxfutures_depthofmarket_mach_v1_3_a.exchange.size = 4

-- Display: Exchange
miax_onyxfutures_depthofmarket_mach_v1_3_a.exchange.display = function(value)
  return "Exchange: "..value
end

-- Dissect: Exchange
miax_onyxfutures_depthofmarket_mach_v1_3_a.exchange.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.exchange.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.exchange.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.exchange, range, value, display)

  return offset + length, value
end

-- First Delivery Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.first_delivery_date = {}

-- Size: First Delivery Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.first_delivery_date.size = 2

-- Display: First Delivery Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.first_delivery_date.display = function(value)
  return "First Delivery Date: "..value
end

-- Dissect: First Delivery Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.first_delivery_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.first_delivery_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.first_delivery_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.first_delivery_date, range, value, display)

  return offset + length, value
end

-- First Notice Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.first_notice_date = {}

-- Size: First Notice Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.first_notice_date.size = 2

-- Display: First Notice Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.first_notice_date.display = function(value)
  return "First Notice Date: "..value
end

-- Dissect: First Notice Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.first_notice_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.first_notice_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.first_notice_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.first_notice_date, range, value, display)

  return offset + length, value
end

-- First Trade Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.first_trade_date = {}

-- Size: First Trade Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.first_trade_date.size = 2

-- Display: First Trade Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.first_trade_date.display = function(value)
  return "First Trade Date: "..value
end

-- Dissect: First Trade Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.first_trade_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.first_trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.first_trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.first_trade_date, range, value, display)

  return offset + length, value
end

-- High Limit Price
miax_onyxfutures_depthofmarket_mach_v1_3_a.high_limit_price = {}

-- Size: High Limit Price
miax_onyxfutures_depthofmarket_mach_v1_3_a.high_limit_price.size = 8

-- Display: High Limit Price
miax_onyxfutures_depthofmarket_mach_v1_3_a.high_limit_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xA763FFFF, 0x0DE0B6B3) then
    return "High Limit Price: No Value"
  end

  return "High Limit Price: "..value
end

-- Translate: High Limit Price
miax_onyxfutures_depthofmarket_mach_v1_3_a.high_limit_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xA763FFFF, 0x0DE0B6B3) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: High Limit Price
miax_onyxfutures_depthofmarket_mach_v1_3_a.high_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.high_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_depthofmarket_mach_v1_3_a.high_limit_price.translate(raw)
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.high_limit_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.high_limit_price, range, value, display)

  return offset + length, value
end

-- Instrument Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id = {}

-- Size: Instrument Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.size = 4

-- Display: Instrument Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Instrument Id Formerly Known As Strategy Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id_formerly_known_as_strategy_id = {}

-- Size: Instrument Id Formerly Known As Strategy Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id_formerly_known_as_strategy_id.size = 4

-- Display: Instrument Id Formerly Known As Strategy Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id_formerly_known_as_strategy_id.display = function(value)
  return "Instrument Id Formerly Known As Strategy Id: "..value
end

-- Dissect: Instrument Id Formerly Known As Strategy Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id_formerly_known_as_strategy_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id_formerly_known_as_strategy_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id_formerly_known_as_strategy_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.instrument_id_formerly_known_as_strategy_id, range, value, display)

  return offset + length, value
end

-- Instrument Id Source
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id_source = {}

-- Size: Instrument Id Source
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id_source.size = 1

-- Display: Instrument Id Source
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id_source.labels = {
  ["E"] = "Instrument Id Source: Exchange (E)",
}

miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id_source.display = function(value)
  return miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id_source.labels[value] or "Instrument Id Source: Unknown("..value..")"
end

-- Dissect: Instrument Id Source
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id_source.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id_source.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.instrument_id_source, range, value, display)

  return offset + length, value
end

-- Instrument Listing Status
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_listing_status = {}

-- Size: Instrument Listing Status
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_listing_status.size = 1

-- Display: Instrument Listing Status
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_listing_status.labels = {
  ["A"] = "Instrument Listing Status: Active (A)",
  ["I"] = "Instrument Listing Status: Inactive (I)",
}

miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_listing_status.display = function(value)
  return miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_listing_status.labels[value] or "Instrument Listing Status: Unknown("..value..")"
end

-- Dissect: Instrument Listing Status
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_listing_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_listing_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_listing_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.instrument_listing_status, range, value, display)

  return offset + length, value
end

-- Instrument Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_type = {}

-- Size: Instrument Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_type.size = 1

-- Display: Instrument Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_type.labels = {
  ["F"] = "Instrument Type: Futures (F)",
  ["O"] = "Instrument Type: Options On (O)",
  ["T"] = "Instrument Type: Trade At (T)",
  ["B"] = "Instrument Type: Basis (B)",
}

miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_type.display = function(value)
  return miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_type.labels[value] or "Instrument Type: Unknown("..value..")"
end

-- Dissect: Instrument Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Last Delivery Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.last_delivery_date = {}

-- Size: Last Delivery Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.last_delivery_date.size = 2

-- Display: Last Delivery Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.last_delivery_date.display = function(value)
  return "Last Delivery Date: "..value
end

-- Dissect: Last Delivery Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.last_delivery_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.last_delivery_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.last_delivery_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.last_delivery_date, range, value, display)

  return offset + length, value
end

-- Last Notice Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.last_notice_date = {}

-- Size: Last Notice Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.last_notice_date.size = 2

-- Display: Last Notice Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.last_notice_date.display = function(value)
  return "Last Notice Date: "..value
end

-- Dissect: Last Notice Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.last_notice_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.last_notice_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.last_notice_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.last_notice_date, range, value, display)

  return offset + length, value
end

-- Last Trade Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.last_trade_date = {}

-- Size: Last Trade Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.last_trade_date.size = 2

-- Display: Last Trade Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.last_trade_date.display = function(value)
  return "Last Trade Date: "..value
end

-- Dissect: Last Trade Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.last_trade_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.last_trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.last_trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.last_trade_date, range, value, display)

  return offset + length, value
end

-- Leg Ratio And Side
miax_onyxfutures_depthofmarket_mach_v1_3_a.leg_ratio_and_side = {}

-- Size: Leg Ratio And Side
miax_onyxfutures_depthofmarket_mach_v1_3_a.leg_ratio_and_side.size = 4

-- Display: Leg Ratio And Side
miax_onyxfutures_depthofmarket_mach_v1_3_a.leg_ratio_and_side.display = function(value)
  return "Leg Ratio And Side: "..value
end

-- Dissect: Leg Ratio And Side
miax_onyxfutures_depthofmarket_mach_v1_3_a.leg_ratio_and_side.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.leg_ratio_and_side.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.leg_ratio_and_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.leg_ratio_and_side, range, value, display)

  return offset + length, value
end

-- Low Limit Price
miax_onyxfutures_depthofmarket_mach_v1_3_a.low_limit_price = {}

-- Size: Low Limit Price
miax_onyxfutures_depthofmarket_mach_v1_3_a.low_limit_price.size = 8

-- Display: Low Limit Price
miax_onyxfutures_depthofmarket_mach_v1_3_a.low_limit_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x589C0001, 0xF21F494C) then
    return "Low Limit Price: No Value"
  end

  return "Low Limit Price: "..value
end

-- Translate: Low Limit Price
miax_onyxfutures_depthofmarket_mach_v1_3_a.low_limit_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x589C0001, 0xF21F494C) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Low Limit Price
miax_onyxfutures_depthofmarket_mach_v1_3_a.low_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.low_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_depthofmarket_mach_v1_3_a.low_limit_price.translate(raw)
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.low_limit_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.low_limit_price, range, value, display)

  return offset + length, value
end

-- Market State
miax_onyxfutures_depthofmarket_mach_v1_3_a.market_state = {}

-- Size: Market State
miax_onyxfutures_depthofmarket_mach_v1_3_a.market_state.size = 1

-- Display: Market State
miax_onyxfutures_depthofmarket_mach_v1_3_a.market_state.display = function(value)
  return "Market State: "..value
end

-- Dissect: Market State
miax_onyxfutures_depthofmarket_mach_v1_3_a.market_state.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.market_state.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.market_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.market_state, range, value, display)

  return offset + length, value
end

-- Match Algorithm
miax_onyxfutures_depthofmarket_mach_v1_3_a.match_algorithm = {}

-- Size: Match Algorithm
miax_onyxfutures_depthofmarket_mach_v1_3_a.match_algorithm.size = 1

-- Display: Match Algorithm
miax_onyxfutures_depthofmarket_mach_v1_3_a.match_algorithm.labels = {
  ["P"] = "Match Algorithm: Price Time (P)",
}

miax_onyxfutures_depthofmarket_mach_v1_3_a.match_algorithm.display = function(value)
  return miax_onyxfutures_depthofmarket_mach_v1_3_a.match_algorithm.labels[value] or "Match Algorithm: Unknown("..value..")"
end

-- Dissect: Match Algorithm
miax_onyxfutures_depthofmarket_mach_v1_3_a.match_algorithm.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.match_algorithm.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.match_algorithm.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.match_algorithm, range, value, display)

  return offset + length, value
end

-- Maturity Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.maturity_date = {}

-- Size: Maturity Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.maturity_date.size = 2

-- Display: Maturity Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.maturity_date.display = function(value)
  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.maturity_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Maximum Size
miax_onyxfutures_depthofmarket_mach_v1_3_a.maximum_size = {}

-- Size: Maximum Size
miax_onyxfutures_depthofmarket_mach_v1_3_a.maximum_size.size = 4

-- Display: Maximum Size
miax_onyxfutures_depthofmarket_mach_v1_3_a.maximum_size.display = function(value)
  return "Maximum Size: "..value
end

-- Dissect: Maximum Size
miax_onyxfutures_depthofmarket_mach_v1_3_a.maximum_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.maximum_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.maximum_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.maximum_size, range, value, display)

  return offset + length, value
end

-- Message Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.message_type = {}

-- Size: Message Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.message_type.size = 1

-- Display: Message Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.message_type.labels = {
  [1] = "Message Type: Simple Instrument Definition Message (1)",
  [17] = "Message Type: Complex Instrument Definition Message (17)",
  [2] = "Message Type: Complex Instrument Definition Deprecated Message (2)",
  [3] = "Message Type: System State Message (3)",
  [4] = "Message Type: Instrument Trading Status Notification Message (4)",
  [5] = "Message Type: Anticipated Opening Price Message (5)",
  [6] = "Message Type: Settlement Price Update Message (6)",
  [7] = "Message Type: Open Interest Update Message (7)",
  [8] = "Message Type: Total Volume Update Message (8)",
  [9] = "Message Type: Instrument Clear Message (9)",
  [10] = "Message Type: Add Order Message (10)",
  [11] = "Message Type: Modify Order Message (11)",
  [12] = "Message Type: Delete Order Message (12)",
  [13] = "Message Type: Order Execution Message (13)",
  [14] = "Message Type: Trade Cancel Message (14)",
}

miax_onyxfutures_depthofmarket_mach_v1_3_a.message_type.display = function(value)
  return miax_onyxfutures_depthofmarket_mach_v1_3_a.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.message_type, range, value, display)

  return offset + length, value
end

-- Minimum Size
miax_onyxfutures_depthofmarket_mach_v1_3_a.minimum_size = {}

-- Size: Minimum Size
miax_onyxfutures_depthofmarket_mach_v1_3_a.minimum_size.size = 4

-- Display: Minimum Size
miax_onyxfutures_depthofmarket_mach_v1_3_a.minimum_size.display = function(value)
  return "Minimum Size: "..value
end

-- Dissect: Minimum Size
miax_onyxfutures_depthofmarket_mach_v1_3_a.minimum_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.minimum_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.minimum_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.minimum_size, range, value, display)

  return offset + length, value
end

-- Number Of Legs
miax_onyxfutures_depthofmarket_mach_v1_3_a.number_of_legs = {}

-- Size: Number Of Legs
miax_onyxfutures_depthofmarket_mach_v1_3_a.number_of_legs.size = 1

-- Display: Number Of Legs
miax_onyxfutures_depthofmarket_mach_v1_3_a.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
miax_onyxfutures_depthofmarket_mach_v1_3_a.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.number_of_legs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Open Interest Quantity
miax_onyxfutures_depthofmarket_mach_v1_3_a.open_interest_quantity = {}

-- Size: Open Interest Quantity
miax_onyxfutures_depthofmarket_mach_v1_3_a.open_interest_quantity.size = 4

-- Display: Open Interest Quantity
miax_onyxfutures_depthofmarket_mach_v1_3_a.open_interest_quantity.display = function(value)
  return "Open Interest Quantity: "..value
end

-- Dissect: Open Interest Quantity
miax_onyxfutures_depthofmarket_mach_v1_3_a.open_interest_quantity.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.open_interest_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.open_interest_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.open_interest_quantity, range, value, display)

  return offset + length, value
end

-- Opening Match Quantity
miax_onyxfutures_depthofmarket_mach_v1_3_a.opening_match_quantity = {}

-- Size: Opening Match Quantity
miax_onyxfutures_depthofmarket_mach_v1_3_a.opening_match_quantity.size = 4

-- Display: Opening Match Quantity
miax_onyxfutures_depthofmarket_mach_v1_3_a.opening_match_quantity.display = function(value)
  return "Opening Match Quantity: "..value
end

-- Dissect: Opening Match Quantity
miax_onyxfutures_depthofmarket_mach_v1_3_a.opening_match_quantity.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.opening_match_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.opening_match_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.opening_match_quantity, range, value, display)

  return offset + length, value
end

-- Option Expiration Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.option_expiration_type = {}

-- Size: Option Expiration Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.option_expiration_type.size = 1

-- Display: Option Expiration Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.option_expiration_type.labels = {
  ["A"] = "Option Expiration Type: American Style (A)",
  ["E"] = "Option Expiration Type: European Style (E)",
  ["N"] = "Option Expiration Type: Na When (N)",
}

miax_onyxfutures_depthofmarket_mach_v1_3_a.option_expiration_type.display = function(value)
  return miax_onyxfutures_depthofmarket_mach_v1_3_a.option_expiration_type.labels[value] or "Option Expiration Type: Unknown("..value..")"
end

-- Dissect: Option Expiration Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.option_expiration_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.option_expiration_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.option_expiration_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.option_expiration_type, range, value, display)

  return offset + length, value
end

-- Option Strike Currency
miax_onyxfutures_depthofmarket_mach_v1_3_a.option_strike_currency = {}

-- Size: Option Strike Currency
miax_onyxfutures_depthofmarket_mach_v1_3_a.option_strike_currency.size = 1

-- Display: Option Strike Currency
miax_onyxfutures_depthofmarket_mach_v1_3_a.option_strike_currency.labels = {
  ["U"] = "Option Strike Currency: Us Dollar (U)",
  ["N"] = "Option Strike Currency: Na When (N)",
}

miax_onyxfutures_depthofmarket_mach_v1_3_a.option_strike_currency.display = function(value)
  return miax_onyxfutures_depthofmarket_mach_v1_3_a.option_strike_currency.labels[value] or "Option Strike Currency: Unknown("..value..")"
end

-- Dissect: Option Strike Currency
miax_onyxfutures_depthofmarket_mach_v1_3_a.option_strike_currency.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.option_strike_currency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.option_strike_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.option_strike_currency, range, value, display)

  return offset + length, value
end

-- Option Strike Price
miax_onyxfutures_depthofmarket_mach_v1_3_a.option_strike_price = {}

-- Size: Option Strike Price
miax_onyxfutures_depthofmarket_mach_v1_3_a.option_strike_price.size = 8

-- Display: Option Strike Price
miax_onyxfutures_depthofmarket_mach_v1_3_a.option_strike_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xA763FFFF, 0x0DE0B6B3) then
    return "Option Strike Price: No Value"
  end

  return "Option Strike Price: "..value
end

-- Translate: Option Strike Price
miax_onyxfutures_depthofmarket_mach_v1_3_a.option_strike_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xA763FFFF, 0x0DE0B6B3) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Option Strike Price
miax_onyxfutures_depthofmarket_mach_v1_3_a.option_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.option_strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_depthofmarket_mach_v1_3_a.option_strike_price.translate(raw)
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.option_strike_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.option_strike_price, range, value, display)

  return offset + length, value
end

-- Option Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.option_type = {}

-- Size: Option Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.option_type.size = 1

-- Display: Option Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.option_type.labels = {
  ["C"] = "Option Type: Call (C)",
  ["P"] = "Option Type: Put (P)",
  ["N"] = "Option Type: Na When (N)",
}

miax_onyxfutures_depthofmarket_mach_v1_3_a.option_type.display = function(value)
  return miax_onyxfutures_depthofmarket_mach_v1_3_a.option_type.labels[value] or "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.option_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.option_type, range, value, display)

  return offset + length, value
end

-- Order Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.order_id = {}

-- Size: Order Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.order_id.size = 8

-- Display: Order Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.order_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Side
miax_onyxfutures_depthofmarket_mach_v1_3_a.order_side = {}

-- Size: Order Side
miax_onyxfutures_depthofmarket_mach_v1_3_a.order_side.size = 1

-- Display: Order Side
miax_onyxfutures_depthofmarket_mach_v1_3_a.order_side.labels = {
  ["B"] = "Order Side: Buy (B)",
  ["S"] = "Order Side: Sell (S)",
}

miax_onyxfutures_depthofmarket_mach_v1_3_a.order_side.display = function(value)
  return miax_onyxfutures_depthofmarket_mach_v1_3_a.order_side.labels[value] or "Order Side: Unknown("..value..")"
end

-- Dissect: Order Side
miax_onyxfutures_depthofmarket_mach_v1_3_a.order_side.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.order_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.order_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.order_side, range, value, display)

  return offset + length, value
end

-- Order Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.order_type = {}

-- Size: Order Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.order_type.size = 1

-- Display: Order Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.order_type.labels = {
  ["S"] = "Order Type: Simple (S)",
  ["C"] = "Order Type: Complex (C)",
  ["D"] = "Order Type: Derived (D)",
}

miax_onyxfutures_depthofmarket_mach_v1_3_a.order_type.display = function(value)
  return miax_onyxfutures_depthofmarket_mach_v1_3_a.order_type.labels[value] or "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.order_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.order_type, range, value, display)

  return offset + length, value
end

-- Packet Length
miax_onyxfutures_depthofmarket_mach_v1_3_a.packet_length = {}

-- Size: Packet Length
miax_onyxfutures_depthofmarket_mach_v1_3_a.packet_length.size = 2

-- Display: Packet Length
miax_onyxfutures_depthofmarket_mach_v1_3_a.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
miax_onyxfutures_depthofmarket_mach_v1_3_a.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.packet_type = {}

-- Size: Packet Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.packet_type.size = 1

-- Display: Packet Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.packet_type.labels = {
  [0] = "Packet Type: Heartbeat (0)",
  [1] = "Packet Type: Start Of Session (1)",
  [2] = "Packet Type: End Of Session (2)",
  [3] = "Packet Type: Application Message (3)",
}

miax_onyxfutures_depthofmarket_mach_v1_3_a.packet_type.display = function(value)
  return miax_onyxfutures_depthofmarket_mach_v1_3_a.packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.packet_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Price
miax_onyxfutures_depthofmarket_mach_v1_3_a.price = {}

-- Size: Price
miax_onyxfutures_depthofmarket_mach_v1_3_a.price.size = 8

-- Display: Price
miax_onyxfutures_depthofmarket_mach_v1_3_a.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
miax_onyxfutures_depthofmarket_mach_v1_3_a.price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Price
miax_onyxfutures_depthofmarket_mach_v1_3_a.price.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_depthofmarket_mach_v1_3_a.price.translate(raw)
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.price, range, value, display)

  return offset + length, value
end

-- Product Group Code Alphanumeric 13
miax_onyxfutures_depthofmarket_mach_v1_3_a.product_group_code_alphanumeric_13 = {}

-- Size: Product Group Code Alphanumeric 13
miax_onyxfutures_depthofmarket_mach_v1_3_a.product_group_code_alphanumeric_13.size = 13

-- Display: Product Group Code Alphanumeric 13
miax_onyxfutures_depthofmarket_mach_v1_3_a.product_group_code_alphanumeric_13.display = function(value)
  return "Product Group Code Alphanumeric 13: "..value
end

-- Dissect: Product Group Code Alphanumeric 13
miax_onyxfutures_depthofmarket_mach_v1_3_a.product_group_code_alphanumeric_13.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.product_group_code_alphanumeric_13.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.product_group_code_alphanumeric_13.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.product_group_code_alphanumeric_13, range, value, display)

  return offset + length, value
end

-- Product Group Code Alphanumeric 6
miax_onyxfutures_depthofmarket_mach_v1_3_a.product_group_code_alphanumeric_6 = {}

-- Size: Product Group Code Alphanumeric 6
miax_onyxfutures_depthofmarket_mach_v1_3_a.product_group_code_alphanumeric_6.size = 6

-- Display: Product Group Code Alphanumeric 6
miax_onyxfutures_depthofmarket_mach_v1_3_a.product_group_code_alphanumeric_6.display = function(value)
  return "Product Group Code Alphanumeric 6: "..value
end

-- Dissect: Product Group Code Alphanumeric 6
miax_onyxfutures_depthofmarket_mach_v1_3_a.product_group_code_alphanumeric_6.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.product_group_code_alphanumeric_6.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.product_group_code_alphanumeric_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.product_group_code_alphanumeric_6, range, value, display)

  return offset + length, value
end

-- Reserved 16
miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_16 = {}

-- Size: Reserved 16
miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_16.size = 16

-- Display: Reserved 16
miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_16.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.reserved_16, range, value, display)

  return offset + length, value
end

-- Reserved 3
miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_3 = {}

-- Size: Reserved 3
miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_3.size = 3

-- Display: Reserved 3
miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Reserved 32
miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_32 = {}

-- Size: Reserved 32
miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_32.size = 32

-- Display: Reserved 32
miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_32.display = function(value)
  return "Reserved 32: "..value
end

-- Dissect: Reserved 32
miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_32.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_32.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_32.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.reserved_32, range, value, display)

  return offset + length, value
end

-- Reserved 4
miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_4 = {}

-- Size: Reserved 4
miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_4.size = 4

-- Display: Reserved 4
miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Reserved 6
miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_6 = {}

-- Size: Reserved 6
miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_6.size = 6

-- Display: Reserved 6
miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_6.display = function(value)
  return "Reserved 6: "..value
end

-- Dissect: Reserved 6
miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_6.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_6.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.reserved_6, range, value, display)

  return offset + length, value
end

-- Reserved 64
miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_64 = {}

-- Size: Reserved 64
miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_64.size = 64

-- Display: Reserved 64
miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_64.display = function(value)
  return "Reserved 64: "..value
end

-- Dissect: Reserved 64
miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_64.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_64.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_64.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.reserved_64, range, value, display)

  return offset + length, value
end

-- Sell Order Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.sell_order_id = {}

-- Size: Sell Order Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.sell_order_id.size = 8

-- Display: Sell Order Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.sell_order_id.display = function(value)
  return "Sell Order Id: "..value
end

-- Dissect: Sell Order Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.sell_order_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.sell_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.sell_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.sell_order_id, range, value, display)

  return offset + length, value
end

-- Sequence Number
miax_onyxfutures_depthofmarket_mach_v1_3_a.sequence_number = {}

-- Size: Sequence Number
miax_onyxfutures_depthofmarket_mach_v1_3_a.sequence_number.size = 8

-- Display: Sequence Number
miax_onyxfutures_depthofmarket_mach_v1_3_a.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_onyxfutures_depthofmarket_mach_v1_3_a.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.session_id = {}

-- Size: Session Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.session_id.size = 1

-- Display: Session Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.session_id, range, value, display)

  return offset + length, value
end

-- Session Number
miax_onyxfutures_depthofmarket_mach_v1_3_a.session_number = {}

-- Size: Session Number
miax_onyxfutures_depthofmarket_mach_v1_3_a.session_number.size = 1

-- Display: Session Number
miax_onyxfutures_depthofmarket_mach_v1_3_a.session_number.display = function(value)
  return "Session Number: "..value
end

-- Dissect: Session Number
miax_onyxfutures_depthofmarket_mach_v1_3_a.session_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.session_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.session_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.session_number, range, value, display)

  return offset + length, value
end

-- Settlement Currency
miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_currency = {}

-- Size: Settlement Currency
miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_currency.size = 1

-- Display: Settlement Currency
miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_currency.labels = {
  ["U"] = "Settlement Currency: Usd (U)",
}

miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_currency.display = function(value)
  return miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_currency.labels[value] or "Settlement Currency: Unknown("..value..")"
end

-- Dissect: Settlement Currency
miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_currency.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_currency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.settlement_currency, range, value, display)

  return offset + length, value
end

-- Settlement Price
miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price = {}

-- Size: Settlement Price
miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price.size = 8

-- Display: Settlement Price
miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price.display = function(value)
  return "Settlement Price: "..value
end

-- Translate: Settlement Price
miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Settlement Price
miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price.translate(raw)
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Settlement Price Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price_type = {}

-- Size: Settlement Price Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price_type.size = 1

-- Display: Settlement Price Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price_type.labels = {
  ["D"] = "Settlement Price Type: Daily (D)",
  ["F"] = "Settlement Price Type: Final (F)",
}

miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price_type.display = function(value)
  return miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price_type.labels[value] or "Settlement Price Type: Unknown("..value..")"
end

-- Dissect: Settlement Price Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.settlement_price_type, range, value, display)

  return offset + length, value
end

-- Settlement Price Type Calc Method
miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price_type_calc_method = {}

-- Size: Settlement Price Type Calc Method
miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price_type_calc_method.size = 1

-- Display: Settlement Price Type Calc Method
miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price_type_calc_method.labels = {
  ["A"] = "Settlement Price Type Calc Method: Actual (A)",
  ["T"] = "Settlement Price Type Calc Method: Theoretical (T)",
}

miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price_type_calc_method.display = function(value)
  return miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price_type_calc_method.labels[value] or "Settlement Price Type Calc Method: Unknown("..value..")"
end

-- Dissect: Settlement Price Type Calc Method
miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price_type_calc_method.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price_type_calc_method.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price_type_calc_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.settlement_price_type_calc_method, range, value, display)

  return offset + length, value
end

-- Size
miax_onyxfutures_depthofmarket_mach_v1_3_a.size = {}

-- Size: Size
miax_onyxfutures_depthofmarket_mach_v1_3_a.size.size = 4

-- Display: Size
miax_onyxfutures_depthofmarket_mach_v1_3_a.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
miax_onyxfutures_depthofmarket_mach_v1_3_a.size.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.size, range, value, display)

  return offset + length, value
end

-- Size Flags
miax_onyxfutures_depthofmarket_mach_v1_3_a.size_flags = {}

-- Size: Size Flags
miax_onyxfutures_depthofmarket_mach_v1_3_a.size_flags.size = 4

-- Display: Size Flags
miax_onyxfutures_depthofmarket_mach_v1_3_a.size_flags.display = function(value)
  return "Size Flags: "..value
end

-- Dissect: Size Flags
miax_onyxfutures_depthofmarket_mach_v1_3_a.size_flags.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.size_flags.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.size_flags.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.size_flags, range, value, display)

  return offset + length, value
end

-- Spread Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.spread_type = {}

-- Size: Spread Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.spread_type.size = 1

-- Display: Spread Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.spread_type.labels = {
  ["S"] = "Spread Type: Standard (S)",
  ["E"] = "Spread Type: Equity (E)",
  ["B"] = "Spread Type: Butterfly (B)",
  ["C"] = "Spread Type: Cross (C)",
}

miax_onyxfutures_depthofmarket_mach_v1_3_a.spread_type.display = function(value)
  return miax_onyxfutures_depthofmarket_mach_v1_3_a.spread_type.labels[value] or "Spread Type: Unknown("..value..")"
end

-- Dissect: Spread Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.spread_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.spread_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.spread_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.spread_type, range, value, display)

  return offset + length, value
end

-- System Status
miax_onyxfutures_depthofmarket_mach_v1_3_a.system_status = {}

-- Size: System Status
miax_onyxfutures_depthofmarket_mach_v1_3_a.system_status.size = 1

-- Display: System Status
miax_onyxfutures_depthofmarket_mach_v1_3_a.system_status.labels = {
  ["S"] = "System Status: Start Of (S)",
  ["C"] = "System Status: End Of (C)",
  ["1"] = "System Status: Start Of (1)",
  ["2"] = "System Status: End Of (2)",
}

miax_onyxfutures_depthofmarket_mach_v1_3_a.system_status.display = function(value)
  return miax_onyxfutures_depthofmarket_mach_v1_3_a.system_status.labels[value] or "System Status: Unknown("..value..")"
end

-- Dissect: System Status
miax_onyxfutures_depthofmarket_mach_v1_3_a.system_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.system_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.system_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.system_status, range, value, display)

  return offset + length, value
end

-- Tick
miax_onyxfutures_depthofmarket_mach_v1_3_a.tick = {}

-- Size: Tick
miax_onyxfutures_depthofmarket_mach_v1_3_a.tick.size = 8

-- Display: Tick
miax_onyxfutures_depthofmarket_mach_v1_3_a.tick.display = function(value)
  return "Tick: "..value
end

-- Translate: Tick
miax_onyxfutures_depthofmarket_mach_v1_3_a.tick.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Tick
miax_onyxfutures_depthofmarket_mach_v1_3_a.tick.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.tick.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_depthofmarket_mach_v1_3_a.tick.translate(raw)
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.tick.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.tick, range, value, display)

  return offset + length, value
end

-- Timestamp
miax_onyxfutures_depthofmarket_mach_v1_3_a.timestamp = {}

-- Size: Timestamp
miax_onyxfutures_depthofmarket_mach_v1_3_a.timestamp.size = 8

-- Dissect: Timestamp
miax_onyxfutures_depthofmarket_mach_v1_3_a.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.timestamp
  if miax_onyxfutures_depthofmarket_mach_v1_3_a.absolute_time_base == 1 then field = omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Total Volume
miax_onyxfutures_depthofmarket_mach_v1_3_a.total_volume = {}

-- Size: Total Volume
miax_onyxfutures_depthofmarket_mach_v1_3_a.total_volume.size = 4

-- Display: Total Volume
miax_onyxfutures_depthofmarket_mach_v1_3_a.total_volume.display = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
miax_onyxfutures_depthofmarket_mach_v1_3_a.total_volume.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.total_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Trade Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_date = {}

-- Size: Trade Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_date.size = 2

-- Display: Trade Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Trade Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_id = {}

-- Size: Trade Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_id.size = 8

-- Display: Trade Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_type = {}

-- Size: Trade Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_type.size = 1

-- Display: Trade Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_type.labels = {
  ["O"] = "Trade Type: Outright (O)",
  ["S"] = "Trade Type: Strategy (S)",
  ["M"] = "Trade Type: Strategy (M)",
  ["C"] = "Trade Type: Complex (C)",
  ["L"] = "Trade Type: Complex (L)",
  ["A"] = "Trade Type: Adjusted Late (A)",
}

miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_type.display = function(value)
  return miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_type.labels[value] or "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Trading Collar Variation
miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_collar_variation = {}

-- Size: Trading Collar Variation
miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_collar_variation.size = 8

-- Display: Trading Collar Variation
miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_collar_variation.display = function(value)
  return "Trading Collar Variation: "..value
end

-- Translate: Trading Collar Variation
miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_collar_variation.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Trading Collar Variation
miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_collar_variation.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_collar_variation.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_collar_variation.translate(raw)
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_collar_variation.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.trading_collar_variation, range, value, display)

  return offset + length, value
end

-- Trading Collar Variation Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_collar_variation_type = {}

-- Size: Trading Collar Variation Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_collar_variation_type.size = 1

-- Display: Trading Collar Variation Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_collar_variation_type.labels = {
  ["D"] = "Trading Collar Variation Type: Product (D)",
  ["P"] = "Trading Collar Variation Type: Product (P)",
  ["N"] = "Trading Collar Variation Type: Not (N)",
}

miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_collar_variation_type.display = function(value)
  return miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_collar_variation_type.labels[value] or "Trading Collar Variation Type: Unknown("..value..")"
end

-- Dissect: Trading Collar Variation Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_collar_variation_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_collar_variation_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_collar_variation_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.trading_collar_variation_type, range, value, display)

  return offset + length, value
end

-- Trading Status
miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_status = {}

-- Size: Trading Status
miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_status.size = 1

-- Display: Trading Status
miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_status.display = function(value)
  return "Trading Status: "..value
end

-- Dissect: Trading Status
miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Underlying Asset Alphanumeric 4
miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_asset_alphanumeric_4 = {}

-- Size: Underlying Asset Alphanumeric 4
miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_asset_alphanumeric_4.size = 4

-- Display: Underlying Asset Alphanumeric 4
miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_asset_alphanumeric_4.display = function(value)
  return "Underlying Asset Alphanumeric 4: "..value
end

-- Dissect: Underlying Asset Alphanumeric 4
miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_asset_alphanumeric_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_asset_alphanumeric_4.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_asset_alphanumeric_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.underlying_asset_alphanumeric_4, range, value, display)

  return offset + length, value
end

-- Underlying Asset Alphanumeric 9
miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_asset_alphanumeric_9 = {}

-- Size: Underlying Asset Alphanumeric 9
miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_asset_alphanumeric_9.size = 9

-- Display: Underlying Asset Alphanumeric 9
miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_asset_alphanumeric_9.display = function(value)
  return "Underlying Asset Alphanumeric 9: "..value
end

-- Dissect: Underlying Asset Alphanumeric 9
miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_asset_alphanumeric_9.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_asset_alphanumeric_9.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_asset_alphanumeric_9.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.underlying_asset_alphanumeric_9, range, value, display)

  return offset + length, value
end

-- Underlying Asset Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_asset_type = {}

-- Size: Underlying Asset Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_asset_type.size = 1

-- Display: Underlying Asset Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_asset_type.labels = {
  ["E"] = "Underlying Asset Type: Equity (E)",
  ["A"] = "Underlying Asset Type: Commodity Agriculture (A)",
  ["F"] = "Underlying Asset Type: Futures (F)",
  ["N"] = "Underlying Asset Type: Not (N)",
}

miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_asset_type.display = function(value)
  return miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_asset_type.labels[value] or "Underlying Asset Type: Unknown("..value..")"
end

-- Dissect: Underlying Asset Type
miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_asset_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_asset_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_asset_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.underlying_asset_type, range, value, display)

  return offset + length, value
end

-- Underlying Future Instrument Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_future_instrument_id = {}

-- Size: Underlying Future Instrument Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_future_instrument_id.size = 4

-- Display: Underlying Future Instrument Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_future_instrument_id.display = function(value)
  return "Underlying Future Instrument Id: "..value
end

-- Dissect: Underlying Future Instrument Id
miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_future_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_future_instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_future_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.underlying_future_instrument_id, range, value, display)

  return offset + length, value
end

-- Unit Of Measure
miax_onyxfutures_depthofmarket_mach_v1_3_a.unit_of_measure = {}

-- Size: Unit Of Measure
miax_onyxfutures_depthofmarket_mach_v1_3_a.unit_of_measure.size = 5

-- Display: Unit Of Measure
miax_onyxfutures_depthofmarket_mach_v1_3_a.unit_of_measure.labels = {
  ["BU"] = "Unit Of Measure: Bushels (BU)",
  ["USD"] = "Unit Of Measure: Usd (USD)",
  ["FUT"] = "Unit Of Measure: Futures (FUT)",
  ["ST"] = "Unit Of Measure: Short (ST)",
  ["LB"] = "Unit Of Measure: Pounds (LB)",
}

miax_onyxfutures_depthofmarket_mach_v1_3_a.unit_of_measure.display = function(value)
  return miax_onyxfutures_depthofmarket_mach_v1_3_a.unit_of_measure.labels[value] or "Unit Of Measure: Unknown("..value..")"
end

-- Dissect: Unit Of Measure
miax_onyxfutures_depthofmarket_mach_v1_3_a.unit_of_measure.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.unit_of_measure.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.unit_of_measure.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.unit_of_measure, range, value, display)

  return offset + length, value
end

-- Unit Of Measure Quantity
miax_onyxfutures_depthofmarket_mach_v1_3_a.unit_of_measure_quantity = {}

-- Size: Unit Of Measure Quantity
miax_onyxfutures_depthofmarket_mach_v1_3_a.unit_of_measure_quantity.size = 4

-- Display: Unit Of Measure Quantity
miax_onyxfutures_depthofmarket_mach_v1_3_a.unit_of_measure_quantity.display = function(value)
  return "Unit Of Measure Quantity: "..value
end

-- Dissect: Unit Of Measure Quantity
miax_onyxfutures_depthofmarket_mach_v1_3_a.unit_of_measure_quantity.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.unit_of_measure_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.unit_of_measure_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.unit_of_measure_quantity, range, value, display)

  return offset + length, value
end

-- Valuation Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.valuation_date = {}

-- Size: Valuation Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.valuation_date.size = 2

-- Display: Valuation Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.valuation_date.display = function(value)
  return "Valuation Date: "..value
end

-- Dissect: Valuation Date
miax_onyxfutures_depthofmarket_mach_v1_3_a.valuation_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_3_a.valuation_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.valuation_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.valuation_date, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Miax OnyxFutures DepthOfMarket Mach 1.3.a
-----------------------------------------------------------------------

-- End Of Session
miax_onyxfutures_depthofmarket_mach_v1_3_a.end_of_session = {}

-- Display: End Of Session
miax_onyxfutures_depthofmarket_mach_v1_3_a.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
miax_onyxfutures_depthofmarket_mach_v1_3_a.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Start Of Session
miax_onyxfutures_depthofmarket_mach_v1_3_a.start_of_session = {}

-- Display: Start Of Session
miax_onyxfutures_depthofmarket_mach_v1_3_a.start_of_session.display = function(packet, parent, length)
  return "Start Of Session"
end


-- Dissect: Start Of Session
miax_onyxfutures_depthofmarket_mach_v1_3_a.start_of_session.dissect = function(buffer, offset, packet, parent)
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.start_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
miax_onyxfutures_depthofmarket_mach_v1_3_a.heartbeat = {}

-- Display: Heartbeat
miax_onyxfutures_depthofmarket_mach_v1_3_a.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
miax_onyxfutures_depthofmarket_mach_v1_3_a.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Trade Cancel Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_cancel_message = {}

-- Size: Trade Cancel Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_cancel_message.size =
  miax_onyxfutures_depthofmarket_mach_v1_3_a.timestamp.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_date.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_id.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.correction_number.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.price.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.size.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_type.size

-- Display: Trade Cancel Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_depthofmarket_mach_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Date
  index, trade_date = miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_date.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_id.dissect(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_onyxfutures_depthofmarket_mach_v1_3_a.correction_number.dissect(buffer, index, packet, parent)

  -- Price: Price9S
  index, price = miax_onyxfutures_depthofmarket_mach_v1_3_a.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_onyxfutures_depthofmarket_mach_v1_3_a.size.dissect(buffer, index, packet, parent)

  -- Instrument Type: Alphanumeric
  index, instrument_type = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.trade_cancel_message, buffer(offset, 0))
    local index = miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Execution Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.order_execution_message = {}

-- Size: Order Execution Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.order_execution_message.size =
  miax_onyxfutures_depthofmarket_mach_v1_3_a.timestamp.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_date.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.buy_order_id.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.sell_order_id.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.aggressor_side.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_id.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.correction_number.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.price.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.size.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_type.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.complex_trade_id.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_type.size

-- Display: Order Execution Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.order_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.order_execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_depthofmarket_mach_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Date
  index, trade_date = miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_date.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.dissect(buffer, index, packet, parent)

  -- Buy Order Id: BinaryU
  index, buy_order_id = miax_onyxfutures_depthofmarket_mach_v1_3_a.buy_order_id.dissect(buffer, index, packet, parent)

  -- Sell Order Id: BinaryU
  index, sell_order_id = miax_onyxfutures_depthofmarket_mach_v1_3_a.sell_order_id.dissect(buffer, index, packet, parent)

  -- Aggressor Side: Alphanumeric
  index, aggressor_side = miax_onyxfutures_depthofmarket_mach_v1_3_a.aggressor_side.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_id.dissect(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_onyxfutures_depthofmarket_mach_v1_3_a.correction_number.dissect(buffer, index, packet, parent)

  -- Price: Price9S
  index, price = miax_onyxfutures_depthofmarket_mach_v1_3_a.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_onyxfutures_depthofmarket_mach_v1_3_a.size.dissect(buffer, index, packet, parent)

  -- Trade Type: Alphanumeric
  index, trade_type = miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_type.dissect(buffer, index, packet, parent)

  -- Complex Trade Id: BinaryU
  index, complex_trade_id = miax_onyxfutures_depthofmarket_mach_v1_3_a.complex_trade_id.dissect(buffer, index, packet, parent)

  -- Instrument Type: Alphanumeric
  index, instrument_type = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.order_execution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.order_execution_message, buffer(offset, 0))
    local index = miax_onyxfutures_depthofmarket_mach_v1_3_a.order_execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.order_execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_depthofmarket_mach_v1_3_a.order_execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.delete_order_message = {}

-- Size: Delete Order Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.delete_order_message.size =
  miax_onyxfutures_depthofmarket_mach_v1_3_a.timestamp.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.order_id.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.order_side.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_type.size

-- Display: Delete Order Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_depthofmarket_mach_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_onyxfutures_depthofmarket_mach_v1_3_a.order_id.dissect(buffer, index, packet, parent)

  -- Order Side: Alphanumeric
  index, order_side = miax_onyxfutures_depthofmarket_mach_v1_3_a.order_side.dissect(buffer, index, packet, parent)

  -- Instrument Type: Alphanumeric
  index, instrument_type = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.delete_order_message, buffer(offset, 0))
    local index = miax_onyxfutures_depthofmarket_mach_v1_3_a.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_depthofmarket_mach_v1_3_a.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.modify_order_message = {}

-- Size: Modify Order Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.modify_order_message.size =
  miax_onyxfutures_depthofmarket_mach_v1_3_a.timestamp.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.order_id.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.price.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.size_flags.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.order_side.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_type.size

-- Display: Modify Order Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.modify_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.modify_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_depthofmarket_mach_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_onyxfutures_depthofmarket_mach_v1_3_a.order_id.dissect(buffer, index, packet, parent)

  -- Price: Price9S
  index, price = miax_onyxfutures_depthofmarket_mach_v1_3_a.price.dissect(buffer, index, packet, parent)

  -- Size Flags: BinaryU
  index, size_flags = miax_onyxfutures_depthofmarket_mach_v1_3_a.size_flags.dissect(buffer, index, packet, parent)

  -- Order Side: Alphanumeric
  index, order_side = miax_onyxfutures_depthofmarket_mach_v1_3_a.order_side.dissect(buffer, index, packet, parent)

  -- Instrument Type: Alphanumeric
  index, instrument_type = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.modify_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.modify_order_message, buffer(offset, 0))
    local index = miax_onyxfutures_depthofmarket_mach_v1_3_a.modify_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.modify_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_depthofmarket_mach_v1_3_a.modify_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.add_order_message = {}

-- Size: Add Order Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.add_order_message.size =
  miax_onyxfutures_depthofmarket_mach_v1_3_a.timestamp.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.order_type.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.order_id.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.order_side.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.price.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.size.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_type.size

-- Display: Add Order Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_depthofmarket_mach_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Type: Alphanumeric
  index, order_type = miax_onyxfutures_depthofmarket_mach_v1_3_a.order_type.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_onyxfutures_depthofmarket_mach_v1_3_a.order_id.dissect(buffer, index, packet, parent)

  -- Order Side: Alphanumeric
  index, order_side = miax_onyxfutures_depthofmarket_mach_v1_3_a.order_side.dissect(buffer, index, packet, parent)

  -- Price: Price9S
  index, price = miax_onyxfutures_depthofmarket_mach_v1_3_a.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_onyxfutures_depthofmarket_mach_v1_3_a.size.dissect(buffer, index, packet, parent)

  -- Instrument Type: Alphanumeric
  index, instrument_type = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.add_order_message, buffer(offset, 0))
    local index = miax_onyxfutures_depthofmarket_mach_v1_3_a.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_depthofmarket_mach_v1_3_a.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Clear Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_clear_message = {}

-- Size: Instrument Clear Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_clear_message.size =
  miax_onyxfutures_depthofmarket_mach_v1_3_a.timestamp.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.size

-- Display: Instrument Clear Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Clear Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_depthofmarket_mach_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Clear Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.instrument_clear_message, buffer(offset, 0))
    local index = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Total Volume Update Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.total_volume_update_message = {}

-- Size: Total Volume Update Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.total_volume_update_message.size =
  miax_onyxfutures_depthofmarket_mach_v1_3_a.timestamp.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_date.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.total_volume.size

-- Display: Total Volume Update Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.total_volume_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Total Volume Update Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.total_volume_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_depthofmarket_mach_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Date
  index, trade_date = miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_date.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.dissect(buffer, index, packet, parent)

  -- Total Volume: BinaryU
  index, total_volume = miax_onyxfutures_depthofmarket_mach_v1_3_a.total_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Total Volume Update Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.total_volume_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.total_volume_update_message, buffer(offset, 0))
    local index = miax_onyxfutures_depthofmarket_mach_v1_3_a.total_volume_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.total_volume_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_depthofmarket_mach_v1_3_a.total_volume_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Open Interest Update Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.open_interest_update_message = {}

-- Size: Open Interest Update Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.open_interest_update_message.size =
  miax_onyxfutures_depthofmarket_mach_v1_3_a.timestamp.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_date.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.open_interest_quantity.size

-- Display: Open Interest Update Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.open_interest_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Interest Update Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.open_interest_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_depthofmarket_mach_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Date
  index, trade_date = miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_date.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.dissect(buffer, index, packet, parent)

  -- Open Interest Quantity: BinaryU
  index, open_interest_quantity = miax_onyxfutures_depthofmarket_mach_v1_3_a.open_interest_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Interest Update Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.open_interest_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.open_interest_update_message, buffer(offset, 0))
    local index = miax_onyxfutures_depthofmarket_mach_v1_3_a.open_interest_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.open_interest_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_depthofmarket_mach_v1_3_a.open_interest_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Settlement Price Update Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price_update_message = {}

-- Size: Settlement Price Update Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price_update_message.size =
  miax_onyxfutures_depthofmarket_mach_v1_3_a.timestamp.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_date.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price_type.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price_type_calc_method.size

-- Display: Settlement Price Update Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Settlement Price Update Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_depthofmarket_mach_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Date
  index, trade_date = miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_date.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.dissect(buffer, index, packet, parent)

  -- Settlement Price: Price9S
  index, settlement_price = miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price.dissect(buffer, index, packet, parent)

  -- Settlement Price Type: Alphanumeric
  index, settlement_price_type = miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price_type.dissect(buffer, index, packet, parent)

  -- Settlement Price Type Calc Method: Alphanumeric
  index, settlement_price_type_calc_method = miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price_type_calc_method.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Settlement Price Update Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.settlement_price_update_message, buffer(offset, 0))
    local index = miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Anticipated Opening Price Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.anticipated_opening_price_message = {}

-- Size: Anticipated Opening Price Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.anticipated_opening_price_message.size =
  miax_onyxfutures_depthofmarket_mach_v1_3_a.timestamp.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.anticipated_opening_price.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.opening_match_quantity.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_type.size

-- Display: Anticipated Opening Price Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.anticipated_opening_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Anticipated Opening Price Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.anticipated_opening_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_depthofmarket_mach_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.dissect(buffer, index, packet, parent)

  -- Anticipated Opening Price: Price9S
  index, anticipated_opening_price = miax_onyxfutures_depthofmarket_mach_v1_3_a.anticipated_opening_price.dissect(buffer, index, packet, parent)

  -- Opening Match Quantity: BinaryU
  index, opening_match_quantity = miax_onyxfutures_depthofmarket_mach_v1_3_a.opening_match_quantity.dissect(buffer, index, packet, parent)

  -- Instrument Type: Alphanumeric
  index, instrument_type = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Anticipated Opening Price Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.anticipated_opening_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.anticipated_opening_price_message, buffer(offset, 0))
    local index = miax_onyxfutures_depthofmarket_mach_v1_3_a.anticipated_opening_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.anticipated_opening_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_depthofmarket_mach_v1_3_a.anticipated_opening_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Trading Status Notification Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_trading_status_notification_message = {}

-- Size: Instrument Trading Status Notification Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_trading_status_notification_message.size =
  miax_onyxfutures_depthofmarket_mach_v1_3_a.timestamp.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_status.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.market_state.size

-- Display: Instrument Trading Status Notification Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_trading_status_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Trading Status Notification Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_trading_status_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_depthofmarket_mach_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.dissect(buffer, index, packet, parent)

  -- Trading Status: BinaryU
  index, trading_status = miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_status.dissect(buffer, index, packet, parent)

  -- Market State: BinaryU
  index, market_state = miax_onyxfutures_depthofmarket_mach_v1_3_a.market_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Trading Status Notification Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_trading_status_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.instrument_trading_status_notification_message, buffer(offset, 0))
    local index = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_trading_status_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_trading_status_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_trading_status_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- System State Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.system_state_message = {}

-- Size: System State Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.system_state_message.size =
  miax_onyxfutures_depthofmarket_mach_v1_3_a.timestamp.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.do_m_version.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.session_id.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.system_status.size

-- Display: System State Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.system_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System State Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.system_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_depthofmarket_mach_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Do M Version: Alphanumeric
  index, do_m_version = miax_onyxfutures_depthofmarket_mach_v1_3_a.do_m_version.dissect(buffer, index, packet, parent)

  -- Session Id: BinaryU
  index, session_id = miax_onyxfutures_depthofmarket_mach_v1_3_a.session_id.dissect(buffer, index, packet, parent)

  -- System Status: Alphanumeric
  index, system_status = miax_onyxfutures_depthofmarket_mach_v1_3_a.system_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System State Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.system_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.system_state_message, buffer(offset, 0))
    local index = miax_onyxfutures_depthofmarket_mach_v1_3_a.system_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.system_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_depthofmarket_mach_v1_3_a.system_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Deprecated Instrument Leg
miax_onyxfutures_depthofmarket_mach_v1_3_a.deprecated_instrument_leg = {}

-- Size: Deprecated Instrument Leg
miax_onyxfutures_depthofmarket_mach_v1_3_a.deprecated_instrument_leg.size =
  miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.leg_ratio_and_side.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_4.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.maturity_date.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_6.size

-- Display: Deprecated Instrument Leg
miax_onyxfutures_depthofmarket_mach_v1_3_a.deprecated_instrument_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Deprecated Instrument Leg
miax_onyxfutures_depthofmarket_mach_v1_3_a.deprecated_instrument_leg.fields = function(buffer, offset, packet, parent, deprecated_instrument_leg_index)
  local index = offset

  -- Implicit Deprecated Instrument Leg Index
  if deprecated_instrument_leg_index ~= nil and show.indexes then
    local iteration = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.deprecated_instrument_leg_index, deprecated_instrument_leg_index)
    iteration:set_generated()
  end

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.dissect(buffer, index, packet, parent)

  -- Leg Ratio And Side: BinaryS
  index, leg_ratio_and_side = miax_onyxfutures_depthofmarket_mach_v1_3_a.leg_ratio_and_side.dissect(buffer, index, packet, parent)

  -- Reserved 4: BinaryU
  index, reserved_4 = miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_4.dissect(buffer, index, packet, parent)

  -- Maturity Date: Date
  index, maturity_date = miax_onyxfutures_depthofmarket_mach_v1_3_a.maturity_date.dissect(buffer, index, packet, parent)

  -- Reserved 6: BinaryU
  index, reserved_6 = miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Deprecated Instrument Leg
miax_onyxfutures_depthofmarket_mach_v1_3_a.deprecated_instrument_leg.dissect = function(buffer, offset, packet, parent, deprecated_instrument_leg_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.deprecated_instrument_leg, buffer(offset, 0))
    local index = miax_onyxfutures_depthofmarket_mach_v1_3_a.deprecated_instrument_leg.fields(buffer, offset, packet, parent, deprecated_instrument_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.deprecated_instrument_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_depthofmarket_mach_v1_3_a.deprecated_instrument_leg.fields(buffer, offset, packet, parent, deprecated_instrument_leg_index)
  end
end

-- Complex Instrument Definition Deprecated Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.complex_instrument_definition_deprecated_message = {}

-- Calculate size of: Complex Instrument Definition Deprecated Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.complex_instrument_definition_deprecated_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.timestamp.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id_formerly_known_as_strategy_id.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_asset_type.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_asset_alphanumeric_4.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.product_group_code_alphanumeric_6.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.spread_type.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.exchange.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id_source.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_type.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.currency.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_currency.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.match_algorithm.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.minimum_size.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.maximum_size.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.tick.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.unit_of_measure.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.unit_of_measure_quantity.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_collar_variation_type.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_collar_variation.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_16.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.number_of_legs.size

  -- Calculate field size from count
  local deprecated_instrument_leg_count = buffer(offset + index - 1, 1):le_uint()
  index = index + deprecated_instrument_leg_count * 20

  return index
end

-- Display: Complex Instrument Definition Deprecated Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.complex_instrument_definition_deprecated_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Instrument Definition Deprecated Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.complex_instrument_definition_deprecated_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_depthofmarket_mach_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id Formerly Known As Strategy Id: BinaryU
  index, instrument_id_formerly_known_as_strategy_id = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id_formerly_known_as_strategy_id.dissect(buffer, index, packet, parent)

  -- Underlying Asset Type: Alphanumeric
  index, underlying_asset_type = miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_asset_type.dissect(buffer, index, packet, parent)

  -- Underlying Asset Alphanumeric 4: Alphanumeric
  index, underlying_asset_alphanumeric_4 = miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_asset_alphanumeric_4.dissect(buffer, index, packet, parent)

  -- Product Group Code Alphanumeric 6: Alphanumeric
  index, product_group_code_alphanumeric_6 = miax_onyxfutures_depthofmarket_mach_v1_3_a.product_group_code_alphanumeric_6.dissect(buffer, index, packet, parent)

  -- Spread Type: Alphanumeric
  index, spread_type = miax_onyxfutures_depthofmarket_mach_v1_3_a.spread_type.dissect(buffer, index, packet, parent)

  -- Exchange: Alphanumeric
  index, exchange = miax_onyxfutures_depthofmarket_mach_v1_3_a.exchange.dissect(buffer, index, packet, parent)

  -- Instrument Id Source: Alphanumeric
  index, instrument_id_source = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id_source.dissect(buffer, index, packet, parent)

  -- Instrument Type: Alphanumeric
  index, instrument_type = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_type.dissect(buffer, index, packet, parent)

  -- Currency: Alphanumeric
  index, currency = miax_onyxfutures_depthofmarket_mach_v1_3_a.currency.dissect(buffer, index, packet, parent)

  -- Settlement Currency: Alphanumeric
  index, settlement_currency = miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_currency.dissect(buffer, index, packet, parent)

  -- Match Algorithm: Alphanumeric
  index, match_algorithm = miax_onyxfutures_depthofmarket_mach_v1_3_a.match_algorithm.dissect(buffer, index, packet, parent)

  -- Minimum Size: BinaryU
  index, minimum_size = miax_onyxfutures_depthofmarket_mach_v1_3_a.minimum_size.dissect(buffer, index, packet, parent)

  -- Maximum Size: BinaryU
  index, maximum_size = miax_onyxfutures_depthofmarket_mach_v1_3_a.maximum_size.dissect(buffer, index, packet, parent)

  -- Tick: Price9S
  index, tick = miax_onyxfutures_depthofmarket_mach_v1_3_a.tick.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: Alphanumeric
  index, unit_of_measure = miax_onyxfutures_depthofmarket_mach_v1_3_a.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Unit Of Measure Quantity: BinaryU
  index, unit_of_measure_quantity = miax_onyxfutures_depthofmarket_mach_v1_3_a.unit_of_measure_quantity.dissect(buffer, index, packet, parent)

  -- Trading Collar Variation Type: Alphanumeric
  index, trading_collar_variation_type = miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_collar_variation_type.dissect(buffer, index, packet, parent)

  -- Trading Collar Variation: Price9S
  index, trading_collar_variation = miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_collar_variation.dissect(buffer, index, packet, parent)

  -- Reserved 16: BinaryU
  index, reserved_16 = miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_16.dissect(buffer, index, packet, parent)

  -- Number Of Legs: BinaryU
  index, number_of_legs = miax_onyxfutures_depthofmarket_mach_v1_3_a.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Deprecated Instrument Leg
  for deprecated_instrument_leg_index = 1, number_of_legs do
    index, deprecated_instrument_leg = miax_onyxfutures_depthofmarket_mach_v1_3_a.deprecated_instrument_leg.dissect(buffer, index, packet, parent, deprecated_instrument_leg_index)
  end

  return index
end

-- Dissect: Complex Instrument Definition Deprecated Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.complex_instrument_definition_deprecated_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.complex_instrument_definition_deprecated_message, buffer(offset, 0))
    local index = miax_onyxfutures_depthofmarket_mach_v1_3_a.complex_instrument_definition_deprecated_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.complex_instrument_definition_deprecated_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_depthofmarket_mach_v1_3_a.complex_instrument_definition_deprecated_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Leg
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_leg = {}

-- Size: Instrument Leg
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_leg.size =
  miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.leg_ratio_and_side.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.maturity_date.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_32.size

-- Display: Instrument Leg
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Leg
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_leg.fields = function(buffer, offset, packet, parent, instrument_leg_index)
  local index = offset

  -- Implicit Instrument Leg Index
  if instrument_leg_index ~= nil and show.indexes then
    local iteration = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.instrument_leg_index, instrument_leg_index)
    iteration:set_generated()
  end

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.dissect(buffer, index, packet, parent)

  -- Leg Ratio And Side: BinaryS
  index, leg_ratio_and_side = miax_onyxfutures_depthofmarket_mach_v1_3_a.leg_ratio_and_side.dissect(buffer, index, packet, parent)

  -- Maturity Date: Date
  index, maturity_date = miax_onyxfutures_depthofmarket_mach_v1_3_a.maturity_date.dissect(buffer, index, packet, parent)

  -- Reserved 32: BinaryU
  index, reserved_32 = miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_32.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Leg
miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_leg.dissect = function(buffer, offset, packet, parent, instrument_leg_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.instrument_leg, buffer(offset, 0))
    local index = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_leg.fields(buffer, offset, packet, parent, instrument_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_leg.fields(buffer, offset, packet, parent, instrument_leg_index)
  end
end

-- Complex Instrument Definition Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.complex_instrument_definition_message = {}

-- Calculate size of: Complex Instrument Definition Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.complex_instrument_definition_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.timestamp.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_asset_type.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_asset_alphanumeric_9.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.product_group_code_alphanumeric_13.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.spread_type.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.exchange.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id_source.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_type.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.currency.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_currency.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.match_algorithm.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.minimum_size.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.maximum_size.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.tick.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.unit_of_measure.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.unit_of_measure_quantity.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price_type_calc_method.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_collar_variation_type.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_collar_variation.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_listing_status.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.first_trade_date.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_64.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_3_a.number_of_legs.size

  -- Calculate field size from count
  local instrument_leg_count = buffer(offset + index - 1, 1):le_uint()
  index = index + instrument_leg_count * 42

  return index
end

-- Display: Complex Instrument Definition Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.complex_instrument_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Instrument Definition Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.complex_instrument_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_depthofmarket_mach_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.dissect(buffer, index, packet, parent)

  -- Underlying Asset Type: Alphanumeric
  index, underlying_asset_type = miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_asset_type.dissect(buffer, index, packet, parent)

  -- Underlying Asset Alphanumeric 9: Alphanumeric
  index, underlying_asset_alphanumeric_9 = miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_asset_alphanumeric_9.dissect(buffer, index, packet, parent)

  -- Product Group Code Alphanumeric 13: Alphanumeric
  index, product_group_code_alphanumeric_13 = miax_onyxfutures_depthofmarket_mach_v1_3_a.product_group_code_alphanumeric_13.dissect(buffer, index, packet, parent)

  -- Spread Type: Alphanumeric
  index, spread_type = miax_onyxfutures_depthofmarket_mach_v1_3_a.spread_type.dissect(buffer, index, packet, parent)

  -- Exchange: Alphanumeric
  index, exchange = miax_onyxfutures_depthofmarket_mach_v1_3_a.exchange.dissect(buffer, index, packet, parent)

  -- Instrument Id Source: Alphanumeric
  index, instrument_id_source = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id_source.dissect(buffer, index, packet, parent)

  -- Instrument Type: Alphanumeric
  index, instrument_type = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_type.dissect(buffer, index, packet, parent)

  -- Currency: Alphanumeric
  index, currency = miax_onyxfutures_depthofmarket_mach_v1_3_a.currency.dissect(buffer, index, packet, parent)

  -- Settlement Currency: Alphanumeric
  index, settlement_currency = miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_currency.dissect(buffer, index, packet, parent)

  -- Match Algorithm: Alphanumeric
  index, match_algorithm = miax_onyxfutures_depthofmarket_mach_v1_3_a.match_algorithm.dissect(buffer, index, packet, parent)

  -- Minimum Size: BinaryU
  index, minimum_size = miax_onyxfutures_depthofmarket_mach_v1_3_a.minimum_size.dissect(buffer, index, packet, parent)

  -- Maximum Size: BinaryU
  index, maximum_size = miax_onyxfutures_depthofmarket_mach_v1_3_a.maximum_size.dissect(buffer, index, packet, parent)

  -- Tick: Price9S
  index, tick = miax_onyxfutures_depthofmarket_mach_v1_3_a.tick.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: Alphanumeric
  index, unit_of_measure = miax_onyxfutures_depthofmarket_mach_v1_3_a.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Unit Of Measure Quantity: BinaryU
  index, unit_of_measure_quantity = miax_onyxfutures_depthofmarket_mach_v1_3_a.unit_of_measure_quantity.dissect(buffer, index, packet, parent)

  -- Settlement Price: Price9S
  index, settlement_price = miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price.dissect(buffer, index, packet, parent)

  -- Settlement Price Type Calc Method: Alphanumeric
  index, settlement_price_type_calc_method = miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price_type_calc_method.dissect(buffer, index, packet, parent)

  -- Trading Collar Variation Type: Alphanumeric
  index, trading_collar_variation_type = miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_collar_variation_type.dissect(buffer, index, packet, parent)

  -- Trading Collar Variation: Price9S
  index, trading_collar_variation = miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_collar_variation.dissect(buffer, index, packet, parent)

  -- Instrument Listing Status: Alphanumeric
  index, instrument_listing_status = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_listing_status.dissect(buffer, index, packet, parent)

  -- First Trade Date: Date
  index, first_trade_date = miax_onyxfutures_depthofmarket_mach_v1_3_a.first_trade_date.dissect(buffer, index, packet, parent)

  -- Reserved 64: BinaryU
  index, reserved_64 = miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_64.dissect(buffer, index, packet, parent)

  -- Number Of Legs: BinaryU
  index, number_of_legs = miax_onyxfutures_depthofmarket_mach_v1_3_a.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Instrument Leg
  for instrument_leg_index = 1, number_of_legs do
    index, instrument_leg = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_leg.dissect(buffer, index, packet, parent, instrument_leg_index)
  end

  return index
end

-- Dissect: Complex Instrument Definition Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.complex_instrument_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.complex_instrument_definition_message, buffer(offset, 0))
    local index = miax_onyxfutures_depthofmarket_mach_v1_3_a.complex_instrument_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.complex_instrument_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_depthofmarket_mach_v1_3_a.complex_instrument_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Instrument Definition Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.simple_instrument_definition_message = {}

-- Size: Simple Instrument Definition Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.simple_instrument_definition_message.size =
  miax_onyxfutures_depthofmarket_mach_v1_3_a.timestamp.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_asset_type.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_asset_alphanumeric_4.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.product_group_code_alphanumeric_6.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.exchange.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id_source.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_type.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_listing_status.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_3.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.currency.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_currency.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.match_algorithm.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.minimum_size.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.maximum_size.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.tick.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.unit_of_measure.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.unit_of_measure_quantity.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price_type_calc_method.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.total_volume.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.open_interest_quantity.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.high_limit_price.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.low_limit_price.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_collar_variation_type.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_collar_variation.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.contract_date.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.maturity_date.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.valuation_date.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.first_trade_date.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.last_trade_date.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.first_notice_date.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.last_notice_date.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.first_delivery_date.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.last_delivery_date.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.option_strike_price.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.option_strike_currency.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.option_type.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.option_expiration_type.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_future_instrument_id.size

-- Display: Simple Instrument Definition Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.simple_instrument_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Instrument Definition Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.simple_instrument_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_depthofmarket_mach_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id.dissect(buffer, index, packet, parent)

  -- Underlying Asset Type: Alphanumeric
  index, underlying_asset_type = miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_asset_type.dissect(buffer, index, packet, parent)

  -- Underlying Asset Alphanumeric 4: Alphanumeric
  index, underlying_asset_alphanumeric_4 = miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_asset_alphanumeric_4.dissect(buffer, index, packet, parent)

  -- Product Group Code Alphanumeric 6: Alphanumeric
  index, product_group_code_alphanumeric_6 = miax_onyxfutures_depthofmarket_mach_v1_3_a.product_group_code_alphanumeric_6.dissect(buffer, index, packet, parent)

  -- Exchange: Alphanumeric
  index, exchange = miax_onyxfutures_depthofmarket_mach_v1_3_a.exchange.dissect(buffer, index, packet, parent)

  -- Instrument Id Source: Alphanumeric
  index, instrument_id_source = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_id_source.dissect(buffer, index, packet, parent)

  -- Instrument Type: Alphanumeric
  index, instrument_type = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_type.dissect(buffer, index, packet, parent)

  -- Instrument Listing Status: Alphanumeric
  index, instrument_listing_status = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_listing_status.dissect(buffer, index, packet, parent)

  -- Reserved 3: BinaryU
  index, reserved_3 = miax_onyxfutures_depthofmarket_mach_v1_3_a.reserved_3.dissect(buffer, index, packet, parent)

  -- Currency: Alphanumeric
  index, currency = miax_onyxfutures_depthofmarket_mach_v1_3_a.currency.dissect(buffer, index, packet, parent)

  -- Settlement Currency: Alphanumeric
  index, settlement_currency = miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_currency.dissect(buffer, index, packet, parent)

  -- Match Algorithm: Alphanumeric
  index, match_algorithm = miax_onyxfutures_depthofmarket_mach_v1_3_a.match_algorithm.dissect(buffer, index, packet, parent)

  -- Minimum Size: BinaryU
  index, minimum_size = miax_onyxfutures_depthofmarket_mach_v1_3_a.minimum_size.dissect(buffer, index, packet, parent)

  -- Maximum Size: BinaryU
  index, maximum_size = miax_onyxfutures_depthofmarket_mach_v1_3_a.maximum_size.dissect(buffer, index, packet, parent)

  -- Tick: Price9S
  index, tick = miax_onyxfutures_depthofmarket_mach_v1_3_a.tick.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: Alphanumeric
  index, unit_of_measure = miax_onyxfutures_depthofmarket_mach_v1_3_a.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Unit Of Measure Quantity: BinaryU
  index, unit_of_measure_quantity = miax_onyxfutures_depthofmarket_mach_v1_3_a.unit_of_measure_quantity.dissect(buffer, index, packet, parent)

  -- Settlement Price: Price9S
  index, settlement_price = miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price.dissect(buffer, index, packet, parent)

  -- Settlement Price Type Calc Method: Alphanumeric
  index, settlement_price_type_calc_method = miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price_type_calc_method.dissect(buffer, index, packet, parent)

  -- Total Volume: BinaryU
  index, total_volume = miax_onyxfutures_depthofmarket_mach_v1_3_a.total_volume.dissect(buffer, index, packet, parent)

  -- Open Interest Quantity: BinaryU
  index, open_interest_quantity = miax_onyxfutures_depthofmarket_mach_v1_3_a.open_interest_quantity.dissect(buffer, index, packet, parent)

  -- High Limit Price: Price9S
  index, high_limit_price = miax_onyxfutures_depthofmarket_mach_v1_3_a.high_limit_price.dissect(buffer, index, packet, parent)

  -- Low Limit Price: Price9S
  index, low_limit_price = miax_onyxfutures_depthofmarket_mach_v1_3_a.low_limit_price.dissect(buffer, index, packet, parent)

  -- Trading Collar Variation Type: Alphanumeric
  index, trading_collar_variation_type = miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_collar_variation_type.dissect(buffer, index, packet, parent)

  -- Trading Collar Variation: Price9S
  index, trading_collar_variation = miax_onyxfutures_depthofmarket_mach_v1_3_a.trading_collar_variation.dissect(buffer, index, packet, parent)

  -- Contract Date: BinaryU
  index, contract_date = miax_onyxfutures_depthofmarket_mach_v1_3_a.contract_date.dissect(buffer, index, packet, parent)

  -- Maturity Date: Date
  index, maturity_date = miax_onyxfutures_depthofmarket_mach_v1_3_a.maturity_date.dissect(buffer, index, packet, parent)

  -- Valuation Date: Date
  index, valuation_date = miax_onyxfutures_depthofmarket_mach_v1_3_a.valuation_date.dissect(buffer, index, packet, parent)

  -- First Trade Date: Date
  index, first_trade_date = miax_onyxfutures_depthofmarket_mach_v1_3_a.first_trade_date.dissect(buffer, index, packet, parent)

  -- Last Trade Date: Date
  index, last_trade_date = miax_onyxfutures_depthofmarket_mach_v1_3_a.last_trade_date.dissect(buffer, index, packet, parent)

  -- First Notice Date: Date
  index, first_notice_date = miax_onyxfutures_depthofmarket_mach_v1_3_a.first_notice_date.dissect(buffer, index, packet, parent)

  -- Last Notice Date: Date
  index, last_notice_date = miax_onyxfutures_depthofmarket_mach_v1_3_a.last_notice_date.dissect(buffer, index, packet, parent)

  -- First Delivery Date: Date
  index, first_delivery_date = miax_onyxfutures_depthofmarket_mach_v1_3_a.first_delivery_date.dissect(buffer, index, packet, parent)

  -- Last Delivery Date: Date
  index, last_delivery_date = miax_onyxfutures_depthofmarket_mach_v1_3_a.last_delivery_date.dissect(buffer, index, packet, parent)

  -- Option Strike Price: Price9S
  index, option_strike_price = miax_onyxfutures_depthofmarket_mach_v1_3_a.option_strike_price.dissect(buffer, index, packet, parent)

  -- Option Strike Currency: Alphanumeric
  index, option_strike_currency = miax_onyxfutures_depthofmarket_mach_v1_3_a.option_strike_currency.dissect(buffer, index, packet, parent)

  -- Option Type: Alphanumeric
  index, option_type = miax_onyxfutures_depthofmarket_mach_v1_3_a.option_type.dissect(buffer, index, packet, parent)

  -- Option Expiration Type: Alphanumeric
  index, option_expiration_type = miax_onyxfutures_depthofmarket_mach_v1_3_a.option_expiration_type.dissect(buffer, index, packet, parent)

  -- Underlying Future Instrument Id: BinaryU
  index, underlying_future_instrument_id = miax_onyxfutures_depthofmarket_mach_v1_3_a.underlying_future_instrument_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Instrument Definition Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.simple_instrument_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.simple_instrument_definition_message, buffer(offset, 0))
    local index = miax_onyxfutures_depthofmarket_mach_v1_3_a.simple_instrument_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.simple_instrument_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_depthofmarket_mach_v1_3_a.simple_instrument_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Data
miax_onyxfutures_depthofmarket_mach_v1_3_a.data = {}

-- Dissect: Data
miax_onyxfutures_depthofmarket_mach_v1_3_a.data.dispatch = {
  [1] = miax_onyxfutures_depthofmarket_mach_v1_3_a.simple_instrument_definition_message.dissect,
  [17] = miax_onyxfutures_depthofmarket_mach_v1_3_a.complex_instrument_definition_message.dissect,
  [2] = miax_onyxfutures_depthofmarket_mach_v1_3_a.complex_instrument_definition_deprecated_message.dissect,
  [3] = miax_onyxfutures_depthofmarket_mach_v1_3_a.system_state_message.dissect,
  [4] = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_trading_status_notification_message.dissect,
  [5] = miax_onyxfutures_depthofmarket_mach_v1_3_a.anticipated_opening_price_message.dissect,
  [6] = miax_onyxfutures_depthofmarket_mach_v1_3_a.settlement_price_update_message.dissect,
  [7] = miax_onyxfutures_depthofmarket_mach_v1_3_a.open_interest_update_message.dissect,
  [8] = miax_onyxfutures_depthofmarket_mach_v1_3_a.total_volume_update_message.dissect,
  [9] = miax_onyxfutures_depthofmarket_mach_v1_3_a.instrument_clear_message.dissect,
  [10] = miax_onyxfutures_depthofmarket_mach_v1_3_a.add_order_message.dissect,
  [11] = miax_onyxfutures_depthofmarket_mach_v1_3_a.modify_order_message.dissect,
  [12] = miax_onyxfutures_depthofmarket_mach_v1_3_a.delete_order_message.dissect,
  [13] = miax_onyxfutures_depthofmarket_mach_v1_3_a.order_execution_message.dissect,
  [14] = miax_onyxfutures_depthofmarket_mach_v1_3_a.trade_cancel_message.dissect,
}

miax_onyxfutures_depthofmarket_mach_v1_3_a.data.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = miax_onyxfutures_depthofmarket_mach_v1_3_a.data.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Application Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.application_message = {}

-- Read runtime size of: Application Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.application_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 4, 2):le_uint()

  return packet_length - 12
end

-- Display: Application Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.application_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Application Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.application_message.fields = function(buffer, offset, packet, parent, size_of_application_message)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 15 values
  index, message_type = miax_onyxfutures_depthofmarket_mach_v1_3_a.message_type.dissect(buffer, index, packet, parent)

  -- Data: Runtime Type with 15 branches
  index = miax_onyxfutures_depthofmarket_mach_v1_3_a.data.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Application Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.application_message.dissect = function(buffer, offset, packet, parent, size_of_application_message)
  local size_of_application_message = miax_onyxfutures_depthofmarket_mach_v1_3_a.application_message.size(buffer, offset)
  local index = offset + size_of_application_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.application_message, buffer(offset, 0))
    local current = miax_onyxfutures_depthofmarket_mach_v1_3_a.application_message.fields(buffer, offset, packet, parent, size_of_application_message)
    parent:set_len(size_of_application_message)
    local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.application_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_onyxfutures_depthofmarket_mach_v1_3_a.application_message.fields(buffer, offset, packet, parent, size_of_application_message)

    return index
  end
end

-- Payload
miax_onyxfutures_depthofmarket_mach_v1_3_a.payload = {}

-- Dissect: Payload
miax_onyxfutures_depthofmarket_mach_v1_3_a.payload.dispatch = {
  [3] = miax_onyxfutures_depthofmarket_mach_v1_3_a.application_message.dissect,
  [0] = miax_onyxfutures_depthofmarket_mach_v1_3_a.heartbeat.dissect,
  [1] = miax_onyxfutures_depthofmarket_mach_v1_3_a.start_of_session.dissect,
  [2] = miax_onyxfutures_depthofmarket_mach_v1_3_a.end_of_session.dissect,
}

miax_onyxfutures_depthofmarket_mach_v1_3_a.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  local dissect = miax_onyxfutures_depthofmarket_mach_v1_3_a.payload.dispatch[packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Mach Packet Header
miax_onyxfutures_depthofmarket_mach_v1_3_a.mach_packet_header = {}

-- Size: Mach Packet Header
miax_onyxfutures_depthofmarket_mach_v1_3_a.mach_packet_header.size =
  miax_onyxfutures_depthofmarket_mach_v1_3_a.sequence_number.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.packet_length.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.packet_type.size + 
  miax_onyxfutures_depthofmarket_mach_v1_3_a.session_number.size

-- Display: Mach Packet Header
miax_onyxfutures_depthofmarket_mach_v1_3_a.mach_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mach Packet Header
miax_onyxfutures_depthofmarket_mach_v1_3_a.mach_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = miax_onyxfutures_depthofmarket_mach_v1_3_a.sequence_number.dissect(buffer, index, packet, parent)

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = miax_onyxfutures_depthofmarket_mach_v1_3_a.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, packet_type = miax_onyxfutures_depthofmarket_mach_v1_3_a.packet_type.dissect(buffer, index, packet, parent)

  -- Session Number: 1 Byte Unsigned Fixed Width Integer
  index, session_number = miax_onyxfutures_depthofmarket_mach_v1_3_a.session_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mach Packet Header
miax_onyxfutures_depthofmarket_mach_v1_3_a.mach_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.mach_packet_header, buffer(offset, 0))
    local index = miax_onyxfutures_depthofmarket_mach_v1_3_a.mach_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.mach_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_depthofmarket_mach_v1_3_a.mach_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Mach Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.mach_message = {}

-- Display: Mach Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.mach_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mach Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.mach_message.fields = function(buffer, offset, packet, parent, size_of_mach_message)
  local index = offset

  -- Mach Packet Header: Struct of 4 fields
  index, mach_packet_header = miax_onyxfutures_depthofmarket_mach_v1_3_a.mach_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 2, 1):uint()

  -- Payload: Runtime Type with 4 branches
  index = miax_onyxfutures_depthofmarket_mach_v1_3_a.payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Mach Message
miax_onyxfutures_depthofmarket_mach_v1_3_a.mach_message.dissect = function(buffer, offset, packet, parent, size_of_mach_message)
  local index = offset + size_of_mach_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.fields.mach_message, buffer(offset, 0))
    local current = miax_onyxfutures_depthofmarket_mach_v1_3_a.mach_message.fields(buffer, offset, packet, parent, size_of_mach_message)
    parent:set_len(size_of_mach_message)
    local display = miax_onyxfutures_depthofmarket_mach_v1_3_a.mach_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_onyxfutures_depthofmarket_mach_v1_3_a.mach_message.fields(buffer, offset, packet, parent, size_of_mach_message)

    return index
  end
end

-- Packet
miax_onyxfutures_depthofmarket_mach_v1_3_a.packet = {}

-- Verify required size of Udp packet
miax_onyxfutures_depthofmarket_mach_v1_3_a.packet.requiredsize = function(buffer)
  return buffer:len() >= miax_onyxfutures_depthofmarket_mach_v1_3_a.mach_packet_header.size
end

-- Dissect Packet
miax_onyxfutures_depthofmarket_mach_v1_3_a.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Mach Message
  local end_of_payload = buffer:len()

  -- Mach Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Packet Length
    local packet_length = buffer(index + 8, 2):le_uint()

    -- Runtime Size Of: Mach Message
    index, mach_message = miax_onyxfutures_depthofmarket_mach_v1_3_a.mach_message.dissect(buffer, index, packet, parent, packet_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.init()
end

-- Dissector for Miax OnyxFutures DepthOfMarket Mach 1.3.a
function omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.name

  -- Dissect protocol
  local protocol = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a, buffer(), omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.description, "("..buffer:len().." Bytes)")
  return miax_onyxfutures_depthofmarket_mach_v1_3_a.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Miax OnyxFutures DepthOfMarket Mach 1.3.a (Udp)
local function omi_miax_onyxfutures_depthofmarket_mach_v1_3_a_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_onyxfutures_depthofmarket_mach_v1_3_a.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_onyxfutures_depthofmarket_mach_v1_3_a
  omi_miax_onyxfutures_depthofmarket_mach_v1_3_a.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Miax OnyxFutures DepthOfMarket Mach 1.3.a
omi_miax_onyxfutures_depthofmarket_mach_v1_3_a:register_heuristic("udp", omi_miax_onyxfutures_depthofmarket_mach_v1_3_a_udp_heuristic)

-- Register Miax OnyxFutures DepthOfMarket Mach 1.3.a for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_miax_onyxfutures_depthofmarket_mach_v1_3_a)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Miami International Holdings
--   Version: 1.3.a
--   Date: Friday, July 31, 2026
--   Specification: ONYX_DoM_Feed_v1.3a.pdf
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
