-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Gpw Wse ReplayFullDepth Wats 1.7.6.20 Protocol
local omi_gpw_wse_replayfulldepth_wats_v1_7_6_20 = Proto("Omi.Gpw.Wse.ReplayFullDepth.Wats.v1.7.6.20", "Gpw Wse ReplayFullDepth Wats 1.7.6.20")

-- Protocol table
local gpw_wse_replayfulldepth_wats_v1_7_6_20 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Gpw Wse ReplayFullDepth Wats 1.7.6.20 Fields
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.accrued_interest_table_entry_date = ProtoField.new("Accrued Interest Table Entry Date", "gpw.wse.replayfulldepth.wats.v1.7.6.20.accruedinteresttableentrydate", ftypes.UINT32)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.accrued_interest_table_entry_value = ProtoField.new("Accrued Interest Table Entry Value", "gpw.wse.replayfulldepth.wats.v1.7.6.20.accruedinteresttableentryvalue", ftypes.DOUBLE)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.accrued_interest_value = ProtoField.new("Accrued Interest Value", "gpw.wse.replayfulldepth.wats.v1.7.6.20.accruedinterestvalue", ftypes.DOUBLE, nil, nil, nil, "Accrued iterest value of the instrument")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.accumulated_interest = ProtoField.new("Accumulated Interest", "gpw.wse.replayfulldepth.wats.v1.7.6.20.accumulatedinterest", ftypes.DOUBLE, nil, nil, nil, "Accumulated interest on the bonds or for mortgage-backed bonds on the day of settling the transaction")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.adjusted_closing_price = ProtoField.new("Adjusted Closing Price", "gpw.wse.replayfulldepth.wats.v1.7.6.20.adjustedclosingprice", ftypes.DOUBLE, nil, nil, nil, "Adjusted Closing Price (ACP)")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.adjusted_closing_price_reason = ProtoField.new("Adjusted Closing Price Reason", "gpw.wse.replayfulldepth.wats.v1.7.6.20.adjustedclosingpricereason", ftypes.UINT8, nil, nil, nil, "Reason for adjusting the Closing Price")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.auction_type = ProtoField.new("Auction Type", "gpw.wse.replayfulldepth.wats.v1.7.6.20.auctiontype", ftypes.UINT8, nil, nil, nil, "Type of auction")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.best_buy_level = ProtoField.new("Best Buy Level", "gpw.wse.replayfulldepth.wats.v1.7.6.20.bestbuylevel", ftypes.DOUBLE, nil, nil, nil, "Best buy price level (1st BBO level)")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.best_buy_level_quantity = ProtoField.new("Best Buy Level Quantity", "gpw.wse.replayfulldepth.wats.v1.7.6.20.bestbuylevelquantity", ftypes.UINT64, nil, nil, nil, "Quantity at the best buy price level")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.best_sell_level = ProtoField.new("Best Sell Level", "gpw.wse.replayfulldepth.wats.v1.7.6.20.bestselllevel", ftypes.DOUBLE, nil, nil, nil, "Best sell price level (1st BBO level)")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.best_sell_level_quantity = ProtoField.new("Best Sell Level Quantity", "gpw.wse.replayfulldepth.wats.v1.7.6.20.bestselllevelquantity", ftypes.UINT64, nil, nil, nil, "Quantity at the best sell price level")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.block_instrument = ProtoField.new("Block Instrument", "gpw.wse.replayfulldepth.wats.v1.7.6.20.blockinstrument", ftypes.STRING, nil, nil, nil, "SingleInstrumentSummary")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.bond_coupon_type = ProtoField.new("Bond Coupon Type", "gpw.wse.replayfulldepth.wats.v1.7.6.20.bondcoupontype", ftypes.UINT8, nil, nil, nil, "Coupon type for a bond")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.buy = ProtoField.new("Buy", "gpw.wse.replayfulldepth.wats.v1.7.6.20.buy", ftypes.STRING, nil, nil, nil, "PriceLevel table")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.calendar_exception_date = ProtoField.new("Calendar Exception Date", "gpw.wse.replayfulldepth.wats.v1.7.6.20.calendarexceptiondate", ftypes.UINT32)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.calendar_exception_type = ProtoField.new("Calendar Exception Type", "gpw.wse.replayfulldepth.wats.v1.7.6.20.calendarexceptiontype", ftypes.UINT8)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.calendar_id = ProtoField.new("Calendar Id", "gpw.wse.replayfulldepth.wats.v1.7.6.20.calendarid", ftypes.UINT32)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.cfi = ProtoField.new("Cfi", "gpw.wse.replayfulldepth.wats.v1.7.6.20.cfi", ftypes.STRING, nil, nil, nil, "CFI (Classification of Financial Instrument) code")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.clat_id = ProtoField.new("Clat Id", "gpw.wse.replayfulldepth.wats.v1.7.6.20.clatid", ftypes.UINT32, nil, nil, nil, "ID of last auction phase")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.clob_instrument = ProtoField.new("Clob Instrument", "gpw.wse.replayfulldepth.wats.v1.7.6.20.clobinstrument", ftypes.STRING, nil, nil, nil, "SingleInstrumentSummary")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.closing_capitalisation_portfolio = ProtoField.new("Closing Capitalisation Portfolio", "gpw.wse.replayfulldepth.wats.v1.7.6.20.closingcapitalisationportfolio", ftypes.DOUBLE, nil, nil, nil, "Capitalisation of the portfolio for the closing index expressed in the currency of the index, on basis of which the closing index is calculated")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.closing_index_value = ProtoField.new("Closing Index Value", "gpw.wse.replayfulldepth.wats.v1.7.6.20.closingindexvalue", ftypes.DOUBLE)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.closing_price = ProtoField.new("Closing Price", "gpw.wse.replayfulldepth.wats.v1.7.6.20.closingprice", ftypes.DOUBLE, nil, nil, nil, "Closing Price (CP)")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.closing_price_type = ProtoField.new("Closing Price Type", "gpw.wse.replayfulldepth.wats.v1.7.6.20.closingpricetype", ftypes.UINT8)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.collar_expression = ProtoField.new("Collar Expression", "gpw.wse.replayfulldepth.wats.v1.7.6.20.collarexpression", ftypes.UINT8, nil, nil, nil, "Collar expression (percentage or absolute value in reference price)")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.collar_group_id = ProtoField.new("Collar Group Id", "gpw.wse.replayfulldepth.wats.v1.7.6.20.collargroupid", ftypes.UINT32)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.collar_lower_ask = ProtoField.new("Collar Lower Ask", "gpw.wse.replayfulldepth.wats.v1.7.6.20.collarlowerask", ftypes.DOUBLE, nil, nil, nil, "Lower ask collar")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.collar_lower_bid = ProtoField.new("Collar Lower Bid", "gpw.wse.replayfulldepth.wats.v1.7.6.20.collarlowerbid", ftypes.DOUBLE, nil, nil, nil, "Lower bid collar")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.collar_lower_bound = ProtoField.new("Collar Lower Bound", "gpw.wse.replayfulldepth.wats.v1.7.6.20.collarlowerbound", ftypes.DOUBLE)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.collar_mode = ProtoField.new("Collar Mode", "gpw.wse.replayfulldepth.wats.v1.7.6.20.collarmode", ftypes.UINT8, nil, nil, nil, "Collar mode (trade price collar or order price collar)")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.collar_table_id = ProtoField.new("Collar Table Id", "gpw.wse.replayfulldepth.wats.v1.7.6.20.collartableid", ftypes.UINT32)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.collar_type = ProtoField.new("Collar Type", "gpw.wse.replayfulldepth.wats.v1.7.6.20.collartype", ftypes.UINT8, nil, nil, nil, "Collars type")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.collar_upper_ask = ProtoField.new("Collar Upper Ask", "gpw.wse.replayfulldepth.wats.v1.7.6.20.collarupperask", ftypes.DOUBLE, nil, nil, nil, "Upper ask collar")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.collar_upper_bid = ProtoField.new("Collar Upper Bid", "gpw.wse.replayfulldepth.wats.v1.7.6.20.collarupperbid", ftypes.DOUBLE, nil, nil, nil, "Upper bid collar")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.collar_value = ProtoField.new("Collar Value", "gpw.wse.replayfulldepth.wats.v1.7.6.20.collarvalue", ftypes.DOUBLE)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.correction_coefficient = ProtoField.new("Correction Coefficient", "gpw.wse.replayfulldepth.wats.v1.7.6.20.correctioncoefficient", ftypes.DOUBLE, nil, nil, nil, "Index adjustment coefficient K(t)")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.count = ProtoField.new("Count", "gpw.wse.replayfulldepth.wats.v1.7.6.20.count", ftypes.UINT8, nil, nil, nil, "How many elements does IndexUnderlyings contain")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.cross_instrument = ProtoField.new("Cross Instrument", "gpw.wse.replayfulldepth.wats.v1.7.6.20.crossinstrument", ftypes.STRING, nil, nil, nil, "SingleInstrumentSummary")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.currency = ProtoField.new("Currency", "gpw.wse.replayfulldepth.wats.v1.7.6.20.currency", ftypes.UINT16, nil, nil, nil, "Trading currency (e.g")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.date = ProtoField.new("Date", "gpw.wse.replayfulldepth.wats.v1.7.6.20.date", ftypes.UINT32, nil, nil, nil, "Date of the business session when provided and 0 for StartOfTechnicalSession and EndOfTechnicalSession events")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.date_validity = ProtoField.new("Date Validity", "gpw.wse.replayfulldepth.wats.v1.7.6.20.datevalidity", ftypes.UINT32, nil, nil, nil, "Date of validity of index portfolio")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.days_since_last_publication = ProtoField.new("Days Since Last Publication", "gpw.wse.replayfulldepth.wats.v1.7.6.20.dayssincelastpublication", ftypes.UINT8, nil, nil, nil, "Number of calendar days between current session and the previous session day")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.delta = ProtoField.new("Delta", "gpw.wse.replayfulldepth.wats.v1.7.6.20.delta", ftypes.DOUBLE, nil, nil, nil, "Value of Delta indicator from the current session")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.description = ProtoField.new("Description", "gpw.wse.replayfulldepth.wats.v1.7.6.20.description", ftypes.STRING, nil, nil, nil, "Financial instrument code")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.difference_central_spread = ProtoField.new("Difference Central Spread", "gpw.wse.replayfulldepth.wats.v1.7.6.20.differencecentralspread", ftypes.DOUBLE, nil, nil, nil, "The point difference between midSpreadIndex and indexValue")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.dividend = ProtoField.new("Dividend", "gpw.wse.replayfulldepth.wats.v1.7.6.20.dividend", ftypes.UINT8, nil, nil, nil, "The positive field value (true) informs that the instruments are traded the first time after determining the right to dividend")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.dividend_rate = ProtoField.new("Dividend Rate", "gpw.wse.replayfulldepth.wats.v1.7.6.20.dividendrate", ftypes.DOUBLE, nil, nil, nil, "Dividend rate for the company is given on the basis of dividends paid by companies being the base instrument for futures and options")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.dynamic_collar_volatility_auction_id = ProtoField.new("Dynamic Collar Volatility Auction Id", "gpw.wse.replayfulldepth.wats.v1.7.6.20.dynamiccollarvolatilityauctionid", ftypes.UINT32)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.encryption_key_id = ProtoField.new("Encryption Key Id", "gpw.wse.replayfulldepth.wats.v1.7.6.20.encryptionkeyid", ftypes.UINT32, nil, nil, nil, "Encryption Key ID - reference to a EncryptionKey message")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.encryption_offset = ProtoField.new("Encryption Offset", "gpw.wse.replayfulldepth.wats.v1.7.6.20.encryptionoffset", ftypes.UINT64, nil, nil, nil, "Encryption byte offset")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.end_seq_num = ProtoField.new("End Seq Num", "gpw.wse.replayfulldepth.wats.v1.7.6.20.endseqnum", ftypes.UINT32, nil, nil, nil, "Final sequence number for the requested range")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.end_trading_date = ProtoField.new("End Trading Date", "gpw.wse.replayfulldepth.wats.v1.7.6.20.endtradingdate", ftypes.UINT32, nil, nil, nil, "End of trading date")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.entry_number = ProtoField.new("Entry Number", "gpw.wse.replayfulldepth.wats.v1.7.6.20.entrynumber", ftypes.UINT8, nil, nil, nil, "News entry number")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.event_type_event_type = ProtoField.new("Event Type Event Type", "gpw.wse.replayfulldepth.wats.v1.7.6.20.eventtypeeventtype", ftypes.UINT8, nil, nil, nil, "Test event type")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.event_type_order_book_event_type = ProtoField.new("Event Type Order Book Event Type", "gpw.wse.replayfulldepth.wats.v1.7.6.20.eventtypeorderbookeventtype", ftypes.UINT8, nil, nil, nil, "Type/Kind of book event")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.execution_price = ProtoField.new("Execution Price", "gpw.wse.replayfulldepth.wats.v1.7.6.20.executionprice", ftypes.DOUBLE, nil, nil, nil, "Price at which the order was executed")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.execution_quantity = ProtoField.new("Execution Quantity", "gpw.wse.replayfulldepth.wats.v1.7.6.20.executionquantity", ftypes.UINT64, nil, nil, nil, "The order’s executed quantity")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.exercise_type = ProtoField.new("Exercise Type", "gpw.wse.replayfulldepth.wats.v1.7.6.20.exercisetype", ftypes.UINT8, nil, nil, nil, "Identifier of exercise style")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.expiry_date = ProtoField.new("Expiry Date", "gpw.wse.replayfulldepth.wats.v1.7.6.20.expirydate", ftypes.UINT32, nil, nil, nil, "Expiration date")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.ext_dynamic_collar_volatility_auction_id = ProtoField.new("Ext Dynamic Collar Volatility Auction Id", "gpw.wse.replayfulldepth.wats.v1.7.6.20.extdynamiccollarvolatilityauctionid", ftypes.UINT32, nil, nil, nil, "ID of Dynamic Collar Volatility Auction")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.ext_static_collar_volatility_auction_id = ProtoField.new("Ext Static Collar Volatility Auction Id", "gpw.wse.replayfulldepth.wats.v1.7.6.20.extstaticcollarvolatilityauctionid", ftypes.UINT32, nil, nil, nil, "ID of Static Collar Volatility Auction")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.external_underlying_id = ProtoField.new("External Underlying Id", "gpw.wse.replayfulldepth.wats.v1.7.6.20.externalunderlyingid", ftypes.UINT32)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.first_trading_date = ProtoField.new("First Trading Date", "gpw.wse.replayfulldepth.wats.v1.7.6.20.firsttradingdate", ftypes.UINT32, nil, nil, nil, "First trading day of the financial instrument")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.fisn = ProtoField.new("Fisn", "gpw.wse.replayfulldepth.wats.v1.7.6.20.fisn", ftypes.STRING, nil, nil, nil, "Product FISN (Financial Instrument Short Name) code")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.gamma = ProtoField.new("Gamma", "gpw.wse.replayfulldepth.wats.v1.7.6.20.gamma", ftypes.DOUBLE, nil, nil, nil, "Value of Gamma indicator from the current session")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.has_days_since_last_publication = ProtoField.new("Has Days Since Last Publication", "gpw.wse.replayfulldepth.wats.v1.7.6.20.hasdayssincelastpublication", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.has_difference_central_spread = ProtoField.new("Has Difference Central Spread", "gpw.wse.replayfulldepth.wats.v1.7.6.20.hasdifferencecentralspread", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.has_index_value_ask = ProtoField.new("Has Index Value Ask", "gpw.wse.replayfulldepth.wats.v1.7.6.20.hasindexvalueask", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.has_index_value_bid = ProtoField.new("Has Index Value Bid", "gpw.wse.replayfulldepth.wats.v1.7.6.20.hasindexvaluebid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.has_instrument_id = ProtoField.new("Has Instrument Id", "gpw.wse.replayfulldepth.wats.v1.7.6.20.hasinstrumentid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.has_mid_spread_index = ProtoField.new("Has Mid Spread Index", "gpw.wse.replayfulldepth.wats.v1.7.6.20.hasmidspreadindex", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.has_number_of_dividends = ProtoField.new("Has Number Of Dividends", "gpw.wse.replayfulldepth.wats.v1.7.6.20.hasnumberofdividends", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.has_session_avg = ProtoField.new("Has Session Avg", "gpw.wse.replayfulldepth.wats.v1.7.6.20.hassessionavg", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.has_trading_value = ProtoField.new("Has Trading Value", "gpw.wse.replayfulldepth.wats.v1.7.6.20.hastradingvalue", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.hybrid_instrument = ProtoField.new("Hybrid Instrument", "gpw.wse.replayfulldepth.wats.v1.7.6.20.hybridinstrument", ftypes.STRING, nil, nil, nil, "SingleInstrumentSummary")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.iceberg_min_value = ProtoField.new("Iceberg Min Value", "gpw.wse.replayfulldepth.wats.v1.7.6.20.icebergminvalue", ftypes.DOUBLE, nil, nil, nil, "Minimum iceberg order value")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.id = ProtoField.new("Id", "gpw.wse.replayfulldepth.wats.v1.7.6.20.id", ftypes.UINT32, nil, nil, nil, "ID of the market structure")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.ind_index_opening_portfolio = ProtoField.new("Ind Index Opening Portfolio", "gpw.wse.replayfulldepth.wats.v1.7.6.20.indindexopeningportfolio", ftypes.DOUBLE, nil, nil, nil, "Indicator of the index opening portfolio W(t)")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.index_base_capitalisation = ProtoField.new("Index Base Capitalisation", "gpw.wse.replayfulldepth.wats.v1.7.6.20.indexbasecapitalisation", ftypes.DOUBLE)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.index_base_date = ProtoField.new("Index Base Date", "gpw.wse.replayfulldepth.wats.v1.7.6.20.indexbasedate", ftypes.UINT32)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.index_base_value = ProtoField.new("Index Base Value", "gpw.wse.replayfulldepth.wats.v1.7.6.20.indexbasevalue", ftypes.DOUBLE)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.index_id = ProtoField.new("Index Id", "gpw.wse.replayfulldepth.wats.v1.7.6.20.indexid", ftypes.UINT32, nil, nil, nil, "ID of index")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.index_level_code = ProtoField.new("Index Level Code", "gpw.wse.replayfulldepth.wats.v1.7.6.20.indexlevelcode", ftypes.UINT8, nil, nil, nil, "Level of the index")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.index_publication_schedule = ProtoField.new("Index Publication Schedule", "gpw.wse.replayfulldepth.wats.v1.7.6.20.indexpublicationschedule", ftypes.UINT8, nil, nil, nil, "Mode of index dissemination")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.index_type = ProtoField.new("Index Type", "gpw.wse.replayfulldepth.wats.v1.7.6.20.indextype", ftypes.UINT8, nil, nil, nil, "Index product classification")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.index_underlying = ProtoField.new("Index Underlying", "gpw.wse.replayfulldepth.wats.v1.7.6.20.indexunderlying", ftypes.STRING, nil, nil, nil, "IndexUnderlying")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.index_underlying_type = ProtoField.new("Index Underlying Type", "gpw.wse.replayfulldepth.wats.v1.7.6.20.indexunderlyingtype", ftypes.UINT8, nil, nil, nil, "Underlying type of index")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.index_underlyings = ProtoField.new("Index Underlyings", "gpw.wse.replayfulldepth.wats.v1.7.6.20.indexunderlyings", ftypes.STRING, nil, nil, nil, "IndexUnderlyings")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.index_value = ProtoField.new("Index Value", "gpw.wse.replayfulldepth.wats.v1.7.6.20.indexvalue", ftypes.DOUBLE, nil, nil, nil, "The value of the last level for the index according to the definition provided in the indexLevelCode")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.index_value_ask = ProtoField.new("Index Value Ask", "gpw.wse.replayfulldepth.wats.v1.7.6.20.indexvalueask", ftypes.DOUBLE, nil, nil, nil, "Value of the sell index based on the best sell offers of instruments")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.index_value_bid = ProtoField.new("Index Value Bid", "gpw.wse.replayfulldepth.wats.v1.7.6.20.indexvaluebid", ftypes.DOUBLE, nil, nil, nil, "Value of the buy index based on the best sell offers of instruments")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.indexation_table_entry_date = ProtoField.new("Indexation Table Entry Date", "gpw.wse.replayfulldepth.wats.v1.7.6.20.indexationtableentrydate", ftypes.UINT32)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.indexation_table_entry_value = ProtoField.new("Indexation Table Entry Value", "gpw.wse.replayfulldepth.wats.v1.7.6.20.indexationtableentryvalue", ftypes.DOUBLE)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.indicative_matching_price = ProtoField.new("Indicative Matching Price", "gpw.wse.replayfulldepth.wats.v1.7.6.20.indicativematchingprice", ftypes.DOUBLE, nil, nil, nil, "Indicative Matching Price (IMP)")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.indicative_matching_volume = ProtoField.new("Indicative Matching Volume", "gpw.wse.replayfulldepth.wats.v1.7.6.20.indicativematchingvolume", ftypes.UINT64, nil, nil, nil, "Indicative Matching Volume (IMV)")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.initial_phase_id = ProtoField.new("Initial Phase Id", "gpw.wse.replayfulldepth.wats.v1.7.6.20.initialphaseid", ftypes.UINT32, nil, nil, nil, "Id of starting phase for the instrument")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.instrument_id = ProtoField.new("Instrument Id", "gpw.wse.replayfulldepth.wats.v1.7.6.20.instrumentid", ftypes.UINT32, nil, nil, nil, "ID of financial instrument")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.instrument_packet = ProtoField.new("Instrument Packet", "gpw.wse.replayfulldepth.wats.v1.7.6.20.instrumentpacket", ftypes.UINT64, nil, nil, nil, "Instrument packet in index portfolio / of information product")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.interest_rate = ProtoField.new("Interest Rate", "gpw.wse.replayfulldepth.wats.v1.7.6.20.interestrate", ftypes.DOUBLE, nil, nil, nil, "Interest rate is determined on the basis of WIBOR/WIBID/WIRON rates for each expiration date of options and futures")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.interim_dividend_right = ProtoField.new("Interim Dividend Right", "gpw.wse.replayfulldepth.wats.v1.7.6.20.interimdividendright", ftypes.UINT8, nil, nil, nil, "The positive field value (true) informs that the instruments are traded the first time after determining the interim dividend right")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.is_correction = ProtoField.new("Is Correction", "gpw.wse.replayfulldepth.wats.v1.7.6.20.iscorrection", ftypes.UINT8, nil, nil, nil, "Previous message correction flag")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.is_encrypted = ProtoField.new("Is Encrypted", "gpw.wse.replayfulldepth.wats.v1.7.6.20.isencrypted", ftypes.UINT8, nil, nil, nil, "A boolean value specifying whether the level is encrypted")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.is_leverage = ProtoField.new("Is Leverage", "gpw.wse.replayfulldepth.wats.v1.7.6.20.isleverage", ftypes.UINT8, nil, nil, nil, "Identifier of leverage instruments")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.issue_size = ProtoField.new("Issue Size", "gpw.wse.replayfulldepth.wats.v1.7.6.20.issuesize", ftypes.UINT64, nil, nil, nil, "Size of the issue (depends on the issue size type)")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.issuer = ProtoField.new("Issuer", "gpw.wse.replayfulldepth.wats.v1.7.6.20.issuer", ftypes.STRING, nil, nil, nil, "Name of the issuer")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.issuer_reg_country = ProtoField.new("Issuer Reg Country", "gpw.wse.replayfulldepth.wats.v1.7.6.20.issuerregcountry", ftypes.UINT16, nil, nil, nil, "Identifier of the country of the registration")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.items = ProtoField.new("Items", "gpw.wse.replayfulldepth.wats.v1.7.6.20.items", ftypes.STRING, nil, nil, nil, "IndexUnderlying Array")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.kid = ProtoField.new("Kid", "gpw.wse.replayfulldepth.wats.v1.7.6.20.kid", ftypes.STRING)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.kid_issue_date = ProtoField.new("Kid Issue Date", "gpw.wse.replayfulldepth.wats.v1.7.6.20.kidissuedate", ftypes.UINT32)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.last_trade_date = ProtoField.new("Last Trade Date", "gpw.wse.replayfulldepth.wats.v1.7.6.20.lasttradedate", ftypes.UINT32, nil, nil, nil, "The date of execution of the last trade for the given instrument")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.last_traded_price = ProtoField.new("Last Traded Price", "gpw.wse.replayfulldepth.wats.v1.7.6.20.lasttradedprice", ftypes.DOUBLE, nil, nil, nil, "Last Traded Price (LTP)")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.last_trading_date = ProtoField.new("Last Trading Date", "gpw.wse.replayfulldepth.wats.v1.7.6.20.lasttradingdate", ftypes.UINT32, nil, nil, nil, "Last trading day of the financial instrument")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.liquidity = ProtoField.new("Liquidity", "gpw.wse.replayfulldepth.wats.v1.7.6.20.liquidity", ftypes.UINT8, nil, nil, nil, "Liquidity flag, true - liquid, false - Illiquid")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.liquidity_support_pge = ProtoField.new("Liquidity Support Pge", "gpw.wse.replayfulldepth.wats.v1.7.6.20.liquiditysupportpge", ftypes.UINT8, nil, nil, nil, "The field informs if the company entered to Liquidity Support Programme")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.lot_size = ProtoField.new("Lot Size", "gpw.wse.replayfulldepth.wats.v1.7.6.20.lotsize", ftypes.UINT32, nil, nil, nil, "Lot size for the instrument")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.lower = ProtoField.new("Lower", "gpw.wse.replayfulldepth.wats.v1.7.6.20.lower", ftypes.DOUBLE, nil, nil, nil, "Value of the lower Price collar")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.lower_ask = ProtoField.new("Lower Ask", "gpw.wse.replayfulldepth.wats.v1.7.6.20.lowerask", ftypes.DOUBLE, nil, nil, nil, "Value of the lower ask Price collar")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.lower_bid = ProtoField.new("Lower Bid", "gpw.wse.replayfulldepth.wats.v1.7.6.20.lowerbid", ftypes.DOUBLE, nil, nil, nil, "Value of the lower bid Price collar")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.lower_bound = ProtoField.new("Lower Bound", "gpw.wse.replayfulldepth.wats.v1.7.6.20.lowerbound", ftypes.DOUBLE, nil, nil, nil, "Tick size lower bound")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.lower_liquidity = ProtoField.new("Lower Liquidity", "gpw.wse.replayfulldepth.wats.v1.7.6.20.lowerliquidity", ftypes.UINT8, nil, nil, nil, "The positive field value (true) informs if the company was qualified to Lower Liquidity Space")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.marker_price_change = ProtoField.new("Marker Price Change", "gpw.wse.replayfulldepth.wats.v1.7.6.20.markerpricechange", ftypes.UINT8, nil, nil, nil, "The field contains the direction of the percentage change in the instrument closing price from the current session in relation to the reference price")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.market = ProtoField.new("Market", "gpw.wse.replayfulldepth.wats.v1.7.6.20.market", ftypes.UINT8, nil, nil, nil, "Defines the market the instrument belongs to")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.market_id = ProtoField.new("Market Id", "gpw.wse.replayfulldepth.wats.v1.7.6.20.marketid", ftypes.STRING, nil, nil, nil, "Market structure's Market Identifier Code (MIC) as specified in ISO 10383")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.market_model_type = ProtoField.new("Market Model Type", "gpw.wse.replayfulldepth.wats.v1.7.6.20.marketmodeltype", ftypes.UINT8)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.market_structure_id = ProtoField.new("Market Structure Id", "gpw.wse.replayfulldepth.wats.v1.7.6.20.marketstructureid", ftypes.UINT32, nil, nil, nil, "ID of the financial instrument’s market segment")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.max_depth = ProtoField.new("Max Depth", "gpw.wse.replayfulldepth.wats.v1.7.6.20.maxdepth", ftypes.UINT8, nil, nil, nil, "The number of BBO levels contained in the message")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.max_price = ProtoField.new("Max Price", "gpw.wse.replayfulldepth.wats.v1.7.6.20.maxprice", ftypes.DOUBLE, nil, nil, nil, "Highest price of the instrument on the current trading day")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.message_length = ProtoField.new("Message Length", "gpw.wse.replayfulldepth.wats.v1.7.6.20.messagelength", ftypes.UINT16, nil, nil, nil, "Length of the message, which the worked example of section 6.1.4.2 shows includes the 42 byte header: an Instrument message states length 741 and occupies 741 bytes")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.message_type = ProtoField.new("Message Type", "gpw.wse.replayfulldepth.wats.v1.7.6.20.messagetype", ftypes.UINT16, nil, nil, nil, "Type of the message")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.message_version = ProtoField.new("Message Version", "gpw.wse.replayfulldepth.wats.v1.7.6.20.messageversion", ftypes.UINT16, nil, nil, nil, "Message version, used to differentiate between messages sent using different versions of the protocol")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mic = ProtoField.new("Mic", "gpw.wse.replayfulldepth.wats.v1.7.6.20.mic", ftypes.STRING, nil, nil, nil, "Market structure's Market Identifier Code (MIC) as specified in ISO 10383")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mid_spread_index = ProtoField.new("Mid Spread Index", "gpw.wse.replayfulldepth.wats.v1.7.6.20.midspreadindex", ftypes.DOUBLE, nil, nil, nil, "Mean of indexValueBid and indexValueAsk")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.min_price = ProtoField.new("Min Price", "gpw.wse.replayfulldepth.wats.v1.7.6.20.minprice", ftypes.DOUBLE, nil, nil, nil, "Lowest price of the instrument on the current trading day")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mm_buy_quote_level = ProtoField.new("Mm Buy Quote Level", "gpw.wse.replayfulldepth.wats.v1.7.6.20.mmbuyquotelevel", ftypes.UINT8, nil, nil, nil, "Id of an level on which mm quote rests (0 means no mm)")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mm_quote = ProtoField.new("Mm Quote", "gpw.wse.replayfulldepth.wats.v1.7.6.20.mmquote", ftypes.UINT8, nil, nil, nil, "Market maker quote flag")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mm_sell_quote_level = ProtoField.new("Mm Sell Quote Level", "gpw.wse.replayfulldepth.wats.v1.7.6.20.mmsellquotelevel", ftypes.UINT8, nil, nil, nil, "Id of an level on which mm quote rests (0 means no mm)")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mmt_agency_cross_trade_indicator = ProtoField.new("Mmt Agency Cross Trade Indicator", "gpw.wse.replayfulldepth.wats.v1.7.6.20.mmtagencycrosstradeindicator", ftypes.UINT8)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mmt_algorithmic_indicator = ProtoField.new("Mmt Algorithmic Indicator", "gpw.wse.replayfulldepth.wats.v1.7.6.20.mmtalgorithmicindicator", ftypes.UINT8)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mmt_benchmark_reference_price_indicator = ProtoField.new("Mmt Benchmark Reference Price Indicator", "gpw.wse.replayfulldepth.wats.v1.7.6.20.mmtbenchmarkreferencepriceindicator", ftypes.UINT8, nil, nil, nil, "MMT Benchmark / Reference Price Indicator")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mmt_market_mechanism = ProtoField.new("Mmt Market Mechanism", "gpw.wse.replayfulldepth.wats.v1.7.6.20.mmtmarketmechanism", ftypes.UINT8)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mmt_modification_indicator = ProtoField.new("Mmt Modification Indicator", "gpw.wse.replayfulldepth.wats.v1.7.6.20.mmtmodificationindicator", ftypes.UINT8)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mmt_negotiation_indicator = ProtoField.new("Mmt Negotiation Indicator", "gpw.wse.replayfulldepth.wats.v1.7.6.20.mmtnegotiationindicator", ftypes.UINT8)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mmt_off_book_automated_indicator = ProtoField.new("Mmt Off Book Automated Indicator", "gpw.wse.replayfulldepth.wats.v1.7.6.20.mmtoffbookautomatedindicator", ftypes.UINT8)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mmt_ordinary_trade_indicator = ProtoField.new("Mmt Ordinary Trade Indicator", "gpw.wse.replayfulldepth.wats.v1.7.6.20.mmtordinarytradeindicator", ftypes.UINT8)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mmt_post_trade_deferral_reason = ProtoField.new("Mmt Post Trade Deferral Reason", "gpw.wse.replayfulldepth.wats.v1.7.6.20.mmtposttradedeferralreason", ftypes.UINT8, nil, nil, nil, "MMT Post-Trade Deferral Reason")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mmt_post_trade_deferral_type = ProtoField.new("Mmt Post Trade Deferral Type", "gpw.wse.replayfulldepth.wats.v1.7.6.20.mmtposttradedeferraltype", ftypes.UINT8, nil, nil, nil, "MMT Post-Trade Deferral Type")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mmt_special_dividend_indicator = ProtoField.new("Mmt Special Dividend Indicator", "gpw.wse.replayfulldepth.wats.v1.7.6.20.mmtspecialdividendindicator", ftypes.UINT8)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mmt_trading_mode = ProtoField.new("Mmt Trading Mode", "gpw.wse.replayfulldepth.wats.v1.7.6.20.mmttradingmode", ftypes.UINT8)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mmt_transaction_category = ProtoField.new("Mmt Transaction Category", "gpw.wse.replayfulldepth.wats.v1.7.6.20.mmttransactioncategory", ftypes.UINT8)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.multiplier_multiplier = ProtoField.new("Multiplier Multiplier", "gpw.wse.replayfulldepth.wats.v1.7.6.20.multipliermultiplier", ftypes.DOUBLE, nil, nil, nil, "Product value multiplier")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.multiplier_number = ProtoField.new("Multiplier Number", "gpw.wse.replayfulldepth.wats.v1.7.6.20.multipliernumber", ftypes.DOUBLE, nil, nil, nil, "Instrument multiplier")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.name = ProtoField.new("Name", "gpw.wse.replayfulldepth.wats.v1.7.6.20.name", ftypes.STRING, nil, nil, nil, "Market structure name assigned by market operator")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.news_id = ProtoField.new("News Id", "gpw.wse.replayfulldepth.wats.v1.7.6.20.newsid", ftypes.UINT32, nil, nil, nil, "News id - The news id serves as a unique reference for tracking purposes within the WATS system")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.no_trades = ProtoField.new("No Trades", "gpw.wse.replayfulldepth.wats.v1.7.6.20.notrades", ftypes.UINT64, nil, nil, nil, "Total number of transactions")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.nominal_currency = ProtoField.new("Nominal Currency", "gpw.wse.replayfulldepth.wats.v1.7.6.20.nominalcurrency", ftypes.UINT16)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.nominal_value_price = ProtoField.new("Nominal Value Price", "gpw.wse.replayfulldepth.wats.v1.7.6.20.nominalvalueprice", ftypes.DOUBLE, nil, nil, nil, "Nominal value of the financial instrument")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.nominal_value_type = ProtoField.new("Nominal Value Type", "gpw.wse.replayfulldepth.wats.v1.7.6.20.nominalvaluetype", ftypes.UINT8, nil, nil, nil, "Type of the product's nominal value (no nominal, constant or unknown)")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.nominal_value_value = ProtoField.new("Nominal Value Value", "gpw.wse.replayfulldepth.wats.v1.7.6.20.nominalvaluevalue", ftypes.DOUBLE, nil, nil, nil, "Nominal value")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.num_of_active_instruments = ProtoField.new("Num Of Active Instruments", "gpw.wse.replayfulldepth.wats.v1.7.6.20.numofactiveinstruments", ftypes.UINT16, nil, nil, nil, "Number of instruments – participants of the index, for which the quotation was set during the session")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.num_of_components = ProtoField.new("Num Of Components", "gpw.wse.replayfulldepth.wats.v1.7.6.20.numofcomponents", ftypes.UINT16, nil, nil, nil, "Total number of instruments in the portfolio")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.number_of_dividends = ProtoField.new("Number Of Dividends", "gpw.wse.replayfulldepth.wats.v1.7.6.20.numberofdividends", ftypes.UINT16, nil, nil, nil, "Number of dividends included in the index calculation")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.open_positions = ProtoField.new("Open Positions", "gpw.wse.replayfulldepth.wats.v1.7.6.20.openpositions", ftypes.UINT32, nil, nil, nil, "Number of open positions")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.opening_index_value = ProtoField.new("Opening Index Value", "gpw.wse.replayfulldepth.wats.v1.7.6.20.openingindexvalue", ftypes.DOUBLE)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.opening_price = ProtoField.new("Opening Price", "gpw.wse.replayfulldepth.wats.v1.7.6.20.openingprice", ftypes.DOUBLE, nil, nil, nil, "The price of the first trade on the current trading day")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.option_type = ProtoField.new("Option Type", "gpw.wse.replayfulldepth.wats.v1.7.6.20.optiontype", ftypes.UINT8, nil, nil, nil, "Identifier of option type")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.options_strike_price = ProtoField.new("Options Strike Price", "gpw.wse.replayfulldepth.wats.v1.7.6.20.optionsstrikeprice", ftypes.DOUBLE, nil, nil, nil, "Option product strike price")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.order_count = ProtoField.new("Order Count", "gpw.wse.replayfulldepth.wats.v1.7.6.20.ordercount", ftypes.UINT16, nil, nil, nil, "Number of open orders at BBO level 1")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.order_dynamic_collar_table_id = ProtoField.new("Order Dynamic Collar Table Id", "gpw.wse.replayfulldepth.wats.v1.7.6.20.orderdynamiccollartableid", ftypes.UINT32, nil, nil, nil, "Collar table ID")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.order_static_collar_table_id = ProtoField.new("Order Static Collar Table Id", "gpw.wse.replayfulldepth.wats.v1.7.6.20.orderstaticcollartableid", ftypes.UINT32, nil, nil, nil, "Collar table ID")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.parent_id = ProtoField.new("Parent Id", "gpw.wse.replayfulldepth.wats.v1.7.6.20.parentid", ftypes.UINT32, nil, nil, nil, "ID of the market structure's parent market structure if the market structure is a sub-structure")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.pct_change = ProtoField.new("Pct Change", "gpw.wse.replayfulldepth.wats.v1.7.6.20.pctchange", ftypes.DOUBLE, nil, nil, nil, "Percentage change")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.pct_change_index_val_prev_session = ProtoField.new("Pct Change Index Val Prev Session", "gpw.wse.replayfulldepth.wats.v1.7.6.20.pctchangeindexvalprevsession", ftypes.DOUBLE, nil, nil, nil, "Percentage change of the index value in relation to the value of the closing index from the previous session")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.pct_change_index_val_prev_year = ProtoField.new("Pct Change Index Val Prev Year", "gpw.wse.replayfulldepth.wats.v1.7.6.20.pctchangeindexvalprevyear", ftypes.DOUBLE, nil, nil, nil, "Percentage change of the index value in relation to its value at the end of the previous year")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.pos_type = ProtoField.new("Pos Type", "gpw.wse.replayfulldepth.wats.v1.7.6.20.postype", ftypes.UINT8, nil, nil, nil, "Type of quantity returned")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.pre_trade_check_max_price = ProtoField.new("Pre Trade Check Max Price", "gpw.wse.replayfulldepth.wats.v1.7.6.20.pretradecheckmaxprice", ftypes.DOUBLE, nil, nil, nil, "Maximum order price for pre-trade check")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.pre_trade_check_max_quantity = ProtoField.new("Pre Trade Check Max Quantity", "gpw.wse.replayfulldepth.wats.v1.7.6.20.pretradecheckmaxquantity", ftypes.UINT64, nil, nil, nil, "Maximum volume for pre-trade check")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.pre_trade_check_max_value = ProtoField.new("Pre Trade Check Max Value", "gpw.wse.replayfulldepth.wats.v1.7.6.20.pretradecheckmaxvalue", ftypes.DOUBLE, nil, nil, nil, "Maximum value for pre-trade check")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.pre_trade_check_min_price = ProtoField.new("Pre Trade Check Min Price", "gpw.wse.replayfulldepth.wats.v1.7.6.20.pretradecheckminprice", ftypes.DOUBLE, nil, nil, nil, "Minimum order price for pre-trade check")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.pre_trade_check_min_quantity = ProtoField.new("Pre Trade Check Min Quantity", "gpw.wse.replayfulldepth.wats.v1.7.6.20.pretradecheckminquantity", ftypes.UINT64, nil, nil, nil, "Minimum volume for pre-trade check")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.pre_trade_check_min_value = ProtoField.new("Pre Trade Check Min Value", "gpw.wse.replayfulldepth.wats.v1.7.6.20.pretradecheckminvalue", ftypes.DOUBLE, nil, nil, nil, "Minimum value for pre-trade check")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.presence_flags_index_params_presence_flags = ProtoField.new("Presence Flags Index Params Presence Flags", "gpw.wse.replayfulldepth.wats.v1.7.6.20.presenceflagsindexparamspresenceflags", ftypes.STRING, nil, nil, nil, "Indicates presence of values within IndexParams fields")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.presence_flags_index_portfolio_entry_presence_flags = ProtoField.new("Presence Flags Index Portfolio Entry Presence Flags", "gpw.wse.replayfulldepth.wats.v1.7.6.20.presenceflagsindexportfolioentrypresenceflags", ftypes.STRING, nil, nil, nil, "Indicates presence of values within IndexPortfolioEntry fields")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.presence_flags_index_summary_presence_flags = ProtoField.new("Presence Flags Index Summary Presence Flags", "gpw.wse.replayfulldepth.wats.v1.7.6.20.presenceflagsindexsummarypresenceflags", ftypes.STRING, nil, nil, nil, "Indicates presence of values within IndexSummary fields")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.presence_flags_real_time_index_presence_flags = ProtoField.new("Presence Flags Real Time Index Presence Flags", "gpw.wse.replayfulldepth.wats.v1.7.6.20.presenceflagsrealtimeindexpresenceflags", ftypes.STRING, nil, nil, nil, "Indicates presence of values within RealTimeIndex fields")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.price = ProtoField.new("Price", "gpw.wse.replayfulldepth.wats.v1.7.6.20.price", ftypes.DOUBLE, nil, nil, nil, "Auction price (final auction price)")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.price_currency = ProtoField.new("Price Currency", "gpw.wse.replayfulldepth.wats.v1.7.6.20.pricecurrency", ftypes.UINT16, nil, nil, nil, "Currency in which the price is expressed (applicable if the price is expressed as monetary value)")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.price_expression_type = ProtoField.new("Price Expression Type", "gpw.wse.replayfulldepth.wats.v1.7.6.20.priceexpressiontype", ftypes.UINT8, nil, nil, nil, "Price expression type for the financial instrument")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.price_level = ProtoField.new("Price Level", "gpw.wse.replayfulldepth.wats.v1.7.6.20.pricelevel", ftypes.STRING, nil, nil, nil, "PriceLevel")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.price_notation = ProtoField.new("Price Notation", "gpw.wse.replayfulldepth.wats.v1.7.6.20.pricenotation", ftypes.UINT8, nil, nil, nil, "Indication as to whether the price is expressed in monetary value, in percentage or in yield")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.price_update_type = ProtoField.new("Price Update Type", "gpw.wse.replayfulldepth.wats.v1.7.6.20.priceupdatetype", ftypes.UINT8, nil, nil, nil, "Indicates price update message variant")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.price_ytm_presence = ProtoField.new("Price Ytm Presence", "gpw.wse.replayfulldepth.wats.v1.7.6.20.priceytmpresence", ftypes.STRING, nil, nil, nil, "Bit flags indicating the filling of 'value', 'valueAsk', 'valueBid' attributes in the price update message")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.priority_flag = ProtoField.new("Priority Flag", "gpw.wse.replayfulldepth.wats.v1.7.6.20.priorityflag", ftypes.UINT8, nil, nil, nil, "Priority loss flag")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.product_code = ProtoField.new("Product Code", "gpw.wse.replayfulldepth.wats.v1.7.6.20.productcode", ftypes.STRING)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.product_id = ProtoField.new("Product Id", "gpw.wse.replayfulldepth.wats.v1.7.6.20.productid", ftypes.UINT32, nil, nil, nil, "Reference to financial product definition")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.product_identification_product_identification = ProtoField.new("Product Identification Product Identification", "gpw.wse.replayfulldepth.wats.v1.7.6.20.productidentificationproductidentification", ftypes.STRING, nil, nil, nil, "Product identification")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.product_identification_public_product_identification = ProtoField.new("Product Identification Public Product Identification", "gpw.wse.replayfulldepth.wats.v1.7.6.20.productidentificationpublicproductidentification", ftypes.STRING, nil, nil, nil, "PublicProductIdentification")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.product_identification_type = ProtoField.new("Product Identification Type", "gpw.wse.replayfulldepth.wats.v1.7.6.20.productidentificationtype", ftypes.UINT8)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.product_name = ProtoField.new("Product Name", "gpw.wse.replayfulldepth.wats.v1.7.6.20.productname", ftypes.STRING)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.product_subtype = ProtoField.new("Product Subtype", "gpw.wse.replayfulldepth.wats.v1.7.6.20.productsubtype", ftypes.UINT8, nil, nil, nil, "Subtype of the product")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.product_type = ProtoField.new("Product Type", "gpw.wse.replayfulldepth.wats.v1.7.6.20.producttype", ftypes.UINT8, nil, nil, nil, "Type of the product")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.public_order_id = ProtoField.new("Public Order Id", "gpw.wse.replayfulldepth.wats.v1.7.6.20.publicorderid", ftypes.UINT64, nil, nil, nil, "Order identifier (ID)")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.public_product_identification = ProtoField.new("Public Product Identification", "gpw.wse.replayfulldepth.wats.v1.7.6.20.publicproductidentification", ftypes.STRING, nil, nil, nil, "PublicProductIdentification")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.publication_order = ProtoField.new("Publication Order", "gpw.wse.replayfulldepth.wats.v1.7.6.20.publicationorder", ftypes.UINT16, nil, nil, nil, "Index publication presentation order")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.publication_timestamp = ProtoField.new("Publication Timestamp", "gpw.wse.replayfulldepth.wats.v1.7.6.20.publicationtimestamp", ftypes.UINT64, nil, nil, nil, "Date and time when the transaction was published by a trading venue")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.quantity = ProtoField.new("Quantity", "gpw.wse.replayfulldepth.wats.v1.7.6.20.quantity", ftypes.UINT64, nil, nil, nil, "Auction quantity (final auction volume)")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.quotation_system = ProtoField.new("Quotation System", "gpw.wse.replayfulldepth.wats.v1.7.6.20.quotationsystem", ftypes.UINT8, nil, nil, nil, "The field informing about the system of listing the instrument")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.reference_instrument_id = ProtoField.new("Reference Instrument Id", "gpw.wse.replayfulldepth.wats.v1.7.6.20.referenceinstrumentid", ftypes.UINT32, nil, nil, nil, "Identifier of reference instrument")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.reference_price = ProtoField.new("Reference Price", "gpw.wse.replayfulldepth.wats.v1.7.6.20.referenceprice", ftypes.DOUBLE)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.replay_message_length = ProtoField.new("Replay Message Length", "gpw.wse.replayfulldepth.wats.v1.7.6.20.replaymessagelength", ftypes.UINT16, nil, nil, nil, "Length of the replay request message")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.replay_message_type = ProtoField.new("Replay Message Type", "gpw.wse.replayfulldepth.wats.v1.7.6.20.replaymessagetype", ftypes.UINT16, nil, nil, nil, "Type of the replay request message")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.reserved_17_index_portfolio_entry_presence_flags = ProtoField.new("Reserved 17 Index Portfolio Entry Presence Flags", "gpw.wse.replayfulldepth.wats.v1.7.6.20.reserved17indexportfolioentrypresenceflags", ftypes.UINT8, nil, base.DEC, 0xFE)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.reserved_17_index_summary_presence_flags = ProtoField.new("Reserved 17 Index Summary Presence Flags", "gpw.wse.replayfulldepth.wats.v1.7.6.20.reserved17indexsummarypresenceflags", ftypes.UINT8, nil, base.DEC, 0xFE)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.reserved_27_index_params_presence_flags = ProtoField.new("Reserved 27 Index Params Presence Flags", "gpw.wse.replayfulldepth.wats.v1.7.6.20.reserved27indexparamspresenceflags", ftypes.UINT8, nil, base.DEC, 0xFC)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.reserved_57 = ProtoField.new("Reserved 57", "gpw.wse.replayfulldepth.wats.v1.7.6.20.reserved57", ftypes.UINT8, nil, base.DEC, 0xE0)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.reserved_615 = ProtoField.new("Reserved 615", "gpw.wse.replayfulldepth.wats.v1.7.6.20.reserved615", ftypes.UINT16, nil, base.DEC, 0xFFC0)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.rho = ProtoField.new("Rho", "gpw.wse.replayfulldepth.wats.v1.7.6.20.rho", ftypes.DOUBLE, nil, nil, nil, "Value of Rho indicator from the current session")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.scenario_name = ProtoField.new("Scenario Name", "gpw.wse.replayfulldepth.wats.v1.7.6.20.scenarioname", ftypes.STRING, nil, nil, nil, "Test scenario name")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.sector = ProtoField.new("Sector", "gpw.wse.replayfulldepth.wats.v1.7.6.20.sector", ftypes.UINT16, nil, nil, nil, "Defines the sector of the economy that the company belongs to")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.sell = ProtoField.new("Sell", "gpw.wse.replayfulldepth.wats.v1.7.6.20.sell", ftypes.STRING, nil, nil, nil, "PriceLevel table")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.seq_num = ProtoField.new("Seq Num", "gpw.wse.replayfulldepth.wats.v1.7.6.20.seqnum", ftypes.UINT32, nil, nil, nil, "Initial sequence number for the requested range")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.sequence_number = ProtoField.new("Sequence Number", "gpw.wse.replayfulldepth.wats.v1.7.6.20.sequencenumber", ftypes.UINT32, nil, nil, nil, "Sequence number of the message, used for gap detection and, for orders at one price level, for priority")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.session_avg = ProtoField.new("Session Avg", "gpw.wse.replayfulldepth.wats.v1.7.6.20.sessionavg", ftypes.DOUBLE, nil, nil, nil, "Average value of the day")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.session_date = ProtoField.new("Session Date", "gpw.wse.replayfulldepth.wats.v1.7.6.20.sessiondate", ftypes.UINT32, nil, nil, nil, "Stock Exchange session date")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.session_high = ProtoField.new("Session High", "gpw.wse.replayfulldepth.wats.v1.7.6.20.sessionhigh", ftypes.DOUBLE, nil, nil, nil, "Highest value of the day")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.session_id = ProtoField.new("Session Id", "gpw.wse.replayfulldepth.wats.v1.7.6.20.sessionid", ftypes.UINT16, nil, nil, nil, "ID of the session")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.session_low = ProtoField.new("Session Low", "gpw.wse.replayfulldepth.wats.v1.7.6.20.sessionlow", ftypes.DOUBLE, nil, nil, nil, "Lowest value of the day")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.settlement_calendar_id = ProtoField.new("Settlement Calendar Id", "gpw.wse.replayfulldepth.wats.v1.7.6.20.settlementcalendarid", ftypes.UINT32)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.settlement_date = ProtoField.new("Settlement Date", "gpw.wse.replayfulldepth.wats.v1.7.6.20.settlementdate", ftypes.UINT32)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.settlement_price = ProtoField.new("Settlement Price", "gpw.wse.replayfulldepth.wats.v1.7.6.20.settlementprice", ftypes.DOUBLE)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.settlement_type = ProtoField.new("Settlement Type", "gpw.wse.replayfulldepth.wats.v1.7.6.20.settlementtype", ftypes.UINT8, nil, nil, nil, "Identifier of settlement type")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.settlement_value_price = ProtoField.new("Settlement Value Price", "gpw.wse.replayfulldepth.wats.v1.7.6.20.settlementvalueprice", ftypes.DOUBLE, nil, nil, nil, "Settlement value")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.settlement_value_value = ProtoField.new("Settlement Value Value", "gpw.wse.replayfulldepth.wats.v1.7.6.20.settlementvaluevalue", ftypes.DOUBLE, nil, nil, nil, "Settlement value")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.side = ProtoField.new("Side", "gpw.wse.replayfulldepth.wats.v1.7.6.20.side", ftypes.UINT8, nil, nil, nil, "Side (buy or sell)")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.source_timestamp = ProtoField.new("Source Timestamp", "gpw.wse.replayfulldepth.wats.v1.7.6.20.sourcetimestamp", ftypes.UINT64, nil, nil, nil, "Date and time the source system generated the event, in nanoseconds since the Unix epoch")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.split = ProtoField.new("Split", "gpw.wse.replayfulldepth.wats.v1.7.6.20.split", ftypes.UINT8, nil, nil, nil, "The positive field value (true) informs that the instruments are traded the first time after the change of the nominal value of shares")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.static_collar_volatility_auction_id = ProtoField.new("Static Collar Volatility Auction Id", "gpw.wse.replayfulldepth.wats.v1.7.6.20.staticcollarvolatilityauctionid", ftypes.UINT32)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.status = ProtoField.new("Status", "gpw.wse.replayfulldepth.wats.v1.7.6.20.status", ftypes.UINT8, nil, nil, nil, "Instrument status")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.stream_id = ProtoField.new("Stream Id", "gpw.wse.replayfulldepth.wats.v1.7.6.20.streamid", ftypes.UINT8, nil, nil, nil, "ID of the md stream")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.stressed_market = ProtoField.new("Stressed Market", "gpw.wse.replayfulldepth.wats.v1.7.6.20.stressedmarket", ftypes.UINT8, nil, nil, nil, "Stressed market conditions is called for when instrument experience high and short term intraday volatility")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.strike_price = ProtoField.new("Strike Price", "gpw.wse.replayfulldepth.wats.v1.7.6.20.strikeprice", ftypes.DOUBLE, nil, nil, nil, "Product strike price")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.strike_price_currency = ProtoField.new("Strike Price Currency", "gpw.wse.replayfulldepth.wats.v1.7.6.20.strikepricecurrency", ftypes.UINT16)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.subscription_right = ProtoField.new("Subscription Right", "gpw.wse.replayfulldepth.wats.v1.7.6.20.subscriptionright", ftypes.UINT8, nil, nil, nil, "The positive field value (true) informs that the instruments are traded the first time after determining the subscription right")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.suspended = ProtoField.new("Suspended", "gpw.wse.replayfulldepth.wats.v1.7.6.20.suspended", ftypes.UINT8, nil, nil, nil, "Is instrument suspended")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.text = ProtoField.new("Text", "gpw.wse.replayfulldepth.wats.v1.7.6.20.text", ftypes.STRING, nil, nil, nil, "News text")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.theta = ProtoField.new("Theta", "gpw.wse.replayfulldepth.wats.v1.7.6.20.theta", ftypes.DOUBLE, nil, nil, nil, "Value of Theta indicator from the current session")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.threshold_max = ProtoField.new("Threshold Max", "gpw.wse.replayfulldepth.wats.v1.7.6.20.thresholdmax", ftypes.DOUBLE, nil, nil, nil, "upper threshold for leveraged instruments")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.threshold_min = ProtoField.new("Threshold Min", "gpw.wse.replayfulldepth.wats.v1.7.6.20.thresholdmin", ftypes.DOUBLE, nil, nil, nil, "lower threshold for leveraged instruments")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.tick_size = ProtoField.new("Tick Size", "gpw.wse.replayfulldepth.wats.v1.7.6.20.ticksize", ftypes.DOUBLE, nil, nil, nil, "Size of the tick")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.tick_table_id = ProtoField.new("Tick Table Id", "gpw.wse.replayfulldepth.wats.v1.7.6.20.ticktableid", ftypes.UINT32)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.timestamp = ProtoField.new("Timestamp", "gpw.wse.replayfulldepth.wats.v1.7.6.20.timestamp", ftypes.UINT64, nil, nil, nil, "Exact date and time of the event, in nanoseconds since the Unix epoch. Section 12.1 states the zone, that GPW WATS runs on UTC time, and the worked example of section 6.1.4.2 states the unit, 1717902001730705137 being 9 June 2024")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.title = ProtoField.new("Title", "gpw.wse.replayfulldepth.wats.v1.7.6.20.title", ftypes.STRING, nil, nil, nil, "News title, unique per message")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.total = ProtoField.new("Total", "gpw.wse.replayfulldepth.wats.v1.7.6.20.total", ftypes.UINT8, nil, nil, nil, "Total number of news entries")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.total_buy_quantity_at_imp = ProtoField.new("Total Buy Quantity At Imp", "gpw.wse.replayfulldepth.wats.v1.7.6.20.totalbuyquantityatimp", ftypes.UINT64)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.total_sell_quantity_at_imp = ProtoField.new("Total Sell Quantity At Imp", "gpw.wse.replayfulldepth.wats.v1.7.6.20.totalsellquantityatimp", ftypes.UINT64)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.total_value = ProtoField.new("Total Value", "gpw.wse.replayfulldepth.wats.v1.7.6.20.totalvalue", ftypes.DOUBLE, nil, nil, nil, "Total transaction value")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.total_volume = ProtoField.new("Total Volume", "gpw.wse.replayfulldepth.wats.v1.7.6.20.totalvolume", ftypes.UINT64, nil, nil, nil, "Total transaction volume")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trade_dynamic_collar_table_id = ProtoField.new("Trade Dynamic Collar Table Id", "gpw.wse.replayfulldepth.wats.v1.7.6.20.tradedynamiccollartableid", ftypes.UINT32, nil, nil, nil, "Collar table ID")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trade_id = ProtoField.new("Trade Id", "gpw.wse.replayfulldepth.wats.v1.7.6.20.tradeid", ftypes.UINT32, nil, nil, nil, "ID of the trade")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trade_static_collar_table_id = ProtoField.new("Trade Static Collar Table Id", "gpw.wse.replayfulldepth.wats.v1.7.6.20.tradestaticcollartableid", ftypes.UINT32, nil, nil, nil, "Collar table ID")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trade_to_be_cleared = ProtoField.new("Trade To Be Cleared", "gpw.wse.replayfulldepth.wats.v1.7.6.20.tradetobecleared", ftypes.UINT8, nil, nil, nil, "Code to identify whether the transaction will be cleared")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trading_currency = ProtoField.new("Trading Currency", "gpw.wse.replayfulldepth.wats.v1.7.6.20.tradingcurrency", ftypes.UINT16)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trading_phase_id = ProtoField.new("Trading Phase Id", "gpw.wse.replayfulldepth.wats.v1.7.6.20.tradingphaseid", ftypes.UINT32)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trading_phase_max_block_settlement_cycle = ProtoField.new("Trading Phase Max Block Settlement Cycle", "gpw.wse.replayfulldepth.wats.v1.7.6.20.tradingphasemaxblocksettlementcycle", ftypes.UINT8, nil, nil, nil, "Max settlement cycle for block transactions")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trading_phase_settlement_cycle = ProtoField.new("Trading Phase Settlement Cycle", "gpw.wse.replayfulldepth.wats.v1.7.6.20.tradingphasesettlementcycle", ftypes.UINT8, nil, nil, nil, "Settlement cycle for transactions made during a continuous phase")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trading_phase_start_time = ProtoField.new("Trading Phase Start Time", "gpw.wse.replayfulldepth.wats.v1.7.6.20.tradingphasestarttime", ftypes.UINT64)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trading_phase_type = ProtoField.new("Trading Phase Type", "gpw.wse.replayfulldepth.wats.v1.7.6.20.tradingphasetype", ftypes.UINT8, nil, nil, nil, "Type of matching algorithm")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trading_schedule_id = ProtoField.new("Trading Schedule Id", "gpw.wse.replayfulldepth.wats.v1.7.6.20.tradingscheduleid", ftypes.UINT32)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trading_session_event = ProtoField.new("Trading Session Event", "gpw.wse.replayfulldepth.wats.v1.7.6.20.tradingsessionevent", ftypes.UINT8, nil, nil, nil, "Identifies an event related to the trading status of a trading session")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trading_timestamp = ProtoField.new("Trading Timestamp", "gpw.wse.replayfulldepth.wats.v1.7.6.20.tradingtimestamp", ftypes.UINT64, nil, nil, nil, "Date and time when the transaction was executed")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trading_value = ProtoField.new("Trading Value", "gpw.wse.replayfulldepth.wats.v1.7.6.20.tradingvalue", ftypes.DOUBLE, nil, nil, nil, "Value of trading in the instruments from the given index")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trading_value_currency = ProtoField.new("Trading Value Currency", "gpw.wse.replayfulldepth.wats.v1.7.6.20.tradingvaluecurrency", ftypes.DOUBLE, nil, nil, nil, "The field comprises the trading value expressed in trading currency")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.uncrossing = ProtoField.new("Uncrossing", "gpw.wse.replayfulldepth.wats.v1.7.6.20.uncrossing", ftypes.UINT8, nil, nil, nil, "True if the phase includes an uncrossing")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.underlying_instrument_id = ProtoField.new("Underlying Instrument Id", "gpw.wse.replayfulldepth.wats.v1.7.6.20.underlyinginstrumentid", ftypes.UINT32, nil, nil, nil, "Identifier of the underlying instrument")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.upper = ProtoField.new("Upper", "gpw.wse.replayfulldepth.wats.v1.7.6.20.upper", ftypes.DOUBLE, nil, nil, nil, "Value of the upper Price collar")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.upper_ask = ProtoField.new("Upper Ask", "gpw.wse.replayfulldepth.wats.v1.7.6.20.upperask", ftypes.DOUBLE, nil, nil, nil, "Value of the upper ask Price collar")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.upper_bid = ProtoField.new("Upper Bid", "gpw.wse.replayfulldepth.wats.v1.7.6.20.upperbid", ftypes.DOUBLE, nil, nil, nil, "Value of the upper bid Price collar")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.us_indicator = ProtoField.new("Us Indicator", "gpw.wse.replayfulldepth.wats.v1.7.6.20.usindicator", ftypes.UINT8, nil, nil, nil, "Identifier of the us indicator")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.value = ProtoField.new("Value", "gpw.wse.replayfulldepth.wats.v1.7.6.20.value", ftypes.DOUBLE, nil, nil, nil, "Indicates the updated price or YTM")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.value_ask = ProtoField.new("Value Ask", "gpw.wse.replayfulldepth.wats.v1.7.6.20.valueask", ftypes.DOUBLE, nil, nil, nil, "Indicates the updated ask price or ask YTM")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.value_ask_price_ytm_presence = ProtoField.new("Value Ask Price Ytm Presence", "gpw.wse.replayfulldepth.wats.v1.7.6.20.valueaskpriceytmpresence", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004, "An ask price was provided")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.value_at_risk = ProtoField.new("Value At Risk", "gpw.wse.replayfulldepth.wats.v1.7.6.20.valueatrisk", ftypes.UINT8)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.value_bid = ProtoField.new("Value Bid", "gpw.wse.replayfulldepth.wats.v1.7.6.20.valuebid", ftypes.DOUBLE, nil, nil, nil, "Indicates the updated bid price or bid YTM")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.value_bid_price_ytm_presence = ProtoField.new("Value Bid Price Ytm Presence", "gpw.wse.replayfulldepth.wats.v1.7.6.20.valuebidpriceytmpresence", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002, "A bid price was provided")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.value_price_ytm_presence = ProtoField.new("Value Price Ytm Presence", "gpw.wse.replayfulldepth.wats.v1.7.6.20.valuepriceytmpresence", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001, "A price was provided")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.vega = ProtoField.new("Vega", "gpw.wse.replayfulldepth.wats.v1.7.6.20.vega", ftypes.DOUBLE, nil, nil, nil, "Value of Vega indicator from the current session")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.version_number = ProtoField.new("Version Number", "gpw.wse.replayfulldepth.wats.v1.7.6.20.versionnumber", ftypes.UINT8, nil, nil, nil, "Version of the derivative")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.volatility = ProtoField.new("Volatility", "gpw.wse.replayfulldepth.wats.v1.7.6.20.volatility", ftypes.DOUBLE, nil, nil, nil, "Volatility is calculated according to algorithm worked out by the WSE")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.vwap = ProtoField.new("Vwap", "gpw.wse.replayfulldepth.wats.v1.7.6.20.vwap", ftypes.DOUBLE, nil, nil, nil, "Volume-weighted average price")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.weekdays = ProtoField.new("Weekdays", "gpw.wse.replayfulldepth.wats.v1.7.6.20.weekdays", ftypes.BYTES, nil, nil, nil, "Boolean array of weekdays (Monday to Sunday) open or closed for trading; true – weekday open for trading, false – weekday closed for trading")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.ytm_ask_no_calc = ProtoField.new("Ytm Ask No Calc", "gpw.wse.replayfulldepth.wats.v1.7.6.20.ytmasknocalc", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0020, "Ask YTM was not provided due to the absence of its calculation")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.ytm_bid_no_calc = ProtoField.new("Ytm Bid No Calc", "gpw.wse.replayfulldepth.wats.v1.7.6.20.ytmbidnocalc", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010, "Bid YTM was not provided due to the absence of its calculation")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.ytm_no_calc = ProtoField.new("Ytm No Calc", "gpw.wse.replayfulldepth.wats.v1.7.6.20.ytmnocalc", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008, "YTM was not provided due to the absence of its calculation")

-- Gpw Wse ReplayFullDepth Wats 1.7.6.20 Framing
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.message = ProtoField.new("Message", "gpw.wse.replayfulldepth.wats.v1.7.6.20.message", ftypes.STRING)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.message_header = ProtoField.new("Message Header", "gpw.wse.replayfulldepth.wats.v1.7.6.20.messageheader", ftypes.STRING, nil, nil, nil, "Every market data message opens with the same 42 byte header")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.packet = ProtoField.new("Packet", "gpw.wse.replayfulldepth.wats.v1.7.6.20.packet", ftypes.STRING, nil, nil, nil, "Gpw Wats Snapshot and Replay Packet")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.replay_request_header = ProtoField.new("Replay Request Header", "gpw.wse.replayfulldepth.wats.v1.7.6.20.replayrequestheader", ftypes.STRING, nil, nil, nil, "The replay request carries a four byte header of its own, not the 42 byte market data header")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.replay_request_message = ProtoField.new("Replay Request Message", "gpw.wse.replayfulldepth.wats.v1.7.6.20.replayrequestmessage", ftypes.STRING)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.replay_request_packet = ProtoField.new("Replay Request Packet", "gpw.wse.replayfulldepth.wats.v1.7.6.20.replayrequestpacket", ftypes.STRING, nil, nil, nil, "Gpw Wats Replay Request Packet")

-- Gpw Wse ReplayFullDepth 1.7.6.20 Application Messages
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.accrued_interest_table_entry = ProtoField.new("Accrued Interest Table Entry", "gpw.wse.replayfulldepth.wats.v1.7.6.20.accruedinteresttableentry", ftypes.STRING, nil, nil, nil, "Message describing an accrued interest table entry")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.auction_summary = ProtoField.new("Auction Summary", "gpw.wse.replayfulldepth.wats.v1.7.6.20.auctionsummary", ftypes.STRING, nil, nil, nil, "Auction summary, including auction price and quantity")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.auction_update = ProtoField.new("Auction Update", "gpw.wse.replayfulldepth.wats.v1.7.6.20.auctionupdate", ftypes.STRING, nil, nil, nil, "Updates IMP/IMV and BBO during an auction")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.calendar_exception = ProtoField.new("Calendar Exception", "gpw.wse.replayfulldepth.wats.v1.7.6.20.calendarexception", ftypes.STRING, nil, nil, nil, "Upcoming calendar day exception")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.collar_group = ProtoField.new("Collar Group", "gpw.wse.replayfulldepth.wats.v1.7.6.20.collargroup", ftypes.STRING, nil, nil, nil, "Message defining a collar group")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.collar_table_entry = ProtoField.new("Collar Table Entry", "gpw.wse.replayfulldepth.wats.v1.7.6.20.collartableentry", ftypes.STRING, nil, nil, nil, "Collar table definition")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.external_underlying = ProtoField.new("External Underlying", "gpw.wse.replayfulldepth.wats.v1.7.6.20.externalunderlying", ftypes.STRING, nil, nil, nil, "The message contains a list of underlyings not traded in WATS. It concerns underlyings for derivatives and structured products")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.heartbeat = ProtoField.new("Heartbeat", "gpw.wse.replayfulldepth.wats.v1.7.6.20.heartbeat", ftypes.BYTES, nil, nil, nil, "A message type used to check connectivity")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.index_params = ProtoField.new("Index Params", "gpw.wse.replayfulldepth.wats.v1.7.6.20.indexparams", ftypes.STRING, nil, nil, nil, "The metadata message for the given index")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.index_portfolio_entry = ProtoField.new("Index Portfolio Entry", "gpw.wse.replayfulldepth.wats.v1.7.6.20.indexportfolioentry", ftypes.STRING, nil, nil, nil, "The message contains information about a product providing the index portfolio")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.index_summary = ProtoField.new("Index Summary", "gpw.wse.replayfulldepth.wats.v1.7.6.20.indexsummary", ftypes.STRING, nil, nil, nil, "The index summary message provides a summary of the data calculated in a stock index for a given day")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.indexation_table_entry = ProtoField.new("Indexation Table Entry", "gpw.wse.replayfulldepth.wats.v1.7.6.20.indexationtableentry", ftypes.STRING, nil, nil, nil, "Message describing an indexation table entry")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.instrument = ProtoField.new("Instrument", "gpw.wse.replayfulldepth.wats.v1.7.6.20.instrument", ftypes.STRING, nil, nil, nil, "Definition of a financial instrument")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.instrument_status_change = ProtoField.new("Instrument Status Change", "gpw.wse.replayfulldepth.wats.v1.7.6.20.instrumentstatuschange", ftypes.STRING, nil, nil, nil, "Start of a new trading phase")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.instrument_summary = ProtoField.new("Instrument Summary", "gpw.wse.replayfulldepth.wats.v1.7.6.20.instrumentsummary", ftypes.STRING, nil, nil, nil, "Provides brief instrument summary")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.market_structure = ProtoField.new("Market Structure", "gpw.wse.replayfulldepth.wats.v1.7.6.20.marketstructure", ftypes.STRING, nil, nil, nil, "Messages defining the Trading Venue’s market structure")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.news = ProtoField.new("News", "gpw.wse.replayfulldepth.wats.v1.7.6.20.news", ftypes.STRING, nil, nil, nil, "News message")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.order_add = ProtoField.new("Order Add", "gpw.wse.replayfulldepth.wats.v1.7.6.20.orderadd", ftypes.STRING, nil, nil, nil, "New (limit) order added to order book")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.order_book_event = ProtoField.new("Order Book Event", "gpw.wse.replayfulldepth.wats.v1.7.6.20.orderbookevent", ftypes.STRING, nil, nil, nil, "Order book event for given instrument")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.order_cancel = ProtoField.new("Order Cancel", "gpw.wse.replayfulldepth.wats.v1.7.6.20.ordercancel", ftypes.STRING, nil, nil, nil, "Order deleted")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.order_collars = ProtoField.new("Order Collars", "gpw.wse.replayfulldepth.wats.v1.7.6.20.ordercollars", ftypes.STRING, nil, nil, nil, "New order price collars")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.order_execute = ProtoField.new("Order Execute", "gpw.wse.replayfulldepth.wats.v1.7.6.20.orderexecute", ftypes.STRING, nil, nil, nil, "Execution report")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.order_modify = ProtoField.new("Order Modify", "gpw.wse.replayfulldepth.wats.v1.7.6.20.ordermodify", ftypes.STRING, nil, nil, nil, "Order modified")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.position_report = ProtoField.new("Position Report", "gpw.wse.replayfulldepth.wats.v1.7.6.20.positionreport", ftypes.STRING, nil, nil, nil, "Report of open positions")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.price_level_snapshot = ProtoField.new("Price Level Snapshot", "gpw.wse.replayfulldepth.wats.v1.7.6.20.pricelevelsnapshot", ftypes.STRING, nil, nil, nil, "BBO price levels and volumes")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.price_update = ProtoField.new("Price Update", "gpw.wse.replayfulldepth.wats.v1.7.6.20.priceupdate", ftypes.STRING, nil, nil, nil, "Message indicating a price or YTM update")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.product_summary = ProtoField.new("Product Summary", "gpw.wse.replayfulldepth.wats.v1.7.6.20.productsummary", ftypes.STRING, nil, nil, nil, "Session day product summary")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.real_time_index = ProtoField.new("Real Time Index", "gpw.wse.replayfulldepth.wats.v1.7.6.20.realtimeindex", ftypes.STRING, nil, nil, nil, "Message providing real-time index values for instruments")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.replay_request = ProtoField.new("Replay Request", "gpw.wse.replayfulldepth.wats.v1.7.6.20.replayrequest", ftypes.STRING, nil, nil, nil, "Message replay request")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.test_event = ProtoField.new("Test Event", "gpw.wse.replayfulldepth.wats.v1.7.6.20.testevent", ftypes.STRING)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.tick_table_entry = ProtoField.new("Tick Table Entry", "gpw.wse.replayfulldepth.wats.v1.7.6.20.ticktableentry", ftypes.STRING, nil, nil, nil, "Tick size definition")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.top_price_level_update = ProtoField.new("Top Price Level Update", "gpw.wse.replayfulldepth.wats.v1.7.6.20.toppricelevelupdate", ftypes.STRING, nil, nil, nil, "BBO Level 1")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trade = ProtoField.new("Trade", "gpw.wse.replayfulldepth.wats.v1.7.6.20.trade", ftypes.STRING, nil, nil, nil, "Enriched trade report")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trade_collars = ProtoField.new("Trade Collars", "gpw.wse.replayfulldepth.wats.v1.7.6.20.tradecollars", ftypes.STRING, nil, nil, nil, "New trade price collars")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trading_phase_schedule_entry = ProtoField.new("Trading Phase Schedule Entry", "gpw.wse.replayfulldepth.wats.v1.7.6.20.tradingphasescheduleentry", ftypes.STRING, nil, nil, nil, "Trading phase definition")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trading_session_status = ProtoField.new("Trading Session Status", "gpw.wse.replayfulldepth.wats.v1.7.6.20.tradingsessionstatus", ftypes.STRING, nil, nil, nil, "The Trading Session Status provides information on the status of a market and on a trading day events")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.week_plan = ProtoField.new("Week Plan", "gpw.wse.replayfulldepth.wats.v1.7.6.20.weekplan", ftypes.STRING, nil, nil, nil, "Trading week plan")

-- Gpw Wse ReplayFullDepth Wats 1.7.6.20 Generated Fields
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.buy_index = ProtoField.new("Buy Index", "gpw.wse.replayfulldepth.wats.v1.7.6.20.buyindex", ftypes.UINT16)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.items_index = ProtoField.new("Items Index", "gpw.wse.replayfulldepth.wats.v1.7.6.20.itemsindex", ftypes.UINT16)
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.sell_index = ProtoField.new("Sell Index", "gpw.wse.replayfulldepth.wats.v1.7.6.20.sellindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Gpw Wse ReplayFullDepth Wats 1.7.6.20 Element Dissection Options
show.application_messages = true
show.structs = true
show.repeating_groups = true
show.headers = true
show.indexes = true

-- Register Gpw Wse ReplayFullDepth Wats 1.7.6.20 Show Options
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.prefs.show_application_messages then
    show.application_messages = omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.prefs.show_application_messages
  end
  if show.headers ~= omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.prefs.show_headers then
    show.headers = omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.prefs.show_headers
  end
  if show.repeating_groups ~= omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.prefs.show_repeating_groups then
    show.repeating_groups = omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.prefs.show_repeating_groups
  end
  if show.structs ~= omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.prefs.show_structs then
    show.structs = omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.prefs.show_structs
  end
  if show.indexes ~= omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.prefs.show_indexes then
    show.indexes = omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Gpw Wse ReplayFullDepth Wats 1.7.6.20 Fields
-----------------------------------------------------------------------

-- Accrued Interest Table Entry Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_table_entry_date = {}

-- Size: Accrued Interest Table Entry Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_table_entry_date.size = 4

-- Display: Accrued Interest Table Entry Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_table_entry_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Accrued Interest Table Entry Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Accrued Interest Table Entry Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_table_entry_date.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_table_entry_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_table_entry_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.accrued_interest_table_entry_date, range, value, display)

  return offset + length, value
end

-- Accrued Interest Table Entry Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_table_entry_value = {}

-- Size: Accrued Interest Table Entry Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_table_entry_value.size = 8

-- Display: Accrued Interest Table Entry Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_table_entry_value.display = function(value)
  return "Accrued Interest Table Entry Value: "..value
end

-- Translate: Accrued Interest Table Entry Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_table_entry_value.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Accrued Interest Table Entry Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_table_entry_value.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_table_entry_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_table_entry_value.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_table_entry_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.accrued_interest_table_entry_value, range, value, display)

  return offset + length, value
end

-- Accrued Interest Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_value = {}

-- Size: Accrued Interest Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_value.size = 8

-- Display: Accrued Interest Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_value.display = function(value)
  return "Accrued Interest Value: "..value
end

-- Translate: Accrued Interest Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_value.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Accrued Interest Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_value.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_value.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.accrued_interest_value, range, value, display)

  return offset + length, value
end

-- Accumulated Interest
gpw_wse_replayfulldepth_wats_v1_7_6_20.accumulated_interest = {}

-- Size: Accumulated Interest
gpw_wse_replayfulldepth_wats_v1_7_6_20.accumulated_interest.size = 8

-- Display: Accumulated Interest
gpw_wse_replayfulldepth_wats_v1_7_6_20.accumulated_interest.display = function(value)
  return "Accumulated Interest: "..value
end

-- Translate: Accumulated Interest
gpw_wse_replayfulldepth_wats_v1_7_6_20.accumulated_interest.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Accumulated Interest
gpw_wse_replayfulldepth_wats_v1_7_6_20.accumulated_interest.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.accumulated_interest.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.accumulated_interest.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.accumulated_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.accumulated_interest, range, value, display)

  return offset + length, value
end

-- Adjusted Closing Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.adjusted_closing_price = {}

-- Size: Adjusted Closing Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.adjusted_closing_price.size = 8

-- Display: Adjusted Closing Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.adjusted_closing_price.display = function(value)
  return "Adjusted Closing Price: "..value
end

-- Translate: Adjusted Closing Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.adjusted_closing_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Adjusted Closing Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.adjusted_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.adjusted_closing_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.adjusted_closing_price.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.adjusted_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.adjusted_closing_price, range, value, display)

  return offset + length, value
end

-- Adjusted Closing Price Reason
gpw_wse_replayfulldepth_wats_v1_7_6_20.adjusted_closing_price_reason = {}

-- Size: Adjusted Closing Price Reason
gpw_wse_replayfulldepth_wats_v1_7_6_20.adjusted_closing_price_reason.size = 1

-- Display: Adjusted Closing Price Reason
gpw_wse_replayfulldepth_wats_v1_7_6_20.adjusted_closing_price_reason.display = function(value)
  if value == 1 then
    return "Adjusted Closing Price Reason: Not Applicable (1)"
  end
  if value == 2 then
    return "Adjusted Closing Price Reason: Dividend (2)"
  end
  if value == 3 then
    return "Adjusted Closing Price Reason: Issue Right (3)"
  end
  if value == 4 then
    return "Adjusted Closing Price Reason: Split (4)"
  end
  if value == 5 then
    return "Adjusted Closing Price Reason: Reverse Split (5)"
  end
  if value == 6 then
    return "Adjusted Closing Price Reason: Bonus (6)"
  end
  if value == 7 then
    return "Adjusted Closing Price Reason: Spin Off (7)"
  end
  if value == 8 then
    return "Adjusted Closing Price Reason: Tick Size Change (8)"
  end
  if value == 9 then
    return "Adjusted Closing Price Reason: Order Purge (9)"
  end
  if value == 10 then
    return "Adjusted Closing Price Reason: Other Reason (10)"
  end

  return "Adjusted Closing Price Reason: Unknown("..value..")"
end

-- Dissect: Adjusted Closing Price Reason
gpw_wse_replayfulldepth_wats_v1_7_6_20.adjusted_closing_price_reason.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.adjusted_closing_price_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.adjusted_closing_price_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.adjusted_closing_price_reason, range, value, display)

  return offset + length, value
end

-- Auction Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.auction_type = {}

-- Size: Auction Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.auction_type.size = 1

-- Display: Auction Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.auction_type.display = function(value)
  if value == 1 then
    return "Auction Type: Not Applicable (1)"
  end
  if value == 2 then
    return "Auction Type: Auction Opening (2)"
  end
  if value == 3 then
    return "Auction Type: Auction Closing (3)"
  end
  if value == 4 then
    return "Auction Type: Auction Intraday (4)"
  end
  if value == 5 then
    return "Auction Type: Auction Volatility Static (5)"
  end
  if value == 6 then
    return "Auction Type: Auction Volatility Dynamic (6)"
  end
  if value == 7 then
    return "Auction Type: Auction Extended Volatility Static (7)"
  end
  if value == 8 then
    return "Auction Type: Auction Extended Volatility Dynamic (8)"
  end
  if value == 9 then
    return "Auction Type: Unsuspension Auction (9)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.auction_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Best Buy Level
gpw_wse_replayfulldepth_wats_v1_7_6_20.best_buy_level = {}

-- Size: Best Buy Level
gpw_wse_replayfulldepth_wats_v1_7_6_20.best_buy_level.size = 8

-- Display: Best Buy Level
gpw_wse_replayfulldepth_wats_v1_7_6_20.best_buy_level.display = function(value)
  return "Best Buy Level: "..value
end

-- Translate: Best Buy Level
gpw_wse_replayfulldepth_wats_v1_7_6_20.best_buy_level.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Best Buy Level
gpw_wse_replayfulldepth_wats_v1_7_6_20.best_buy_level.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.best_buy_level.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.best_buy_level.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.best_buy_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.best_buy_level, range, value, display)

  return offset + length, value
end

-- Best Buy Level Quantity
gpw_wse_replayfulldepth_wats_v1_7_6_20.best_buy_level_quantity = {}

-- Size: Best Buy Level Quantity
gpw_wse_replayfulldepth_wats_v1_7_6_20.best_buy_level_quantity.size = 8

-- Display: Best Buy Level Quantity
gpw_wse_replayfulldepth_wats_v1_7_6_20.best_buy_level_quantity.display = function(value)
  return "Best Buy Level Quantity: "..value
end

-- Dissect: Best Buy Level Quantity
gpw_wse_replayfulldepth_wats_v1_7_6_20.best_buy_level_quantity.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.best_buy_level_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.best_buy_level_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.best_buy_level_quantity, range, value, display)

  return offset + length, value
end

-- Best Sell Level
gpw_wse_replayfulldepth_wats_v1_7_6_20.best_sell_level = {}

-- Size: Best Sell Level
gpw_wse_replayfulldepth_wats_v1_7_6_20.best_sell_level.size = 8

-- Display: Best Sell Level
gpw_wse_replayfulldepth_wats_v1_7_6_20.best_sell_level.display = function(value)
  return "Best Sell Level: "..value
end

-- Translate: Best Sell Level
gpw_wse_replayfulldepth_wats_v1_7_6_20.best_sell_level.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Best Sell Level
gpw_wse_replayfulldepth_wats_v1_7_6_20.best_sell_level.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.best_sell_level.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.best_sell_level.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.best_sell_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.best_sell_level, range, value, display)

  return offset + length, value
end

-- Best Sell Level Quantity
gpw_wse_replayfulldepth_wats_v1_7_6_20.best_sell_level_quantity = {}

-- Size: Best Sell Level Quantity
gpw_wse_replayfulldepth_wats_v1_7_6_20.best_sell_level_quantity.size = 8

-- Display: Best Sell Level Quantity
gpw_wse_replayfulldepth_wats_v1_7_6_20.best_sell_level_quantity.display = function(value)
  return "Best Sell Level Quantity: "..value
end

-- Dissect: Best Sell Level Quantity
gpw_wse_replayfulldepth_wats_v1_7_6_20.best_sell_level_quantity.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.best_sell_level_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.best_sell_level_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.best_sell_level_quantity, range, value, display)

  return offset + length, value
end

-- Bond Coupon Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.bond_coupon_type = {}

-- Size: Bond Coupon Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.bond_coupon_type.size = 1

-- Display: Bond Coupon Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.bond_coupon_type.display = function(value)
  if value == 1 then
    return "Bond Coupon Type: Not Applicable (1)"
  end
  if value == 2 then
    return "Bond Coupon Type: Zero (2)"
  end
  if value == 3 then
    return "Bond Coupon Type: Fixed (3)"
  end
  if value == 4 then
    return "Bond Coupon Type: Floating (4)"
  end
  if value == 5 then
    return "Bond Coupon Type: Indexed (5)"
  end

  return "Bond Coupon Type: Unknown("..value..")"
end

-- Dissect: Bond Coupon Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.bond_coupon_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.bond_coupon_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.bond_coupon_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.bond_coupon_type, range, value, display)

  return offset + length, value
end

-- Calendar Exception Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_exception_date = {}

-- Size: Calendar Exception Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_exception_date.size = 4

-- Display: Calendar Exception Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_exception_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Calendar Exception Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Calendar Exception Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_exception_date.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_exception_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_exception_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.calendar_exception_date, range, value, display)

  return offset + length, value
end

-- Calendar Exception Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_exception_type = {}

-- Size: Calendar Exception Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_exception_type.size = 1

-- Display: Calendar Exception Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_exception_type.display = function(value)
  if value == 1 then
    return "Calendar Exception Type: Closed (1)"
  end
  if value == 2 then
    return "Calendar Exception Type: Open (2)"
  end

  return "Calendar Exception Type: Unknown("..value..")"
end

-- Dissect: Calendar Exception Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_exception_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_exception_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_exception_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.calendar_exception_type, range, value, display)

  return offset + length, value
end

-- Calendar Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_id = {}

-- Size: Calendar Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_id.size = 4

-- Display: Calendar Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_id.display = function(value)
  return "Calendar Id: "..value
end

-- Dissect: Calendar Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.calendar_id, range, value, display)

  return offset + length, value
end

-- Cfi
gpw_wse_replayfulldepth_wats_v1_7_6_20.cfi = {}

-- Size: Cfi
gpw_wse_replayfulldepth_wats_v1_7_6_20.cfi.size = 6

-- Display: Cfi
gpw_wse_replayfulldepth_wats_v1_7_6_20.cfi.display = function(value)
  return "Cfi: "..value
end

-- Dissect: Cfi
gpw_wse_replayfulldepth_wats_v1_7_6_20.cfi.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.cfi.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.cfi.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.cfi, range, value, display)

  return offset + length, value
end

-- Clat Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.clat_id = {}

-- Size: Clat Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.clat_id.size = 4

-- Display: Clat Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.clat_id.display = function(value)
  return "Clat Id: "..value
end

-- Dissect: Clat Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.clat_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.clat_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.clat_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.clat_id, range, value, display)

  return offset + length, value
end

-- Closing Capitalisation Portfolio
gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_capitalisation_portfolio = {}

-- Size: Closing Capitalisation Portfolio
gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_capitalisation_portfolio.size = 8

-- Display: Closing Capitalisation Portfolio
gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_capitalisation_portfolio.display = function(value)
  return "Closing Capitalisation Portfolio: "..value
end

-- Translate: Closing Capitalisation Portfolio
gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_capitalisation_portfolio.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Closing Capitalisation Portfolio
gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_capitalisation_portfolio.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_capitalisation_portfolio.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_capitalisation_portfolio.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_capitalisation_portfolio.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.closing_capitalisation_portfolio, range, value, display)

  return offset + length, value
end

-- Closing Index Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_index_value = {}

-- Size: Closing Index Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_index_value.size = 8

-- Display: Closing Index Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_index_value.display = function(value)
  return "Closing Index Value: "..value
end

-- Translate: Closing Index Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_index_value.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Closing Index Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_index_value.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_index_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_index_value.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_index_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.closing_index_value, range, value, display)

  return offset + length, value
end

-- Closing Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_price = {}

-- Size: Closing Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_price.size = 8

-- Display: Closing Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_price.display = function(value)
  return "Closing Price: "..value
end

-- Translate: Closing Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Closing Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_price.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Closing Price Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_price_type = {}

-- Size: Closing Price Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_price_type.size = 1

-- Display: Closing Price Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_price_type.display = function(value)
  if value == 1 then
    return "Closing Price Type: Initial Price (1)"
  end
  if value == 2 then
    return "Closing Price Type: Ltp (2)"
  end
  if value == 3 then
    return "Closing Price Type: Last Acp (3)"
  end
  if value == 4 then
    return "Closing Price Type: Fair Value (4)"
  end
  if value == 5 then
    return "Closing Price Type: Daily Settlement Price (5)"
  end
  if value == 6 then
    return "Closing Price Type: Final Settlement Price (6)"
  end

  return "Closing Price Type: Unknown("..value..")"
end

-- Dissect: Closing Price Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_price_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_price_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.closing_price_type, range, value, display)

  return offset + length, value
end

-- Collar Expression
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_expression = {}

-- Size: Collar Expression
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_expression.size = 1

-- Display: Collar Expression
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_expression.display = function(value)
  if value == 1 then
    return "Collar Expression: Percentage (1)"
  end
  if value == 2 then
    return "Collar Expression: Absolute Value (2)"
  end

  return "Collar Expression: Unknown("..value..")"
end

-- Dissect: Collar Expression
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_expression.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_expression.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_expression.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.collar_expression, range, value, display)

  return offset + length, value
end

-- Collar Group Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_group_id = {}

-- Size: Collar Group Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_group_id.size = 4

-- Display: Collar Group Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_group_id.display = function(value)
  return "Collar Group Id: "..value
end

-- Dissect: Collar Group Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_group_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_group_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.collar_group_id, range, value, display)

  return offset + length, value
end

-- Collar Lower Ask
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_lower_ask = {}

-- Size: Collar Lower Ask
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_lower_ask.size = 8

-- Display: Collar Lower Ask
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_lower_ask.display = function(value)
  return "Collar Lower Ask: "..value
end

-- Translate: Collar Lower Ask
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_lower_ask.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Collar Lower Ask
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_lower_ask.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_lower_ask.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_lower_ask.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_lower_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.collar_lower_ask, range, value, display)

  return offset + length, value
end

-- Collar Lower Bid
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_lower_bid = {}

-- Size: Collar Lower Bid
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_lower_bid.size = 8

-- Display: Collar Lower Bid
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_lower_bid.display = function(value)
  return "Collar Lower Bid: "..value
end

-- Translate: Collar Lower Bid
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_lower_bid.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Collar Lower Bid
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_lower_bid.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_lower_bid.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_lower_bid.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_lower_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.collar_lower_bid, range, value, display)

  return offset + length, value
end

-- Collar Lower Bound
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_lower_bound = {}

-- Size: Collar Lower Bound
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_lower_bound.size = 8

-- Display: Collar Lower Bound
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_lower_bound.display = function(value)
  return "Collar Lower Bound: "..value
end

-- Translate: Collar Lower Bound
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_lower_bound.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Collar Lower Bound
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_lower_bound.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_lower_bound.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_lower_bound.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_lower_bound.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.collar_lower_bound, range, value, display)

  return offset + length, value
end

-- Collar Mode
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_mode = {}

-- Size: Collar Mode
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_mode.size = 1

-- Display: Collar Mode
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_mode.display = function(value)
  if value == 1 then
    return "Collar Mode: Trade Price Collar (1)"
  end
  if value == 2 then
    return "Collar Mode: Order Price Collar (2)"
  end

  return "Collar Mode: Unknown("..value..")"
end

-- Dissect: Collar Mode
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_mode.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_mode.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.collar_mode, range, value, display)

  return offset + length, value
end

-- Collar Table Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_table_id = {}

-- Size: Collar Table Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_table_id.size = 4

-- Display: Collar Table Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_table_id.display = function(value)
  return "Collar Table Id: "..value
end

-- Dissect: Collar Table Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_table_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_table_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.collar_table_id, range, value, display)

  return offset + length, value
end

-- Collar Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_type = {}

-- Size: Collar Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_type.size = 1

-- Display: Collar Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_type.display = function(value)
  if value == 1 then
    return "Collar Type: Static (1)"
  end
  if value == 2 then
    return "Collar Type: Dynamic (2)"
  end

  return "Collar Type: Unknown("..value..")"
end

-- Dissect: Collar Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.collar_type, range, value, display)

  return offset + length, value
end

-- Collar Upper Ask
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_upper_ask = {}

-- Size: Collar Upper Ask
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_upper_ask.size = 8

-- Display: Collar Upper Ask
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_upper_ask.display = function(value)
  return "Collar Upper Ask: "..value
end

-- Translate: Collar Upper Ask
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_upper_ask.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Collar Upper Ask
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_upper_ask.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_upper_ask.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_upper_ask.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_upper_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.collar_upper_ask, range, value, display)

  return offset + length, value
end

-- Collar Upper Bid
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_upper_bid = {}

-- Size: Collar Upper Bid
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_upper_bid.size = 8

-- Display: Collar Upper Bid
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_upper_bid.display = function(value)
  return "Collar Upper Bid: "..value
end

-- Translate: Collar Upper Bid
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_upper_bid.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Collar Upper Bid
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_upper_bid.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_upper_bid.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_upper_bid.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_upper_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.collar_upper_bid, range, value, display)

  return offset + length, value
end

-- Collar Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_value = {}

-- Size: Collar Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_value.size = 8

-- Display: Collar Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_value.display = function(value)
  return "Collar Value: "..value
end

-- Translate: Collar Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_value.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Collar Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_value.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_value.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.collar_value, range, value, display)

  return offset + length, value
end

-- Correction Coefficient
gpw_wse_replayfulldepth_wats_v1_7_6_20.correction_coefficient = {}

-- Size: Correction Coefficient
gpw_wse_replayfulldepth_wats_v1_7_6_20.correction_coefficient.size = 8

-- Display: Correction Coefficient
gpw_wse_replayfulldepth_wats_v1_7_6_20.correction_coefficient.display = function(value)
  return "Correction Coefficient: "..value
end

-- Translate: Correction Coefficient
gpw_wse_replayfulldepth_wats_v1_7_6_20.correction_coefficient.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Correction Coefficient
gpw_wse_replayfulldepth_wats_v1_7_6_20.correction_coefficient.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.correction_coefficient.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.correction_coefficient.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.correction_coefficient.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.correction_coefficient, range, value, display)

  return offset + length, value
end

-- Count
gpw_wse_replayfulldepth_wats_v1_7_6_20.count = {}

-- Size: Count
gpw_wse_replayfulldepth_wats_v1_7_6_20.count.size = 1

-- Display: Count
gpw_wse_replayfulldepth_wats_v1_7_6_20.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
gpw_wse_replayfulldepth_wats_v1_7_6_20.count.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.count, range, value, display)

  return offset + length, value
end

-- Currency
gpw_wse_replayfulldepth_wats_v1_7_6_20.currency = {}

-- Size: Currency
gpw_wse_replayfulldepth_wats_v1_7_6_20.currency.size = 2

-- Display: Currency
gpw_wse_replayfulldepth_wats_v1_7_6_20.currency.display = function(value)
  if value == 8 then
    return "Currency: All (8)"
  end
  if value == 12 then
    return "Currency: Dzd (12)"
  end
  if value == 32 then
    return "Currency: Ars (32)"
  end
  if value == 36 then
    return "Currency: Aud (36)"
  end
  if value == 44 then
    return "Currency: Bsd (44)"
  end
  if value == 48 then
    return "Currency: Bhd (48)"
  end
  if value == 50 then
    return "Currency: Bdt (50)"
  end
  if value == 51 then
    return "Currency: Amd (51)"
  end
  if value == 52 then
    return "Currency: Bbd (52)"
  end
  if value == 60 then
    return "Currency: Bmd (60)"
  end
  if value == 64 then
    return "Currency: Btn (64)"
  end
  if value == 68 then
    return "Currency: Bob (68)"
  end
  if value == 72 then
    return "Currency: Bwp (72)"
  end
  if value == 84 then
    return "Currency: Bzd (84)"
  end
  if value == 90 then
    return "Currency: Sbd (90)"
  end
  if value == 96 then
    return "Currency: Bnd (96)"
  end
  if value == 104 then
    return "Currency: Mmk (104)"
  end
  if value == 108 then
    return "Currency: Bif (108)"
  end
  if value == 116 then
    return "Currency: Khr (116)"
  end
  if value == 124 then
    return "Currency: Cad (124)"
  end
  if value == 132 then
    return "Currency: Cve (132)"
  end
  if value == 136 then
    return "Currency: Kyd (136)"
  end
  if value == 144 then
    return "Currency: Lkr (144)"
  end
  if value == 152 then
    return "Currency: Clp (152)"
  end
  if value == 156 then
    return "Currency: Cny (156)"
  end
  if value == 170 then
    return "Currency: Cop (170)"
  end
  if value == 174 then
    return "Currency: Kmf (174)"
  end
  if value == 188 then
    return "Currency: Crc (188)"
  end
  if value == 191 then
    return "Currency: Hrk (191)"
  end
  if value == 192 then
    return "Currency: Cup (192)"
  end
  if value == 203 then
    return "Currency: Czk (203)"
  end
  if value == 208 then
    return "Currency: Dkk (208)"
  end
  if value == 214 then
    return "Currency: Dop (214)"
  end
  if value == 222 then
    return "Currency: Svc (222)"
  end
  if value == 230 then
    return "Currency: Etb (230)"
  end
  if value == 232 then
    return "Currency: Ern (232)"
  end
  if value == 238 then
    return "Currency: Fkp (238)"
  end
  if value == 242 then
    return "Currency: Fjd (242)"
  end
  if value == 262 then
    return "Currency: Djf (262)"
  end
  if value == 270 then
    return "Currency: Gmd (270)"
  end
  if value == 292 then
    return "Currency: Gip (292)"
  end
  if value == 320 then
    return "Currency: Gtq (320)"
  end
  if value == 324 then
    return "Currency: Gnf (324)"
  end
  if value == 328 then
    return "Currency: Gyd (328)"
  end
  if value == 332 then
    return "Currency: Htg (332)"
  end
  if value == 340 then
    return "Currency: Hnl (340)"
  end
  if value == 344 then
    return "Currency: Hkd (344)"
  end
  if value == 348 then
    return "Currency: Huf (348)"
  end
  if value == 352 then
    return "Currency: Isk (352)"
  end
  if value == 356 then
    return "Currency: Inr (356)"
  end
  if value == 360 then
    return "Currency: Idr (360)"
  end
  if value == 364 then
    return "Currency: Irr (364)"
  end
  if value == 368 then
    return "Currency: Iqd (368)"
  end
  if value == 376 then
    return "Currency: Ils (376)"
  end
  if value == 388 then
    return "Currency: Jmd (388)"
  end
  if value == 392 then
    return "Currency: Jpy (392)"
  end
  if value == 398 then
    return "Currency: Kzt (398)"
  end
  if value == 400 then
    return "Currency: Jod (400)"
  end
  if value == 404 then
    return "Currency: Kes (404)"
  end
  if value == 408 then
    return "Currency: Kpw (408)"
  end
  if value == 410 then
    return "Currency: Krw (410)"
  end
  if value == 414 then
    return "Currency: Kwd (414)"
  end
  if value == 417 then
    return "Currency: Kgs (417)"
  end
  if value == 418 then
    return "Currency: Lak (418)"
  end
  if value == 422 then
    return "Currency: Lbp (422)"
  end
  if value == 426 then
    return "Currency: Lsl (426)"
  end
  if value == 430 then
    return "Currency: Lrd (430)"
  end
  if value == 434 then
    return "Currency: Lyd (434)"
  end
  if value == 446 then
    return "Currency: Mop (446)"
  end
  if value == 454 then
    return "Currency: Mwk (454)"
  end
  if value == 458 then
    return "Currency: Myr (458)"
  end
  if value == 462 then
    return "Currency: Mvr (462)"
  end
  if value == 480 then
    return "Currency: Mur (480)"
  end
  if value == 484 then
    return "Currency: Mxn (484)"
  end
  if value == 496 then
    return "Currency: Mnt (496)"
  end
  if value == 498 then
    return "Currency: Mdl (498)"
  end
  if value == 504 then
    return "Currency: Mad (504)"
  end
  if value == 512 then
    return "Currency: Omr (512)"
  end
  if value == 516 then
    return "Currency: Nad (516)"
  end
  if value == 524 then
    return "Currency: Npr (524)"
  end
  if value == 532 then
    return "Currency: Ang (532)"
  end
  if value == 533 then
    return "Currency: Awg (533)"
  end
  if value == 548 then
    return "Currency: Vuv (548)"
  end
  if value == 554 then
    return "Currency: Nzd (554)"
  end
  if value == 558 then
    return "Currency: Nio (558)"
  end
  if value == 566 then
    return "Currency: Ngn (566)"
  end
  if value == 578 then
    return "Currency: Nok (578)"
  end
  if value == 586 then
    return "Currency: Pkr (586)"
  end
  if value == 590 then
    return "Currency: Pab (590)"
  end
  if value == 598 then
    return "Currency: Pgk (598)"
  end
  if value == 600 then
    return "Currency: Pyg (600)"
  end
  if value == 604 then
    return "Currency: Pen (604)"
  end
  if value == 608 then
    return "Currency: Php (608)"
  end
  if value == 634 then
    return "Currency: Qar (634)"
  end
  if value == 643 then
    return "Currency: Rub (643)"
  end
  if value == 646 then
    return "Currency: Rwf (646)"
  end
  if value == 654 then
    return "Currency: Shp (654)"
  end
  if value == 682 then
    return "Currency: Sar (682)"
  end
  if value == 690 then
    return "Currency: Scr (690)"
  end
  if value == 702 then
    return "Currency: Sgd (702)"
  end
  if value == 704 then
    return "Currency: Vnd (704)"
  end
  if value == 706 then
    return "Currency: Sos (706)"
  end
  if value == 710 then
    return "Currency: Zar (710)"
  end
  if value == 728 then
    return "Currency: Ssp (728)"
  end
  if value == 748 then
    return "Currency: Szl (748)"
  end
  if value == 752 then
    return "Currency: Sek (752)"
  end
  if value == 756 then
    return "Currency: Chf (756)"
  end
  if value == 760 then
    return "Currency: Syp (760)"
  end
  if value == 764 then
    return "Currency: Thb (764)"
  end
  if value == 776 then
    return "Currency: Top (776)"
  end
  if value == 780 then
    return "Currency: Ttd (780)"
  end
  if value == 784 then
    return "Currency: Aed (784)"
  end
  if value == 788 then
    return "Currency: Tnd (788)"
  end
  if value == 800 then
    return "Currency: Ugx (800)"
  end
  if value == 807 then
    return "Currency: Mkd (807)"
  end
  if value == 818 then
    return "Currency: Egp (818)"
  end
  if value == 826 then
    return "Currency: Gbp (826)"
  end
  if value == 834 then
    return "Currency: Tzs (834)"
  end
  if value == 840 then
    return "Currency: Usd (840)"
  end
  if value == 858 then
    return "Currency: Uyu (858)"
  end
  if value == 860 then
    return "Currency: Uzs (860)"
  end
  if value == 882 then
    return "Currency: Wst (882)"
  end
  if value == 886 then
    return "Currency: Yer (886)"
  end
  if value == 901 then
    return "Currency: Twd (901)"
  end
  if value == 925 then
    return "Currency: Sle (925)"
  end
  if value == 926 then
    return "Currency: Ved (926)"
  end
  if value == 927 then
    return "Currency: Uyw (927)"
  end
  if value == 928 then
    return "Currency: Ves (928)"
  end
  if value == 929 then
    return "Currency: Mru (929)"
  end
  if value == 930 then
    return "Currency: Stn (930)"
  end
  if value == 931 then
    return "Currency: Cuc (931)"
  end
  if value == 932 then
    return "Currency: Zwl (932)"
  end
  if value == 933 then
    return "Currency: Byn (933)"
  end
  if value == 934 then
    return "Currency: Tmt (934)"
  end
  if value == 936 then
    return "Currency: Ghs (936)"
  end
  if value == 938 then
    return "Currency: Sdg (938)"
  end
  if value == 940 then
    return "Currency: Uyi (940)"
  end
  if value == 941 then
    return "Currency: Rsd (941)"
  end
  if value == 943 then
    return "Currency: Mzn (943)"
  end
  if value == 944 then
    return "Currency: Azn (944)"
  end
  if value == 946 then
    return "Currency: Ron (946)"
  end
  if value == 947 then
    return "Currency: Che (947)"
  end
  if value == 948 then
    return "Currency: Chw (948)"
  end
  if value == 949 then
    return "Currency: Try (949)"
  end
  if value == 950 then
    return "Currency: Xaf (950)"
  end
  if value == 951 then
    return "Currency: Xcd (951)"
  end
  if value == 952 then
    return "Currency: Xof (952)"
  end
  if value == 953 then
    return "Currency: Xpf (953)"
  end
  if value == 955 then
    return "Currency: Xba (955)"
  end
  if value == 956 then
    return "Currency: Xbb (956)"
  end
  if value == 957 then
    return "Currency: Xbc (957)"
  end
  if value == 958 then
    return "Currency: Xbd (958)"
  end
  if value == 959 then
    return "Currency: Xau (959)"
  end
  if value == 960 then
    return "Currency: Xdr (960)"
  end
  if value == 961 then
    return "Currency: Xag (961)"
  end
  if value == 962 then
    return "Currency: Xpt (962)"
  end
  if value == 963 then
    return "Currency: Xts (963)"
  end
  if value == 964 then
    return "Currency: Xpd (964)"
  end
  if value == 965 then
    return "Currency: Xua (965)"
  end
  if value == 967 then
    return "Currency: Zmw (967)"
  end
  if value == 968 then
    return "Currency: Srd (968)"
  end
  if value == 969 then
    return "Currency: Mga (969)"
  end
  if value == 970 then
    return "Currency: Cou (970)"
  end
  if value == 971 then
    return "Currency: Afn (971)"
  end
  if value == 972 then
    return "Currency: Tjs (972)"
  end
  if value == 973 then
    return "Currency: Aoa (973)"
  end
  if value == 975 then
    return "Currency: Bgn (975)"
  end
  if value == 976 then
    return "Currency: Cdf (976)"
  end
  if value == 977 then
    return "Currency: Bam (977)"
  end
  if value == 978 then
    return "Currency: Eur (978)"
  end
  if value == 979 then
    return "Currency: Mxv (979)"
  end
  if value == 980 then
    return "Currency: Uah (980)"
  end
  if value == 981 then
    return "Currency: Gel (981)"
  end
  if value == 984 then
    return "Currency: Bov (984)"
  end
  if value == 985 then
    return "Currency: Pln (985)"
  end
  if value == 986 then
    return "Currency: Brl (986)"
  end
  if value == 990 then
    return "Currency: Clf (990)"
  end
  if value == 994 then
    return "Currency: Xsu (994)"
  end
  if value == 997 then
    return "Currency: Usn (997)"
  end
  if value == 999 then
    return "Currency: Xxx (999)"
  end

  return "Currency: Unknown("..value..")"
end

-- Dissect: Currency
gpw_wse_replayfulldepth_wats_v1_7_6_20.currency.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.currency.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.currency, range, value, display)

  return offset + length, value
end

-- Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.date = {}

-- Size: Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.date.size = 4

-- Display: Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.date.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.date.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.date, range, value, display)

  return offset + length, value
end

-- Date Validity
gpw_wse_replayfulldepth_wats_v1_7_6_20.date_validity = {}

-- Size: Date Validity
gpw_wse_replayfulldepth_wats_v1_7_6_20.date_validity.size = 4

-- Display: Date Validity
gpw_wse_replayfulldepth_wats_v1_7_6_20.date_validity.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Date Validity: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Date Validity
gpw_wse_replayfulldepth_wats_v1_7_6_20.date_validity.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.date_validity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.date_validity.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.date_validity, range, value, display)

  return offset + length, value
end

-- Days Since Last Publication
gpw_wse_replayfulldepth_wats_v1_7_6_20.days_since_last_publication = {}

-- Size: Days Since Last Publication
gpw_wse_replayfulldepth_wats_v1_7_6_20.days_since_last_publication.size = 1

-- Display: Days Since Last Publication
gpw_wse_replayfulldepth_wats_v1_7_6_20.days_since_last_publication.display = function(value)
  return "Days Since Last Publication: "..value
end

-- Dissect: Days Since Last Publication
gpw_wse_replayfulldepth_wats_v1_7_6_20.days_since_last_publication.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.days_since_last_publication.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.days_since_last_publication.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.days_since_last_publication, range, value, display)

  return offset + length, value
end

-- Delta
gpw_wse_replayfulldepth_wats_v1_7_6_20.delta = {}

-- Size: Delta
gpw_wse_replayfulldepth_wats_v1_7_6_20.delta.size = 8

-- Display: Delta
gpw_wse_replayfulldepth_wats_v1_7_6_20.delta.display = function(value)
  return "Delta: "..value
end

-- Translate: Delta
gpw_wse_replayfulldepth_wats_v1_7_6_20.delta.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Delta
gpw_wse_replayfulldepth_wats_v1_7_6_20.delta.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.delta.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.delta.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.delta.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.delta, range, value, display)

  return offset + length, value
end

-- Description
gpw_wse_replayfulldepth_wats_v1_7_6_20.description = {}

-- Size: Description
gpw_wse_replayfulldepth_wats_v1_7_6_20.description.size = 64

-- Display: Description
gpw_wse_replayfulldepth_wats_v1_7_6_20.description.display = function(value)
  return "Description: "..value
end

-- Dissect: Description
gpw_wse_replayfulldepth_wats_v1_7_6_20.description.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.description.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.description.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.description, range, value, display)

  return offset + length, value
end

-- Difference Central Spread
gpw_wse_replayfulldepth_wats_v1_7_6_20.difference_central_spread = {}

-- Size: Difference Central Spread
gpw_wse_replayfulldepth_wats_v1_7_6_20.difference_central_spread.size = 8

-- Display: Difference Central Spread
gpw_wse_replayfulldepth_wats_v1_7_6_20.difference_central_spread.display = function(value)
  return "Difference Central Spread: "..value
end

-- Translate: Difference Central Spread
gpw_wse_replayfulldepth_wats_v1_7_6_20.difference_central_spread.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Difference Central Spread
gpw_wse_replayfulldepth_wats_v1_7_6_20.difference_central_spread.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.difference_central_spread.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.difference_central_spread.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.difference_central_spread.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.difference_central_spread, range, value, display)

  return offset + length, value
end

-- Dividend
gpw_wse_replayfulldepth_wats_v1_7_6_20.dividend = {}

-- Size: Dividend
gpw_wse_replayfulldepth_wats_v1_7_6_20.dividend.size = 1

-- Display: Dividend
gpw_wse_replayfulldepth_wats_v1_7_6_20.dividend.display = function(value)
  return "Dividend: "..value
end

-- Dissect: Dividend
gpw_wse_replayfulldepth_wats_v1_7_6_20.dividend.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.dividend.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.dividend.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.dividend, range, value, display)

  return offset + length, value
end

-- Dividend Rate
gpw_wse_replayfulldepth_wats_v1_7_6_20.dividend_rate = {}

-- Size: Dividend Rate
gpw_wse_replayfulldepth_wats_v1_7_6_20.dividend_rate.size = 8

-- Display: Dividend Rate
gpw_wse_replayfulldepth_wats_v1_7_6_20.dividend_rate.display = function(value)
  return "Dividend Rate: "..value
end

-- Translate: Dividend Rate
gpw_wse_replayfulldepth_wats_v1_7_6_20.dividend_rate.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Dividend Rate
gpw_wse_replayfulldepth_wats_v1_7_6_20.dividend_rate.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.dividend_rate.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.dividend_rate.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.dividend_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.dividend_rate, range, value, display)

  return offset + length, value
end

-- Dynamic Collar Volatility Auction Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.dynamic_collar_volatility_auction_id = {}

-- Size: Dynamic Collar Volatility Auction Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.dynamic_collar_volatility_auction_id.size = 4

-- Display: Dynamic Collar Volatility Auction Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.dynamic_collar_volatility_auction_id.display = function(value)
  return "Dynamic Collar Volatility Auction Id: "..value
end

-- Dissect: Dynamic Collar Volatility Auction Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.dynamic_collar_volatility_auction_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.dynamic_collar_volatility_auction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.dynamic_collar_volatility_auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.dynamic_collar_volatility_auction_id, range, value, display)

  return offset + length, value
end

-- Encryption Key Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.encryption_key_id = {}

-- Size: Encryption Key Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.encryption_key_id.size = 4

-- Display: Encryption Key Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.encryption_key_id.display = function(value)
  return "Encryption Key Id: "..value
end

-- Dissect: Encryption Key Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.encryption_key_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.encryption_key_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.encryption_key_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.encryption_key_id, range, value, display)

  return offset + length, value
end

-- Encryption Offset
gpw_wse_replayfulldepth_wats_v1_7_6_20.encryption_offset = {}

-- Size: Encryption Offset
gpw_wse_replayfulldepth_wats_v1_7_6_20.encryption_offset.size = 8

-- Display: Encryption Offset
gpw_wse_replayfulldepth_wats_v1_7_6_20.encryption_offset.display = function(value)
  return "Encryption Offset: "..value
end

-- Dissect: Encryption Offset
gpw_wse_replayfulldepth_wats_v1_7_6_20.encryption_offset.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.encryption_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.encryption_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.encryption_offset, range, value, display)

  return offset + length, value
end

-- End Seq Num
gpw_wse_replayfulldepth_wats_v1_7_6_20.end_seq_num = {}

-- Size: End Seq Num
gpw_wse_replayfulldepth_wats_v1_7_6_20.end_seq_num.size = 4

-- Display: End Seq Num
gpw_wse_replayfulldepth_wats_v1_7_6_20.end_seq_num.display = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
gpw_wse_replayfulldepth_wats_v1_7_6_20.end_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.end_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.end_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.end_seq_num, range, value, display)

  return offset + length, value
end

-- End Trading Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.end_trading_date = {}

-- Size: End Trading Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.end_trading_date.size = 4

-- Display: End Trading Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.end_trading_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("End Trading Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: End Trading Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.end_trading_date.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.end_trading_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.end_trading_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.end_trading_date, range, value, display)

  return offset + length, value
end

-- Entry Number
gpw_wse_replayfulldepth_wats_v1_7_6_20.entry_number = {}

-- Size: Entry Number
gpw_wse_replayfulldepth_wats_v1_7_6_20.entry_number.size = 1

-- Display: Entry Number
gpw_wse_replayfulldepth_wats_v1_7_6_20.entry_number.display = function(value)
  return "Entry Number: "..value
end

-- Dissect: Entry Number
gpw_wse_replayfulldepth_wats_v1_7_6_20.entry_number.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.entry_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.entry_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.entry_number, range, value, display)

  return offset + length, value
end

-- Event Type Event Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.event_type_event_type = {}

-- Size: Event Type Event Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.event_type_event_type.size = 1

-- Display: Event Type Event Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.event_type_event_type.display = function(value)
  if value == 1 then
    return "Event Type Event Type: Flush (1)"
  end
  if value == 2 then
    return "Event Type Event Type: Scenario Start (2)"
  end
  if value == 3 then
    return "Event Type Event Type: Scenario End (3)"
  end

  return "Event Type Event Type: Unknown("..value..")"
end

-- Dissect: Event Type Event Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.event_type_event_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.event_type_event_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.event_type_event_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.event_type_event_type, range, value, display)

  return offset + length, value
end

-- Event Type Order Book Event Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.event_type_order_book_event_type = {}

-- Size: Event Type Order Book Event Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.event_type_order_book_event_type.size = 1

-- Display: Event Type Order Book Event Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.event_type_order_book_event_type.display = function(value)
  if value == 1 then
    return "Event Type Order Book Event Type: Clear (1)"
  end
  if value == 2 then
    return "Event Type Order Book Event Type: Resend Start (2)"
  end
  if value == 3 then
    return "Event Type Order Book Event Type: Resend End (3)"
  end

  return "Event Type Order Book Event Type: Unknown("..value..")"
end

-- Dissect: Event Type Order Book Event Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.event_type_order_book_event_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.event_type_order_book_event_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.event_type_order_book_event_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.event_type_order_book_event_type, range, value, display)

  return offset + length, value
end

-- Execution Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.execution_price = {}

-- Size: Execution Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.execution_price.size = 8

-- Display: Execution Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.execution_price.display = function(value)
  return "Execution Price: "..value
end

-- Translate: Execution Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.execution_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Execution Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.execution_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.execution_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.execution_price.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.execution_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.execution_price, range, value, display)

  return offset + length, value
end

-- Execution Quantity
gpw_wse_replayfulldepth_wats_v1_7_6_20.execution_quantity = {}

-- Size: Execution Quantity
gpw_wse_replayfulldepth_wats_v1_7_6_20.execution_quantity.size = 8

-- Display: Execution Quantity
gpw_wse_replayfulldepth_wats_v1_7_6_20.execution_quantity.display = function(value)
  return "Execution Quantity: "..value
end

-- Dissect: Execution Quantity
gpw_wse_replayfulldepth_wats_v1_7_6_20.execution_quantity.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.execution_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.execution_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.execution_quantity, range, value, display)

  return offset + length, value
end

-- Exercise Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.exercise_type = {}

-- Size: Exercise Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.exercise_type.size = 1

-- Display: Exercise Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.exercise_type.display = function(value)
  if value == 1 then
    return "Exercise Type: Amer (1)"
  end
  if value == 2 then
    return "Exercise Type: Euro (2)"
  end
  if value == 3 then
    return "Exercise Type: Na (3)"
  end

  return "Exercise Type: Unknown("..value..")"
end

-- Dissect: Exercise Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.exercise_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.exercise_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.exercise_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.exercise_type, range, value, display)

  return offset + length, value
end

-- Expiry Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.expiry_date = {}

-- Size: Expiry Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.expiry_date.size = 4

-- Display: Expiry Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.expiry_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Expiry Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Expiry Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.expiry_date.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.expiry_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.expiry_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.expiry_date, range, value, display)

  return offset + length, value
end

-- Ext Dynamic Collar Volatility Auction Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.ext_dynamic_collar_volatility_auction_id = {}

-- Size: Ext Dynamic Collar Volatility Auction Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.ext_dynamic_collar_volatility_auction_id.size = 4

-- Display: Ext Dynamic Collar Volatility Auction Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.ext_dynamic_collar_volatility_auction_id.display = function(value)
  return "Ext Dynamic Collar Volatility Auction Id: "..value
end

-- Dissect: Ext Dynamic Collar Volatility Auction Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.ext_dynamic_collar_volatility_auction_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.ext_dynamic_collar_volatility_auction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.ext_dynamic_collar_volatility_auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.ext_dynamic_collar_volatility_auction_id, range, value, display)

  return offset + length, value
end

-- Ext Static Collar Volatility Auction Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.ext_static_collar_volatility_auction_id = {}

-- Size: Ext Static Collar Volatility Auction Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.ext_static_collar_volatility_auction_id.size = 4

-- Display: Ext Static Collar Volatility Auction Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.ext_static_collar_volatility_auction_id.display = function(value)
  return "Ext Static Collar Volatility Auction Id: "..value
end

-- Dissect: Ext Static Collar Volatility Auction Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.ext_static_collar_volatility_auction_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.ext_static_collar_volatility_auction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.ext_static_collar_volatility_auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.ext_static_collar_volatility_auction_id, range, value, display)

  return offset + length, value
end

-- External Underlying Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.external_underlying_id = {}

-- Size: External Underlying Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.external_underlying_id.size = 4

-- Display: External Underlying Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.external_underlying_id.display = function(value)
  return "External Underlying Id: "..value
end

-- Dissect: External Underlying Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.external_underlying_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.external_underlying_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.external_underlying_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.external_underlying_id, range, value, display)

  return offset + length, value
end

-- First Trading Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.first_trading_date = {}

-- Size: First Trading Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.first_trading_date.size = 4

-- Display: First Trading Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.first_trading_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("First Trading Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: First Trading Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.first_trading_date.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.first_trading_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.first_trading_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.first_trading_date, range, value, display)

  return offset + length, value
end

-- Fisn
gpw_wse_replayfulldepth_wats_v1_7_6_20.fisn = {}

-- Size: Fisn
gpw_wse_replayfulldepth_wats_v1_7_6_20.fisn.size = 35

-- Display: Fisn
gpw_wse_replayfulldepth_wats_v1_7_6_20.fisn.display = function(value)
  return "Fisn: "..value
end

-- Dissect: Fisn
gpw_wse_replayfulldepth_wats_v1_7_6_20.fisn.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.fisn.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.fisn.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.fisn, range, value, display)

  return offset + length, value
end

-- Gamma
gpw_wse_replayfulldepth_wats_v1_7_6_20.gamma = {}

-- Size: Gamma
gpw_wse_replayfulldepth_wats_v1_7_6_20.gamma.size = 8

-- Display: Gamma
gpw_wse_replayfulldepth_wats_v1_7_6_20.gamma.display = function(value)
  return "Gamma: "..value
end

-- Translate: Gamma
gpw_wse_replayfulldepth_wats_v1_7_6_20.gamma.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Gamma
gpw_wse_replayfulldepth_wats_v1_7_6_20.gamma.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.gamma.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.gamma.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.gamma.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.gamma, range, value, display)

  return offset + length, value
end

-- Iceberg Min Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.iceberg_min_value = {}

-- Size: Iceberg Min Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.iceberg_min_value.size = 8

-- Display: Iceberg Min Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.iceberg_min_value.display = function(value)
  return "Iceberg Min Value: "..value
end

-- Translate: Iceberg Min Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.iceberg_min_value.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Iceberg Min Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.iceberg_min_value.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.iceberg_min_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.iceberg_min_value.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.iceberg_min_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.iceberg_min_value, range, value, display)

  return offset + length, value
end

-- Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.id = {}

-- Size: Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.id.size = 4

-- Display: Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.id.display = function(value)
  return "Id: "..value
end

-- Dissect: Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.id, range, value, display)

  return offset + length, value
end

-- Ind Index Opening Portfolio
gpw_wse_replayfulldepth_wats_v1_7_6_20.ind_index_opening_portfolio = {}

-- Size: Ind Index Opening Portfolio
gpw_wse_replayfulldepth_wats_v1_7_6_20.ind_index_opening_portfolio.size = 8

-- Display: Ind Index Opening Portfolio
gpw_wse_replayfulldepth_wats_v1_7_6_20.ind_index_opening_portfolio.display = function(value)
  return "Ind Index Opening Portfolio: "..value
end

-- Translate: Ind Index Opening Portfolio
gpw_wse_replayfulldepth_wats_v1_7_6_20.ind_index_opening_portfolio.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Ind Index Opening Portfolio
gpw_wse_replayfulldepth_wats_v1_7_6_20.ind_index_opening_portfolio.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.ind_index_opening_portfolio.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.ind_index_opening_portfolio.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.ind_index_opening_portfolio.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.ind_index_opening_portfolio, range, value, display)

  return offset + length, value
end

-- Index Base Capitalisation
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_base_capitalisation = {}

-- Size: Index Base Capitalisation
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_base_capitalisation.size = 8

-- Display: Index Base Capitalisation
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_base_capitalisation.display = function(value)
  return "Index Base Capitalisation: "..value
end

-- Translate: Index Base Capitalisation
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_base_capitalisation.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Index Base Capitalisation
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_base_capitalisation.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_base_capitalisation.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_base_capitalisation.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_base_capitalisation.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.index_base_capitalisation, range, value, display)

  return offset + length, value
end

-- Index Base Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_base_date = {}

-- Size: Index Base Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_base_date.size = 4

-- Display: Index Base Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_base_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Index Base Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Index Base Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_base_date.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_base_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_base_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.index_base_date, range, value, display)

  return offset + length, value
end

-- Index Base Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_base_value = {}

-- Size: Index Base Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_base_value.size = 8

-- Display: Index Base Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_base_value.display = function(value)
  return "Index Base Value: "..value
end

-- Translate: Index Base Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_base_value.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Index Base Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_base_value.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_base_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_base_value.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_base_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.index_base_value, range, value, display)

  return offset + length, value
end

-- Index Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_id = {}

-- Size: Index Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_id.size = 4

-- Display: Index Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_id.display = function(value)
  return "Index Id: "..value
end

-- Dissect: Index Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.index_id, range, value, display)

  return offset + length, value
end

-- Index Level Code
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_level_code = {}

-- Size: Index Level Code
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_level_code.size = 1

-- Display: Index Level Code
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_level_code.display = function(value)
  if value == 1 then
    return "Index Level Code: Previous Closing Value (1)"
  end
  if value == 2 then
    return "Index Level Code: Theoretical Value Before Opening (2)"
  end
  if value == 3 then
    return "Index Level Code: Value Before Opening (3)"
  end
  if value == 4 then
    return "Index Level Code: Opening Value (4)"
  end
  if value == 5 then
    return "Index Level Code: Current Value (5)"
  end
  if value == 6 then
    return "Index Level Code: Pre Closing Value (6)"
  end
  if value == 7 then
    return "Index Level Code: Closing Value (7)"
  end
  if value == 8 then
    return "Index Level Code: Value Without Opening (8)"
  end

  return "Index Level Code: Unknown("..value..")"
end

-- Dissect: Index Level Code
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_level_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_level_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_level_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.index_level_code, range, value, display)

  return offset + length, value
end

-- Index Publication Schedule
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_publication_schedule = {}

-- Size: Index Publication Schedule
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_publication_schedule.size = 1

-- Display: Index Publication Schedule
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_publication_schedule.display = function(value)
  if value == 1 then
    return "Index Publication Schedule: Continuous (1)"
  end
  if value == 2 then
    return "Index Publication Schedule: Fixing (2)"
  end
  if value == 3 then
    return "Index Publication Schedule: Closing (3)"
  end

  return "Index Publication Schedule: Unknown("..value..")"
end

-- Dissect: Index Publication Schedule
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_publication_schedule.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_publication_schedule.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_publication_schedule.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.index_publication_schedule, range, value, display)

  return offset + length, value
end

-- Index Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_type = {}

-- Size: Index Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_type.size = 1

-- Display: Index Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_type.display = function(value)
  if value == 1 then
    return "Index Type: W (1)"
  end
  if value == 2 then
    return "Index Type: Z (2)"
  end
  if value == 3 then
    return "Index Type: V (3)"
  end
  if value == 4 then
    return "Index Type: M (4)"
  end
  if value == 5 then
    return "Index Type: S (5)"
  end
  if value == 6 then
    return "Index Type: L (6)"
  end

  return "Index Type: Unknown("..value..")"
end

-- Dissect: Index Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.index_type, range, value, display)

  return offset + length, value
end

-- Index Underlying Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_underlying_type = {}

-- Size: Index Underlying Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_underlying_type.size = 1

-- Display: Index Underlying Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_underlying_type.display = function(value)
  if value == 1 then
    return "Index Underlying Type: Not Applicable (1)"
  end
  if value == 2 then
    return "Index Underlying Type: Index (2)"
  end
  if value == 3 then
    return "Index Underlying Type: Reference Rate (3)"
  end

  return "Index Underlying Type: Unknown("..value..")"
end

-- Dissect: Index Underlying Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_underlying_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_underlying_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_underlying_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.index_underlying_type, range, value, display)

  return offset + length, value
end

-- Index Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_value = {}

-- Size: Index Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_value.size = 8

-- Display: Index Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_value.display = function(value)
  return "Index Value: "..value
end

-- Translate: Index Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_value.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Index Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_value.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_value.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.index_value, range, value, display)

  return offset + length, value
end

-- Index Value Ask
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_value_ask = {}

-- Size: Index Value Ask
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_value_ask.size = 8

-- Display: Index Value Ask
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_value_ask.display = function(value)
  return "Index Value Ask: "..value
end

-- Translate: Index Value Ask
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_value_ask.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Index Value Ask
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_value_ask.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_value_ask.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_value_ask.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_value_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.index_value_ask, range, value, display)

  return offset + length, value
end

-- Index Value Bid
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_value_bid = {}

-- Size: Index Value Bid
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_value_bid.size = 8

-- Display: Index Value Bid
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_value_bid.display = function(value)
  return "Index Value Bid: "..value
end

-- Translate: Index Value Bid
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_value_bid.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Index Value Bid
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_value_bid.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_value_bid.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_value_bid.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_value_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.index_value_bid, range, value, display)

  return offset + length, value
end

-- Indexation Table Entry Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.indexation_table_entry_date = {}

-- Size: Indexation Table Entry Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.indexation_table_entry_date.size = 4

-- Display: Indexation Table Entry Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.indexation_table_entry_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Indexation Table Entry Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Indexation Table Entry Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.indexation_table_entry_date.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.indexation_table_entry_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.indexation_table_entry_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.indexation_table_entry_date, range, value, display)

  return offset + length, value
end

-- Indexation Table Entry Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.indexation_table_entry_value = {}

-- Size: Indexation Table Entry Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.indexation_table_entry_value.size = 8

-- Display: Indexation Table Entry Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.indexation_table_entry_value.display = function(value)
  return "Indexation Table Entry Value: "..value
end

-- Translate: Indexation Table Entry Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.indexation_table_entry_value.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Indexation Table Entry Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.indexation_table_entry_value.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.indexation_table_entry_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.indexation_table_entry_value.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.indexation_table_entry_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.indexation_table_entry_value, range, value, display)

  return offset + length, value
end

-- Indicative Matching Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.indicative_matching_price = {}

-- Size: Indicative Matching Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.indicative_matching_price.size = 8

-- Display: Indicative Matching Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.indicative_matching_price.display = function(value)
  return "Indicative Matching Price: "..value
end

-- Translate: Indicative Matching Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.indicative_matching_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Indicative Matching Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.indicative_matching_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.indicative_matching_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.indicative_matching_price.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.indicative_matching_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.indicative_matching_price, range, value, display)

  return offset + length, value
end

-- Indicative Matching Volume
gpw_wse_replayfulldepth_wats_v1_7_6_20.indicative_matching_volume = {}

-- Size: Indicative Matching Volume
gpw_wse_replayfulldepth_wats_v1_7_6_20.indicative_matching_volume.size = 8

-- Display: Indicative Matching Volume
gpw_wse_replayfulldepth_wats_v1_7_6_20.indicative_matching_volume.display = function(value)
  return "Indicative Matching Volume: "..value
end

-- Dissect: Indicative Matching Volume
gpw_wse_replayfulldepth_wats_v1_7_6_20.indicative_matching_volume.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.indicative_matching_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.indicative_matching_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.indicative_matching_volume, range, value, display)

  return offset + length, value
end

-- Initial Phase Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.initial_phase_id = {}

-- Size: Initial Phase Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.initial_phase_id.size = 4

-- Display: Initial Phase Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.initial_phase_id.display = function(value)
  return "Initial Phase Id: "..value
end

-- Dissect: Initial Phase Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.initial_phase_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.initial_phase_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.initial_phase_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.initial_phase_id, range, value, display)

  return offset + length, value
end

-- Instrument Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id = {}

-- Size: Instrument Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.size = 4

-- Display: Instrument Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Instrument Packet
gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_packet = {}

-- Size: Instrument Packet
gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_packet.size = 8

-- Display: Instrument Packet
gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_packet.display = function(value)
  return "Instrument Packet: "..value
end

-- Dissect: Instrument Packet
gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_packet.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_packet.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_packet.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.instrument_packet, range, value, display)

  return offset + length, value
end

-- Interest Rate
gpw_wse_replayfulldepth_wats_v1_7_6_20.interest_rate = {}

-- Size: Interest Rate
gpw_wse_replayfulldepth_wats_v1_7_6_20.interest_rate.size = 8

-- Display: Interest Rate
gpw_wse_replayfulldepth_wats_v1_7_6_20.interest_rate.display = function(value)
  return "Interest Rate: "..value
end

-- Translate: Interest Rate
gpw_wse_replayfulldepth_wats_v1_7_6_20.interest_rate.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Interest Rate
gpw_wse_replayfulldepth_wats_v1_7_6_20.interest_rate.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.interest_rate.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.interest_rate.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.interest_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.interest_rate, range, value, display)

  return offset + length, value
end

-- Interim Dividend Right
gpw_wse_replayfulldepth_wats_v1_7_6_20.interim_dividend_right = {}

-- Size: Interim Dividend Right
gpw_wse_replayfulldepth_wats_v1_7_6_20.interim_dividend_right.size = 1

-- Display: Interim Dividend Right
gpw_wse_replayfulldepth_wats_v1_7_6_20.interim_dividend_right.display = function(value)
  return "Interim Dividend Right: "..value
end

-- Dissect: Interim Dividend Right
gpw_wse_replayfulldepth_wats_v1_7_6_20.interim_dividend_right.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.interim_dividend_right.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.interim_dividend_right.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.interim_dividend_right, range, value, display)

  return offset + length, value
end

-- Is Correction
gpw_wse_replayfulldepth_wats_v1_7_6_20.is_correction = {}

-- Size: Is Correction
gpw_wse_replayfulldepth_wats_v1_7_6_20.is_correction.size = 1

-- Display: Is Correction
gpw_wse_replayfulldepth_wats_v1_7_6_20.is_correction.display = function(value)
  return "Is Correction: "..value
end

-- Dissect: Is Correction
gpw_wse_replayfulldepth_wats_v1_7_6_20.is_correction.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.is_correction.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.is_correction.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.is_correction, range, value, display)

  return offset + length, value
end

-- Is Encrypted
gpw_wse_replayfulldepth_wats_v1_7_6_20.is_encrypted = {}

-- Size: Is Encrypted
gpw_wse_replayfulldepth_wats_v1_7_6_20.is_encrypted.size = 1

-- Display: Is Encrypted
gpw_wse_replayfulldepth_wats_v1_7_6_20.is_encrypted.display = function(value)
  return "Is Encrypted: "..value
end

-- Dissect: Is Encrypted
gpw_wse_replayfulldepth_wats_v1_7_6_20.is_encrypted.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.is_encrypted.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.is_encrypted.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.is_encrypted, range, value, display)

  return offset + length, value
end

-- Is Leverage
gpw_wse_replayfulldepth_wats_v1_7_6_20.is_leverage = {}

-- Size: Is Leverage
gpw_wse_replayfulldepth_wats_v1_7_6_20.is_leverage.size = 1

-- Display: Is Leverage
gpw_wse_replayfulldepth_wats_v1_7_6_20.is_leverage.display = function(value)
  if value == 1 then
    return "Is Leverage: Not Applicable (1)"
  end
  if value == 2 then
    return "Is Leverage: Yes (2)"
  end
  if value == 3 then
    return "Is Leverage: No (3)"
  end

  return "Is Leverage: Unknown("..value..")"
end

-- Dissect: Is Leverage
gpw_wse_replayfulldepth_wats_v1_7_6_20.is_leverage.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.is_leverage.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.is_leverage.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.is_leverage, range, value, display)

  return offset + length, value
end

-- Issue Size
gpw_wse_replayfulldepth_wats_v1_7_6_20.issue_size = {}

-- Size: Issue Size
gpw_wse_replayfulldepth_wats_v1_7_6_20.issue_size.size = 8

-- Display: Issue Size
gpw_wse_replayfulldepth_wats_v1_7_6_20.issue_size.display = function(value)
  return "Issue Size: "..value
end

-- Dissect: Issue Size
gpw_wse_replayfulldepth_wats_v1_7_6_20.issue_size.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.issue_size.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.issue_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.issue_size, range, value, display)

  return offset + length, value
end

-- Issuer
gpw_wse_replayfulldepth_wats_v1_7_6_20.issuer = {}

-- Size: Issuer
gpw_wse_replayfulldepth_wats_v1_7_6_20.issuer.size = 150

-- Display: Issuer
gpw_wse_replayfulldepth_wats_v1_7_6_20.issuer.display = function(value)
  return "Issuer: "..value
end

-- Dissect: Issuer
gpw_wse_replayfulldepth_wats_v1_7_6_20.issuer.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.issuer.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.issuer.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.issuer, range, value, display)

  return offset + length, value
end

-- Issuer Reg Country
gpw_wse_replayfulldepth_wats_v1_7_6_20.issuer_reg_country = {}

-- Size: Issuer Reg Country
gpw_wse_replayfulldepth_wats_v1_7_6_20.issuer_reg_country.size = 2

-- Display: Issuer Reg Country
gpw_wse_replayfulldepth_wats_v1_7_6_20.issuer_reg_country.display = function(value)
  if value == 4 then
    return "Issuer Reg Country: Afg (4)"
  end
  if value == 8 then
    return "Issuer Reg Country: Alb (8)"
  end
  if value == 10 then
    return "Issuer Reg Country: Ata (10)"
  end
  if value == 12 then
    return "Issuer Reg Country: Dza (12)"
  end
  if value == 16 then
    return "Issuer Reg Country: Asm (16)"
  end
  if value == 20 then
    return "Issuer Reg Country: And (20)"
  end
  if value == 24 then
    return "Issuer Reg Country: Ago (24)"
  end
  if value == 28 then
    return "Issuer Reg Country: Atg (28)"
  end
  if value == 31 then
    return "Issuer Reg Country: Aze (31)"
  end
  if value == 32 then
    return "Issuer Reg Country: Arg (32)"
  end
  if value == 36 then
    return "Issuer Reg Country: Aus (36)"
  end
  if value == 40 then
    return "Issuer Reg Country: Aut (40)"
  end
  if value == 44 then
    return "Issuer Reg Country: Bhs (44)"
  end
  if value == 48 then
    return "Issuer Reg Country: Bhr (48)"
  end
  if value == 50 then
    return "Issuer Reg Country: Bgd (50)"
  end
  if value == 51 then
    return "Issuer Reg Country: Arm (51)"
  end
  if value == 52 then
    return "Issuer Reg Country: Brb (52)"
  end
  if value == 56 then
    return "Issuer Reg Country: Bel (56)"
  end
  if value == 60 then
    return "Issuer Reg Country: Bmu (60)"
  end
  if value == 64 then
    return "Issuer Reg Country: Btn (64)"
  end
  if value == 68 then
    return "Issuer Reg Country: Bol (68)"
  end
  if value == 70 then
    return "Issuer Reg Country: Bih (70)"
  end
  if value == 72 then
    return "Issuer Reg Country: Bwa (72)"
  end
  if value == 74 then
    return "Issuer Reg Country: Bvt (74)"
  end
  if value == 76 then
    return "Issuer Reg Country: Bra (76)"
  end
  if value == 84 then
    return "Issuer Reg Country: Blz (84)"
  end
  if value == 86 then
    return "Issuer Reg Country: Iot (86)"
  end
  if value == 90 then
    return "Issuer Reg Country: Slb (90)"
  end
  if value == 92 then
    return "Issuer Reg Country: Vgb (92)"
  end
  if value == 96 then
    return "Issuer Reg Country: Brn (96)"
  end
  if value == 100 then
    return "Issuer Reg Country: Bgr (100)"
  end
  if value == 104 then
    return "Issuer Reg Country: Mmr (104)"
  end
  if value == 108 then
    return "Issuer Reg Country: Bdi (108)"
  end
  if value == 112 then
    return "Issuer Reg Country: Blr (112)"
  end
  if value == 116 then
    return "Issuer Reg Country: Khm (116)"
  end
  if value == 120 then
    return "Issuer Reg Country: Cmr (120)"
  end
  if value == 124 then
    return "Issuer Reg Country: Can (124)"
  end
  if value == 132 then
    return "Issuer Reg Country: Cpv (132)"
  end
  if value == 136 then
    return "Issuer Reg Country: Cym (136)"
  end
  if value == 140 then
    return "Issuer Reg Country: Caf (140)"
  end
  if value == 144 then
    return "Issuer Reg Country: Lka (144)"
  end
  if value == 148 then
    return "Issuer Reg Country: Tcd (148)"
  end
  if value == 152 then
    return "Issuer Reg Country: Chl (152)"
  end
  if value == 156 then
    return "Issuer Reg Country: Chn (156)"
  end
  if value == 158 then
    return "Issuer Reg Country: Twn (158)"
  end
  if value == 162 then
    return "Issuer Reg Country: Cxr (162)"
  end
  if value == 166 then
    return "Issuer Reg Country: Cck (166)"
  end
  if value == 170 then
    return "Issuer Reg Country: Col (170)"
  end
  if value == 174 then
    return "Issuer Reg Country: Com (174)"
  end
  if value == 175 then
    return "Issuer Reg Country: Myt (175)"
  end
  if value == 178 then
    return "Issuer Reg Country: Cog (178)"
  end
  if value == 180 then
    return "Issuer Reg Country: Cod (180)"
  end
  if value == 184 then
    return "Issuer Reg Country: Cok (184)"
  end
  if value == 188 then
    return "Issuer Reg Country: Cri (188)"
  end
  if value == 191 then
    return "Issuer Reg Country: Hrv (191)"
  end
  if value == 192 then
    return "Issuer Reg Country: Cub (192)"
  end
  if value == 196 then
    return "Issuer Reg Country: Cyp (196)"
  end
  if value == 203 then
    return "Issuer Reg Country: Cze (203)"
  end
  if value == 204 then
    return "Issuer Reg Country: Ben (204)"
  end
  if value == 208 then
    return "Issuer Reg Country: Dnk (208)"
  end
  if value == 212 then
    return "Issuer Reg Country: Dma (212)"
  end
  if value == 214 then
    return "Issuer Reg Country: Dom (214)"
  end
  if value == 218 then
    return "Issuer Reg Country: Ecu (218)"
  end
  if value == 222 then
    return "Issuer Reg Country: Slv (222)"
  end
  if value == 226 then
    return "Issuer Reg Country: Gnq (226)"
  end
  if value == 231 then
    return "Issuer Reg Country: Eth (231)"
  end
  if value == 232 then
    return "Issuer Reg Country: Eri (232)"
  end
  if value == 233 then
    return "Issuer Reg Country: Est (233)"
  end
  if value == 234 then
    return "Issuer Reg Country: Fro (234)"
  end
  if value == 238 then
    return "Issuer Reg Country: Flk (238)"
  end
  if value == 239 then
    return "Issuer Reg Country: Sgs (239)"
  end
  if value == 242 then
    return "Issuer Reg Country: Fji (242)"
  end
  if value == 246 then
    return "Issuer Reg Country: Fin (246)"
  end
  if value == 248 then
    return "Issuer Reg Country: Ala (248)"
  end
  if value == 250 then
    return "Issuer Reg Country: Fra (250)"
  end
  if value == 254 then
    return "Issuer Reg Country: Guf (254)"
  end
  if value == 258 then
    return "Issuer Reg Country: Pyf (258)"
  end
  if value == 260 then
    return "Issuer Reg Country: Atf (260)"
  end
  if value == 262 then
    return "Issuer Reg Country: Dji (262)"
  end
  if value == 266 then
    return "Issuer Reg Country: Gab (266)"
  end
  if value == 268 then
    return "Issuer Reg Country: Geo (268)"
  end
  if value == 270 then
    return "Issuer Reg Country: Gmb (270)"
  end
  if value == 275 then
    return "Issuer Reg Country: Pse (275)"
  end
  if value == 276 then
    return "Issuer Reg Country: Deu (276)"
  end
  if value == 288 then
    return "Issuer Reg Country: Gha (288)"
  end
  if value == 292 then
    return "Issuer Reg Country: Gib (292)"
  end
  if value == 296 then
    return "Issuer Reg Country: Kir (296)"
  end
  if value == 300 then
    return "Issuer Reg Country: Grc (300)"
  end
  if value == 304 then
    return "Issuer Reg Country: Grl (304)"
  end
  if value == 308 then
    return "Issuer Reg Country: Grd (308)"
  end
  if value == 312 then
    return "Issuer Reg Country: Glp (312)"
  end
  if value == 316 then
    return "Issuer Reg Country: Gum (316)"
  end
  if value == 320 then
    return "Issuer Reg Country: Gtm (320)"
  end
  if value == 324 then
    return "Issuer Reg Country: Gin (324)"
  end
  if value == 328 then
    return "Issuer Reg Country: Guy (328)"
  end
  if value == 332 then
    return "Issuer Reg Country: Hti (332)"
  end
  if value == 334 then
    return "Issuer Reg Country: Hmd (334)"
  end
  if value == 336 then
    return "Issuer Reg Country: Vat (336)"
  end
  if value == 340 then
    return "Issuer Reg Country: Hnd (340)"
  end
  if value == 344 then
    return "Issuer Reg Country: Hkg (344)"
  end
  if value == 348 then
    return "Issuer Reg Country: Hun (348)"
  end
  if value == 352 then
    return "Issuer Reg Country: Isl (352)"
  end
  if value == 356 then
    return "Issuer Reg Country: Ind (356)"
  end
  if value == 360 then
    return "Issuer Reg Country: Idn (360)"
  end
  if value == 364 then
    return "Issuer Reg Country: Irn (364)"
  end
  if value == 368 then
    return "Issuer Reg Country: Irq (368)"
  end
  if value == 372 then
    return "Issuer Reg Country: Irl (372)"
  end
  if value == 376 then
    return "Issuer Reg Country: Isr (376)"
  end
  if value == 380 then
    return "Issuer Reg Country: Ita (380)"
  end
  if value == 384 then
    return "Issuer Reg Country: Civ (384)"
  end
  if value == 388 then
    return "Issuer Reg Country: Jam (388)"
  end
  if value == 392 then
    return "Issuer Reg Country: Jpn (392)"
  end
  if value == 398 then
    return "Issuer Reg Country: Kaz (398)"
  end
  if value == 400 then
    return "Issuer Reg Country: Jor (400)"
  end
  if value == 404 then
    return "Issuer Reg Country: Ken (404)"
  end
  if value == 408 then
    return "Issuer Reg Country: Prk (408)"
  end
  if value == 410 then
    return "Issuer Reg Country: Kor (410)"
  end
  if value == 414 then
    return "Issuer Reg Country: Kwt (414)"
  end
  if value == 417 then
    return "Issuer Reg Country: Kgz (417)"
  end
  if value == 418 then
    return "Issuer Reg Country: Lao (418)"
  end
  if value == 422 then
    return "Issuer Reg Country: Lbn (422)"
  end
  if value == 426 then
    return "Issuer Reg Country: Lso (426)"
  end
  if value == 428 then
    return "Issuer Reg Country: Lva (428)"
  end
  if value == 430 then
    return "Issuer Reg Country: Lbr (430)"
  end
  if value == 434 then
    return "Issuer Reg Country: Lby (434)"
  end
  if value == 438 then
    return "Issuer Reg Country: Lie (438)"
  end
  if value == 440 then
    return "Issuer Reg Country: Ltu (440)"
  end
  if value == 442 then
    return "Issuer Reg Country: Lux (442)"
  end
  if value == 446 then
    return "Issuer Reg Country: Mac (446)"
  end
  if value == 450 then
    return "Issuer Reg Country: Mdg (450)"
  end
  if value == 454 then
    return "Issuer Reg Country: Mwi (454)"
  end
  if value == 458 then
    return "Issuer Reg Country: Mys (458)"
  end
  if value == 462 then
    return "Issuer Reg Country: Mdv (462)"
  end
  if value == 466 then
    return "Issuer Reg Country: Mli (466)"
  end
  if value == 470 then
    return "Issuer Reg Country: Mlt (470)"
  end
  if value == 474 then
    return "Issuer Reg Country: Mtq (474)"
  end
  if value == 478 then
    return "Issuer Reg Country: Mrt (478)"
  end
  if value == 480 then
    return "Issuer Reg Country: Mus (480)"
  end
  if value == 484 then
    return "Issuer Reg Country: Mex (484)"
  end
  if value == 492 then
    return "Issuer Reg Country: Mco (492)"
  end
  if value == 496 then
    return "Issuer Reg Country: Mng (496)"
  end
  if value == 498 then
    return "Issuer Reg Country: Mda (498)"
  end
  if value == 499 then
    return "Issuer Reg Country: Mne (499)"
  end
  if value == 500 then
    return "Issuer Reg Country: Msr (500)"
  end
  if value == 504 then
    return "Issuer Reg Country: Mar (504)"
  end
  if value == 508 then
    return "Issuer Reg Country: Moz (508)"
  end
  if value == 512 then
    return "Issuer Reg Country: Omn (512)"
  end
  if value == 516 then
    return "Issuer Reg Country: Nam (516)"
  end
  if value == 520 then
    return "Issuer Reg Country: Nru (520)"
  end
  if value == 524 then
    return "Issuer Reg Country: Npl (524)"
  end
  if value == 528 then
    return "Issuer Reg Country: Nld (528)"
  end
  if value == 531 then
    return "Issuer Reg Country: Cuw (531)"
  end
  if value == 533 then
    return "Issuer Reg Country: Abw (533)"
  end
  if value == 534 then
    return "Issuer Reg Country: Sxm (534)"
  end
  if value == 535 then
    return "Issuer Reg Country: Bes (535)"
  end
  if value == 540 then
    return "Issuer Reg Country: Ncl (540)"
  end
  if value == 548 then
    return "Issuer Reg Country: Vut (548)"
  end
  if value == 554 then
    return "Issuer Reg Country: Nzl (554)"
  end
  if value == 558 then
    return "Issuer Reg Country: Nic (558)"
  end
  if value == 562 then
    return "Issuer Reg Country: Ner (562)"
  end
  if value == 566 then
    return "Issuer Reg Country: Nga (566)"
  end
  if value == 570 then
    return "Issuer Reg Country: Niu (570)"
  end
  if value == 574 then
    return "Issuer Reg Country: Nfk (574)"
  end
  if value == 578 then
    return "Issuer Reg Country: Nor (578)"
  end
  if value == 580 then
    return "Issuer Reg Country: Mnp (580)"
  end
  if value == 581 then
    return "Issuer Reg Country: Umi (581)"
  end
  if value == 583 then
    return "Issuer Reg Country: Fsm (583)"
  end
  if value == 584 then
    return "Issuer Reg Country: Mhl (584)"
  end
  if value == 585 then
    return "Issuer Reg Country: Plw (585)"
  end
  if value == 586 then
    return "Issuer Reg Country: Pak (586)"
  end
  if value == 591 then
    return "Issuer Reg Country: Pan (591)"
  end
  if value == 598 then
    return "Issuer Reg Country: Png (598)"
  end
  if value == 600 then
    return "Issuer Reg Country: Pry (600)"
  end
  if value == 604 then
    return "Issuer Reg Country: Per (604)"
  end
  if value == 608 then
    return "Issuer Reg Country: Phl (608)"
  end
  if value == 612 then
    return "Issuer Reg Country: Pcn (612)"
  end
  if value == 616 then
    return "Issuer Reg Country: Pol (616)"
  end
  if value == 620 then
    return "Issuer Reg Country: Prt (620)"
  end
  if value == 624 then
    return "Issuer Reg Country: Gnb (624)"
  end
  if value == 626 then
    return "Issuer Reg Country: Tls (626)"
  end
  if value == 630 then
    return "Issuer Reg Country: Pri (630)"
  end
  if value == 634 then
    return "Issuer Reg Country: Qat (634)"
  end
  if value == 638 then
    return "Issuer Reg Country: Reu (638)"
  end
  if value == 642 then
    return "Issuer Reg Country: Rou (642)"
  end
  if value == 643 then
    return "Issuer Reg Country: Rus (643)"
  end
  if value == 646 then
    return "Issuer Reg Country: Rwa (646)"
  end
  if value == 652 then
    return "Issuer Reg Country: Blm (652)"
  end
  if value == 654 then
    return "Issuer Reg Country: Shn (654)"
  end
  if value == 659 then
    return "Issuer Reg Country: Kna (659)"
  end
  if value == 660 then
    return "Issuer Reg Country: Aia (660)"
  end
  if value == 662 then
    return "Issuer Reg Country: Lca (662)"
  end
  if value == 663 then
    return "Issuer Reg Country: Maf (663)"
  end
  if value == 666 then
    return "Issuer Reg Country: Spm (666)"
  end
  if value == 670 then
    return "Issuer Reg Country: Vct (670)"
  end
  if value == 674 then
    return "Issuer Reg Country: Smr (674)"
  end
  if value == 678 then
    return "Issuer Reg Country: Stp (678)"
  end
  if value == 682 then
    return "Issuer Reg Country: Sau (682)"
  end
  if value == 686 then
    return "Issuer Reg Country: Sen (686)"
  end
  if value == 688 then
    return "Issuer Reg Country: Srb (688)"
  end
  if value == 690 then
    return "Issuer Reg Country: Syc (690)"
  end
  if value == 694 then
    return "Issuer Reg Country: Sle (694)"
  end
  if value == 702 then
    return "Issuer Reg Country: Sgp (702)"
  end
  if value == 703 then
    return "Issuer Reg Country: Svk (703)"
  end
  if value == 704 then
    return "Issuer Reg Country: Vnm (704)"
  end
  if value == 705 then
    return "Issuer Reg Country: Svn (705)"
  end
  if value == 706 then
    return "Issuer Reg Country: Som (706)"
  end
  if value == 710 then
    return "Issuer Reg Country: Zaf (710)"
  end
  if value == 716 then
    return "Issuer Reg Country: Zwe (716)"
  end
  if value == 724 then
    return "Issuer Reg Country: Esp (724)"
  end
  if value == 728 then
    return "Issuer Reg Country: Ssd (728)"
  end
  if value == 729 then
    return "Issuer Reg Country: Sdn (729)"
  end
  if value == 732 then
    return "Issuer Reg Country: Esh (732)"
  end
  if value == 740 then
    return "Issuer Reg Country: Sur (740)"
  end
  if value == 744 then
    return "Issuer Reg Country: Sjm (744)"
  end
  if value == 748 then
    return "Issuer Reg Country: Swz (748)"
  end
  if value == 752 then
    return "Issuer Reg Country: Swe (752)"
  end
  if value == 756 then
    return "Issuer Reg Country: Che (756)"
  end
  if value == 760 then
    return "Issuer Reg Country: Syr (760)"
  end
  if value == 762 then
    return "Issuer Reg Country: Tjk (762)"
  end
  if value == 764 then
    return "Issuer Reg Country: Tha (764)"
  end
  if value == 768 then
    return "Issuer Reg Country: Tgo (768)"
  end
  if value == 772 then
    return "Issuer Reg Country: Tkl (772)"
  end
  if value == 776 then
    return "Issuer Reg Country: Ton (776)"
  end
  if value == 780 then
    return "Issuer Reg Country: Tto (780)"
  end
  if value == 784 then
    return "Issuer Reg Country: Are (784)"
  end
  if value == 788 then
    return "Issuer Reg Country: Tun (788)"
  end
  if value == 792 then
    return "Issuer Reg Country: Tur (792)"
  end
  if value == 795 then
    return "Issuer Reg Country: Tkm (795)"
  end
  if value == 796 then
    return "Issuer Reg Country: Tca (796)"
  end
  if value == 798 then
    return "Issuer Reg Country: Tuv (798)"
  end
  if value == 800 then
    return "Issuer Reg Country: Uga (800)"
  end
  if value == 804 then
    return "Issuer Reg Country: Ukr (804)"
  end
  if value == 807 then
    return "Issuer Reg Country: Mkd (807)"
  end
  if value == 818 then
    return "Issuer Reg Country: Egy (818)"
  end
  if value == 826 then
    return "Issuer Reg Country: Gbr (826)"
  end
  if value == 831 then
    return "Issuer Reg Country: Ggy (831)"
  end
  if value == 832 then
    return "Issuer Reg Country: Jey (832)"
  end
  if value == 833 then
    return "Issuer Reg Country: Imn (833)"
  end
  if value == 834 then
    return "Issuer Reg Country: Tza (834)"
  end
  if value == 840 then
    return "Issuer Reg Country: Usa (840)"
  end
  if value == 850 then
    return "Issuer Reg Country: Vir (850)"
  end
  if value == 854 then
    return "Issuer Reg Country: Bfa (854)"
  end
  if value == 858 then
    return "Issuer Reg Country: Ury (858)"
  end
  if value == 860 then
    return "Issuer Reg Country: Uzb (860)"
  end
  if value == 862 then
    return "Issuer Reg Country: Ven (862)"
  end
  if value == 876 then
    return "Issuer Reg Country: Wlf (876)"
  end
  if value == 882 then
    return "Issuer Reg Country: Wsm (882)"
  end
  if value == 887 then
    return "Issuer Reg Country: Yem (887)"
  end
  if value == 894 then
    return "Issuer Reg Country: Zmb (894)"
  end

  return "Issuer Reg Country: Unknown("..value..")"
end

-- Dissect: Issuer Reg Country
gpw_wse_replayfulldepth_wats_v1_7_6_20.issuer_reg_country.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.issuer_reg_country.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.issuer_reg_country.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.issuer_reg_country, range, value, display)

  return offset + length, value
end

-- Kid
gpw_wse_replayfulldepth_wats_v1_7_6_20.kid = {}

-- Size: Kid
gpw_wse_replayfulldepth_wats_v1_7_6_20.kid.size = 128

-- Display: Kid
gpw_wse_replayfulldepth_wats_v1_7_6_20.kid.display = function(value)
  return "Kid: "..value
end

-- Dissect: Kid
gpw_wse_replayfulldepth_wats_v1_7_6_20.kid.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.kid.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.kid.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.kid, range, value, display)

  return offset + length, value
end

-- Kid Issue Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.kid_issue_date = {}

-- Size: Kid Issue Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.kid_issue_date.size = 4

-- Display: Kid Issue Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.kid_issue_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Kid Issue Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Kid Issue Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.kid_issue_date.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.kid_issue_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.kid_issue_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.kid_issue_date, range, value, display)

  return offset + length, value
end

-- Last Trade Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.last_trade_date = {}

-- Size: Last Trade Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.last_trade_date.size = 4

-- Display: Last Trade Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.last_trade_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Last Trade Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Last Trade Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.last_trade_date.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.last_trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.last_trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.last_trade_date, range, value, display)

  return offset + length, value
end

-- Last Traded Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.last_traded_price = {}

-- Size: Last Traded Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.last_traded_price.size = 8

-- Display: Last Traded Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.last_traded_price.display = function(value)
  return "Last Traded Price: "..value
end

-- Translate: Last Traded Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.last_traded_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Traded Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.last_traded_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.last_traded_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.last_traded_price.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.last_traded_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.last_traded_price, range, value, display)

  return offset + length, value
end

-- Last Trading Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.last_trading_date = {}

-- Size: Last Trading Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.last_trading_date.size = 4

-- Display: Last Trading Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.last_trading_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Last Trading Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Last Trading Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.last_trading_date.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.last_trading_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.last_trading_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.last_trading_date, range, value, display)

  return offset + length, value
end

-- Liquidity
gpw_wse_replayfulldepth_wats_v1_7_6_20.liquidity = {}

-- Size: Liquidity
gpw_wse_replayfulldepth_wats_v1_7_6_20.liquidity.size = 1

-- Display: Liquidity
gpw_wse_replayfulldepth_wats_v1_7_6_20.liquidity.display = function(value)
  return "Liquidity: "..value
end

-- Dissect: Liquidity
gpw_wse_replayfulldepth_wats_v1_7_6_20.liquidity.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.liquidity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.liquidity.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.liquidity, range, value, display)

  return offset + length, value
end

-- Liquidity Support Pge
gpw_wse_replayfulldepth_wats_v1_7_6_20.liquidity_support_pge = {}

-- Size: Liquidity Support Pge
gpw_wse_replayfulldepth_wats_v1_7_6_20.liquidity_support_pge.size = 1

-- Display: Liquidity Support Pge
gpw_wse_replayfulldepth_wats_v1_7_6_20.liquidity_support_pge.display = function(value)
  return "Liquidity Support Pge: "..value
end

-- Dissect: Liquidity Support Pge
gpw_wse_replayfulldepth_wats_v1_7_6_20.liquidity_support_pge.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.liquidity_support_pge.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.liquidity_support_pge.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.liquidity_support_pge, range, value, display)

  return offset + length, value
end

-- Lot Size
gpw_wse_replayfulldepth_wats_v1_7_6_20.lot_size = {}

-- Size: Lot Size
gpw_wse_replayfulldepth_wats_v1_7_6_20.lot_size.size = 4

-- Display: Lot Size
gpw_wse_replayfulldepth_wats_v1_7_6_20.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
gpw_wse_replayfulldepth_wats_v1_7_6_20.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Lower
gpw_wse_replayfulldepth_wats_v1_7_6_20.lower = {}

-- Size: Lower
gpw_wse_replayfulldepth_wats_v1_7_6_20.lower.size = 8

-- Display: Lower
gpw_wse_replayfulldepth_wats_v1_7_6_20.lower.display = function(value)
  return "Lower: "..value
end

-- Translate: Lower
gpw_wse_replayfulldepth_wats_v1_7_6_20.lower.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Lower
gpw_wse_replayfulldepth_wats_v1_7_6_20.lower.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.lower.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.lower.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.lower.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.lower, range, value, display)

  return offset + length, value
end

-- Lower Ask
gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_ask = {}

-- Size: Lower Ask
gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_ask.size = 8

-- Display: Lower Ask
gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_ask.display = function(value)
  return "Lower Ask: "..value
end

-- Translate: Lower Ask
gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_ask.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Lower Ask
gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_ask.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_ask.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_ask.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.lower_ask, range, value, display)

  return offset + length, value
end

-- Lower Bid
gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_bid = {}

-- Size: Lower Bid
gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_bid.size = 8

-- Display: Lower Bid
gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_bid.display = function(value)
  return "Lower Bid: "..value
end

-- Translate: Lower Bid
gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_bid.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Lower Bid
gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_bid.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_bid.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_bid.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.lower_bid, range, value, display)

  return offset + length, value
end

-- Lower Bound
gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_bound = {}

-- Size: Lower Bound
gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_bound.size = 8

-- Display: Lower Bound
gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_bound.display = function(value)
  return "Lower Bound: "..value
end

-- Translate: Lower Bound
gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_bound.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Lower Bound
gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_bound.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_bound.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_bound.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_bound.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.lower_bound, range, value, display)

  return offset + length, value
end

-- Lower Liquidity
gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_liquidity = {}

-- Size: Lower Liquidity
gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_liquidity.size = 1

-- Display: Lower Liquidity
gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_liquidity.display = function(value)
  return "Lower Liquidity: "..value
end

-- Dissect: Lower Liquidity
gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_liquidity.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_liquidity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_liquidity.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.lower_liquidity, range, value, display)

  return offset + length, value
end

-- Marker Price Change
gpw_wse_replayfulldepth_wats_v1_7_6_20.marker_price_change = {}

-- Size: Marker Price Change
gpw_wse_replayfulldepth_wats_v1_7_6_20.marker_price_change.size = 1

-- Display: Marker Price Change
gpw_wse_replayfulldepth_wats_v1_7_6_20.marker_price_change.display = function(value)
  if value == 1 then
    return "Marker Price Change: Increase (1)"
  end
  if value == 2 then
    return "Marker Price Change: Decrease (2)"
  end
  if value == 3 then
    return "Marker Price Change: No Change (3)"
  end
  if value == 4 then
    return "Marker Price Change: Not Applicable (4)"
  end

  return "Marker Price Change: Unknown("..value..")"
end

-- Dissect: Marker Price Change
gpw_wse_replayfulldepth_wats_v1_7_6_20.marker_price_change.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.marker_price_change.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.marker_price_change.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.marker_price_change, range, value, display)

  return offset + length, value
end

-- Market
gpw_wse_replayfulldepth_wats_v1_7_6_20.market = {}

-- Size: Market
gpw_wse_replayfulldepth_wats_v1_7_6_20.market.size = 1

-- Display: Market
gpw_wse_replayfulldepth_wats_v1_7_6_20.market.display = function(value)
  return "Market: "..value
end

-- Dissect: Market
gpw_wse_replayfulldepth_wats_v1_7_6_20.market.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.market.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.market.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.market, range, value, display)

  return offset + length, value
end

-- Market Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.market_id = {}

-- Size: Market Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.market_id.size = 4

-- Display: Market Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.market_id.display = function(value)
  return "Market Id: "..value
end

-- Dissect: Market Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.market_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.market_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.market_id, range, value, display)

  return offset + length, value
end

-- Market Model Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.market_model_type = {}

-- Size: Market Model Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.market_model_type.size = 1

-- Display: Market Model Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.market_model_type.display = function(value)
  if value == 1 then
    return "Market Model Type: Not Applicable (1)"
  end
  if value == 2 then
    return "Market Model Type: Clob (2)"
  end
  if value == 3 then
    return "Market Model Type: Block (3)"
  end
  if value == 4 then
    return "Market Model Type: Hybrid (4)"
  end
  if value == 5 then
    return "Market Model Type: Cross (5)"
  end
  if value == 6 then
    return "Market Model Type: Ipo (6)"
  end
  if value == 7 then
    return "Market Model Type: Tender Offer (7)"
  end
  if value == 8 then
    return "Market Model Type: Redistribution (8)"
  end

  return "Market Model Type: Unknown("..value..")"
end

-- Dissect: Market Model Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.market_model_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.market_model_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.market_model_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.market_model_type, range, value, display)

  return offset + length, value
end

-- Market Structure Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.market_structure_id = {}

-- Size: Market Structure Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.market_structure_id.size = 4

-- Display: Market Structure Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.market_structure_id.display = function(value)
  return "Market Structure Id: "..value
end

-- Dissect: Market Structure Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.market_structure_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.market_structure_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.market_structure_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.market_structure_id, range, value, display)

  return offset + length, value
end

-- Max Depth
gpw_wse_replayfulldepth_wats_v1_7_6_20.max_depth = {}

-- Size: Max Depth
gpw_wse_replayfulldepth_wats_v1_7_6_20.max_depth.size = 1

-- Display: Max Depth
gpw_wse_replayfulldepth_wats_v1_7_6_20.max_depth.display = function(value)
  return "Max Depth: "..value
end

-- Dissect: Max Depth
gpw_wse_replayfulldepth_wats_v1_7_6_20.max_depth.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.max_depth.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.max_depth.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.max_depth, range, value, display)

  return offset + length, value
end

-- Max Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.max_price = {}

-- Size: Max Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.max_price.size = 8

-- Display: Max Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.max_price.display = function(value)
  return "Max Price: "..value
end

-- Translate: Max Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.max_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Max Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.max_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.max_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.max_price.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.max_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.max_price, range, value, display)

  return offset + length, value
end

-- Message Length
gpw_wse_replayfulldepth_wats_v1_7_6_20.message_length = {}

-- Size: Message Length
gpw_wse_replayfulldepth_wats_v1_7_6_20.message_length.size = 2

-- Display: Message Length
gpw_wse_replayfulldepth_wats_v1_7_6_20.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
gpw_wse_replayfulldepth_wats_v1_7_6_20.message_length.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.message_type = {}

-- Size: Message Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.message_type.size = 2

-- Display: Message Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.message_type.display = function(value)
  if value == 33 then
    return "Message Type: Week Plan (33)"
  end
  if value == 35 then
    return "Message Type: Calendar Exception (35)"
  end
  if value == 32 then
    return "Message Type: Tick Table Entry (32)"
  end
  if value == 108 then
    return "Message Type: Collar Table Entry (108)"
  end
  if value == 27 then
    return "Message Type: Trading Phase Schedule Entry (27)"
  end
  if value == 275 then
    return "Message Type: Market Structure (275)"
  end
  if value == 299 then
    return "Message Type: Collar Group (299)"
  end
  if value == 806 then
    return "Message Type: External Underlying (806)"
  end
  if value == 279 then
    return "Message Type: Instrument (279)"
  end
  if value == 36 then
    return "Message Type: Accrued Interest Table Entry (36)"
  end
  if value == 37 then
    return "Message Type: Indexation Table Entry (37)"
  end
  if value == 503 then
    return "Message Type: Index Params (503)"
  end
  if value == 502 then
    return "Message Type: Index Portfolio Entry (502)"
  end
  if value == 270 then
    return "Message Type: Auction Summary (270)"
  end
  if value == 268 then
    return "Message Type: Auction Update (268)"
  end
  if value == 257 then
    return "Message Type: Price Level Snapshot (257)"
  end
  if value == 256 then
    return "Message Type: Top Price Level Update (256)"
  end
  if value == 38 then
    return "Message Type: Trade (38)"
  end
  if value == 801 then
    return "Message Type: Position Report (801)"
  end
  if value == 26 then
    return "Message Type: Instrument Status Change (26)"
  end
  if value == 272 then
    return "Message Type: Order Collars (272)"
  end
  if value == 273 then
    return "Message Type: Trade Collars (273)"
  end
  if value == 671 then
    return "Message Type: Instrument Summary (671)"
  end
  if value == 672 then
    return "Message Type: Product Summary (672)"
  end
  if value == 271 then
    return "Message Type: Price Update (271)"
  end
  if value == 517 then
    return "Message Type: News (517)"
  end
  if value == 500 then
    return "Message Type: Real Time Index (500)"
  end
  if value == 501 then
    return "Message Type: Index Summary (501)"
  end
  if value == 23 then
    return "Message Type: Trading Session Status (23)"
  end
  if value == 1 then
    return "Message Type: Heartbeat (1)"
  end
  if value == 8192 then
    return "Message Type: Test Event (8192)"
  end
  if value == 9 then
    return "Message Type: Order Add (9)"
  end
  if value == 10 then
    return "Message Type: Order Modify (10)"
  end
  if value == 11 then
    return "Message Type: Order Cancel (11)"
  end
  if value == 12 then
    return "Message Type: Order Execute (12)"
  end
  if value == 410 then
    return "Message Type: Order Book Event (410)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.message_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Version
gpw_wse_replayfulldepth_wats_v1_7_6_20.message_version = {}

-- Size: Message Version
gpw_wse_replayfulldepth_wats_v1_7_6_20.message_version.size = 2

-- Display: Message Version
gpw_wse_replayfulldepth_wats_v1_7_6_20.message_version.display = function(value)
  return "Message Version: "..value
end

-- Dissect: Message Version
gpw_wse_replayfulldepth_wats_v1_7_6_20.message_version.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.message_version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.message_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.message_version, range, value, display)

  return offset + length, value
end

-- Mic
gpw_wse_replayfulldepth_wats_v1_7_6_20.mic = {}

-- Size: Mic
gpw_wse_replayfulldepth_wats_v1_7_6_20.mic.size = 4

-- Display: Mic
gpw_wse_replayfulldepth_wats_v1_7_6_20.mic.display = function(value)
  return "Mic: "..value
end

-- Dissect: Mic
gpw_wse_replayfulldepth_wats_v1_7_6_20.mic.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.mic.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.mic.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mic, range, value, display)

  return offset + length, value
end

-- Mid Spread Index
gpw_wse_replayfulldepth_wats_v1_7_6_20.mid_spread_index = {}

-- Size: Mid Spread Index
gpw_wse_replayfulldepth_wats_v1_7_6_20.mid_spread_index.size = 8

-- Display: Mid Spread Index
gpw_wse_replayfulldepth_wats_v1_7_6_20.mid_spread_index.display = function(value)
  return "Mid Spread Index: "..value
end

-- Translate: Mid Spread Index
gpw_wse_replayfulldepth_wats_v1_7_6_20.mid_spread_index.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Mid Spread Index
gpw_wse_replayfulldepth_wats_v1_7_6_20.mid_spread_index.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.mid_spread_index.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.mid_spread_index.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.mid_spread_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mid_spread_index, range, value, display)

  return offset + length, value
end

-- Min Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.min_price = {}

-- Size: Min Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.min_price.size = 8

-- Display: Min Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.min_price.display = function(value)
  return "Min Price: "..value
end

-- Translate: Min Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.min_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Min Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.min_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.min_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.min_price.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.min_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.min_price, range, value, display)

  return offset + length, value
end

-- Mm Buy Quote Level
gpw_wse_replayfulldepth_wats_v1_7_6_20.mm_buy_quote_level = {}

-- Size: Mm Buy Quote Level
gpw_wse_replayfulldepth_wats_v1_7_6_20.mm_buy_quote_level.size = 1

-- Display: Mm Buy Quote Level
gpw_wse_replayfulldepth_wats_v1_7_6_20.mm_buy_quote_level.display = function(value)
  return "Mm Buy Quote Level: "..value
end

-- Dissect: Mm Buy Quote Level
gpw_wse_replayfulldepth_wats_v1_7_6_20.mm_buy_quote_level.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.mm_buy_quote_level.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.mm_buy_quote_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mm_buy_quote_level, range, value, display)

  return offset + length, value
end

-- Mm Quote
gpw_wse_replayfulldepth_wats_v1_7_6_20.mm_quote = {}

-- Size: Mm Quote
gpw_wse_replayfulldepth_wats_v1_7_6_20.mm_quote.size = 1

-- Display: Mm Quote
gpw_wse_replayfulldepth_wats_v1_7_6_20.mm_quote.display = function(value)
  return "Mm Quote: "..value
end

-- Dissect: Mm Quote
gpw_wse_replayfulldepth_wats_v1_7_6_20.mm_quote.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.mm_quote.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.mm_quote.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mm_quote, range, value, display)

  return offset + length, value
end

-- Mm Sell Quote Level
gpw_wse_replayfulldepth_wats_v1_7_6_20.mm_sell_quote_level = {}

-- Size: Mm Sell Quote Level
gpw_wse_replayfulldepth_wats_v1_7_6_20.mm_sell_quote_level.size = 1

-- Display: Mm Sell Quote Level
gpw_wse_replayfulldepth_wats_v1_7_6_20.mm_sell_quote_level.display = function(value)
  return "Mm Sell Quote Level: "..value
end

-- Dissect: Mm Sell Quote Level
gpw_wse_replayfulldepth_wats_v1_7_6_20.mm_sell_quote_level.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.mm_sell_quote_level.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.mm_sell_quote_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mm_sell_quote_level, range, value, display)

  return offset + length, value
end

-- Mmt Agency Cross Trade Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_agency_cross_trade_indicator = {}

-- Size: Mmt Agency Cross Trade Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_agency_cross_trade_indicator.size = 1

-- Display: Mmt Agency Cross Trade Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_agency_cross_trade_indicator.display = function(value)
  if value == 1 then
    return "Mmt Agency Cross Trade Indicator: Agency Cross Trade (1)"
  end
  if value == 2 then
    return "Mmt Agency Cross Trade Indicator: No Agency Cross Trade (2)"
  end

  return "Mmt Agency Cross Trade Indicator: Unknown("..value..")"
end

-- Dissect: Mmt Agency Cross Trade Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_agency_cross_trade_indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_agency_cross_trade_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_agency_cross_trade_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mmt_agency_cross_trade_indicator, range, value, display)

  return offset + length, value
end

-- Mmt Algorithmic Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_algorithmic_indicator = {}

-- Size: Mmt Algorithmic Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_algorithmic_indicator.size = 1

-- Display: Mmt Algorithmic Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_algorithmic_indicator.display = function(value)
  if value == 1 then
    return "Mmt Algorithmic Indicator: Algorithmic Trade (1)"
  end
  if value == 2 then
    return "Mmt Algorithmic Indicator: No Algorithmic Trade (2)"
  end

  return "Mmt Algorithmic Indicator: Unknown("..value..")"
end

-- Dissect: Mmt Algorithmic Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_algorithmic_indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_algorithmic_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_algorithmic_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mmt_algorithmic_indicator, range, value, display)

  return offset + length, value
end

-- Mmt Benchmark Reference Price Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_benchmark_reference_price_indicator = {}

-- Size: Mmt Benchmark Reference Price Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_benchmark_reference_price_indicator.size = 1

-- Display: Mmt Benchmark Reference Price Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_benchmark_reference_price_indicator.display = function(value)
  if value == 1 then
    return "Mmt Benchmark Reference Price Indicator: Benchmark Trade (1)"
  end
  if value == 2 then
    return "Mmt Benchmark Reference Price Indicator: Reference Price Trade (2)"
  end
  if value == 3 then
    return "Mmt Benchmark Reference Price Indicator: No Benchmarkor Reference Price Trade (3)"
  end

  return "Mmt Benchmark Reference Price Indicator: Unknown("..value..")"
end

-- Dissect: Mmt Benchmark Reference Price Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_benchmark_reference_price_indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_benchmark_reference_price_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_benchmark_reference_price_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mmt_benchmark_reference_price_indicator, range, value, display)

  return offset + length, value
end

-- Mmt Market Mechanism
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_market_mechanism = {}

-- Size: Mmt Market Mechanism
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_market_mechanism.size = 1

-- Display: Mmt Market Mechanism
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_market_mechanism.display = function(value)
  if value == 1 then
    return "Mmt Market Mechanism: Central Limit Order Book (1)"
  end
  if value == 2 then
    return "Mmt Market Mechanism: Quote Driven Market (2)"
  end
  if value == 3 then
    return "Mmt Market Mechanism: Dark Order Book (3)"
  end
  if value == 4 then
    return "Mmt Market Mechanism: Off Book (4)"
  end
  if value == 5 then
    return "Mmt Market Mechanism: Periodic Auction (5)"
  end
  if value == 6 then
    return "Mmt Market Mechanism: Request For Quotes (6)"
  end
  if value == 7 then
    return "Mmt Market Mechanism: Other (7)"
  end

  return "Mmt Market Mechanism: Unknown("..value..")"
end

-- Dissect: Mmt Market Mechanism
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_market_mechanism.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_market_mechanism.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_market_mechanism.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mmt_market_mechanism, range, value, display)

  return offset + length, value
end

-- Mmt Modification Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_modification_indicator = {}

-- Size: Mmt Modification Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_modification_indicator.size = 1

-- Display: Mmt Modification Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_modification_indicator.display = function(value)
  if value == 1 then
    return "Mmt Modification Indicator: Trade Cancellation (1)"
  end
  if value == 2 then
    return "Mmt Modification Indicator: Trade Amendment (2)"
  end
  if value == 3 then
    return "Mmt Modification Indicator: New Trade (3)"
  end

  return "Mmt Modification Indicator: Unknown("..value..")"
end

-- Dissect: Mmt Modification Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_modification_indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_modification_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_modification_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mmt_modification_indicator, range, value, display)

  return offset + length, value
end

-- Mmt Negotiation Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_negotiation_indicator = {}

-- Size: Mmt Negotiation Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_negotiation_indicator.size = 1

-- Display: Mmt Negotiation Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_negotiation_indicator.display = function(value)
  if value == 1 then
    return "Mmt Negotiation Indicator: Negotiated Trade (1)"
  end
  if value == 2 then
    return "Mmt Negotiation Indicator: Negotiated Trade Liquid Financial Instruments (2)"
  end
  if value == 3 then
    return "Mmt Negotiation Indicator: Negotiated Trade Illiquid Financial Instruments (3)"
  end
  if value == 4 then
    return "Mmt Negotiation Indicator: Negotiated Trade Other (4)"
  end
  if value == 5 then
    return "Mmt Negotiation Indicator: No Negotiated Trade (5)"
  end
  if value == 6 then
    return "Mmt Negotiation Indicator: Pre Trade Transparency Waiver Illiquid Instrument (6)"
  end
  if value == 7 then
    return "Mmt Negotiation Indicator: Pre Trade Transparency Waiver Standard Market Size (7)"
  end
  if value == 8 then
    return "Mmt Negotiation Indicator: Pre Trade Transparency Waivers Ilqd And Size (8)"
  end

  return "Mmt Negotiation Indicator: Unknown("..value..")"
end

-- Dissect: Mmt Negotiation Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_negotiation_indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_negotiation_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_negotiation_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mmt_negotiation_indicator, range, value, display)

  return offset + length, value
end

-- Mmt Off Book Automated Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_off_book_automated_indicator = {}

-- Size: Mmt Off Book Automated Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_off_book_automated_indicator.size = 1

-- Display: Mmt Off Book Automated Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_off_book_automated_indicator.display = function(value)
  if value == 1 then
    return "Mmt Off Book Automated Indicator: Unspecified Or Not Apply (1)"
  end
  if value == 2 then
    return "Mmt Off Book Automated Indicator: Off Book Non Automated (2)"
  end
  if value == 3 then
    return "Mmt Off Book Automated Indicator: Off Book Automated (3)"
  end

  return "Mmt Off Book Automated Indicator: Unknown("..value..")"
end

-- Dissect: Mmt Off Book Automated Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_off_book_automated_indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_off_book_automated_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_off_book_automated_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mmt_off_book_automated_indicator, range, value, display)

  return offset + length, value
end

-- Mmt Ordinary Trade Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_ordinary_trade_indicator = {}

-- Size: Mmt Ordinary Trade Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_ordinary_trade_indicator.size = 1

-- Display: Mmt Ordinary Trade Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_ordinary_trade_indicator.display = function(value)
  if value == 1 then
    return "Mmt Ordinary Trade Indicator: Plain Vanilla Trade (1)"
  end
  if value == 2 then
    return "Mmt Ordinary Trade Indicator: Non Price Forming Trade (2)"
  end
  if value == 3 then
    return "Mmt Ordinary Trade Indicator: Trade Not Contributing To Price Discovery (3)"
  end
  if value == 4 then
    return "Mmt Ordinary Trade Indicator: Price Pending (4)"
  end

  return "Mmt Ordinary Trade Indicator: Unknown("..value..")"
end

-- Dissect: Mmt Ordinary Trade Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_ordinary_trade_indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_ordinary_trade_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_ordinary_trade_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mmt_ordinary_trade_indicator, range, value, display)

  return offset + length, value
end

-- Mmt Post Trade Deferral Reason
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_post_trade_deferral_reason = {}

-- Size: Mmt Post Trade Deferral Reason
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_post_trade_deferral_reason.size = 1

-- Display: Mmt Post Trade Deferral Reason
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_post_trade_deferral_reason.display = function(value)
  if value == 1 then
    return "Mmt Post Trade Deferral Reason: Immediate Publication (1)"
  end
  if value == 2 then
    return "Mmt Post Trade Deferral Reason: Non Immediate Publication (2)"
  end
  if value == 3 then
    return "Mmt Post Trade Deferral Reason: Non Immediate Publication Large In Scale (3)"
  end
  if value == 4 then
    return "Mmt Post Trade Deferral Reason: Non Immediate Publication Illiquid Instrument (4)"
  end
  if value == 5 then
    return "Mmt Post Trade Deferral Reason: Non Immediate Publication Size Specific (5)"
  end
  if value == 6 then
    return "Mmt Post Trade Deferral Reason: Non Immediate Publication Ilqd And Size (6)"
  end
  if value == 7 then
    return "Mmt Post Trade Deferral Reason: Non Immediate Publication Ilqd And Lrgs (7)"
  end

  return "Mmt Post Trade Deferral Reason: Unknown("..value..")"
end

-- Dissect: Mmt Post Trade Deferral Reason
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_post_trade_deferral_reason.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_post_trade_deferral_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_post_trade_deferral_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mmt_post_trade_deferral_reason, range, value, display)

  return offset + length, value
end

-- Mmt Post Trade Deferral Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_post_trade_deferral_type = {}

-- Size: Mmt Post Trade Deferral Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_post_trade_deferral_type.size = 1

-- Display: Mmt Post Trade Deferral Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_post_trade_deferral_type.display = function(value)
  if value == 1 then
    return "Mmt Post Trade Deferral Type: Limited Details Trade (1)"
  end
  if value == 2 then
    return "Mmt Post Trade Deferral Type: Daily Aggregated Trade (2)"
  end
  if value == 3 then
    return "Mmt Post Trade Deferral Type: Volume Omission Trade (3)"
  end
  if value == 4 then
    return "Mmt Post Trade Deferral Type: Four Weeks Aggregation Trade (4)"
  end
  if value == 5 then
    return "Mmt Post Trade Deferral Type: Indefinite Aggregation Trade (5)"
  end
  if value == 6 then
    return "Mmt Post Trade Deferral Type: Volume Omission Trade Aggregated (6)"
  end
  if value == 7 then
    return "Mmt Post Trade Deferral Type: Not Applicable (7)"
  end

  return "Mmt Post Trade Deferral Type: Unknown("..value..")"
end

-- Dissect: Mmt Post Trade Deferral Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_post_trade_deferral_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_post_trade_deferral_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_post_trade_deferral_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mmt_post_trade_deferral_type, range, value, display)

  return offset + length, value
end

-- Mmt Special Dividend Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_special_dividend_indicator = {}

-- Size: Mmt Special Dividend Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_special_dividend_indicator.size = 1

-- Display: Mmt Special Dividend Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_special_dividend_indicator.display = function(value)
  if value == 1 then
    return "Mmt Special Dividend Indicator: Special Dividend Trade (1)"
  end
  if value == 2 then
    return "Mmt Special Dividend Indicator: No Special Dividend Trade (2)"
  end

  return "Mmt Special Dividend Indicator: Unknown("..value..")"
end

-- Dissect: Mmt Special Dividend Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_special_dividend_indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_special_dividend_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_special_dividend_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mmt_special_dividend_indicator, range, value, display)

  return offset + length, value
end

-- Mmt Trading Mode
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_trading_mode = {}

-- Size: Mmt Trading Mode
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_trading_mode.size = 1

-- Display: Mmt Trading Mode
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_trading_mode.display = function(value)
  if value == 1 then
    return "Mmt Trading Mode: Undefined Auction (1)"
  end
  if value == 2 then
    return "Mmt Trading Mode: Scheduled Opening Auction (2)"
  end
  if value == 3 then
    return "Mmt Trading Mode: Scheduled Closing Auction (3)"
  end
  if value == 4 then
    return "Mmt Trading Mode: Scheduled Intraday Auction (4)"
  end
  if value == 5 then
    return "Mmt Trading Mode: Unscheduled Auction (5)"
  end
  if value == 6 then
    return "Mmt Trading Mode: Continuous Trading (6)"
  end
  if value == 7 then
    return "Mmt Trading Mode: At Market Close Trading (7)"
  end
  if value == 8 then
    return "Mmt Trading Mode: Out Of Main Session Trading (8)"
  end
  if value == 9 then
    return "Mmt Trading Mode: Trade Reporting On Exchange (9)"
  end
  if value == 10 then
    return "Mmt Trading Mode: Trade Reporting Off Exchange (10)"
  end
  if value == 11 then
    return "Mmt Trading Mode: Trade Reporting Systematic Internaliser (11)"
  end

  return "Mmt Trading Mode: Unknown("..value..")"
end

-- Dissect: Mmt Trading Mode
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_trading_mode.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_trading_mode.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_trading_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mmt_trading_mode, range, value, display)

  return offset + length, value
end

-- Mmt Transaction Category
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_transaction_category = {}

-- Size: Mmt Transaction Category
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_transaction_category.size = 1

-- Display: Mmt Transaction Category
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_transaction_category.display = function(value)
  if value == 1 then
    return "Mmt Transaction Category: Dark Trade (1)"
  end
  if value == 2 then
    return "Mmt Transaction Category: Trade Price Improvement (2)"
  end
  if value == 3 then
    return "Mmt Transaction Category: Package Trade (3)"
  end
  if value == 4 then
    return "Mmt Transaction Category: Exchange For Physicals Trade (4)"
  end
  if value == 5 then
    return "Mmt Transaction Category: None (5)"
  end

  return "Mmt Transaction Category: Unknown("..value..")"
end

-- Dissect: Mmt Transaction Category
gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_transaction_category.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_transaction_category.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_transaction_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.mmt_transaction_category, range, value, display)

  return offset + length, value
end

-- Multiplier Multiplier
gpw_wse_replayfulldepth_wats_v1_7_6_20.multiplier_multiplier = {}

-- Size: Multiplier Multiplier
gpw_wse_replayfulldepth_wats_v1_7_6_20.multiplier_multiplier.size = 8

-- Display: Multiplier Multiplier
gpw_wse_replayfulldepth_wats_v1_7_6_20.multiplier_multiplier.display = function(value)
  return "Multiplier Multiplier: "..value
end

-- Translate: Multiplier Multiplier
gpw_wse_replayfulldepth_wats_v1_7_6_20.multiplier_multiplier.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Multiplier Multiplier
gpw_wse_replayfulldepth_wats_v1_7_6_20.multiplier_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.multiplier_multiplier.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.multiplier_multiplier.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.multiplier_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.multiplier_multiplier, range, value, display)

  return offset + length, value
end

-- Multiplier Number
gpw_wse_replayfulldepth_wats_v1_7_6_20.multiplier_number = {}

-- Size: Multiplier Number
gpw_wse_replayfulldepth_wats_v1_7_6_20.multiplier_number.size = 8

-- Display: Multiplier Number
gpw_wse_replayfulldepth_wats_v1_7_6_20.multiplier_number.display = function(value)
  return "Multiplier Number: "..value
end

-- Translate: Multiplier Number
gpw_wse_replayfulldepth_wats_v1_7_6_20.multiplier_number.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Multiplier Number
gpw_wse_replayfulldepth_wats_v1_7_6_20.multiplier_number.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.multiplier_number.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.multiplier_number.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.multiplier_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.multiplier_number, range, value, display)

  return offset + length, value
end

-- Name
gpw_wse_replayfulldepth_wats_v1_7_6_20.name = {}

-- Size: Name
gpw_wse_replayfulldepth_wats_v1_7_6_20.name.size = 50

-- Display: Name
gpw_wse_replayfulldepth_wats_v1_7_6_20.name.display = function(value)
  return "Name: "..value
end

-- Dissect: Name
gpw_wse_replayfulldepth_wats_v1_7_6_20.name.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.name.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.name.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.name, range, value, display)

  return offset + length, value
end

-- News Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.news_id = {}

-- Size: News Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.news_id.size = 4

-- Display: News Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.news_id.display = function(value)
  return "News Id: "..value
end

-- Dissect: News Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.news_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.news_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.news_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.news_id, range, value, display)

  return offset + length, value
end

-- No Trades
gpw_wse_replayfulldepth_wats_v1_7_6_20.no_trades = {}

-- Size: No Trades
gpw_wse_replayfulldepth_wats_v1_7_6_20.no_trades.size = 8

-- Display: No Trades
gpw_wse_replayfulldepth_wats_v1_7_6_20.no_trades.display = function(value)
  return "No Trades: "..value
end

-- Dissect: No Trades
gpw_wse_replayfulldepth_wats_v1_7_6_20.no_trades.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.no_trades.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.no_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.no_trades, range, value, display)

  return offset + length, value
end

-- Nominal Currency
gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_currency = {}

-- Size: Nominal Currency
gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_currency.size = 2

-- Display: Nominal Currency
gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_currency.display = function(value)
  if value == 8 then
    return "Nominal Currency: All (8)"
  end
  if value == 12 then
    return "Nominal Currency: Dzd (12)"
  end
  if value == 32 then
    return "Nominal Currency: Ars (32)"
  end
  if value == 36 then
    return "Nominal Currency: Aud (36)"
  end
  if value == 44 then
    return "Nominal Currency: Bsd (44)"
  end
  if value == 48 then
    return "Nominal Currency: Bhd (48)"
  end
  if value == 50 then
    return "Nominal Currency: Bdt (50)"
  end
  if value == 51 then
    return "Nominal Currency: Amd (51)"
  end
  if value == 52 then
    return "Nominal Currency: Bbd (52)"
  end
  if value == 60 then
    return "Nominal Currency: Bmd (60)"
  end
  if value == 64 then
    return "Nominal Currency: Btn (64)"
  end
  if value == 68 then
    return "Nominal Currency: Bob (68)"
  end
  if value == 72 then
    return "Nominal Currency: Bwp (72)"
  end
  if value == 84 then
    return "Nominal Currency: Bzd (84)"
  end
  if value == 90 then
    return "Nominal Currency: Sbd (90)"
  end
  if value == 96 then
    return "Nominal Currency: Bnd (96)"
  end
  if value == 104 then
    return "Nominal Currency: Mmk (104)"
  end
  if value == 108 then
    return "Nominal Currency: Bif (108)"
  end
  if value == 116 then
    return "Nominal Currency: Khr (116)"
  end
  if value == 124 then
    return "Nominal Currency: Cad (124)"
  end
  if value == 132 then
    return "Nominal Currency: Cve (132)"
  end
  if value == 136 then
    return "Nominal Currency: Kyd (136)"
  end
  if value == 144 then
    return "Nominal Currency: Lkr (144)"
  end
  if value == 152 then
    return "Nominal Currency: Clp (152)"
  end
  if value == 156 then
    return "Nominal Currency: Cny (156)"
  end
  if value == 170 then
    return "Nominal Currency: Cop (170)"
  end
  if value == 174 then
    return "Nominal Currency: Kmf (174)"
  end
  if value == 188 then
    return "Nominal Currency: Crc (188)"
  end
  if value == 191 then
    return "Nominal Currency: Hrk (191)"
  end
  if value == 192 then
    return "Nominal Currency: Cup (192)"
  end
  if value == 203 then
    return "Nominal Currency: Czk (203)"
  end
  if value == 208 then
    return "Nominal Currency: Dkk (208)"
  end
  if value == 214 then
    return "Nominal Currency: Dop (214)"
  end
  if value == 222 then
    return "Nominal Currency: Svc (222)"
  end
  if value == 230 then
    return "Nominal Currency: Etb (230)"
  end
  if value == 232 then
    return "Nominal Currency: Ern (232)"
  end
  if value == 238 then
    return "Nominal Currency: Fkp (238)"
  end
  if value == 242 then
    return "Nominal Currency: Fjd (242)"
  end
  if value == 262 then
    return "Nominal Currency: Djf (262)"
  end
  if value == 270 then
    return "Nominal Currency: Gmd (270)"
  end
  if value == 292 then
    return "Nominal Currency: Gip (292)"
  end
  if value == 320 then
    return "Nominal Currency: Gtq (320)"
  end
  if value == 324 then
    return "Nominal Currency: Gnf (324)"
  end
  if value == 328 then
    return "Nominal Currency: Gyd (328)"
  end
  if value == 332 then
    return "Nominal Currency: Htg (332)"
  end
  if value == 340 then
    return "Nominal Currency: Hnl (340)"
  end
  if value == 344 then
    return "Nominal Currency: Hkd (344)"
  end
  if value == 348 then
    return "Nominal Currency: Huf (348)"
  end
  if value == 352 then
    return "Nominal Currency: Isk (352)"
  end
  if value == 356 then
    return "Nominal Currency: Inr (356)"
  end
  if value == 360 then
    return "Nominal Currency: Idr (360)"
  end
  if value == 364 then
    return "Nominal Currency: Irr (364)"
  end
  if value == 368 then
    return "Nominal Currency: Iqd (368)"
  end
  if value == 376 then
    return "Nominal Currency: Ils (376)"
  end
  if value == 388 then
    return "Nominal Currency: Jmd (388)"
  end
  if value == 392 then
    return "Nominal Currency: Jpy (392)"
  end
  if value == 398 then
    return "Nominal Currency: Kzt (398)"
  end
  if value == 400 then
    return "Nominal Currency: Jod (400)"
  end
  if value == 404 then
    return "Nominal Currency: Kes (404)"
  end
  if value == 408 then
    return "Nominal Currency: Kpw (408)"
  end
  if value == 410 then
    return "Nominal Currency: Krw (410)"
  end
  if value == 414 then
    return "Nominal Currency: Kwd (414)"
  end
  if value == 417 then
    return "Nominal Currency: Kgs (417)"
  end
  if value == 418 then
    return "Nominal Currency: Lak (418)"
  end
  if value == 422 then
    return "Nominal Currency: Lbp (422)"
  end
  if value == 426 then
    return "Nominal Currency: Lsl (426)"
  end
  if value == 430 then
    return "Nominal Currency: Lrd (430)"
  end
  if value == 434 then
    return "Nominal Currency: Lyd (434)"
  end
  if value == 446 then
    return "Nominal Currency: Mop (446)"
  end
  if value == 454 then
    return "Nominal Currency: Mwk (454)"
  end
  if value == 458 then
    return "Nominal Currency: Myr (458)"
  end
  if value == 462 then
    return "Nominal Currency: Mvr (462)"
  end
  if value == 480 then
    return "Nominal Currency: Mur (480)"
  end
  if value == 484 then
    return "Nominal Currency: Mxn (484)"
  end
  if value == 496 then
    return "Nominal Currency: Mnt (496)"
  end
  if value == 498 then
    return "Nominal Currency: Mdl (498)"
  end
  if value == 504 then
    return "Nominal Currency: Mad (504)"
  end
  if value == 512 then
    return "Nominal Currency: Omr (512)"
  end
  if value == 516 then
    return "Nominal Currency: Nad (516)"
  end
  if value == 524 then
    return "Nominal Currency: Npr (524)"
  end
  if value == 532 then
    return "Nominal Currency: Ang (532)"
  end
  if value == 533 then
    return "Nominal Currency: Awg (533)"
  end
  if value == 548 then
    return "Nominal Currency: Vuv (548)"
  end
  if value == 554 then
    return "Nominal Currency: Nzd (554)"
  end
  if value == 558 then
    return "Nominal Currency: Nio (558)"
  end
  if value == 566 then
    return "Nominal Currency: Ngn (566)"
  end
  if value == 578 then
    return "Nominal Currency: Nok (578)"
  end
  if value == 586 then
    return "Nominal Currency: Pkr (586)"
  end
  if value == 590 then
    return "Nominal Currency: Pab (590)"
  end
  if value == 598 then
    return "Nominal Currency: Pgk (598)"
  end
  if value == 600 then
    return "Nominal Currency: Pyg (600)"
  end
  if value == 604 then
    return "Nominal Currency: Pen (604)"
  end
  if value == 608 then
    return "Nominal Currency: Php (608)"
  end
  if value == 634 then
    return "Nominal Currency: Qar (634)"
  end
  if value == 643 then
    return "Nominal Currency: Rub (643)"
  end
  if value == 646 then
    return "Nominal Currency: Rwf (646)"
  end
  if value == 654 then
    return "Nominal Currency: Shp (654)"
  end
  if value == 682 then
    return "Nominal Currency: Sar (682)"
  end
  if value == 690 then
    return "Nominal Currency: Scr (690)"
  end
  if value == 702 then
    return "Nominal Currency: Sgd (702)"
  end
  if value == 704 then
    return "Nominal Currency: Vnd (704)"
  end
  if value == 706 then
    return "Nominal Currency: Sos (706)"
  end
  if value == 710 then
    return "Nominal Currency: Zar (710)"
  end
  if value == 728 then
    return "Nominal Currency: Ssp (728)"
  end
  if value == 748 then
    return "Nominal Currency: Szl (748)"
  end
  if value == 752 then
    return "Nominal Currency: Sek (752)"
  end
  if value == 756 then
    return "Nominal Currency: Chf (756)"
  end
  if value == 760 then
    return "Nominal Currency: Syp (760)"
  end
  if value == 764 then
    return "Nominal Currency: Thb (764)"
  end
  if value == 776 then
    return "Nominal Currency: Top (776)"
  end
  if value == 780 then
    return "Nominal Currency: Ttd (780)"
  end
  if value == 784 then
    return "Nominal Currency: Aed (784)"
  end
  if value == 788 then
    return "Nominal Currency: Tnd (788)"
  end
  if value == 800 then
    return "Nominal Currency: Ugx (800)"
  end
  if value == 807 then
    return "Nominal Currency: Mkd (807)"
  end
  if value == 818 then
    return "Nominal Currency: Egp (818)"
  end
  if value == 826 then
    return "Nominal Currency: Gbp (826)"
  end
  if value == 834 then
    return "Nominal Currency: Tzs (834)"
  end
  if value == 840 then
    return "Nominal Currency: Usd (840)"
  end
  if value == 858 then
    return "Nominal Currency: Uyu (858)"
  end
  if value == 860 then
    return "Nominal Currency: Uzs (860)"
  end
  if value == 882 then
    return "Nominal Currency: Wst (882)"
  end
  if value == 886 then
    return "Nominal Currency: Yer (886)"
  end
  if value == 901 then
    return "Nominal Currency: Twd (901)"
  end
  if value == 925 then
    return "Nominal Currency: Sle (925)"
  end
  if value == 926 then
    return "Nominal Currency: Ved (926)"
  end
  if value == 927 then
    return "Nominal Currency: Uyw (927)"
  end
  if value == 928 then
    return "Nominal Currency: Ves (928)"
  end
  if value == 929 then
    return "Nominal Currency: Mru (929)"
  end
  if value == 930 then
    return "Nominal Currency: Stn (930)"
  end
  if value == 931 then
    return "Nominal Currency: Cuc (931)"
  end
  if value == 932 then
    return "Nominal Currency: Zwl (932)"
  end
  if value == 933 then
    return "Nominal Currency: Byn (933)"
  end
  if value == 934 then
    return "Nominal Currency: Tmt (934)"
  end
  if value == 936 then
    return "Nominal Currency: Ghs (936)"
  end
  if value == 938 then
    return "Nominal Currency: Sdg (938)"
  end
  if value == 940 then
    return "Nominal Currency: Uyi (940)"
  end
  if value == 941 then
    return "Nominal Currency: Rsd (941)"
  end
  if value == 943 then
    return "Nominal Currency: Mzn (943)"
  end
  if value == 944 then
    return "Nominal Currency: Azn (944)"
  end
  if value == 946 then
    return "Nominal Currency: Ron (946)"
  end
  if value == 947 then
    return "Nominal Currency: Che (947)"
  end
  if value == 948 then
    return "Nominal Currency: Chw (948)"
  end
  if value == 949 then
    return "Nominal Currency: Try (949)"
  end
  if value == 950 then
    return "Nominal Currency: Xaf (950)"
  end
  if value == 951 then
    return "Nominal Currency: Xcd (951)"
  end
  if value == 952 then
    return "Nominal Currency: Xof (952)"
  end
  if value == 953 then
    return "Nominal Currency: Xpf (953)"
  end
  if value == 955 then
    return "Nominal Currency: Xba (955)"
  end
  if value == 956 then
    return "Nominal Currency: Xbb (956)"
  end
  if value == 957 then
    return "Nominal Currency: Xbc (957)"
  end
  if value == 958 then
    return "Nominal Currency: Xbd (958)"
  end
  if value == 959 then
    return "Nominal Currency: Xau (959)"
  end
  if value == 960 then
    return "Nominal Currency: Xdr (960)"
  end
  if value == 961 then
    return "Nominal Currency: Xag (961)"
  end
  if value == 962 then
    return "Nominal Currency: Xpt (962)"
  end
  if value == 963 then
    return "Nominal Currency: Xts (963)"
  end
  if value == 964 then
    return "Nominal Currency: Xpd (964)"
  end
  if value == 965 then
    return "Nominal Currency: Xua (965)"
  end
  if value == 967 then
    return "Nominal Currency: Zmw (967)"
  end
  if value == 968 then
    return "Nominal Currency: Srd (968)"
  end
  if value == 969 then
    return "Nominal Currency: Mga (969)"
  end
  if value == 970 then
    return "Nominal Currency: Cou (970)"
  end
  if value == 971 then
    return "Nominal Currency: Afn (971)"
  end
  if value == 972 then
    return "Nominal Currency: Tjs (972)"
  end
  if value == 973 then
    return "Nominal Currency: Aoa (973)"
  end
  if value == 975 then
    return "Nominal Currency: Bgn (975)"
  end
  if value == 976 then
    return "Nominal Currency: Cdf (976)"
  end
  if value == 977 then
    return "Nominal Currency: Bam (977)"
  end
  if value == 978 then
    return "Nominal Currency: Eur (978)"
  end
  if value == 979 then
    return "Nominal Currency: Mxv (979)"
  end
  if value == 980 then
    return "Nominal Currency: Uah (980)"
  end
  if value == 981 then
    return "Nominal Currency: Gel (981)"
  end
  if value == 984 then
    return "Nominal Currency: Bov (984)"
  end
  if value == 985 then
    return "Nominal Currency: Pln (985)"
  end
  if value == 986 then
    return "Nominal Currency: Brl (986)"
  end
  if value == 990 then
    return "Nominal Currency: Clf (990)"
  end
  if value == 994 then
    return "Nominal Currency: Xsu (994)"
  end
  if value == 997 then
    return "Nominal Currency: Usn (997)"
  end
  if value == 999 then
    return "Nominal Currency: Xxx (999)"
  end

  return "Nominal Currency: Unknown("..value..")"
end

-- Dissect: Nominal Currency
gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_currency.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_currency.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.nominal_currency, range, value, display)

  return offset + length, value
end

-- Nominal Value Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_value_price = {}

-- Size: Nominal Value Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_value_price.size = 8

-- Display: Nominal Value Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_value_price.display = function(value)
  return "Nominal Value Price: "..value
end

-- Translate: Nominal Value Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_value_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Nominal Value Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_value_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_value_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_value_price.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_value_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.nominal_value_price, range, value, display)

  return offset + length, value
end

-- Nominal Value Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_value_type = {}

-- Size: Nominal Value Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_value_type.size = 1

-- Display: Nominal Value Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_value_type.display = function(value)
  if value == 1 then
    return "Nominal Value Type: Not Applicable (1)"
  end
  if value == 2 then
    return "Nominal Value Type: Constant (2)"
  end

  return "Nominal Value Type: Unknown("..value..")"
end

-- Dissect: Nominal Value Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_value_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_value_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_value_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.nominal_value_type, range, value, display)

  return offset + length, value
end

-- Nominal Value Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_value_value = {}

-- Size: Nominal Value Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_value_value.size = 8

-- Display: Nominal Value Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_value_value.display = function(value)
  return "Nominal Value Value: "..value
end

-- Translate: Nominal Value Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_value_value.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Nominal Value Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_value_value.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_value_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_value_value.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_value_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.nominal_value_value, range, value, display)

  return offset + length, value
end

-- Num Of Active Instruments
gpw_wse_replayfulldepth_wats_v1_7_6_20.num_of_active_instruments = {}

-- Size: Num Of Active Instruments
gpw_wse_replayfulldepth_wats_v1_7_6_20.num_of_active_instruments.size = 2

-- Display: Num Of Active Instruments
gpw_wse_replayfulldepth_wats_v1_7_6_20.num_of_active_instruments.display = function(value)
  return "Num Of Active Instruments: "..value
end

-- Dissect: Num Of Active Instruments
gpw_wse_replayfulldepth_wats_v1_7_6_20.num_of_active_instruments.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.num_of_active_instruments.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.num_of_active_instruments.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.num_of_active_instruments, range, value, display)

  return offset + length, value
end

-- Num Of Components
gpw_wse_replayfulldepth_wats_v1_7_6_20.num_of_components = {}

-- Size: Num Of Components
gpw_wse_replayfulldepth_wats_v1_7_6_20.num_of_components.size = 2

-- Display: Num Of Components
gpw_wse_replayfulldepth_wats_v1_7_6_20.num_of_components.display = function(value)
  return "Num Of Components: "..value
end

-- Dissect: Num Of Components
gpw_wse_replayfulldepth_wats_v1_7_6_20.num_of_components.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.num_of_components.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.num_of_components.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.num_of_components, range, value, display)

  return offset + length, value
end

-- Number Of Dividends
gpw_wse_replayfulldepth_wats_v1_7_6_20.number_of_dividends = {}

-- Size: Number Of Dividends
gpw_wse_replayfulldepth_wats_v1_7_6_20.number_of_dividends.size = 2

-- Display: Number Of Dividends
gpw_wse_replayfulldepth_wats_v1_7_6_20.number_of_dividends.display = function(value)
  return "Number Of Dividends: "..value
end

-- Dissect: Number Of Dividends
gpw_wse_replayfulldepth_wats_v1_7_6_20.number_of_dividends.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.number_of_dividends.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.number_of_dividends.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.number_of_dividends, range, value, display)

  return offset + length, value
end

-- Open Positions
gpw_wse_replayfulldepth_wats_v1_7_6_20.open_positions = {}

-- Size: Open Positions
gpw_wse_replayfulldepth_wats_v1_7_6_20.open_positions.size = 4

-- Display: Open Positions
gpw_wse_replayfulldepth_wats_v1_7_6_20.open_positions.display = function(value)
  return "Open Positions: "..value
end

-- Dissect: Open Positions
gpw_wse_replayfulldepth_wats_v1_7_6_20.open_positions.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.open_positions.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.open_positions.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.open_positions, range, value, display)

  return offset + length, value
end

-- Opening Index Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.opening_index_value = {}

-- Size: Opening Index Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.opening_index_value.size = 8

-- Display: Opening Index Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.opening_index_value.display = function(value)
  return "Opening Index Value: "..value
end

-- Translate: Opening Index Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.opening_index_value.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Opening Index Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.opening_index_value.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.opening_index_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.opening_index_value.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.opening_index_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.opening_index_value, range, value, display)

  return offset + length, value
end

-- Opening Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.opening_price = {}

-- Size: Opening Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.opening_price.size = 8

-- Display: Opening Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.opening_price.display = function(value)
  return "Opening Price: "..value
end

-- Translate: Opening Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.opening_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Opening Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.opening_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.opening_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.opening_price.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.opening_price, range, value, display)

  return offset + length, value
end

-- Option Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.option_type = {}

-- Size: Option Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.option_type.size = 1

-- Display: Option Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.option_type.display = function(value)
  if value == 1 then
    return "Option Type: Not Applicable (1)"
  end
  if value == 2 then
    return "Option Type: Call (2)"
  end
  if value == 3 then
    return "Option Type: Put (3)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.option_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.option_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.option_type, range, value, display)

  return offset + length, value
end

-- Options Strike Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.options_strike_price = {}

-- Size: Options Strike Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.options_strike_price.size = 8

-- Display: Options Strike Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.options_strike_price.display = function(value)
  return "Options Strike Price: "..value
end

-- Translate: Options Strike Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.options_strike_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Options Strike Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.options_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.options_strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.options_strike_price.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.options_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.options_strike_price, range, value, display)

  return offset + length, value
end

-- Order Count
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_count = {}

-- Size: Order Count
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_count.size = 2

-- Display: Order Count
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_count.display = function(value)
  return "Order Count: "..value
end

-- Dissect: Order Count
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_count.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.order_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.order_count, range, value, display)

  return offset + length, value
end

-- Order Dynamic Collar Table Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_dynamic_collar_table_id = {}

-- Size: Order Dynamic Collar Table Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_dynamic_collar_table_id.size = 4

-- Display: Order Dynamic Collar Table Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_dynamic_collar_table_id.display = function(value)
  return "Order Dynamic Collar Table Id: "..value
end

-- Dissect: Order Dynamic Collar Table Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_dynamic_collar_table_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.order_dynamic_collar_table_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.order_dynamic_collar_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.order_dynamic_collar_table_id, range, value, display)

  return offset + length, value
end

-- Order Static Collar Table Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_static_collar_table_id = {}

-- Size: Order Static Collar Table Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_static_collar_table_id.size = 4

-- Display: Order Static Collar Table Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_static_collar_table_id.display = function(value)
  return "Order Static Collar Table Id: "..value
end

-- Dissect: Order Static Collar Table Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_static_collar_table_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.order_static_collar_table_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.order_static_collar_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.order_static_collar_table_id, range, value, display)

  return offset + length, value
end

-- Parent Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.parent_id = {}

-- Size: Parent Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.parent_id.size = 4

-- Display: Parent Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.parent_id.display = function(value)
  return "Parent Id: "..value
end

-- Dissect: Parent Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.parent_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.parent_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.parent_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.parent_id, range, value, display)

  return offset + length, value
end

-- Pct Change
gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change = {}

-- Size: Pct Change
gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change.size = 8

-- Display: Pct Change
gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change.display = function(value)
  return "Pct Change: "..value
end

-- Translate: Pct Change
gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Pct Change
gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.pct_change, range, value, display)

  return offset + length, value
end

-- Pct Change Index Val Prev Session
gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change_index_val_prev_session = {}

-- Size: Pct Change Index Val Prev Session
gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change_index_val_prev_session.size = 8

-- Display: Pct Change Index Val Prev Session
gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change_index_val_prev_session.display = function(value)
  return "Pct Change Index Val Prev Session: "..value
end

-- Translate: Pct Change Index Val Prev Session
gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change_index_val_prev_session.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Pct Change Index Val Prev Session
gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change_index_val_prev_session.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change_index_val_prev_session.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change_index_val_prev_session.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change_index_val_prev_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.pct_change_index_val_prev_session, range, value, display)

  return offset + length, value
end

-- Pct Change Index Val Prev Year
gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change_index_val_prev_year = {}

-- Size: Pct Change Index Val Prev Year
gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change_index_val_prev_year.size = 8

-- Display: Pct Change Index Val Prev Year
gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change_index_val_prev_year.display = function(value)
  return "Pct Change Index Val Prev Year: "..value
end

-- Translate: Pct Change Index Val Prev Year
gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change_index_val_prev_year.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Pct Change Index Val Prev Year
gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change_index_val_prev_year.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change_index_val_prev_year.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change_index_val_prev_year.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change_index_val_prev_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.pct_change_index_val_prev_year, range, value, display)

  return offset + length, value
end

-- Pos Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.pos_type = {}

-- Size: Pos Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.pos_type.size = 1

-- Display: Pos Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.pos_type.display = function(value)
  if value == 1 then
    return "Pos Type: Sod (1)"
  end
  if value == 2 then
    return "Pos Type: Itd (2)"
  end
  if value == 3 then
    return "Pos Type: Fin (3)"
  end

  return "Pos Type: Unknown("..value..")"
end

-- Dissect: Pos Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.pos_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.pos_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.pos_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.pos_type, range, value, display)

  return offset + length, value
end

-- Pre Trade Check Max Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_max_price = {}

-- Size: Pre Trade Check Max Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_max_price.size = 8

-- Display: Pre Trade Check Max Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_max_price.display = function(value)
  return "Pre Trade Check Max Price: "..value
end

-- Translate: Pre Trade Check Max Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_max_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Pre Trade Check Max Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_max_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_max_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_max_price.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_max_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.pre_trade_check_max_price, range, value, display)

  return offset + length, value
end

-- Pre Trade Check Max Quantity
gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_max_quantity = {}

-- Size: Pre Trade Check Max Quantity
gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_max_quantity.size = 8

-- Display: Pre Trade Check Max Quantity
gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_max_quantity.display = function(value)
  return "Pre Trade Check Max Quantity: "..value
end

-- Dissect: Pre Trade Check Max Quantity
gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_max_quantity.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_max_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_max_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.pre_trade_check_max_quantity, range, value, display)

  return offset + length, value
end

-- Pre Trade Check Max Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_max_value = {}

-- Size: Pre Trade Check Max Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_max_value.size = 8

-- Display: Pre Trade Check Max Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_max_value.display = function(value)
  return "Pre Trade Check Max Value: "..value
end

-- Translate: Pre Trade Check Max Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_max_value.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Pre Trade Check Max Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_max_value.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_max_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_max_value.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_max_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.pre_trade_check_max_value, range, value, display)

  return offset + length, value
end

-- Pre Trade Check Min Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_min_price = {}

-- Size: Pre Trade Check Min Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_min_price.size = 8

-- Display: Pre Trade Check Min Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_min_price.display = function(value)
  return "Pre Trade Check Min Price: "..value
end

-- Translate: Pre Trade Check Min Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_min_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Pre Trade Check Min Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_min_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_min_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_min_price.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_min_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.pre_trade_check_min_price, range, value, display)

  return offset + length, value
end

-- Pre Trade Check Min Quantity
gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_min_quantity = {}

-- Size: Pre Trade Check Min Quantity
gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_min_quantity.size = 8

-- Display: Pre Trade Check Min Quantity
gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_min_quantity.display = function(value)
  return "Pre Trade Check Min Quantity: "..value
end

-- Dissect: Pre Trade Check Min Quantity
gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_min_quantity.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_min_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_min_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.pre_trade_check_min_quantity, range, value, display)

  return offset + length, value
end

-- Pre Trade Check Min Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_min_value = {}

-- Size: Pre Trade Check Min Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_min_value.size = 8

-- Display: Pre Trade Check Min Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_min_value.display = function(value)
  return "Pre Trade Check Min Value: "..value
end

-- Translate: Pre Trade Check Min Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_min_value.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Pre Trade Check Min Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_min_value.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_min_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_min_value.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_min_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.pre_trade_check_min_value, range, value, display)

  return offset + length, value
end

-- Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.price = {}

-- Size: Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.price.size = 8

-- Display: Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.price.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.price, range, value, display)

  return offset + length, value
end

-- Price Currency
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_currency = {}

-- Size: Price Currency
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_currency.size = 2

-- Display: Price Currency
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_currency.display = function(value)
  if value == 8 then
    return "Price Currency: All (8)"
  end
  if value == 12 then
    return "Price Currency: Dzd (12)"
  end
  if value == 32 then
    return "Price Currency: Ars (32)"
  end
  if value == 36 then
    return "Price Currency: Aud (36)"
  end
  if value == 44 then
    return "Price Currency: Bsd (44)"
  end
  if value == 48 then
    return "Price Currency: Bhd (48)"
  end
  if value == 50 then
    return "Price Currency: Bdt (50)"
  end
  if value == 51 then
    return "Price Currency: Amd (51)"
  end
  if value == 52 then
    return "Price Currency: Bbd (52)"
  end
  if value == 60 then
    return "Price Currency: Bmd (60)"
  end
  if value == 64 then
    return "Price Currency: Btn (64)"
  end
  if value == 68 then
    return "Price Currency: Bob (68)"
  end
  if value == 72 then
    return "Price Currency: Bwp (72)"
  end
  if value == 84 then
    return "Price Currency: Bzd (84)"
  end
  if value == 90 then
    return "Price Currency: Sbd (90)"
  end
  if value == 96 then
    return "Price Currency: Bnd (96)"
  end
  if value == 104 then
    return "Price Currency: Mmk (104)"
  end
  if value == 108 then
    return "Price Currency: Bif (108)"
  end
  if value == 116 then
    return "Price Currency: Khr (116)"
  end
  if value == 124 then
    return "Price Currency: Cad (124)"
  end
  if value == 132 then
    return "Price Currency: Cve (132)"
  end
  if value == 136 then
    return "Price Currency: Kyd (136)"
  end
  if value == 144 then
    return "Price Currency: Lkr (144)"
  end
  if value == 152 then
    return "Price Currency: Clp (152)"
  end
  if value == 156 then
    return "Price Currency: Cny (156)"
  end
  if value == 170 then
    return "Price Currency: Cop (170)"
  end
  if value == 174 then
    return "Price Currency: Kmf (174)"
  end
  if value == 188 then
    return "Price Currency: Crc (188)"
  end
  if value == 191 then
    return "Price Currency: Hrk (191)"
  end
  if value == 192 then
    return "Price Currency: Cup (192)"
  end
  if value == 203 then
    return "Price Currency: Czk (203)"
  end
  if value == 208 then
    return "Price Currency: Dkk (208)"
  end
  if value == 214 then
    return "Price Currency: Dop (214)"
  end
  if value == 222 then
    return "Price Currency: Svc (222)"
  end
  if value == 230 then
    return "Price Currency: Etb (230)"
  end
  if value == 232 then
    return "Price Currency: Ern (232)"
  end
  if value == 238 then
    return "Price Currency: Fkp (238)"
  end
  if value == 242 then
    return "Price Currency: Fjd (242)"
  end
  if value == 262 then
    return "Price Currency: Djf (262)"
  end
  if value == 270 then
    return "Price Currency: Gmd (270)"
  end
  if value == 292 then
    return "Price Currency: Gip (292)"
  end
  if value == 320 then
    return "Price Currency: Gtq (320)"
  end
  if value == 324 then
    return "Price Currency: Gnf (324)"
  end
  if value == 328 then
    return "Price Currency: Gyd (328)"
  end
  if value == 332 then
    return "Price Currency: Htg (332)"
  end
  if value == 340 then
    return "Price Currency: Hnl (340)"
  end
  if value == 344 then
    return "Price Currency: Hkd (344)"
  end
  if value == 348 then
    return "Price Currency: Huf (348)"
  end
  if value == 352 then
    return "Price Currency: Isk (352)"
  end
  if value == 356 then
    return "Price Currency: Inr (356)"
  end
  if value == 360 then
    return "Price Currency: Idr (360)"
  end
  if value == 364 then
    return "Price Currency: Irr (364)"
  end
  if value == 368 then
    return "Price Currency: Iqd (368)"
  end
  if value == 376 then
    return "Price Currency: Ils (376)"
  end
  if value == 388 then
    return "Price Currency: Jmd (388)"
  end
  if value == 392 then
    return "Price Currency: Jpy (392)"
  end
  if value == 398 then
    return "Price Currency: Kzt (398)"
  end
  if value == 400 then
    return "Price Currency: Jod (400)"
  end
  if value == 404 then
    return "Price Currency: Kes (404)"
  end
  if value == 408 then
    return "Price Currency: Kpw (408)"
  end
  if value == 410 then
    return "Price Currency: Krw (410)"
  end
  if value == 414 then
    return "Price Currency: Kwd (414)"
  end
  if value == 417 then
    return "Price Currency: Kgs (417)"
  end
  if value == 418 then
    return "Price Currency: Lak (418)"
  end
  if value == 422 then
    return "Price Currency: Lbp (422)"
  end
  if value == 426 then
    return "Price Currency: Lsl (426)"
  end
  if value == 430 then
    return "Price Currency: Lrd (430)"
  end
  if value == 434 then
    return "Price Currency: Lyd (434)"
  end
  if value == 446 then
    return "Price Currency: Mop (446)"
  end
  if value == 454 then
    return "Price Currency: Mwk (454)"
  end
  if value == 458 then
    return "Price Currency: Myr (458)"
  end
  if value == 462 then
    return "Price Currency: Mvr (462)"
  end
  if value == 480 then
    return "Price Currency: Mur (480)"
  end
  if value == 484 then
    return "Price Currency: Mxn (484)"
  end
  if value == 496 then
    return "Price Currency: Mnt (496)"
  end
  if value == 498 then
    return "Price Currency: Mdl (498)"
  end
  if value == 504 then
    return "Price Currency: Mad (504)"
  end
  if value == 512 then
    return "Price Currency: Omr (512)"
  end
  if value == 516 then
    return "Price Currency: Nad (516)"
  end
  if value == 524 then
    return "Price Currency: Npr (524)"
  end
  if value == 532 then
    return "Price Currency: Ang (532)"
  end
  if value == 533 then
    return "Price Currency: Awg (533)"
  end
  if value == 548 then
    return "Price Currency: Vuv (548)"
  end
  if value == 554 then
    return "Price Currency: Nzd (554)"
  end
  if value == 558 then
    return "Price Currency: Nio (558)"
  end
  if value == 566 then
    return "Price Currency: Ngn (566)"
  end
  if value == 578 then
    return "Price Currency: Nok (578)"
  end
  if value == 586 then
    return "Price Currency: Pkr (586)"
  end
  if value == 590 then
    return "Price Currency: Pab (590)"
  end
  if value == 598 then
    return "Price Currency: Pgk (598)"
  end
  if value == 600 then
    return "Price Currency: Pyg (600)"
  end
  if value == 604 then
    return "Price Currency: Pen (604)"
  end
  if value == 608 then
    return "Price Currency: Php (608)"
  end
  if value == 634 then
    return "Price Currency: Qar (634)"
  end
  if value == 643 then
    return "Price Currency: Rub (643)"
  end
  if value == 646 then
    return "Price Currency: Rwf (646)"
  end
  if value == 654 then
    return "Price Currency: Shp (654)"
  end
  if value == 682 then
    return "Price Currency: Sar (682)"
  end
  if value == 690 then
    return "Price Currency: Scr (690)"
  end
  if value == 702 then
    return "Price Currency: Sgd (702)"
  end
  if value == 704 then
    return "Price Currency: Vnd (704)"
  end
  if value == 706 then
    return "Price Currency: Sos (706)"
  end
  if value == 710 then
    return "Price Currency: Zar (710)"
  end
  if value == 728 then
    return "Price Currency: Ssp (728)"
  end
  if value == 748 then
    return "Price Currency: Szl (748)"
  end
  if value == 752 then
    return "Price Currency: Sek (752)"
  end
  if value == 756 then
    return "Price Currency: Chf (756)"
  end
  if value == 760 then
    return "Price Currency: Syp (760)"
  end
  if value == 764 then
    return "Price Currency: Thb (764)"
  end
  if value == 776 then
    return "Price Currency: Top (776)"
  end
  if value == 780 then
    return "Price Currency: Ttd (780)"
  end
  if value == 784 then
    return "Price Currency: Aed (784)"
  end
  if value == 788 then
    return "Price Currency: Tnd (788)"
  end
  if value == 800 then
    return "Price Currency: Ugx (800)"
  end
  if value == 807 then
    return "Price Currency: Mkd (807)"
  end
  if value == 818 then
    return "Price Currency: Egp (818)"
  end
  if value == 826 then
    return "Price Currency: Gbp (826)"
  end
  if value == 834 then
    return "Price Currency: Tzs (834)"
  end
  if value == 840 then
    return "Price Currency: Usd (840)"
  end
  if value == 858 then
    return "Price Currency: Uyu (858)"
  end
  if value == 860 then
    return "Price Currency: Uzs (860)"
  end
  if value == 882 then
    return "Price Currency: Wst (882)"
  end
  if value == 886 then
    return "Price Currency: Yer (886)"
  end
  if value == 901 then
    return "Price Currency: Twd (901)"
  end
  if value == 925 then
    return "Price Currency: Sle (925)"
  end
  if value == 926 then
    return "Price Currency: Ved (926)"
  end
  if value == 927 then
    return "Price Currency: Uyw (927)"
  end
  if value == 928 then
    return "Price Currency: Ves (928)"
  end
  if value == 929 then
    return "Price Currency: Mru (929)"
  end
  if value == 930 then
    return "Price Currency: Stn (930)"
  end
  if value == 931 then
    return "Price Currency: Cuc (931)"
  end
  if value == 932 then
    return "Price Currency: Zwl (932)"
  end
  if value == 933 then
    return "Price Currency: Byn (933)"
  end
  if value == 934 then
    return "Price Currency: Tmt (934)"
  end
  if value == 936 then
    return "Price Currency: Ghs (936)"
  end
  if value == 938 then
    return "Price Currency: Sdg (938)"
  end
  if value == 940 then
    return "Price Currency: Uyi (940)"
  end
  if value == 941 then
    return "Price Currency: Rsd (941)"
  end
  if value == 943 then
    return "Price Currency: Mzn (943)"
  end
  if value == 944 then
    return "Price Currency: Azn (944)"
  end
  if value == 946 then
    return "Price Currency: Ron (946)"
  end
  if value == 947 then
    return "Price Currency: Che (947)"
  end
  if value == 948 then
    return "Price Currency: Chw (948)"
  end
  if value == 949 then
    return "Price Currency: Try (949)"
  end
  if value == 950 then
    return "Price Currency: Xaf (950)"
  end
  if value == 951 then
    return "Price Currency: Xcd (951)"
  end
  if value == 952 then
    return "Price Currency: Xof (952)"
  end
  if value == 953 then
    return "Price Currency: Xpf (953)"
  end
  if value == 955 then
    return "Price Currency: Xba (955)"
  end
  if value == 956 then
    return "Price Currency: Xbb (956)"
  end
  if value == 957 then
    return "Price Currency: Xbc (957)"
  end
  if value == 958 then
    return "Price Currency: Xbd (958)"
  end
  if value == 959 then
    return "Price Currency: Xau (959)"
  end
  if value == 960 then
    return "Price Currency: Xdr (960)"
  end
  if value == 961 then
    return "Price Currency: Xag (961)"
  end
  if value == 962 then
    return "Price Currency: Xpt (962)"
  end
  if value == 963 then
    return "Price Currency: Xts (963)"
  end
  if value == 964 then
    return "Price Currency: Xpd (964)"
  end
  if value == 965 then
    return "Price Currency: Xua (965)"
  end
  if value == 967 then
    return "Price Currency: Zmw (967)"
  end
  if value == 968 then
    return "Price Currency: Srd (968)"
  end
  if value == 969 then
    return "Price Currency: Mga (969)"
  end
  if value == 970 then
    return "Price Currency: Cou (970)"
  end
  if value == 971 then
    return "Price Currency: Afn (971)"
  end
  if value == 972 then
    return "Price Currency: Tjs (972)"
  end
  if value == 973 then
    return "Price Currency: Aoa (973)"
  end
  if value == 975 then
    return "Price Currency: Bgn (975)"
  end
  if value == 976 then
    return "Price Currency: Cdf (976)"
  end
  if value == 977 then
    return "Price Currency: Bam (977)"
  end
  if value == 978 then
    return "Price Currency: Eur (978)"
  end
  if value == 979 then
    return "Price Currency: Mxv (979)"
  end
  if value == 980 then
    return "Price Currency: Uah (980)"
  end
  if value == 981 then
    return "Price Currency: Gel (981)"
  end
  if value == 984 then
    return "Price Currency: Bov (984)"
  end
  if value == 985 then
    return "Price Currency: Pln (985)"
  end
  if value == 986 then
    return "Price Currency: Brl (986)"
  end
  if value == 990 then
    return "Price Currency: Clf (990)"
  end
  if value == 994 then
    return "Price Currency: Xsu (994)"
  end
  if value == 997 then
    return "Price Currency: Usn (997)"
  end
  if value == 999 then
    return "Price Currency: Xxx (999)"
  end

  return "Price Currency: Unknown("..value..")"
end

-- Dissect: Price Currency
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_currency.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.price_currency.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.price_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.price_currency, range, value, display)

  return offset + length, value
end

-- Price Expression Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_expression_type = {}

-- Size: Price Expression Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_expression_type.size = 1

-- Display: Price Expression Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_expression_type.display = function(value)
  if value == 3 then
    return "Price Expression Type: Not Applicable (3)"
  end
  if value == 1 then
    return "Price Expression Type: Price (1)"
  end
  if value == 2 then
    return "Price Expression Type: Percentage (2)"
  end

  return "Price Expression Type: Unknown("..value..")"
end

-- Dissect: Price Expression Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_expression_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.price_expression_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.price_expression_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.price_expression_type, range, value, display)

  return offset + length, value
end

-- Price Notation
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_notation = {}

-- Size: Price Notation
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_notation.size = 1

-- Display: Price Notation
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_notation.display = function(value)
  if value == 3 then
    return "Price Notation: Not Applicable (3)"
  end
  if value == 1 then
    return "Price Notation: Price (1)"
  end
  if value == 2 then
    return "Price Notation: Percentage (2)"
  end

  return "Price Notation: Unknown("..value..")"
end

-- Dissect: Price Notation
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_notation.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.price_notation.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.price_notation.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.price_notation, range, value, display)

  return offset + length, value
end

-- Price Update Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_update_type = {}

-- Size: Price Update Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_update_type.size = 1

-- Display: Price Update Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_update_type.display = function(value)
  if value == 1 then
    return "Price Update Type: Reference Price (1)"
  end
  if value == 2 then
    return "Price Update Type: Reference Index Price (2)"
  end
  if value == 3 then
    return "Price Update Type: Reference Fixing Index Price (3)"
  end
  if value == 4 then
    return "Price Update Type: Mid Price (4)"
  end
  if value == 5 then
    return "Price Update Type: Fixing Price (5)"
  end
  if value == 6 then
    return "Price Update Type: Fixing Ytm (6)"
  end

  return "Price Update Type: Unknown("..value..")"
end

-- Dissect: Price Update Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_update_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.price_update_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.price_update_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.price_update_type, range, value, display)

  return offset + length, value
end

-- Priority Flag
gpw_wse_replayfulldepth_wats_v1_7_6_20.priority_flag = {}

-- Size: Priority Flag
gpw_wse_replayfulldepth_wats_v1_7_6_20.priority_flag.size = 1

-- Display: Priority Flag
gpw_wse_replayfulldepth_wats_v1_7_6_20.priority_flag.display = function(value)
  if value == 1 then
    return "Priority Flag: Lost (1)"
  end
  if value == 2 then
    return "Priority Flag: Retained (2)"
  end

  return "Priority Flag: Unknown("..value..")"
end

-- Dissect: Priority Flag
gpw_wse_replayfulldepth_wats_v1_7_6_20.priority_flag.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.priority_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.priority_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.priority_flag, range, value, display)

  return offset + length, value
end

-- Product Code
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_code = {}

-- Size: Product Code
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_code.size = 20

-- Display: Product Code
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_code.display = function(value)
  return "Product Code: "..value
end

-- Dissect: Product Code
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.product_code, range, value, display)

  return offset + length, value
end

-- Product Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_id = {}

-- Size: Product Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_id.size = 4

-- Display: Product Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.product_id, range, value, display)

  return offset + length, value
end

-- Product Identification Product Identification
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_product_identification = {}

-- Size: Product Identification Product Identification
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_product_identification.size = 30

-- Display: Product Identification Product Identification
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_product_identification.display = function(value)
  return "Product Identification Product Identification: "..value
end

-- Dissect: Product Identification Product Identification
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_product_identification.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_product_identification.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_product_identification.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.product_identification_product_identification, range, value, display)

  return offset + length, value
end

-- Product Identification Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_type = {}

-- Size: Product Identification Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_type.size = 1

-- Display: Product Identification Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_type.display = function(value)
  if value == 1 then
    return "Product Identification Type: Not Applicable (1)"
  end
  if value == 2 then
    return "Product Identification Type: Isin (2)"
  end

  return "Product Identification Type: Unknown("..value..")"
end

-- Dissect: Product Identification Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.product_identification_type, range, value, display)

  return offset + length, value
end

-- Product Name
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_name = {}

-- Size: Product Name
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_name.size = 50

-- Display: Product Name
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_name.display = function(value)
  return "Product Name: "..value
end

-- Dissect: Product Name
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_name.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_name.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.product_name, range, value, display)

  return offset + length, value
end

-- Product Subtype
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_subtype = {}

-- Size: Product Subtype
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_subtype.size = 1

-- Display: Product Subtype
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_subtype.display = function(value)
  if value == 1 then
    return "Product Subtype: Share (1)"
  end
  if value == 2 then
    return "Product Subtype: Allotment Right (2)"
  end
  if value == 3 then
    return "Product Subtype: Subscription Right (3)"
  end
  if value == 4 then
    return "Product Subtype: Tender Offer (4)"
  end
  if value == 5 then
    return "Product Subtype: Issue Right (5)"
  end
  if value == 6 then
    return "Product Subtype: Subscription Warrant (6)"
  end
  if value == 7 then
    return "Product Subtype: Bank Securities (7)"
  end
  if value == 8 then
    return "Product Subtype: Bond (8)"
  end
  if value == 9 then
    return "Product Subtype: Treasury Bond (9)"
  end
  if value == 10 then
    return "Product Subtype: Agency Bond (10)"
  end
  if value == 11 then
    return "Product Subtype: Municipal Bond (11)"
  end
  if value == 12 then
    return "Product Subtype: Corporate Bank Bond (12)"
  end
  if value == 13 then
    return "Product Subtype: Corporate Firm Bond (13)"
  end
  if value == 14 then
    return "Product Subtype: Convertible Bond (14)"
  end
  if value == 15 then
    return "Product Subtype: Mortgage Bond (15)"
  end
  if value == 16 then
    return "Product Subtype: Mortgage Backed Bond (16)"
  end
  if value == 17 then
    return "Product Subtype: Public Mortgage Bond (17)"
  end
  if value == 18 then
    return "Product Subtype: Bill (18)"
  end
  if value == 19 then
    return "Product Subtype: Treasury Bill (19)"
  end
  if value == 20 then
    return "Product Subtype: Commercial Bill (20)"
  end
  if value == 21 then
    return "Product Subtype: Exchange Traded Fund (21)"
  end
  if value == 22 then
    return "Product Subtype: Exchange Traded Note (22)"
  end
  if value == 23 then
    return "Product Subtype: Exchange Traded Commodity (23)"
  end
  if value == 24 then
    return "Product Subtype: Investment Certificate (24)"
  end
  if value == 25 then
    return "Product Subtype: Index Futures (25)"
  end
  if value == 26 then
    return "Product Subtype: Stock Futures (26)"
  end
  if value == 27 then
    return "Product Subtype: Currency Futures (27)"
  end
  if value == 28 then
    return "Product Subtype: Bond Futures (28)"
  end
  if value == 29 then
    return "Product Subtype: Interest Rate Futures (29)"
  end
  if value == 30 then
    return "Product Subtype: Index Options (30)"
  end
  if value == 31 then
    return "Product Subtype: Stock Options (31)"
  end
  if value == 32 then
    return "Product Subtype: Option Warrants (32)"
  end
  if value == 33 then
    return "Product Subtype: Factor Certificates (33)"
  end
  if value == 34 then
    return "Product Subtype: Turbo Certificates (34)"
  end
  if value == 35 then
    return "Product Subtype: Capital Protection Certificates (35)"
  end
  if value == 36 then
    return "Product Subtype: Bonus Certificates (36)"
  end
  if value == 37 then
    return "Product Subtype: Reverse Convertible Certificates (37)"
  end
  if value == 38 then
    return "Product Subtype: Express Certificates (38)"
  end
  if value == 39 then
    return "Product Subtype: Discount Certificates (39)"
  end
  if value == 40 then
    return "Product Subtype: Index Tracker Certificates (40)"
  end
  if value == 41 then
    return "Product Subtype: Other Investment Certificates (41)"
  end
  if value == 42 then
    return "Product Subtype: Structured Notes (42)"
  end
  if value == 43 then
    return "Product Subtype: Reference Rate (43)"
  end
  if value == 44 then
    return "Product Subtype: Interest Rate (44)"
  end
  if value == 45 then
    return "Product Subtype: Exchange Rate (45)"
  end
  if value == 46 then
    return "Product Subtype: Price Index (46)"
  end
  if value == 47 then
    return "Product Subtype: Total Return Index (47)"
  end
  if value == 48 then
    return "Product Subtype: Sector Price Index (48)"
  end
  if value == 49 then
    return "Product Subtype: Sector Total Return Index (49)"
  end
  if value == 50 then
    return "Product Subtype: Dividend Index (50)"
  end
  if value == 51 then
    return "Product Subtype: Strategy Price Index (51)"
  end
  if value == 52 then
    return "Product Subtype: Strategy Total Return Index (52)"
  end
  if value == 53 then
    return "Product Subtype: Commodity Index (53)"
  end
  if value == 54 then
    return "Product Subtype: Bond Total Return Index (54)"
  end
  if value == 55 then
    return "Product Subtype: Supranational Bond (55)"
  end
  if value == 56 then
    return "Product Subtype: Warrant With Knock Out (56)"
  end

  return "Product Subtype: Unknown("..value..")"
end

-- Dissect: Product Subtype
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_subtype.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_subtype.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_subtype.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.product_subtype, range, value, display)

  return offset + length, value
end

-- Product Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_type = {}

-- Size: Product Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_type.size = 1

-- Display: Product Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_type.display = function(value)
  if value == 1 then
    return "Product Type: Equity (1)"
  end
  if value == 2 then
    return "Product Type: Fixed Income (2)"
  end
  if value == 3 then
    return "Product Type: Derivative Futures (3)"
  end
  if value == 4 then
    return "Product Type: Derivative Options (4)"
  end
  if value == 5 then
    return "Product Type: Index (5)"
  end
  if value == 6 then
    return "Product Type: Currency (6)"
  end
  if value == 7 then
    return "Product Type: Structured Product (7)"
  end
  if value == 9 then
    return "Product Type: Tracker (9)"
  end

  return "Product Type: Unknown("..value..")"
end

-- Dissect: Product Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.product_type, range, value, display)

  return offset + length, value
end

-- Public Order Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.public_order_id = {}

-- Size: Public Order Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.public_order_id.size = 8

-- Display: Public Order Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.public_order_id.display = function(value)
  return "Public Order Id: "..value
end

-- Dissect: Public Order Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.public_order_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.public_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.public_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.public_order_id, range, value, display)

  return offset + length, value
end

-- Publication Order
gpw_wse_replayfulldepth_wats_v1_7_6_20.publication_order = {}

-- Size: Publication Order
gpw_wse_replayfulldepth_wats_v1_7_6_20.publication_order.size = 2

-- Display: Publication Order
gpw_wse_replayfulldepth_wats_v1_7_6_20.publication_order.display = function(value)
  return "Publication Order: "..value
end

-- Dissect: Publication Order
gpw_wse_replayfulldepth_wats_v1_7_6_20.publication_order.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.publication_order.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.publication_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.publication_order, range, value, display)

  return offset + length, value
end

-- Publication Timestamp
gpw_wse_replayfulldepth_wats_v1_7_6_20.publication_timestamp = {}

-- Size: Publication Timestamp
gpw_wse_replayfulldepth_wats_v1_7_6_20.publication_timestamp.size = 8

-- Display: Publication Timestamp
gpw_wse_replayfulldepth_wats_v1_7_6_20.publication_timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Publication Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Publication Timestamp
gpw_wse_replayfulldepth_wats_v1_7_6_20.publication_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.publication_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.publication_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.publication_timestamp, range, value, display)

  return offset + length, value
end

-- Quantity
gpw_wse_replayfulldepth_wats_v1_7_6_20.quantity = {}

-- Size: Quantity
gpw_wse_replayfulldepth_wats_v1_7_6_20.quantity.size = 8

-- Display: Quantity
gpw_wse_replayfulldepth_wats_v1_7_6_20.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
gpw_wse_replayfulldepth_wats_v1_7_6_20.quantity.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.quantity, range, value, display)

  return offset + length, value
end

-- Quotation System
gpw_wse_replayfulldepth_wats_v1_7_6_20.quotation_system = {}

-- Size: Quotation System
gpw_wse_replayfulldepth_wats_v1_7_6_20.quotation_system.size = 1

-- Display: Quotation System
gpw_wse_replayfulldepth_wats_v1_7_6_20.quotation_system.display = function(value)
  if value == 1 then
    return "Quotation System: Na (1)"
  end
  if value == 2 then
    return "Quotation System: Single Price Single Fixing (2)"
  end
  if value == 3 then
    return "Quotation System: Continuous Trading (3)"
  end
  if value == 4 then
    return "Quotation System: Single Price Two Fixings (4)"
  end

  return "Quotation System: Unknown("..value..")"
end

-- Dissect: Quotation System
gpw_wse_replayfulldepth_wats_v1_7_6_20.quotation_system.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.quotation_system.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.quotation_system.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.quotation_system, range, value, display)

  return offset + length, value
end

-- Reference Instrument Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.reference_instrument_id = {}

-- Size: Reference Instrument Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.reference_instrument_id.size = 4

-- Display: Reference Instrument Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.reference_instrument_id.display = function(value)
  return "Reference Instrument Id: "..value
end

-- Dissect: Reference Instrument Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.reference_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.reference_instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.reference_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.reference_instrument_id, range, value, display)

  return offset + length, value
end

-- Reference Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.reference_price = {}

-- Size: Reference Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.reference_price.size = 8

-- Display: Reference Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.reference_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Reference Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.reference_price.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Replay Message Length
gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_message_length = {}

-- Size: Replay Message Length
gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_message_length.size = 2

-- Display: Replay Message Length
gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_message_length.display = function(value)
  return "Replay Message Length: "..value
end

-- Dissect: Replay Message Length
gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_message_length.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.replay_message_length, range, value, display)

  return offset + length, value
end

-- Replay Message Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_message_type = {}

-- Size: Replay Message Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_message_type.size = 2

-- Display: Replay Message Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_message_type.display = function(value)
  if value == 1 then
    return "Replay Message Type: Replay Request (1)"
  end

  return "Replay Message Type: Unknown("..value..")"
end

-- Dissect: Replay Message Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_message_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.replay_message_type, range, value, display)

  return offset + length, value
end

-- Rho
gpw_wse_replayfulldepth_wats_v1_7_6_20.rho = {}

-- Size: Rho
gpw_wse_replayfulldepth_wats_v1_7_6_20.rho.size = 8

-- Display: Rho
gpw_wse_replayfulldepth_wats_v1_7_6_20.rho.display = function(value)
  return "Rho: "..value
end

-- Translate: Rho
gpw_wse_replayfulldepth_wats_v1_7_6_20.rho.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Rho
gpw_wse_replayfulldepth_wats_v1_7_6_20.rho.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.rho.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.rho.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.rho.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.rho, range, value, display)

  return offset + length, value
end

-- Scenario Name
gpw_wse_replayfulldepth_wats_v1_7_6_20.scenario_name = {}

-- Size: Scenario Name
gpw_wse_replayfulldepth_wats_v1_7_6_20.scenario_name.size = 200

-- Display: Scenario Name
gpw_wse_replayfulldepth_wats_v1_7_6_20.scenario_name.display = function(value)
  return "Scenario Name: "..value
end

-- Dissect: Scenario Name
gpw_wse_replayfulldepth_wats_v1_7_6_20.scenario_name.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.scenario_name.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.scenario_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.scenario_name, range, value, display)

  return offset + length, value
end

-- Sector
gpw_wse_replayfulldepth_wats_v1_7_6_20.sector = {}

-- Size: Sector
gpw_wse_replayfulldepth_wats_v1_7_6_20.sector.size = 2

-- Display: Sector
gpw_wse_replayfulldepth_wats_v1_7_6_20.sector.display = function(value)
  return "Sector: "..value
end

-- Dissect: Sector
gpw_wse_replayfulldepth_wats_v1_7_6_20.sector.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.sector.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.sector.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.sector, range, value, display)

  return offset + length, value
end

-- Seq Num
gpw_wse_replayfulldepth_wats_v1_7_6_20.seq_num = {}

-- Size: Seq Num
gpw_wse_replayfulldepth_wats_v1_7_6_20.seq_num.size = 4

-- Display: Seq Num
gpw_wse_replayfulldepth_wats_v1_7_6_20.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
gpw_wse_replayfulldepth_wats_v1_7_6_20.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Sequence Number
gpw_wse_replayfulldepth_wats_v1_7_6_20.sequence_number = {}

-- Size: Sequence Number
gpw_wse_replayfulldepth_wats_v1_7_6_20.sequence_number.size = 4

-- Display: Sequence Number
gpw_wse_replayfulldepth_wats_v1_7_6_20.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
gpw_wse_replayfulldepth_wats_v1_7_6_20.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Avg
gpw_wse_replayfulldepth_wats_v1_7_6_20.session_avg = {}

-- Size: Session Avg
gpw_wse_replayfulldepth_wats_v1_7_6_20.session_avg.size = 8

-- Display: Session Avg
gpw_wse_replayfulldepth_wats_v1_7_6_20.session_avg.display = function(value)
  return "Session Avg: "..value
end

-- Translate: Session Avg
gpw_wse_replayfulldepth_wats_v1_7_6_20.session_avg.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Session Avg
gpw_wse_replayfulldepth_wats_v1_7_6_20.session_avg.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.session_avg.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.session_avg.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.session_avg.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.session_avg, range, value, display)

  return offset + length, value
end

-- Session Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.session_date = {}

-- Size: Session Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.session_date.size = 4

-- Display: Session Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.session_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Session Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Session Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.session_date.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.session_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.session_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.session_date, range, value, display)

  return offset + length, value
end

-- Session High
gpw_wse_replayfulldepth_wats_v1_7_6_20.session_high = {}

-- Size: Session High
gpw_wse_replayfulldepth_wats_v1_7_6_20.session_high.size = 8

-- Display: Session High
gpw_wse_replayfulldepth_wats_v1_7_6_20.session_high.display = function(value)
  return "Session High: "..value
end

-- Translate: Session High
gpw_wse_replayfulldepth_wats_v1_7_6_20.session_high.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Session High
gpw_wse_replayfulldepth_wats_v1_7_6_20.session_high.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.session_high.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.session_high.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.session_high.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.session_high, range, value, display)

  return offset + length, value
end

-- Session Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.session_id = {}

-- Size: Session Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.session_id.size = 2

-- Display: Session Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.session_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.session_id, range, value, display)

  return offset + length, value
end

-- Session Low
gpw_wse_replayfulldepth_wats_v1_7_6_20.session_low = {}

-- Size: Session Low
gpw_wse_replayfulldepth_wats_v1_7_6_20.session_low.size = 8

-- Display: Session Low
gpw_wse_replayfulldepth_wats_v1_7_6_20.session_low.display = function(value)
  return "Session Low: "..value
end

-- Translate: Session Low
gpw_wse_replayfulldepth_wats_v1_7_6_20.session_low.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Session Low
gpw_wse_replayfulldepth_wats_v1_7_6_20.session_low.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.session_low.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.session_low.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.session_low.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.session_low, range, value, display)

  return offset + length, value
end

-- Settlement Calendar Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_calendar_id = {}

-- Size: Settlement Calendar Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_calendar_id.size = 4

-- Display: Settlement Calendar Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_calendar_id.display = function(value)
  return "Settlement Calendar Id: "..value
end

-- Dissect: Settlement Calendar Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_calendar_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_calendar_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_calendar_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.settlement_calendar_id, range, value, display)

  return offset + length, value
end

-- Settlement Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_date = {}

-- Size: Settlement Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_date.size = 4

-- Display: Settlement Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Settlement Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Settlement Date
gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_date.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.settlement_date, range, value, display)

  return offset + length, value
end

-- Settlement Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_price = {}

-- Size: Settlement Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_price.size = 8

-- Display: Settlement Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_price.display = function(value)
  return "Settlement Price: "..value
end

-- Translate: Settlement Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Settlement Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_price.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Settlement Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_type = {}

-- Size: Settlement Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_type.size = 1

-- Display: Settlement Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_type.display = function(value)
  if value == 1 then
    return "Settlement Type: Not Applicable (1)"
  end
  if value == 2 then
    return "Settlement Type: Cash Settlement (2)"
  end
  if value == 3 then
    return "Settlement Type: Physical Delivery (3)"
  end

  return "Settlement Type: Unknown("..value..")"
end

-- Dissect: Settlement Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.settlement_type, range, value, display)

  return offset + length, value
end

-- Settlement Value Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_value_price = {}

-- Size: Settlement Value Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_value_price.size = 8

-- Display: Settlement Value Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_value_price.display = function(value)
  return "Settlement Value Price: "..value
end

-- Translate: Settlement Value Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_value_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Settlement Value Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_value_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_value_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_value_price.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_value_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.settlement_value_price, range, value, display)

  return offset + length, value
end

-- Settlement Value Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_value_value = {}

-- Size: Settlement Value Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_value_value.size = 8

-- Display: Settlement Value Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_value_value.display = function(value)
  return "Settlement Value Value: "..value
end

-- Translate: Settlement Value Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_value_value.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Settlement Value Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_value_value.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_value_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_value_value.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_value_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.settlement_value_value, range, value, display)

  return offset + length, value
end

-- Side
gpw_wse_replayfulldepth_wats_v1_7_6_20.side = {}

-- Size: Side
gpw_wse_replayfulldepth_wats_v1_7_6_20.side.size = 1

-- Display: Side
gpw_wse_replayfulldepth_wats_v1_7_6_20.side.display = function(value)
  if value == 1 then
    return "Side: Buy (1)"
  end
  if value == 2 then
    return "Side: Sell (2)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
gpw_wse_replayfulldepth_wats_v1_7_6_20.side.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.side, range, value, display)

  return offset + length, value
end

-- Source Timestamp
gpw_wse_replayfulldepth_wats_v1_7_6_20.source_timestamp = {}

-- Size: Source Timestamp
gpw_wse_replayfulldepth_wats_v1_7_6_20.source_timestamp.size = 8

-- Display: Source Timestamp
gpw_wse_replayfulldepth_wats_v1_7_6_20.source_timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Source Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Source Timestamp
gpw_wse_replayfulldepth_wats_v1_7_6_20.source_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.source_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.source_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.source_timestamp, range, value, display)

  return offset + length, value
end

-- Split
gpw_wse_replayfulldepth_wats_v1_7_6_20.split = {}

-- Size: Split
gpw_wse_replayfulldepth_wats_v1_7_6_20.split.size = 1

-- Display: Split
gpw_wse_replayfulldepth_wats_v1_7_6_20.split.display = function(value)
  return "Split: "..value
end

-- Dissect: Split
gpw_wse_replayfulldepth_wats_v1_7_6_20.split.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.split.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.split.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.split, range, value, display)

  return offset + length, value
end

-- Static Collar Volatility Auction Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.static_collar_volatility_auction_id = {}

-- Size: Static Collar Volatility Auction Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.static_collar_volatility_auction_id.size = 4

-- Display: Static Collar Volatility Auction Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.static_collar_volatility_auction_id.display = function(value)
  return "Static Collar Volatility Auction Id: "..value
end

-- Dissect: Static Collar Volatility Auction Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.static_collar_volatility_auction_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.static_collar_volatility_auction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.static_collar_volatility_auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.static_collar_volatility_auction_id, range, value, display)

  return offset + length, value
end

-- Status
gpw_wse_replayfulldepth_wats_v1_7_6_20.status = {}

-- Size: Status
gpw_wse_replayfulldepth_wats_v1_7_6_20.status.size = 1

-- Display: Status
gpw_wse_replayfulldepth_wats_v1_7_6_20.status.display = function(value)
  if value == 1 then
    return "Status: Active (1)"
  end
  if value == 2 then
    return "Status: Inactive (2)"
  end
  if value == 3 then
    return "Status: Market Operations Suspension (3)"
  end
  if value == 4 then
    return "Status: Outside Collars Static (4)"
  end
  if value == 5 then
    return "Status: Outside Collars Dynamic (5)"
  end
  if value == 6 then
    return "Status: Regulatory Suspension (6)"
  end
  if value == 8 then
    return "Status: Hybrid No Quotes (8)"
  end
  if value == 9 then
    return "Status: Hybrid Knockout (9)"
  end
  if value == 10 then
    return "Status: Hybrid Knockout By Issuer (10)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
gpw_wse_replayfulldepth_wats_v1_7_6_20.status.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.status, range, value, display)

  return offset + length, value
end

-- Stream Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.stream_id = {}

-- Size: Stream Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.stream_id.size = 1

-- Display: Stream Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.stream_id.display = function(value)
  return "Stream Id: "..value
end

-- Dissect: Stream Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.stream_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.stream_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.stream_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.stream_id, range, value, display)

  return offset + length, value
end

-- Stressed Market
gpw_wse_replayfulldepth_wats_v1_7_6_20.stressed_market = {}

-- Size: Stressed Market
gpw_wse_replayfulldepth_wats_v1_7_6_20.stressed_market.size = 1

-- Display: Stressed Market
gpw_wse_replayfulldepth_wats_v1_7_6_20.stressed_market.display = function(value)
  return "Stressed Market: "..value
end

-- Dissect: Stressed Market
gpw_wse_replayfulldepth_wats_v1_7_6_20.stressed_market.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.stressed_market.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.stressed_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.stressed_market, range, value, display)

  return offset + length, value
end

-- Strike Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.strike_price = {}

-- Size: Strike Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.strike_price.size = 8

-- Display: Strike Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.strike_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Strike Price
gpw_wse_replayfulldepth_wats_v1_7_6_20.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.strike_price.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Strike Price Currency
gpw_wse_replayfulldepth_wats_v1_7_6_20.strike_price_currency = {}

-- Size: Strike Price Currency
gpw_wse_replayfulldepth_wats_v1_7_6_20.strike_price_currency.size = 2

-- Display: Strike Price Currency
gpw_wse_replayfulldepth_wats_v1_7_6_20.strike_price_currency.display = function(value)
  if value == 8 then
    return "Strike Price Currency: All (8)"
  end
  if value == 12 then
    return "Strike Price Currency: Dzd (12)"
  end
  if value == 32 then
    return "Strike Price Currency: Ars (32)"
  end
  if value == 36 then
    return "Strike Price Currency: Aud (36)"
  end
  if value == 44 then
    return "Strike Price Currency: Bsd (44)"
  end
  if value == 48 then
    return "Strike Price Currency: Bhd (48)"
  end
  if value == 50 then
    return "Strike Price Currency: Bdt (50)"
  end
  if value == 51 then
    return "Strike Price Currency: Amd (51)"
  end
  if value == 52 then
    return "Strike Price Currency: Bbd (52)"
  end
  if value == 60 then
    return "Strike Price Currency: Bmd (60)"
  end
  if value == 64 then
    return "Strike Price Currency: Btn (64)"
  end
  if value == 68 then
    return "Strike Price Currency: Bob (68)"
  end
  if value == 72 then
    return "Strike Price Currency: Bwp (72)"
  end
  if value == 84 then
    return "Strike Price Currency: Bzd (84)"
  end
  if value == 90 then
    return "Strike Price Currency: Sbd (90)"
  end
  if value == 96 then
    return "Strike Price Currency: Bnd (96)"
  end
  if value == 104 then
    return "Strike Price Currency: Mmk (104)"
  end
  if value == 108 then
    return "Strike Price Currency: Bif (108)"
  end
  if value == 116 then
    return "Strike Price Currency: Khr (116)"
  end
  if value == 124 then
    return "Strike Price Currency: Cad (124)"
  end
  if value == 132 then
    return "Strike Price Currency: Cve (132)"
  end
  if value == 136 then
    return "Strike Price Currency: Kyd (136)"
  end
  if value == 144 then
    return "Strike Price Currency: Lkr (144)"
  end
  if value == 152 then
    return "Strike Price Currency: Clp (152)"
  end
  if value == 156 then
    return "Strike Price Currency: Cny (156)"
  end
  if value == 170 then
    return "Strike Price Currency: Cop (170)"
  end
  if value == 174 then
    return "Strike Price Currency: Kmf (174)"
  end
  if value == 188 then
    return "Strike Price Currency: Crc (188)"
  end
  if value == 191 then
    return "Strike Price Currency: Hrk (191)"
  end
  if value == 192 then
    return "Strike Price Currency: Cup (192)"
  end
  if value == 203 then
    return "Strike Price Currency: Czk (203)"
  end
  if value == 208 then
    return "Strike Price Currency: Dkk (208)"
  end
  if value == 214 then
    return "Strike Price Currency: Dop (214)"
  end
  if value == 222 then
    return "Strike Price Currency: Svc (222)"
  end
  if value == 230 then
    return "Strike Price Currency: Etb (230)"
  end
  if value == 232 then
    return "Strike Price Currency: Ern (232)"
  end
  if value == 238 then
    return "Strike Price Currency: Fkp (238)"
  end
  if value == 242 then
    return "Strike Price Currency: Fjd (242)"
  end
  if value == 262 then
    return "Strike Price Currency: Djf (262)"
  end
  if value == 270 then
    return "Strike Price Currency: Gmd (270)"
  end
  if value == 292 then
    return "Strike Price Currency: Gip (292)"
  end
  if value == 320 then
    return "Strike Price Currency: Gtq (320)"
  end
  if value == 324 then
    return "Strike Price Currency: Gnf (324)"
  end
  if value == 328 then
    return "Strike Price Currency: Gyd (328)"
  end
  if value == 332 then
    return "Strike Price Currency: Htg (332)"
  end
  if value == 340 then
    return "Strike Price Currency: Hnl (340)"
  end
  if value == 344 then
    return "Strike Price Currency: Hkd (344)"
  end
  if value == 348 then
    return "Strike Price Currency: Huf (348)"
  end
  if value == 352 then
    return "Strike Price Currency: Isk (352)"
  end
  if value == 356 then
    return "Strike Price Currency: Inr (356)"
  end
  if value == 360 then
    return "Strike Price Currency: Idr (360)"
  end
  if value == 364 then
    return "Strike Price Currency: Irr (364)"
  end
  if value == 368 then
    return "Strike Price Currency: Iqd (368)"
  end
  if value == 376 then
    return "Strike Price Currency: Ils (376)"
  end
  if value == 388 then
    return "Strike Price Currency: Jmd (388)"
  end
  if value == 392 then
    return "Strike Price Currency: Jpy (392)"
  end
  if value == 398 then
    return "Strike Price Currency: Kzt (398)"
  end
  if value == 400 then
    return "Strike Price Currency: Jod (400)"
  end
  if value == 404 then
    return "Strike Price Currency: Kes (404)"
  end
  if value == 408 then
    return "Strike Price Currency: Kpw (408)"
  end
  if value == 410 then
    return "Strike Price Currency: Krw (410)"
  end
  if value == 414 then
    return "Strike Price Currency: Kwd (414)"
  end
  if value == 417 then
    return "Strike Price Currency: Kgs (417)"
  end
  if value == 418 then
    return "Strike Price Currency: Lak (418)"
  end
  if value == 422 then
    return "Strike Price Currency: Lbp (422)"
  end
  if value == 426 then
    return "Strike Price Currency: Lsl (426)"
  end
  if value == 430 then
    return "Strike Price Currency: Lrd (430)"
  end
  if value == 434 then
    return "Strike Price Currency: Lyd (434)"
  end
  if value == 446 then
    return "Strike Price Currency: Mop (446)"
  end
  if value == 454 then
    return "Strike Price Currency: Mwk (454)"
  end
  if value == 458 then
    return "Strike Price Currency: Myr (458)"
  end
  if value == 462 then
    return "Strike Price Currency: Mvr (462)"
  end
  if value == 480 then
    return "Strike Price Currency: Mur (480)"
  end
  if value == 484 then
    return "Strike Price Currency: Mxn (484)"
  end
  if value == 496 then
    return "Strike Price Currency: Mnt (496)"
  end
  if value == 498 then
    return "Strike Price Currency: Mdl (498)"
  end
  if value == 504 then
    return "Strike Price Currency: Mad (504)"
  end
  if value == 512 then
    return "Strike Price Currency: Omr (512)"
  end
  if value == 516 then
    return "Strike Price Currency: Nad (516)"
  end
  if value == 524 then
    return "Strike Price Currency: Npr (524)"
  end
  if value == 532 then
    return "Strike Price Currency: Ang (532)"
  end
  if value == 533 then
    return "Strike Price Currency: Awg (533)"
  end
  if value == 548 then
    return "Strike Price Currency: Vuv (548)"
  end
  if value == 554 then
    return "Strike Price Currency: Nzd (554)"
  end
  if value == 558 then
    return "Strike Price Currency: Nio (558)"
  end
  if value == 566 then
    return "Strike Price Currency: Ngn (566)"
  end
  if value == 578 then
    return "Strike Price Currency: Nok (578)"
  end
  if value == 586 then
    return "Strike Price Currency: Pkr (586)"
  end
  if value == 590 then
    return "Strike Price Currency: Pab (590)"
  end
  if value == 598 then
    return "Strike Price Currency: Pgk (598)"
  end
  if value == 600 then
    return "Strike Price Currency: Pyg (600)"
  end
  if value == 604 then
    return "Strike Price Currency: Pen (604)"
  end
  if value == 608 then
    return "Strike Price Currency: Php (608)"
  end
  if value == 634 then
    return "Strike Price Currency: Qar (634)"
  end
  if value == 643 then
    return "Strike Price Currency: Rub (643)"
  end
  if value == 646 then
    return "Strike Price Currency: Rwf (646)"
  end
  if value == 654 then
    return "Strike Price Currency: Shp (654)"
  end
  if value == 682 then
    return "Strike Price Currency: Sar (682)"
  end
  if value == 690 then
    return "Strike Price Currency: Scr (690)"
  end
  if value == 702 then
    return "Strike Price Currency: Sgd (702)"
  end
  if value == 704 then
    return "Strike Price Currency: Vnd (704)"
  end
  if value == 706 then
    return "Strike Price Currency: Sos (706)"
  end
  if value == 710 then
    return "Strike Price Currency: Zar (710)"
  end
  if value == 728 then
    return "Strike Price Currency: Ssp (728)"
  end
  if value == 748 then
    return "Strike Price Currency: Szl (748)"
  end
  if value == 752 then
    return "Strike Price Currency: Sek (752)"
  end
  if value == 756 then
    return "Strike Price Currency: Chf (756)"
  end
  if value == 760 then
    return "Strike Price Currency: Syp (760)"
  end
  if value == 764 then
    return "Strike Price Currency: Thb (764)"
  end
  if value == 776 then
    return "Strike Price Currency: Top (776)"
  end
  if value == 780 then
    return "Strike Price Currency: Ttd (780)"
  end
  if value == 784 then
    return "Strike Price Currency: Aed (784)"
  end
  if value == 788 then
    return "Strike Price Currency: Tnd (788)"
  end
  if value == 800 then
    return "Strike Price Currency: Ugx (800)"
  end
  if value == 807 then
    return "Strike Price Currency: Mkd (807)"
  end
  if value == 818 then
    return "Strike Price Currency: Egp (818)"
  end
  if value == 826 then
    return "Strike Price Currency: Gbp (826)"
  end
  if value == 834 then
    return "Strike Price Currency: Tzs (834)"
  end
  if value == 840 then
    return "Strike Price Currency: Usd (840)"
  end
  if value == 858 then
    return "Strike Price Currency: Uyu (858)"
  end
  if value == 860 then
    return "Strike Price Currency: Uzs (860)"
  end
  if value == 882 then
    return "Strike Price Currency: Wst (882)"
  end
  if value == 886 then
    return "Strike Price Currency: Yer (886)"
  end
  if value == 901 then
    return "Strike Price Currency: Twd (901)"
  end
  if value == 925 then
    return "Strike Price Currency: Sle (925)"
  end
  if value == 926 then
    return "Strike Price Currency: Ved (926)"
  end
  if value == 927 then
    return "Strike Price Currency: Uyw (927)"
  end
  if value == 928 then
    return "Strike Price Currency: Ves (928)"
  end
  if value == 929 then
    return "Strike Price Currency: Mru (929)"
  end
  if value == 930 then
    return "Strike Price Currency: Stn (930)"
  end
  if value == 931 then
    return "Strike Price Currency: Cuc (931)"
  end
  if value == 932 then
    return "Strike Price Currency: Zwl (932)"
  end
  if value == 933 then
    return "Strike Price Currency: Byn (933)"
  end
  if value == 934 then
    return "Strike Price Currency: Tmt (934)"
  end
  if value == 936 then
    return "Strike Price Currency: Ghs (936)"
  end
  if value == 938 then
    return "Strike Price Currency: Sdg (938)"
  end
  if value == 940 then
    return "Strike Price Currency: Uyi (940)"
  end
  if value == 941 then
    return "Strike Price Currency: Rsd (941)"
  end
  if value == 943 then
    return "Strike Price Currency: Mzn (943)"
  end
  if value == 944 then
    return "Strike Price Currency: Azn (944)"
  end
  if value == 946 then
    return "Strike Price Currency: Ron (946)"
  end
  if value == 947 then
    return "Strike Price Currency: Che (947)"
  end
  if value == 948 then
    return "Strike Price Currency: Chw (948)"
  end
  if value == 949 then
    return "Strike Price Currency: Try (949)"
  end
  if value == 950 then
    return "Strike Price Currency: Xaf (950)"
  end
  if value == 951 then
    return "Strike Price Currency: Xcd (951)"
  end
  if value == 952 then
    return "Strike Price Currency: Xof (952)"
  end
  if value == 953 then
    return "Strike Price Currency: Xpf (953)"
  end
  if value == 955 then
    return "Strike Price Currency: Xba (955)"
  end
  if value == 956 then
    return "Strike Price Currency: Xbb (956)"
  end
  if value == 957 then
    return "Strike Price Currency: Xbc (957)"
  end
  if value == 958 then
    return "Strike Price Currency: Xbd (958)"
  end
  if value == 959 then
    return "Strike Price Currency: Xau (959)"
  end
  if value == 960 then
    return "Strike Price Currency: Xdr (960)"
  end
  if value == 961 then
    return "Strike Price Currency: Xag (961)"
  end
  if value == 962 then
    return "Strike Price Currency: Xpt (962)"
  end
  if value == 963 then
    return "Strike Price Currency: Xts (963)"
  end
  if value == 964 then
    return "Strike Price Currency: Xpd (964)"
  end
  if value == 965 then
    return "Strike Price Currency: Xua (965)"
  end
  if value == 967 then
    return "Strike Price Currency: Zmw (967)"
  end
  if value == 968 then
    return "Strike Price Currency: Srd (968)"
  end
  if value == 969 then
    return "Strike Price Currency: Mga (969)"
  end
  if value == 970 then
    return "Strike Price Currency: Cou (970)"
  end
  if value == 971 then
    return "Strike Price Currency: Afn (971)"
  end
  if value == 972 then
    return "Strike Price Currency: Tjs (972)"
  end
  if value == 973 then
    return "Strike Price Currency: Aoa (973)"
  end
  if value == 975 then
    return "Strike Price Currency: Bgn (975)"
  end
  if value == 976 then
    return "Strike Price Currency: Cdf (976)"
  end
  if value == 977 then
    return "Strike Price Currency: Bam (977)"
  end
  if value == 978 then
    return "Strike Price Currency: Eur (978)"
  end
  if value == 979 then
    return "Strike Price Currency: Mxv (979)"
  end
  if value == 980 then
    return "Strike Price Currency: Uah (980)"
  end
  if value == 981 then
    return "Strike Price Currency: Gel (981)"
  end
  if value == 984 then
    return "Strike Price Currency: Bov (984)"
  end
  if value == 985 then
    return "Strike Price Currency: Pln (985)"
  end
  if value == 986 then
    return "Strike Price Currency: Brl (986)"
  end
  if value == 990 then
    return "Strike Price Currency: Clf (990)"
  end
  if value == 994 then
    return "Strike Price Currency: Xsu (994)"
  end
  if value == 997 then
    return "Strike Price Currency: Usn (997)"
  end
  if value == 999 then
    return "Strike Price Currency: Xxx (999)"
  end

  return "Strike Price Currency: Unknown("..value..")"
end

-- Dissect: Strike Price Currency
gpw_wse_replayfulldepth_wats_v1_7_6_20.strike_price_currency.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.strike_price_currency.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.strike_price_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.strike_price_currency, range, value, display)

  return offset + length, value
end

-- Subscription Right
gpw_wse_replayfulldepth_wats_v1_7_6_20.subscription_right = {}

-- Size: Subscription Right
gpw_wse_replayfulldepth_wats_v1_7_6_20.subscription_right.size = 1

-- Display: Subscription Right
gpw_wse_replayfulldepth_wats_v1_7_6_20.subscription_right.display = function(value)
  return "Subscription Right: "..value
end

-- Dissect: Subscription Right
gpw_wse_replayfulldepth_wats_v1_7_6_20.subscription_right.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.subscription_right.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.subscription_right.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.subscription_right, range, value, display)

  return offset + length, value
end

-- Suspended
gpw_wse_replayfulldepth_wats_v1_7_6_20.suspended = {}

-- Size: Suspended
gpw_wse_replayfulldepth_wats_v1_7_6_20.suspended.size = 1

-- Display: Suspended
gpw_wse_replayfulldepth_wats_v1_7_6_20.suspended.display = function(value)
  return "Suspended: "..value
end

-- Dissect: Suspended
gpw_wse_replayfulldepth_wats_v1_7_6_20.suspended.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.suspended.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.suspended.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.suspended, range, value, display)

  return offset + length, value
end

-- Text
gpw_wse_replayfulldepth_wats_v1_7_6_20.text = {}

-- Size: Text
gpw_wse_replayfulldepth_wats_v1_7_6_20.text.size = 800

-- Display: Text
gpw_wse_replayfulldepth_wats_v1_7_6_20.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
gpw_wse_replayfulldepth_wats_v1_7_6_20.text.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.text, range, value, display)

  return offset + length, value
end

-- Theta
gpw_wse_replayfulldepth_wats_v1_7_6_20.theta = {}

-- Size: Theta
gpw_wse_replayfulldepth_wats_v1_7_6_20.theta.size = 8

-- Display: Theta
gpw_wse_replayfulldepth_wats_v1_7_6_20.theta.display = function(value)
  return "Theta: "..value
end

-- Translate: Theta
gpw_wse_replayfulldepth_wats_v1_7_6_20.theta.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Theta
gpw_wse_replayfulldepth_wats_v1_7_6_20.theta.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.theta.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.theta.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.theta.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.theta, range, value, display)

  return offset + length, value
end

-- Threshold Max
gpw_wse_replayfulldepth_wats_v1_7_6_20.threshold_max = {}

-- Size: Threshold Max
gpw_wse_replayfulldepth_wats_v1_7_6_20.threshold_max.size = 8

-- Display: Threshold Max
gpw_wse_replayfulldepth_wats_v1_7_6_20.threshold_max.display = function(value)
  return "Threshold Max: "..value
end

-- Translate: Threshold Max
gpw_wse_replayfulldepth_wats_v1_7_6_20.threshold_max.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Threshold Max
gpw_wse_replayfulldepth_wats_v1_7_6_20.threshold_max.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.threshold_max.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.threshold_max.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.threshold_max.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.threshold_max, range, value, display)

  return offset + length, value
end

-- Threshold Min
gpw_wse_replayfulldepth_wats_v1_7_6_20.threshold_min = {}

-- Size: Threshold Min
gpw_wse_replayfulldepth_wats_v1_7_6_20.threshold_min.size = 8

-- Display: Threshold Min
gpw_wse_replayfulldepth_wats_v1_7_6_20.threshold_min.display = function(value)
  return "Threshold Min: "..value
end

-- Translate: Threshold Min
gpw_wse_replayfulldepth_wats_v1_7_6_20.threshold_min.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Threshold Min
gpw_wse_replayfulldepth_wats_v1_7_6_20.threshold_min.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.threshold_min.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.threshold_min.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.threshold_min.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.threshold_min, range, value, display)

  return offset + length, value
end

-- Tick Size
gpw_wse_replayfulldepth_wats_v1_7_6_20.tick_size = {}

-- Size: Tick Size
gpw_wse_replayfulldepth_wats_v1_7_6_20.tick_size.size = 8

-- Display: Tick Size
gpw_wse_replayfulldepth_wats_v1_7_6_20.tick_size.display = function(value)
  return "Tick Size: "..value
end

-- Translate: Tick Size
gpw_wse_replayfulldepth_wats_v1_7_6_20.tick_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Tick Size
gpw_wse_replayfulldepth_wats_v1_7_6_20.tick_size.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.tick_size.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.tick_size.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.tick_size, range, value, display)

  return offset + length, value
end

-- Tick Table Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.tick_table_id = {}

-- Size: Tick Table Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.tick_table_id.size = 4

-- Display: Tick Table Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.tick_table_id.display = function(value)
  return "Tick Table Id: "..value
end

-- Dissect: Tick Table Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.tick_table_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.tick_table_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.tick_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.tick_table_id, range, value, display)

  return offset + length, value
end

-- Timestamp
gpw_wse_replayfulldepth_wats_v1_7_6_20.timestamp = {}

-- Size: Timestamp
gpw_wse_replayfulldepth_wats_v1_7_6_20.timestamp.size = 8

-- Display: Timestamp
gpw_wse_replayfulldepth_wats_v1_7_6_20.timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
gpw_wse_replayfulldepth_wats_v1_7_6_20.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Title
gpw_wse_replayfulldepth_wats_v1_7_6_20.title = {}

-- Size: Title
gpw_wse_replayfulldepth_wats_v1_7_6_20.title.size = 80

-- Display: Title
gpw_wse_replayfulldepth_wats_v1_7_6_20.title.display = function(value)
  return "Title: "..value
end

-- Dissect: Title
gpw_wse_replayfulldepth_wats_v1_7_6_20.title.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.title.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.title.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.title, range, value, display)

  return offset + length, value
end

-- Total
gpw_wse_replayfulldepth_wats_v1_7_6_20.total = {}

-- Size: Total
gpw_wse_replayfulldepth_wats_v1_7_6_20.total.size = 1

-- Display: Total
gpw_wse_replayfulldepth_wats_v1_7_6_20.total.display = function(value)
  return "Total: "..value
end

-- Dissect: Total
gpw_wse_replayfulldepth_wats_v1_7_6_20.total.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.total.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.total.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.total, range, value, display)

  return offset + length, value
end

-- Total Buy Quantity At Imp
gpw_wse_replayfulldepth_wats_v1_7_6_20.total_buy_quantity_at_imp = {}

-- Size: Total Buy Quantity At Imp
gpw_wse_replayfulldepth_wats_v1_7_6_20.total_buy_quantity_at_imp.size = 8

-- Display: Total Buy Quantity At Imp
gpw_wse_replayfulldepth_wats_v1_7_6_20.total_buy_quantity_at_imp.display = function(value)
  return "Total Buy Quantity At Imp: "..value
end

-- Dissect: Total Buy Quantity At Imp
gpw_wse_replayfulldepth_wats_v1_7_6_20.total_buy_quantity_at_imp.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.total_buy_quantity_at_imp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.total_buy_quantity_at_imp.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.total_buy_quantity_at_imp, range, value, display)

  return offset + length, value
end

-- Total Sell Quantity At Imp
gpw_wse_replayfulldepth_wats_v1_7_6_20.total_sell_quantity_at_imp = {}

-- Size: Total Sell Quantity At Imp
gpw_wse_replayfulldepth_wats_v1_7_6_20.total_sell_quantity_at_imp.size = 8

-- Display: Total Sell Quantity At Imp
gpw_wse_replayfulldepth_wats_v1_7_6_20.total_sell_quantity_at_imp.display = function(value)
  return "Total Sell Quantity At Imp: "..value
end

-- Dissect: Total Sell Quantity At Imp
gpw_wse_replayfulldepth_wats_v1_7_6_20.total_sell_quantity_at_imp.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.total_sell_quantity_at_imp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.total_sell_quantity_at_imp.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.total_sell_quantity_at_imp, range, value, display)

  return offset + length, value
end

-- Total Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.total_value = {}

-- Size: Total Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.total_value.size = 8

-- Display: Total Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.total_value.display = function(value)
  return "Total Value: "..value
end

-- Translate: Total Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.total_value.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Total Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.total_value.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.total_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.total_value.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.total_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.total_value, range, value, display)

  return offset + length, value
end

-- Total Volume
gpw_wse_replayfulldepth_wats_v1_7_6_20.total_volume = {}

-- Size: Total Volume
gpw_wse_replayfulldepth_wats_v1_7_6_20.total_volume.size = 8

-- Display: Total Volume
gpw_wse_replayfulldepth_wats_v1_7_6_20.total_volume.display = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
gpw_wse_replayfulldepth_wats_v1_7_6_20.total_volume.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.total_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Trade Dynamic Collar Table Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_dynamic_collar_table_id = {}

-- Size: Trade Dynamic Collar Table Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_dynamic_collar_table_id.size = 4

-- Display: Trade Dynamic Collar Table Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_dynamic_collar_table_id.display = function(value)
  return "Trade Dynamic Collar Table Id: "..value
end

-- Dissect: Trade Dynamic Collar Table Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_dynamic_collar_table_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_dynamic_collar_table_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_dynamic_collar_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trade_dynamic_collar_table_id, range, value, display)

  return offset + length, value
end

-- Trade Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_id = {}

-- Size: Trade Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_id.size = 4

-- Display: Trade Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Static Collar Table Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_static_collar_table_id = {}

-- Size: Trade Static Collar Table Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_static_collar_table_id.size = 4

-- Display: Trade Static Collar Table Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_static_collar_table_id.display = function(value)
  return "Trade Static Collar Table Id: "..value
end

-- Dissect: Trade Static Collar Table Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_static_collar_table_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_static_collar_table_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_static_collar_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trade_static_collar_table_id, range, value, display)

  return offset + length, value
end

-- Trade To Be Cleared
gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_to_be_cleared = {}

-- Size: Trade To Be Cleared
gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_to_be_cleared.size = 1

-- Display: Trade To Be Cleared
gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_to_be_cleared.display = function(value)
  return "Trade To Be Cleared: "..value
end

-- Dissect: Trade To Be Cleared
gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_to_be_cleared.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_to_be_cleared.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_to_be_cleared.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trade_to_be_cleared, range, value, display)

  return offset + length, value
end

-- Trading Currency
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_currency = {}

-- Size: Trading Currency
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_currency.size = 2

-- Display: Trading Currency
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_currency.display = function(value)
  if value == 8 then
    return "Trading Currency: All (8)"
  end
  if value == 12 then
    return "Trading Currency: Dzd (12)"
  end
  if value == 32 then
    return "Trading Currency: Ars (32)"
  end
  if value == 36 then
    return "Trading Currency: Aud (36)"
  end
  if value == 44 then
    return "Trading Currency: Bsd (44)"
  end
  if value == 48 then
    return "Trading Currency: Bhd (48)"
  end
  if value == 50 then
    return "Trading Currency: Bdt (50)"
  end
  if value == 51 then
    return "Trading Currency: Amd (51)"
  end
  if value == 52 then
    return "Trading Currency: Bbd (52)"
  end
  if value == 60 then
    return "Trading Currency: Bmd (60)"
  end
  if value == 64 then
    return "Trading Currency: Btn (64)"
  end
  if value == 68 then
    return "Trading Currency: Bob (68)"
  end
  if value == 72 then
    return "Trading Currency: Bwp (72)"
  end
  if value == 84 then
    return "Trading Currency: Bzd (84)"
  end
  if value == 90 then
    return "Trading Currency: Sbd (90)"
  end
  if value == 96 then
    return "Trading Currency: Bnd (96)"
  end
  if value == 104 then
    return "Trading Currency: Mmk (104)"
  end
  if value == 108 then
    return "Trading Currency: Bif (108)"
  end
  if value == 116 then
    return "Trading Currency: Khr (116)"
  end
  if value == 124 then
    return "Trading Currency: Cad (124)"
  end
  if value == 132 then
    return "Trading Currency: Cve (132)"
  end
  if value == 136 then
    return "Trading Currency: Kyd (136)"
  end
  if value == 144 then
    return "Trading Currency: Lkr (144)"
  end
  if value == 152 then
    return "Trading Currency: Clp (152)"
  end
  if value == 156 then
    return "Trading Currency: Cny (156)"
  end
  if value == 170 then
    return "Trading Currency: Cop (170)"
  end
  if value == 174 then
    return "Trading Currency: Kmf (174)"
  end
  if value == 188 then
    return "Trading Currency: Crc (188)"
  end
  if value == 191 then
    return "Trading Currency: Hrk (191)"
  end
  if value == 192 then
    return "Trading Currency: Cup (192)"
  end
  if value == 203 then
    return "Trading Currency: Czk (203)"
  end
  if value == 208 then
    return "Trading Currency: Dkk (208)"
  end
  if value == 214 then
    return "Trading Currency: Dop (214)"
  end
  if value == 222 then
    return "Trading Currency: Svc (222)"
  end
  if value == 230 then
    return "Trading Currency: Etb (230)"
  end
  if value == 232 then
    return "Trading Currency: Ern (232)"
  end
  if value == 238 then
    return "Trading Currency: Fkp (238)"
  end
  if value == 242 then
    return "Trading Currency: Fjd (242)"
  end
  if value == 262 then
    return "Trading Currency: Djf (262)"
  end
  if value == 270 then
    return "Trading Currency: Gmd (270)"
  end
  if value == 292 then
    return "Trading Currency: Gip (292)"
  end
  if value == 320 then
    return "Trading Currency: Gtq (320)"
  end
  if value == 324 then
    return "Trading Currency: Gnf (324)"
  end
  if value == 328 then
    return "Trading Currency: Gyd (328)"
  end
  if value == 332 then
    return "Trading Currency: Htg (332)"
  end
  if value == 340 then
    return "Trading Currency: Hnl (340)"
  end
  if value == 344 then
    return "Trading Currency: Hkd (344)"
  end
  if value == 348 then
    return "Trading Currency: Huf (348)"
  end
  if value == 352 then
    return "Trading Currency: Isk (352)"
  end
  if value == 356 then
    return "Trading Currency: Inr (356)"
  end
  if value == 360 then
    return "Trading Currency: Idr (360)"
  end
  if value == 364 then
    return "Trading Currency: Irr (364)"
  end
  if value == 368 then
    return "Trading Currency: Iqd (368)"
  end
  if value == 376 then
    return "Trading Currency: Ils (376)"
  end
  if value == 388 then
    return "Trading Currency: Jmd (388)"
  end
  if value == 392 then
    return "Trading Currency: Jpy (392)"
  end
  if value == 398 then
    return "Trading Currency: Kzt (398)"
  end
  if value == 400 then
    return "Trading Currency: Jod (400)"
  end
  if value == 404 then
    return "Trading Currency: Kes (404)"
  end
  if value == 408 then
    return "Trading Currency: Kpw (408)"
  end
  if value == 410 then
    return "Trading Currency: Krw (410)"
  end
  if value == 414 then
    return "Trading Currency: Kwd (414)"
  end
  if value == 417 then
    return "Trading Currency: Kgs (417)"
  end
  if value == 418 then
    return "Trading Currency: Lak (418)"
  end
  if value == 422 then
    return "Trading Currency: Lbp (422)"
  end
  if value == 426 then
    return "Trading Currency: Lsl (426)"
  end
  if value == 430 then
    return "Trading Currency: Lrd (430)"
  end
  if value == 434 then
    return "Trading Currency: Lyd (434)"
  end
  if value == 446 then
    return "Trading Currency: Mop (446)"
  end
  if value == 454 then
    return "Trading Currency: Mwk (454)"
  end
  if value == 458 then
    return "Trading Currency: Myr (458)"
  end
  if value == 462 then
    return "Trading Currency: Mvr (462)"
  end
  if value == 480 then
    return "Trading Currency: Mur (480)"
  end
  if value == 484 then
    return "Trading Currency: Mxn (484)"
  end
  if value == 496 then
    return "Trading Currency: Mnt (496)"
  end
  if value == 498 then
    return "Trading Currency: Mdl (498)"
  end
  if value == 504 then
    return "Trading Currency: Mad (504)"
  end
  if value == 512 then
    return "Trading Currency: Omr (512)"
  end
  if value == 516 then
    return "Trading Currency: Nad (516)"
  end
  if value == 524 then
    return "Trading Currency: Npr (524)"
  end
  if value == 532 then
    return "Trading Currency: Ang (532)"
  end
  if value == 533 then
    return "Trading Currency: Awg (533)"
  end
  if value == 548 then
    return "Trading Currency: Vuv (548)"
  end
  if value == 554 then
    return "Trading Currency: Nzd (554)"
  end
  if value == 558 then
    return "Trading Currency: Nio (558)"
  end
  if value == 566 then
    return "Trading Currency: Ngn (566)"
  end
  if value == 578 then
    return "Trading Currency: Nok (578)"
  end
  if value == 586 then
    return "Trading Currency: Pkr (586)"
  end
  if value == 590 then
    return "Trading Currency: Pab (590)"
  end
  if value == 598 then
    return "Trading Currency: Pgk (598)"
  end
  if value == 600 then
    return "Trading Currency: Pyg (600)"
  end
  if value == 604 then
    return "Trading Currency: Pen (604)"
  end
  if value == 608 then
    return "Trading Currency: Php (608)"
  end
  if value == 634 then
    return "Trading Currency: Qar (634)"
  end
  if value == 643 then
    return "Trading Currency: Rub (643)"
  end
  if value == 646 then
    return "Trading Currency: Rwf (646)"
  end
  if value == 654 then
    return "Trading Currency: Shp (654)"
  end
  if value == 682 then
    return "Trading Currency: Sar (682)"
  end
  if value == 690 then
    return "Trading Currency: Scr (690)"
  end
  if value == 702 then
    return "Trading Currency: Sgd (702)"
  end
  if value == 704 then
    return "Trading Currency: Vnd (704)"
  end
  if value == 706 then
    return "Trading Currency: Sos (706)"
  end
  if value == 710 then
    return "Trading Currency: Zar (710)"
  end
  if value == 728 then
    return "Trading Currency: Ssp (728)"
  end
  if value == 748 then
    return "Trading Currency: Szl (748)"
  end
  if value == 752 then
    return "Trading Currency: Sek (752)"
  end
  if value == 756 then
    return "Trading Currency: Chf (756)"
  end
  if value == 760 then
    return "Trading Currency: Syp (760)"
  end
  if value == 764 then
    return "Trading Currency: Thb (764)"
  end
  if value == 776 then
    return "Trading Currency: Top (776)"
  end
  if value == 780 then
    return "Trading Currency: Ttd (780)"
  end
  if value == 784 then
    return "Trading Currency: Aed (784)"
  end
  if value == 788 then
    return "Trading Currency: Tnd (788)"
  end
  if value == 800 then
    return "Trading Currency: Ugx (800)"
  end
  if value == 807 then
    return "Trading Currency: Mkd (807)"
  end
  if value == 818 then
    return "Trading Currency: Egp (818)"
  end
  if value == 826 then
    return "Trading Currency: Gbp (826)"
  end
  if value == 834 then
    return "Trading Currency: Tzs (834)"
  end
  if value == 840 then
    return "Trading Currency: Usd (840)"
  end
  if value == 858 then
    return "Trading Currency: Uyu (858)"
  end
  if value == 860 then
    return "Trading Currency: Uzs (860)"
  end
  if value == 882 then
    return "Trading Currency: Wst (882)"
  end
  if value == 886 then
    return "Trading Currency: Yer (886)"
  end
  if value == 901 then
    return "Trading Currency: Twd (901)"
  end
  if value == 925 then
    return "Trading Currency: Sle (925)"
  end
  if value == 926 then
    return "Trading Currency: Ved (926)"
  end
  if value == 927 then
    return "Trading Currency: Uyw (927)"
  end
  if value == 928 then
    return "Trading Currency: Ves (928)"
  end
  if value == 929 then
    return "Trading Currency: Mru (929)"
  end
  if value == 930 then
    return "Trading Currency: Stn (930)"
  end
  if value == 931 then
    return "Trading Currency: Cuc (931)"
  end
  if value == 932 then
    return "Trading Currency: Zwl (932)"
  end
  if value == 933 then
    return "Trading Currency: Byn (933)"
  end
  if value == 934 then
    return "Trading Currency: Tmt (934)"
  end
  if value == 936 then
    return "Trading Currency: Ghs (936)"
  end
  if value == 938 then
    return "Trading Currency: Sdg (938)"
  end
  if value == 940 then
    return "Trading Currency: Uyi (940)"
  end
  if value == 941 then
    return "Trading Currency: Rsd (941)"
  end
  if value == 943 then
    return "Trading Currency: Mzn (943)"
  end
  if value == 944 then
    return "Trading Currency: Azn (944)"
  end
  if value == 946 then
    return "Trading Currency: Ron (946)"
  end
  if value == 947 then
    return "Trading Currency: Che (947)"
  end
  if value == 948 then
    return "Trading Currency: Chw (948)"
  end
  if value == 949 then
    return "Trading Currency: Try (949)"
  end
  if value == 950 then
    return "Trading Currency: Xaf (950)"
  end
  if value == 951 then
    return "Trading Currency: Xcd (951)"
  end
  if value == 952 then
    return "Trading Currency: Xof (952)"
  end
  if value == 953 then
    return "Trading Currency: Xpf (953)"
  end
  if value == 955 then
    return "Trading Currency: Xba (955)"
  end
  if value == 956 then
    return "Trading Currency: Xbb (956)"
  end
  if value == 957 then
    return "Trading Currency: Xbc (957)"
  end
  if value == 958 then
    return "Trading Currency: Xbd (958)"
  end
  if value == 959 then
    return "Trading Currency: Xau (959)"
  end
  if value == 960 then
    return "Trading Currency: Xdr (960)"
  end
  if value == 961 then
    return "Trading Currency: Xag (961)"
  end
  if value == 962 then
    return "Trading Currency: Xpt (962)"
  end
  if value == 963 then
    return "Trading Currency: Xts (963)"
  end
  if value == 964 then
    return "Trading Currency: Xpd (964)"
  end
  if value == 965 then
    return "Trading Currency: Xua (965)"
  end
  if value == 967 then
    return "Trading Currency: Zmw (967)"
  end
  if value == 968 then
    return "Trading Currency: Srd (968)"
  end
  if value == 969 then
    return "Trading Currency: Mga (969)"
  end
  if value == 970 then
    return "Trading Currency: Cou (970)"
  end
  if value == 971 then
    return "Trading Currency: Afn (971)"
  end
  if value == 972 then
    return "Trading Currency: Tjs (972)"
  end
  if value == 973 then
    return "Trading Currency: Aoa (973)"
  end
  if value == 975 then
    return "Trading Currency: Bgn (975)"
  end
  if value == 976 then
    return "Trading Currency: Cdf (976)"
  end
  if value == 977 then
    return "Trading Currency: Bam (977)"
  end
  if value == 978 then
    return "Trading Currency: Eur (978)"
  end
  if value == 979 then
    return "Trading Currency: Mxv (979)"
  end
  if value == 980 then
    return "Trading Currency: Uah (980)"
  end
  if value == 981 then
    return "Trading Currency: Gel (981)"
  end
  if value == 984 then
    return "Trading Currency: Bov (984)"
  end
  if value == 985 then
    return "Trading Currency: Pln (985)"
  end
  if value == 986 then
    return "Trading Currency: Brl (986)"
  end
  if value == 990 then
    return "Trading Currency: Clf (990)"
  end
  if value == 994 then
    return "Trading Currency: Xsu (994)"
  end
  if value == 997 then
    return "Trading Currency: Usn (997)"
  end
  if value == 999 then
    return "Trading Currency: Xxx (999)"
  end

  return "Trading Currency: Unknown("..value..")"
end

-- Dissect: Trading Currency
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_currency.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_currency.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trading_currency, range, value, display)

  return offset + length, value
end

-- Trading Phase Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_id = {}

-- Size: Trading Phase Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_id.size = 4

-- Display: Trading Phase Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_id.display = function(value)
  return "Trading Phase Id: "..value
end

-- Dissect: Trading Phase Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trading_phase_id, range, value, display)

  return offset + length, value
end

-- Trading Phase Max Block Settlement Cycle
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_max_block_settlement_cycle = {}

-- Size: Trading Phase Max Block Settlement Cycle
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_max_block_settlement_cycle.size = 1

-- Display: Trading Phase Max Block Settlement Cycle
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_max_block_settlement_cycle.display = function(value)
  return "Trading Phase Max Block Settlement Cycle: "..value
end

-- Dissect: Trading Phase Max Block Settlement Cycle
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_max_block_settlement_cycle.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_max_block_settlement_cycle.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_max_block_settlement_cycle.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trading_phase_max_block_settlement_cycle, range, value, display)

  return offset + length, value
end

-- Trading Phase Settlement Cycle
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_settlement_cycle = {}

-- Size: Trading Phase Settlement Cycle
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_settlement_cycle.size = 1

-- Display: Trading Phase Settlement Cycle
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_settlement_cycle.display = function(value)
  return "Trading Phase Settlement Cycle: "..value
end

-- Dissect: Trading Phase Settlement Cycle
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_settlement_cycle.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_settlement_cycle.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_settlement_cycle.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trading_phase_settlement_cycle, range, value, display)

  return offset + length, value
end

-- Trading Phase Start Time
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_start_time = {}

-- Size: Trading Phase Start Time
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_start_time.size = 8

-- Display: Trading Phase Start Time
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_start_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Trading Phase Start Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trading Phase Start Time
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_start_time.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_start_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_start_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trading_phase_start_time, range, value, display)

  return offset + length, value
end

-- Trading Phase Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_type = {}

-- Size: Trading Phase Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_type.size = 1

-- Display: Trading Phase Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_type.display = function(value)
  if value == 1 then
    return "Trading Phase Type: Continuous Price Time (1)"
  end
  if value == 2 then
    return "Trading Phase Type: Continuous Ref Price Time (2)"
  end
  if value == 3 then
    return "Trading Phase Type: Continuous Last Auction Time (3)"
  end
  if value == 4 then
    return "Trading Phase Type: Auction Opening (4)"
  end
  if value == 5 then
    return "Trading Phase Type: Block Exact Matching (5)"
  end
  if value == 6 then
    return "Trading Phase Type: No Trading Closed (6)"
  end
  if value == 7 then
    return "Trading Phase Type: Uncrossing (7)"
  end
  if value == 8 then
    return "Trading Phase Type: Auction Closing (8)"
  end
  if value == 9 then
    return "Trading Phase Type: Auction Intraday (9)"
  end
  if value == 10 then
    return "Trading Phase Type: Auction Volatility Static (10)"
  end
  if value == 11 then
    return "Trading Phase Type: Auction Volatility Dynamic (11)"
  end
  if value == 12 then
    return "Trading Phase Type: Auction Extended Volatility Static (12)"
  end
  if value == 13 then
    return "Trading Phase Type: Auction Extended Volatility Dynamic (13)"
  end
  if value == 14 then
    return "Trading Phase Type: No Trading Early Monitoring (14)"
  end
  if value == 15 then
    return "Trading Phase Type: No Trading Late Monitoring (15)"
  end
  if value == 16 then
    return "Trading Phase Type: Hybrid (16)"
  end
  if value == 17 then
    return "Trading Phase Type: Hybrid Buy Only (17)"
  end
  if value == 18 then
    return "Trading Phase Type: Hybrid Pre Trade (18)"
  end
  if value == 19 then
    return "Trading Phase Type: Unsuspension Auction (19)"
  end
  if value == 20 then
    return "Trading Phase Type: Ipo (20)"
  end
  if value == 21 then
    return "Trading Phase Type: Tender Offer (21)"
  end
  if value == 22 then
    return "Trading Phase Type: Hybrid Pre Trade Buy Only (22)"
  end
  if value == 23 then
    return "Trading Phase Type: Distribution (23)"
  end

  return "Trading Phase Type: Unknown("..value..")"
end

-- Dissect: Trading Phase Type
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trading_phase_type, range, value, display)

  return offset + length, value
end

-- Trading Schedule Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_schedule_id = {}

-- Size: Trading Schedule Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_schedule_id.size = 4

-- Display: Trading Schedule Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_schedule_id.display = function(value)
  return "Trading Schedule Id: "..value
end

-- Dissect: Trading Schedule Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_schedule_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_schedule_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_schedule_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trading_schedule_id, range, value, display)

  return offset + length, value
end

-- Trading Session Event
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_session_event = {}

-- Size: Trading Session Event
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_session_event.size = 1

-- Display: Trading Session Event
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_session_event.display = function(value)
  if value == 1 then
    return "Trading Session Event: Na (1)"
  end
  if value == 2 then
    return "Trading Session Event: Start Of Technical Session (2)"
  end
  if value == 3 then
    return "Trading Session Event: End Of Technical Session (3)"
  end
  if value == 4 then
    return "Trading Session Event: Initial Reference Data Start (4)"
  end
  if value == 5 then
    return "Trading Session Event: Initial Reference Data End (5)"
  end
  if value == 6 then
    return "Trading Session Event: Previous Day Restate Start (6)"
  end
  if value == 7 then
    return "Trading Session Event: Previous Day Restate End (7)"
  end
  if value == 8 then
    return "Trading Session Event: Next Session Reference Data Start (8)"
  end
  if value == 9 then
    return "Trading Session Event: Next Session Reference Data End (9)"
  end
  if value == 12 then
    return "Trading Session Event: Start Of Trading Session Mic (12)"
  end
  if value == 13 then
    return "Trading Session Event: End Of Trading Session Mic (13)"
  end

  return "Trading Session Event: Unknown("..value..")"
end

-- Dissect: Trading Session Event
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_session_event.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_session_event.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_session_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trading_session_event, range, value, display)

  return offset + length, value
end

-- Trading Timestamp
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_timestamp = {}

-- Size: Trading Timestamp
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_timestamp.size = 8

-- Display: Trading Timestamp
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Trading Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trading Timestamp
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trading_timestamp, range, value, display)

  return offset + length, value
end

-- Trading Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_value = {}

-- Size: Trading Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_value.size = 8

-- Display: Trading Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_value.display = function(value)
  return "Trading Value: "..value
end

-- Translate: Trading Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_value.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Trading Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_value.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_value.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trading_value, range, value, display)

  return offset + length, value
end

-- Trading Value Currency
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_value_currency = {}

-- Size: Trading Value Currency
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_value_currency.size = 8

-- Display: Trading Value Currency
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_value_currency.display = function(value)
  return "Trading Value Currency: "..value
end

-- Translate: Trading Value Currency
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_value_currency.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Trading Value Currency
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_value_currency.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_value_currency.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_value_currency.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_value_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trading_value_currency, range, value, display)

  return offset + length, value
end

-- Uncrossing
gpw_wse_replayfulldepth_wats_v1_7_6_20.uncrossing = {}

-- Size: Uncrossing
gpw_wse_replayfulldepth_wats_v1_7_6_20.uncrossing.size = 1

-- Display: Uncrossing
gpw_wse_replayfulldepth_wats_v1_7_6_20.uncrossing.display = function(value)
  return "Uncrossing: "..value
end

-- Dissect: Uncrossing
gpw_wse_replayfulldepth_wats_v1_7_6_20.uncrossing.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.uncrossing.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.uncrossing.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.uncrossing, range, value, display)

  return offset + length, value
end

-- Underlying Instrument Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.underlying_instrument_id = {}

-- Size: Underlying Instrument Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.underlying_instrument_id.size = 4

-- Display: Underlying Instrument Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.underlying_instrument_id.display = function(value)
  return "Underlying Instrument Id: "..value
end

-- Dissect: Underlying Instrument Id
gpw_wse_replayfulldepth_wats_v1_7_6_20.underlying_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.underlying_instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.underlying_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.underlying_instrument_id, range, value, display)

  return offset + length, value
end

-- Upper
gpw_wse_replayfulldepth_wats_v1_7_6_20.upper = {}

-- Size: Upper
gpw_wse_replayfulldepth_wats_v1_7_6_20.upper.size = 8

-- Display: Upper
gpw_wse_replayfulldepth_wats_v1_7_6_20.upper.display = function(value)
  return "Upper: "..value
end

-- Translate: Upper
gpw_wse_replayfulldepth_wats_v1_7_6_20.upper.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Upper
gpw_wse_replayfulldepth_wats_v1_7_6_20.upper.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.upper.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.upper.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.upper.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.upper, range, value, display)

  return offset + length, value
end

-- Upper Ask
gpw_wse_replayfulldepth_wats_v1_7_6_20.upper_ask = {}

-- Size: Upper Ask
gpw_wse_replayfulldepth_wats_v1_7_6_20.upper_ask.size = 8

-- Display: Upper Ask
gpw_wse_replayfulldepth_wats_v1_7_6_20.upper_ask.display = function(value)
  return "Upper Ask: "..value
end

-- Translate: Upper Ask
gpw_wse_replayfulldepth_wats_v1_7_6_20.upper_ask.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Upper Ask
gpw_wse_replayfulldepth_wats_v1_7_6_20.upper_ask.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.upper_ask.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.upper_ask.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.upper_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.upper_ask, range, value, display)

  return offset + length, value
end

-- Upper Bid
gpw_wse_replayfulldepth_wats_v1_7_6_20.upper_bid = {}

-- Size: Upper Bid
gpw_wse_replayfulldepth_wats_v1_7_6_20.upper_bid.size = 8

-- Display: Upper Bid
gpw_wse_replayfulldepth_wats_v1_7_6_20.upper_bid.display = function(value)
  return "Upper Bid: "..value
end

-- Translate: Upper Bid
gpw_wse_replayfulldepth_wats_v1_7_6_20.upper_bid.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Upper Bid
gpw_wse_replayfulldepth_wats_v1_7_6_20.upper_bid.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.upper_bid.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.upper_bid.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.upper_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.upper_bid, range, value, display)

  return offset + length, value
end

-- Us Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.us_indicator = {}

-- Size: Us Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.us_indicator.size = 1

-- Display: Us Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.us_indicator.display = function(value)
  if value == 1 then
    return "Us Indicator: Not Applicable (1)"
  end
  if value == 2 then
    return "Us Indicator: Regulation S (2)"
  end
  if value == 3 then
    return "Us Indicator: Regulation S Plus Rule 144a (3)"
  end

  return "Us Indicator: Unknown("..value..")"
end

-- Dissect: Us Indicator
gpw_wse_replayfulldepth_wats_v1_7_6_20.us_indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.us_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.us_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.us_indicator, range, value, display)

  return offset + length, value
end

-- Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.value = {}

-- Size: Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.value.size = 8

-- Display: Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.value.display = function(value)
  return "Value: "..value
end

-- Translate: Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.value.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Value
gpw_wse_replayfulldepth_wats_v1_7_6_20.value.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.value.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.value.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.value, range, value, display)

  return offset + length, value
end

-- Value Ask
gpw_wse_replayfulldepth_wats_v1_7_6_20.value_ask = {}

-- Size: Value Ask
gpw_wse_replayfulldepth_wats_v1_7_6_20.value_ask.size = 8

-- Display: Value Ask
gpw_wse_replayfulldepth_wats_v1_7_6_20.value_ask.display = function(value)
  return "Value Ask: "..value
end

-- Translate: Value Ask
gpw_wse_replayfulldepth_wats_v1_7_6_20.value_ask.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Value Ask
gpw_wse_replayfulldepth_wats_v1_7_6_20.value_ask.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.value_ask.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.value_ask.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.value_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.value_ask, range, value, display)

  return offset + length, value
end

-- Value At Risk
gpw_wse_replayfulldepth_wats_v1_7_6_20.value_at_risk = {}

-- Size: Value At Risk
gpw_wse_replayfulldepth_wats_v1_7_6_20.value_at_risk.size = 1

-- Display: Value At Risk
gpw_wse_replayfulldepth_wats_v1_7_6_20.value_at_risk.display = function(value)
  return "Value At Risk: "..value
end

-- Dissect: Value At Risk
gpw_wse_replayfulldepth_wats_v1_7_6_20.value_at_risk.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.value_at_risk.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.value_at_risk.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.value_at_risk, range, value, display)

  return offset + length, value
end

-- Value Bid
gpw_wse_replayfulldepth_wats_v1_7_6_20.value_bid = {}

-- Size: Value Bid
gpw_wse_replayfulldepth_wats_v1_7_6_20.value_bid.size = 8

-- Display: Value Bid
gpw_wse_replayfulldepth_wats_v1_7_6_20.value_bid.display = function(value)
  return "Value Bid: "..value
end

-- Translate: Value Bid
gpw_wse_replayfulldepth_wats_v1_7_6_20.value_bid.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Value Bid
gpw_wse_replayfulldepth_wats_v1_7_6_20.value_bid.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.value_bid.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.value_bid.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.value_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.value_bid, range, value, display)

  return offset + length, value
end

-- Vega
gpw_wse_replayfulldepth_wats_v1_7_6_20.vega = {}

-- Size: Vega
gpw_wse_replayfulldepth_wats_v1_7_6_20.vega.size = 8

-- Display: Vega
gpw_wse_replayfulldepth_wats_v1_7_6_20.vega.display = function(value)
  return "Vega: "..value
end

-- Translate: Vega
gpw_wse_replayfulldepth_wats_v1_7_6_20.vega.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Vega
gpw_wse_replayfulldepth_wats_v1_7_6_20.vega.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.vega.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.vega.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.vega.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.vega, range, value, display)

  return offset + length, value
end

-- Version Number
gpw_wse_replayfulldepth_wats_v1_7_6_20.version_number = {}

-- Size: Version Number
gpw_wse_replayfulldepth_wats_v1_7_6_20.version_number.size = 1

-- Display: Version Number
gpw_wse_replayfulldepth_wats_v1_7_6_20.version_number.display = function(value)
  return "Version Number: "..value
end

-- Dissect: Version Number
gpw_wse_replayfulldepth_wats_v1_7_6_20.version_number.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.version_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.version_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.version_number, range, value, display)

  return offset + length, value
end

-- Volatility
gpw_wse_replayfulldepth_wats_v1_7_6_20.volatility = {}

-- Size: Volatility
gpw_wse_replayfulldepth_wats_v1_7_6_20.volatility.size = 8

-- Display: Volatility
gpw_wse_replayfulldepth_wats_v1_7_6_20.volatility.display = function(value)
  return "Volatility: "..value
end

-- Translate: Volatility
gpw_wse_replayfulldepth_wats_v1_7_6_20.volatility.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Volatility
gpw_wse_replayfulldepth_wats_v1_7_6_20.volatility.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.volatility.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.volatility.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.volatility.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.volatility, range, value, display)

  return offset + length, value
end

-- Vwap
gpw_wse_replayfulldepth_wats_v1_7_6_20.vwap = {}

-- Size: Vwap
gpw_wse_replayfulldepth_wats_v1_7_6_20.vwap.size = 8

-- Display: Vwap
gpw_wse_replayfulldepth_wats_v1_7_6_20.vwap.display = function(value)
  return "Vwap: "..value
end

-- Translate: Vwap
gpw_wse_replayfulldepth_wats_v1_7_6_20.vwap.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Vwap
gpw_wse_replayfulldepth_wats_v1_7_6_20.vwap.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.vwap.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_replayfulldepth_wats_v1_7_6_20.vwap.translate(raw)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.vwap.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.vwap, range, value, display)

  return offset + length, value
end

-- Weekdays
gpw_wse_replayfulldepth_wats_v1_7_6_20.weekdays = {}

-- Size: Weekdays
gpw_wse_replayfulldepth_wats_v1_7_6_20.weekdays.size = 7

-- Display: Weekdays
gpw_wse_replayfulldepth_wats_v1_7_6_20.weekdays.display = function(value)
  return "Weekdays: "..value
end

-- Dissect: Weekdays
gpw_wse_replayfulldepth_wats_v1_7_6_20.weekdays.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_replayfulldepth_wats_v1_7_6_20.weekdays.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.weekdays.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.weekdays, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Gpw Wse ReplayFullDepth Wats 1.7.6.20
-----------------------------------------------------------------------

-- Replay Request
gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request = {}

-- Size: Replay Request
gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.seq_num.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.end_seq_num.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.stream_id.size

-- Display: Replay Request
gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Request
gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: SeqNum
  index, seq_num = gpw_wse_replayfulldepth_wats_v1_7_6_20.seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: SeqNum
  index, end_seq_num = gpw_wse_replayfulldepth_wats_v1_7_6_20.end_seq_num.dissect(buffer, index, packet, parent)

  -- Stream Id: StreamId
  index, stream_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.stream_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Request
gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.replay_request, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request.fields(buffer, offset, packet, parent)
  end
end

-- Replay Request Payload
gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request_payload = {}

-- Dissect: Replay Request Payload
gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request_payload.dissect = function(buffer, offset, packet, parent, replay_message_type)
  -- Dissect Replay Request
  if replay_message_type == 1 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Replay Request Header
gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request_header = {}

-- Size: Replay Request Header
gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request_header.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_message_length.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_message_type.size

-- Display: Replay Request Header
gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Request Header
gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Replay Message Length: MsgLength
  index, replay_message_length = gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_message_length.dissect(buffer, index, packet, parent)

  -- Replay Message Type: ReplayMsgType
  index, replay_message_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Request Header
gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.replay_request_header, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request_header.fields(buffer, offset, packet, parent)
  end
end

-- Replay Request Message
gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request_message = {}

-- Calculate size of: Replay Request Message
gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request_message.size = function(buffer, offset)
  local index = 0

  index = index + gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request_header.size

  -- Parse runtime size of: Replay Request Payload
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Replay Request Message
gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Request Message
gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Replay Request Header: Struct of 2 fields
  index, replay_request_header = gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Replay Message Type
  local replay_message_type = buffer(index - 2, 2):le_uint()

  -- Replay Request Payload: Runtime Type with 1 branches
  index = gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request_payload.dissect(buffer, index, packet, parent, replay_message_type)

  return index
end

-- Dissect: Replay Request Message
gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.replay_request_message, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Request Packet
gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request_packet = {}

-- Verify required size of Tcp packet
gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request_packet.requiredsize = function(buffer)
  return buffer:len() >= gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request_header.size
end

-- Dissect Replay Request Packet
gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Replay Request Message
  local end_of_payload = buffer:len()

  -- Replay Request Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, replay_request_message = gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request_message.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Order Book Event
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_book_event = {}

-- Size: Order Book Event
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_book_event.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.event_type_order_book_event_type.size

-- Display: Order Book Event
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_book_event.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Event
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_book_event.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Event Type Order Book Event Type: OrderBookEventType
  index, event_type_order_book_event_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.event_type_order_book_event_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Event
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_book_event.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.order_book_event, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.order_book_event.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.order_book_event.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.order_book_event.fields(buffer, offset, packet, parent)
  end
end

-- Order Execute
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_execute = {}

-- Size: Order Execute
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_execute.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.quantity.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.public_order_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.execution_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.execution_quantity.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.side.size

-- Display: Order Execute
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_execute.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execute
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_execute.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quantity: Quantity
  index, quantity = gpw_wse_replayfulldepth_wats_v1_7_6_20.quantity.dissect(buffer, index, packet, parent)

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Public Order Id: PublicOrderId
  index, public_order_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.public_order_id.dissect(buffer, index, packet, parent)

  -- Trade Id: TradeId
  index, trade_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_id.dissect(buffer, index, packet, parent)

  -- Execution Price: Price
  index, execution_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.execution_price.dissect(buffer, index, packet, parent)

  -- Execution Quantity: Quantity
  index, execution_quantity = gpw_wse_replayfulldepth_wats_v1_7_6_20.execution_quantity.dissect(buffer, index, packet, parent)

  -- Side: OrderSide
  index, side = gpw_wse_replayfulldepth_wats_v1_7_6_20.side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execute
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_execute.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.order_execute, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.order_execute.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.order_execute.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.order_execute.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_cancel = {}

-- Size: Order Cancel
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_cancel.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.public_order_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.side.size

-- Display: Order Cancel
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_cancel.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_cancel.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Public Order Id: PublicOrderId
  index, public_order_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.public_order_id.dissect(buffer, index, packet, parent)

  -- Side: OrderSide
  index, side = gpw_wse_replayfulldepth_wats_v1_7_6_20.side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_cancel.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.order_cancel, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.order_cancel.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.order_cancel.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.order_cancel.fields(buffer, offset, packet, parent)
  end
end

-- Order Modify
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_modify = {}

-- Size: Order Modify
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_modify.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.public_order_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.quantity.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.priority_flag.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.side.size

-- Display: Order Modify
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_modify.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_modify.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Public Order Id: PublicOrderId
  index, public_order_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.public_order_id.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = gpw_wse_replayfulldepth_wats_v1_7_6_20.price.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = gpw_wse_replayfulldepth_wats_v1_7_6_20.quantity.dissect(buffer, index, packet, parent)

  -- Priority Flag: PriorityFlag
  index, priority_flag = gpw_wse_replayfulldepth_wats_v1_7_6_20.priority_flag.dissect(buffer, index, packet, parent)

  -- Side: OrderSide
  index, side = gpw_wse_replayfulldepth_wats_v1_7_6_20.side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_modify.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.order_modify, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.order_modify.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.order_modify.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.order_modify.fields(buffer, offset, packet, parent)
  end
end

-- Order Add
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_add = {}

-- Size: Order Add
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_add.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.public_order_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.side.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.quantity.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.mm_quote.size

-- Display: Order Add
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_add.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Add
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_add.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Public Order Id: PublicOrderId
  index, public_order_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.public_order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Side: OrderSide
  index, side = gpw_wse_replayfulldepth_wats_v1_7_6_20.side.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = gpw_wse_replayfulldepth_wats_v1_7_6_20.price.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = gpw_wse_replayfulldepth_wats_v1_7_6_20.quantity.dissect(buffer, index, packet, parent)

  -- Mm Quote: bool
  index, mm_quote = gpw_wse_replayfulldepth_wats_v1_7_6_20.mm_quote.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Add
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_add.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.order_add, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.order_add.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.order_add.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.order_add.fields(buffer, offset, packet, parent)
  end
end

-- Test Event
gpw_wse_replayfulldepth_wats_v1_7_6_20.test_event = {}

-- Size: Test Event
gpw_wse_replayfulldepth_wats_v1_7_6_20.test_event.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.scenario_name.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.event_type_event_type.size

-- Display: Test Event
gpw_wse_replayfulldepth_wats_v1_7_6_20.test_event.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Test Event
gpw_wse_replayfulldepth_wats_v1_7_6_20.test_event.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Scenario Name: ScenarioName
  index, scenario_name = gpw_wse_replayfulldepth_wats_v1_7_6_20.scenario_name.dissect(buffer, index, packet, parent)

  -- Event Type Event Type: EventType
  index, event_type_event_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.event_type_event_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Test Event
gpw_wse_replayfulldepth_wats_v1_7_6_20.test_event.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.test_event, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.test_event.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.test_event.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.test_event.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat
gpw_wse_replayfulldepth_wats_v1_7_6_20.heartbeat = {}

-- Display: Heartbeat
gpw_wse_replayfulldepth_wats_v1_7_6_20.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
gpw_wse_replayfulldepth_wats_v1_7_6_20.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Trading Session Status
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_session_status = {}

-- Size: Trading Session Status
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_session_status.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.market_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.market_structure_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_session_event.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.date.size

-- Display: Trading Session Status
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_session_status.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Status
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_session_status.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: MicCode
  index, market_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.market_id.dissect(buffer, index, packet, parent)

  -- Market Structure Id: ElementId
  index, market_structure_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.market_structure_id.dissect(buffer, index, packet, parent)

  -- Trading Session Event: TradingSessionEvent
  index, trading_session_event = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_session_event.dissect(buffer, index, packet, parent)

  -- Date: Date
  index, date = gpw_wse_replayfulldepth_wats_v1_7_6_20.date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Status
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_session_status.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trading_session_status, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_session_status.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_session_status.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_session_status.fields(buffer, offset, packet, parent)
  end
end

-- Presence Flags Index Summary Presence Flags
gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_index_summary_presence_flags = {}

-- Size: Presence Flags Index Summary Presence Flags
gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_index_summary_presence_flags.size = 1

-- Display: Presence Flags Index Summary Presence Flags
gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_index_summary_presence_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Has Session Avg flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Has Session Avg"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Presence Flags Index Summary Presence Flags
gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_index_summary_presence_flags.bits = function(range, value, packet, parent)

  -- Has Session Avg: 1 Bit
  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.has_session_avg, range, value)

  -- Reserved 17 Index Summary Presence Flags: 7 Bit
  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.reserved_17_index_summary_presence_flags, range, value)
end

-- Dissect: Presence Flags Index Summary Presence Flags
gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_index_summary_presence_flags.dissect = function(buffer, offset, packet, parent)
  local size = gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_index_summary_presence_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_index_summary_presence_flags.display(range, value, packet, parent)
  local element = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.presence_flags_index_summary_presence_flags, range, display)

  if show.structs then
    gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_index_summary_presence_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Index Summary
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_summary = {}

-- Size: Index Summary
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_summary.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.opening_index_value.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.session_low.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.session_high.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_index_value.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_index_summary_presence_flags.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.session_avg.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change_index_val_prev_session.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change_index_val_prev_year.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_capitalisation_portfolio.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.ind_index_opening_portfolio.size

-- Display: Index Summary
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_summary.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Summary
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_summary.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Opening Index Value: IndexValue
  index, opening_index_value = gpw_wse_replayfulldepth_wats_v1_7_6_20.opening_index_value.dissect(buffer, index, packet, parent)

  -- Session Low: IndexValue
  index, session_low = gpw_wse_replayfulldepth_wats_v1_7_6_20.session_low.dissect(buffer, index, packet, parent)

  -- Session High: IndexValue
  index, session_high = gpw_wse_replayfulldepth_wats_v1_7_6_20.session_high.dissect(buffer, index, packet, parent)

  -- Closing Index Value: IndexValue
  index, closing_index_value = gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_index_value.dissect(buffer, index, packet, parent)

  -- Presence Flags Index Summary Presence Flags: Struct of 2 fields
  index, presence_flags_index_summary_presence_flags = gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_index_summary_presence_flags.dissect(buffer, index, packet, parent)

  -- Session Avg: IndexValue
  index, session_avg = gpw_wse_replayfulldepth_wats_v1_7_6_20.session_avg.dissect(buffer, index, packet, parent)

  -- Pct Change Index Val Prev Session: PercentageChange
  index, pct_change_index_val_prev_session = gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change_index_val_prev_session.dissect(buffer, index, packet, parent)

  -- Pct Change Index Val Prev Year: PercentageChange
  index, pct_change_index_val_prev_year = gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change_index_val_prev_year.dissect(buffer, index, packet, parent)

  -- Closing Capitalisation Portfolio: Value
  index, closing_capitalisation_portfolio = gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_capitalisation_portfolio.dissect(buffer, index, packet, parent)

  -- Ind Index Opening Portfolio: PercentageChange
  index, ind_index_opening_portfolio = gpw_wse_replayfulldepth_wats_v1_7_6_20.ind_index_opening_portfolio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Summary
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_summary.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.index_summary, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_summary.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_summary.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.index_summary.fields(buffer, offset, packet, parent)
  end
end

-- Presence Flags Real Time Index Presence Flags
gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_real_time_index_presence_flags = {}

-- Size: Presence Flags Real Time Index Presence Flags
gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_real_time_index_presence_flags.size = 1

-- Display: Presence Flags Real Time Index Presence Flags
gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_real_time_index_presence_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Has Trading Value flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Has Trading Value"
  end
  -- Is Has Index Value Bid flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Has Index Value Bid"
  end
  -- Is Has Index Value Ask flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Has Index Value Ask"
  end
  -- Is Has Mid Spread Index flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Has Mid Spread Index"
  end
  -- Is Has Difference Central Spread flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Has Difference Central Spread"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Presence Flags Real Time Index Presence Flags
gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_real_time_index_presence_flags.bits = function(range, value, packet, parent)

  -- Has Trading Value: 1 Bit
  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.has_trading_value, range, value)

  -- Has Index Value Bid: 1 Bit
  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.has_index_value_bid, range, value)

  -- Has Index Value Ask: 1 Bit
  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.has_index_value_ask, range, value)

  -- Has Mid Spread Index: 1 Bit
  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.has_mid_spread_index, range, value)

  -- Has Difference Central Spread: 1 Bit
  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.has_difference_central_spread, range, value)

  -- Reserved 57: 3 Bit
  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.reserved_57, range, value)
end

-- Dissect: Presence Flags Real Time Index Presence Flags
gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_real_time_index_presence_flags.dissect = function(buffer, offset, packet, parent)
  local size = gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_real_time_index_presence_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_real_time_index_presence_flags.display(range, value, packet, parent)
  local element = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.presence_flags_real_time_index_presence_flags, range, display)

  if show.structs then
    gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_real_time_index_presence_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Real Time Index
gpw_wse_replayfulldepth_wats_v1_7_6_20.real_time_index = {}

-- Size: Real Time Index
gpw_wse_replayfulldepth_wats_v1_7_6_20.real_time_index.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.index_level_code.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.num_of_active_instruments.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.ind_index_opening_portfolio.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.index_value.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change_index_val_prev_session.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.session_low.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.session_high.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_real_time_index_presence_flags.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_value.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.index_value_bid.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.index_value_ask.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.mid_spread_index.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.difference_central_spread.size

-- Display: Real Time Index
gpw_wse_replayfulldepth_wats_v1_7_6_20.real_time_index.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Real Time Index
gpw_wse_replayfulldepth_wats_v1_7_6_20.real_time_index.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Index Level Code: IndexLevelCode
  index, index_level_code = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_level_code.dissect(buffer, index, packet, parent)

  -- Num Of Active Instruments: u16
  index, num_of_active_instruments = gpw_wse_replayfulldepth_wats_v1_7_6_20.num_of_active_instruments.dissect(buffer, index, packet, parent)

  -- Ind Index Opening Portfolio: PercentageChange
  index, ind_index_opening_portfolio = gpw_wse_replayfulldepth_wats_v1_7_6_20.ind_index_opening_portfolio.dissect(buffer, index, packet, parent)

  -- Index Value: IndexValue
  index, index_value = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_value.dissect(buffer, index, packet, parent)

  -- Pct Change Index Val Prev Session: PercentageChange
  index, pct_change_index_val_prev_session = gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change_index_val_prev_session.dissect(buffer, index, packet, parent)

  -- Session Low: IndexValue
  index, session_low = gpw_wse_replayfulldepth_wats_v1_7_6_20.session_low.dissect(buffer, index, packet, parent)

  -- Session High: IndexValue
  index, session_high = gpw_wse_replayfulldepth_wats_v1_7_6_20.session_high.dissect(buffer, index, packet, parent)

  -- Presence Flags Real Time Index Presence Flags: Struct of 6 fields
  index, presence_flags_real_time_index_presence_flags = gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_real_time_index_presence_flags.dissect(buffer, index, packet, parent)

  -- Trading Value: Value
  index, trading_value = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_value.dissect(buffer, index, packet, parent)

  -- Index Value Bid: IndexValue
  index, index_value_bid = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_value_bid.dissect(buffer, index, packet, parent)

  -- Index Value Ask: IndexValue
  index, index_value_ask = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_value_ask.dissect(buffer, index, packet, parent)

  -- Mid Spread Index: IndexValue
  index, mid_spread_index = gpw_wse_replayfulldepth_wats_v1_7_6_20.mid_spread_index.dissect(buffer, index, packet, parent)

  -- Difference Central Spread: IndexValue
  index, difference_central_spread = gpw_wse_replayfulldepth_wats_v1_7_6_20.difference_central_spread.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Real Time Index
gpw_wse_replayfulldepth_wats_v1_7_6_20.real_time_index.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.real_time_index, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.real_time_index.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.real_time_index.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.real_time_index.fields(buffer, offset, packet, parent)
  end
end

-- News
gpw_wse_replayfulldepth_wats_v1_7_6_20.news = {}

-- Size: News
gpw_wse_replayfulldepth_wats_v1_7_6_20.news.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.market_structure_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.news_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.title.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.entry_number.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.total.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.text.size

-- Display: News
gpw_wse_replayfulldepth_wats_v1_7_6_20.news.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: News
gpw_wse_replayfulldepth_wats_v1_7_6_20.news.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Structure Id: ElementId
  index, market_structure_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.market_structure_id.dissect(buffer, index, packet, parent)

  -- News Id: ElementId
  index, news_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.news_id.dissect(buffer, index, packet, parent)

  -- Title: NewsTitle
  index, title = gpw_wse_replayfulldepth_wats_v1_7_6_20.title.dissect(buffer, index, packet, parent)

  -- Entry Number: u8
  index, entry_number = gpw_wse_replayfulldepth_wats_v1_7_6_20.entry_number.dissect(buffer, index, packet, parent)

  -- Total: u8
  index, total = gpw_wse_replayfulldepth_wats_v1_7_6_20.total.dissect(buffer, index, packet, parent)

  -- Text: NewsText
  index, text = gpw_wse_replayfulldepth_wats_v1_7_6_20.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: News
gpw_wse_replayfulldepth_wats_v1_7_6_20.news.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.news, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.news.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.news.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.news.fields(buffer, offset, packet, parent)
  end
end

-- Price Ytm Presence
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_ytm_presence = {}

-- Size: Price Ytm Presence
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_ytm_presence.size = 2

-- Display: Price Ytm Presence
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_ytm_presence.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Value Price Ytm Presence flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Value Price Ytm Presence"
  end
  -- Is Value Bid Price Ytm Presence flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Value Bid Price Ytm Presence"
  end
  -- Is Value Ask Price Ytm Presence flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "Value Ask Price Ytm Presence"
  end
  -- Is Ytm No Calc flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Ytm No Calc"
  end
  -- Is Ytm Bid No Calc flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Ytm Bid No Calc"
  end
  -- Is Ytm Ask No Calc flag set?
  if bit.band(value, 0x0020) ~= 0 then
    flags[#flags + 1] = "Ytm Ask No Calc"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Price Ytm Presence
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_ytm_presence.bits = function(range, value, packet, parent)

  -- Value Price Ytm Presence: 1 Bit
  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.value_price_ytm_presence, range, value)

  -- Value Bid Price Ytm Presence: 1 Bit
  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.value_bid_price_ytm_presence, range, value)

  -- Value Ask Price Ytm Presence: 1 Bit
  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.value_ask_price_ytm_presence, range, value)

  -- Ytm No Calc: 1 Bit
  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.ytm_no_calc, range, value)

  -- Ytm Bid No Calc: 1 Bit
  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.ytm_bid_no_calc, range, value)

  -- Ytm Ask No Calc: 1 Bit
  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.ytm_ask_no_calc, range, value)

  -- Reserved 615: 10 Bit
  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.reserved_615, range, value)
end

-- Dissect: Price Ytm Presence
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_ytm_presence.dissect = function(buffer, offset, packet, parent)
  local size = gpw_wse_replayfulldepth_wats_v1_7_6_20.price_ytm_presence.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.price_ytm_presence.display(range, value, packet, parent)
  local element = parent:add_le(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.price_ytm_presence, range, display)

  if show.structs then
    gpw_wse_replayfulldepth_wats_v1_7_6_20.price_ytm_presence.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Price Update
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_update = {}

-- Size: Price Update
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_update.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.price_update_type.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.price_ytm_presence.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.value.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.value_bid.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.value_ask.size

-- Display: Price Update
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_update.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Update
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_update.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Price Update Type: PriceUpdateType
  index, price_update_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.price_update_type.dissect(buffer, index, packet, parent)

  -- Price Ytm Presence: Struct of 7 fields
  index, price_ytm_presence = gpw_wse_replayfulldepth_wats_v1_7_6_20.price_ytm_presence.dissect(buffer, index, packet, parent)

  -- Value: Price
  index, value = gpw_wse_replayfulldepth_wats_v1_7_6_20.value.dissect(buffer, index, packet, parent)

  -- Value Bid: Price
  index, value_bid = gpw_wse_replayfulldepth_wats_v1_7_6_20.value_bid.dissect(buffer, index, packet, parent)

  -- Value Ask: Price
  index, value_ask = gpw_wse_replayfulldepth_wats_v1_7_6_20.value_ask.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Update
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_update.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.price_update, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.price_update.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.price_update.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.price_update.fields(buffer, offset, packet, parent)
  end
end

-- Hybrid Instrument
gpw_wse_replayfulldepth_wats_v1_7_6_20.hybrid_instrument = {}

-- Size: Hybrid Instrument
gpw_wse_replayfulldepth_wats_v1_7_6_20.hybrid_instrument.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.market_model_type.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.last_traded_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_price_type.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.adjusted_closing_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.adjusted_closing_price_reason.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.vwap.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.no_trades.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.total_volume.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.total_value.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.opening_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.max_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.min_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_value_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.end_trading_date.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.last_trade_date.size

-- Display: Hybrid Instrument
gpw_wse_replayfulldepth_wats_v1_7_6_20.hybrid_instrument.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Hybrid Instrument
gpw_wse_replayfulldepth_wats_v1_7_6_20.hybrid_instrument.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Market Model Type: MarketModelType
  index, market_model_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.market_model_type.dissect(buffer, index, packet, parent)

  -- Last Traded Price: Price
  index, last_traded_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.last_traded_price.dissect(buffer, index, packet, parent)

  -- Closing Price: Price
  index, closing_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_price.dissect(buffer, index, packet, parent)

  -- Closing Price Type: ClosingPriceType
  index, closing_price_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_price_type.dissect(buffer, index, packet, parent)

  -- Adjusted Closing Price: Price
  index, adjusted_closing_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.adjusted_closing_price.dissect(buffer, index, packet, parent)

  -- Adjusted Closing Price Reason: AdjustedClosingPriceReason
  index, adjusted_closing_price_reason = gpw_wse_replayfulldepth_wats_v1_7_6_20.adjusted_closing_price_reason.dissect(buffer, index, packet, parent)

  -- Pct Change: PercentageChange
  index, pct_change = gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change.dissect(buffer, index, packet, parent)

  -- Vwap: Price
  index, vwap = gpw_wse_replayfulldepth_wats_v1_7_6_20.vwap.dissect(buffer, index, packet, parent)

  -- No Trades: u64
  index, no_trades = gpw_wse_replayfulldepth_wats_v1_7_6_20.no_trades.dissect(buffer, index, packet, parent)

  -- Total Volume: Quantity
  index, total_volume = gpw_wse_replayfulldepth_wats_v1_7_6_20.total_volume.dissect(buffer, index, packet, parent)

  -- Total Value: Value
  index, total_value = gpw_wse_replayfulldepth_wats_v1_7_6_20.total_value.dissect(buffer, index, packet, parent)

  -- Opening Price: Price
  index, opening_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.opening_price.dissect(buffer, index, packet, parent)

  -- Max Price: Price
  index, max_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.max_price.dissect(buffer, index, packet, parent)

  -- Min Price: Price
  index, min_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.min_price.dissect(buffer, index, packet, parent)

  -- Settlement Price: Price
  index, settlement_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_price.dissect(buffer, index, packet, parent)

  -- Settlement Value Price: Price
  index, settlement_value_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_value_price.dissect(buffer, index, packet, parent)

  -- End Trading Date: Date
  index, end_trading_date = gpw_wse_replayfulldepth_wats_v1_7_6_20.end_trading_date.dissect(buffer, index, packet, parent)

  -- Last Trade Date: Date
  index, last_trade_date = gpw_wse_replayfulldepth_wats_v1_7_6_20.last_trade_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Hybrid Instrument
gpw_wse_replayfulldepth_wats_v1_7_6_20.hybrid_instrument.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.hybrid_instrument, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.hybrid_instrument.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.hybrid_instrument.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.hybrid_instrument.fields(buffer, offset, packet, parent)
  end
end

-- Block Instrument
gpw_wse_replayfulldepth_wats_v1_7_6_20.block_instrument = {}

-- Size: Block Instrument
gpw_wse_replayfulldepth_wats_v1_7_6_20.block_instrument.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.market_model_type.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.last_traded_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_price_type.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.adjusted_closing_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.adjusted_closing_price_reason.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.vwap.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.no_trades.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.total_volume.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.total_value.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.opening_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.max_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.min_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_value_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.end_trading_date.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.last_trade_date.size

-- Display: Block Instrument
gpw_wse_replayfulldepth_wats_v1_7_6_20.block_instrument.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Block Instrument
gpw_wse_replayfulldepth_wats_v1_7_6_20.block_instrument.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Market Model Type: MarketModelType
  index, market_model_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.market_model_type.dissect(buffer, index, packet, parent)

  -- Last Traded Price: Price
  index, last_traded_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.last_traded_price.dissect(buffer, index, packet, parent)

  -- Closing Price: Price
  index, closing_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_price.dissect(buffer, index, packet, parent)

  -- Closing Price Type: ClosingPriceType
  index, closing_price_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_price_type.dissect(buffer, index, packet, parent)

  -- Adjusted Closing Price: Price
  index, adjusted_closing_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.adjusted_closing_price.dissect(buffer, index, packet, parent)

  -- Adjusted Closing Price Reason: AdjustedClosingPriceReason
  index, adjusted_closing_price_reason = gpw_wse_replayfulldepth_wats_v1_7_6_20.adjusted_closing_price_reason.dissect(buffer, index, packet, parent)

  -- Pct Change: PercentageChange
  index, pct_change = gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change.dissect(buffer, index, packet, parent)

  -- Vwap: Price
  index, vwap = gpw_wse_replayfulldepth_wats_v1_7_6_20.vwap.dissect(buffer, index, packet, parent)

  -- No Trades: u64
  index, no_trades = gpw_wse_replayfulldepth_wats_v1_7_6_20.no_trades.dissect(buffer, index, packet, parent)

  -- Total Volume: Quantity
  index, total_volume = gpw_wse_replayfulldepth_wats_v1_7_6_20.total_volume.dissect(buffer, index, packet, parent)

  -- Total Value: Value
  index, total_value = gpw_wse_replayfulldepth_wats_v1_7_6_20.total_value.dissect(buffer, index, packet, parent)

  -- Opening Price: Price
  index, opening_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.opening_price.dissect(buffer, index, packet, parent)

  -- Max Price: Price
  index, max_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.max_price.dissect(buffer, index, packet, parent)

  -- Min Price: Price
  index, min_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.min_price.dissect(buffer, index, packet, parent)

  -- Settlement Price: Price
  index, settlement_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_price.dissect(buffer, index, packet, parent)

  -- Settlement Value Price: Price
  index, settlement_value_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_value_price.dissect(buffer, index, packet, parent)

  -- End Trading Date: Date
  index, end_trading_date = gpw_wse_replayfulldepth_wats_v1_7_6_20.end_trading_date.dissect(buffer, index, packet, parent)

  -- Last Trade Date: Date
  index, last_trade_date = gpw_wse_replayfulldepth_wats_v1_7_6_20.last_trade_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Block Instrument
gpw_wse_replayfulldepth_wats_v1_7_6_20.block_instrument.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.block_instrument, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.block_instrument.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.block_instrument.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.block_instrument.fields(buffer, offset, packet, parent)
  end
end

-- Cross Instrument
gpw_wse_replayfulldepth_wats_v1_7_6_20.cross_instrument = {}

-- Size: Cross Instrument
gpw_wse_replayfulldepth_wats_v1_7_6_20.cross_instrument.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.market_model_type.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.last_traded_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_price_type.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.adjusted_closing_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.adjusted_closing_price_reason.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.vwap.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.no_trades.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.total_volume.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.total_value.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.opening_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.max_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.min_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_value_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.end_trading_date.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.last_trade_date.size

-- Display: Cross Instrument
gpw_wse_replayfulldepth_wats_v1_7_6_20.cross_instrument.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Instrument
gpw_wse_replayfulldepth_wats_v1_7_6_20.cross_instrument.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Market Model Type: MarketModelType
  index, market_model_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.market_model_type.dissect(buffer, index, packet, parent)

  -- Last Traded Price: Price
  index, last_traded_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.last_traded_price.dissect(buffer, index, packet, parent)

  -- Closing Price: Price
  index, closing_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_price.dissect(buffer, index, packet, parent)

  -- Closing Price Type: ClosingPriceType
  index, closing_price_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_price_type.dissect(buffer, index, packet, parent)

  -- Adjusted Closing Price: Price
  index, adjusted_closing_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.adjusted_closing_price.dissect(buffer, index, packet, parent)

  -- Adjusted Closing Price Reason: AdjustedClosingPriceReason
  index, adjusted_closing_price_reason = gpw_wse_replayfulldepth_wats_v1_7_6_20.adjusted_closing_price_reason.dissect(buffer, index, packet, parent)

  -- Pct Change: PercentageChange
  index, pct_change = gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change.dissect(buffer, index, packet, parent)

  -- Vwap: Price
  index, vwap = gpw_wse_replayfulldepth_wats_v1_7_6_20.vwap.dissect(buffer, index, packet, parent)

  -- No Trades: u64
  index, no_trades = gpw_wse_replayfulldepth_wats_v1_7_6_20.no_trades.dissect(buffer, index, packet, parent)

  -- Total Volume: Quantity
  index, total_volume = gpw_wse_replayfulldepth_wats_v1_7_6_20.total_volume.dissect(buffer, index, packet, parent)

  -- Total Value: Value
  index, total_value = gpw_wse_replayfulldepth_wats_v1_7_6_20.total_value.dissect(buffer, index, packet, parent)

  -- Opening Price: Price
  index, opening_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.opening_price.dissect(buffer, index, packet, parent)

  -- Max Price: Price
  index, max_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.max_price.dissect(buffer, index, packet, parent)

  -- Min Price: Price
  index, min_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.min_price.dissect(buffer, index, packet, parent)

  -- Settlement Price: Price
  index, settlement_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_price.dissect(buffer, index, packet, parent)

  -- Settlement Value Price: Price
  index, settlement_value_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_value_price.dissect(buffer, index, packet, parent)

  -- End Trading Date: Date
  index, end_trading_date = gpw_wse_replayfulldepth_wats_v1_7_6_20.end_trading_date.dissect(buffer, index, packet, parent)

  -- Last Trade Date: Date
  index, last_trade_date = gpw_wse_replayfulldepth_wats_v1_7_6_20.last_trade_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Instrument
gpw_wse_replayfulldepth_wats_v1_7_6_20.cross_instrument.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.cross_instrument, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.cross_instrument.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.cross_instrument.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.cross_instrument.fields(buffer, offset, packet, parent)
  end
end

-- Clob Instrument
gpw_wse_replayfulldepth_wats_v1_7_6_20.clob_instrument = {}

-- Size: Clob Instrument
gpw_wse_replayfulldepth_wats_v1_7_6_20.clob_instrument.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.market_model_type.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.last_traded_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_price_type.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.adjusted_closing_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.adjusted_closing_price_reason.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.vwap.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.no_trades.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.total_volume.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.total_value.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.opening_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.max_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.min_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_value_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.end_trading_date.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.last_trade_date.size

-- Display: Clob Instrument
gpw_wse_replayfulldepth_wats_v1_7_6_20.clob_instrument.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clob Instrument
gpw_wse_replayfulldepth_wats_v1_7_6_20.clob_instrument.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Market Model Type: MarketModelType
  index, market_model_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.market_model_type.dissect(buffer, index, packet, parent)

  -- Last Traded Price: Price
  index, last_traded_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.last_traded_price.dissect(buffer, index, packet, parent)

  -- Closing Price: Price
  index, closing_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_price.dissect(buffer, index, packet, parent)

  -- Closing Price Type: ClosingPriceType
  index, closing_price_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_price_type.dissect(buffer, index, packet, parent)

  -- Adjusted Closing Price: Price
  index, adjusted_closing_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.adjusted_closing_price.dissect(buffer, index, packet, parent)

  -- Adjusted Closing Price Reason: AdjustedClosingPriceReason
  index, adjusted_closing_price_reason = gpw_wse_replayfulldepth_wats_v1_7_6_20.adjusted_closing_price_reason.dissect(buffer, index, packet, parent)

  -- Pct Change: PercentageChange
  index, pct_change = gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change.dissect(buffer, index, packet, parent)

  -- Vwap: Price
  index, vwap = gpw_wse_replayfulldepth_wats_v1_7_6_20.vwap.dissect(buffer, index, packet, parent)

  -- No Trades: u64
  index, no_trades = gpw_wse_replayfulldepth_wats_v1_7_6_20.no_trades.dissect(buffer, index, packet, parent)

  -- Total Volume: Quantity
  index, total_volume = gpw_wse_replayfulldepth_wats_v1_7_6_20.total_volume.dissect(buffer, index, packet, parent)

  -- Total Value: Value
  index, total_value = gpw_wse_replayfulldepth_wats_v1_7_6_20.total_value.dissect(buffer, index, packet, parent)

  -- Opening Price: Price
  index, opening_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.opening_price.dissect(buffer, index, packet, parent)

  -- Max Price: Price
  index, max_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.max_price.dissect(buffer, index, packet, parent)

  -- Min Price: Price
  index, min_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.min_price.dissect(buffer, index, packet, parent)

  -- Settlement Price: Price
  index, settlement_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_price.dissect(buffer, index, packet, parent)

  -- Settlement Value Price: Price
  index, settlement_value_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_value_price.dissect(buffer, index, packet, parent)

  -- End Trading Date: Date
  index, end_trading_date = gpw_wse_replayfulldepth_wats_v1_7_6_20.end_trading_date.dissect(buffer, index, packet, parent)

  -- Last Trade Date: Date
  index, last_trade_date = gpw_wse_replayfulldepth_wats_v1_7_6_20.last_trade_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Clob Instrument
gpw_wse_replayfulldepth_wats_v1_7_6_20.clob_instrument.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.clob_instrument, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.clob_instrument.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.clob_instrument.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.clob_instrument.fields(buffer, offset, packet, parent)
  end
end

-- Product Summary
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_summary = {}

-- Size: Product Summary
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_summary.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.clob_instrument.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.cross_instrument.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.block_instrument.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.hybrid_instrument.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_type.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_product_identification.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.product_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.mic.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.accumulated_interest.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.interest_rate.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.currency.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.session_date.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_value_currency.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.status.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.sector.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.market.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.marker_price_change.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_liquidity.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.multiplier_number.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.dividend_rate.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.delta.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.gamma.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.rho.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.theta.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.vega.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.volatility.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.options_strike_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.dividend.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.subscription_right.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.interim_dividend_right.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.split.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.quotation_system.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.liquidity_support_pge.size

-- Display: Product Summary
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_summary.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Product Summary
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_summary.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Clob Instrument: Struct of 19 fields
  index, clob_instrument = gpw_wse_replayfulldepth_wats_v1_7_6_20.clob_instrument.dissect(buffer, index, packet, parent)

  -- Cross Instrument: Struct of 19 fields
  index, cross_instrument = gpw_wse_replayfulldepth_wats_v1_7_6_20.cross_instrument.dissect(buffer, index, packet, parent)

  -- Block Instrument: Struct of 19 fields
  index, block_instrument = gpw_wse_replayfulldepth_wats_v1_7_6_20.block_instrument.dissect(buffer, index, packet, parent)

  -- Hybrid Instrument: Struct of 19 fields
  index, hybrid_instrument = gpw_wse_replayfulldepth_wats_v1_7_6_20.hybrid_instrument.dissect(buffer, index, packet, parent)

  -- Product Identification Type: ProductIdentificationType
  index, product_identification_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_type.dissect(buffer, index, packet, parent)

  -- Product Identification Product Identification: ProductIdentification
  index, product_identification_product_identification = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_product_identification.dissect(buffer, index, packet, parent)

  -- Product Id: ElementId
  index, product_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_id.dissect(buffer, index, packet, parent)

  -- Mic: MicCode
  index, mic = gpw_wse_replayfulldepth_wats_v1_7_6_20.mic.dissect(buffer, index, packet, parent)

  -- Accumulated Interest: Number
  index, accumulated_interest = gpw_wse_replayfulldepth_wats_v1_7_6_20.accumulated_interest.dissect(buffer, index, packet, parent)

  -- Interest Rate: Number
  index, interest_rate = gpw_wse_replayfulldepth_wats_v1_7_6_20.interest_rate.dissect(buffer, index, packet, parent)

  -- Currency: Currency
  index, currency = gpw_wse_replayfulldepth_wats_v1_7_6_20.currency.dissect(buffer, index, packet, parent)

  -- Session Date: Date
  index, session_date = gpw_wse_replayfulldepth_wats_v1_7_6_20.session_date.dissect(buffer, index, packet, parent)

  -- Trading Value Currency: Value
  index, trading_value_currency = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_value_currency.dissect(buffer, index, packet, parent)

  -- Status: InstrumentStatus
  index, status = gpw_wse_replayfulldepth_wats_v1_7_6_20.status.dissect(buffer, index, packet, parent)

  -- Sector: u16
  index, sector = gpw_wse_replayfulldepth_wats_v1_7_6_20.sector.dissect(buffer, index, packet, parent)

  -- Market: u8
  index, market = gpw_wse_replayfulldepth_wats_v1_7_6_20.market.dissect(buffer, index, packet, parent)

  -- Marker Price Change: ChangeIndicator
  index, marker_price_change = gpw_wse_replayfulldepth_wats_v1_7_6_20.marker_price_change.dissect(buffer, index, packet, parent)

  -- Lower Liquidity: bool
  index, lower_liquidity = gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_liquidity.dissect(buffer, index, packet, parent)

  -- Multiplier Number: Number
  index, multiplier_number = gpw_wse_replayfulldepth_wats_v1_7_6_20.multiplier_number.dissect(buffer, index, packet, parent)

  -- Dividend Rate: Number
  index, dividend_rate = gpw_wse_replayfulldepth_wats_v1_7_6_20.dividend_rate.dissect(buffer, index, packet, parent)

  -- Delta: Number
  index, delta = gpw_wse_replayfulldepth_wats_v1_7_6_20.delta.dissect(buffer, index, packet, parent)

  -- Gamma: Number
  index, gamma = gpw_wse_replayfulldepth_wats_v1_7_6_20.gamma.dissect(buffer, index, packet, parent)

  -- Rho: Number
  index, rho = gpw_wse_replayfulldepth_wats_v1_7_6_20.rho.dissect(buffer, index, packet, parent)

  -- Theta: Number
  index, theta = gpw_wse_replayfulldepth_wats_v1_7_6_20.theta.dissect(buffer, index, packet, parent)

  -- Vega: Number
  index, vega = gpw_wse_replayfulldepth_wats_v1_7_6_20.vega.dissect(buffer, index, packet, parent)

  -- Volatility: Number
  index, volatility = gpw_wse_replayfulldepth_wats_v1_7_6_20.volatility.dissect(buffer, index, packet, parent)

  -- Options Strike Price: Price
  index, options_strike_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.options_strike_price.dissect(buffer, index, packet, parent)

  -- Dividend: bool
  index, dividend = gpw_wse_replayfulldepth_wats_v1_7_6_20.dividend.dissect(buffer, index, packet, parent)

  -- Subscription Right: bool
  index, subscription_right = gpw_wse_replayfulldepth_wats_v1_7_6_20.subscription_right.dissect(buffer, index, packet, parent)

  -- Interim Dividend Right: bool
  index, interim_dividend_right = gpw_wse_replayfulldepth_wats_v1_7_6_20.interim_dividend_right.dissect(buffer, index, packet, parent)

  -- Split: bool
  index, split = gpw_wse_replayfulldepth_wats_v1_7_6_20.split.dissect(buffer, index, packet, parent)

  -- Quotation System: QuotationSystem
  index, quotation_system = gpw_wse_replayfulldepth_wats_v1_7_6_20.quotation_system.dissect(buffer, index, packet, parent)

  -- Liquidity Support Pge: bool
  index, liquidity_support_pge = gpw_wse_replayfulldepth_wats_v1_7_6_20.liquidity_support_pge.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Product Summary
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_summary.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.product_summary, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_summary.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_summary.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.product_summary.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Summary
gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_summary = {}

-- Size: Instrument Summary
gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_summary.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.last_traded_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_price_type.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.adjusted_closing_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.adjusted_closing_price_reason.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.vwap.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.no_trades.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.total_volume.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.total_value.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.opening_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.max_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.min_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.is_correction.size

-- Display: Instrument Summary
gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_summary.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Summary
gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_summary.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Last Traded Price: Price
  index, last_traded_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.last_traded_price.dissect(buffer, index, packet, parent)

  -- Closing Price: Price
  index, closing_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_price.dissect(buffer, index, packet, parent)

  -- Closing Price Type: ClosingPriceType
  index, closing_price_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.closing_price_type.dissect(buffer, index, packet, parent)

  -- Adjusted Closing Price: Price
  index, adjusted_closing_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.adjusted_closing_price.dissect(buffer, index, packet, parent)

  -- Adjusted Closing Price Reason: AdjustedClosingPriceReason
  index, adjusted_closing_price_reason = gpw_wse_replayfulldepth_wats_v1_7_6_20.adjusted_closing_price_reason.dissect(buffer, index, packet, parent)

  -- Pct Change: PercentageChange
  index, pct_change = gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change.dissect(buffer, index, packet, parent)

  -- Vwap: Price
  index, vwap = gpw_wse_replayfulldepth_wats_v1_7_6_20.vwap.dissect(buffer, index, packet, parent)

  -- No Trades: u64
  index, no_trades = gpw_wse_replayfulldepth_wats_v1_7_6_20.no_trades.dissect(buffer, index, packet, parent)

  -- Total Volume: Quantity
  index, total_volume = gpw_wse_replayfulldepth_wats_v1_7_6_20.total_volume.dissect(buffer, index, packet, parent)

  -- Total Value: Value
  index, total_value = gpw_wse_replayfulldepth_wats_v1_7_6_20.total_value.dissect(buffer, index, packet, parent)

  -- Opening Price: Price
  index, opening_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.opening_price.dissect(buffer, index, packet, parent)

  -- Max Price: Price
  index, max_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.max_price.dissect(buffer, index, packet, parent)

  -- Min Price: Price
  index, min_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.min_price.dissect(buffer, index, packet, parent)

  -- Is Correction: bool
  index, is_correction = gpw_wse_replayfulldepth_wats_v1_7_6_20.is_correction.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Summary
gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_summary.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.instrument_summary, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_summary.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_summary.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_summary.fields(buffer, offset, packet, parent)
  end
end

-- Trade Collars
gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_collars = {}

-- Size: Trade Collars
gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_collars.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_type.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.lower.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.upper.size

-- Display: Trade Collars
gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_collars.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Collars
gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_collars.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Collar Type: CollarType
  index, collar_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_type.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = gpw_wse_replayfulldepth_wats_v1_7_6_20.price.dissect(buffer, index, packet, parent)

  -- Lower: Bound
  index, lower = gpw_wse_replayfulldepth_wats_v1_7_6_20.lower.dissect(buffer, index, packet, parent)

  -- Upper: Bound
  index, upper = gpw_wse_replayfulldepth_wats_v1_7_6_20.upper.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Collars
gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_collars.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trade_collars, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_collars.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_collars.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_collars.fields(buffer, offset, packet, parent)
  end
end

-- Order Collars
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_collars = {}

-- Size: Order Collars
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_collars.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_type.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_bid.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.upper_bid.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_ask.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.upper_ask.size

-- Display: Order Collars
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_collars.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Collars
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_collars.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Collar Type: CollarType
  index, collar_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_type.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = gpw_wse_replayfulldepth_wats_v1_7_6_20.price.dissect(buffer, index, packet, parent)

  -- Lower Bid: Bound
  index, lower_bid = gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_bid.dissect(buffer, index, packet, parent)

  -- Upper Bid: Bound
  index, upper_bid = gpw_wse_replayfulldepth_wats_v1_7_6_20.upper_bid.dissect(buffer, index, packet, parent)

  -- Lower Ask: Bound
  index, lower_ask = gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_ask.dissect(buffer, index, packet, parent)

  -- Upper Ask: Bound
  index, upper_ask = gpw_wse_replayfulldepth_wats_v1_7_6_20.upper_ask.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Collars
gpw_wse_replayfulldepth_wats_v1_7_6_20.order_collars.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.order_collars, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.order_collars.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.order_collars.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.order_collars.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Status Change
gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_status_change = {}

-- Size: Instrument Status Change
gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_status_change.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_type.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.status.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.stressed_market.size

-- Display: Instrument Status Change
gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_status_change.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Status Change
gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_status_change.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Trading Phase Id: ElementId
  index, trading_phase_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_id.dissect(buffer, index, packet, parent)

  -- Trading Phase Type: TradingPhaseType
  index, trading_phase_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_type.dissect(buffer, index, packet, parent)

  -- Status: InstrumentStatus
  index, status = gpw_wse_replayfulldepth_wats_v1_7_6_20.status.dissect(buffer, index, packet, parent)

  -- Stressed Market: bool
  index, stressed_market = gpw_wse_replayfulldepth_wats_v1_7_6_20.stressed_market.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Status Change
gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_status_change.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.instrument_status_change, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_status_change.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_status_change.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_status_change.fields(buffer, offset, packet, parent)
  end
end

-- Public Product Identification
gpw_wse_replayfulldepth_wats_v1_7_6_20.public_product_identification = {}

-- Size: Public Product Identification
gpw_wse_replayfulldepth_wats_v1_7_6_20.public_product_identification.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_product_identification.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_type.size

-- Display: Public Product Identification
gpw_wse_replayfulldepth_wats_v1_7_6_20.public_product_identification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Public Product Identification
gpw_wse_replayfulldepth_wats_v1_7_6_20.public_product_identification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Product Identification Product Identification: ProductIdentification
  index, product_identification_product_identification = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_product_identification.dissect(buffer, index, packet, parent)

  -- Product Identification Type: ProductIdentificationType
  index, product_identification_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Public Product Identification
gpw_wse_replayfulldepth_wats_v1_7_6_20.public_product_identification.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.public_product_identification, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.public_product_identification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.public_product_identification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.public_product_identification.fields(buffer, offset, packet, parent)
  end
end

-- Position Report
gpw_wse_replayfulldepth_wats_v1_7_6_20.position_report = {}

-- Size: Position Report
gpw_wse_replayfulldepth_wats_v1_7_6_20.position_report.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.public_product_identification.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.pos_type.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.open_positions.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_id.size

-- Display: Position Report
gpw_wse_replayfulldepth_wats_v1_7_6_20.position_report.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Position Report
gpw_wse_replayfulldepth_wats_v1_7_6_20.position_report.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Public Product Identification: Struct of 2 fields
  index, public_product_identification = gpw_wse_replayfulldepth_wats_v1_7_6_20.public_product_identification.dissect(buffer, index, packet, parent)

  -- Pos Type: PosType
  index, pos_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.pos_type.dissect(buffer, index, packet, parent)

  -- Open Positions: u32
  index, open_positions = gpw_wse_replayfulldepth_wats_v1_7_6_20.open_positions.dissect(buffer, index, packet, parent)

  -- Trade Id: TradeId
  index, trade_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Position Report
gpw_wse_replayfulldepth_wats_v1_7_6_20.position_report.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.position_report, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.position_report.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.position_report.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.position_report.fields(buffer, offset, packet, parent)
  end
end

-- Trade
gpw_wse_replayfulldepth_wats_v1_7_6_20.trade = {}

-- Size: Trade
gpw_wse_replayfulldepth_wats_v1_7_6_20.trade.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_value_value.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_date.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_timestamp.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.public_product_identification.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.price_currency.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.price_notation.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.quantity.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_value_value.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_currency.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.mic.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.publication_timestamp.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_to_be_cleared.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.vwap.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.no_trades.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.total_volume.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.total_value.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.opening_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.max_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.min_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_market_mechanism.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_trading_mode.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_transaction_category.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_negotiation_indicator.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_agency_cross_trade_indicator.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_modification_indicator.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_benchmark_reference_price_indicator.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_special_dividend_indicator.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_off_book_automated_indicator.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_ordinary_trade_indicator.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_algorithmic_indicator.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_post_trade_deferral_reason.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_post_trade_deferral_type.size

-- Display: Trade
gpw_wse_replayfulldepth_wats_v1_7_6_20.trade.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade
gpw_wse_replayfulldepth_wats_v1_7_6_20.trade.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Settlement Value Value: Value
  index, settlement_value_value = gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_value_value.dissect(buffer, index, packet, parent)

  -- Settlement Date: Date
  index, settlement_date = gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_date.dissect(buffer, index, packet, parent)

  -- Trading Timestamp: Timestamp
  index, trading_timestamp = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_timestamp.dissect(buffer, index, packet, parent)

  -- Public Product Identification: Struct of 2 fields
  index, public_product_identification = gpw_wse_replayfulldepth_wats_v1_7_6_20.public_product_identification.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = gpw_wse_replayfulldepth_wats_v1_7_6_20.price.dissect(buffer, index, packet, parent)

  -- Price Currency: Currency
  index, price_currency = gpw_wse_replayfulldepth_wats_v1_7_6_20.price_currency.dissect(buffer, index, packet, parent)

  -- Price Notation: PriceExpressionType
  index, price_notation = gpw_wse_replayfulldepth_wats_v1_7_6_20.price_notation.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = gpw_wse_replayfulldepth_wats_v1_7_6_20.quantity.dissect(buffer, index, packet, parent)

  -- Nominal Value Value: Value
  index, nominal_value_value = gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_value_value.dissect(buffer, index, packet, parent)

  -- Nominal Currency: Currency
  index, nominal_currency = gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_currency.dissect(buffer, index, packet, parent)

  -- Mic: MicCode
  index, mic = gpw_wse_replayfulldepth_wats_v1_7_6_20.mic.dissect(buffer, index, packet, parent)

  -- Publication Timestamp: Timestamp
  index, publication_timestamp = gpw_wse_replayfulldepth_wats_v1_7_6_20.publication_timestamp.dissect(buffer, index, packet, parent)

  -- Trade Id: TradeId
  index, trade_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_id.dissect(buffer, index, packet, parent)

  -- Trade To Be Cleared: bool
  index, trade_to_be_cleared = gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_to_be_cleared.dissect(buffer, index, packet, parent)

  -- Pct Change: PercentageChange
  index, pct_change = gpw_wse_replayfulldepth_wats_v1_7_6_20.pct_change.dissect(buffer, index, packet, parent)

  -- Vwap: Price
  index, vwap = gpw_wse_replayfulldepth_wats_v1_7_6_20.vwap.dissect(buffer, index, packet, parent)

  -- No Trades: u64
  index, no_trades = gpw_wse_replayfulldepth_wats_v1_7_6_20.no_trades.dissect(buffer, index, packet, parent)

  -- Total Volume: Quantity
  index, total_volume = gpw_wse_replayfulldepth_wats_v1_7_6_20.total_volume.dissect(buffer, index, packet, parent)

  -- Total Value: Value
  index, total_value = gpw_wse_replayfulldepth_wats_v1_7_6_20.total_value.dissect(buffer, index, packet, parent)

  -- Opening Price: Price
  index, opening_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.opening_price.dissect(buffer, index, packet, parent)

  -- Max Price: Price
  index, max_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.max_price.dissect(buffer, index, packet, parent)

  -- Min Price: Price
  index, min_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.min_price.dissect(buffer, index, packet, parent)

  -- Mmt Market Mechanism: MmtMarketMechanism
  index, mmt_market_mechanism = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_market_mechanism.dissect(buffer, index, packet, parent)

  -- Mmt Trading Mode: MmtTradingMode
  index, mmt_trading_mode = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_trading_mode.dissect(buffer, index, packet, parent)

  -- Mmt Transaction Category: MmtTransactionCategory
  index, mmt_transaction_category = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_transaction_category.dissect(buffer, index, packet, parent)

  -- Mmt Negotiation Indicator: MmtNegotiationIndicator
  index, mmt_negotiation_indicator = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_negotiation_indicator.dissect(buffer, index, packet, parent)

  -- Mmt Agency Cross Trade Indicator: MmtAgencyCrossTradeIndicator
  index, mmt_agency_cross_trade_indicator = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_agency_cross_trade_indicator.dissect(buffer, index, packet, parent)

  -- Mmt Modification Indicator: MmtModificationIndicator
  index, mmt_modification_indicator = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_modification_indicator.dissect(buffer, index, packet, parent)

  -- Mmt Benchmark Reference Price Indicator: MmtBenchmarkReferencePriceIndicator
  index, mmt_benchmark_reference_price_indicator = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_benchmark_reference_price_indicator.dissect(buffer, index, packet, parent)

  -- Mmt Special Dividend Indicator: MmtSpecialDividendIndicator
  index, mmt_special_dividend_indicator = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_special_dividend_indicator.dissect(buffer, index, packet, parent)

  -- Mmt Off Book Automated Indicator: MmtOffBookAutomatedIndicator
  index, mmt_off_book_automated_indicator = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_off_book_automated_indicator.dissect(buffer, index, packet, parent)

  -- Mmt Ordinary Trade Indicator: MmtOrdinaryTradeIndicator
  index, mmt_ordinary_trade_indicator = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_ordinary_trade_indicator.dissect(buffer, index, packet, parent)

  -- Mmt Algorithmic Indicator: MmtAlgorithmicIndicator
  index, mmt_algorithmic_indicator = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_algorithmic_indicator.dissect(buffer, index, packet, parent)

  -- Mmt Post Trade Deferral Reason: MmtPostTradeDeferralReason
  index, mmt_post_trade_deferral_reason = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_post_trade_deferral_reason.dissect(buffer, index, packet, parent)

  -- Mmt Post Trade Deferral Type: MmtPostTradeDeferralType
  index, mmt_post_trade_deferral_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.mmt_post_trade_deferral_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade
gpw_wse_replayfulldepth_wats_v1_7_6_20.trade.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trade, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.trade.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.trade.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.trade.fields(buffer, offset, packet, parent)
  end
end

-- Top Price Level Update
gpw_wse_replayfulldepth_wats_v1_7_6_20.top_price_level_update = {}

-- Size: Top Price Level Update
gpw_wse_replayfulldepth_wats_v1_7_6_20.top_price_level_update.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.quantity.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.side.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.order_count.size

-- Display: Top Price Level Update
gpw_wse_replayfulldepth_wats_v1_7_6_20.top_price_level_update.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Price Level Update
gpw_wse_replayfulldepth_wats_v1_7_6_20.top_price_level_update.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = gpw_wse_replayfulldepth_wats_v1_7_6_20.price.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = gpw_wse_replayfulldepth_wats_v1_7_6_20.quantity.dissect(buffer, index, packet, parent)

  -- Side: OrderSide
  index, side = gpw_wse_replayfulldepth_wats_v1_7_6_20.side.dissect(buffer, index, packet, parent)

  -- Order Count: OrderCount
  index, order_count = gpw_wse_replayfulldepth_wats_v1_7_6_20.order_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Price Level Update
gpw_wse_replayfulldepth_wats_v1_7_6_20.top_price_level_update.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.top_price_level_update, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.top_price_level_update.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.top_price_level_update.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.top_price_level_update.fields(buffer, offset, packet, parent)
  end
end

-- Price Level
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_level = {}

-- Size: Price Level
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_level.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.is_encrypted.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.encryption_offset.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.encryption_key_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.quantity.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.order_count.size

-- Display: Price Level
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_level.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Level
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_level.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Is Encrypted: bool
  index, is_encrypted = gpw_wse_replayfulldepth_wats_v1_7_6_20.is_encrypted.dissect(buffer, index, packet, parent)

  -- Encryption Offset: u64
  index, encryption_offset = gpw_wse_replayfulldepth_wats_v1_7_6_20.encryption_offset.dissect(buffer, index, packet, parent)

  -- Encryption Key Id: ElementId
  index, encryption_key_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.encryption_key_id.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = gpw_wse_replayfulldepth_wats_v1_7_6_20.price.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = gpw_wse_replayfulldepth_wats_v1_7_6_20.quantity.dissect(buffer, index, packet, parent)

  -- Order Count: OrderCount
  index, order_count = gpw_wse_replayfulldepth_wats_v1_7_6_20.order_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Level
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_level.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.price_level, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.price_level.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.price_level.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.price_level.fields(buffer, offset, packet, parent)
  end
end

-- Sell
gpw_wse_replayfulldepth_wats_v1_7_6_20.sell = {}

-- Size: Sell
gpw_wse_replayfulldepth_wats_v1_7_6_20.sell.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.price_level.size

-- Display: Sell
gpw_wse_replayfulldepth_wats_v1_7_6_20.sell.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sell
gpw_wse_replayfulldepth_wats_v1_7_6_20.sell.fields = function(buffer, offset, packet, parent, sell_index)
  local index = offset

  -- Implicit Sell Index
  if sell_index ~= nil and show.indexes then
    local iteration = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.sell_index, sell_index)
    iteration:set_generated()
  end

  -- Price Level: Struct of 6 fields
  index, price_level = gpw_wse_replayfulldepth_wats_v1_7_6_20.price_level.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sell
gpw_wse_replayfulldepth_wats_v1_7_6_20.sell.dissect = function(buffer, offset, packet, parent, sell_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.sell, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.sell.fields(buffer, offset, packet, parent, sell_index)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.sell.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.sell.fields(buffer, offset, packet, parent, sell_index)
  end
end

-- Buy
gpw_wse_replayfulldepth_wats_v1_7_6_20.buy = {}

-- Size: Buy
gpw_wse_replayfulldepth_wats_v1_7_6_20.buy.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.price_level.size

-- Display: Buy
gpw_wse_replayfulldepth_wats_v1_7_6_20.buy.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Buy
gpw_wse_replayfulldepth_wats_v1_7_6_20.buy.fields = function(buffer, offset, packet, parent, buy_index)
  local index = offset

  -- Implicit Buy Index
  if buy_index ~= nil and show.indexes then
    local iteration = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.buy_index, buy_index)
    iteration:set_generated()
  end

  -- Price Level: Struct of 6 fields
  index, price_level = gpw_wse_replayfulldepth_wats_v1_7_6_20.price_level.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Buy
gpw_wse_replayfulldepth_wats_v1_7_6_20.buy.dissect = function(buffer, offset, packet, parent, buy_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.buy, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.buy.fields(buffer, offset, packet, parent, buy_index)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.buy.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.buy.fields(buffer, offset, packet, parent, buy_index)
  end
end

-- Price Level Snapshot
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_level_snapshot = {}

-- Size: Price Level Snapshot
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_level_snapshot.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.max_depth.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.mm_buy_quote_level.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.mm_sell_quote_level.size + 
  5 * gpw_wse_replayfulldepth_wats_v1_7_6_20.buy.size + 
  5 * gpw_wse_replayfulldepth_wats_v1_7_6_20.sell.size

-- Display: Price Level Snapshot
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_level_snapshot.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Level Snapshot
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_level_snapshot.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Max Depth: u8
  index, max_depth = gpw_wse_replayfulldepth_wats_v1_7_6_20.max_depth.dissect(buffer, index, packet, parent)

  -- Mm Buy Quote Level: u8
  index, mm_buy_quote_level = gpw_wse_replayfulldepth_wats_v1_7_6_20.mm_buy_quote_level.dissect(buffer, index, packet, parent)

  -- Mm Sell Quote Level: u8
  index, mm_sell_quote_level = gpw_wse_replayfulldepth_wats_v1_7_6_20.mm_sell_quote_level.dissect(buffer, index, packet, parent)

  -- Array Of: Buy
  for buy_index = 1, 5 do
    index, buy = gpw_wse_replayfulldepth_wats_v1_7_6_20.buy.dissect(buffer, index, packet, parent, buy_index)
  end

  -- Array Of: Sell
  for sell_index = 1, 5 do
    index, sell = gpw_wse_replayfulldepth_wats_v1_7_6_20.sell.dissect(buffer, index, packet, parent, sell_index)
  end

  return index
end

-- Dissect: Price Level Snapshot
gpw_wse_replayfulldepth_wats_v1_7_6_20.price_level_snapshot.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.price_level_snapshot, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.price_level_snapshot.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.price_level_snapshot.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.price_level_snapshot.fields(buffer, offset, packet, parent)
  end
end

-- Auction Update
gpw_wse_replayfulldepth_wats_v1_7_6_20.auction_update = {}

-- Size: Auction Update
gpw_wse_replayfulldepth_wats_v1_7_6_20.auction_update.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.indicative_matching_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.indicative_matching_volume.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.total_sell_quantity_at_imp.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.total_buy_quantity_at_imp.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.best_sell_level.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.best_sell_level_quantity.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.best_buy_level.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.best_buy_level_quantity.size

-- Display: Auction Update
gpw_wse_replayfulldepth_wats_v1_7_6_20.auction_update.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Update
gpw_wse_replayfulldepth_wats_v1_7_6_20.auction_update.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Indicative Matching Price: Price
  index, indicative_matching_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.indicative_matching_price.dissect(buffer, index, packet, parent)

  -- Indicative Matching Volume: Quantity
  index, indicative_matching_volume = gpw_wse_replayfulldepth_wats_v1_7_6_20.indicative_matching_volume.dissect(buffer, index, packet, parent)

  -- Total Sell Quantity At Imp: Quantity
  index, total_sell_quantity_at_imp = gpw_wse_replayfulldepth_wats_v1_7_6_20.total_sell_quantity_at_imp.dissect(buffer, index, packet, parent)

  -- Total Buy Quantity At Imp: Quantity
  index, total_buy_quantity_at_imp = gpw_wse_replayfulldepth_wats_v1_7_6_20.total_buy_quantity_at_imp.dissect(buffer, index, packet, parent)

  -- Best Sell Level: Price
  index, best_sell_level = gpw_wse_replayfulldepth_wats_v1_7_6_20.best_sell_level.dissect(buffer, index, packet, parent)

  -- Best Sell Level Quantity: Quantity
  index, best_sell_level_quantity = gpw_wse_replayfulldepth_wats_v1_7_6_20.best_sell_level_quantity.dissect(buffer, index, packet, parent)

  -- Best Buy Level: Price
  index, best_buy_level = gpw_wse_replayfulldepth_wats_v1_7_6_20.best_buy_level.dissect(buffer, index, packet, parent)

  -- Best Buy Level Quantity: Quantity
  index, best_buy_level_quantity = gpw_wse_replayfulldepth_wats_v1_7_6_20.best_buy_level_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Update
gpw_wse_replayfulldepth_wats_v1_7_6_20.auction_update.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.auction_update, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.auction_update.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.auction_update.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.auction_update.fields(buffer, offset, packet, parent)
  end
end

-- Auction Summary
gpw_wse_replayfulldepth_wats_v1_7_6_20.auction_summary = {}

-- Size: Auction Summary
gpw_wse_replayfulldepth_wats_v1_7_6_20.auction_summary.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.quantity.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.auction_type.size

-- Display: Auction Summary
gpw_wse_replayfulldepth_wats_v1_7_6_20.auction_summary.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary
gpw_wse_replayfulldepth_wats_v1_7_6_20.auction_summary.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = gpw_wse_replayfulldepth_wats_v1_7_6_20.price.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = gpw_wse_replayfulldepth_wats_v1_7_6_20.quantity.dissect(buffer, index, packet, parent)

  -- Auction Type: AuctionType
  index, auction_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.auction_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary
gpw_wse_replayfulldepth_wats_v1_7_6_20.auction_summary.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.auction_summary, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.auction_summary.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.auction_summary.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.auction_summary.fields(buffer, offset, packet, parent)
  end
end

-- Presence Flags Index Portfolio Entry Presence Flags
gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_index_portfolio_entry_presence_flags = {}

-- Size: Presence Flags Index Portfolio Entry Presence Flags
gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_index_portfolio_entry_presence_flags.size = 1

-- Display: Presence Flags Index Portfolio Entry Presence Flags
gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_index_portfolio_entry_presence_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Has Instrument Id flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Has Instrument Id"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Presence Flags Index Portfolio Entry Presence Flags
gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_index_portfolio_entry_presence_flags.bits = function(range, value, packet, parent)

  -- Has Instrument Id: 1 Bit
  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.has_instrument_id, range, value)

  -- Reserved 17 Index Portfolio Entry Presence Flags: 7 Bit
  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.reserved_17_index_portfolio_entry_presence_flags, range, value)
end

-- Dissect: Presence Flags Index Portfolio Entry Presence Flags
gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_index_portfolio_entry_presence_flags.dissect = function(buffer, offset, packet, parent)
  local size = gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_index_portfolio_entry_presence_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_index_portfolio_entry_presence_flags.display(range, value, packet, parent)
  local element = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.presence_flags_index_portfolio_entry_presence_flags, range, display)

  if show.structs then
    gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_index_portfolio_entry_presence_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Index Portfolio Entry
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_portfolio_entry = {}

-- Size: Index Portfolio Entry
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_portfolio_entry.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.index_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_index_portfolio_entry_presence_flags.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.public_product_identification.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.mic.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.currency.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_packet.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.suspended.size

-- Display: Index Portfolio Entry
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_portfolio_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Portfolio Entry
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_portfolio_entry.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: ElementId
  index, id = gpw_wse_replayfulldepth_wats_v1_7_6_20.id.dissect(buffer, index, packet, parent)

  -- Index Id: ElementId
  index, index_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_id.dissect(buffer, index, packet, parent)

  -- Presence Flags Index Portfolio Entry Presence Flags: Struct of 2 fields
  index, presence_flags_index_portfolio_entry_presence_flags = gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_index_portfolio_entry_presence_flags.dissect(buffer, index, packet, parent)

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Public Product Identification: Struct of 2 fields
  index, public_product_identification = gpw_wse_replayfulldepth_wats_v1_7_6_20.public_product_identification.dissect(buffer, index, packet, parent)

  -- Mic: MicCode
  index, mic = gpw_wse_replayfulldepth_wats_v1_7_6_20.mic.dissect(buffer, index, packet, parent)

  -- Currency: Currency
  index, currency = gpw_wse_replayfulldepth_wats_v1_7_6_20.currency.dissect(buffer, index, packet, parent)

  -- Instrument Packet: u64
  index, instrument_packet = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_packet.dissect(buffer, index, packet, parent)

  -- Suspended: bool
  index, suspended = gpw_wse_replayfulldepth_wats_v1_7_6_20.suspended.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Portfolio Entry
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_portfolio_entry.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.index_portfolio_entry, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_portfolio_entry.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_portfolio_entry.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.index_portfolio_entry.fields(buffer, offset, packet, parent)
  end
end

-- Product Identification Public Product Identification
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_public_product_identification = {}

-- Size: Product Identification Public Product Identification
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_public_product_identification.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_product_identification.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_type.size

-- Display: Product Identification Public Product Identification
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_public_product_identification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Product Identification Public Product Identification
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_public_product_identification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Product Identification Product Identification: ProductIdentification
  index, product_identification_product_identification = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_product_identification.dissect(buffer, index, packet, parent)

  -- Product Identification Type: ProductIdentificationType
  index, product_identification_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Product Identification Public Product Identification
gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_public_product_identification.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.product_identification_public_product_identification, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_public_product_identification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_public_product_identification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_public_product_identification.fields(buffer, offset, packet, parent)
  end
end

-- Index Underlying
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_underlying = {}

-- Size: Index Underlying
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_underlying.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_public_product_identification.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.index_underlying_type.size

-- Display: Index Underlying
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_underlying.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Underlying
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_underlying.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Product Identification Public Product Identification: Struct of 2 fields
  index, product_identification_public_product_identification = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_public_product_identification.dissect(buffer, index, packet, parent)

  -- Index Underlying Type: IndexUnderlyingType
  index, index_underlying_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_underlying_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Underlying
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_underlying.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.index_underlying, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_underlying.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_underlying.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.index_underlying.fields(buffer, offset, packet, parent)
  end
end

-- Items
gpw_wse_replayfulldepth_wats_v1_7_6_20.items = {}

-- Size: Items
gpw_wse_replayfulldepth_wats_v1_7_6_20.items.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.index_underlying.size

-- Display: Items
gpw_wse_replayfulldepth_wats_v1_7_6_20.items.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Items
gpw_wse_replayfulldepth_wats_v1_7_6_20.items.fields = function(buffer, offset, packet, parent, items_index)
  local index = offset

  -- Implicit Items Index
  if items_index ~= nil and show.indexes then
    local iteration = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.items_index, items_index)
    iteration:set_generated()
  end

  -- Index Underlying: Struct of 2 fields
  index, index_underlying = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_underlying.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Items
gpw_wse_replayfulldepth_wats_v1_7_6_20.items.dissect = function(buffer, offset, packet, parent, items_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.items, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.items.fields(buffer, offset, packet, parent, items_index)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.items.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.items.fields(buffer, offset, packet, parent, items_index)
  end
end

-- Index Underlyings
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_underlyings = {}

-- Size: Index Underlyings
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_underlyings.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.count.size + 
  3 * gpw_wse_replayfulldepth_wats_v1_7_6_20.items.size

-- Display: Index Underlyings
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_underlyings.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Underlyings
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_underlyings.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Count: u8
  index, count = gpw_wse_replayfulldepth_wats_v1_7_6_20.count.dissect(buffer, index, packet, parent)

  -- Array Of: Items
  for items_index = 1, 3 do
    index, items = gpw_wse_replayfulldepth_wats_v1_7_6_20.items.dissect(buffer, index, packet, parent, items_index)
  end

  return index
end

-- Dissect: Index Underlyings
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_underlyings.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.index_underlyings, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_underlyings.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_underlyings.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.index_underlyings.fields(buffer, offset, packet, parent)
  end
end

-- Presence Flags Index Params Presence Flags
gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_index_params_presence_flags = {}

-- Size: Presence Flags Index Params Presence Flags
gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_index_params_presence_flags.size = 1

-- Display: Presence Flags Index Params Presence Flags
gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_index_params_presence_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Has Days Since Last Publication flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Has Days Since Last Publication"
  end
  -- Is Has Number Of Dividends flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Has Number Of Dividends"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Presence Flags Index Params Presence Flags
gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_index_params_presence_flags.bits = function(range, value, packet, parent)

  -- Has Days Since Last Publication: 1 Bit
  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.has_days_since_last_publication, range, value)

  -- Has Number Of Dividends: 1 Bit
  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.has_number_of_dividends, range, value)

  -- Reserved 27 Index Params Presence Flags: 6 Bit
  parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.reserved_27_index_params_presence_flags, range, value)
end

-- Dissect: Presence Flags Index Params Presence Flags
gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_index_params_presence_flags.dissect = function(buffer, offset, packet, parent)
  local size = gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_index_params_presence_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_index_params_presence_flags.display(range, value, packet, parent)
  local element = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.presence_flags_index_params_presence_flags, range, display)

  if show.structs then
    gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_index_params_presence_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Index Params
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_params = {}

-- Size: Index Params
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_params.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.index_base_value.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.index_base_capitalisation.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.index_base_date.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.correction_coefficient.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.num_of_components.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.index_publication_schedule.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.index_type.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_index_params_presence_flags.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.days_since_last_publication.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.number_of_dividends.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.index_underlyings.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.publication_order.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.currency.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.date_validity.size

-- Display: Index Params
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_params.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Params
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_params.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Index Base Value: IndexValue
  index, index_base_value = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_base_value.dissect(buffer, index, packet, parent)

  -- Index Base Capitalisation: Value
  index, index_base_capitalisation = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_base_capitalisation.dissect(buffer, index, packet, parent)

  -- Index Base Date: Date
  index, index_base_date = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_base_date.dissect(buffer, index, packet, parent)

  -- Correction Coefficient: Number
  index, correction_coefficient = gpw_wse_replayfulldepth_wats_v1_7_6_20.correction_coefficient.dissect(buffer, index, packet, parent)

  -- Num Of Components: u16
  index, num_of_components = gpw_wse_replayfulldepth_wats_v1_7_6_20.num_of_components.dissect(buffer, index, packet, parent)

  -- Index Publication Schedule: IndexPublicationSchedule
  index, index_publication_schedule = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_publication_schedule.dissect(buffer, index, packet, parent)

  -- Index Type: IndexType
  index, index_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_type.dissect(buffer, index, packet, parent)

  -- Presence Flags Index Params Presence Flags: Struct of 3 fields
  index, presence_flags_index_params_presence_flags = gpw_wse_replayfulldepth_wats_v1_7_6_20.presence_flags_index_params_presence_flags.dissect(buffer, index, packet, parent)

  -- Days Since Last Publication: u8
  index, days_since_last_publication = gpw_wse_replayfulldepth_wats_v1_7_6_20.days_since_last_publication.dissect(buffer, index, packet, parent)

  -- Number Of Dividends: u16
  index, number_of_dividends = gpw_wse_replayfulldepth_wats_v1_7_6_20.number_of_dividends.dissect(buffer, index, packet, parent)

  -- Index Underlyings: Struct of 2 fields
  index, index_underlyings = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_underlyings.dissect(buffer, index, packet, parent)

  -- Publication Order: u16
  index, publication_order = gpw_wse_replayfulldepth_wats_v1_7_6_20.publication_order.dissect(buffer, index, packet, parent)

  -- Currency: Currency
  index, currency = gpw_wse_replayfulldepth_wats_v1_7_6_20.currency.dissect(buffer, index, packet, parent)

  -- Date Validity: Date
  index, date_validity = gpw_wse_replayfulldepth_wats_v1_7_6_20.date_validity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Params
gpw_wse_replayfulldepth_wats_v1_7_6_20.index_params.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.index_params, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_params.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.index_params.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.index_params.fields(buffer, offset, packet, parent)
  end
end

-- Indexation Table Entry
gpw_wse_replayfulldepth_wats_v1_7_6_20.indexation_table_entry = {}

-- Size: Indexation Table Entry
gpw_wse_replayfulldepth_wats_v1_7_6_20.indexation_table_entry.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.product_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.indexation_table_entry_date.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.indexation_table_entry_value.size

-- Display: Indexation Table Entry
gpw_wse_replayfulldepth_wats_v1_7_6_20.indexation_table_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indexation Table Entry
gpw_wse_replayfulldepth_wats_v1_7_6_20.indexation_table_entry.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Product Id: ElementId
  index, product_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_id.dissect(buffer, index, packet, parent)

  -- Indexation Table Entry Date: Date
  index, indexation_table_entry_date = gpw_wse_replayfulldepth_wats_v1_7_6_20.indexation_table_entry_date.dissect(buffer, index, packet, parent)

  -- Indexation Table Entry Value: Number
  index, indexation_table_entry_value = gpw_wse_replayfulldepth_wats_v1_7_6_20.indexation_table_entry_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Indexation Table Entry
gpw_wse_replayfulldepth_wats_v1_7_6_20.indexation_table_entry.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.indexation_table_entry, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.indexation_table_entry.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.indexation_table_entry.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.indexation_table_entry.fields(buffer, offset, packet, parent)
  end
end

-- Accrued Interest Table Entry
gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_table_entry = {}

-- Size: Accrued Interest Table Entry
gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_table_entry.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.product_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_table_entry_date.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_table_entry_value.size

-- Display: Accrued Interest Table Entry
gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_table_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Accrued Interest Table Entry
gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_table_entry.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Product Id: ElementId
  index, product_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_id.dissect(buffer, index, packet, parent)

  -- Accrued Interest Table Entry Date: Date
  index, accrued_interest_table_entry_date = gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_table_entry_date.dissect(buffer, index, packet, parent)

  -- Accrued Interest Table Entry Value: Number
  index, accrued_interest_table_entry_value = gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_table_entry_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Accrued Interest Table Entry
gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_table_entry.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.accrued_interest_table_entry, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_table_entry.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_table_entry.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_table_entry.fields(buffer, offset, packet, parent)
  end
end

-- Instrument
gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument = {}

-- Size: Instrument
gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.product_type.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.product_subtype.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.first_trading_date.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.last_trading_date.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.product_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.currency.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.iceberg_min_value.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.lot_size.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.price_expression_type.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.market_structure_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.tick_table_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.reference_instrument_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_group_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_schedule_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.description.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.mic.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_value_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_value_type.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.multiplier_multiplier.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.strike_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.strike_price_currency.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_product_identification.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_type.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_calendar_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.bond_coupon_type.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_min_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_max_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_min_quantity.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_max_quantity.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_max_value.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_min_value.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.liquidity.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.market_model_type.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.issuer.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.issuer_reg_country.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.underlying_instrument_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.product_code.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.cfi.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.fisn.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.issue_size.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_currency.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.us_indicator.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.expiry_date.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.version_number.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_type.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.option_type.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.exercise_type.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.product_name.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.reference_price.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.status.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.initial_phase_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.threshold_max.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.threshold_min.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.is_leverage.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_value.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.kid.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.kid_issue_date.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.value_at_risk.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.external_underlying_id.size

-- Display: Instrument
gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument
gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Product Type: ProductType
  index, product_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_type.dissect(buffer, index, packet, parent)

  -- Product Subtype: ProductSubtype
  index, product_subtype = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_subtype.dissect(buffer, index, packet, parent)

  -- First Trading Date: Date
  index, first_trading_date = gpw_wse_replayfulldepth_wats_v1_7_6_20.first_trading_date.dissect(buffer, index, packet, parent)

  -- Last Trading Date: Date
  index, last_trading_date = gpw_wse_replayfulldepth_wats_v1_7_6_20.last_trading_date.dissect(buffer, index, packet, parent)

  -- Product Id: ElementId
  index, product_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_id.dissect(buffer, index, packet, parent)

  -- Currency: Currency
  index, currency = gpw_wse_replayfulldepth_wats_v1_7_6_20.currency.dissect(buffer, index, packet, parent)

  -- Iceberg Min Value: Value
  index, iceberg_min_value = gpw_wse_replayfulldepth_wats_v1_7_6_20.iceberg_min_value.dissect(buffer, index, packet, parent)

  -- Lot Size: LotSize
  index, lot_size = gpw_wse_replayfulldepth_wats_v1_7_6_20.lot_size.dissect(buffer, index, packet, parent)

  -- Price Expression Type: PriceExpressionType
  index, price_expression_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.price_expression_type.dissect(buffer, index, packet, parent)

  -- Calendar Id: ElementId
  index, calendar_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_id.dissect(buffer, index, packet, parent)

  -- Market Structure Id: ElementId
  index, market_structure_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.market_structure_id.dissect(buffer, index, packet, parent)

  -- Tick Table Id: ElementId
  index, tick_table_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.tick_table_id.dissect(buffer, index, packet, parent)

  -- Reference Instrument Id: ElementId
  index, reference_instrument_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.reference_instrument_id.dissect(buffer, index, packet, parent)

  -- Collar Group Id: ElementId
  index, collar_group_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_group_id.dissect(buffer, index, packet, parent)

  -- Trading Schedule Id: ElementId
  index, trading_schedule_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_schedule_id.dissect(buffer, index, packet, parent)

  -- Description: InstrumentDescription
  index, description = gpw_wse_replayfulldepth_wats_v1_7_6_20.description.dissect(buffer, index, packet, parent)

  -- Mic: MicCode
  index, mic = gpw_wse_replayfulldepth_wats_v1_7_6_20.mic.dissect(buffer, index, packet, parent)

  -- Nominal Value Price: Price
  index, nominal_value_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_value_price.dissect(buffer, index, packet, parent)

  -- Nominal Value Type: NominalValueType
  index, nominal_value_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_value_type.dissect(buffer, index, packet, parent)

  -- Multiplier Multiplier: Multiplier
  index, multiplier_multiplier = gpw_wse_replayfulldepth_wats_v1_7_6_20.multiplier_multiplier.dissect(buffer, index, packet, parent)

  -- Strike Price: Price
  index, strike_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.strike_price.dissect(buffer, index, packet, parent)

  -- Strike Price Currency: Currency
  index, strike_price_currency = gpw_wse_replayfulldepth_wats_v1_7_6_20.strike_price_currency.dissect(buffer, index, packet, parent)

  -- Product Identification Product Identification: ProductIdentification
  index, product_identification_product_identification = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_product_identification.dissect(buffer, index, packet, parent)

  -- Product Identification Type: ProductIdentificationType
  index, product_identification_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_type.dissect(buffer, index, packet, parent)

  -- Settlement Calendar Id: ElementId
  index, settlement_calendar_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_calendar_id.dissect(buffer, index, packet, parent)

  -- Bond Coupon Type: CouponType
  index, bond_coupon_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.bond_coupon_type.dissect(buffer, index, packet, parent)

  -- Pre Trade Check Min Price: Price
  index, pre_trade_check_min_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_min_price.dissect(buffer, index, packet, parent)

  -- Pre Trade Check Max Price: Price
  index, pre_trade_check_max_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_max_price.dissect(buffer, index, packet, parent)

  -- Pre Trade Check Min Quantity: Quantity
  index, pre_trade_check_min_quantity = gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_min_quantity.dissect(buffer, index, packet, parent)

  -- Pre Trade Check Max Quantity: Quantity
  index, pre_trade_check_max_quantity = gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_max_quantity.dissect(buffer, index, packet, parent)

  -- Pre Trade Check Max Value: Value
  index, pre_trade_check_max_value = gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_max_value.dissect(buffer, index, packet, parent)

  -- Pre Trade Check Min Value: Value
  index, pre_trade_check_min_value = gpw_wse_replayfulldepth_wats_v1_7_6_20.pre_trade_check_min_value.dissect(buffer, index, packet, parent)

  -- Liquidity: bool
  index, liquidity = gpw_wse_replayfulldepth_wats_v1_7_6_20.liquidity.dissect(buffer, index, packet, parent)

  -- Market Model Type: MarketModelType
  index, market_model_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.market_model_type.dissect(buffer, index, packet, parent)

  -- Issuer: Issuer
  index, issuer = gpw_wse_replayfulldepth_wats_v1_7_6_20.issuer.dissect(buffer, index, packet, parent)

  -- Issuer Reg Country: Country
  index, issuer_reg_country = gpw_wse_replayfulldepth_wats_v1_7_6_20.issuer_reg_country.dissect(buffer, index, packet, parent)

  -- Underlying Instrument Id: ElementId
  index, underlying_instrument_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.underlying_instrument_id.dissect(buffer, index, packet, parent)

  -- Product Code: Code
  index, product_code = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_code.dissect(buffer, index, packet, parent)

  -- Cfi: CfiCode
  index, cfi = gpw_wse_replayfulldepth_wats_v1_7_6_20.cfi.dissect(buffer, index, packet, parent)

  -- Fisn: FisnCode
  index, fisn = gpw_wse_replayfulldepth_wats_v1_7_6_20.fisn.dissect(buffer, index, packet, parent)

  -- Issue Size: u64
  index, issue_size = gpw_wse_replayfulldepth_wats_v1_7_6_20.issue_size.dissect(buffer, index, packet, parent)

  -- Nominal Currency: Currency
  index, nominal_currency = gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_currency.dissect(buffer, index, packet, parent)

  -- Us Indicator: UsIndicator
  index, us_indicator = gpw_wse_replayfulldepth_wats_v1_7_6_20.us_indicator.dissect(buffer, index, packet, parent)

  -- Expiry Date: Date
  index, expiry_date = gpw_wse_replayfulldepth_wats_v1_7_6_20.expiry_date.dissect(buffer, index, packet, parent)

  -- Version Number: u8
  index, version_number = gpw_wse_replayfulldepth_wats_v1_7_6_20.version_number.dissect(buffer, index, packet, parent)

  -- Settlement Type: SettlementType
  index, settlement_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.settlement_type.dissect(buffer, index, packet, parent)

  -- Option Type: OptionType
  index, option_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.option_type.dissect(buffer, index, packet, parent)

  -- Exercise Type: ExerciseType
  index, exercise_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.exercise_type.dissect(buffer, index, packet, parent)

  -- Product Name: Name
  index, product_name = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_name.dissect(buffer, index, packet, parent)

  -- Reference Price: Price
  index, reference_price = gpw_wse_replayfulldepth_wats_v1_7_6_20.reference_price.dissect(buffer, index, packet, parent)

  -- Status: InstrumentStatus
  index, status = gpw_wse_replayfulldepth_wats_v1_7_6_20.status.dissect(buffer, index, packet, parent)

  -- Initial Phase Id: ElementId
  index, initial_phase_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.initial_phase_id.dissect(buffer, index, packet, parent)

  -- Threshold Max: Price
  index, threshold_max = gpw_wse_replayfulldepth_wats_v1_7_6_20.threshold_max.dissect(buffer, index, packet, parent)

  -- Threshold Min: Price
  index, threshold_min = gpw_wse_replayfulldepth_wats_v1_7_6_20.threshold_min.dissect(buffer, index, packet, parent)

  -- Is Leverage: LeverageFlag
  index, is_leverage = gpw_wse_replayfulldepth_wats_v1_7_6_20.is_leverage.dissect(buffer, index, packet, parent)

  -- Accrued Interest Value: Number
  index, accrued_interest_value = gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_value.dissect(buffer, index, packet, parent)

  -- Kid: Kid
  index, kid = gpw_wse_replayfulldepth_wats_v1_7_6_20.kid.dissect(buffer, index, packet, parent)

  -- Kid Issue Date: Date
  index, kid_issue_date = gpw_wse_replayfulldepth_wats_v1_7_6_20.kid_issue_date.dissect(buffer, index, packet, parent)

  -- Value At Risk: u8
  index, value_at_risk = gpw_wse_replayfulldepth_wats_v1_7_6_20.value_at_risk.dissect(buffer, index, packet, parent)

  -- External Underlying Id: ElementId
  index, external_underlying_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.external_underlying_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument
gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.instrument, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument.fields(buffer, offset, packet, parent)
  end
end

-- External Underlying
gpw_wse_replayfulldepth_wats_v1_7_6_20.external_underlying = {}

-- Size: External Underlying
gpw_wse_replayfulldepth_wats_v1_7_6_20.external_underlying.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.external_underlying_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_product_identification.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_type.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.product_code.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.product_name.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.mic.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_currency.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_currency.size

-- Display: External Underlying
gpw_wse_replayfulldepth_wats_v1_7_6_20.external_underlying.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: External Underlying
gpw_wse_replayfulldepth_wats_v1_7_6_20.external_underlying.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- External Underlying Id: ElementId
  index, external_underlying_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.external_underlying_id.dissect(buffer, index, packet, parent)

  -- Product Identification Product Identification: ProductIdentification
  index, product_identification_product_identification = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_product_identification.dissect(buffer, index, packet, parent)

  -- Product Identification Type: ProductIdentificationType
  index, product_identification_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_identification_type.dissect(buffer, index, packet, parent)

  -- Product Code: Code
  index, product_code = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_code.dissect(buffer, index, packet, parent)

  -- Product Name: Name
  index, product_name = gpw_wse_replayfulldepth_wats_v1_7_6_20.product_name.dissect(buffer, index, packet, parent)

  -- Mic: MicCode
  index, mic = gpw_wse_replayfulldepth_wats_v1_7_6_20.mic.dissect(buffer, index, packet, parent)

  -- Nominal Currency: Currency
  index, nominal_currency = gpw_wse_replayfulldepth_wats_v1_7_6_20.nominal_currency.dissect(buffer, index, packet, parent)

  -- Trading Currency: Currency
  index, trading_currency = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_currency.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: External Underlying
gpw_wse_replayfulldepth_wats_v1_7_6_20.external_underlying.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.external_underlying, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.external_underlying.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.external_underlying.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.external_underlying.fields(buffer, offset, packet, parent)
  end
end

-- Collar Group
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_group = {}

-- Size: Collar Group
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_group.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.order_static_collar_table_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.order_dynamic_collar_table_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_static_collar_table_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_dynamic_collar_table_id.size

-- Display: Collar Group
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Collar Group
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_group.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: ElementId
  index, id = gpw_wse_replayfulldepth_wats_v1_7_6_20.id.dissect(buffer, index, packet, parent)

  -- Order Static Collar Table Id: ElementId
  index, order_static_collar_table_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.order_static_collar_table_id.dissect(buffer, index, packet, parent)

  -- Order Dynamic Collar Table Id: ElementId
  index, order_dynamic_collar_table_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.order_dynamic_collar_table_id.dissect(buffer, index, packet, parent)

  -- Trade Static Collar Table Id: ElementId
  index, trade_static_collar_table_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_static_collar_table_id.dissect(buffer, index, packet, parent)

  -- Trade Dynamic Collar Table Id: ElementId
  index, trade_dynamic_collar_table_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_dynamic_collar_table_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Collar Group
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_group.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.collar_group, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_group.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_group.fields(buffer, offset, packet, parent)
  end
end

-- Market Structure
gpw_wse_replayfulldepth_wats_v1_7_6_20.market_structure = {}

-- Size: Market Structure
gpw_wse_replayfulldepth_wats_v1_7_6_20.market_structure.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.parent_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.mic.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.name.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.market_model_type.size

-- Display: Market Structure
gpw_wse_replayfulldepth_wats_v1_7_6_20.market_structure.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Structure
gpw_wse_replayfulldepth_wats_v1_7_6_20.market_structure.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: ElementId
  index, id = gpw_wse_replayfulldepth_wats_v1_7_6_20.id.dissect(buffer, index, packet, parent)

  -- Parent Id: ElementId
  index, parent_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.parent_id.dissect(buffer, index, packet, parent)

  -- Mic: MicCode
  index, mic = gpw_wse_replayfulldepth_wats_v1_7_6_20.mic.dissect(buffer, index, packet, parent)

  -- Name: Name
  index, name = gpw_wse_replayfulldepth_wats_v1_7_6_20.name.dissect(buffer, index, packet, parent)

  -- Market Model Type: MarketModelType
  index, market_model_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.market_model_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Structure
gpw_wse_replayfulldepth_wats_v1_7_6_20.market_structure.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.market_structure, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.market_structure.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.market_structure.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.market_structure.fields(buffer, offset, packet, parent)
  end
end

-- Trading Phase Schedule Entry
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_schedule_entry = {}

-- Size: Trading Phase Schedule Entry
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_schedule_entry.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_schedule_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_settlement_cycle.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_max_block_settlement_cycle.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.static_collar_volatility_auction_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.dynamic_collar_volatility_auction_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_start_time.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_type.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.uncrossing.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.ext_static_collar_volatility_auction_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.ext_dynamic_collar_volatility_auction_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.clat_id.size

-- Display: Trading Phase Schedule Entry
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_schedule_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Phase Schedule Entry
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_schedule_entry.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Schedule Id: ElementId
  index, trading_schedule_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_schedule_id.dissect(buffer, index, packet, parent)

  -- Trading Phase Id: ElementId
  index, trading_phase_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_id.dissect(buffer, index, packet, parent)

  -- Trading Phase Settlement Cycle: u8
  index, trading_phase_settlement_cycle = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_settlement_cycle.dissect(buffer, index, packet, parent)

  -- Trading Phase Max Block Settlement Cycle: u8
  index, trading_phase_max_block_settlement_cycle = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_max_block_settlement_cycle.dissect(buffer, index, packet, parent)

  -- Static Collar Volatility Auction Id: ElementId
  index, static_collar_volatility_auction_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.static_collar_volatility_auction_id.dissect(buffer, index, packet, parent)

  -- Dynamic Collar Volatility Auction Id: ElementId
  index, dynamic_collar_volatility_auction_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.dynamic_collar_volatility_auction_id.dissect(buffer, index, packet, parent)

  -- Trading Phase Start Time: Timestamp
  index, trading_phase_start_time = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_start_time.dissect(buffer, index, packet, parent)

  -- Trading Phase Type: TradingPhaseType
  index, trading_phase_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_type.dissect(buffer, index, packet, parent)

  -- Uncrossing: bool
  index, uncrossing = gpw_wse_replayfulldepth_wats_v1_7_6_20.uncrossing.dissect(buffer, index, packet, parent)

  -- Ext Static Collar Volatility Auction Id: ElementId
  index, ext_static_collar_volatility_auction_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.ext_static_collar_volatility_auction_id.dissect(buffer, index, packet, parent)

  -- Ext Dynamic Collar Volatility Auction Id: ElementId
  index, ext_dynamic_collar_volatility_auction_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.ext_dynamic_collar_volatility_auction_id.dissect(buffer, index, packet, parent)

  -- Clat Id: ElementId
  index, clat_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.clat_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Phase Schedule Entry
gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_schedule_entry.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.trading_phase_schedule_entry, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_schedule_entry.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_schedule_entry.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_schedule_entry.fields(buffer, offset, packet, parent)
  end
end

-- Collar Table Entry
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_table_entry = {}

-- Size: Collar Table Entry
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_table_entry.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_table_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_mode.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_expression.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_lower_bound.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_value.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_lower_bid.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_upper_bid.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_upper_ask.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_lower_ask.size

-- Display: Collar Table Entry
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_table_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Collar Table Entry
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_table_entry.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Collar Table Id: ElementId
  index, collar_table_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_table_id.dissect(buffer, index, packet, parent)

  -- Collar Mode: CollarMode
  index, collar_mode = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_mode.dissect(buffer, index, packet, parent)

  -- Collar Expression: ExpressionType
  index, collar_expression = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_expression.dissect(buffer, index, packet, parent)

  -- Collar Lower Bound: Bound
  index, collar_lower_bound = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_lower_bound.dissect(buffer, index, packet, parent)

  -- Collar Value: CollarValue
  index, collar_value = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_value.dissect(buffer, index, packet, parent)

  -- Collar Lower Bid: Bound
  index, collar_lower_bid = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_lower_bid.dissect(buffer, index, packet, parent)

  -- Collar Upper Bid: Bound
  index, collar_upper_bid = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_upper_bid.dissect(buffer, index, packet, parent)

  -- Collar Upper Ask: Bound
  index, collar_upper_ask = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_upper_ask.dissect(buffer, index, packet, parent)

  -- Collar Lower Ask: Bound
  index, collar_lower_ask = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_lower_ask.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Collar Table Entry
gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_table_entry.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.collar_table_entry, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_table_entry.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_table_entry.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_table_entry.fields(buffer, offset, packet, parent)
  end
end

-- Tick Table Entry
gpw_wse_replayfulldepth_wats_v1_7_6_20.tick_table_entry = {}

-- Size: Tick Table Entry
gpw_wse_replayfulldepth_wats_v1_7_6_20.tick_table_entry.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.tick_size.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_bound.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.tick_table_id.size

-- Display: Tick Table Entry
gpw_wse_replayfulldepth_wats_v1_7_6_20.tick_table_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Table Entry
gpw_wse_replayfulldepth_wats_v1_7_6_20.tick_table_entry.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tick Size: TickSize
  index, tick_size = gpw_wse_replayfulldepth_wats_v1_7_6_20.tick_size.dissect(buffer, index, packet, parent)

  -- Lower Bound: Bound
  index, lower_bound = gpw_wse_replayfulldepth_wats_v1_7_6_20.lower_bound.dissect(buffer, index, packet, parent)

  -- Tick Table Id: ElementId
  index, tick_table_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.tick_table_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Table Entry
gpw_wse_replayfulldepth_wats_v1_7_6_20.tick_table_entry.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.tick_table_entry, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.tick_table_entry.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.tick_table_entry.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.tick_table_entry.fields(buffer, offset, packet, parent)
  end
end

-- Calendar Exception
gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_exception = {}

-- Size: Calendar Exception
gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_exception.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_exception_date.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_exception_type.size

-- Display: Calendar Exception
gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_exception.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Calendar Exception
gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_exception.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Calendar Id: ElementId
  index, calendar_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_id.dissect(buffer, index, packet, parent)

  -- Calendar Exception Date: Date
  index, calendar_exception_date = gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_exception_date.dissect(buffer, index, packet, parent)

  -- Calendar Exception Type: CalendarExceptionType
  index, calendar_exception_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_exception_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Calendar Exception
gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_exception.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.calendar_exception, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_exception.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_exception.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_exception.fields(buffer, offset, packet, parent)
  end
end

-- Week Plan
gpw_wse_replayfulldepth_wats_v1_7_6_20.week_plan = {}

-- Size: Week Plan
gpw_wse_replayfulldepth_wats_v1_7_6_20.week_plan.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.weekdays.size

-- Display: Week Plan
gpw_wse_replayfulldepth_wats_v1_7_6_20.week_plan.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Week Plan
gpw_wse_replayfulldepth_wats_v1_7_6_20.week_plan.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Calendar Id: ElementId
  index, calendar_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_id.dissect(buffer, index, packet, parent)

  -- Weekdays: Weekdays
  index, weekdays = gpw_wse_replayfulldepth_wats_v1_7_6_20.weekdays.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Week Plan
gpw_wse_replayfulldepth_wats_v1_7_6_20.week_plan.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.week_plan, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.week_plan.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.week_plan.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.week_plan.fields(buffer, offset, packet, parent)
  end
end

-- Payload
gpw_wse_replayfulldepth_wats_v1_7_6_20.payload = {}

-- Dissect: Payload
gpw_wse_replayfulldepth_wats_v1_7_6_20.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Week Plan
  if message_type == 33 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.week_plan.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Calendar Exception
  if message_type == 35 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.calendar_exception.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Table Entry
  if message_type == 32 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.tick_table_entry.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Collar Table Entry
  if message_type == 108 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_table_entry.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Phase Schedule Entry
  if message_type == 27 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_phase_schedule_entry.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Structure
  if message_type == 275 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.market_structure.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Collar Group
  if message_type == 299 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.collar_group.dissect(buffer, offset, packet, parent)
  end
  -- Dissect External Underlying
  if message_type == 806 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.external_underlying.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument
  if message_type == 279 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Accrued Interest Table Entry
  if message_type == 36 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.accrued_interest_table_entry.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Indexation Table Entry
  if message_type == 37 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.indexation_table_entry.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Index Params
  if message_type == 503 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.index_params.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Index Portfolio Entry
  if message_type == 502 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.index_portfolio_entry.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary
  if message_type == 270 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.auction_summary.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Update
  if message_type == 268 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.auction_update.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Level Snapshot
  if message_type == 257 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.price_level_snapshot.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Top Price Level Update
  if message_type == 256 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.top_price_level_update.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade
  if message_type == 38 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.trade.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Position Report
  if message_type == 801 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.position_report.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Status Change
  if message_type == 26 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_status_change.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Collars
  if message_type == 272 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.order_collars.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Collars
  if message_type == 273 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.trade_collars.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Summary
  if message_type == 671 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.instrument_summary.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Product Summary
  if message_type == 672 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.product_summary.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Update
  if message_type == 271 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.price_update.dissect(buffer, offset, packet, parent)
  end
  -- Dissect News
  if message_type == 517 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.news.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Real Time Index
  if message_type == 500 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.real_time_index.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Index Summary
  if message_type == 501 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.index_summary.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Session Status
  if message_type == 23 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.trading_session_status.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat
  if message_type == 1 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Test Event
  if message_type == 8192 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.test_event.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Add
  if message_type == 9 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.order_add.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modify
  if message_type == 10 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.order_modify.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel
  if message_type == 11 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.order_cancel.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Execute
  if message_type == 12 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.order_execute.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Event
  if message_type == 410 then
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.order_book_event.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
gpw_wse_replayfulldepth_wats_v1_7_6_20.message_header = {}

-- Size: Message Header
gpw_wse_replayfulldepth_wats_v1_7_6_20.message_header.size =
  gpw_wse_replayfulldepth_wats_v1_7_6_20.message_length.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.message_type.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.message_version.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.sequence_number.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.timestamp.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.source_timestamp.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.is_encrypted.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.encryption_offset.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.encryption_key_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.session_id.size + 
  gpw_wse_replayfulldepth_wats_v1_7_6_20.stream_id.size

-- Display: Message Header
gpw_wse_replayfulldepth_wats_v1_7_6_20.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
gpw_wse_replayfulldepth_wats_v1_7_6_20.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: MsgLength
  index, message_length = gpw_wse_replayfulldepth_wats_v1_7_6_20.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: MsgType
  index, message_type = gpw_wse_replayfulldepth_wats_v1_7_6_20.message_type.dissect(buffer, index, packet, parent)

  -- Message Version: MsgVersion
  index, message_version = gpw_wse_replayfulldepth_wats_v1_7_6_20.message_version.dissect(buffer, index, packet, parent)

  -- Sequence Number: SeqNum
  index, sequence_number = gpw_wse_replayfulldepth_wats_v1_7_6_20.sequence_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = gpw_wse_replayfulldepth_wats_v1_7_6_20.timestamp.dissect(buffer, index, packet, parent)

  -- Source Timestamp: Timestamp
  index, source_timestamp = gpw_wse_replayfulldepth_wats_v1_7_6_20.source_timestamp.dissect(buffer, index, packet, parent)

  -- Is Encrypted: bool
  index, is_encrypted = gpw_wse_replayfulldepth_wats_v1_7_6_20.is_encrypted.dissect(buffer, index, packet, parent)

  -- Encryption Offset: u64
  index, encryption_offset = gpw_wse_replayfulldepth_wats_v1_7_6_20.encryption_offset.dissect(buffer, index, packet, parent)

  -- Encryption Key Id: ElementId
  index, encryption_key_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.encryption_key_id.dissect(buffer, index, packet, parent)

  -- Session Id: SessionId
  index, session_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.session_id.dissect(buffer, index, packet, parent)

  -- Stream Id: StreamId
  index, stream_id = gpw_wse_replayfulldepth_wats_v1_7_6_20.stream_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
gpw_wse_replayfulldepth_wats_v1_7_6_20.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.message_header, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
gpw_wse_replayfulldepth_wats_v1_7_6_20.message = {}

-- Calculate size of: Message
gpw_wse_replayfulldepth_wats_v1_7_6_20.message.size = function(buffer, offset)
  local index = 0

  index = index + gpw_wse_replayfulldepth_wats_v1_7_6_20.message_header.size

  -- Parse runtime size of: Payload
  index = index + buffer(offset + index - 42, 2):le_uint()

  return index
end

-- Display: Message
gpw_wse_replayfulldepth_wats_v1_7_6_20.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
gpw_wse_replayfulldepth_wats_v1_7_6_20.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 11 fields
  index, message_header = gpw_wse_replayfulldepth_wats_v1_7_6_20.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 40, 2):le_uint()

  -- Payload: Runtime Type with 36 branches
  index = gpw_wse_replayfulldepth_wats_v1_7_6_20.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
gpw_wse_replayfulldepth_wats_v1_7_6_20.message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.fields.message, buffer(offset, 0))
    local index = gpw_wse_replayfulldepth_wats_v1_7_6_20.message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_replayfulldepth_wats_v1_7_6_20.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_replayfulldepth_wats_v1_7_6_20.message.fields(buffer, offset, packet, parent)
  end
end

-- Packet
gpw_wse_replayfulldepth_wats_v1_7_6_20.packet = {}

-- Verify required size of Tcp packet
gpw_wse_replayfulldepth_wats_v1_7_6_20.packet.requiredsize = function(buffer)
  return buffer:len() >= gpw_wse_replayfulldepth_wats_v1_7_6_20.message_header.size
end

-- Dissect Packet
gpw_wse_replayfulldepth_wats_v1_7_6_20.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, message = gpw_wse_replayfulldepth_wats_v1_7_6_20.message.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.init()
end

-- Dissector for Gpw Wse ReplayFullDepth Wats 1.7.6.20
function omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.name

  -- Dissect protocol
  local protocol = parent:add(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20, buffer(), omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.description, "("..buffer:len().." Bytes)")
  return gpw_wse_replayfulldepth_wats_v1_7_6_20.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Gpw Wse ReplayFullDepth Wats 1.7.6.20 (Tcp)
local function omi_gpw_wse_replayfulldepth_wats_v1_7_6_20_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not gpw_wse_replayfulldepth_wats_v1_7_6_20.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_gpw_wse_replayfulldepth_wats_v1_7_6_20
  omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Gpw Wse ReplayFullDepth Wats 1.7.6.20 (Tcp)
local function omi_gpw_wse_replayfulldepth_wats_v1_7_6_20_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not gpw_wse_replayfulldepth_wats_v1_7_6_20.replay_request_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_gpw_wse_replayfulldepth_wats_v1_7_6_20
  omi_gpw_wse_replayfulldepth_wats_v1_7_6_20.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristics for Gpw Wse ReplayFullDepth Wats 1.7.6.20
omi_gpw_wse_replayfulldepth_wats_v1_7_6_20:register_heuristic("tcp", omi_gpw_wse_replayfulldepth_wats_v1_7_6_20_tcp_heuristic)

-- Register Gpw Wse ReplayFullDepth Wats 1.7.6.20 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_gpw_wse_replayfulldepth_wats_v1_7_6_20)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Giełda Papierów Wartościowych w Warszawie
--   Version: 1.7.6.20
--   Date: Monday, October 5, 2026
--   Specification: GPW_WATS_3.01_Market_Data_Protocol_v1.7.6.20.pdf
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
