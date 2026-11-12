-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Bmv BmvMarketData Snapshot Intra 1.1 Protocol
local omi_bmv_bmvmarketdata_snapshot_intra_v1_1 = Proto("Omi.Bmv.BmvMarketData.Snapshot.Intra.v1.1", "Bmv BmvMarketData Snapshot Intra 1.1")

-- Protocol table
local bmv_bmvmarketdata_snapshot_intra_v1_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Bmv BmvMarketData Snapshot Intra 1.1 Fields
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields._24_hours_annual_performance = ProtoField.new("24 Hours Annual Performance", "bmv.bmvmarketdata.snapshot.intra.v1.1.24hoursannualperformance", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields._24_hours_daily_performance = ProtoField.new("24 Hours Daily Performance", "bmv.bmvmarketdata.snapshot.intra.v1.1.24hoursdailyperformance", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields._24_hours_monthly_performance = ProtoField.new("24 Hours Monthly Performance", "bmv.bmvmarketdata.snapshot.intra.v1.1.24hoursmonthlyperformance", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.amount = ProtoField.new("Amount", "bmv.bmvmarketdata.snapshot.intra.v1.1.amount", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.amount_placed = ProtoField.new("Amount Placed", "bmv.bmvmarketdata.snapshot.intra.v1.1.amountplaced", ftypes.INT64)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.amount_traded = ProtoField.new("Amount Traded", "bmv.bmvmarketdata.snapshot.intra.v1.1.amounttraded", ftypes.INT64)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.annual_performance = ProtoField.new("Annual Performance", "bmv.bmvmarketdata.snapshot.intra.v1.1.annualperformance", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.auction_indicator = ProtoField.new("Auction Indicator", "bmv.bmvmarketdata.snapshot.intra.v1.1.auctionindicator", ftypes.STRING, nil, nil, nil, "\"P\" – Opening Auction \"S\" – Other Auctions \" \" – Continuous Market \"N\" – Not Applicable")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.auction_session_end_time = ProtoField.new("Auction Session End Time", "bmv.bmvmarketdata.snapshot.intra.v1.1.auctionsessionendtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time when the auction session ends")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.auction_session_end_time_utc = ProtoField.new("Auction Session End Time", "bmv.bmvmarketdata.snapshot.intra.v1.1.auctionsessionendtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time when the auction session ends")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.auction_session_startup_time = ProtoField.new("Auction Session Startup Time", "bmv.bmvmarketdata.snapshot.intra.v1.1.auctionsessionstartuptime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time when the auction session opens")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.auction_session_startup_time_utc = ProtoField.new("Auction Session Startup Time", "bmv.bmvmarketdata.snapshot.intra.v1.1.auctionsessionstartuptime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time when the auction session opens")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.average = ProtoField.new("Average", "bmv.bmvmarketdata.snapshot.intra.v1.1.average", ftypes.DOUBLE, nil, nil, nil, "Average price of the day")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.beginning_time_of_auction = ProtoField.new("Beginning Time Of Auction", "bmv.bmvmarketdata.snapshot.intra.v1.1.beginningtimeofauction", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time at which auction begins")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.beginning_time_of_auction_utc = ProtoField.new("Beginning Time Of Auction", "bmv.bmvmarketdata.snapshot.intra.v1.1.beginningtimeofauction.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time at which auction begins")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.benchmark_date = ProtoField.new("Benchmark Date", "bmv.bmvmarketdata.snapshot.intra.v1.1.benchmarkdate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.benchmark_date_utc = ProtoField.new("Benchmark Date", "bmv.bmvmarketdata.snapshot.intra.v1.1.benchmarkdate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.benchmark_name = ProtoField.new("Benchmark Name", "bmv.bmvmarketdata.snapshot.intra.v1.1.benchmarkname", ftypes.STRING)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.best_purchasing_price = ProtoField.new("Best Purchasing Price", "bmv.bmvmarketdata.snapshot.intra.v1.1.bestpurchasingprice", ftypes.DOUBLE, nil, nil, nil, "Best current Purchasing price")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.best_selling_price = ProtoField.new("Best Selling Price", "bmv.bmvmarketdata.snapshot.intra.v1.1.bestsellingprice", ftypes.DOUBLE, nil, nil, nil, "Best current selling price")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.beta_coefficient = ProtoField.new("Beta Coefficient", "bmv.bmvmarketdata.snapshot.intra.v1.1.betacoefficient", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.beta_coefficient_sign = ProtoField.new("Beta Coefficient Sign", "bmv.bmvmarketdata.snapshot.intra.v1.1.betacoefficientsign", ftypes.STRING, nil, nil, nil, "Beta Coefficient Sign: \" \" - Positive, \"_\" - Negative")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.bids_existing = ProtoField.new("Bids Existing", "bmv.bmvmarketdata.snapshot.intra.v1.1.bidsexisting", ftypes.STRING, nil, nil, nil, "If the value is \"1\", it will be construed as true (there are bids), in any other case it will be false (there are no bids).")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.biva_instrument = ProtoField.new("Biva Instrument", "bmv.bmvmarketdata.snapshot.intra.v1.1.bivainstrument", ftypes.INT32, nil, nil, nil, "Code of the instrument at BIVA")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.book_value = ProtoField.new("Book Value", "bmv.bmvmarketdata.snapshot.intra.v1.1.bookvalue", ftypes.DOUBLE, nil, nil, nil, "Book value by stock")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.bursatility_indices = ProtoField.new("Bursatility Indices", "bmv.bmvmarketdata.snapshot.intra.v1.1.bursatilityindices", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.bursatility_indices_sign = ProtoField.new("Bursatility Indices Sign", "bmv.bmvmarketdata.snapshot.intra.v1.1.bursatilityindicessign", ftypes.STRING, nil, nil, nil, "Bursatility Indices Sign: \" \" - Positive, \"_\" - Negative")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.business_line = ProtoField.new("Business Line", "bmv.bmvmarketdata.snapshot.intra.v1.1.businessline", ftypes.INT8)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.buy_alpha_5 = ProtoField.new("Buy Alpha 5", "bmv.bmvmarketdata.snapshot.intra.v1.1.buyalpha5", ftypes.STRING, nil, nil, nil, "Buyers’ brokerage house short key")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.buy_precio_88 = ProtoField.new("Buy Precio 88", "bmv.bmvmarketdata.snapshot.intra.v1.1.buyprecio88", ftypes.DOUBLE, nil, nil, nil, "Buy")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.buy_volume = ProtoField.new("Buy Volume", "bmv.bmvmarketdata.snapshot.intra.v1.1.buyvolume", ftypes.INT64)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.buybacks = ProtoField.new("Buybacks", "bmv.bmvmarketdata.snapshot.intra.v1.1.buybacks", ftypes.INT64)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.client_length = ProtoField.new("Client Length", "bmv.bmvmarketdata.snapshot.intra.v1.1.clientlength", ftypes.INT8, nil, nil, nil, "Message length including this field")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.client_message_type = ProtoField.new("Client Message Type", "bmv.bmvmarketdata.snapshot.intra.v1.1.clientmessagetype", ftypes.UINT8, nil, nil, nil, "Code identifying the message")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.closing_price = ProtoField.new("Closing Price", "bmv.bmvmarketdata.snapshot.intra.v1.1.closingprice", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.code_of_event = ProtoField.new("Code Of Event", "bmv.bmvmarketdata.snapshot.intra.v1.1.codeofevent", ftypes.STRING, nil, nil, nil, "See Catalogue of Codes of System Event on the Connections and Appendix document")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.component = ProtoField.new("Component", "bmv.bmvmarketdata.snapshot.intra.v1.1.component", ftypes.STRING)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.component_in_cash = ProtoField.new("Component In Cash", "bmv.bmvmarketdata.snapshot.intra.v1.1.componentincash", ftypes.DOUBLE, nil, nil, nil, "Cash component per unit")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.concertation = ProtoField.new("Concertation", "bmv.bmvmarketdata.snapshot.intra.v1.1.concertation", ftypes.STRING, nil, nil, nil, "See the table of Concertation Type Catalog on the Connections and Appendix document")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.concertation_type = ProtoField.new("Concertation Type", "bmv.bmvmarketdata.snapshot.intra.v1.1.concertationtype", ftypes.STRING, nil, nil, nil, "See the table of Concertation Type Catalog on the Connections and Appendix document")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.consecutive_number = ProtoField.new("Consecutive Number", "bmv.bmvmarketdata.snapshot.intra.v1.1.consecutivenumber", ftypes.INT64, nil, nil, nil, "Consecutive Number Assigned to the order when it is recorded")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.consecutive_number_of_the_trade = ProtoField.new("Consecutive Number Of The Trade", "bmv.bmvmarketdata.snapshot.intra.v1.1.consecutivenumberofthetrade", ftypes.INT64, nil, nil, nil, "Numbering stamp per instrument")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.correlation_coefficient = ProtoField.new("Correlation Coefficient", "bmv.bmvmarketdata.snapshot.intra.v1.1.correlationcoefficient", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.correlation_coefficient_sign = ProtoField.new("Correlation Coefficient Sign", "bmv.bmvmarketdata.snapshot.intra.v1.1.correlationcoefficientsign", ftypes.STRING, nil, nil, nil, "Correlation Coefficient Sign: \" \" - Positive, \"_\" - Negative")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.coupon_in_effect = ProtoField.new("Coupon In Effect", "bmv.bmvmarketdata.snapshot.intra.v1.1.couponineffect", ftypes.INT16, nil, nil, nil, "Coupon number in effect")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.coupon_period = ProtoField.new("Coupon Period", "bmv.bmvmarketdata.snapshot.intra.v1.1.couponperiod", ftypes.INT16, nil, nil, nil, "Coupon number in effect or period number")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.currency = ProtoField.new("Currency", "bmv.bmvmarketdata.snapshot.intra.v1.1.currency", ftypes.STRING)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.currency_type = ProtoField.new("Currency Type", "bmv.bmvmarketdata.snapshot.intra.v1.1.currencytype", ftypes.STRING, nil, nil, nil, "N – Mexican currency D-Dollar")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.current_balance = ProtoField.new("Current Balance", "bmv.bmvmarketdata.snapshot.intra.v1.1.currentbalance", ftypes.INT64)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.current_nominal_value = ProtoField.new("Current Nominal Value", "bmv.bmvmarketdata.snapshot.intra.v1.1.currentnominalvalue", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.current_theoretical_price = ProtoField.new("Current Theoretical Price", "bmv.bmvmarketdata.snapshot.intra.v1.1.currenttheoreticalprice", ftypes.DOUBLE, nil, nil, nil, "Last theoretical price of the Trac")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.daily_performance = ProtoField.new("Daily Performance", "bmv.bmvmarketdata.snapshot.intra.v1.1.dailyperformance", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.date = ProtoField.new("Date", "bmv.bmvmarketdata.snapshot.intra.v1.1.date", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date for the addition of order")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.date_utc = ProtoField.new("Date", "bmv.bmvmarketdata.snapshot.intra.v1.1.date.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date for the addition of order")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.date_and_time = ProtoField.new("Date And Time", "bmv.bmvmarketdata.snapshot.intra.v1.1.dateandtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date and time for the addition of order")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.date_and_time_utc = ProtoField.new("Date And Time", "bmv.bmvmarketdata.snapshot.intra.v1.1.dateandtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date and time for the addition of order")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.date_indicators = ProtoField.new("Date Indicators", "bmv.bmvmarketdata.snapshot.intra.v1.1.dateindicators", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.date_indicators_utc = ProtoField.new("Date Indicators", "bmv.bmvmarketdata.snapshot.intra.v1.1.dateindicators.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.date_of_issuance = ProtoField.new("Date Of Issuance", "bmv.bmvmarketdata.snapshot.intra.v1.1.dateofissuance", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date of issuance and placement")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.date_of_issuance_utc = ProtoField.new("Date Of Issuance", "bmv.bmvmarketdata.snapshot.intra.v1.1.dateofissuance.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date of issuance and placement")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.date_of_maturity = ProtoField.new("Date Of Maturity", "bmv.bmvmarketdata.snapshot.intra.v1.1.dateofmaturity", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.date_of_maturity_utc = ProtoField.new("Date Of Maturity", "bmv.bmvmarketdata.snapshot.intra.v1.1.dateofmaturity.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.date_of_reference = ProtoField.new("Date Of Reference", "bmv.bmvmarketdata.snapshot.intra.v1.1.dateofreference", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Last reference date")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.date_of_reference_utc = ProtoField.new("Date Of Reference", "bmv.bmvmarketdata.snapshot.intra.v1.1.dateofreference.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Last reference date")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.date_of_the_trade = ProtoField.new("Date Of The Trade", "bmv.bmvmarketdata.snapshot.intra.v1.1.dateofthetrade", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date when the trade was made")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.date_of_the_trade_utc = ProtoField.new("Date Of The Trade", "bmv.bmvmarketdata.snapshot.intra.v1.1.dateofthetrade.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date when the trade was made")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.datetime = ProtoField.new("Datetime", "bmv.bmvmarketdata.snapshot.intra.v1.1.datetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date and time the packet is created")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.datetime_utc = ProtoField.new("Datetime", "bmv.bmvmarketdata.snapshot.intra.v1.1.datetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date and time the packet is created")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.decimal_amount = ProtoField.new("Decimal Amount", "bmv.bmvmarketdata.snapshot.intra.v1.1.decimalamount", ftypes.INT32, nil, nil, nil, "Decimal amount of Circulation field")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.delta_difference = ProtoField.new("Delta Difference", "bmv.bmvmarketdata.snapshot.intra.v1.1.deltadifference", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.direction = ProtoField.new("Direction", "bmv.bmvmarketdata.snapshot.intra.v1.1.direction", ftypes.STRING, nil, nil, nil, "C - Buy V - Sell")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.direction_of_the_bid = ProtoField.new("Direction Of The Bid", "bmv.bmvmarketdata.snapshot.intra.v1.1.directionofthebid", ftypes.STRING, nil, nil, nil, "C- Purchase V-Sale")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.discount_rate_or_price = ProtoField.new("Discount Rate Or Price", "bmv.bmvmarketdata.snapshot.intra.v1.1.discountrateorprice", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.dollar_side = ProtoField.new("Dollar Side", "bmv.bmvmarketdata.snapshot.intra.v1.1.dollarside", ftypes.STRING, nil, nil, nil, "Side (Document label: Side)")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.end_auction_time = ProtoField.new("End Auction Time", "bmv.bmvmarketdata.snapshot.intra.v1.1.endauctiontime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time at which auction ends")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.end_auction_time_utc = ProtoField.new("End Auction Time", "bmv.bmvmarketdata.snapshot.intra.v1.1.endauctiontime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time at which auction ends")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.end_time = ProtoField.new("End Time", "bmv.bmvmarketdata.snapshot.intra.v1.1.endtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "End time of administrative recess. Used only in case of administrative recess notices and in the case of an automatic resource.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.end_time_utc = ProtoField.new("End Time", "bmv.bmvmarketdata.snapshot.intra.v1.1.endtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "End time of administrative recess. Used only in case of administrative recess notices and in the case of an automatic resource.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.ending_time = ProtoField.new("Ending Time", "bmv.bmvmarketdata.snapshot.intra.v1.1.endingtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Recess official ending time. Only used when an official recess or automatic recess occurred.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.ending_time_utc = ProtoField.new("Ending Time", "bmv.bmvmarketdata.snapshot.intra.v1.1.endingtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Recess official ending time. Only used when an official recess or automatic recess occurred.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.event_code = ProtoField.new("Event Code", "bmv.bmvmarketdata.snapshot.intra.v1.1.eventcode", ftypes.STRING, nil, nil, nil, "See the table of System Event Codes Catalog on the Connections and Appendix document")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.exchange = ProtoField.new("Exchange", "bmv.bmvmarketdata.snapshot.intra.v1.1.exchange", ftypes.STRING, nil, nil, nil, "Exchange where the value was listed. M-BMV I-BIVA (Document label: Registered Values)")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.excluded_securities = ProtoField.new("Excluded Securities", "bmv.bmvmarketdata.snapshot.intra.v1.1.excludedsecurities", ftypes.DOUBLE, nil, nil, nil, "Number of securities excluded from the underlying value")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.excluded_value = ProtoField.new("Excluded Value", "bmv.bmvmarketdata.snapshot.intra.v1.1.excludedvalue", ftypes.DOUBLE, nil, nil, nil, "Estimated value of excluded assets by unit")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.execution_price = ProtoField.new("Execution Price", "bmv.bmvmarketdata.snapshot.intra.v1.1.executionprice", ftypes.DOUBLE, nil, nil, nil, "Price with which the trade was made.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.existing_postures = ProtoField.new("Existing Postures", "bmv.bmvmarketdata.snapshot.intra.v1.1.existingpostures", ftypes.STRING, nil, nil, nil, "For value equal to \"1\", True (there are postures), otherwise False (there are no postures).")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.f_1_p_u = ProtoField.new("F 1 P U", "bmv.bmvmarketdata.snapshot.intra.v1.1.f1pu", ftypes.DOUBLE, nil, nil, nil, "F1_P_U")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.f_1_p_ue = ProtoField.new("F 1 P Ue", "bmv.bmvmarketdata.snapshot.intra.v1.1.f1pue", ftypes.DOUBLE, nil, nil, nil, "F1_P_UE")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.f_1_p_unoc = ProtoField.new("F 1 P Unoc", "bmv.bmvmarketdata.snapshot.intra.v1.1.f1punoc", ftypes.DOUBLE, nil, nil, nil, "F1_P_UNOC")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.f_1_p_vl = ProtoField.new("F 1 P Vl", "bmv.bmvmarketdata.snapshot.intra.v1.1.f1pvl", ftypes.DOUBLE, nil, nil, nil, "F1_P_VL")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.f_1_ve_uaiida = ProtoField.new("F 1 Ve Uaiida", "bmv.bmvmarketdata.snapshot.intra.v1.1.f1veuaiida", ftypes.DOUBLE, nil, nil, nil, "F1_VE_UAIIDA")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.f_2_p_u = ProtoField.new("F 2 P U", "bmv.bmvmarketdata.snapshot.intra.v1.1.f2pu", ftypes.DOUBLE, nil, nil, nil, "F2_P_U")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.f_2_p_ue = ProtoField.new("F 2 P Ue", "bmv.bmvmarketdata.snapshot.intra.v1.1.f2pue", ftypes.DOUBLE, nil, nil, nil, "F2_P_UE")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.f_2_p_unoc = ProtoField.new("F 2 P Unoc", "bmv.bmvmarketdata.snapshot.intra.v1.1.f2punoc", ftypes.DOUBLE, nil, nil, nil, "F2_P_UNOC")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.f_2_p_vl = ProtoField.new("F 2 P Vl", "bmv.bmvmarketdata.snapshot.intra.v1.1.f2pvl", ftypes.DOUBLE, nil, nil, nil, "F2_P_VL")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.f_2_ve_uaiida = ProtoField.new("F 2 Ve Uaiida", "bmv.bmvmarketdata.snapshot.intra.v1.1.f2veuaiida", ftypes.DOUBLE, nil, nil, nil, "F2_VE_UAIIDA")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.firm = ProtoField.new("Firm", "bmv.bmvmarketdata.snapshot.intra.v1.1.firm", ftypes.STRING, nil, nil, nil, "Managing Brokerage Firm")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.first_message = ProtoField.new("First Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.firstmessage", ftypes.INT32, nil, nil, nil, "Sequence number of the first message intended to recover")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.group = ProtoField.new("Group", "bmv.bmvmarketdata.snapshot.intra.v1.1.group", ftypes.STRING, nil, nil, nil, "Group identifier. If blank, it applies at system level.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.income = ProtoField.new("Income", "bmv.bmvmarketdata.snapshot.intra.v1.1.income", ftypes.STRING, nil, nil, nil, "V-Variable income F-Fixed Income W-Warrants")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.indicator = ProtoField.new("Indicator", "bmv.bmvmarketdata.snapshot.intra.v1.1.indicator", ftypes.STRING, nil, nil, nil, "Denotes if the execution must be reflected for the volume calculations: \"N\" – No, \"Y\" – Yes In the case of the BMV this field does not apply and will be sent blank.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.indices_24 = ProtoField.new("Indices 24", "bmv.bmvmarketdata.snapshot.intra.v1.1.indices24", ftypes.DOUBLE, nil, nil, nil, "Benchmark value 24 hours at calculation date")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.indices_hour = ProtoField.new("Indices Hour", "bmv.bmvmarketdata.snapshot.intra.v1.1.indiceshour", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time Indices was calculated")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.indices_hour_utc = ProtoField.new("Indices Hour", "bmv.bmvmarketdata.snapshot.intra.v1.1.indiceshour.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time Indices was calculated")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.indices_precio_88 = ProtoField.new("Indices Precio 88", "bmv.bmvmarketdata.snapshot.intra.v1.1.indicesprecio88", ftypes.DOUBLE, nil, nil, nil, "Benchmark value at calculation date")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.indices_price_44 = ProtoField.new("Indices Price 44", "bmv.bmvmarketdata.snapshot.intra.v1.1.indicesprice44", ftypes.DOUBLE, nil, nil, nil, "Indices value")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.indices_status = ProtoField.new("Indices Status", "bmv.bmvmarketdata.snapshot.intra.v1.1.indicesstatus", ftypes.STRING, nil, nil, nil, "See Indices Status Catalog on the Connections and Appendix document")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.indices_stocks = ProtoField.new("Indices Stocks", "bmv.bmvmarketdata.snapshot.intra.v1.1.indicesstocks", ftypes.INT64, nil, nil, nil, "Number of stocks of the issuer that making up the component")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.industry = ProtoField.new("Industry", "bmv.bmvmarketdata.snapshot.intra.v1.1.industry", ftypes.INT8, nil, nil, nil, "See Industry Classification on the Connections and Appendix document")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.influence = ProtoField.new("Influence", "bmv.bmvmarketdata.snapshot.intra.v1.1.influence", ftypes.DOUBLE, nil, nil, nil, "Issuer weight inside the Indices")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.instrument_id = ProtoField.new("Instrument Id", "bmv.bmvmarketdata.snapshot.intra.v1.1.instrumentid", ftypes.INT32, nil, nil, nil, "Instrument identifier to which request is related; zeros when not related to any instrument")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.instrument_number = ProtoField.new("Instrument Number", "bmv.bmvmarketdata.snapshot.intra.v1.1.instrumentnumber", ftypes.INT32, nil, nil, nil, "Always zero")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.instrument_status = ProtoField.new("Instrument Status", "bmv.bmvmarketdata.snapshot.intra.v1.1.instrumentstatus", ftypes.STRING, nil, nil, nil, "See the table of Instrument Status Catalog on the Connections and Appendix document")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.integer_amount = ProtoField.new("Integer Amount", "bmv.bmvmarketdata.snapshot.intra.v1.1.integeramount", ftypes.INT64, nil, nil, nil, "Integer amount of Circulation field")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.isin = ProtoField.new("Isin", "bmv.bmvmarketdata.snapshot.intra.v1.1.isin", ftypes.STRING, nil, nil, nil, "ISIN Code of the instrument")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.issuance = ProtoField.new("Issuance", "bmv.bmvmarketdata.snapshot.intra.v1.1.issuance", ftypes.STRING, nil, nil, nil, "Code of the issuance")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.issue_date = ProtoField.new("Issue Date", "bmv.bmvmarketdata.snapshot.intra.v1.1.issuedate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.issue_date_utc = ProtoField.new("Issue Date", "bmv.bmvmarketdata.snapshot.intra.v1.1.issuedate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.issuer = ProtoField.new("Issuer", "bmv.bmvmarketdata.snapshot.intra.v1.1.issuer", ftypes.STRING, nil, nil, nil, "Issuers code")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.issuing_company = ProtoField.new("Issuing Company", "bmv.bmvmarketdata.snapshot.intra.v1.1.issuingcompany", ftypes.STRING, nil, nil, nil, "Code of the issuing Company")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.last = ProtoField.new("Last", "bmv.bmvmarketdata.snapshot.intra.v1.1.last", ftypes.DOUBLE, nil, nil, nil, "Last time price")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.last_12_months_24_hours_performance = ProtoField.new("Last 12 Months 24 Hours Performance", "bmv.bmvmarketdata.snapshot.intra.v1.1.last12months24hoursperformance", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.last_12_months_performance = ProtoField.new("Last 12 Months Performance", "bmv.bmvmarketdata.snapshot.intra.v1.1.last12monthsperformance", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.last_deal = ProtoField.new("Last Deal", "bmv.bmvmarketdata.snapshot.intra.v1.1.lastdeal", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.last_price = ProtoField.new("Last Price", "bmv.bmvmarketdata.snapshot.intra.v1.1.lastprice", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.last_price_of_the_day = ProtoField.new("Last Price Of The Day", "bmv.bmvmarketdata.snapshot.intra.v1.1.lastpriceoftheday", ftypes.DOUBLE, nil, nil, nil, "Last price recorded on the day")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.leg_type = ProtoField.new("Leg Type", "bmv.bmvmarketdata.snapshot.intra.v1.1.legtype", ftypes.STRING, nil, nil, nil, "L-Long leg C-Short leg X-Forwards chain leg P-Indicates if its parent strategy \"\"-Fact not generated from a strategy")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.length = ProtoField.new("Length", "bmv.bmvmarketdata.snapshot.intra.v1.1.length", ftypes.INT16, nil, nil, nil, "Packet length, including header and all attached messages")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.login_response_status = ProtoField.new("Login Response Status", "bmv.bmvmarketdata.snapshot.intra.v1.1.loginresponsestatus", ftypes.STRING, nil, nil, nil, "Login status (Document label: Status)")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.lower_price_of_the_day = ProtoField.new("Lower Price Of The Day", "bmv.bmvmarketdata.snapshot.intra.v1.1.lowerpriceoftheday", ftypes.DOUBLE, nil, nil, nil, "Lower price recorded on the day")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.market = ProtoField.new("Market", "bmv.bmvmarketdata.snapshot.intra.v1.1.market", ftypes.STRING, nil, nil, nil, "See the table of Markets Catalog (only used when there is an official recess) on the Connections and Appendix document")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.market_data_group = ProtoField.new("Market Data Group", "bmv.bmvmarketdata.snapshot.intra.v1.1.marketdatagroup", ftypes.INT8, nil, nil, nil, "See Market Data Groups Catalog")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.marketability = ProtoField.new("Marketability", "bmv.bmvmarketdata.snapshot.intra.v1.1.marketability", ftypes.STRING, nil, nil, nil, "See Marketability Catalog on the Connections and Appendix document")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.maturity_date = ProtoField.new("Maturity Date", "bmv.bmvmarketdata.snapshot.intra.v1.1.maturitydate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.maturity_date_utc = ProtoField.new("Maturity Date", "bmv.bmvmarketdata.snapshot.intra.v1.1.maturitydate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.max_price_of_the_day = ProtoField.new("Max Price Of The Day", "bmv.bmvmarketdata.snapshot.intra.v1.1.maxpriceoftheday", ftypes.DOUBLE, nil, nil, nil, "Max price recorded on the day")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.maximum = ProtoField.new("Maximum", "bmv.bmvmarketdata.snapshot.intra.v1.1.maximum", ftypes.DOUBLE, nil, nil, nil, "Maximum price")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.maximum_volume = ProtoField.new("Maximum Volume", "bmv.bmvmarketdata.snapshot.intra.v1.1.maximumvolume", ftypes.INT64)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.message_length = ProtoField.new("Message Length", "bmv.bmvmarketdata.snapshot.intra.v1.1.messagelength", ftypes.INT16, nil, nil, nil, "Indicates message length contained in this message block")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.message_type = ProtoField.new("Message Type", "bmv.bmvmarketdata.snapshot.intra.v1.1.messagetype", ftypes.UINT8, nil, nil, nil, "Code identifying the message")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.minimum = ProtoField.new("Minimum", "bmv.bmvmarketdata.snapshot.intra.v1.1.minimum", ftypes.DOUBLE, nil, nil, nil, "Minimum price")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.monthly_performance = ProtoField.new("Monthly Performance", "bmv.bmvmarketdata.snapshot.intra.v1.1.monthlyperformance", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.movement = ProtoField.new("Movement", "bmv.bmvmarketdata.snapshot.intra.v1.1.movement", ftypes.STRING, nil, nil, nil, "A-Registry operation U-Operation authorization C-Placement operation B-Delete operation")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.mse_instrument_number = ProtoField.new("Mse Instrument Number", "bmv.bmvmarketdata.snapshot.intra.v1.1.mseinstrumentnumber", ftypes.INT32, nil, nil, nil, "Unique code during instruments life")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.multiple_type = ProtoField.new("Multiple Type", "bmv.bmvmarketdata.snapshot.intra.v1.1.multipletype", ftypes.STRING, nil, nil, nil, "\"E\"=Multiple of market by transmitter, \"S\"=Multiple of market by sector")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.name_of_the_trac = ProtoField.new("Name Of The Trac", "bmv.bmvmarketdata.snapshot.intra.v1.1.nameofthetrac", ftypes.STRING, nil, nil, nil, "Identifies the name of the Trac")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.new_date = ProtoField.new("New Date", "bmv.bmvmarketdata.snapshot.intra.v1.1.newdate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "New Date and time when the order was registered (Document label: Original date)")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.new_date_utc = ProtoField.new("New Date", "bmv.bmvmarketdata.snapshot.intra.v1.1.newdate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "New Date and time when the order was registered (Document label: Original date)")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.new_number = ProtoField.new("New Number", "bmv.bmvmarketdata.snapshot.intra.v1.1.newnumber", ftypes.INT32, nil, nil, nil, "Number allocated to the new order")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.number = ProtoField.new("Number", "bmv.bmvmarketdata.snapshot.intra.v1.1.number", ftypes.INT32, nil, nil, nil, "Virtual trade number")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.number_of_buy_transactions = ProtoField.new("Number Of Buy Transactions", "bmv.bmvmarketdata.snapshot.intra.v1.1.numberofbuytransactions", ftypes.INT32)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.number_of_certificates = ProtoField.new("Number Of Certificates", "bmv.bmvmarketdata.snapshot.intra.v1.1.numberofcertificates", ftypes.INT64, nil, nil, nil, "Estimated value of the excluded assets per unit (Document label: Excluded Value)")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.number_of_operations = ProtoField.new("Number Of Operations", "bmv.bmvmarketdata.snapshot.intra.v1.1.numberofoperations", ftypes.INT32)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.number_of_orders = ProtoField.new("Number Of Orders", "bmv.bmvmarketdata.snapshot.intra.v1.1.numberoforders", ftypes.INT16, nil, nil, nil, "Level number of orders (Document label: Number of orders-1)")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.number_of_purchase_trades = ProtoField.new("Number Of Purchase Trades", "bmv.bmvmarketdata.snapshot.intra.v1.1.numberofpurchasetrades", ftypes.INT32)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.number_of_sales_trades = ProtoField.new("Number Of Sales Trades", "bmv.bmvmarketdata.snapshot.intra.v1.1.numberofsalestrades", ftypes.INT32)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.number_of_sales_transactions = ProtoField.new("Number Of Sales Transactions", "bmv.bmvmarketdata.snapshot.intra.v1.1.numberofsalestransactions", ftypes.INT32)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.number_of_the_bmv_instrument = ProtoField.new("Number Of The Bmv Instrument", "bmv.bmvmarketdata.snapshot.intra.v1.1.numberofthebmvinstrument", ftypes.INT32, nil, nil, nil, "Sole code throughout the life of the instrument at BMV")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.number_of_the_instrument = ProtoField.new("Number Of The Instrument", "bmv.bmvmarketdata.snapshot.intra.v1.1.numberoftheinstrument", ftypes.INT32, nil, nil, nil, "Sole code throughout the life of the instrument")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.number_of_the_trac = ProtoField.new("Number Of The Trac", "bmv.bmvmarketdata.snapshot.intra.v1.1.numberofthetrac", ftypes.INT32, nil, nil, nil, "Sole code throughout the life of the instrument")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.numerical_marketability = ProtoField.new("Numerical Marketability", "bmv.bmvmarketdata.snapshot.intra.v1.1.numericalmarketability", ftypes.DOUBLE, nil, nil, nil, "Refer to the BMV Marketability Indices Methodology")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.offer_direction = ProtoField.new("Offer Direction", "bmv.bmvmarketdata.snapshot.intra.v1.1.offerdirection", ftypes.STRING, nil, nil, nil, "C-Buy V-Sell")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.offer_type = ProtoField.new("Offer Type", "bmv.bmvmarketdata.snapshot.intra.v1.1.offertype", ftypes.STRING, nil, nil, nil, "See the Public Offerings Catalog on the Connections and Appendix document")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.open_interest = ProtoField.new("Open Interest", "bmv.bmvmarketdata.snapshot.intra.v1.1.openinterest", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.opening_price = ProtoField.new("Opening Price", "bmv.bmvmarketdata.snapshot.intra.v1.1.openingprice", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.operation_type = ProtoField.new("Operation Type", "bmv.bmvmarketdata.snapshot.intra.v1.1.operationtype", ftypes.STRING, nil, nil, nil, "See the table of Type of Operation Catalog on the Connections and Appendix document")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.origin = ProtoField.new("Origin", "bmv.bmvmarketdata.snapshot.intra.v1.1.origin", ftypes.STRING, nil, nil, nil, "Origin of the message: M (BMV), I (BIVA), A (Both)")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.origin_price = ProtoField.new("Origin Price", "bmv.bmvmarketdata.snapshot.intra.v1.1.originprice", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.original_date = ProtoField.new("Original Date", "bmv.bmvmarketdata.snapshot.intra.v1.1.originaldate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date and time when the order was registered")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.original_date_utc = ProtoField.new("Original Date", "bmv.bmvmarketdata.snapshot.intra.v1.1.originaldate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date and time when the order was registered")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.original_nominal_value = ProtoField.new("Original Nominal Value", "bmv.bmvmarketdata.snapshot.intra.v1.1.originalnominalvalue", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.original_number = ProtoField.new("Original Number", "bmv.bmvmarketdata.snapshot.intra.v1.1.originalnumber", ftypes.INT32, nil, nil, nil, "Number originally allocated to the order")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.outstanding = ProtoField.new("Outstanding", "bmv.bmvmarketdata.snapshot.intra.v1.1.outstanding", ftypes.INT64, nil, nil, nil, "Sum of outstanding shares of all groups up to calculation date")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.outstanding_shares = ProtoField.new("Outstanding Shares", "bmv.bmvmarketdata.snapshot.intra.v1.1.outstandingshares", ftypes.INT64)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.p_u = ProtoField.new("P U", "bmv.bmvmarketdata.snapshot.intra.v1.1.pu", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.p_vl = ProtoField.new("P Vl", "bmv.bmvmarketdata.snapshot.intra.v1.1.pvl", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.parent_trade_number = ProtoField.new("Parent Trade Number", "bmv.bmvmarketdata.snapshot.intra.v1.1.parenttradenumber", ftypes.INT32, nil, nil, nil, "Will only contain a value if and only if is about a strategy leg.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.participant = ProtoField.new("Participant", "bmv.bmvmarketdata.snapshot.intra.v1.1.participant", ftypes.STRING, nil, nil, nil, "Short key of participant")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.password = ProtoField.new("Password", "bmv.bmvmarketdata.snapshot.intra.v1.1.password", ftypes.STRING, nil, nil, nil, "Password assigned to receiver, filled with blank spaces to the right")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.percentage = ProtoField.new("Percentage", "bmv.bmvmarketdata.snapshot.intra.v1.1.percentage", ftypes.DOUBLE, nil, nil, nil, "Percentage points")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.pfepa_multiple = ProtoField.new("Pfepa Multiple", "bmv.bmvmarketdata.snapshot.intra.v1.1.pfepamultiple", ftypes.DOUBLE, nil, nil, nil, "P/FEPA Multiple")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.pflepa_multiple = ProtoField.new("Pflepa Multiple", "bmv.bmvmarketdata.snapshot.intra.v1.1.pflepamultiple", ftypes.DOUBLE, nil, nil, nil, "P/FLEPA Multiple")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.placement_date = ProtoField.new("Placement Date", "bmv.bmvmarketdata.snapshot.intra.v1.1.placementdate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.placement_date_utc = ProtoField.new("Placement Date", "bmv.bmvmarketdata.snapshot.intra.v1.1.placementdate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.posture_date = ProtoField.new("Posture Date", "bmv.bmvmarketdata.snapshot.intra.v1.1.posturedate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.posture_date_utc = ProtoField.new("Posture Date", "bmv.bmvmarketdata.snapshot.intra.v1.1.posturedate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.ppp_weighted_average_price = ProtoField.new("Ppp Weighted Average Price", "bmv.bmvmarketdata.snapshot.intra.v1.1.pppweightedaverageprice", ftypes.DOUBLE, nil, nil, nil, "Weighted average price")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.previous_balance = ProtoField.new("Previous Balance", "bmv.bmvmarketdata.snapshot.intra.v1.1.previousbalance", ftypes.INT64)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.previous_settlement_price = ProtoField.new("Previous Settlement Price", "bmv.bmvmarketdata.snapshot.intra.v1.1.previoussettlementprice", ftypes.DOUBLE, nil, nil, nil, "Last day settlement price")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.price = ProtoField.new("Price", "bmv.bmvmarketdata.snapshot.intra.v1.1.price", ftypes.DOUBLE, nil, nil, nil, "Operation price")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.price_level = ProtoField.new("Price Level", "bmv.bmvmarketdata.snapshot.intra.v1.1.pricelevel", ftypes.STRING, nil, nil, nil, "One price level of the Depth message")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.price_of_exercise = ProtoField.new("Price Of Exercise", "bmv.bmvmarketdata.snapshot.intra.v1.1.priceofexercise", ftypes.DOUBLE, nil, nil, nil, "Price to exercise the Warrant")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.price_rate = ProtoField.new("Price Rate", "bmv.bmvmarketdata.snapshot.intra.v1.1.pricerate", ftypes.DOUBLE, nil, nil, nil, "Operation registry price")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.price_rate_of_reference = ProtoField.new("Price Rate Of Reference", "bmv.bmvmarketdata.snapshot.intra.v1.1.pricerateofreference", ftypes.DOUBLE, nil, nil, nil, "Last reference price or rate")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.price_setter = ProtoField.new("Price Setter", "bmv.bmvmarketdata.snapshot.intra.v1.1.pricesetter", ftypes.STRING, nil, nil, nil, "For value equal to 1, be taken as true; otherwise, false.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.price_type = ProtoField.new("Price Type", "bmv.bmvmarketdata.snapshot.intra.v1.1.pricetype", ftypes.STRING, nil, nil, nil, "Type of Price sent. See Catalogue of types of price on the Connections and Appendix document")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.probable_allocation_price = ProtoField.new("Probable Allocation Price", "bmv.bmvmarketdata.snapshot.intra.v1.1.probableallocationprice", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.probable_price_of_allocation = ProtoField.new("Probable Price Of Allocation", "bmv.bmvmarketdata.snapshot.intra.v1.1.probablepriceofallocation", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.probable_price_of_allotment = ProtoField.new("Probable Price Of Allotment", "bmv.bmvmarketdata.snapshot.intra.v1.1.probablepriceofallotment", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.purchase_or_sale_levels = ProtoField.new("Purchase Or Sale Levels", "bmv.bmvmarketdata.snapshot.intra.v1.1.purchaseorsalelevels", ftypes.INT8, nil, nil, nil, "Number of buy or sale levels to be sent")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.purchase_volume = ProtoField.new("Purchase Volume", "bmv.bmvmarketdata.snapshot.intra.v1.1.purchasevolume", ftypes.INT64)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.purchases = ProtoField.new("Purchases", "bmv.bmvmarketdata.snapshot.intra.v1.1.purchases", ftypes.STRING, nil, nil, nil, "Short code of the Purchasing Exchange (BMV and BIVA)")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.quantity = ProtoField.new("Quantity", "bmv.bmvmarketdata.snapshot.intra.v1.1.quantity", ftypes.INT16, nil, nil, nil, "Quantity of requested messages")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.quantity_of_messages = ProtoField.new("Quantity Of Messages", "bmv.bmvmarketdata.snapshot.intra.v1.1.quantityofmessages", ftypes.INT32, nil, nil, nil, "Number of messages to be transmitted for the request, including instrument status and Snapshot complete messages; zero for a request not accepted")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.rate_of_return = ProtoField.new("Rate Of Return", "bmv.bmvmarketdata.snapshot.intra.v1.1.rateofreturn", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.rating = ProtoField.new("Rating", "bmv.bmvmarketdata.snapshot.intra.v1.1.rating", ftypes.STRING)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.reason = ProtoField.new("Reason", "bmv.bmvmarketdata.snapshot.intra.v1.1.reason", ftypes.STRING, nil, nil, nil, "Reason for the change of status. See Catalogue of reasons. on the Connections and Appendix document")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.rebalance = ProtoField.new("Rebalance", "bmv.bmvmarketdata.snapshot.intra.v1.1.rebalance", ftypes.STRING, nil, nil, nil, "\"R\" if benchmark was rebalanced in this calculation date, \"N\" otherwise")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.recovery_hour = ProtoField.new("Recovery Hour", "bmv.bmvmarketdata.snapshot.intra.v1.1.recoveryhour", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Hour from which to recover the index; zero sends all the information of the sample of the day")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.recovery_hour_utc = ProtoField.new("Recovery Hour", "bmv.bmvmarketdata.snapshot.intra.v1.1.recoveryhour.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Hour from which to recover the index; zero sends all the information of the sample of the day")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.reference = ProtoField.new("Reference", "bmv.bmvmarketdata.snapshot.intra.v1.1.reference", ftypes.STRING, nil, nil, nil, "N – Prior, “ ” – W/O Price, V – Adjusted Nominal Value")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.reference_date = ProtoField.new("Reference Date", "bmv.bmvmarketdata.snapshot.intra.v1.1.referencedate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Last reference date")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.reference_date_utc = ProtoField.new("Reference Date", "bmv.bmvmarketdata.snapshot.intra.v1.1.referencedate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Last reference date")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.reference_price = ProtoField.new("Reference Price", "bmv.bmvmarketdata.snapshot.intra.v1.1.referenceprice", ftypes.DOUBLE, nil, nil, nil, "Last reference price or rate")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.registered_values = ProtoField.new("Registered Values", "bmv.bmvmarketdata.snapshot.intra.v1.1.registeredvalues", ftypes.INT64, nil, nil, nil, "Outstanding shares")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.registered_volume = ProtoField.new("Registered Volume", "bmv.bmvmarketdata.snapshot.intra.v1.1.registeredvolume", ftypes.INT64)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.registry_number = ProtoField.new("Registry Number", "bmv.bmvmarketdata.snapshot.intra.v1.1.registrynumber", ftypes.STRING, nil, nil, nil, "Registries sent number")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.replay_response_status = ProtoField.new("Replay Response Status", "bmv.bmvmarketdata.snapshot.intra.v1.1.replayresponsestatus", ftypes.STRING, nil, nil, nil, "Replay status (Document label: Status)")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.sales_volume = ProtoField.new("Sales Volume", "bmv.bmvmarketdata.snapshot.intra.v1.1.salesvolume", ftypes.INT64)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.sector = ProtoField.new("Sector", "bmv.bmvmarketdata.snapshot.intra.v1.1.sector", ftypes.INT8, nil, nil, nil, "See Industry Classification on the Connections and Appendix document")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.securities = ProtoField.new("Securities", "bmv.bmvmarketdata.snapshot.intra.v1.1.securities", ftypes.DOUBLE, nil, nil, nil, "Number of Securities of the underlying value")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.sell_alpha_5 = ProtoField.new("Sell Alpha 5", "bmv.bmvmarketdata.snapshot.intra.v1.1.sellalpha5", ftypes.STRING, nil, nil, nil, "Seller’s brokerage house short key")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.sell_precio_88 = ProtoField.new("Sell Precio 88", "bmv.bmvmarketdata.snapshot.intra.v1.1.sellprecio88", ftypes.DOUBLE, nil, nil, nil, "Sell")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.sells = ProtoField.new("Sells", "bmv.bmvmarketdata.snapshot.intra.v1.1.sells", ftypes.STRING, nil, nil, nil, "Short code of the Selling Exchange (BMV and BIVA)")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.send_time = ProtoField.new("Send Time", "bmv.bmvmarketdata.snapshot.intra.v1.1.sendtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Send time of administrative recess. Used only in case of administrative recess notices.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.send_time_utc = ProtoField.new("Send Time", "bmv.bmvmarketdata.snapshot.intra.v1.1.sendtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Send time of administrative recess. Used only in case of administrative recess notices.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.sending = ProtoField.new("Sending", "bmv.bmvmarketdata.snapshot.intra.v1.1.sending", ftypes.STRING, nil, nil, nil, "A: Preopening C: After closing")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.sending_time = ProtoField.new("Sending Time", "bmv.bmvmarketdata.snapshot.intra.v1.1.sendingtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Recess’s official sending time. Only used when official recess has occurred.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.sending_time_utc = ProtoField.new("Sending Time", "bmv.bmvmarketdata.snapshot.intra.v1.1.sendingtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Recess’s official sending time. Only used when official recess has occurred.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.sequence_number = ProtoField.new("Sequence Number", "bmv.bmvmarketdata.snapshot.intra.v1.1.sequencenumber", ftypes.INT32, nil, nil, nil, "Sequence number on to which the snapshot synchronizes with respect to the online channel")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.series = ProtoField.new("Series", "bmv.bmvmarketdata.snapshot.intra.v1.1.series", ftypes.STRING, nil, nil, nil, "Series code")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.session = ProtoField.new("Session", "bmv.bmvmarketdata.snapshot.intra.v1.1.session", ftypes.INT8, nil, nil, nil, "Current session identifier")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.sets_price = ProtoField.new("Sets Price", "bmv.bmvmarketdata.snapshot.intra.v1.1.setsprice", ftypes.STRING, nil, nil, nil, "If the Value is 1, it will be construed as true, in any other case it will be false.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.settlement = ProtoField.new("Settlement", "bmv.bmvmarketdata.snapshot.intra.v1.1.settlement", ftypes.STRING, nil, nil, nil, "See the table of Settlement Type Catalog on the Connections and Appendix document")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.settlement_date = ProtoField.new("Settlement Date", "bmv.bmvmarketdata.snapshot.intra.v1.1.settlementdate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.settlement_date_utc = ProtoField.new("Settlement Date", "bmv.bmvmarketdata.snapshot.intra.v1.1.settlementdate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.side = ProtoField.new("Side", "bmv.bmvmarketdata.snapshot.intra.v1.1.side", ftypes.INT8, nil, nil, nil, "O - Buy, 1 - Sell")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.snapshot_response_status = ProtoField.new("Snapshot Response Status", "bmv.bmvmarketdata.snapshot.intra.v1.1.snapshotresponsestatus", ftypes.STRING, nil, nil, nil, "Snapshot status (Document label: Status)")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.snapshot_type = ProtoField.new("Snapshot Type", "bmv.bmvmarketdata.snapshot.intra.v1.1.snapshottype", ftypes.INT8, nil, nil, nil, "See Snapshot Type Catalog")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.status = ProtoField.new("Status", "bmv.bmvmarketdata.snapshot.intra.v1.1.status", ftypes.STRING, nil, nil, nil, "New status of the instrument. See Catalogue of status changes. on the Connections and Appendix document")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.sub_industry = ProtoField.new("Sub Industry", "bmv.bmvmarketdata.snapshot.intra.v1.1.subindustry", ftypes.INT8, nil, nil, nil, "See Industry Classification on the Connections and Appendix document")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.sub_line = ProtoField.new("Sub Line", "bmv.bmvmarketdata.snapshot.intra.v1.1.subline", ftypes.INT8, nil, nil, nil, "Sub-Line")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.subsector = ProtoField.new("Subsector", "bmv.bmvmarketdata.snapshot.intra.v1.1.subsector", ftypes.INT8)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.tcp_unit = ProtoField.new("Tcp Unit", "bmv.bmvmarketdata.snapshot.intra.v1.1.tcpunit", ftypes.STRING, nil, nil, nil, "One INTRA Multicast Header and its message blocks")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.term_days = ProtoField.new("Term Days", "bmv.bmvmarketdata.snapshot.intra.v1.1.termdays", ftypes.INT16)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.theoretical_current_price = ProtoField.new("Theoretical Current Price", "bmv.bmvmarketdata.snapshot.intra.v1.1.theoreticalcurrentprice", ftypes.DOUBLE, nil, nil, nil, "Tracs' last theoretical price")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.theoretical_price = ProtoField.new("Theoretical Price", "bmv.bmvmarketdata.snapshot.intra.v1.1.theoreticalprice", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.time_of_the_trade = ProtoField.new("Time Of The Trade", "bmv.bmvmarketdata.snapshot.intra.v1.1.timeofthetrade", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time when the transaction took place")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.time_of_the_trade_utc = ProtoField.new("Time Of The Trade", "bmv.bmvmarketdata.snapshot.intra.v1.1.timeofthetrade.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time when the transaction took place")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.total_messages = ProtoField.new("Total Messages", "bmv.bmvmarketdata.snapshot.intra.v1.1.totalmessages", ftypes.INT8, nil, nil, nil, "Number of messages after the header")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.trac_number = ProtoField.new("Trac Number", "bmv.bmvmarketdata.snapshot.intra.v1.1.tracnumber", ftypes.INT32, nil, nil, nil, "Unique code during TRACs life")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.trade_date = ProtoField.new("Trade Date", "bmv.bmvmarketdata.snapshot.intra.v1.1.tradedate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date operation was carried out")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.trade_date_utc = ProtoField.new("Trade Date", "bmv.bmvmarketdata.snapshot.intra.v1.1.tradedate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date operation was carried out")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.trade_number = ProtoField.new("Trade Number", "bmv.bmvmarketdata.snapshot.intra.v1.1.tradenumber", ftypes.INT32, nil, nil, nil, "Stamp number by instrument")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.trade_time = ProtoField.new("Trade Time", "bmv.bmvmarketdata.snapshot.intra.v1.1.tradetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the operation was carried out")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.trade_time_utc = ProtoField.new("Trade Time", "bmv.bmvmarketdata.snapshot.intra.v1.1.tradetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the operation was carried out")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.trades_rate_price = ProtoField.new("Trades Rate Price", "bmv.bmvmarketdata.snapshot.intra.v1.1.tradesrateprice", ftypes.STRING, nil, nil, nil, "T - Rate P - Price \" \"- By default")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.trading_company = ProtoField.new("Trading Company", "bmv.bmvmarketdata.snapshot.intra.v1.1.tradingcompany", ftypes.STRING, nil, nil, nil, "Code of the trading company of the investment fund")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.trend = ProtoField.new("Trend", "bmv.bmvmarketdata.snapshot.intra.v1.1.trend", ftypes.STRING, nil, nil, nil, "See Trend Catalog on the Connections and Appendix document")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.type = ProtoField.new("Type", "bmv.bmvmarketdata.snapshot.intra.v1.1.type", ftypes.STRING, nil, nil, nil, "See Equity’s Indices Components Catalog on the Connections and Appendix document")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.type_of_agreement = ProtoField.new("Type Of Agreement", "bmv.bmvmarketdata.snapshot.intra.v1.1.typeofagreement", ftypes.STRING, nil, nil, nil, "See Catalogue of Type of Agreement on the Connections and Appendix document")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.type_of_cross_trading = ProtoField.new("Type Of Cross Trading", "bmv.bmvmarketdata.snapshot.intra.v1.1.typeofcrosstrading", ftypes.STRING, nil, nil, nil, "O – Pre-opening, I – Intraday auction")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.type_of_trading = ProtoField.new("Type Of Trading", "bmv.bmvmarketdata.snapshot.intra.v1.1.typeoftrading", ftypes.STRING, nil, nil, nil, "See Catalogue of Type of BIVA operations on the Connections and Appendix document")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.type_of_value = ProtoField.new("Type Of Value", "bmv.bmvmarketdata.snapshot.intra.v1.1.typeofvalue", ftypes.STRING, nil, nil, nil, "Code of the Type Value")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.type_of_warrant = ProtoField.new("Type Of Warrant", "bmv.bmvmarketdata.snapshot.intra.v1.1.typeofwarrant", ftypes.STRING, nil, nil, nil, "\"C\"- Purchase \"V\"- Sale")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.underlying_issuing_company = ProtoField.new("Underlying Issuing Company", "bmv.bmvmarketdata.snapshot.intra.v1.1.underlyingissuingcompany", ftypes.STRING, nil, nil, nil, "Code of the issuing company of the underlying value")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.underlying_series = ProtoField.new("Underlying Series", "bmv.bmvmarketdata.snapshot.intra.v1.1.underlyingseries", ftypes.STRING, nil, nil, nil, "Code of the series of the underlying value")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.user = ProtoField.new("User", "bmv.bmvmarketdata.snapshot.intra.v1.1.user", ftypes.STRING, nil, nil, nil, "User assigned to receiver")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.value_of_type = ProtoField.new("Value Of Type", "bmv.bmvmarketdata.snapshot.intra.v1.1.valueoftype", ftypes.STRING, nil, nil, nil, "Code of the Type of Value")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.value_type = ProtoField.new("Value Type", "bmv.bmvmarketdata.snapshot.intra.v1.1.valuetype", ftypes.STRING)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.variation = ProtoField.new("Variation", "bmv.bmvmarketdata.snapshot.intra.v1.1.variation", ftypes.DOUBLE, nil, nil, nil, "Variation points")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.ve_uaiida_multiple = ProtoField.new("Ve Uaiida Multiple", "bmv.bmvmarketdata.snapshot.intra.v1.1.veuaiidamultiple", ftypes.DOUBLE, nil, nil, nil, "VE-UAIIDA Multiple")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.virtual_trades_status = ProtoField.new("Virtual Trades Status", "bmv.bmvmarketdata.snapshot.intra.v1.1.virtualtradesstatus", ftypes.STRING, nil, nil, nil, "A-Addition B-Deletion (Document label: Status)")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.volatility = ProtoField.new("Volatility", "bmv.bmvmarketdata.snapshot.intra.v1.1.volatility", ftypes.DOUBLE, nil, nil, nil, "Volatility instrument.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.volume_int_324 = ProtoField.new("Volume Int 324", "bmv.bmvmarketdata.snapshot.intra.v1.1.volumeint324", ftypes.INT32, nil, nil, nil, "Traded stocks")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.volume_int_648 = ProtoField.new("Volume Int 648", "bmv.bmvmarketdata.snapshot.intra.v1.1.volumeint648", ftypes.INT64, nil, nil, nil, "Traded volume")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.weighted_average_price = ProtoField.new("Weighted Average Price", "bmv.bmvmarketdata.snapshot.intra.v1.1.weightedaverageprice", ftypes.DOUBLE, nil, nil, nil, "Average price instrument.")

-- Bmv BmvMarketData Snapshot Intra 1.1 Framing
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.client_message = ProtoField.new("Client Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.clientmessage", ftypes.STRING, nil, nil, nil, "One request")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.client_message_header = ProtoField.new("Client Message Header", "bmv.bmvmarketdata.snapshot.intra.v1.1.clientmessageheader", ftypes.STRING, nil, nil, nil, "Request length and message type")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.client_packet = ProtoField.new("Client Packet", "bmv.bmvmarketdata.snapshot.intra.v1.1.clientpacket", ftypes.STRING, nil, nil, nil, "Bmv INTRA Multicast Tcp Client Packet")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.intra_multicast_header = ProtoField.new("INTRA Multicast Header", "bmv.bmvmarketdata.snapshot.intra.v1.1.intramulticastheader", ftypes.STRING, nil, nil, nil, "BMV INTRA Multicast Header")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.message_block = ProtoField.new("Message Block", "bmv.bmvmarketdata.snapshot.intra.v1.1.messageblock", ftypes.STRING, nil, nil, nil, "BMV INTRA Multicast message block")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.message_header = ProtoField.new("Message Header", "bmv.bmvmarketdata.snapshot.intra.v1.1.messageheader", ftypes.STRING, nil, nil, nil, "Message length and message type")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.packet = ProtoField.new("Packet", "bmv.bmvmarketdata.snapshot.intra.v1.1.packet", ftypes.STRING, nil, nil, nil, "Bmv INTRA Multicast Tcp Server Packet")

-- Bmv BmvMarketData Snapshot 1.1 Application Messages
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.benchmark_message = ProtoField.new("Benchmark Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.benchmarkmessage", ftypes.STRING, nil, nil, nil, "Benchmark")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.best_offer_message = ProtoField.new("Best Offer Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.bestoffermessage", ftypes.STRING, nil, nil, nil, "Message sent by instrument when best offer changes in the electronic book.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.cancellations_of_orders_message = ProtoField.new("Cancellations Of Orders Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.cancellationsofordersmessage", ftypes.STRING, nil, nil, nil, "This message deletes the trading floor order.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.capital_market_multiples_message = ProtoField.new("Capital Market Multiples Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.capitalmarketmultiplesmessage", ftypes.STRING, nil, nil, nil, "Capital Market Multiples")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.capital_trades_message = ProtoField.new("Capital Trades Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.capitaltradesmessage", ftypes.STRING, nil, nil, nil, "Contains information on any BMV accepted transaction.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.capitalization_rules_message = ProtoField.new("Capitalization Rules Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.capitalizationrulesmessage", ftypes.STRING, nil, nil, nil, "Capitalization Rules")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.catalog_for_instruments_belonging_to_the_capital_warrants_market_message = ProtoField.new("Catalog For Instruments Belonging To The Capital Warrants Market Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.catalogforinstrumentsbelongingtothecapitalwarrantsmarketmessage", ftypes.STRING, nil, nil, nil, "Catalogue for instruments pertaining to the Equities Warrants market.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.catalog_for_instruments_belonging_to_the_local_and_global_stock_market_message = ProtoField.new("Catalog For Instruments Belonging To The Local And Global Stock Market Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.catalogforinstrumentsbelongingtothelocalandglobalstockmarketmessage", ftypes.STRING, nil, nil, nil, "Catalog of instruments from the local and global stock markets.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.catalog_sent_for_instruments_belonging_to_capital_tracs_message = ProtoField.new("Catalog Sent For Instruments Belonging To Capital Tracs Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.catalogsentforinstrumentsbelongingtocapitaltracsmessage", ftypes.STRING, nil, nil, nil, "Catalogue sent for instruments pertaining to the equities TRACS.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.catalog_sent_for_instruments_belonging_to_mutual_funds_message = ProtoField.new("Catalog Sent For Instruments Belonging To Mutual Funds Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.catalogsentforinstrumentsbelongingtomutualfundsmessage", ftypes.STRING, nil, nil, nil, "Catalogue sent for instrument pertaining to the investment companies.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.catalogue_of_debt_and_metals_instruments_message = ProtoField.new("Catalogue Of Debt And Metals Instruments Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.catalogueofdebtandmetalsinstrumentsmessage", ftypes.STRING, nil, nil, nil, "Catalogue sent for instruments pertaining to the Local Fixed rate, Global Fixed rate and metals markets.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.changes_in_status_message = ProtoField.new("Changes In Status Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.changesinstatusmessage", ftypes.STRING, nil, nil, nil, "This message is sent when there has been a change in the status of the instruments.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.closing_price_origin_message = ProtoField.new("Closing Price Origin Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.closingpriceoriginmessage", ftypes.STRING, nil, nil, nil, "Closing price origin")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.consolidated_execution_of_orders_message = ProtoField.new("Consolidated Execution Of Orders Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.consolidatedexecutionofordersmessage", ftypes.STRING, nil, nil, nil, "The message is published when there is a term matching or closing in the electronic system of the BMV or BIVA.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.consolidated_inav_message = ProtoField.new("Consolidated Inav Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.consolidatedinavmessage", ftypes.STRING, nil, nil, nil, "Disclosure of the TRACS during the trading hours of the ongoing market.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.consolidated_trade_cancellation_message = ProtoField.new("Consolidated Trade Cancellation Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.consolidatedtradecancellationmessage", ftypes.STRING, nil, nil, nil, "This message in sent when a transaction is cancelled from BMV or BIVA system.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.continuous_auctions_beginning_message = ProtoField.new("Continuous Auctions Beginning Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.continuousauctionsbeginningmessage", ftypes.STRING, nil, nil, nil, "Sent at the moment one of the Continuous, Volatility or SIC auctions is generated.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.depth_message = ProtoField.new("Depth Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.depthmessage", ftypes.STRING, nil, nil, nil, "Market depth: up to 20 best buy or sale price levels (10 on the derivatives groups 7, 8 and 19), as many as Purchase or sale levels.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.derivatives_market_trades_message = ProtoField.new("Derivatives Market Trades Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.derivativesmarkettradesmessage", ftypes.STRING, nil, nil, nil, "Contains information on any MexDer accepted transaction.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.dollar_buy_sell_message = ProtoField.new("Dollar Buy Sell Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.dollarbuysellmessage", ftypes.STRING, nil, nil, nil, "Dollar Buy/Sell")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.equities_market_trades_message = ProtoField.new("Equities Market Trades Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.equitiesmarkettradesmessage", ftypes.STRING, nil, nil, nil, "Informs about any transaction which was accepted at the BMV or BIVA.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.events_system_message = ProtoField.new("Events System Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.eventssystemmessage", ftypes.STRING, nil, nil, nil, "The system of events message is used to inform that an event has occurred, which needs to be of public domain.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.execution_of_orders_message = ProtoField.new("Execution Of Orders Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.executionofordersmessage", ftypes.STRING, nil, nil, nil, "The message is disseminated at the time there is a matching or closing in BMV’s electronic system.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.existence_of_bids_at_mid_price_message = ProtoField.new("Existence Of Bids At Mid Price Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.existenceofbidsatmidpricemessage", ftypes.STRING, nil, nil, nil, "This message is generated when an instrument enters a bid in the hidden electronic book At Mean Price.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.general_indices_message = ProtoField.new("General Indices Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.generalindicesmessage", ftypes.STRING, nil, nil, nil, "Information about the MSE Indices.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.inav_message = ProtoField.new("Inav Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.inavmessage", ftypes.STRING, nil, nil, nil, "TRACS dissemination during continuous market trading hours.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.indices_components_message = ProtoField.new("Indices Components Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.indicescomponentsmessage", ftypes.STRING, nil, nil, nil, "Indices components obtained during the day.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.last_quote_message = ProtoField.new("Last Quote Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.lastquotemessage", ftypes.STRING, nil, nil, nil, "Message sent by instrument when the best bid is modified in the electronic book by the Origin Exchange; denotes the side that is modified, the sale or the purchase.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.login_message = ProtoField.new("Login Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.loginmessage", ftypes.STRING, nil, nil, nil, "Logs the consumer in to the replay or snapshot channel.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.login_response_message = ProtoField.new("Login Response Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.loginresponsemessage", ftypes.STRING, nil, nil, nil, "Answers a login request.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.middle_price_existing_quotes_message = ProtoField.new("Middle Price Existing Quotes Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.middlepriceexistingquotesmessage", ftypes.STRING, nil, nil, nil, "Generated when an instrument enters a posture in the hidden electronic Middle Price book.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.mutual_fund_trades_message = ProtoField.new("Mutual Fund Trades Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.mutualfundtradesmessage", ftypes.STRING, nil, nil, nil, "Contains any mutual funds operation realized.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.mutual_funds_trades_message = ProtoField.new("Mutual Funds Trades Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.mutualfundstradesmessage", ftypes.STRING, nil, nil, nil, "Any transaction made in mutual funds is reported.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.open_interest_message = ProtoField.new("Open Interest Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.openinterestmessage", ftypes.STRING, nil, nil, nil, "Open Interest")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.opening_of_continuous_auctions_message = ProtoField.new("Opening Of Continuous Auctions Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.openingofcontinuousauctionsmessage", ftypes.STRING, nil, nil, nil, "The message is sent when one of the ongoing, volatility or SIC bidding sessions is generated.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.order_addition_message = ProtoField.new("Order Addition Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.orderadditionmessage", ftypes.STRING, nil, nil, nil, "The moment an order is being accepted by the BMV central system; this message is diffused to the corresponding media.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.order_cancellation_message = ProtoField.new("Order Cancellation Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.ordercancellationmessage", ftypes.STRING, nil, nil, nil, "This message fully eliminates the order from the trading floor.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.order_change_message = ProtoField.new("Order Change Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.orderchangemessage", ftypes.STRING, nil, nil, nil, "Message sent when the order changes one of its data, the system allocates to it a new priority in the electronic book, the order to be replaced is identified with the original Instrument, Date and Number, the new allocation of priority in the electronic book appears in the New Date and Number fields.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.pricevolume_indicator_message = ProtoField.new("Pricevolume Indicator Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.pricevolumeindicatormessage", ftypes.STRING, nil, nil, nil, "Price/volume indicator for the messages coming from BIVA.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.probable_allocation_price_message = ProtoField.new("Probable Allocation Price Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.probableallocationpricemessage", ftypes.STRING, nil, nil, nil, "Sent during any auction type (Opening, Continuous, Volatility and Intraday) and only on instruments where there is already a virtual match or pre-allocation.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.probable_price_of_allocation_message = ProtoField.new("Probable Price Of Allocation Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.probablepriceofallocationmessage", ftypes.STRING, nil, nil, nil, "The message is sent during any type of bidding (Opening, Ongoing, Volatility and Intraday) and only in the instruments where there already is a virtual term matching or pre-allotment.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.public_offerings_message = ProtoField.new("Public Offerings Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.publicofferingsmessage", ftypes.STRING, nil, nil, nil, "Trade from a Public offering.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.reference_price_message = ProtoField.new("Reference Price Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.referencepricemessage", ftypes.STRING, nil, nil, nil, "This message is sent to define the reference price of an instrument.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.registration_of_order_message = ProtoField.new("Registration Of Order Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.registrationofordermessage", ftypes.STRING, nil, nil, nil, "When the order is accepted by the central system of the BMV or BIVA, this message is sent to the appropriate media.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.registry_operations_message = ProtoField.new("Registry Operations Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.registryoperationsmessage", ftypes.STRING, nil, nil, nil, "Sent whenever there is a debt or capital instrument placement.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.relation_between_bmvbiva_instruments_message = ProtoField.new("Relation Between Bmvbiva Instruments Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.relationbetweenbmvbivainstrumentsmessage", ftypes.STRING, nil, nil, nil, "Relation between identifiers of instruments between BIVA and BMV.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.replay_request_message = ProtoField.new("Replay Request Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.replayrequestmessage", ftypes.STRING, nil, nil, nil, "Requests the replay of messages already published on a multicast group.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.replay_response_message = ProtoField.new("Replay Response Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.replayresponsemessage", ftypes.STRING, nil, nil, nil, "Answers a replay request; the replayed messages follow an accepted one.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.short_sales_balances_per_instrument_message = ProtoField.new("Short Sales Balances Per Instrument Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.shortsalesbalancesperinstrumentmessage", ftypes.STRING, nil, nil, nil, "Short sales balances per instrument")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.snapshot_complete_message = ProtoField.new("Snapshot Complete Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.snapshotcompletemessage", ftypes.STRING, nil, nil, nil, "Ends a snapshot with the sequence number it synchronizes with on the online channel.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.snapshot_consolidated_feed_request_message = ProtoField.new("Snapshot Consolidated Feed Request Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.snapshotconsolidatedfeedrequestmessage", ftypes.STRING, nil, nil, nil, "Requests a snapshot of a Consolidated Feed group.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.snapshot_indices_request_message = ProtoField.new("Snapshot Indices Request Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.snapshotindicesrequestmessage", ftypes.STRING, nil, nil, nil, "Requests a snapshot of an index.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.snapshot_request_message = ProtoField.new("Snapshot Request Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.snapshotrequestmessage", ftypes.STRING, nil, nil, nil, "Requests a snapshot of a multicast group.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.snapshot_response_message = ProtoField.new("Snapshot Response Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.snapshotresponsemessage", ftypes.STRING, nil, nil, nil, "Answers a snapshot request.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.statistics_of_instruments_message = ProtoField.new("Statistics Of Instruments Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.statisticsofinstrumentsmessage", ftypes.STRING, nil, nil, nil, "Update message from derivatives statistics sent each time there is an update on the trading floor at any level price.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.status_changes_message = ProtoField.new("Status Changes Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.statuschangesmessage", ftypes.STRING, nil, nil, nil, "All instruments are in a certain status before and during trading session.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.system_events_message = ProtoField.new("System Events Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.systemeventsmessage", ftypes.STRING, nil, nil, nil, "The system events message is used to inform that an event has taken place, which needs to be disclosed to the public for its attention.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.tradability_message = ProtoField.new("Tradability Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.tradabilitymessage", ftypes.STRING, nil, nil, nil, "Message sent every half hour during trading session, informing general tradability by instrument.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.trade_cancellation_message = ProtoField.new("Trade Cancellation Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.tradecancellationmessage", ftypes.STRING, nil, nil, nil, "This message is sent when a transaction is cancelled from the BMV system.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.virtual_trades_message = ProtoField.new("Virtual Trades Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.virtualtradesmessage", ftypes.STRING, nil, nil, nil, "When an operation has been pre-assigned to the at closing and average day Price electronic books, a virtual trade message is sent, where also notifying of this operation.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.weighted_average_price_message = ProtoField.new("Weighted Average Price Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.weightedaveragepricemessage", ftypes.STRING, nil, nil, nil, "This message will have the weighted average price (WAP) per instrument and is sent for each transaction generated within the calculation period of the WAP (last 20 minutes of the trading session); when there are no more trades in this period, the message is sent with the Weighted Average Price in zeros.")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.weighted_average_price_settlement_prices_message = ProtoField.new("Weighted Average Price Settlement Prices Message", "bmv.bmvmarketdata.snapshot.intra.v1.1.weightedaveragepricesettlementpricesmessage", ftypes.STRING, nil, nil, nil, "For equities market, this message will be sent for each operation containing weighted average price per instrument generated within WAP calculation period (last 20 minutes of trading).")

-- Bmv BmvMarketData Snapshot Intra 1.1 Generated Fields
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.message_block_index = ProtoField.new("Message Block Index", "bmv.bmvmarketdata.snapshot.intra.v1.1.messageblockindex", ftypes.UINT16)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.price_level_index = ProtoField.new("Price Level Index", "bmv.bmvmarketdata.snapshot.intra.v1.1.pricelevelindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Bmv BmvMarketData Snapshot Intra 1.1 Formatting
-----------------------------------------------------------------------

-- Text field character encoding (Wireshark ENC_ constant)
bmv_bmvmarketdata_snapshot_intra_v1_1.text_encoding = ENC_ASCII

-- timestamp format
local timestamp_format_enum = {
  { 1, "Full DateTime Local", 2 },
  { 2, "Full DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=Full DateTime Local, 3=Full DateTime Utc
bmv_bmvmarketdata_snapshot_intra_v1_1.timestamp_format = 2

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

-- Bmv BmvMarketData Snapshot Intra 1.1 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.repeating_groups = true
show.indexes = true

-- Register Bmv BmvMarketData Snapshot Intra 1.1 Show Options
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_bmv_bmvmarketdata_snapshot_intra_v1_1.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_bmv_bmvmarketdata_snapshot_intra_v1_1.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_bmv_bmvmarketdata_snapshot_intra_v1_1.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_bmv_bmvmarketdata_snapshot_intra_v1_1.prefs.show_application_messages then
    show.application_messages = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.prefs.show_application_messages
  end
  if show.headers ~= omi_bmv_bmvmarketdata_snapshot_intra_v1_1.prefs.show_headers then
    show.headers = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.prefs.show_headers
  end
  if show.repeating_groups ~= omi_bmv_bmvmarketdata_snapshot_intra_v1_1.prefs.show_repeating_groups then
    show.repeating_groups = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.prefs.show_repeating_groups
  end
  if show.structs ~= omi_bmv_bmvmarketdata_snapshot_intra_v1_1.prefs.show_structs then
    show.structs = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.prefs.show_structs
  end
  if show.indexes ~= omi_bmv_bmvmarketdata_snapshot_intra_v1_1.prefs.show_indexes then
    show.indexes = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.prefs.show_indexes
  end
  if bmv_bmvmarketdata_snapshot_intra_v1_1.timestamp_format ~= omi_bmv_bmvmarketdata_snapshot_intra_v1_1.prefs.timestamp_format then
    bmv_bmvmarketdata_snapshot_intra_v1_1.timestamp_format = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.prefs.timestamp_format
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
-- Bmv BmvMarketData Snapshot Intra 1.1 Fields
-----------------------------------------------------------------------

-- 24 Hours Annual Performance
bmv_bmvmarketdata_snapshot_intra_v1_1._24_hours_annual_performance = {}

-- Size: 24 Hours Annual Performance
bmv_bmvmarketdata_snapshot_intra_v1_1._24_hours_annual_performance.size = 8

-- Display: 24 Hours Annual Performance
bmv_bmvmarketdata_snapshot_intra_v1_1._24_hours_annual_performance.display = function(value)
  return "24 Hours Annual Performance: "..value
end

-- Translate: 24 Hours Annual Performance
bmv_bmvmarketdata_snapshot_intra_v1_1._24_hours_annual_performance.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: 24 Hours Annual Performance
bmv_bmvmarketdata_snapshot_intra_v1_1._24_hours_annual_performance.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1._24_hours_annual_performance.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1._24_hours_annual_performance.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1._24_hours_annual_performance.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields._24_hours_annual_performance, range, value, display)

  return offset + length, value
end

-- 24 Hours Daily Performance
bmv_bmvmarketdata_snapshot_intra_v1_1._24_hours_daily_performance = {}

-- Size: 24 Hours Daily Performance
bmv_bmvmarketdata_snapshot_intra_v1_1._24_hours_daily_performance.size = 8

-- Display: 24 Hours Daily Performance
bmv_bmvmarketdata_snapshot_intra_v1_1._24_hours_daily_performance.display = function(value)
  return "24 Hours Daily Performance: "..value
end

-- Translate: 24 Hours Daily Performance
bmv_bmvmarketdata_snapshot_intra_v1_1._24_hours_daily_performance.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: 24 Hours Daily Performance
bmv_bmvmarketdata_snapshot_intra_v1_1._24_hours_daily_performance.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1._24_hours_daily_performance.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1._24_hours_daily_performance.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1._24_hours_daily_performance.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields._24_hours_daily_performance, range, value, display)

  return offset + length, value
end

-- 24 Hours Monthly Performance
bmv_bmvmarketdata_snapshot_intra_v1_1._24_hours_monthly_performance = {}

-- Size: 24 Hours Monthly Performance
bmv_bmvmarketdata_snapshot_intra_v1_1._24_hours_monthly_performance.size = 8

-- Display: 24 Hours Monthly Performance
bmv_bmvmarketdata_snapshot_intra_v1_1._24_hours_monthly_performance.display = function(value)
  return "24 Hours Monthly Performance: "..value
end

-- Translate: 24 Hours Monthly Performance
bmv_bmvmarketdata_snapshot_intra_v1_1._24_hours_monthly_performance.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: 24 Hours Monthly Performance
bmv_bmvmarketdata_snapshot_intra_v1_1._24_hours_monthly_performance.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1._24_hours_monthly_performance.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1._24_hours_monthly_performance.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1._24_hours_monthly_performance.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields._24_hours_monthly_performance, range, value, display)

  return offset + length, value
end

-- Amount
bmv_bmvmarketdata_snapshot_intra_v1_1.amount = {}

-- Size: Amount
bmv_bmvmarketdata_snapshot_intra_v1_1.amount.size = 8

-- Display: Amount
bmv_bmvmarketdata_snapshot_intra_v1_1.amount.display = function(value)
  return "Amount: "..value
end

-- Translate: Amount
bmv_bmvmarketdata_snapshot_intra_v1_1.amount.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Amount
bmv_bmvmarketdata_snapshot_intra_v1_1.amount.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.amount.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.amount.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.amount, range, value, display)

  return offset + length, value
end

-- Amount Placed
bmv_bmvmarketdata_snapshot_intra_v1_1.amount_placed = {}

-- Size: Amount Placed
bmv_bmvmarketdata_snapshot_intra_v1_1.amount_placed.size = 8

-- Display: Amount Placed
bmv_bmvmarketdata_snapshot_intra_v1_1.amount_placed.display = function(value)
  return "Amount Placed: "..value
end

-- Dissect: Amount Placed
bmv_bmvmarketdata_snapshot_intra_v1_1.amount_placed.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.amount_placed.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.amount_placed.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.amount_placed, range, value, display)

  return offset + length, value
end

-- Amount Traded
bmv_bmvmarketdata_snapshot_intra_v1_1.amount_traded = {}

-- Size: Amount Traded
bmv_bmvmarketdata_snapshot_intra_v1_1.amount_traded.size = 8

-- Display: Amount Traded
bmv_bmvmarketdata_snapshot_intra_v1_1.amount_traded.display = function(value)
  return "Amount Traded: "..value
end

-- Dissect: Amount Traded
bmv_bmvmarketdata_snapshot_intra_v1_1.amount_traded.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.amount_traded.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.amount_traded.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.amount_traded, range, value, display)

  return offset + length, value
end

-- Annual Performance
bmv_bmvmarketdata_snapshot_intra_v1_1.annual_performance = {}

-- Size: Annual Performance
bmv_bmvmarketdata_snapshot_intra_v1_1.annual_performance.size = 8

-- Display: Annual Performance
bmv_bmvmarketdata_snapshot_intra_v1_1.annual_performance.display = function(value)
  return "Annual Performance: "..value
end

-- Translate: Annual Performance
bmv_bmvmarketdata_snapshot_intra_v1_1.annual_performance.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Annual Performance
bmv_bmvmarketdata_snapshot_intra_v1_1.annual_performance.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.annual_performance.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.annual_performance.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.annual_performance.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.annual_performance, range, value, display)

  return offset + length, value
end

-- Auction Indicator
bmv_bmvmarketdata_snapshot_intra_v1_1.auction_indicator = {}

-- Size: Auction Indicator
bmv_bmvmarketdata_snapshot_intra_v1_1.auction_indicator.size = 1

-- Display: Auction Indicator
bmv_bmvmarketdata_snapshot_intra_v1_1.auction_indicator.display = function(value)
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
bmv_bmvmarketdata_snapshot_intra_v1_1.auction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.auction_indicator.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.auction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.auction_indicator, range, value, display)

  return offset + length, value
end

-- Auction Session End Time
bmv_bmvmarketdata_snapshot_intra_v1_1.auction_session_end_time = {}

-- Size: Auction Session End Time
bmv_bmvmarketdata_snapshot_intra_v1_1.auction_session_end_time.size = 8

-- Dissect: Auction Session End Time
bmv_bmvmarketdata_snapshot_intra_v1_1.auction_session_end_time.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.auction_session_end_time.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.auction_session_end_time
  if bmv_bmvmarketdata_snapshot_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.auction_session_end_time_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Auction Session Startup Time
bmv_bmvmarketdata_snapshot_intra_v1_1.auction_session_startup_time = {}

-- Size: Auction Session Startup Time
bmv_bmvmarketdata_snapshot_intra_v1_1.auction_session_startup_time.size = 8

-- Dissect: Auction Session Startup Time
bmv_bmvmarketdata_snapshot_intra_v1_1.auction_session_startup_time.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.auction_session_startup_time.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.auction_session_startup_time
  if bmv_bmvmarketdata_snapshot_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.auction_session_startup_time_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Average
bmv_bmvmarketdata_snapshot_intra_v1_1.average = {}

-- Size: Average
bmv_bmvmarketdata_snapshot_intra_v1_1.average.size = 8

-- Display: Average
bmv_bmvmarketdata_snapshot_intra_v1_1.average.display = function(value)
  return "Average: "..value
end

-- Translate: Average
bmv_bmvmarketdata_snapshot_intra_v1_1.average.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Average
bmv_bmvmarketdata_snapshot_intra_v1_1.average.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.average.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.average.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.average.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.average, range, value, display)

  return offset + length, value
end

-- Beginning Time Of Auction
bmv_bmvmarketdata_snapshot_intra_v1_1.beginning_time_of_auction = {}

-- Size: Beginning Time Of Auction
bmv_bmvmarketdata_snapshot_intra_v1_1.beginning_time_of_auction.size = 8

-- Dissect: Beginning Time Of Auction
bmv_bmvmarketdata_snapshot_intra_v1_1.beginning_time_of_auction.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.beginning_time_of_auction.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.beginning_time_of_auction
  if bmv_bmvmarketdata_snapshot_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.beginning_time_of_auction_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Benchmark Date
bmv_bmvmarketdata_snapshot_intra_v1_1.benchmark_date = {}

-- Size: Benchmark Date
bmv_bmvmarketdata_snapshot_intra_v1_1.benchmark_date.size = 8

-- Dissect: Benchmark Date
bmv_bmvmarketdata_snapshot_intra_v1_1.benchmark_date.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.benchmark_date.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.benchmark_date
  if bmv_bmvmarketdata_snapshot_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.benchmark_date_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Benchmark Name
bmv_bmvmarketdata_snapshot_intra_v1_1.benchmark_name = {}

-- Size: Benchmark Name
bmv_bmvmarketdata_snapshot_intra_v1_1.benchmark_name.size = 40

-- Display: Benchmark Name
bmv_bmvmarketdata_snapshot_intra_v1_1.benchmark_name.display = function(value)
  return "Benchmark Name: "..value
end

-- Dissect: Benchmark Name
bmv_bmvmarketdata_snapshot_intra_v1_1.benchmark_name.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.benchmark_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.benchmark_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.benchmark_name, range, value, display)

  return offset + length, value
end

-- Best Purchasing Price
bmv_bmvmarketdata_snapshot_intra_v1_1.best_purchasing_price = {}

-- Size: Best Purchasing Price
bmv_bmvmarketdata_snapshot_intra_v1_1.best_purchasing_price.size = 8

-- Display: Best Purchasing Price
bmv_bmvmarketdata_snapshot_intra_v1_1.best_purchasing_price.display = function(value)
  return "Best Purchasing Price: "..value
end

-- Translate: Best Purchasing Price
bmv_bmvmarketdata_snapshot_intra_v1_1.best_purchasing_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Best Purchasing Price
bmv_bmvmarketdata_snapshot_intra_v1_1.best_purchasing_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.best_purchasing_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.best_purchasing_price.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.best_purchasing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.best_purchasing_price, range, value, display)

  return offset + length, value
end

-- Best Selling Price
bmv_bmvmarketdata_snapshot_intra_v1_1.best_selling_price = {}

-- Size: Best Selling Price
bmv_bmvmarketdata_snapshot_intra_v1_1.best_selling_price.size = 8

-- Display: Best Selling Price
bmv_bmvmarketdata_snapshot_intra_v1_1.best_selling_price.display = function(value)
  return "Best Selling Price: "..value
end

-- Translate: Best Selling Price
bmv_bmvmarketdata_snapshot_intra_v1_1.best_selling_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Best Selling Price
bmv_bmvmarketdata_snapshot_intra_v1_1.best_selling_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.best_selling_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.best_selling_price.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.best_selling_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.best_selling_price, range, value, display)

  return offset + length, value
end

-- Beta Coefficient
bmv_bmvmarketdata_snapshot_intra_v1_1.beta_coefficient = {}

-- Size: Beta Coefficient
bmv_bmvmarketdata_snapshot_intra_v1_1.beta_coefficient.size = 8

-- Display: Beta Coefficient
bmv_bmvmarketdata_snapshot_intra_v1_1.beta_coefficient.display = function(value)
  return "Beta Coefficient: "..value
end

-- Translate: Beta Coefficient
bmv_bmvmarketdata_snapshot_intra_v1_1.beta_coefficient.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Beta Coefficient
bmv_bmvmarketdata_snapshot_intra_v1_1.beta_coefficient.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.beta_coefficient.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.beta_coefficient.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.beta_coefficient.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.beta_coefficient, range, value, display)

  return offset + length, value
end

-- Beta Coefficient Sign
bmv_bmvmarketdata_snapshot_intra_v1_1.beta_coefficient_sign = {}

-- Size: Beta Coefficient Sign
bmv_bmvmarketdata_snapshot_intra_v1_1.beta_coefficient_sign.size = 1

-- Display: Beta Coefficient Sign
bmv_bmvmarketdata_snapshot_intra_v1_1.beta_coefficient_sign.display = function(value)
  if value == " " then
    return "Beta Coefficient Sign: Positive (<whitespace>)"
  end
  if value == "_" then
    return "Beta Coefficient Sign: Negative (_)"
  end

  return "Beta Coefficient Sign: Unknown("..value..")"
end

-- Dissect: Beta Coefficient Sign
bmv_bmvmarketdata_snapshot_intra_v1_1.beta_coefficient_sign.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.beta_coefficient_sign.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.beta_coefficient_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.beta_coefficient_sign, range, value, display)

  return offset + length, value
end

-- Bids Existing
bmv_bmvmarketdata_snapshot_intra_v1_1.bids_existing = {}

-- Size: Bids Existing
bmv_bmvmarketdata_snapshot_intra_v1_1.bids_existing.size = 1

-- Display: Bids Existing
bmv_bmvmarketdata_snapshot_intra_v1_1.bids_existing.display = function(value)
  return "Bids Existing: "..value
end

-- Dissect: Bids Existing
bmv_bmvmarketdata_snapshot_intra_v1_1.bids_existing.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.bids_existing.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.bids_existing.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.bids_existing, range, value, display)

  return offset + length, value
end

-- Biva Instrument
bmv_bmvmarketdata_snapshot_intra_v1_1.biva_instrument = {}

-- Size: Biva Instrument
bmv_bmvmarketdata_snapshot_intra_v1_1.biva_instrument.size = 4

-- Display: Biva Instrument
bmv_bmvmarketdata_snapshot_intra_v1_1.biva_instrument.display = function(value)
  return "Biva Instrument: "..value
end

-- Dissect: Biva Instrument
bmv_bmvmarketdata_snapshot_intra_v1_1.biva_instrument.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.biva_instrument.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.biva_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.biva_instrument, range, value, display)

  return offset + length, value
end

-- Book Value
bmv_bmvmarketdata_snapshot_intra_v1_1.book_value = {}

-- Size: Book Value
bmv_bmvmarketdata_snapshot_intra_v1_1.book_value.size = 8

-- Display: Book Value
bmv_bmvmarketdata_snapshot_intra_v1_1.book_value.display = function(value)
  return "Book Value: "..value
end

-- Translate: Book Value
bmv_bmvmarketdata_snapshot_intra_v1_1.book_value.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Book Value
bmv_bmvmarketdata_snapshot_intra_v1_1.book_value.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.book_value.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.book_value.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.book_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.book_value, range, value, display)

  return offset + length, value
end

-- Bursatility Indices
bmv_bmvmarketdata_snapshot_intra_v1_1.bursatility_indices = {}

-- Size: Bursatility Indices
bmv_bmvmarketdata_snapshot_intra_v1_1.bursatility_indices.size = 4

-- Display: Bursatility Indices
bmv_bmvmarketdata_snapshot_intra_v1_1.bursatility_indices.display = function(value)
  return "Bursatility Indices: "..value
end

-- Translate: Bursatility Indices
bmv_bmvmarketdata_snapshot_intra_v1_1.bursatility_indices.translate = function(raw)
  return raw/10000
end

-- Dissect: Bursatility Indices
bmv_bmvmarketdata_snapshot_intra_v1_1.bursatility_indices.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.bursatility_indices.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.bursatility_indices.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.bursatility_indices.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.bursatility_indices, range, value, display)

  return offset + length, value
end

-- Bursatility Indices Sign
bmv_bmvmarketdata_snapshot_intra_v1_1.bursatility_indices_sign = {}

-- Size: Bursatility Indices Sign
bmv_bmvmarketdata_snapshot_intra_v1_1.bursatility_indices_sign.size = 1

-- Display: Bursatility Indices Sign
bmv_bmvmarketdata_snapshot_intra_v1_1.bursatility_indices_sign.display = function(value)
  if value == " " then
    return "Bursatility Indices Sign: Positive (<whitespace>)"
  end
  if value == "_" then
    return "Bursatility Indices Sign: Negative (_)"
  end

  return "Bursatility Indices Sign: Unknown("..value..")"
end

-- Dissect: Bursatility Indices Sign
bmv_bmvmarketdata_snapshot_intra_v1_1.bursatility_indices_sign.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.bursatility_indices_sign.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.bursatility_indices_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.bursatility_indices_sign, range, value, display)

  return offset + length, value
end

-- Business Line
bmv_bmvmarketdata_snapshot_intra_v1_1.business_line = {}

-- Size: Business Line
bmv_bmvmarketdata_snapshot_intra_v1_1.business_line.size = 1

-- Display: Business Line
bmv_bmvmarketdata_snapshot_intra_v1_1.business_line.display = function(value)
  return "Business Line: "..value
end

-- Dissect: Business Line
bmv_bmvmarketdata_snapshot_intra_v1_1.business_line.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.business_line.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.business_line.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.business_line, range, value, display)

  return offset + length, value
end

-- Buy Alpha 5
bmv_bmvmarketdata_snapshot_intra_v1_1.buy_alpha_5 = {}

-- Size: Buy Alpha 5
bmv_bmvmarketdata_snapshot_intra_v1_1.buy_alpha_5.size = 5

-- Display: Buy Alpha 5
bmv_bmvmarketdata_snapshot_intra_v1_1.buy_alpha_5.display = function(value)
  return "Buy Alpha 5: "..value
end

-- Dissect: Buy Alpha 5
bmv_bmvmarketdata_snapshot_intra_v1_1.buy_alpha_5.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.buy_alpha_5.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.buy_alpha_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.buy_alpha_5, range, value, display)

  return offset + length, value
end

-- Buy Precio 88
bmv_bmvmarketdata_snapshot_intra_v1_1.buy_precio_88 = {}

-- Size: Buy Precio 88
bmv_bmvmarketdata_snapshot_intra_v1_1.buy_precio_88.size = 8

-- Display: Buy Precio 88
bmv_bmvmarketdata_snapshot_intra_v1_1.buy_precio_88.display = function(value)
  return "Buy Precio 88: "..value
end

-- Translate: Buy Precio 88
bmv_bmvmarketdata_snapshot_intra_v1_1.buy_precio_88.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Buy Precio 88
bmv_bmvmarketdata_snapshot_intra_v1_1.buy_precio_88.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.buy_precio_88.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.buy_precio_88.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.buy_precio_88.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.buy_precio_88, range, value, display)

  return offset + length, value
end

-- Buy Volume
bmv_bmvmarketdata_snapshot_intra_v1_1.buy_volume = {}

-- Size: Buy Volume
bmv_bmvmarketdata_snapshot_intra_v1_1.buy_volume.size = 8

-- Display: Buy Volume
bmv_bmvmarketdata_snapshot_intra_v1_1.buy_volume.display = function(value)
  return "Buy Volume: "..value
end

-- Dissect: Buy Volume
bmv_bmvmarketdata_snapshot_intra_v1_1.buy_volume.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.buy_volume.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.buy_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.buy_volume, range, value, display)

  return offset + length, value
end

-- Buybacks
bmv_bmvmarketdata_snapshot_intra_v1_1.buybacks = {}

-- Size: Buybacks
bmv_bmvmarketdata_snapshot_intra_v1_1.buybacks.size = 8

-- Display: Buybacks
bmv_bmvmarketdata_snapshot_intra_v1_1.buybacks.display = function(value)
  return "Buybacks: "..value
end

-- Dissect: Buybacks
bmv_bmvmarketdata_snapshot_intra_v1_1.buybacks.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.buybacks.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.buybacks.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.buybacks, range, value, display)

  return offset + length, value
end

-- Client Length
bmv_bmvmarketdata_snapshot_intra_v1_1.client_length = {}

-- Size: Client Length
bmv_bmvmarketdata_snapshot_intra_v1_1.client_length.size = 1

-- Display: Client Length
bmv_bmvmarketdata_snapshot_intra_v1_1.client_length.display = function(value)
  return "Client Length: "..value
end

-- Dissect: Client Length
bmv_bmvmarketdata_snapshot_intra_v1_1.client_length.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.client_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.client_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.client_length, range, value, display)

  return offset + length, value
end

-- Client Message Type
bmv_bmvmarketdata_snapshot_intra_v1_1.client_message_type = {}

-- Size: Client Message Type
bmv_bmvmarketdata_snapshot_intra_v1_1.client_message_type.size = 1

-- Display: Client Message Type
bmv_bmvmarketdata_snapshot_intra_v1_1.client_message_type.display = function(value)
  if value == 0x21 then
    return "Client Message Type: Login Message (0x21)"
  end
  if value == 0x23 then
    return "Client Message Type: Replay Request Message (0x23)"
  end
  if value == 0x24 then
    return "Client Message Type: Snapshot Request Message (0x24)"
  end
  if value == 0x2D then
    return "Client Message Type: Snapshot Indices Request Message (0x2D)"
  end
  if value == 0x5F then
    return "Client Message Type: Snapshot Consolidated Feed Request Message (0x5F)"
  end

  return "Client Message Type: Unknown("..string.format("0x%02X", value)..")"
end

-- Dissect: Client Message Type
bmv_bmvmarketdata_snapshot_intra_v1_1.client_message_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.client_message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.client_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.client_message_type, range, value, display)

  return offset + length, value
end

-- Closing Price
bmv_bmvmarketdata_snapshot_intra_v1_1.closing_price = {}

-- Size: Closing Price
bmv_bmvmarketdata_snapshot_intra_v1_1.closing_price.size = 8

-- Display: Closing Price
bmv_bmvmarketdata_snapshot_intra_v1_1.closing_price.display = function(value)
  return "Closing Price: "..value
end

-- Translate: Closing Price
bmv_bmvmarketdata_snapshot_intra_v1_1.closing_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Closing Price
bmv_bmvmarketdata_snapshot_intra_v1_1.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.closing_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.closing_price.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Code Of Event
bmv_bmvmarketdata_snapshot_intra_v1_1.code_of_event = {}

-- Size: Code Of Event
bmv_bmvmarketdata_snapshot_intra_v1_1.code_of_event.size = 1

-- Display: Code Of Event
bmv_bmvmarketdata_snapshot_intra_v1_1.code_of_event.labels = {
  ["A"] = "Code Of Event: Start Of System Hours (A)",
  ["B"] = "Code Of Event: Cancelation Of Offers (B)",
  ["C"] = "Code Of Event: Start Of Opening Auction (C)",
  ["D"] = "Code Of Event: Start Of Continuous Market (D)",
  ["E"] = "Code Of Event: Start Of Wap Period (E)",
  ["F"] = "Code Of Event: Continuous Market Ends (F)",
  ["G"] = "Code Of Event: Start Of After Closing Phase (G)",
  ["H"] = "Code Of Event: It Ends After Closing (H)",
  ["J"] = "Code Of Event: Transmission Of Final Prices Ends (J)",
  ["K"] = "Code Of Event: End Of System Hours (K)",
  ["M"] = "Code Of Event: Start Of Administrative Recess (M)",
  ["N"] = "Code Of Event: End Of Administrative Recess (N)",
  ["O"] = "Code Of Event: Start Dvmamx Markets (O)",
  ["P"] = "Code Of Event: End Of Dvma Markets (P)",
  ["Q"] = "Code Of Event: End Of Mx Markets (Q)",
  ["R"] = "Code Of Event: Start Of Opc Modality (R)",
  ["S"] = "Code Of Event: End Of Opc Modality (S)",
  ["T"] = "Code Of Event: Start Of Settlement Auction (T)",
  ["U"] = "Code Of Event: End Of Settlement Auction (U)",
  ["V"] = "Code Of Event: Final Register Of Settlement Prices (V)",
  ["W"] = "Code Of Event: Open Interest (W)",
}

bmv_bmvmarketdata_snapshot_intra_v1_1.code_of_event.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.code_of_event.labels[value] or "Code Of Event: Unknown("..value..")"
end

-- Dissect: Code Of Event
bmv_bmvmarketdata_snapshot_intra_v1_1.code_of_event.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.code_of_event.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.code_of_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.code_of_event, range, value, display)

  return offset + length, value
end

-- Component
bmv_bmvmarketdata_snapshot_intra_v1_1.component = {}

-- Size: Component
bmv_bmvmarketdata_snapshot_intra_v1_1.component.size = 2

-- Display: Component
bmv_bmvmarketdata_snapshot_intra_v1_1.component.display = function(value)
  return "Component: "..value
end

-- Dissect: Component
bmv_bmvmarketdata_snapshot_intra_v1_1.component.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.component.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.component.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.component, range, value, display)

  return offset + length, value
end

-- Component In Cash
bmv_bmvmarketdata_snapshot_intra_v1_1.component_in_cash = {}

-- Size: Component In Cash
bmv_bmvmarketdata_snapshot_intra_v1_1.component_in_cash.size = 8

-- Display: Component In Cash
bmv_bmvmarketdata_snapshot_intra_v1_1.component_in_cash.display = function(value)
  return "Component In Cash: "..value
end

-- Translate: Component In Cash
bmv_bmvmarketdata_snapshot_intra_v1_1.component_in_cash.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Component In Cash
bmv_bmvmarketdata_snapshot_intra_v1_1.component_in_cash.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.component_in_cash.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.component_in_cash.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.component_in_cash.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.component_in_cash, range, value, display)

  return offset + length, value
end

-- Concertation
bmv_bmvmarketdata_snapshot_intra_v1_1.concertation = {}

-- Size: Concertation
bmv_bmvmarketdata_snapshot_intra_v1_1.concertation.size = 1

-- Display: Concertation
bmv_bmvmarketdata_snapshot_intra_v1_1.concertation.labels = {
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

bmv_bmvmarketdata_snapshot_intra_v1_1.concertation.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.concertation.labels[value] or "Concertation: Unknown("..value..")"
end

-- Dissect: Concertation
bmv_bmvmarketdata_snapshot_intra_v1_1.concertation.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.concertation.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.concertation.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.concertation, range, value, display)

  return offset + length, value
end

-- Concertation Type
bmv_bmvmarketdata_snapshot_intra_v1_1.concertation_type = {}

-- Size: Concertation Type
bmv_bmvmarketdata_snapshot_intra_v1_1.concertation_type.size = 1

-- Display: Concertation Type
bmv_bmvmarketdata_snapshot_intra_v1_1.concertation_type.labels = {
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

bmv_bmvmarketdata_snapshot_intra_v1_1.concertation_type.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.concertation_type.labels[value] or "Concertation Type: Unknown("..value..")"
end

-- Dissect: Concertation Type
bmv_bmvmarketdata_snapshot_intra_v1_1.concertation_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.concertation_type.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.concertation_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.concertation_type, range, value, display)

  return offset + length, value
end

-- Consecutive Number
bmv_bmvmarketdata_snapshot_intra_v1_1.consecutive_number = {}

-- Size: Consecutive Number
bmv_bmvmarketdata_snapshot_intra_v1_1.consecutive_number.size = 8

-- Display: Consecutive Number
bmv_bmvmarketdata_snapshot_intra_v1_1.consecutive_number.display = function(value)
  return "Consecutive Number: "..value
end

-- Dissect: Consecutive Number
bmv_bmvmarketdata_snapshot_intra_v1_1.consecutive_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.consecutive_number.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.consecutive_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.consecutive_number, range, value, display)

  return offset + length, value
end

-- Consecutive Number Of The Trade
bmv_bmvmarketdata_snapshot_intra_v1_1.consecutive_number_of_the_trade = {}

-- Size: Consecutive Number Of The Trade
bmv_bmvmarketdata_snapshot_intra_v1_1.consecutive_number_of_the_trade.size = 8

-- Display: Consecutive Number Of The Trade
bmv_bmvmarketdata_snapshot_intra_v1_1.consecutive_number_of_the_trade.display = function(value)
  return "Consecutive Number Of The Trade: "..value
end

-- Dissect: Consecutive Number Of The Trade
bmv_bmvmarketdata_snapshot_intra_v1_1.consecutive_number_of_the_trade.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.consecutive_number_of_the_trade.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.consecutive_number_of_the_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.consecutive_number_of_the_trade, range, value, display)

  return offset + length, value
end

-- Correlation Coefficient
bmv_bmvmarketdata_snapshot_intra_v1_1.correlation_coefficient = {}

-- Size: Correlation Coefficient
bmv_bmvmarketdata_snapshot_intra_v1_1.correlation_coefficient.size = 8

-- Display: Correlation Coefficient
bmv_bmvmarketdata_snapshot_intra_v1_1.correlation_coefficient.display = function(value)
  return "Correlation Coefficient: "..value
end

-- Translate: Correlation Coefficient
bmv_bmvmarketdata_snapshot_intra_v1_1.correlation_coefficient.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Correlation Coefficient
bmv_bmvmarketdata_snapshot_intra_v1_1.correlation_coefficient.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.correlation_coefficient.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.correlation_coefficient.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.correlation_coefficient.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.correlation_coefficient, range, value, display)

  return offset + length, value
end

-- Correlation Coefficient Sign
bmv_bmvmarketdata_snapshot_intra_v1_1.correlation_coefficient_sign = {}

-- Size: Correlation Coefficient Sign
bmv_bmvmarketdata_snapshot_intra_v1_1.correlation_coefficient_sign.size = 1

-- Display: Correlation Coefficient Sign
bmv_bmvmarketdata_snapshot_intra_v1_1.correlation_coefficient_sign.display = function(value)
  if value == " " then
    return "Correlation Coefficient Sign: Positive (<whitespace>)"
  end
  if value == "_" then
    return "Correlation Coefficient Sign: Negative (_)"
  end

  return "Correlation Coefficient Sign: Unknown("..value..")"
end

-- Dissect: Correlation Coefficient Sign
bmv_bmvmarketdata_snapshot_intra_v1_1.correlation_coefficient_sign.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.correlation_coefficient_sign.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.correlation_coefficient_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.correlation_coefficient_sign, range, value, display)

  return offset + length, value
end

-- Coupon In Effect
bmv_bmvmarketdata_snapshot_intra_v1_1.coupon_in_effect = {}

-- Size: Coupon In Effect
bmv_bmvmarketdata_snapshot_intra_v1_1.coupon_in_effect.size = 2

-- Display: Coupon In Effect
bmv_bmvmarketdata_snapshot_intra_v1_1.coupon_in_effect.display = function(value)
  return "Coupon In Effect: "..value
end

-- Dissect: Coupon In Effect
bmv_bmvmarketdata_snapshot_intra_v1_1.coupon_in_effect.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.coupon_in_effect.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.coupon_in_effect.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.coupon_in_effect, range, value, display)

  return offset + length, value
end

-- Coupon Period
bmv_bmvmarketdata_snapshot_intra_v1_1.coupon_period = {}

-- Size: Coupon Period
bmv_bmvmarketdata_snapshot_intra_v1_1.coupon_period.size = 2

-- Display: Coupon Period
bmv_bmvmarketdata_snapshot_intra_v1_1.coupon_period.display = function(value)
  return "Coupon Period: "..value
end

-- Dissect: Coupon Period
bmv_bmvmarketdata_snapshot_intra_v1_1.coupon_period.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.coupon_period.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.coupon_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.coupon_period, range, value, display)

  return offset + length, value
end

-- Currency
bmv_bmvmarketdata_snapshot_intra_v1_1.currency = {}

-- Size: Currency
bmv_bmvmarketdata_snapshot_intra_v1_1.currency.size = 5

-- Display: Currency
bmv_bmvmarketdata_snapshot_intra_v1_1.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
bmv_bmvmarketdata_snapshot_intra_v1_1.currency.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.currency, range, value, display)

  return offset + length, value
end

-- Currency Type
bmv_bmvmarketdata_snapshot_intra_v1_1.currency_type = {}

-- Size: Currency Type
bmv_bmvmarketdata_snapshot_intra_v1_1.currency_type.size = 1

-- Display: Currency Type
bmv_bmvmarketdata_snapshot_intra_v1_1.currency_type.labels = {
  ["N"] = "Currency Type: Mexican Currency (N)",
  ["D"] = "Currency Type: Dollar (D)",
}

bmv_bmvmarketdata_snapshot_intra_v1_1.currency_type.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.currency_type.labels[value] or "Currency Type: Unknown("..value..")"
end

-- Dissect: Currency Type
bmv_bmvmarketdata_snapshot_intra_v1_1.currency_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.currency_type.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.currency_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.currency_type, range, value, display)

  return offset + length, value
end

-- Current Balance
bmv_bmvmarketdata_snapshot_intra_v1_1.current_balance = {}

-- Size: Current Balance
bmv_bmvmarketdata_snapshot_intra_v1_1.current_balance.size = 8

-- Display: Current Balance
bmv_bmvmarketdata_snapshot_intra_v1_1.current_balance.display = function(value)
  return "Current Balance: "..value
end

-- Dissect: Current Balance
bmv_bmvmarketdata_snapshot_intra_v1_1.current_balance.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.current_balance.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.current_balance.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.current_balance, range, value, display)

  return offset + length, value
end

-- Current Nominal Value
bmv_bmvmarketdata_snapshot_intra_v1_1.current_nominal_value = {}

-- Size: Current Nominal Value
bmv_bmvmarketdata_snapshot_intra_v1_1.current_nominal_value.size = 8

-- Display: Current Nominal Value
bmv_bmvmarketdata_snapshot_intra_v1_1.current_nominal_value.display = function(value)
  return "Current Nominal Value: "..value
end

-- Translate: Current Nominal Value
bmv_bmvmarketdata_snapshot_intra_v1_1.current_nominal_value.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Current Nominal Value
bmv_bmvmarketdata_snapshot_intra_v1_1.current_nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.current_nominal_value.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.current_nominal_value.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.current_nominal_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.current_nominal_value, range, value, display)

  return offset + length, value
end

-- Current Theoretical Price
bmv_bmvmarketdata_snapshot_intra_v1_1.current_theoretical_price = {}

-- Size: Current Theoretical Price
bmv_bmvmarketdata_snapshot_intra_v1_1.current_theoretical_price.size = 8

-- Display: Current Theoretical Price
bmv_bmvmarketdata_snapshot_intra_v1_1.current_theoretical_price.display = function(value)
  return "Current Theoretical Price: "..value
end

-- Translate: Current Theoretical Price
bmv_bmvmarketdata_snapshot_intra_v1_1.current_theoretical_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Current Theoretical Price
bmv_bmvmarketdata_snapshot_intra_v1_1.current_theoretical_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.current_theoretical_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.current_theoretical_price.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.current_theoretical_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.current_theoretical_price, range, value, display)

  return offset + length, value
end

-- Daily Performance
bmv_bmvmarketdata_snapshot_intra_v1_1.daily_performance = {}

-- Size: Daily Performance
bmv_bmvmarketdata_snapshot_intra_v1_1.daily_performance.size = 8

-- Display: Daily Performance
bmv_bmvmarketdata_snapshot_intra_v1_1.daily_performance.display = function(value)
  return "Daily Performance: "..value
end

-- Translate: Daily Performance
bmv_bmvmarketdata_snapshot_intra_v1_1.daily_performance.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Daily Performance
bmv_bmvmarketdata_snapshot_intra_v1_1.daily_performance.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.daily_performance.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.daily_performance.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.daily_performance.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.daily_performance, range, value, display)

  return offset + length, value
end

-- Date
bmv_bmvmarketdata_snapshot_intra_v1_1.date = {}

-- Size: Date
bmv_bmvmarketdata_snapshot_intra_v1_1.date.size = 8

-- Dissect: Date
bmv_bmvmarketdata_snapshot_intra_v1_1.date.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.date.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.date
  if bmv_bmvmarketdata_snapshot_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.date_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Date And Time
bmv_bmvmarketdata_snapshot_intra_v1_1.date_and_time = {}

-- Size: Date And Time
bmv_bmvmarketdata_snapshot_intra_v1_1.date_and_time.size = 8

-- Dissect: Date And Time
bmv_bmvmarketdata_snapshot_intra_v1_1.date_and_time.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.date_and_time.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.date_and_time
  if bmv_bmvmarketdata_snapshot_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.date_and_time_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Date Indicators
bmv_bmvmarketdata_snapshot_intra_v1_1.date_indicators = {}

-- Size: Date Indicators
bmv_bmvmarketdata_snapshot_intra_v1_1.date_indicators.size = 8

-- Dissect: Date Indicators
bmv_bmvmarketdata_snapshot_intra_v1_1.date_indicators.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.date_indicators.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.date_indicators
  if bmv_bmvmarketdata_snapshot_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.date_indicators_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Date Of Issuance
bmv_bmvmarketdata_snapshot_intra_v1_1.date_of_issuance = {}

-- Size: Date Of Issuance
bmv_bmvmarketdata_snapshot_intra_v1_1.date_of_issuance.size = 8

-- Dissect: Date Of Issuance
bmv_bmvmarketdata_snapshot_intra_v1_1.date_of_issuance.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.date_of_issuance.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.date_of_issuance
  if bmv_bmvmarketdata_snapshot_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.date_of_issuance_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Date Of Maturity
bmv_bmvmarketdata_snapshot_intra_v1_1.date_of_maturity = {}

-- Size: Date Of Maturity
bmv_bmvmarketdata_snapshot_intra_v1_1.date_of_maturity.size = 8

-- Dissect: Date Of Maturity
bmv_bmvmarketdata_snapshot_intra_v1_1.date_of_maturity.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.date_of_maturity.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.date_of_maturity
  if bmv_bmvmarketdata_snapshot_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.date_of_maturity_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Date Of Reference
bmv_bmvmarketdata_snapshot_intra_v1_1.date_of_reference = {}

-- Size: Date Of Reference
bmv_bmvmarketdata_snapshot_intra_v1_1.date_of_reference.size = 8

-- Dissect: Date Of Reference
bmv_bmvmarketdata_snapshot_intra_v1_1.date_of_reference.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.date_of_reference.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.date_of_reference
  if bmv_bmvmarketdata_snapshot_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.date_of_reference_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Date Of The Trade
bmv_bmvmarketdata_snapshot_intra_v1_1.date_of_the_trade = {}

-- Size: Date Of The Trade
bmv_bmvmarketdata_snapshot_intra_v1_1.date_of_the_trade.size = 8

-- Dissect: Date Of The Trade
bmv_bmvmarketdata_snapshot_intra_v1_1.date_of_the_trade.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.date_of_the_trade.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.date_of_the_trade
  if bmv_bmvmarketdata_snapshot_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.date_of_the_trade_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Datetime
bmv_bmvmarketdata_snapshot_intra_v1_1.datetime = {}

-- Size: Datetime
bmv_bmvmarketdata_snapshot_intra_v1_1.datetime.size = 8

-- Dissect: Datetime
bmv_bmvmarketdata_snapshot_intra_v1_1.datetime.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.datetime.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.datetime
  if bmv_bmvmarketdata_snapshot_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.datetime_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Decimal Amount
bmv_bmvmarketdata_snapshot_intra_v1_1.decimal_amount = {}

-- Size: Decimal Amount
bmv_bmvmarketdata_snapshot_intra_v1_1.decimal_amount.size = 4

-- Display: Decimal Amount
bmv_bmvmarketdata_snapshot_intra_v1_1.decimal_amount.display = function(value)
  return "Decimal Amount: "..value
end

-- Dissect: Decimal Amount
bmv_bmvmarketdata_snapshot_intra_v1_1.decimal_amount.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.decimal_amount.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.decimal_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.decimal_amount, range, value, display)

  return offset + length, value
end

-- Delta Difference
bmv_bmvmarketdata_snapshot_intra_v1_1.delta_difference = {}

-- Size: Delta Difference
bmv_bmvmarketdata_snapshot_intra_v1_1.delta_difference.size = 4

-- Display: Delta Difference
bmv_bmvmarketdata_snapshot_intra_v1_1.delta_difference.display = function(value)
  return "Delta Difference: "..value
end

-- Translate: Delta Difference
bmv_bmvmarketdata_snapshot_intra_v1_1.delta_difference.translate = function(raw)
  return raw/10000
end

-- Dissect: Delta Difference
bmv_bmvmarketdata_snapshot_intra_v1_1.delta_difference.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.delta_difference.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.delta_difference.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.delta_difference.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.delta_difference, range, value, display)

  return offset + length, value
end

-- Direction
bmv_bmvmarketdata_snapshot_intra_v1_1.direction = {}

-- Size: Direction
bmv_bmvmarketdata_snapshot_intra_v1_1.direction.size = 1

-- Display: Direction
bmv_bmvmarketdata_snapshot_intra_v1_1.direction.labels = {
  ["C"] = "Direction: Buy (C)",
  ["V"] = "Direction: Sell (V)",
}

bmv_bmvmarketdata_snapshot_intra_v1_1.direction.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.direction.labels[value] or "Direction: Unknown("..value..")"
end

-- Dissect: Direction
bmv_bmvmarketdata_snapshot_intra_v1_1.direction.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.direction.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.direction, range, value, display)

  return offset + length, value
end

-- Direction Of The Bid
bmv_bmvmarketdata_snapshot_intra_v1_1.direction_of_the_bid = {}

-- Size: Direction Of The Bid
bmv_bmvmarketdata_snapshot_intra_v1_1.direction_of_the_bid.size = 1

-- Display: Direction Of The Bid
bmv_bmvmarketdata_snapshot_intra_v1_1.direction_of_the_bid.labels = {
  ["C"] = "Direction Of The Bid: Purchase (C)",
  ["V"] = "Direction Of The Bid: Sale (V)",
}

bmv_bmvmarketdata_snapshot_intra_v1_1.direction_of_the_bid.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.direction_of_the_bid.labels[value] or "Direction Of The Bid: Unknown("..value..")"
end

-- Dissect: Direction Of The Bid
bmv_bmvmarketdata_snapshot_intra_v1_1.direction_of_the_bid.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.direction_of_the_bid.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.direction_of_the_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.direction_of_the_bid, range, value, display)

  return offset + length, value
end

-- Discount Rate Or Price
bmv_bmvmarketdata_snapshot_intra_v1_1.discount_rate_or_price = {}

-- Size: Discount Rate Or Price
bmv_bmvmarketdata_snapshot_intra_v1_1.discount_rate_or_price.size = 8

-- Display: Discount Rate Or Price
bmv_bmvmarketdata_snapshot_intra_v1_1.discount_rate_or_price.display = function(value)
  return "Discount Rate Or Price: "..value
end

-- Translate: Discount Rate Or Price
bmv_bmvmarketdata_snapshot_intra_v1_1.discount_rate_or_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Discount Rate Or Price
bmv_bmvmarketdata_snapshot_intra_v1_1.discount_rate_or_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.discount_rate_or_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.discount_rate_or_price.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.discount_rate_or_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.discount_rate_or_price, range, value, display)

  return offset + length, value
end

-- Dollar Side
bmv_bmvmarketdata_snapshot_intra_v1_1.dollar_side = {}

-- Size: Dollar Side
bmv_bmvmarketdata_snapshot_intra_v1_1.dollar_side.size = 1

-- Display: Dollar Side
bmv_bmvmarketdata_snapshot_intra_v1_1.dollar_side.display = function(value)
  return "Dollar Side: "..value
end

-- Dissect: Dollar Side
bmv_bmvmarketdata_snapshot_intra_v1_1.dollar_side.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.dollar_side.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.dollar_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.dollar_side, range, value, display)

  return offset + length, value
end

-- End Auction Time
bmv_bmvmarketdata_snapshot_intra_v1_1.end_auction_time = {}

-- Size: End Auction Time
bmv_bmvmarketdata_snapshot_intra_v1_1.end_auction_time.size = 8

-- Dissect: End Auction Time
bmv_bmvmarketdata_snapshot_intra_v1_1.end_auction_time.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.end_auction_time.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.end_auction_time
  if bmv_bmvmarketdata_snapshot_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.end_auction_time_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- End Time
bmv_bmvmarketdata_snapshot_intra_v1_1.end_time = {}

-- Size: End Time
bmv_bmvmarketdata_snapshot_intra_v1_1.end_time.size = 8

-- Dissect: End Time
bmv_bmvmarketdata_snapshot_intra_v1_1.end_time.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.end_time.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.end_time
  if bmv_bmvmarketdata_snapshot_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.end_time_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Ending Time
bmv_bmvmarketdata_snapshot_intra_v1_1.ending_time = {}

-- Size: Ending Time
bmv_bmvmarketdata_snapshot_intra_v1_1.ending_time.size = 8

-- Dissect: Ending Time
bmv_bmvmarketdata_snapshot_intra_v1_1.ending_time.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.ending_time.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.ending_time
  if bmv_bmvmarketdata_snapshot_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.ending_time_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Event Code
bmv_bmvmarketdata_snapshot_intra_v1_1.event_code = {}

-- Size: Event Code
bmv_bmvmarketdata_snapshot_intra_v1_1.event_code.size = 1

-- Display: Event Code
bmv_bmvmarketdata_snapshot_intra_v1_1.event_code.labels = {
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

bmv_bmvmarketdata_snapshot_intra_v1_1.event_code.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.event_code.labels[value] or "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
bmv_bmvmarketdata_snapshot_intra_v1_1.event_code.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.event_code.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.event_code, range, value, display)

  return offset + length, value
end

-- Exchange
bmv_bmvmarketdata_snapshot_intra_v1_1.exchange = {}

-- Size: Exchange
bmv_bmvmarketdata_snapshot_intra_v1_1.exchange.size = 1

-- Display: Exchange
bmv_bmvmarketdata_snapshot_intra_v1_1.exchange.labels = {
  ["M"] = "Exchange: Bmv (M)",
  ["I"] = "Exchange: Biva (I)",
}

bmv_bmvmarketdata_snapshot_intra_v1_1.exchange.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.exchange.labels[value] or "Exchange: Unknown("..value..")"
end

-- Dissect: Exchange
bmv_bmvmarketdata_snapshot_intra_v1_1.exchange.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.exchange.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.exchange.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.exchange, range, value, display)

  return offset + length, value
end

-- Excluded Securities
bmv_bmvmarketdata_snapshot_intra_v1_1.excluded_securities = {}

-- Size: Excluded Securities
bmv_bmvmarketdata_snapshot_intra_v1_1.excluded_securities.size = 8

-- Display: Excluded Securities
bmv_bmvmarketdata_snapshot_intra_v1_1.excluded_securities.display = function(value)
  return "Excluded Securities: "..value
end

-- Translate: Excluded Securities
bmv_bmvmarketdata_snapshot_intra_v1_1.excluded_securities.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Excluded Securities
bmv_bmvmarketdata_snapshot_intra_v1_1.excluded_securities.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.excluded_securities.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.excluded_securities.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.excluded_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.excluded_securities, range, value, display)

  return offset + length, value
end

-- Excluded Value
bmv_bmvmarketdata_snapshot_intra_v1_1.excluded_value = {}

-- Size: Excluded Value
bmv_bmvmarketdata_snapshot_intra_v1_1.excluded_value.size = 8

-- Display: Excluded Value
bmv_bmvmarketdata_snapshot_intra_v1_1.excluded_value.display = function(value)
  return "Excluded Value: "..value
end

-- Translate: Excluded Value
bmv_bmvmarketdata_snapshot_intra_v1_1.excluded_value.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Excluded Value
bmv_bmvmarketdata_snapshot_intra_v1_1.excluded_value.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.excluded_value.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.excluded_value.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.excluded_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.excluded_value, range, value, display)

  return offset + length, value
end

-- Execution Price
bmv_bmvmarketdata_snapshot_intra_v1_1.execution_price = {}

-- Size: Execution Price
bmv_bmvmarketdata_snapshot_intra_v1_1.execution_price.size = 8

-- Display: Execution Price
bmv_bmvmarketdata_snapshot_intra_v1_1.execution_price.display = function(value)
  return "Execution Price: "..value
end

-- Translate: Execution Price
bmv_bmvmarketdata_snapshot_intra_v1_1.execution_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Execution Price
bmv_bmvmarketdata_snapshot_intra_v1_1.execution_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.execution_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.execution_price.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.execution_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.execution_price, range, value, display)

  return offset + length, value
end

-- Existing Postures
bmv_bmvmarketdata_snapshot_intra_v1_1.existing_postures = {}

-- Size: Existing Postures
bmv_bmvmarketdata_snapshot_intra_v1_1.existing_postures.size = 1

-- Display: Existing Postures
bmv_bmvmarketdata_snapshot_intra_v1_1.existing_postures.display = function(value)
  return "Existing Postures: "..value
end

-- Dissect: Existing Postures
bmv_bmvmarketdata_snapshot_intra_v1_1.existing_postures.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.existing_postures.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.existing_postures.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.existing_postures, range, value, display)

  return offset + length, value
end

-- F 1 P U
bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_u = {}

-- Size: F 1 P U
bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_u.size = 8

-- Display: F 1 P U
bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_u.display = function(value)
  return "F 1 P U: "..value
end

-- Translate: F 1 P U
bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_u.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: F 1 P U
bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_u.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_u.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_u.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_u.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.f_1_p_u, range, value, display)

  return offset + length, value
end

-- F 1 P Ue
bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_ue = {}

-- Size: F 1 P Ue
bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_ue.size = 8

-- Display: F 1 P Ue
bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_ue.display = function(value)
  return "F 1 P Ue: "..value
end

-- Translate: F 1 P Ue
bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_ue.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: F 1 P Ue
bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_ue.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_ue.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_ue.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_ue.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.f_1_p_ue, range, value, display)

  return offset + length, value
end

-- F 1 P Unoc
bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_unoc = {}

-- Size: F 1 P Unoc
bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_unoc.size = 8

-- Display: F 1 P Unoc
bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_unoc.display = function(value)
  return "F 1 P Unoc: "..value
end

-- Translate: F 1 P Unoc
bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_unoc.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: F 1 P Unoc
bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_unoc.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_unoc.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_unoc.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_unoc.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.f_1_p_unoc, range, value, display)

  return offset + length, value
end

-- F 1 P Vl
bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_vl = {}

-- Size: F 1 P Vl
bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_vl.size = 8

-- Display: F 1 P Vl
bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_vl.display = function(value)
  return "F 1 P Vl: "..value
end

-- Translate: F 1 P Vl
bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_vl.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: F 1 P Vl
bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_vl.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_vl.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_vl.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_vl.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.f_1_p_vl, range, value, display)

  return offset + length, value
end

-- F 1 Ve Uaiida
bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_ve_uaiida = {}

-- Size: F 1 Ve Uaiida
bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_ve_uaiida.size = 8

-- Display: F 1 Ve Uaiida
bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_ve_uaiida.display = function(value)
  return "F 1 Ve Uaiida: "..value
end

-- Translate: F 1 Ve Uaiida
bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_ve_uaiida.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: F 1 Ve Uaiida
bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_ve_uaiida.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_ve_uaiida.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_ve_uaiida.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_ve_uaiida.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.f_1_ve_uaiida, range, value, display)

  return offset + length, value
end

-- F 2 P U
bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_u = {}

-- Size: F 2 P U
bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_u.size = 8

-- Display: F 2 P U
bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_u.display = function(value)
  return "F 2 P U: "..value
end

-- Translate: F 2 P U
bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_u.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: F 2 P U
bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_u.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_u.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_u.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_u.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.f_2_p_u, range, value, display)

  return offset + length, value
end

-- F 2 P Ue
bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_ue = {}

-- Size: F 2 P Ue
bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_ue.size = 8

-- Display: F 2 P Ue
bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_ue.display = function(value)
  return "F 2 P Ue: "..value
end

-- Translate: F 2 P Ue
bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_ue.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: F 2 P Ue
bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_ue.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_ue.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_ue.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_ue.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.f_2_p_ue, range, value, display)

  return offset + length, value
end

-- F 2 P Unoc
bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_unoc = {}

-- Size: F 2 P Unoc
bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_unoc.size = 8

-- Display: F 2 P Unoc
bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_unoc.display = function(value)
  return "F 2 P Unoc: "..value
end

-- Translate: F 2 P Unoc
bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_unoc.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: F 2 P Unoc
bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_unoc.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_unoc.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_unoc.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_unoc.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.f_2_p_unoc, range, value, display)

  return offset + length, value
end

-- F 2 P Vl
bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_vl = {}

-- Size: F 2 P Vl
bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_vl.size = 8

-- Display: F 2 P Vl
bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_vl.display = function(value)
  return "F 2 P Vl: "..value
end

-- Translate: F 2 P Vl
bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_vl.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: F 2 P Vl
bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_vl.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_vl.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_vl.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_vl.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.f_2_p_vl, range, value, display)

  return offset + length, value
end

-- F 2 Ve Uaiida
bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_ve_uaiida = {}

-- Size: F 2 Ve Uaiida
bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_ve_uaiida.size = 8

-- Display: F 2 Ve Uaiida
bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_ve_uaiida.display = function(value)
  return "F 2 Ve Uaiida: "..value
end

-- Translate: F 2 Ve Uaiida
bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_ve_uaiida.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: F 2 Ve Uaiida
bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_ve_uaiida.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_ve_uaiida.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_ve_uaiida.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_ve_uaiida.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.f_2_ve_uaiida, range, value, display)

  return offset + length, value
end

-- Firm
bmv_bmvmarketdata_snapshot_intra_v1_1.firm = {}

-- Size: Firm
bmv_bmvmarketdata_snapshot_intra_v1_1.firm.size = 5

-- Display: Firm
bmv_bmvmarketdata_snapshot_intra_v1_1.firm.display = function(value)
  return "Firm: "..value
end

-- Dissect: Firm
bmv_bmvmarketdata_snapshot_intra_v1_1.firm.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.firm.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.firm, range, value, display)

  return offset + length, value
end

-- First Message
bmv_bmvmarketdata_snapshot_intra_v1_1.first_message = {}

-- Size: First Message
bmv_bmvmarketdata_snapshot_intra_v1_1.first_message.size = 4

-- Display: First Message
bmv_bmvmarketdata_snapshot_intra_v1_1.first_message.display = function(value)
  return "First Message: "..value
end

-- Dissect: First Message
bmv_bmvmarketdata_snapshot_intra_v1_1.first_message.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.first_message.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.first_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.first_message, range, value, display)

  return offset + length, value
end

-- Group
bmv_bmvmarketdata_snapshot_intra_v1_1.group = {}

-- Size: Group
bmv_bmvmarketdata_snapshot_intra_v1_1.group.size = 8

-- Display: Group
bmv_bmvmarketdata_snapshot_intra_v1_1.group.display = function(value)
  return "Group: "..value
end

-- Dissect: Group
bmv_bmvmarketdata_snapshot_intra_v1_1.group.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.group.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.group.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.group, range, value, display)

  return offset + length, value
end

-- Income
bmv_bmvmarketdata_snapshot_intra_v1_1.income = {}

-- Size: Income
bmv_bmvmarketdata_snapshot_intra_v1_1.income.size = 1

-- Display: Income
bmv_bmvmarketdata_snapshot_intra_v1_1.income.labels = {
  ["V"] = "Income: Variable Income (V)",
  ["F"] = "Income: Fixed Income (F)",
  ["W"] = "Income: Warrants (W)",
}

bmv_bmvmarketdata_snapshot_intra_v1_1.income.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.income.labels[value] or "Income: Unknown("..value..")"
end

-- Dissect: Income
bmv_bmvmarketdata_snapshot_intra_v1_1.income.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.income.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.income.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.income, range, value, display)

  return offset + length, value
end

-- Indicator
bmv_bmvmarketdata_snapshot_intra_v1_1.indicator = {}

-- Size: Indicator
bmv_bmvmarketdata_snapshot_intra_v1_1.indicator.size = 1

-- Display: Indicator
bmv_bmvmarketdata_snapshot_intra_v1_1.indicator.labels = {
  ["N"] = "Indicator: No (N)",
  ["Y"] = "Indicator: Yes (Y)",
}

bmv_bmvmarketdata_snapshot_intra_v1_1.indicator.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.indicator.labels[value] or "Indicator: Unknown("..value..")"
end

-- Dissect: Indicator
bmv_bmvmarketdata_snapshot_intra_v1_1.indicator.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.indicator.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.indicator, range, value, display)

  return offset + length, value
end

-- Indices 24
bmv_bmvmarketdata_snapshot_intra_v1_1.indices_24 = {}

-- Size: Indices 24
bmv_bmvmarketdata_snapshot_intra_v1_1.indices_24.size = 8

-- Display: Indices 24
bmv_bmvmarketdata_snapshot_intra_v1_1.indices_24.display = function(value)
  return "Indices 24: "..value
end

-- Translate: Indices 24
bmv_bmvmarketdata_snapshot_intra_v1_1.indices_24.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Indices 24
bmv_bmvmarketdata_snapshot_intra_v1_1.indices_24.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.indices_24.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.indices_24.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.indices_24.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.indices_24, range, value, display)

  return offset + length, value
end

-- Indices Hour
bmv_bmvmarketdata_snapshot_intra_v1_1.indices_hour = {}

-- Size: Indices Hour
bmv_bmvmarketdata_snapshot_intra_v1_1.indices_hour.size = 8

-- Dissect: Indices Hour
bmv_bmvmarketdata_snapshot_intra_v1_1.indices_hour.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.indices_hour.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.indices_hour
  if bmv_bmvmarketdata_snapshot_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.indices_hour_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Indices Precio 88
bmv_bmvmarketdata_snapshot_intra_v1_1.indices_precio_88 = {}

-- Size: Indices Precio 88
bmv_bmvmarketdata_snapshot_intra_v1_1.indices_precio_88.size = 8

-- Display: Indices Precio 88
bmv_bmvmarketdata_snapshot_intra_v1_1.indices_precio_88.display = function(value)
  return "Indices Precio 88: "..value
end

-- Translate: Indices Precio 88
bmv_bmvmarketdata_snapshot_intra_v1_1.indices_precio_88.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Indices Precio 88
bmv_bmvmarketdata_snapshot_intra_v1_1.indices_precio_88.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.indices_precio_88.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.indices_precio_88.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.indices_precio_88.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.indices_precio_88, range, value, display)

  return offset + length, value
end

-- Indices Price 44
bmv_bmvmarketdata_snapshot_intra_v1_1.indices_price_44 = {}

-- Size: Indices Price 44
bmv_bmvmarketdata_snapshot_intra_v1_1.indices_price_44.size = 4

-- Display: Indices Price 44
bmv_bmvmarketdata_snapshot_intra_v1_1.indices_price_44.display = function(value)
  return "Indices Price 44: "..value
end

-- Translate: Indices Price 44
bmv_bmvmarketdata_snapshot_intra_v1_1.indices_price_44.translate = function(raw)
  return raw/10000
end

-- Dissect: Indices Price 44
bmv_bmvmarketdata_snapshot_intra_v1_1.indices_price_44.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.indices_price_44.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.indices_price_44.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.indices_price_44.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.indices_price_44, range, value, display)

  return offset + length, value
end

-- Indices Status
bmv_bmvmarketdata_snapshot_intra_v1_1.indices_status = {}

-- Size: Indices Status
bmv_bmvmarketdata_snapshot_intra_v1_1.indices_status.size = 1

-- Display: Indices Status
bmv_bmvmarketdata_snapshot_intra_v1_1.indices_status.labels = {
  ["A"] = "Indices Status: Previous (A)",
  ["P"] = "Indices Status: Preliminary (P)",
  ["C"] = "Indices Status: Preliminary Figures (C)",
  ["D"] = "Indices Status: Final (D)",
}

bmv_bmvmarketdata_snapshot_intra_v1_1.indices_status.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.indices_status.labels[value] or "Indices Status: Unknown("..value..")"
end

-- Dissect: Indices Status
bmv_bmvmarketdata_snapshot_intra_v1_1.indices_status.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.indices_status.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.indices_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.indices_status, range, value, display)

  return offset + length, value
end

-- Indices Stocks
bmv_bmvmarketdata_snapshot_intra_v1_1.indices_stocks = {}

-- Size: Indices Stocks
bmv_bmvmarketdata_snapshot_intra_v1_1.indices_stocks.size = 8

-- Display: Indices Stocks
bmv_bmvmarketdata_snapshot_intra_v1_1.indices_stocks.display = function(value)
  return "Indices Stocks: "..value
end

-- Dissect: Indices Stocks
bmv_bmvmarketdata_snapshot_intra_v1_1.indices_stocks.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.indices_stocks.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.indices_stocks.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.indices_stocks, range, value, display)

  return offset + length, value
end

-- Industry
bmv_bmvmarketdata_snapshot_intra_v1_1.industry = {}

-- Size: Industry
bmv_bmvmarketdata_snapshot_intra_v1_1.industry.size = 1

-- Display: Industry
bmv_bmvmarketdata_snapshot_intra_v1_1.industry.display = function(value)
  return "Industry: "..value
end

-- Dissect: Industry
bmv_bmvmarketdata_snapshot_intra_v1_1.industry.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.industry.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.industry.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.industry, range, value, display)

  return offset + length, value
end

-- Influence
bmv_bmvmarketdata_snapshot_intra_v1_1.influence = {}

-- Size: Influence
bmv_bmvmarketdata_snapshot_intra_v1_1.influence.size = 8

-- Display: Influence
bmv_bmvmarketdata_snapshot_intra_v1_1.influence.display = function(value)
  return "Influence: "..value
end

-- Translate: Influence
bmv_bmvmarketdata_snapshot_intra_v1_1.influence.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Influence
bmv_bmvmarketdata_snapshot_intra_v1_1.influence.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.influence.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.influence.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.influence.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.influence, range, value, display)

  return offset + length, value
end

-- Instrument Id
bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_id = {}

-- Size: Instrument Id
bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_id.size = 4

-- Display: Instrument Id
bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Instrument Number
bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number = {}

-- Size: Instrument Number
bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size = 4

-- Display: Instrument Number
bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.display = function(value)
  return "Instrument Number: "..value
end

-- Dissect: Instrument Number
bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.instrument_number, range, value, display)

  return offset + length, value
end

-- Instrument Status
bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_status = {}

-- Size: Instrument Status
bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_status.size = 1

-- Display: Instrument Status
bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_status.labels = {
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

bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_status.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_status.labels[value] or "Instrument Status: Unknown("..value..")"
end

-- Dissect: Instrument Status
bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_status.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_status.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.instrument_status, range, value, display)

  return offset + length, value
end

-- Integer Amount
bmv_bmvmarketdata_snapshot_intra_v1_1.integer_amount = {}

-- Size: Integer Amount
bmv_bmvmarketdata_snapshot_intra_v1_1.integer_amount.size = 8

-- Display: Integer Amount
bmv_bmvmarketdata_snapshot_intra_v1_1.integer_amount.display = function(value)
  return "Integer Amount: "..value
end

-- Dissect: Integer Amount
bmv_bmvmarketdata_snapshot_intra_v1_1.integer_amount.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.integer_amount.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.integer_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.integer_amount, range, value, display)

  return offset + length, value
end

-- Isin
bmv_bmvmarketdata_snapshot_intra_v1_1.isin = {}

-- Size: Isin
bmv_bmvmarketdata_snapshot_intra_v1_1.isin.size = 12

-- Display: Isin
bmv_bmvmarketdata_snapshot_intra_v1_1.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
bmv_bmvmarketdata_snapshot_intra_v1_1.isin.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.isin, range, value, display)

  return offset + length, value
end

-- Issuance
bmv_bmvmarketdata_snapshot_intra_v1_1.issuance = {}

-- Size: Issuance
bmv_bmvmarketdata_snapshot_intra_v1_1.issuance.size = 6

-- Display: Issuance
bmv_bmvmarketdata_snapshot_intra_v1_1.issuance.display = function(value)
  return "Issuance: "..value
end

-- Dissect: Issuance
bmv_bmvmarketdata_snapshot_intra_v1_1.issuance.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.issuance.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.issuance.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.issuance, range, value, display)

  return offset + length, value
end

-- Issue Date
bmv_bmvmarketdata_snapshot_intra_v1_1.issue_date = {}

-- Size: Issue Date
bmv_bmvmarketdata_snapshot_intra_v1_1.issue_date.size = 8

-- Dissect: Issue Date
bmv_bmvmarketdata_snapshot_intra_v1_1.issue_date.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.issue_date.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.issue_date
  if bmv_bmvmarketdata_snapshot_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.issue_date_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Issuer
bmv_bmvmarketdata_snapshot_intra_v1_1.issuer = {}

-- Size: Issuer
bmv_bmvmarketdata_snapshot_intra_v1_1.issuer.size = 7

-- Display: Issuer
bmv_bmvmarketdata_snapshot_intra_v1_1.issuer.display = function(value)
  return "Issuer: "..value
end

-- Dissect: Issuer
bmv_bmvmarketdata_snapshot_intra_v1_1.issuer.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.issuer.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.issuer.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.issuer, range, value, display)

  return offset + length, value
end

-- Issuing Company
bmv_bmvmarketdata_snapshot_intra_v1_1.issuing_company = {}

-- Size: Issuing Company
bmv_bmvmarketdata_snapshot_intra_v1_1.issuing_company.size = 7

-- Display: Issuing Company
bmv_bmvmarketdata_snapshot_intra_v1_1.issuing_company.display = function(value)
  return "Issuing Company: "..value
end

-- Dissect: Issuing Company
bmv_bmvmarketdata_snapshot_intra_v1_1.issuing_company.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.issuing_company.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.issuing_company.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.issuing_company, range, value, display)

  return offset + length, value
end

-- Last
bmv_bmvmarketdata_snapshot_intra_v1_1.last = {}

-- Size: Last
bmv_bmvmarketdata_snapshot_intra_v1_1.last.size = 8

-- Display: Last
bmv_bmvmarketdata_snapshot_intra_v1_1.last.display = function(value)
  return "Last: "..value
end

-- Translate: Last
bmv_bmvmarketdata_snapshot_intra_v1_1.last.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last
bmv_bmvmarketdata_snapshot_intra_v1_1.last.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.last.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.last.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.last.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.last, range, value, display)

  return offset + length, value
end

-- Last 12 Months 24 Hours Performance
bmv_bmvmarketdata_snapshot_intra_v1_1.last_12_months_24_hours_performance = {}

-- Size: Last 12 Months 24 Hours Performance
bmv_bmvmarketdata_snapshot_intra_v1_1.last_12_months_24_hours_performance.size = 8

-- Display: Last 12 Months 24 Hours Performance
bmv_bmvmarketdata_snapshot_intra_v1_1.last_12_months_24_hours_performance.display = function(value)
  return "Last 12 Months 24 Hours Performance: "..value
end

-- Translate: Last 12 Months 24 Hours Performance
bmv_bmvmarketdata_snapshot_intra_v1_1.last_12_months_24_hours_performance.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last 12 Months 24 Hours Performance
bmv_bmvmarketdata_snapshot_intra_v1_1.last_12_months_24_hours_performance.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.last_12_months_24_hours_performance.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.last_12_months_24_hours_performance.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.last_12_months_24_hours_performance.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.last_12_months_24_hours_performance, range, value, display)

  return offset + length, value
end

-- Last 12 Months Performance
bmv_bmvmarketdata_snapshot_intra_v1_1.last_12_months_performance = {}

-- Size: Last 12 Months Performance
bmv_bmvmarketdata_snapshot_intra_v1_1.last_12_months_performance.size = 8

-- Display: Last 12 Months Performance
bmv_bmvmarketdata_snapshot_intra_v1_1.last_12_months_performance.display = function(value)
  return "Last 12 Months Performance: "..value
end

-- Translate: Last 12 Months Performance
bmv_bmvmarketdata_snapshot_intra_v1_1.last_12_months_performance.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last 12 Months Performance
bmv_bmvmarketdata_snapshot_intra_v1_1.last_12_months_performance.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.last_12_months_performance.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.last_12_months_performance.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.last_12_months_performance.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.last_12_months_performance, range, value, display)

  return offset + length, value
end

-- Last Deal
bmv_bmvmarketdata_snapshot_intra_v1_1.last_deal = {}

-- Size: Last Deal
bmv_bmvmarketdata_snapshot_intra_v1_1.last_deal.size = 8

-- Display: Last Deal
bmv_bmvmarketdata_snapshot_intra_v1_1.last_deal.display = function(value)
  return "Last Deal: "..value
end

-- Translate: Last Deal
bmv_bmvmarketdata_snapshot_intra_v1_1.last_deal.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Deal
bmv_bmvmarketdata_snapshot_intra_v1_1.last_deal.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.last_deal.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.last_deal.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.last_deal.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.last_deal, range, value, display)

  return offset + length, value
end

-- Last Price
bmv_bmvmarketdata_snapshot_intra_v1_1.last_price = {}

-- Size: Last Price
bmv_bmvmarketdata_snapshot_intra_v1_1.last_price.size = 8

-- Display: Last Price
bmv_bmvmarketdata_snapshot_intra_v1_1.last_price.display = function(value)
  return "Last Price: "..value
end

-- Translate: Last Price
bmv_bmvmarketdata_snapshot_intra_v1_1.last_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Price
bmv_bmvmarketdata_snapshot_intra_v1_1.last_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.last_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.last_price.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.last_price, range, value, display)

  return offset + length, value
end

-- Last Price Of The Day
bmv_bmvmarketdata_snapshot_intra_v1_1.last_price_of_the_day = {}

-- Size: Last Price Of The Day
bmv_bmvmarketdata_snapshot_intra_v1_1.last_price_of_the_day.size = 8

-- Display: Last Price Of The Day
bmv_bmvmarketdata_snapshot_intra_v1_1.last_price_of_the_day.display = function(value)
  return "Last Price Of The Day: "..value
end

-- Translate: Last Price Of The Day
bmv_bmvmarketdata_snapshot_intra_v1_1.last_price_of_the_day.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Price Of The Day
bmv_bmvmarketdata_snapshot_intra_v1_1.last_price_of_the_day.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.last_price_of_the_day.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.last_price_of_the_day.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.last_price_of_the_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.last_price_of_the_day, range, value, display)

  return offset + length, value
end

-- Leg Type
bmv_bmvmarketdata_snapshot_intra_v1_1.leg_type = {}

-- Size: Leg Type
bmv_bmvmarketdata_snapshot_intra_v1_1.leg_type.size = 1

-- Display: Leg Type
bmv_bmvmarketdata_snapshot_intra_v1_1.leg_type.display = function(value)
  if value == "L" then
    return "Leg Type: Long Leg (L)"
  end
  if value == "C" then
    return "Leg Type: Short Leg (C)"
  end
  if value == "X" then
    return "Leg Type: Forwards Chain Leg (X)"
  end
  if value == "P" then
    return "Leg Type: Parent Strategy (P)"
  end
  if value == " " then
    return "Leg Type: Not Generated From A Strategy (<whitespace>)"
  end

  return "Leg Type: Unknown("..value..")"
end

-- Dissect: Leg Type
bmv_bmvmarketdata_snapshot_intra_v1_1.leg_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.leg_type.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.leg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.leg_type, range, value, display)

  return offset + length, value
end

-- Length
bmv_bmvmarketdata_snapshot_intra_v1_1.length = {}

-- Size: Length
bmv_bmvmarketdata_snapshot_intra_v1_1.length.size = 2

-- Display: Length
bmv_bmvmarketdata_snapshot_intra_v1_1.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
bmv_bmvmarketdata_snapshot_intra_v1_1.length.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.length, range, value, display)

  return offset + length, value
end

-- Login Response Status
bmv_bmvmarketdata_snapshot_intra_v1_1.login_response_status = {}

-- Size: Login Response Status
bmv_bmvmarketdata_snapshot_intra_v1_1.login_response_status.size = 1

-- Display: Login Response Status
bmv_bmvmarketdata_snapshot_intra_v1_1.login_response_status.labels = {
  ["A"] = "Login Response Status: Accepted Session (A)",
  ["B"] = "Login Response Status: Invalid Market Data Group (B)",
  ["C"] = "Login Response Status: Login On Another Channel (C)",
  ["D"] = "Login Response Status: Unavailable Service (D)",
}

bmv_bmvmarketdata_snapshot_intra_v1_1.login_response_status.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.login_response_status.labels[value] or "Login Response Status: Unknown("..value..")"
end

-- Dissect: Login Response Status
bmv_bmvmarketdata_snapshot_intra_v1_1.login_response_status.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.login_response_status.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.login_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.login_response_status, range, value, display)

  return offset + length, value
end

-- Lower Price Of The Day
bmv_bmvmarketdata_snapshot_intra_v1_1.lower_price_of_the_day = {}

-- Size: Lower Price Of The Day
bmv_bmvmarketdata_snapshot_intra_v1_1.lower_price_of_the_day.size = 8

-- Display: Lower Price Of The Day
bmv_bmvmarketdata_snapshot_intra_v1_1.lower_price_of_the_day.display = function(value)
  return "Lower Price Of The Day: "..value
end

-- Translate: Lower Price Of The Day
bmv_bmvmarketdata_snapshot_intra_v1_1.lower_price_of_the_day.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Lower Price Of The Day
bmv_bmvmarketdata_snapshot_intra_v1_1.lower_price_of_the_day.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.lower_price_of_the_day.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.lower_price_of_the_day.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.lower_price_of_the_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.lower_price_of_the_day, range, value, display)

  return offset + length, value
end

-- Market
bmv_bmvmarketdata_snapshot_intra_v1_1.market = {}

-- Size: Market
bmv_bmvmarketdata_snapshot_intra_v1_1.market.size = 1

-- Display: Market
bmv_bmvmarketdata_snapshot_intra_v1_1.market.display = function(value)
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
bmv_bmvmarketdata_snapshot_intra_v1_1.market.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.market.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.market.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.market, range, value, display)

  return offset + length, value
end

-- Market Data Group
bmv_bmvmarketdata_snapshot_intra_v1_1.market_data_group = {}

-- Size: Market Data Group
bmv_bmvmarketdata_snapshot_intra_v1_1.market_data_group.size = 1

-- Display: Market Data Group
bmv_bmvmarketdata_snapshot_intra_v1_1.market_data_group.labels = {
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

bmv_bmvmarketdata_snapshot_intra_v1_1.market_data_group.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.market_data_group.labels[value] or "Market Data Group: Unknown("..value..")"
end

-- Dissect: Market Data Group
bmv_bmvmarketdata_snapshot_intra_v1_1.market_data_group.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.market_data_group.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.market_data_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Marketability
bmv_bmvmarketdata_snapshot_intra_v1_1.marketability = {}

-- Size: Marketability
bmv_bmvmarketdata_snapshot_intra_v1_1.marketability.size = 1

-- Display: Marketability
bmv_bmvmarketdata_snapshot_intra_v1_1.marketability.display = function(value)
  if value == "A" then
    return "Marketability: High (A)"
  end
  if value == "M" then
    return "Marketability: Medium (M)"
  end
  if value == "B" then
    return "Marketability: Low (B)"
  end
  if value == "N" then
    return "Marketability: Minimum (N)"
  end
  if value == "R" then
    return "Marketability: Recent Quotation (R)"
  end
  if value == " " then
    return "Marketability: Null Or Inapplicable (<whitespace>)"
  end

  return "Marketability: Unknown("..value..")"
end

-- Dissect: Marketability
bmv_bmvmarketdata_snapshot_intra_v1_1.marketability.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.marketability.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.marketability.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.marketability, range, value, display)

  return offset + length, value
end

-- Maturity Date
bmv_bmvmarketdata_snapshot_intra_v1_1.maturity_date = {}

-- Size: Maturity Date
bmv_bmvmarketdata_snapshot_intra_v1_1.maturity_date.size = 8

-- Dissect: Maturity Date
bmv_bmvmarketdata_snapshot_intra_v1_1.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.maturity_date.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.maturity_date
  if bmv_bmvmarketdata_snapshot_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.maturity_date_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Max Price Of The Day
bmv_bmvmarketdata_snapshot_intra_v1_1.max_price_of_the_day = {}

-- Size: Max Price Of The Day
bmv_bmvmarketdata_snapshot_intra_v1_1.max_price_of_the_day.size = 8

-- Display: Max Price Of The Day
bmv_bmvmarketdata_snapshot_intra_v1_1.max_price_of_the_day.display = function(value)
  return "Max Price Of The Day: "..value
end

-- Translate: Max Price Of The Day
bmv_bmvmarketdata_snapshot_intra_v1_1.max_price_of_the_day.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Max Price Of The Day
bmv_bmvmarketdata_snapshot_intra_v1_1.max_price_of_the_day.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.max_price_of_the_day.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.max_price_of_the_day.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.max_price_of_the_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.max_price_of_the_day, range, value, display)

  return offset + length, value
end

-- Maximum
bmv_bmvmarketdata_snapshot_intra_v1_1.maximum = {}

-- Size: Maximum
bmv_bmvmarketdata_snapshot_intra_v1_1.maximum.size = 8

-- Display: Maximum
bmv_bmvmarketdata_snapshot_intra_v1_1.maximum.display = function(value)
  return "Maximum: "..value
end

-- Translate: Maximum
bmv_bmvmarketdata_snapshot_intra_v1_1.maximum.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Maximum
bmv_bmvmarketdata_snapshot_intra_v1_1.maximum.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.maximum.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.maximum.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.maximum.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.maximum, range, value, display)

  return offset + length, value
end

-- Maximum Volume
bmv_bmvmarketdata_snapshot_intra_v1_1.maximum_volume = {}

-- Size: Maximum Volume
bmv_bmvmarketdata_snapshot_intra_v1_1.maximum_volume.size = 8

-- Display: Maximum Volume
bmv_bmvmarketdata_snapshot_intra_v1_1.maximum_volume.display = function(value)
  return "Maximum Volume: "..value
end

-- Dissect: Maximum Volume
bmv_bmvmarketdata_snapshot_intra_v1_1.maximum_volume.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.maximum_volume.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.maximum_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.maximum_volume, range, value, display)

  return offset + length, value
end

-- Message Length
bmv_bmvmarketdata_snapshot_intra_v1_1.message_length = {}

-- Size: Message Length
bmv_bmvmarketdata_snapshot_intra_v1_1.message_length.size = 2

-- Display: Message Length
bmv_bmvmarketdata_snapshot_intra_v1_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
bmv_bmvmarketdata_snapshot_intra_v1_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.message_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
bmv_bmvmarketdata_snapshot_intra_v1_1.message_type = {}

-- Size: Message Type
bmv_bmvmarketdata_snapshot_intra_v1_1.message_type.size = 1

-- Display: Message Type
bmv_bmvmarketdata_snapshot_intra_v1_1.message_type.display = function(value)
  if value == 0x26 then
    return "Message Type: Login Response Message (0x26)"
  end
  if value == 0x2A then
    return "Message Type: Replay Response Message (0x2A)"
  end
  if value == 0x2B then
    return "Message Type: Snapshot Response Message (0x2B)"
  end
  if value == 0x3F then
    return "Message Type: Snapshot Complete Message (0x3F)"
  end
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
  if value == 0x31 then
    return "Message Type: Depth Message (0x31)"
  end
  if value == 0x4F then
    return "Message Type: Best Offer Message (0x4F)"
  end
  if value == 0x42 then
    return "Message Type: Public Offerings Message (0x42)"
  end
  if value == 0x49 then
    return "Message Type: Open Interest Message (0x49)"
  end
  if value == 0x51 then
    return "Message Type: Derivatives Market Trades Message (0x51)"
  end
  if value == 0x52 then
    return "Message Type: Statistics Of Instruments Message (0x52)"
  end
  if value == 0x55 then
    return "Message Type: General Indices Message (0x55)"
  end
  if value == 0x57 then
    return "Message Type: Indices Components Message (0x57)"
  end
  if value == 0x47 then
    return "Message Type: Inav Message (0x47)"
  end
  if value == 0x72 then
    return "Message Type: Dollar Buy Sell Message (0x72)"
  end
  if value == 0x73 then
    return "Message Type: Short Sales Balances Per Instrument Message (0x73)"
  end
  if value == 0x74 then
    return "Message Type: Capital Market Multiples Message (0x74)"
  end
  if value == 0x78 then
    return "Message Type: Benchmark Message (0x78)"
  end
  if value == 0x7A then
    return "Message Type: Capitalization Rules Message (0x7A)"
  end
  if value == 0x7E then
    return "Message Type: Closing Price Origin Message (0x7E)"
  end
  if value == 0x28 then
    return "Message Type: Mutual Funds Trades Message (0x28)"
  end
  if value == 0x29 then
    return "Message Type: Opening Of Continuous Auctions Message (0x29)"
  end
  if value == 0x2C then
    return "Message Type: Existence Of Bids At Mid Price Message (0x2C)"
  end
  if value == 0x2E then
    return "Message Type: Catalogue Of Debt And Metals Instruments Message (0x2E)"
  end
  if value == 0x30 then
    return "Message Type: Catalog Sent For Instruments Belonging To Mutual Funds Message (0x30)"
  end
  if value == 0x36 then
    return "Message Type: Weighted Average Price Message (0x36)"
  end
  if value == 0x37 then
    return "Message Type: System Events Message (0x37)"
  end
  if value == 0x38 then
    return "Message Type: Reference Price Message (0x38)"
  end
  if value == 0x39 then
    return "Message Type: Changes In Status Message (0x39)"
  end
  if value == 0x54 then
    return "Message Type: Catalog For Instruments Belonging To The Capital Warrants Market Message (0x54)"
  end
  if value == 0x5B then
    return "Message Type: Catalog Sent For Instruments Belonging To Capital Tracs Message (0x5B)"
  end
  if value == 0x5D then
    return "Message Type: Consolidated Inav Message (0x5D)"
  end
  if value == 0x68 then
    return "Message Type: Catalog For Instruments Belonging To The Local And Global Stock Market Message (0x68)"
  end
  if value == 0x69 then
    return "Message Type: Probable Price Of Allocation Message (0x69)"
  end
  if value == 0x6A then
    return "Message Type: Relation Between Bmvbiva Instruments Message (0x6A)"
  end
  if value == 0x70 then
    return "Message Type: Equities Market Trades Message (0x70)"
  end
  if value == 0x71 then
    return "Message Type: Consolidated Trade Cancellation Message (0x71)"
  end
  if value == 0x5C then
    return "Message Type: Pricevolume Indicator Message (0x5C)"
  end
  if value == 0x6B then
    return "Message Type: Consolidated Execution Of Orders Message (0x6B)"
  end
  if value == 0x6E then
    return "Message Type: Registration Of Order Message (0x6E)"
  end
  if value == 0x75 then
    return "Message Type: Cancellations Of Orders Message (0x75)"
  end
  if value == 0x6D then
    return "Message Type: Last Quote Message (0x6D)"
  end

  return "Message Type: Unknown("..string.format("0x%02X", value)..")"
end

-- Dissect: Message Type
bmv_bmvmarketdata_snapshot_intra_v1_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Minimum
bmv_bmvmarketdata_snapshot_intra_v1_1.minimum = {}

-- Size: Minimum
bmv_bmvmarketdata_snapshot_intra_v1_1.minimum.size = 8

-- Display: Minimum
bmv_bmvmarketdata_snapshot_intra_v1_1.minimum.display = function(value)
  return "Minimum: "..value
end

-- Translate: Minimum
bmv_bmvmarketdata_snapshot_intra_v1_1.minimum.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Minimum
bmv_bmvmarketdata_snapshot_intra_v1_1.minimum.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.minimum.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.minimum.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.minimum.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.minimum, range, value, display)

  return offset + length, value
end

-- Monthly Performance
bmv_bmvmarketdata_snapshot_intra_v1_1.monthly_performance = {}

-- Size: Monthly Performance
bmv_bmvmarketdata_snapshot_intra_v1_1.monthly_performance.size = 8

-- Display: Monthly Performance
bmv_bmvmarketdata_snapshot_intra_v1_1.monthly_performance.display = function(value)
  return "Monthly Performance: "..value
end

-- Translate: Monthly Performance
bmv_bmvmarketdata_snapshot_intra_v1_1.monthly_performance.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Monthly Performance
bmv_bmvmarketdata_snapshot_intra_v1_1.monthly_performance.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.monthly_performance.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.monthly_performance.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.monthly_performance.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.monthly_performance, range, value, display)

  return offset + length, value
end

-- Movement
bmv_bmvmarketdata_snapshot_intra_v1_1.movement = {}

-- Size: Movement
bmv_bmvmarketdata_snapshot_intra_v1_1.movement.size = 1

-- Display: Movement
bmv_bmvmarketdata_snapshot_intra_v1_1.movement.labels = {
  ["A"] = "Movement: Registry Operation (A)",
  ["U"] = "Movement: Operation Authorization (U)",
  ["C"] = "Movement: Placement Operation (C)",
  ["B"] = "Movement: Delete Operation (B)",
}

bmv_bmvmarketdata_snapshot_intra_v1_1.movement.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.movement.labels[value] or "Movement: Unknown("..value..")"
end

-- Dissect: Movement
bmv_bmvmarketdata_snapshot_intra_v1_1.movement.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.movement.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.movement.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.movement, range, value, display)

  return offset + length, value
end

-- Mse Instrument Number
bmv_bmvmarketdata_snapshot_intra_v1_1.mse_instrument_number = {}

-- Size: Mse Instrument Number
bmv_bmvmarketdata_snapshot_intra_v1_1.mse_instrument_number.size = 4

-- Display: Mse Instrument Number
bmv_bmvmarketdata_snapshot_intra_v1_1.mse_instrument_number.display = function(value)
  return "Mse Instrument Number: "..value
end

-- Dissect: Mse Instrument Number
bmv_bmvmarketdata_snapshot_intra_v1_1.mse_instrument_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.mse_instrument_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.mse_instrument_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.mse_instrument_number, range, value, display)

  return offset + length, value
end

-- Multiple Type
bmv_bmvmarketdata_snapshot_intra_v1_1.multiple_type = {}

-- Size: Multiple Type
bmv_bmvmarketdata_snapshot_intra_v1_1.multiple_type.size = 1

-- Display: Multiple Type
bmv_bmvmarketdata_snapshot_intra_v1_1.multiple_type.labels = {
  ["E"] = "Multiple Type: Multiple Of Market By Transmitter (E)",
  ["S"] = "Multiple Type: Multiple Of Market By Sector (S)",
}

bmv_bmvmarketdata_snapshot_intra_v1_1.multiple_type.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.multiple_type.labels[value] or "Multiple Type: Unknown("..value..")"
end

-- Dissect: Multiple Type
bmv_bmvmarketdata_snapshot_intra_v1_1.multiple_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.multiple_type.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.multiple_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.multiple_type, range, value, display)

  return offset + length, value
end

-- Name Of The Trac
bmv_bmvmarketdata_snapshot_intra_v1_1.name_of_the_trac = {}

-- Size: Name Of The Trac
bmv_bmvmarketdata_snapshot_intra_v1_1.name_of_the_trac.size = 8

-- Display: Name Of The Trac
bmv_bmvmarketdata_snapshot_intra_v1_1.name_of_the_trac.display = function(value)
  return "Name Of The Trac: "..value
end

-- Dissect: Name Of The Trac
bmv_bmvmarketdata_snapshot_intra_v1_1.name_of_the_trac.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.name_of_the_trac.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.name_of_the_trac.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.name_of_the_trac, range, value, display)

  return offset + length, value
end

-- New Date
bmv_bmvmarketdata_snapshot_intra_v1_1.new_date = {}

-- Size: New Date
bmv_bmvmarketdata_snapshot_intra_v1_1.new_date.size = 8

-- Dissect: New Date
bmv_bmvmarketdata_snapshot_intra_v1_1.new_date.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.new_date.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.new_date
  if bmv_bmvmarketdata_snapshot_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.new_date_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- New Number
bmv_bmvmarketdata_snapshot_intra_v1_1.new_number = {}

-- Size: New Number
bmv_bmvmarketdata_snapshot_intra_v1_1.new_number.size = 4

-- Display: New Number
bmv_bmvmarketdata_snapshot_intra_v1_1.new_number.display = function(value)
  return "New Number: "..value
end

-- Dissect: New Number
bmv_bmvmarketdata_snapshot_intra_v1_1.new_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.new_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.new_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.new_number, range, value, display)

  return offset + length, value
end

-- Number
bmv_bmvmarketdata_snapshot_intra_v1_1.number = {}

-- Size: Number
bmv_bmvmarketdata_snapshot_intra_v1_1.number.size = 4

-- Display: Number
bmv_bmvmarketdata_snapshot_intra_v1_1.number.display = function(value)
  return "Number: "..value
end

-- Dissect: Number
bmv_bmvmarketdata_snapshot_intra_v1_1.number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.number, range, value, display)

  return offset + length, value
end

-- Number Of Buy Transactions
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_buy_transactions = {}

-- Size: Number Of Buy Transactions
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_buy_transactions.size = 4

-- Display: Number Of Buy Transactions
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_buy_transactions.display = function(value)
  return "Number Of Buy Transactions: "..value
end

-- Dissect: Number Of Buy Transactions
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_buy_transactions.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_buy_transactions.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_buy_transactions.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.number_of_buy_transactions, range, value, display)

  return offset + length, value
end

-- Number Of Certificates
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_certificates = {}

-- Size: Number Of Certificates
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_certificates.size = 8

-- Display: Number Of Certificates
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_certificates.display = function(value)
  return "Number Of Certificates: "..value
end

-- Dissect: Number Of Certificates
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_certificates.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_certificates.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_certificates.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.number_of_certificates, range, value, display)

  return offset + length, value
end

-- Number Of Operations
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_operations = {}

-- Size: Number Of Operations
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_operations.size = 4

-- Display: Number Of Operations
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_operations.display = function(value)
  return "Number Of Operations: "..value
end

-- Dissect: Number Of Operations
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_operations.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_operations.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_operations.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.number_of_operations, range, value, display)

  return offset + length, value
end

-- Number Of Orders
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_orders = {}

-- Size: Number Of Orders
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_orders.size = 2

-- Display: Number Of Orders
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_orders.display = function(value)
  return "Number Of Orders: "..value
end

-- Dissect: Number Of Orders
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_orders.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_orders.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.number_of_orders, range, value, display)

  return offset + length, value
end

-- Number Of Purchase Trades
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_purchase_trades = {}

-- Size: Number Of Purchase Trades
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_purchase_trades.size = 4

-- Display: Number Of Purchase Trades
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_purchase_trades.display = function(value)
  return "Number Of Purchase Trades: "..value
end

-- Dissect: Number Of Purchase Trades
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_purchase_trades.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_purchase_trades.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_purchase_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.number_of_purchase_trades, range, value, display)

  return offset + length, value
end

-- Number Of Sales Trades
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_sales_trades = {}

-- Size: Number Of Sales Trades
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_sales_trades.size = 4

-- Display: Number Of Sales Trades
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_sales_trades.display = function(value)
  return "Number Of Sales Trades: "..value
end

-- Dissect: Number Of Sales Trades
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_sales_trades.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_sales_trades.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_sales_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.number_of_sales_trades, range, value, display)

  return offset + length, value
end

-- Number Of Sales Transactions
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_sales_transactions = {}

-- Size: Number Of Sales Transactions
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_sales_transactions.size = 4

-- Display: Number Of Sales Transactions
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_sales_transactions.display = function(value)
  return "Number Of Sales Transactions: "..value
end

-- Dissect: Number Of Sales Transactions
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_sales_transactions.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_sales_transactions.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_sales_transactions.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.number_of_sales_transactions, range, value, display)

  return offset + length, value
end

-- Number Of The Bmv Instrument
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_the_bmv_instrument = {}

-- Size: Number Of The Bmv Instrument
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_the_bmv_instrument.size = 4

-- Display: Number Of The Bmv Instrument
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_the_bmv_instrument.display = function(value)
  return "Number Of The Bmv Instrument: "..value
end

-- Dissect: Number Of The Bmv Instrument
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_the_bmv_instrument.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_the_bmv_instrument.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_the_bmv_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.number_of_the_bmv_instrument, range, value, display)

  return offset + length, value
end

-- Number Of The Instrument
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_the_instrument = {}

-- Size: Number Of The Instrument
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_the_instrument.size = 4

-- Display: Number Of The Instrument
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_the_instrument.display = function(value)
  return "Number Of The Instrument: "..value
end

-- Dissect: Number Of The Instrument
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_the_instrument.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_the_instrument.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_the_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.number_of_the_instrument, range, value, display)

  return offset + length, value
end

-- Number Of The Trac
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_the_trac = {}

-- Size: Number Of The Trac
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_the_trac.size = 4

-- Display: Number Of The Trac
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_the_trac.display = function(value)
  return "Number Of The Trac: "..value
end

-- Dissect: Number Of The Trac
bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_the_trac.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_the_trac.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_the_trac.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.number_of_the_trac, range, value, display)

  return offset + length, value
end

-- Numerical Marketability
bmv_bmvmarketdata_snapshot_intra_v1_1.numerical_marketability = {}

-- Size: Numerical Marketability
bmv_bmvmarketdata_snapshot_intra_v1_1.numerical_marketability.size = 4

-- Display: Numerical Marketability
bmv_bmvmarketdata_snapshot_intra_v1_1.numerical_marketability.display = function(value)
  return "Numerical Marketability: "..value
end

-- Translate: Numerical Marketability
bmv_bmvmarketdata_snapshot_intra_v1_1.numerical_marketability.translate = function(raw)
  return raw/10000
end

-- Dissect: Numerical Marketability
bmv_bmvmarketdata_snapshot_intra_v1_1.numerical_marketability.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.numerical_marketability.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.numerical_marketability.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.numerical_marketability.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.numerical_marketability, range, value, display)

  return offset + length, value
end

-- Offer Direction
bmv_bmvmarketdata_snapshot_intra_v1_1.offer_direction = {}

-- Size: Offer Direction
bmv_bmvmarketdata_snapshot_intra_v1_1.offer_direction.size = 1

-- Display: Offer Direction
bmv_bmvmarketdata_snapshot_intra_v1_1.offer_direction.labels = {
  ["C"] = "Offer Direction: Buy (C)",
  ["V"] = "Offer Direction: Sell (V)",
}

bmv_bmvmarketdata_snapshot_intra_v1_1.offer_direction.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.offer_direction.labels[value] or "Offer Direction: Unknown("..value..")"
end

-- Dissect: Offer Direction
bmv_bmvmarketdata_snapshot_intra_v1_1.offer_direction.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.offer_direction.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.offer_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.offer_direction, range, value, display)

  return offset + length, value
end

-- Offer Type
bmv_bmvmarketdata_snapshot_intra_v1_1.offer_type = {}

-- Size: Offer Type
bmv_bmvmarketdata_snapshot_intra_v1_1.offer_type.size = 1

-- Display: Offer Type
bmv_bmvmarketdata_snapshot_intra_v1_1.offer_type.labels = {
  ["P"] = "Offer Type: Public Offering (P)",
  ["R"] = "Offer Type: Registration Operation (R)",
  ["C"] = "Offer Type: Buy Public Offering (C)",
  ["A"] = "Offer Type: Overallocation (A)",
  ["S"] = "Offer Type: Reciprocal Subscription (S)",
}

bmv_bmvmarketdata_snapshot_intra_v1_1.offer_type.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.offer_type.labels[value] or "Offer Type: Unknown("..value..")"
end

-- Dissect: Offer Type
bmv_bmvmarketdata_snapshot_intra_v1_1.offer_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.offer_type.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.offer_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.offer_type, range, value, display)

  return offset + length, value
end

-- Open Interest
bmv_bmvmarketdata_snapshot_intra_v1_1.open_interest = {}

-- Size: Open Interest
bmv_bmvmarketdata_snapshot_intra_v1_1.open_interest.size = 4

-- Display: Open Interest
bmv_bmvmarketdata_snapshot_intra_v1_1.open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Translate: Open Interest
bmv_bmvmarketdata_snapshot_intra_v1_1.open_interest.translate = function(raw)
  return raw/10000
end

-- Dissect: Open Interest
bmv_bmvmarketdata_snapshot_intra_v1_1.open_interest.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.open_interest.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.open_interest.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Opening Price
bmv_bmvmarketdata_snapshot_intra_v1_1.opening_price = {}

-- Size: Opening Price
bmv_bmvmarketdata_snapshot_intra_v1_1.opening_price.size = 8

-- Display: Opening Price
bmv_bmvmarketdata_snapshot_intra_v1_1.opening_price.display = function(value)
  return "Opening Price: "..value
end

-- Translate: Opening Price
bmv_bmvmarketdata_snapshot_intra_v1_1.opening_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Opening Price
bmv_bmvmarketdata_snapshot_intra_v1_1.opening_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.opening_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.opening_price.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.opening_price, range, value, display)

  return offset + length, value
end

-- Operation Type
bmv_bmvmarketdata_snapshot_intra_v1_1.operation_type = {}

-- Size: Operation Type
bmv_bmvmarketdata_snapshot_intra_v1_1.operation_type.size = 1

-- Display: Operation Type
bmv_bmvmarketdata_snapshot_intra_v1_1.operation_type.labels = {
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

bmv_bmvmarketdata_snapshot_intra_v1_1.operation_type.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.operation_type.labels[value] or "Operation Type: Unknown("..value..")"
end

-- Dissect: Operation Type
bmv_bmvmarketdata_snapshot_intra_v1_1.operation_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.operation_type.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.operation_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.operation_type, range, value, display)

  return offset + length, value
end

-- Origin
bmv_bmvmarketdata_snapshot_intra_v1_1.origin = {}

-- Size: Origin
bmv_bmvmarketdata_snapshot_intra_v1_1.origin.size = 1

-- Display: Origin
bmv_bmvmarketdata_snapshot_intra_v1_1.origin.labels = {
  ["M"] = "Origin: Bmv (M)",
  ["I"] = "Origin: Biva (I)",
  ["A"] = "Origin: Both (A)",
}

bmv_bmvmarketdata_snapshot_intra_v1_1.origin.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.origin.labels[value] or "Origin: Unknown("..value..")"
end

-- Dissect: Origin
bmv_bmvmarketdata_snapshot_intra_v1_1.origin.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.origin.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.origin.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.origin, range, value, display)

  return offset + length, value
end

-- Origin Price
bmv_bmvmarketdata_snapshot_intra_v1_1.origin_price = {}

-- Size: Origin Price
bmv_bmvmarketdata_snapshot_intra_v1_1.origin_price.size = 8

-- Display: Origin Price
bmv_bmvmarketdata_snapshot_intra_v1_1.origin_price.display = function(value)
  return "Origin Price: "..value
end

-- Translate: Origin Price
bmv_bmvmarketdata_snapshot_intra_v1_1.origin_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Origin Price
bmv_bmvmarketdata_snapshot_intra_v1_1.origin_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.origin_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.origin_price.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.origin_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.origin_price, range, value, display)

  return offset + length, value
end

-- Original Date
bmv_bmvmarketdata_snapshot_intra_v1_1.original_date = {}

-- Size: Original Date
bmv_bmvmarketdata_snapshot_intra_v1_1.original_date.size = 8

-- Dissect: Original Date
bmv_bmvmarketdata_snapshot_intra_v1_1.original_date.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.original_date.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.original_date
  if bmv_bmvmarketdata_snapshot_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.original_date_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Original Nominal Value
bmv_bmvmarketdata_snapshot_intra_v1_1.original_nominal_value = {}

-- Size: Original Nominal Value
bmv_bmvmarketdata_snapshot_intra_v1_1.original_nominal_value.size = 8

-- Display: Original Nominal Value
bmv_bmvmarketdata_snapshot_intra_v1_1.original_nominal_value.display = function(value)
  return "Original Nominal Value: "..value
end

-- Translate: Original Nominal Value
bmv_bmvmarketdata_snapshot_intra_v1_1.original_nominal_value.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Original Nominal Value
bmv_bmvmarketdata_snapshot_intra_v1_1.original_nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.original_nominal_value.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.original_nominal_value.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.original_nominal_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.original_nominal_value, range, value, display)

  return offset + length, value
end

-- Original Number
bmv_bmvmarketdata_snapshot_intra_v1_1.original_number = {}

-- Size: Original Number
bmv_bmvmarketdata_snapshot_intra_v1_1.original_number.size = 4

-- Display: Original Number
bmv_bmvmarketdata_snapshot_intra_v1_1.original_number.display = function(value)
  return "Original Number: "..value
end

-- Dissect: Original Number
bmv_bmvmarketdata_snapshot_intra_v1_1.original_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.original_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.original_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.original_number, range, value, display)

  return offset + length, value
end

-- Outstanding
bmv_bmvmarketdata_snapshot_intra_v1_1.outstanding = {}

-- Size: Outstanding
bmv_bmvmarketdata_snapshot_intra_v1_1.outstanding.size = 8

-- Display: Outstanding
bmv_bmvmarketdata_snapshot_intra_v1_1.outstanding.display = function(value)
  return "Outstanding: "..value
end

-- Dissect: Outstanding
bmv_bmvmarketdata_snapshot_intra_v1_1.outstanding.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.outstanding.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.outstanding.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.outstanding, range, value, display)

  return offset + length, value
end

-- Outstanding Shares
bmv_bmvmarketdata_snapshot_intra_v1_1.outstanding_shares = {}

-- Size: Outstanding Shares
bmv_bmvmarketdata_snapshot_intra_v1_1.outstanding_shares.size = 8

-- Display: Outstanding Shares
bmv_bmvmarketdata_snapshot_intra_v1_1.outstanding_shares.display = function(value)
  return "Outstanding Shares: "..value
end

-- Dissect: Outstanding Shares
bmv_bmvmarketdata_snapshot_intra_v1_1.outstanding_shares.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.outstanding_shares.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.outstanding_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.outstanding_shares, range, value, display)

  return offset + length, value
end

-- P U
bmv_bmvmarketdata_snapshot_intra_v1_1.p_u = {}

-- Size: P U
bmv_bmvmarketdata_snapshot_intra_v1_1.p_u.size = 8

-- Display: P U
bmv_bmvmarketdata_snapshot_intra_v1_1.p_u.display = function(value)
  return "P U: "..value
end

-- Translate: P U
bmv_bmvmarketdata_snapshot_intra_v1_1.p_u.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: P U
bmv_bmvmarketdata_snapshot_intra_v1_1.p_u.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.p_u.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.p_u.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.p_u.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.p_u, range, value, display)

  return offset + length, value
end

-- P Vl
bmv_bmvmarketdata_snapshot_intra_v1_1.p_vl = {}

-- Size: P Vl
bmv_bmvmarketdata_snapshot_intra_v1_1.p_vl.size = 8

-- Display: P Vl
bmv_bmvmarketdata_snapshot_intra_v1_1.p_vl.display = function(value)
  return "P Vl: "..value
end

-- Translate: P Vl
bmv_bmvmarketdata_snapshot_intra_v1_1.p_vl.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: P Vl
bmv_bmvmarketdata_snapshot_intra_v1_1.p_vl.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.p_vl.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.p_vl.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.p_vl.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.p_vl, range, value, display)

  return offset + length, value
end

-- Parent Trade Number
bmv_bmvmarketdata_snapshot_intra_v1_1.parent_trade_number = {}

-- Size: Parent Trade Number
bmv_bmvmarketdata_snapshot_intra_v1_1.parent_trade_number.size = 4

-- Display: Parent Trade Number
bmv_bmvmarketdata_snapshot_intra_v1_1.parent_trade_number.display = function(value)
  return "Parent Trade Number: "..value
end

-- Dissect: Parent Trade Number
bmv_bmvmarketdata_snapshot_intra_v1_1.parent_trade_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.parent_trade_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.parent_trade_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.parent_trade_number, range, value, display)

  return offset + length, value
end

-- Participant
bmv_bmvmarketdata_snapshot_intra_v1_1.participant = {}

-- Size: Participant
bmv_bmvmarketdata_snapshot_intra_v1_1.participant.size = 5

-- Display: Participant
bmv_bmvmarketdata_snapshot_intra_v1_1.participant.display = function(value)
  return "Participant: "..value
end

-- Dissect: Participant
bmv_bmvmarketdata_snapshot_intra_v1_1.participant.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.participant.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.participant, range, value, display)

  return offset + length, value
end

-- Password
bmv_bmvmarketdata_snapshot_intra_v1_1.password = {}

-- Size: Password
bmv_bmvmarketdata_snapshot_intra_v1_1.password.size = 10

-- Display: Password
bmv_bmvmarketdata_snapshot_intra_v1_1.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
bmv_bmvmarketdata_snapshot_intra_v1_1.password.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.password, range, value, display)

  return offset + length, value
end

-- Percentage
bmv_bmvmarketdata_snapshot_intra_v1_1.percentage = {}

-- Size: Percentage
bmv_bmvmarketdata_snapshot_intra_v1_1.percentage.size = 4

-- Display: Percentage
bmv_bmvmarketdata_snapshot_intra_v1_1.percentage.display = function(value)
  return "Percentage: "..value
end

-- Translate: Percentage
bmv_bmvmarketdata_snapshot_intra_v1_1.percentage.translate = function(raw)
  return raw/10000
end

-- Dissect: Percentage
bmv_bmvmarketdata_snapshot_intra_v1_1.percentage.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.percentage.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.percentage.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.percentage.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.percentage, range, value, display)

  return offset + length, value
end

-- Pfepa Multiple
bmv_bmvmarketdata_snapshot_intra_v1_1.pfepa_multiple = {}

-- Size: Pfepa Multiple
bmv_bmvmarketdata_snapshot_intra_v1_1.pfepa_multiple.size = 8

-- Display: Pfepa Multiple
bmv_bmvmarketdata_snapshot_intra_v1_1.pfepa_multiple.display = function(value)
  return "Pfepa Multiple: "..value
end

-- Translate: Pfepa Multiple
bmv_bmvmarketdata_snapshot_intra_v1_1.pfepa_multiple.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Pfepa Multiple
bmv_bmvmarketdata_snapshot_intra_v1_1.pfepa_multiple.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.pfepa_multiple.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.pfepa_multiple.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.pfepa_multiple.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.pfepa_multiple, range, value, display)

  return offset + length, value
end

-- Pflepa Multiple
bmv_bmvmarketdata_snapshot_intra_v1_1.pflepa_multiple = {}

-- Size: Pflepa Multiple
bmv_bmvmarketdata_snapshot_intra_v1_1.pflepa_multiple.size = 8

-- Display: Pflepa Multiple
bmv_bmvmarketdata_snapshot_intra_v1_1.pflepa_multiple.display = function(value)
  return "Pflepa Multiple: "..value
end

-- Translate: Pflepa Multiple
bmv_bmvmarketdata_snapshot_intra_v1_1.pflepa_multiple.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Pflepa Multiple
bmv_bmvmarketdata_snapshot_intra_v1_1.pflepa_multiple.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.pflepa_multiple.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.pflepa_multiple.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.pflepa_multiple.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.pflepa_multiple, range, value, display)

  return offset + length, value
end

-- Placement Date
bmv_bmvmarketdata_snapshot_intra_v1_1.placement_date = {}

-- Size: Placement Date
bmv_bmvmarketdata_snapshot_intra_v1_1.placement_date.size = 8

-- Dissect: Placement Date
bmv_bmvmarketdata_snapshot_intra_v1_1.placement_date.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.placement_date.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.placement_date
  if bmv_bmvmarketdata_snapshot_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.placement_date_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Posture Date
bmv_bmvmarketdata_snapshot_intra_v1_1.posture_date = {}

-- Size: Posture Date
bmv_bmvmarketdata_snapshot_intra_v1_1.posture_date.size = 8

-- Dissect: Posture Date
bmv_bmvmarketdata_snapshot_intra_v1_1.posture_date.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.posture_date.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.posture_date
  if bmv_bmvmarketdata_snapshot_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.posture_date_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Ppp Weighted Average Price
bmv_bmvmarketdata_snapshot_intra_v1_1.ppp_weighted_average_price = {}

-- Size: Ppp Weighted Average Price
bmv_bmvmarketdata_snapshot_intra_v1_1.ppp_weighted_average_price.size = 8

-- Display: Ppp Weighted Average Price
bmv_bmvmarketdata_snapshot_intra_v1_1.ppp_weighted_average_price.display = function(value)
  return "Ppp Weighted Average Price: "..value
end

-- Translate: Ppp Weighted Average Price
bmv_bmvmarketdata_snapshot_intra_v1_1.ppp_weighted_average_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Ppp Weighted Average Price
bmv_bmvmarketdata_snapshot_intra_v1_1.ppp_weighted_average_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.ppp_weighted_average_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.ppp_weighted_average_price.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.ppp_weighted_average_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.ppp_weighted_average_price, range, value, display)

  return offset + length, value
end

-- Previous Balance
bmv_bmvmarketdata_snapshot_intra_v1_1.previous_balance = {}

-- Size: Previous Balance
bmv_bmvmarketdata_snapshot_intra_v1_1.previous_balance.size = 8

-- Display: Previous Balance
bmv_bmvmarketdata_snapshot_intra_v1_1.previous_balance.display = function(value)
  return "Previous Balance: "..value
end

-- Dissect: Previous Balance
bmv_bmvmarketdata_snapshot_intra_v1_1.previous_balance.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.previous_balance.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.previous_balance.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.previous_balance, range, value, display)

  return offset + length, value
end

-- Previous Settlement Price
bmv_bmvmarketdata_snapshot_intra_v1_1.previous_settlement_price = {}

-- Size: Previous Settlement Price
bmv_bmvmarketdata_snapshot_intra_v1_1.previous_settlement_price.size = 8

-- Display: Previous Settlement Price
bmv_bmvmarketdata_snapshot_intra_v1_1.previous_settlement_price.display = function(value)
  return "Previous Settlement Price: "..value
end

-- Translate: Previous Settlement Price
bmv_bmvmarketdata_snapshot_intra_v1_1.previous_settlement_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Previous Settlement Price
bmv_bmvmarketdata_snapshot_intra_v1_1.previous_settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.previous_settlement_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.previous_settlement_price.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.previous_settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.previous_settlement_price, range, value, display)

  return offset + length, value
end

-- Price
bmv_bmvmarketdata_snapshot_intra_v1_1.price = {}

-- Size: Price
bmv_bmvmarketdata_snapshot_intra_v1_1.price.size = 8

-- Display: Price
bmv_bmvmarketdata_snapshot_intra_v1_1.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
bmv_bmvmarketdata_snapshot_intra_v1_1.price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price
bmv_bmvmarketdata_snapshot_intra_v1_1.price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.price.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.price, range, value, display)

  return offset + length, value
end

-- Price Of Exercise
bmv_bmvmarketdata_snapshot_intra_v1_1.price_of_exercise = {}

-- Size: Price Of Exercise
bmv_bmvmarketdata_snapshot_intra_v1_1.price_of_exercise.size = 8

-- Display: Price Of Exercise
bmv_bmvmarketdata_snapshot_intra_v1_1.price_of_exercise.display = function(value)
  return "Price Of Exercise: "..value
end

-- Translate: Price Of Exercise
bmv_bmvmarketdata_snapshot_intra_v1_1.price_of_exercise.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price Of Exercise
bmv_bmvmarketdata_snapshot_intra_v1_1.price_of_exercise.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.price_of_exercise.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.price_of_exercise.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.price_of_exercise.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.price_of_exercise, range, value, display)

  return offset + length, value
end

-- Price Rate
bmv_bmvmarketdata_snapshot_intra_v1_1.price_rate = {}

-- Size: Price Rate
bmv_bmvmarketdata_snapshot_intra_v1_1.price_rate.size = 8

-- Display: Price Rate
bmv_bmvmarketdata_snapshot_intra_v1_1.price_rate.display = function(value)
  return "Price Rate: "..value
end

-- Translate: Price Rate
bmv_bmvmarketdata_snapshot_intra_v1_1.price_rate.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price Rate
bmv_bmvmarketdata_snapshot_intra_v1_1.price_rate.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.price_rate.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.price_rate.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.price_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.price_rate, range, value, display)

  return offset + length, value
end

-- Price Rate Of Reference
bmv_bmvmarketdata_snapshot_intra_v1_1.price_rate_of_reference = {}

-- Size: Price Rate Of Reference
bmv_bmvmarketdata_snapshot_intra_v1_1.price_rate_of_reference.size = 8

-- Display: Price Rate Of Reference
bmv_bmvmarketdata_snapshot_intra_v1_1.price_rate_of_reference.display = function(value)
  return "Price Rate Of Reference: "..value
end

-- Translate: Price Rate Of Reference
bmv_bmvmarketdata_snapshot_intra_v1_1.price_rate_of_reference.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price Rate Of Reference
bmv_bmvmarketdata_snapshot_intra_v1_1.price_rate_of_reference.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.price_rate_of_reference.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.price_rate_of_reference.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.price_rate_of_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.price_rate_of_reference, range, value, display)

  return offset + length, value
end

-- Price Setter
bmv_bmvmarketdata_snapshot_intra_v1_1.price_setter = {}

-- Size: Price Setter
bmv_bmvmarketdata_snapshot_intra_v1_1.price_setter.size = 1

-- Display: Price Setter
bmv_bmvmarketdata_snapshot_intra_v1_1.price_setter.display = function(value)
  return "Price Setter: "..value
end

-- Dissect: Price Setter
bmv_bmvmarketdata_snapshot_intra_v1_1.price_setter.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.price_setter.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.price_setter.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.price_setter, range, value, display)

  return offset + length, value
end

-- Price Type
bmv_bmvmarketdata_snapshot_intra_v1_1.price_type = {}

-- Size: Price Type
bmv_bmvmarketdata_snapshot_intra_v1_1.price_type.size = 1

-- Display: Price Type
bmv_bmvmarketdata_snapshot_intra_v1_1.price_type.labels = {
  ["R"] = "Price Type: Reference (R)",
  ["C"] = "Price Type: Closing Price (C)",
  ["I"] = "Price Type: Inav (I)",
  ["V"] = "Price Type: Volume Weighted Average Price (V)",
}

bmv_bmvmarketdata_snapshot_intra_v1_1.price_type.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.price_type.labels[value] or "Price Type: Unknown("..value..")"
end

-- Dissect: Price Type
bmv_bmvmarketdata_snapshot_intra_v1_1.price_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.price_type.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.price_type, range, value, display)

  return offset + length, value
end

-- Probable Allocation Price
bmv_bmvmarketdata_snapshot_intra_v1_1.probable_allocation_price = {}

-- Size: Probable Allocation Price
bmv_bmvmarketdata_snapshot_intra_v1_1.probable_allocation_price.size = 8

-- Display: Probable Allocation Price
bmv_bmvmarketdata_snapshot_intra_v1_1.probable_allocation_price.display = function(value)
  return "Probable Allocation Price: "..value
end

-- Translate: Probable Allocation Price
bmv_bmvmarketdata_snapshot_intra_v1_1.probable_allocation_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Probable Allocation Price
bmv_bmvmarketdata_snapshot_intra_v1_1.probable_allocation_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.probable_allocation_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.probable_allocation_price.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.probable_allocation_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.probable_allocation_price, range, value, display)

  return offset + length, value
end

-- Probable Price Of Allocation
bmv_bmvmarketdata_snapshot_intra_v1_1.probable_price_of_allocation = {}

-- Size: Probable Price Of Allocation
bmv_bmvmarketdata_snapshot_intra_v1_1.probable_price_of_allocation.size = 8

-- Display: Probable Price Of Allocation
bmv_bmvmarketdata_snapshot_intra_v1_1.probable_price_of_allocation.display = function(value)
  return "Probable Price Of Allocation: "..value
end

-- Translate: Probable Price Of Allocation
bmv_bmvmarketdata_snapshot_intra_v1_1.probable_price_of_allocation.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Probable Price Of Allocation
bmv_bmvmarketdata_snapshot_intra_v1_1.probable_price_of_allocation.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.probable_price_of_allocation.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.probable_price_of_allocation.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.probable_price_of_allocation.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.probable_price_of_allocation, range, value, display)

  return offset + length, value
end

-- Probable Price Of Allotment
bmv_bmvmarketdata_snapshot_intra_v1_1.probable_price_of_allotment = {}

-- Size: Probable Price Of Allotment
bmv_bmvmarketdata_snapshot_intra_v1_1.probable_price_of_allotment.size = 8

-- Display: Probable Price Of Allotment
bmv_bmvmarketdata_snapshot_intra_v1_1.probable_price_of_allotment.display = function(value)
  return "Probable Price Of Allotment: "..value
end

-- Translate: Probable Price Of Allotment
bmv_bmvmarketdata_snapshot_intra_v1_1.probable_price_of_allotment.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Probable Price Of Allotment
bmv_bmvmarketdata_snapshot_intra_v1_1.probable_price_of_allotment.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.probable_price_of_allotment.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.probable_price_of_allotment.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.probable_price_of_allotment.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.probable_price_of_allotment, range, value, display)

  return offset + length, value
end

-- Purchase Or Sale Levels
bmv_bmvmarketdata_snapshot_intra_v1_1.purchase_or_sale_levels = {}

-- Size: Purchase Or Sale Levels
bmv_bmvmarketdata_snapshot_intra_v1_1.purchase_or_sale_levels.size = 1

-- Display: Purchase Or Sale Levels
bmv_bmvmarketdata_snapshot_intra_v1_1.purchase_or_sale_levels.display = function(value)
  return "Purchase Or Sale Levels: "..value
end

-- Dissect: Purchase Or Sale Levels
bmv_bmvmarketdata_snapshot_intra_v1_1.purchase_or_sale_levels.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.purchase_or_sale_levels.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.purchase_or_sale_levels.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.purchase_or_sale_levels, range, value, display)

  return offset + length, value
end

-- Purchase Volume
bmv_bmvmarketdata_snapshot_intra_v1_1.purchase_volume = {}

-- Size: Purchase Volume
bmv_bmvmarketdata_snapshot_intra_v1_1.purchase_volume.size = 8

-- Display: Purchase Volume
bmv_bmvmarketdata_snapshot_intra_v1_1.purchase_volume.display = function(value)
  return "Purchase Volume: "..value
end

-- Dissect: Purchase Volume
bmv_bmvmarketdata_snapshot_intra_v1_1.purchase_volume.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.purchase_volume.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.purchase_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.purchase_volume, range, value, display)

  return offset + length, value
end

-- Purchases
bmv_bmvmarketdata_snapshot_intra_v1_1.purchases = {}

-- Size: Purchases
bmv_bmvmarketdata_snapshot_intra_v1_1.purchases.size = 5

-- Display: Purchases
bmv_bmvmarketdata_snapshot_intra_v1_1.purchases.display = function(value)
  return "Purchases: "..value
end

-- Dissect: Purchases
bmv_bmvmarketdata_snapshot_intra_v1_1.purchases.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.purchases.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.purchases.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.purchases, range, value, display)

  return offset + length, value
end

-- Quantity
bmv_bmvmarketdata_snapshot_intra_v1_1.quantity = {}

-- Size: Quantity
bmv_bmvmarketdata_snapshot_intra_v1_1.quantity.size = 2

-- Display: Quantity
bmv_bmvmarketdata_snapshot_intra_v1_1.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
bmv_bmvmarketdata_snapshot_intra_v1_1.quantity.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.quantity, range, value, display)

  return offset + length, value
end

-- Quantity Of Messages
bmv_bmvmarketdata_snapshot_intra_v1_1.quantity_of_messages = {}

-- Size: Quantity Of Messages
bmv_bmvmarketdata_snapshot_intra_v1_1.quantity_of_messages.size = 4

-- Display: Quantity Of Messages
bmv_bmvmarketdata_snapshot_intra_v1_1.quantity_of_messages.display = function(value)
  return "Quantity Of Messages: "..value
end

-- Dissect: Quantity Of Messages
bmv_bmvmarketdata_snapshot_intra_v1_1.quantity_of_messages.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.quantity_of_messages.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.quantity_of_messages.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.quantity_of_messages, range, value, display)

  return offset + length, value
end

-- Rate Of Return
bmv_bmvmarketdata_snapshot_intra_v1_1.rate_of_return = {}

-- Size: Rate Of Return
bmv_bmvmarketdata_snapshot_intra_v1_1.rate_of_return.size = 4

-- Display: Rate Of Return
bmv_bmvmarketdata_snapshot_intra_v1_1.rate_of_return.display = function(value)
  return "Rate Of Return: "..value
end

-- Translate: Rate Of Return
bmv_bmvmarketdata_snapshot_intra_v1_1.rate_of_return.translate = function(raw)
  return raw/10000
end

-- Dissect: Rate Of Return
bmv_bmvmarketdata_snapshot_intra_v1_1.rate_of_return.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.rate_of_return.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.rate_of_return.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.rate_of_return.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.rate_of_return, range, value, display)

  return offset + length, value
end

-- Rating
bmv_bmvmarketdata_snapshot_intra_v1_1.rating = {}

-- Size: Rating
bmv_bmvmarketdata_snapshot_intra_v1_1.rating.size = 15

-- Display: Rating
bmv_bmvmarketdata_snapshot_intra_v1_1.rating.display = function(value)
  return "Rating: "..value
end

-- Dissect: Rating
bmv_bmvmarketdata_snapshot_intra_v1_1.rating.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.rating.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.rating.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.rating, range, value, display)

  return offset + length, value
end

-- Reason
bmv_bmvmarketdata_snapshot_intra_v1_1.reason = {}

-- Size: Reason
bmv_bmvmarketdata_snapshot_intra_v1_1.reason.size = 1

-- Display: Reason
bmv_bmvmarketdata_snapshot_intra_v1_1.reason.labels = {
  ["N"] = "Reason: Normal Operation (N)",
  ["H"] = "Reason: Volatility Bidding Session (H)",
  ["A"] = "Reason: Startup Of The Volatility Bidding Session (A)",
  ["B"] = "Reason: End Of The Volatility Bidding Session (B)",
  ["Q"] = "Reason: Awaiting News (Q)",
  ["S"] = "Reason: Static Price Band Breach (S)",
  ["M"] = "Reason: Suspension Due To Markets Surveillance (M)",
  ["O"] = "Reason: Suspension From The Market Of Origin (O)",
  ["C"] = "Reason: Without Compliance (C)",
  ["I"] = "Reason: Startup Of The Interest Notice (I)",
}

bmv_bmvmarketdata_snapshot_intra_v1_1.reason.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.reason.labels[value] or "Reason: Unknown("..value..")"
end

-- Dissect: Reason
bmv_bmvmarketdata_snapshot_intra_v1_1.reason.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.reason.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.reason, range, value, display)

  return offset + length, value
end

-- Rebalance
bmv_bmvmarketdata_snapshot_intra_v1_1.rebalance = {}

-- Size: Rebalance
bmv_bmvmarketdata_snapshot_intra_v1_1.rebalance.size = 1

-- Display: Rebalance
bmv_bmvmarketdata_snapshot_intra_v1_1.rebalance.labels = {
  ["R"] = "Rebalance: Rebalanced (R)",
  ["N"] = "Rebalance: Not Rebalanced (N)",
}

bmv_bmvmarketdata_snapshot_intra_v1_1.rebalance.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.rebalance.labels[value] or "Rebalance: Unknown("..value..")"
end

-- Dissect: Rebalance
bmv_bmvmarketdata_snapshot_intra_v1_1.rebalance.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.rebalance.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.rebalance.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.rebalance, range, value, display)

  return offset + length, value
end

-- Recovery Hour
bmv_bmvmarketdata_snapshot_intra_v1_1.recovery_hour = {}

-- Size: Recovery Hour
bmv_bmvmarketdata_snapshot_intra_v1_1.recovery_hour.size = 8

-- Dissect: Recovery Hour
bmv_bmvmarketdata_snapshot_intra_v1_1.recovery_hour.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.recovery_hour.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.recovery_hour
  if bmv_bmvmarketdata_snapshot_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.recovery_hour_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Reference
bmv_bmvmarketdata_snapshot_intra_v1_1.reference = {}

-- Size: Reference
bmv_bmvmarketdata_snapshot_intra_v1_1.reference.size = 1

-- Display: Reference
bmv_bmvmarketdata_snapshot_intra_v1_1.reference.display = function(value)
  if value == "N" then
    return "Reference: Previous (N)"
  end
  if value == "J" then
    return "Reference: Adjusted (J)"
  end
  if value == "V" then
    return "Reference: Adjusted Nominal Value (V)"
  end
  if value == " " then
    return "Reference: Without Price (<whitespace>)"
  end

  return "Reference: Unknown("..value..")"
end

-- Dissect: Reference
bmv_bmvmarketdata_snapshot_intra_v1_1.reference.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.reference.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.reference, range, value, display)

  return offset + length, value
end

-- Reference Date
bmv_bmvmarketdata_snapshot_intra_v1_1.reference_date = {}

-- Size: Reference Date
bmv_bmvmarketdata_snapshot_intra_v1_1.reference_date.size = 8

-- Dissect: Reference Date
bmv_bmvmarketdata_snapshot_intra_v1_1.reference_date.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.reference_date.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.reference_date
  if bmv_bmvmarketdata_snapshot_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.reference_date_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Reference Price
bmv_bmvmarketdata_snapshot_intra_v1_1.reference_price = {}

-- Size: Reference Price
bmv_bmvmarketdata_snapshot_intra_v1_1.reference_price.size = 8

-- Display: Reference Price
bmv_bmvmarketdata_snapshot_intra_v1_1.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
bmv_bmvmarketdata_snapshot_intra_v1_1.reference_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Reference Price
bmv_bmvmarketdata_snapshot_intra_v1_1.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.reference_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.reference_price.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Registered Values
bmv_bmvmarketdata_snapshot_intra_v1_1.registered_values = {}

-- Size: Registered Values
bmv_bmvmarketdata_snapshot_intra_v1_1.registered_values.size = 8

-- Display: Registered Values
bmv_bmvmarketdata_snapshot_intra_v1_1.registered_values.display = function(value)
  return "Registered Values: "..value
end

-- Dissect: Registered Values
bmv_bmvmarketdata_snapshot_intra_v1_1.registered_values.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.registered_values.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.registered_values.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.registered_values, range, value, display)

  return offset + length, value
end

-- Registered Volume
bmv_bmvmarketdata_snapshot_intra_v1_1.registered_volume = {}

-- Size: Registered Volume
bmv_bmvmarketdata_snapshot_intra_v1_1.registered_volume.size = 8

-- Display: Registered Volume
bmv_bmvmarketdata_snapshot_intra_v1_1.registered_volume.display = function(value)
  return "Registered Volume: "..value
end

-- Dissect: Registered Volume
bmv_bmvmarketdata_snapshot_intra_v1_1.registered_volume.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.registered_volume.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.registered_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.registered_volume, range, value, display)

  return offset + length, value
end

-- Registry Number
bmv_bmvmarketdata_snapshot_intra_v1_1.registry_number = {}

-- Size: Registry Number
bmv_bmvmarketdata_snapshot_intra_v1_1.registry_number.size = 1

-- Display: Registry Number
bmv_bmvmarketdata_snapshot_intra_v1_1.registry_number.display = function(value)
  return "Registry Number: "..value
end

-- Dissect: Registry Number
bmv_bmvmarketdata_snapshot_intra_v1_1.registry_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.registry_number.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.registry_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.registry_number, range, value, display)

  return offset + length, value
end

-- Replay Response Status
bmv_bmvmarketdata_snapshot_intra_v1_1.replay_response_status = {}

-- Size: Replay Response Status
bmv_bmvmarketdata_snapshot_intra_v1_1.replay_response_status.size = 1

-- Display: Replay Response Status
bmv_bmvmarketdata_snapshot_intra_v1_1.replay_response_status.labels = {
  ["A"] = "Replay Response Status: Accepted Request (A)",
  ["B"] = "Replay Response Status: Invalid Market Data Group (B)",
  ["D"] = "Replay Response Status: Unavailable Service (D)",
  ["E"] = "Replay Response Status: Not Logged In (E)",
  ["F"] = "Replay Response Status: Surpass Requests Limit (F)",
  ["G"] = "Replay Response Status: Out Of Range (G)",
  ["J"] = "Replay Response Status: First Invalid Message (J)",
  ["K"] = "Replay Response Status: Invalid Quantity (K)",
}

bmv_bmvmarketdata_snapshot_intra_v1_1.replay_response_status.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.replay_response_status.labels[value] or "Replay Response Status: Unknown("..value..")"
end

-- Dissect: Replay Response Status
bmv_bmvmarketdata_snapshot_intra_v1_1.replay_response_status.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.replay_response_status.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.replay_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.replay_response_status, range, value, display)

  return offset + length, value
end

-- Sales Volume
bmv_bmvmarketdata_snapshot_intra_v1_1.sales_volume = {}

-- Size: Sales Volume
bmv_bmvmarketdata_snapshot_intra_v1_1.sales_volume.size = 8

-- Display: Sales Volume
bmv_bmvmarketdata_snapshot_intra_v1_1.sales_volume.display = function(value)
  return "Sales Volume: "..value
end

-- Dissect: Sales Volume
bmv_bmvmarketdata_snapshot_intra_v1_1.sales_volume.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.sales_volume.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.sales_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.sales_volume, range, value, display)

  return offset + length, value
end

-- Sector
bmv_bmvmarketdata_snapshot_intra_v1_1.sector = {}

-- Size: Sector
bmv_bmvmarketdata_snapshot_intra_v1_1.sector.size = 1

-- Display: Sector
bmv_bmvmarketdata_snapshot_intra_v1_1.sector.display = function(value)
  return "Sector: "..value
end

-- Dissect: Sector
bmv_bmvmarketdata_snapshot_intra_v1_1.sector.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.sector.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.sector.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.sector, range, value, display)

  return offset + length, value
end

-- Securities
bmv_bmvmarketdata_snapshot_intra_v1_1.securities = {}

-- Size: Securities
bmv_bmvmarketdata_snapshot_intra_v1_1.securities.size = 8

-- Display: Securities
bmv_bmvmarketdata_snapshot_intra_v1_1.securities.display = function(value)
  return "Securities: "..value
end

-- Translate: Securities
bmv_bmvmarketdata_snapshot_intra_v1_1.securities.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Securities
bmv_bmvmarketdata_snapshot_intra_v1_1.securities.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.securities.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.securities.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.securities, range, value, display)

  return offset + length, value
end

-- Sell Alpha 5
bmv_bmvmarketdata_snapshot_intra_v1_1.sell_alpha_5 = {}

-- Size: Sell Alpha 5
bmv_bmvmarketdata_snapshot_intra_v1_1.sell_alpha_5.size = 5

-- Display: Sell Alpha 5
bmv_bmvmarketdata_snapshot_intra_v1_1.sell_alpha_5.display = function(value)
  return "Sell Alpha 5: "..value
end

-- Dissect: Sell Alpha 5
bmv_bmvmarketdata_snapshot_intra_v1_1.sell_alpha_5.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.sell_alpha_5.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.sell_alpha_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.sell_alpha_5, range, value, display)

  return offset + length, value
end

-- Sell Precio 88
bmv_bmvmarketdata_snapshot_intra_v1_1.sell_precio_88 = {}

-- Size: Sell Precio 88
bmv_bmvmarketdata_snapshot_intra_v1_1.sell_precio_88.size = 8

-- Display: Sell Precio 88
bmv_bmvmarketdata_snapshot_intra_v1_1.sell_precio_88.display = function(value)
  return "Sell Precio 88: "..value
end

-- Translate: Sell Precio 88
bmv_bmvmarketdata_snapshot_intra_v1_1.sell_precio_88.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Sell Precio 88
bmv_bmvmarketdata_snapshot_intra_v1_1.sell_precio_88.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.sell_precio_88.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.sell_precio_88.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.sell_precio_88.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.sell_precio_88, range, value, display)

  return offset + length, value
end

-- Sells
bmv_bmvmarketdata_snapshot_intra_v1_1.sells = {}

-- Size: Sells
bmv_bmvmarketdata_snapshot_intra_v1_1.sells.size = 5

-- Display: Sells
bmv_bmvmarketdata_snapshot_intra_v1_1.sells.display = function(value)
  return "Sells: "..value
end

-- Dissect: Sells
bmv_bmvmarketdata_snapshot_intra_v1_1.sells.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.sells.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.sells.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.sells, range, value, display)

  return offset + length, value
end

-- Send Time
bmv_bmvmarketdata_snapshot_intra_v1_1.send_time = {}

-- Size: Send Time
bmv_bmvmarketdata_snapshot_intra_v1_1.send_time.size = 8

-- Dissect: Send Time
bmv_bmvmarketdata_snapshot_intra_v1_1.send_time.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.send_time.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.send_time
  if bmv_bmvmarketdata_snapshot_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.send_time_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Sending
bmv_bmvmarketdata_snapshot_intra_v1_1.sending = {}

-- Size: Sending
bmv_bmvmarketdata_snapshot_intra_v1_1.sending.size = 1

-- Display: Sending
bmv_bmvmarketdata_snapshot_intra_v1_1.sending.labels = {
  ["A"] = "Sending: Preopening (A)",
  ["C"] = "Sending: After Closing (C)",
}

bmv_bmvmarketdata_snapshot_intra_v1_1.sending.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.sending.labels[value] or "Sending: Unknown("..value..")"
end

-- Dissect: Sending
bmv_bmvmarketdata_snapshot_intra_v1_1.sending.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.sending.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.sending.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.sending, range, value, display)

  return offset + length, value
end

-- Sending Time
bmv_bmvmarketdata_snapshot_intra_v1_1.sending_time = {}

-- Size: Sending Time
bmv_bmvmarketdata_snapshot_intra_v1_1.sending_time.size = 8

-- Dissect: Sending Time
bmv_bmvmarketdata_snapshot_intra_v1_1.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.sending_time.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.sending_time
  if bmv_bmvmarketdata_snapshot_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.sending_time_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Sequence Number
bmv_bmvmarketdata_snapshot_intra_v1_1.sequence_number = {}

-- Size: Sequence Number
bmv_bmvmarketdata_snapshot_intra_v1_1.sequence_number.size = 4

-- Display: Sequence Number
bmv_bmvmarketdata_snapshot_intra_v1_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
bmv_bmvmarketdata_snapshot_intra_v1_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.sequence_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Series
bmv_bmvmarketdata_snapshot_intra_v1_1.series = {}

-- Size: Series
bmv_bmvmarketdata_snapshot_intra_v1_1.series.size = 6

-- Display: Series
bmv_bmvmarketdata_snapshot_intra_v1_1.series.display = function(value)
  return "Series: "..value
end

-- Dissect: Series
bmv_bmvmarketdata_snapshot_intra_v1_1.series.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.series.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.series.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.series, range, value, display)

  return offset + length, value
end

-- Session
bmv_bmvmarketdata_snapshot_intra_v1_1.session = {}

-- Size: Session
bmv_bmvmarketdata_snapshot_intra_v1_1.session.size = 1

-- Display: Session
bmv_bmvmarketdata_snapshot_intra_v1_1.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
bmv_bmvmarketdata_snapshot_intra_v1_1.session.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.session.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.session, range, value, display)

  return offset + length, value
end

-- Sets Price
bmv_bmvmarketdata_snapshot_intra_v1_1.sets_price = {}

-- Size: Sets Price
bmv_bmvmarketdata_snapshot_intra_v1_1.sets_price.size = 1

-- Display: Sets Price
bmv_bmvmarketdata_snapshot_intra_v1_1.sets_price.display = function(value)
  return "Sets Price: "..value
end

-- Dissect: Sets Price
bmv_bmvmarketdata_snapshot_intra_v1_1.sets_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.sets_price.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.sets_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.sets_price, range, value, display)

  return offset + length, value
end

-- Settlement
bmv_bmvmarketdata_snapshot_intra_v1_1.settlement = {}

-- Size: Settlement
bmv_bmvmarketdata_snapshot_intra_v1_1.settlement.size = 1

-- Display: Settlement
bmv_bmvmarketdata_snapshot_intra_v1_1.settlement.labels = {
  ["M"] = "Settlement: Same Day (M)",
  ["2"] = "Settlement: Twenty Four Hours (2)",
  ["4"] = "Settlement: Forty Eight Hours (4)",
  ["7"] = "Settlement: Seventy Two Hours (7)",
  ["9"] = "Settlement: Ninety Six Hours (9)",
  ["1"] = "Settlement: One Hundred Twenty Hours (1)",
}

bmv_bmvmarketdata_snapshot_intra_v1_1.settlement.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.settlement.labels[value] or "Settlement: Unknown("..value..")"
end

-- Dissect: Settlement
bmv_bmvmarketdata_snapshot_intra_v1_1.settlement.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.settlement.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.settlement.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.settlement, range, value, display)

  return offset + length, value
end

-- Settlement Date
bmv_bmvmarketdata_snapshot_intra_v1_1.settlement_date = {}

-- Size: Settlement Date
bmv_bmvmarketdata_snapshot_intra_v1_1.settlement_date.size = 8

-- Dissect: Settlement Date
bmv_bmvmarketdata_snapshot_intra_v1_1.settlement_date.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.settlement_date.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.settlement_date
  if bmv_bmvmarketdata_snapshot_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.settlement_date_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Side
bmv_bmvmarketdata_snapshot_intra_v1_1.side = {}

-- Size: Side
bmv_bmvmarketdata_snapshot_intra_v1_1.side.size = 1

-- Display: Side
bmv_bmvmarketdata_snapshot_intra_v1_1.side.labels = {
  [0] = "Side: Buy (0)",
  [1] = "Side: Sell (1)",
}

bmv_bmvmarketdata_snapshot_intra_v1_1.side.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
bmv_bmvmarketdata_snapshot_intra_v1_1.side.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.side.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.side, range, value, display)

  return offset + length, value
end

-- Snapshot Response Status
bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_response_status = {}

-- Size: Snapshot Response Status
bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_response_status.size = 1

-- Display: Snapshot Response Status
bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_response_status.labels = {
  ["A"] = "Snapshot Response Status: Accepted Request (A)",
  ["B"] = "Snapshot Response Status: Invalid Market Data Group (B)",
  ["D"] = "Snapshot Response Status: Unavailable Service (D)",
  ["E"] = "Snapshot Response Status: Not Logged In (E)",
  ["F"] = "Snapshot Response Status: Surpass Requests Limit (F)",
  ["H"] = "Snapshot Response Status: Invalid Snapshot Type (H)",
  ["I"] = "Snapshot Response Status: Invalid Identifier Instrument (I)",
  ["L"] = "Snapshot Response Status: Market Data Combination Unavailable Snapshot Type (L)",
  ["M"] = "Snapshot Response Status: Empty Information From Requested Instrument (M)",
  ["S"] = "Snapshot Response Status: Invalid Sample (S)",
}

bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_response_status.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_response_status.labels[value] or "Snapshot Response Status: Unknown("..value..")"
end

-- Dissect: Snapshot Response Status
bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_response_status.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_response_status.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.snapshot_response_status, range, value, display)

  return offset + length, value
end

-- Snapshot Type
bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_type = {}

-- Size: Snapshot Type
bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_type.size = 1

-- Display: Snapshot Type
bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_type.labels = {
  [1] = "Snapshot Type: Full Depth (1)",
  [2] = "Snapshot Type: Price Levels (2)",
  [3] = "Snapshot Type: Best Offers (3)",
  [4] = "Snapshot Type: Trades (4)",
  [5] = "Snapshot Type: Full Depth Tradability And Trades (5)",
  [6] = "Snapshot Type: Price Levels Tradability And Trades (6)",
  [7] = "Snapshot Type: Best Offers And Trades (7)",
  [8] = "Snapshot Type: Full Depth Tradability And Price Setter Trade (8)",
  [9] = "Snapshot Type: Price Levels Tradability And Price Setter Trade (9)",
  [10] = "Snapshot Type: Best Offers And Price Setter Trade (10)",
  [11] = "Snapshot Type: General Indices (11)",
  [12] = "Snapshot Type: Price Levels Best Offers And Tradability (12)",
  [13] = "Snapshot Type: Instruments Catalog Consolidated Feed (13)",
  [14] = "Snapshot Type: Trades Consolidated Feed (14)",
  [15] = "Snapshot Type: Best Offers Consolidated Feed (15)",
  [16] = "Snapshot Type: Full Depth Consolidated Feed (16)",
  [17] = "Snapshot Type: Best Offers And Trades Consolidated Feed (17)",
  [18] = "Snapshot Type: Full Depth And Trades Consolidated Feed (18)",
  [19] = "Snapshot Type: Agile Snapshot (19)",
  [20] = "Snapshot Type: Latest Trades (20)",
}

bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_type.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_type.labels[value] or "Snapshot Type: Unknown("..value..")"
end

-- Dissect: Snapshot Type
bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.snapshot_type, range, value, display)

  return offset + length, value
end

-- Status
bmv_bmvmarketdata_snapshot_intra_v1_1.status = {}

-- Size: Status
bmv_bmvmarketdata_snapshot_intra_v1_1.status.size = 1

-- Display: Status
bmv_bmvmarketdata_snapshot_intra_v1_1.status.labels = {
  ["C"] = "Status: Bids Cancellation (C)",
  ["A"] = "Status: Opening Bidding Session (A)",
  ["P"] = "Status: Pre Opening (P)",
  ["E"] = "Status: In Allotment (E)",
  ["G"] = "Status: Assigned Bidding Session (G)",
  ["T"] = "Status: Ended Bidding Session (T)",
  ["N"] = "Status: Ongoing Trading (N)",
  ["K"] = "Status: Bidding Session Due To Parameters Breaking (K)",
  ["M"] = "Status: Ongoing Bidding Session Due To Operations Ceasing For More Than 20 Business Days (M)",
  ["U"] = "Status: Demerger Bidding Session (U)",
  ["O"] = "Status: Suspended Series (O)",
  ["V"] = "Status: Suspended Listing (V)",
  ["L"] = "Status: Bidding Session Due To Breach (L)",
  ["I"] = "Status: Withdrawal Of Orders In An Ongoing Bidding Session (I)",
  ["B"] = "Status: Withdrawal Of Orders In Intraday Bidding Session (B)",
  ["W"] = "Status: Awaiting News (W)",
  ["X"] = "Status: Settlement Bidding Session (X)",
  ["Y"] = "Status: Extraordinary Settlement Bidding Session (Y)",
  ["R"] = "Status: Ckdes Total Bidding Session (R)",
}

bmv_bmvmarketdata_snapshot_intra_v1_1.status.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.status.labels[value] or "Status: Unknown("..value..")"
end

-- Dissect: Status
bmv_bmvmarketdata_snapshot_intra_v1_1.status.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.status.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.status, range, value, display)

  return offset + length, value
end

-- Sub Industry
bmv_bmvmarketdata_snapshot_intra_v1_1.sub_industry = {}

-- Size: Sub Industry
bmv_bmvmarketdata_snapshot_intra_v1_1.sub_industry.size = 1

-- Display: Sub Industry
bmv_bmvmarketdata_snapshot_intra_v1_1.sub_industry.display = function(value)
  return "Sub Industry: "..value
end

-- Dissect: Sub Industry
bmv_bmvmarketdata_snapshot_intra_v1_1.sub_industry.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.sub_industry.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.sub_industry.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.sub_industry, range, value, display)

  return offset + length, value
end

-- Sub Line
bmv_bmvmarketdata_snapshot_intra_v1_1.sub_line = {}

-- Size: Sub Line
bmv_bmvmarketdata_snapshot_intra_v1_1.sub_line.size = 1

-- Display: Sub Line
bmv_bmvmarketdata_snapshot_intra_v1_1.sub_line.display = function(value)
  return "Sub Line: "..value
end

-- Dissect: Sub Line
bmv_bmvmarketdata_snapshot_intra_v1_1.sub_line.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.sub_line.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.sub_line.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.sub_line, range, value, display)

  return offset + length, value
end

-- Subsector
bmv_bmvmarketdata_snapshot_intra_v1_1.subsector = {}

-- Size: Subsector
bmv_bmvmarketdata_snapshot_intra_v1_1.subsector.size = 1

-- Display: Subsector
bmv_bmvmarketdata_snapshot_intra_v1_1.subsector.display = function(value)
  return "Subsector: "..value
end

-- Dissect: Subsector
bmv_bmvmarketdata_snapshot_intra_v1_1.subsector.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.subsector.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.subsector.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.subsector, range, value, display)

  return offset + length, value
end

-- Term Days
bmv_bmvmarketdata_snapshot_intra_v1_1.term_days = {}

-- Size: Term Days
bmv_bmvmarketdata_snapshot_intra_v1_1.term_days.size = 2

-- Display: Term Days
bmv_bmvmarketdata_snapshot_intra_v1_1.term_days.display = function(value)
  return "Term Days: "..value
end

-- Dissect: Term Days
bmv_bmvmarketdata_snapshot_intra_v1_1.term_days.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.term_days.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.term_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.term_days, range, value, display)

  return offset + length, value
end

-- Theoretical Current Price
bmv_bmvmarketdata_snapshot_intra_v1_1.theoretical_current_price = {}

-- Size: Theoretical Current Price
bmv_bmvmarketdata_snapshot_intra_v1_1.theoretical_current_price.size = 8

-- Display: Theoretical Current Price
bmv_bmvmarketdata_snapshot_intra_v1_1.theoretical_current_price.display = function(value)
  return "Theoretical Current Price: "..value
end

-- Translate: Theoretical Current Price
bmv_bmvmarketdata_snapshot_intra_v1_1.theoretical_current_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Theoretical Current Price
bmv_bmvmarketdata_snapshot_intra_v1_1.theoretical_current_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.theoretical_current_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.theoretical_current_price.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.theoretical_current_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.theoretical_current_price, range, value, display)

  return offset + length, value
end

-- Theoretical Price
bmv_bmvmarketdata_snapshot_intra_v1_1.theoretical_price = {}

-- Size: Theoretical Price
bmv_bmvmarketdata_snapshot_intra_v1_1.theoretical_price.size = 8

-- Display: Theoretical Price
bmv_bmvmarketdata_snapshot_intra_v1_1.theoretical_price.display = function(value)
  return "Theoretical Price: "..value
end

-- Translate: Theoretical Price
bmv_bmvmarketdata_snapshot_intra_v1_1.theoretical_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Theoretical Price
bmv_bmvmarketdata_snapshot_intra_v1_1.theoretical_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.theoretical_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.theoretical_price.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.theoretical_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.theoretical_price, range, value, display)

  return offset + length, value
end

-- Time Of The Trade
bmv_bmvmarketdata_snapshot_intra_v1_1.time_of_the_trade = {}

-- Size: Time Of The Trade
bmv_bmvmarketdata_snapshot_intra_v1_1.time_of_the_trade.size = 8

-- Dissect: Time Of The Trade
bmv_bmvmarketdata_snapshot_intra_v1_1.time_of_the_trade.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.time_of_the_trade.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.time_of_the_trade
  if bmv_bmvmarketdata_snapshot_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.time_of_the_trade_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Total Messages
bmv_bmvmarketdata_snapshot_intra_v1_1.total_messages = {}

-- Size: Total Messages
bmv_bmvmarketdata_snapshot_intra_v1_1.total_messages.size = 1

-- Display: Total Messages
bmv_bmvmarketdata_snapshot_intra_v1_1.total_messages.display = function(value)
  return "Total Messages: "..value
end

-- Dissect: Total Messages
bmv_bmvmarketdata_snapshot_intra_v1_1.total_messages.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.total_messages.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.total_messages.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.total_messages, range, value, display)

  return offset + length, value
end

-- Trac Number
bmv_bmvmarketdata_snapshot_intra_v1_1.trac_number = {}

-- Size: Trac Number
bmv_bmvmarketdata_snapshot_intra_v1_1.trac_number.size = 4

-- Display: Trac Number
bmv_bmvmarketdata_snapshot_intra_v1_1.trac_number.display = function(value)
  return "Trac Number: "..value
end

-- Dissect: Trac Number
bmv_bmvmarketdata_snapshot_intra_v1_1.trac_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.trac_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.trac_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.trac_number, range, value, display)

  return offset + length, value
end

-- Trade Date
bmv_bmvmarketdata_snapshot_intra_v1_1.trade_date = {}

-- Size: Trade Date
bmv_bmvmarketdata_snapshot_intra_v1_1.trade_date.size = 8

-- Dissect: Trade Date
bmv_bmvmarketdata_snapshot_intra_v1_1.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.trade_date.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.trade_date
  if bmv_bmvmarketdata_snapshot_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.trade_date_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Trade Number
bmv_bmvmarketdata_snapshot_intra_v1_1.trade_number = {}

-- Size: Trade Number
bmv_bmvmarketdata_snapshot_intra_v1_1.trade_number.size = 4

-- Display: Trade Number
bmv_bmvmarketdata_snapshot_intra_v1_1.trade_number.display = function(value)
  return "Trade Number: "..value
end

-- Dissect: Trade Number
bmv_bmvmarketdata_snapshot_intra_v1_1.trade_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.trade_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.trade_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.trade_number, range, value, display)

  return offset + length, value
end

-- Trade Time
bmv_bmvmarketdata_snapshot_intra_v1_1.trade_time = {}

-- Size: Trade Time
bmv_bmvmarketdata_snapshot_intra_v1_1.trade_time.size = 8

-- Dissect: Trade Time
bmv_bmvmarketdata_snapshot_intra_v1_1.trade_time.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.trade_time.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.trade_time
  if bmv_bmvmarketdata_snapshot_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.trade_time_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Trades Rate Price
bmv_bmvmarketdata_snapshot_intra_v1_1.trades_rate_price = {}

-- Size: Trades Rate Price
bmv_bmvmarketdata_snapshot_intra_v1_1.trades_rate_price.size = 1

-- Display: Trades Rate Price
bmv_bmvmarketdata_snapshot_intra_v1_1.trades_rate_price.display = function(value)
  if value == "T" then
    return "Trades Rate Price: Rate (T)"
  end
  if value == "P" then
    return "Trades Rate Price: Price (P)"
  end
  if value == " " then
    return "Trades Rate Price: By Default (<whitespace>)"
  end

  return "Trades Rate Price: Unknown("..value..")"
end

-- Dissect: Trades Rate Price
bmv_bmvmarketdata_snapshot_intra_v1_1.trades_rate_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.trades_rate_price.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.trades_rate_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.trades_rate_price, range, value, display)

  return offset + length, value
end

-- Trading Company
bmv_bmvmarketdata_snapshot_intra_v1_1.trading_company = {}

-- Size: Trading Company
bmv_bmvmarketdata_snapshot_intra_v1_1.trading_company.size = 10

-- Display: Trading Company
bmv_bmvmarketdata_snapshot_intra_v1_1.trading_company.display = function(value)
  return "Trading Company: "..value
end

-- Dissect: Trading Company
bmv_bmvmarketdata_snapshot_intra_v1_1.trading_company.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.trading_company.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.trading_company.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.trading_company, range, value, display)

  return offset + length, value
end

-- Trend
bmv_bmvmarketdata_snapshot_intra_v1_1.trend = {}

-- Size: Trend
bmv_bmvmarketdata_snapshot_intra_v1_1.trend.size = 1

-- Display: Trend
bmv_bmvmarketdata_snapshot_intra_v1_1.trend.display = function(value)
  if value == "A" then
    return "Trend: Increase (A)"
  end
  if value == "B" then
    return "Trend: Decrease (B)"
  end
  if value == "S" then
    return "Trend: Without Change (S)"
  end
  if value == " " then
    return "Trend: Without Operation (<whitespace>)"
  end

  return "Trend: Unknown("..value..")"
end

-- Dissect: Trend
bmv_bmvmarketdata_snapshot_intra_v1_1.trend.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.trend.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.trend.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.trend, range, value, display)

  return offset + length, value
end

-- Type
bmv_bmvmarketdata_snapshot_intra_v1_1.type = {}

-- Size: Type
bmv_bmvmarketdata_snapshot_intra_v1_1.type.size = 1

-- Display: Type
bmv_bmvmarketdata_snapshot_intra_v1_1.type.labels = {
  ["E"] = "Type: Equity (E)",
  ["S"] = "Type: Strategy (S)",
  ["G"] = "Type: Spbmvesg (G)",
}

bmv_bmvmarketdata_snapshot_intra_v1_1.type.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.type.labels[value] or "Type: Unknown("..value..")"
end

-- Dissect: Type
bmv_bmvmarketdata_snapshot_intra_v1_1.type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.type.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.type, range, value, display)

  return offset + length, value
end

-- Type Of Agreement
bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_agreement = {}

-- Size: Type Of Agreement
bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_agreement.size = 1

-- Display: Type Of Agreement
bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_agreement.labels = {
  ["C"] = "Type Of Agreement: Crossing Operation (C)",
  ["O"] = "Type Of Agreement: Order Closing (O)",
  ["H"] = "Type Of Agreement: Operation At Closing Price (H)",
  ["D"] = "Type Of Agreement: Operation After Closing (D)",
  ["M"] = "Type Of Agreement: Operation At Medium Price (M)",
  ["P"] = "Type Of Agreement: Operation At Average Price For The Day (P)",
  ["X"] = "Type Of Agreement: Block Operations By Exception (X)",
  ["v"] = "Type Of Agreement: Vwap Operations By Exception (v)",
  ["w"] = "Type Of Agreement: Twap Operations By Exception (w)",
  ["%"] = "Type Of Agreement: Basket Trading (%)",
  ["x"] = "Type Of Agreement: Otc Recent Operations (x)",
  ["y"] = "Type Of Agreement: Otc Agreed Operations (y)",
  ["A"] = "Type Of Agreement: Buy Auto Entry (A)",
  ["B"] = "Type Of Agreement: Sell Auto Entry (B)",
  ["E"] = "Type Of Agreement: Block Trade (E)",
  ["F"] = "Type Of Agreement: Leg Of Blocktrade For Chain Of Forwards (F)",
  ["G"] = "Type Of Agreement: Leg Of Chain Of Forwards (G)",
  ["J"] = "Type Of Agreement: Leg Of Crossing Of Foreign Currency Strategy (J)",
  ["K"] = "Type Of Agreement: Sell Leg Auto Entry Of Foreign Currency Strategy (K)",
  ["L"] = "Type Of Agreement: Buy Leg Auto Entry Of Foreign Currency Strategy (L)",
  ["N"] = "Type Of Agreement: Leg Of Foreign Currency Strategy (N)",
  ["Q"] = "Type Of Agreement: Leg Of Foreign Currency Strategy (Q)",
  ["R"] = "Type Of Agreement: Leg Of Crossing Of Chain Of Forwards (R)",
  ["S"] = "Type Of Agreement: Sell Leg Auto Entry Of Chain Of Forwards (S)",
  ["T"] = "Type Of Agreement: Buy Leg Auto Entry Of Chain Of Forwards (T)",
  ["U"] = "Type Of Agreement: Leg Of Auction Of Chain Of Forwards (U)",
  ["V"] = "Type Of Agreement: Leg Of Round Of Chain Of Forwards (V)",
  ["W"] = "Type Of Agreement: Chains Of Forwards (W)",
  ["Y"] = "Type Of Agreement: Leg Of Rollover Crossing (Y)",
  ["Z"] = "Type Of Agreement: Sell Leg Auto Entry Of Rollover (Z)",
  ["a"] = "Type Of Agreement: Buy Leg Auto Entry Of Rollover (a)",
  ["b"] = "Type Of Agreement: Leg Of Round Of Rollover (b)",
  ["c"] = "Type Of Agreement: Depth Of Round Of Chain Of Forwards (c)",
  ["d"] = "Type Of Agreement: Trading Of Chain Of Forwards (d)",
  ["e"] = "Type Of Agreement: Depth Of Round (e)",
  ["f"] = "Type Of Agreement: Round Of Chain Of Forwards (f)",
  ["g"] = "Type Of Agreement: Rollover Sentra (g)",
  ["h"] = "Type Of Agreement: Type Round (h)",
  ["i"] = "Type Of Agreement: Auctions (i)",
  ["j"] = "Type Of Agreement: Leg Of Block Trade Of Rollover (j)",
  ["k"] = "Type Of Agreement: Leg Of Block Trade Of Foreign Currency Strategy (k)",
  ["l"] = "Type Of Agreement: Block Trade Of Foreign Currency Strategy (l)",
  ["m"] = "Type Of Agreement: Block Trade Of Chain Of Forwards (m)",
  ["n"] = "Type Of Agreement: Blocktrade Of Rollover (n)",
  ["o"] = "Type Of Agreement: Crossing Of Chain Of Forwards (o)",
  ["p"] = "Type Of Agreement: Sell Auto Entry Of Chain Of Forwards (p)",
  ["q"] = "Type Of Agreement: Buy Auto Entry Of Chain Of Forwards (q)",
  ["r"] = "Type Of Agreement: Swap Block Trade (r)",
  ["s"] = "Type Of Agreement: Swap Block Trade With Continuous Coupon (s)",
  ["t"] = "Type Of Agreement: Block Trade Of Unwind (t)",
  ["u"] = "Type Of Agreement: Block Trade Of Substitution (u)",
  ["z"] = "Type Of Agreement: Voice Over (z)",
  ["#"] = "Type Of Agreement: Firm Order (#)",
  ["I"] = "Type Of Agreement: Ipo Cross (I)",
  ["+"] = "Type Of Agreement: Unintentional Self Cross (+)",
  ["&"] = "Type Of Agreement: Without Concertation (&)",
  ["("] = "Type Of Agreement: Inav To Closing Price Trading (()",
  [")"] = "Type Of Agreement: Inav After Closing ())",
}

bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_agreement.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_agreement.labels[value] or "Type Of Agreement: Unknown("..value..")"
end

-- Dissect: Type Of Agreement
bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_agreement.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_agreement.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_agreement.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.type_of_agreement, range, value, display)

  return offset + length, value
end

-- Type Of Cross Trading
bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_cross_trading = {}

-- Size: Type Of Cross Trading
bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_cross_trading.size = 1

-- Display: Type Of Cross Trading
bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_cross_trading.labels = {
  ["O"] = "Type Of Cross Trading: Pre Opening (O)",
  ["I"] = "Type Of Cross Trading: Intraday Auction (I)",
}

bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_cross_trading.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_cross_trading.labels[value] or "Type Of Cross Trading: Unknown("..value..")"
end

-- Dissect: Type Of Cross Trading
bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_cross_trading.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_cross_trading.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_cross_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.type_of_cross_trading, range, value, display)

  return offset + length, value
end

-- Type Of Trading
bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_trading = {}

-- Size: Type Of Trading
bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_trading.size = 1

-- Display: Type Of Trading
bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_trading.labels = {
  ["E"] = "Type Of Trading: Continuous Electronic Trading (E)",
  ["C"] = "Type Of Trading: Market On Close (C)",
  ["B"] = "Type Of Trading: Block Trading (B)",
  ["D"] = "Type Of Trading: Debt Trading (D)",
  ["W"] = "Type Of Trading: Warrants Trading (W)",
}

bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_trading.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_trading.labels[value] or "Type Of Trading: Unknown("..value..")"
end

-- Dissect: Type Of Trading
bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_trading.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_trading.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.type_of_trading, range, value, display)

  return offset + length, value
end

-- Type Of Value
bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_value = {}

-- Size: Type Of Value
bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_value.size = 2

-- Display: Type Of Value
bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_value.display = function(value)
  return "Type Of Value: "..value
end

-- Dissect: Type Of Value
bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_value.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_value.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.type_of_value, range, value, display)

  return offset + length, value
end

-- Type Of Warrant
bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_warrant = {}

-- Size: Type Of Warrant
bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_warrant.size = 1

-- Display: Type Of Warrant
bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_warrant.labels = {
  ["C"] = "Type Of Warrant: Purchase (C)",
  ["V"] = "Type Of Warrant: Sale (V)",
}

bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_warrant.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_warrant.labels[value] or "Type Of Warrant: Unknown("..value..")"
end

-- Dissect: Type Of Warrant
bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_warrant.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_warrant.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_warrant.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.type_of_warrant, range, value, display)

  return offset + length, value
end

-- Underlying Issuing Company
bmv_bmvmarketdata_snapshot_intra_v1_1.underlying_issuing_company = {}

-- Size: Underlying Issuing Company
bmv_bmvmarketdata_snapshot_intra_v1_1.underlying_issuing_company.size = 7

-- Display: Underlying Issuing Company
bmv_bmvmarketdata_snapshot_intra_v1_1.underlying_issuing_company.display = function(value)
  return "Underlying Issuing Company: "..value
end

-- Dissect: Underlying Issuing Company
bmv_bmvmarketdata_snapshot_intra_v1_1.underlying_issuing_company.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.underlying_issuing_company.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.underlying_issuing_company.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.underlying_issuing_company, range, value, display)

  return offset + length, value
end

-- Underlying Series
bmv_bmvmarketdata_snapshot_intra_v1_1.underlying_series = {}

-- Size: Underlying Series
bmv_bmvmarketdata_snapshot_intra_v1_1.underlying_series.size = 6

-- Display: Underlying Series
bmv_bmvmarketdata_snapshot_intra_v1_1.underlying_series.display = function(value)
  return "Underlying Series: "..value
end

-- Dissect: Underlying Series
bmv_bmvmarketdata_snapshot_intra_v1_1.underlying_series.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.underlying_series.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.underlying_series.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.underlying_series, range, value, display)

  return offset + length, value
end

-- User
bmv_bmvmarketdata_snapshot_intra_v1_1.user = {}

-- Size: User
bmv_bmvmarketdata_snapshot_intra_v1_1.user.size = 6

-- Display: User
bmv_bmvmarketdata_snapshot_intra_v1_1.user.display = function(value)
  return "User: "..value
end

-- Dissect: User
bmv_bmvmarketdata_snapshot_intra_v1_1.user.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.user.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.user.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.user, range, value, display)

  return offset + length, value
end

-- Value Of Type
bmv_bmvmarketdata_snapshot_intra_v1_1.value_of_type = {}

-- Size: Value Of Type
bmv_bmvmarketdata_snapshot_intra_v1_1.value_of_type.size = 2

-- Display: Value Of Type
bmv_bmvmarketdata_snapshot_intra_v1_1.value_of_type.display = function(value)
  return "Value Of Type: "..value
end

-- Dissect: Value Of Type
bmv_bmvmarketdata_snapshot_intra_v1_1.value_of_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.value_of_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.value_of_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.value_of_type, range, value, display)

  return offset + length, value
end

-- Value Type
bmv_bmvmarketdata_snapshot_intra_v1_1.value_type = {}

-- Size: Value Type
bmv_bmvmarketdata_snapshot_intra_v1_1.value_type.size = 4

-- Display: Value Type
bmv_bmvmarketdata_snapshot_intra_v1_1.value_type.display = function(value)
  return "Value Type: "..value
end

-- Dissect: Value Type
bmv_bmvmarketdata_snapshot_intra_v1_1.value_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.value_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.value_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.value_type, range, value, display)

  return offset + length, value
end

-- Variation
bmv_bmvmarketdata_snapshot_intra_v1_1.variation = {}

-- Size: Variation
bmv_bmvmarketdata_snapshot_intra_v1_1.variation.size = 4

-- Display: Variation
bmv_bmvmarketdata_snapshot_intra_v1_1.variation.display = function(value)
  return "Variation: "..value
end

-- Translate: Variation
bmv_bmvmarketdata_snapshot_intra_v1_1.variation.translate = function(raw)
  return raw/10000
end

-- Dissect: Variation
bmv_bmvmarketdata_snapshot_intra_v1_1.variation.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.variation.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.variation.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.variation.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.variation, range, value, display)

  return offset + length, value
end

-- Ve Uaiida Multiple
bmv_bmvmarketdata_snapshot_intra_v1_1.ve_uaiida_multiple = {}

-- Size: Ve Uaiida Multiple
bmv_bmvmarketdata_snapshot_intra_v1_1.ve_uaiida_multiple.size = 8

-- Display: Ve Uaiida Multiple
bmv_bmvmarketdata_snapshot_intra_v1_1.ve_uaiida_multiple.display = function(value)
  return "Ve Uaiida Multiple: "..value
end

-- Translate: Ve Uaiida Multiple
bmv_bmvmarketdata_snapshot_intra_v1_1.ve_uaiida_multiple.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Ve Uaiida Multiple
bmv_bmvmarketdata_snapshot_intra_v1_1.ve_uaiida_multiple.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.ve_uaiida_multiple.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.ve_uaiida_multiple.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.ve_uaiida_multiple.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.ve_uaiida_multiple, range, value, display)

  return offset + length, value
end

-- Virtual Trades Status
bmv_bmvmarketdata_snapshot_intra_v1_1.virtual_trades_status = {}

-- Size: Virtual Trades Status
bmv_bmvmarketdata_snapshot_intra_v1_1.virtual_trades_status.size = 1

-- Display: Virtual Trades Status
bmv_bmvmarketdata_snapshot_intra_v1_1.virtual_trades_status.labels = {
  ["A"] = "Virtual Trades Status: Addition (A)",
  ["B"] = "Virtual Trades Status: Deletion (B)",
}

bmv_bmvmarketdata_snapshot_intra_v1_1.virtual_trades_status.display = function(value)
  return bmv_bmvmarketdata_snapshot_intra_v1_1.virtual_trades_status.labels[value] or "Virtual Trades Status: Unknown("..value..")"
end

-- Dissect: Virtual Trades Status
bmv_bmvmarketdata_snapshot_intra_v1_1.virtual_trades_status.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.virtual_trades_status.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.virtual_trades_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.virtual_trades_status, range, value, display)

  return offset + length, value
end

-- Volatility
bmv_bmvmarketdata_snapshot_intra_v1_1.volatility = {}

-- Size: Volatility
bmv_bmvmarketdata_snapshot_intra_v1_1.volatility.size = 8

-- Display: Volatility
bmv_bmvmarketdata_snapshot_intra_v1_1.volatility.display = function(value)
  return "Volatility: "..value
end

-- Translate: Volatility
bmv_bmvmarketdata_snapshot_intra_v1_1.volatility.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Volatility
bmv_bmvmarketdata_snapshot_intra_v1_1.volatility.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.volatility.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.volatility.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.volatility.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.volatility, range, value, display)

  return offset + length, value
end

-- Volume Int 324
bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_324 = {}

-- Size: Volume Int 324
bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_324.size = 4

-- Display: Volume Int 324
bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_324.display = function(value)
  return "Volume Int 324: "..value
end

-- Dissect: Volume Int 324
bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_324.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_324.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_324.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.volume_int_324, range, value, display)

  return offset + length, value
end

-- Volume Int 648
bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_648 = {}

-- Size: Volume Int 648
bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_648.size = 8

-- Display: Volume Int 648
bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_648.display = function(value)
  return "Volume Int 648: "..value
end

-- Dissect: Volume Int 648
bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_648.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_648.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_648.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.volume_int_648, range, value, display)

  return offset + length, value
end

-- Weighted Average Price
bmv_bmvmarketdata_snapshot_intra_v1_1.weighted_average_price = {}

-- Size: Weighted Average Price
bmv_bmvmarketdata_snapshot_intra_v1_1.weighted_average_price.size = 8

-- Display: Weighted Average Price
bmv_bmvmarketdata_snapshot_intra_v1_1.weighted_average_price.display = function(value)
  return "Weighted Average Price: "..value
end

-- Translate: Weighted Average Price
bmv_bmvmarketdata_snapshot_intra_v1_1.weighted_average_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Weighted Average Price
bmv_bmvmarketdata_snapshot_intra_v1_1.weighted_average_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_snapshot_intra_v1_1.weighted_average_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_snapshot_intra_v1_1.weighted_average_price.translate(raw)
  local display = bmv_bmvmarketdata_snapshot_intra_v1_1.weighted_average_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.weighted_average_price, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Bmv BmvMarketData Snapshot Intra 1.1
-----------------------------------------------------------------------

-- Snapshot Consolidated Feed Request Message
bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_consolidated_feed_request_message = {}

-- Size: Snapshot Consolidated Feed Request Message
bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_consolidated_feed_request_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.market_data_group.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_id.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_type.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.origin.size

-- Display: Snapshot Consolidated Feed Request Message
bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_consolidated_feed_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Consolidated Feed Request Message
bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_consolidated_feed_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Data Group: Int8
  index, market_data_group = bmv_bmvmarketdata_snapshot_intra_v1_1.market_data_group.dissect(buffer, index, packet, parent)

  -- Instrument Id: Int32
  index, instrument_id = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Snapshot Type: Int8
  index, snapshot_type = bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_type.dissect(buffer, index, packet, parent)

  -- Origin: ALPHA
  index, origin = bmv_bmvmarketdata_snapshot_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Consolidated Feed Request Message
bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_consolidated_feed_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.snapshot_consolidated_feed_request_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_consolidated_feed_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_consolidated_feed_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_consolidated_feed_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Indices Request Message
bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_indices_request_message = {}

-- Size: Snapshot Indices Request Message
bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_indices_request_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.market_data_group.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.component.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.recovery_hour.size

-- Display: Snapshot Indices Request Message
bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_indices_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Indices Request Message
bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_indices_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Data Group: Int8
  index, market_data_group = bmv_bmvmarketdata_snapshot_intra_v1_1.market_data_group.dissect(buffer, index, packet, parent)

  -- Component: ALPHA
  index, component = bmv_bmvmarketdata_snapshot_intra_v1_1.component.dissect(buffer, index, packet, parent)

  -- Recovery Hour: Timestamp(2)
  index, recovery_hour = bmv_bmvmarketdata_snapshot_intra_v1_1.recovery_hour.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Indices Request Message
bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_indices_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.snapshot_indices_request_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_indices_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_indices_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_indices_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Request Message
bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_request_message = {}

-- Size: Snapshot Request Message
bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_request_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.market_data_group.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_id.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_type.size

-- Display: Snapshot Request Message
bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Request Message
bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Data Group: Int8
  index, market_data_group = bmv_bmvmarketdata_snapshot_intra_v1_1.market_data_group.dissect(buffer, index, packet, parent)

  -- Instrument Id: Int32
  index, instrument_id = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Snapshot Type: Int8
  index, snapshot_type = bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Request Message
bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.snapshot_request_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Request Message
bmv_bmvmarketdata_snapshot_intra_v1_1.replay_request_message = {}

-- Size: Replay Request Message
bmv_bmvmarketdata_snapshot_intra_v1_1.replay_request_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.market_data_group.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.first_message.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.quantity.size

-- Display: Replay Request Message
bmv_bmvmarketdata_snapshot_intra_v1_1.replay_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Request Message
bmv_bmvmarketdata_snapshot_intra_v1_1.replay_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Data Group: Int8
  index, market_data_group = bmv_bmvmarketdata_snapshot_intra_v1_1.market_data_group.dissect(buffer, index, packet, parent)

  -- First Message: Int32
  index, first_message = bmv_bmvmarketdata_snapshot_intra_v1_1.first_message.dissect(buffer, index, packet, parent)

  -- Quantity: Int16
  index, quantity = bmv_bmvmarketdata_snapshot_intra_v1_1.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Request Message
bmv_bmvmarketdata_snapshot_intra_v1_1.replay_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.replay_request_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.replay_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.replay_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.replay_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Message
bmv_bmvmarketdata_snapshot_intra_v1_1.login_message = {}

-- Size: Login Message
bmv_bmvmarketdata_snapshot_intra_v1_1.login_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.market_data_group.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.user.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.password.size

-- Display: Login Message
bmv_bmvmarketdata_snapshot_intra_v1_1.login_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Message
bmv_bmvmarketdata_snapshot_intra_v1_1.login_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Data Group: Int8
  index, market_data_group = bmv_bmvmarketdata_snapshot_intra_v1_1.market_data_group.dissect(buffer, index, packet, parent)

  -- User: ALPHA
  index, user = bmv_bmvmarketdata_snapshot_intra_v1_1.user.dissect(buffer, index, packet, parent)

  -- Password: ALPHA
  index, password = bmv_bmvmarketdata_snapshot_intra_v1_1.password.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Message
bmv_bmvmarketdata_snapshot_intra_v1_1.login_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.login_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.login_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.login_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.login_message.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
bmv_bmvmarketdata_snapshot_intra_v1_1.client_payload = {}

-- Dissect: Client Payload
bmv_bmvmarketdata_snapshot_intra_v1_1.client_payload.dissect = function(buffer, offset, packet, parent, client_message_type)
  -- Dissect Login Message
  if client_message_type == 0x21 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.login_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Request Message
  if client_message_type == 0x23 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.replay_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Request Message
  if client_message_type == 0x24 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Indices Request Message
  if client_message_type == 0x2D then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_indices_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Consolidated Feed Request Message
  if client_message_type == 0x5F then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_consolidated_feed_request_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Message Header
bmv_bmvmarketdata_snapshot_intra_v1_1.client_message_header = {}

-- Size: Client Message Header
bmv_bmvmarketdata_snapshot_intra_v1_1.client_message_header.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.client_length.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.client_message_type.size

-- Display: Client Message Header
bmv_bmvmarketdata_snapshot_intra_v1_1.client_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Message Header
bmv_bmvmarketdata_snapshot_intra_v1_1.client_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Length: Int8
  index, client_length = bmv_bmvmarketdata_snapshot_intra_v1_1.client_length.dissect(buffer, index, packet, parent)

  -- Client Message Type: ALPHA
  index, client_message_type = bmv_bmvmarketdata_snapshot_intra_v1_1.client_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Message Header
bmv_bmvmarketdata_snapshot_intra_v1_1.client_message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.client_message_header, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.client_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.client_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.client_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Message
bmv_bmvmarketdata_snapshot_intra_v1_1.client_message = {}

-- Display: Client Message
bmv_bmvmarketdata_snapshot_intra_v1_1.client_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Message
bmv_bmvmarketdata_snapshot_intra_v1_1.client_message.fields = function(buffer, offset, packet, parent, size_of_client_message)
  local index = offset

  -- Client Message Header: Struct of 2 fields
  index, client_message_header = bmv_bmvmarketdata_snapshot_intra_v1_1.client_message_header.dissect(buffer, index, packet, parent)

  -- Dependency for Client Payload
  local end_of_payload = offset + size_of_client_message

  -- Client Payload: Runtime Type with 5 branches
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Client Message Type
    local client_message_type = buffer(index - 1, 1):uint()

    -- Client Payload: Runtime Type with 5 branches
    index = bmv_bmvmarketdata_snapshot_intra_v1_1.client_payload.dissect(buffer, index, packet, parent, client_message_type)
  end

  return index
end

-- Dissect: Client Message
bmv_bmvmarketdata_snapshot_intra_v1_1.client_message.dissect = function(buffer, offset, packet, parent, size_of_client_message)
  local index = offset + size_of_client_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.client_message, buffer(offset, 0))
    local current = bmv_bmvmarketdata_snapshot_intra_v1_1.client_message.fields(buffer, offset, packet, parent, size_of_client_message)
    parent:set_len(size_of_client_message)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.client_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bmv_bmvmarketdata_snapshot_intra_v1_1.client_message.fields(buffer, offset, packet, parent, size_of_client_message)

    return index
  end
end

-- Remaining Bytes For: Client Message
local client_message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < bmv_bmvmarketdata_snapshot_intra_v1_1.client_message_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 1):int()

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Client Packet
bmv_bmvmarketdata_snapshot_intra_v1_1.client_packet = {}

-- Verify required size of Tcp packet
bmv_bmvmarketdata_snapshot_intra_v1_1.client_packet.requiredsize = function(buffer)
  return buffer:len() >= bmv_bmvmarketdata_snapshot_intra_v1_1.client_message_header.size
end

-- Dissect Client Packet
bmv_bmvmarketdata_snapshot_intra_v1_1.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Message
  local end_of_payload = buffer:len()

  -- Client Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_message = client_message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_client_message):tvb()
      index = bmv_bmvmarketdata_snapshot_intra_v1_1.client_message.dissect(frame, index, packet, parent, size_of_client_message)
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

-- Last Quote Message
bmv_bmvmarketdata_snapshot_intra_v1_1.last_quote_message = {}

-- Size: Last Quote Message
bmv_bmvmarketdata_snapshot_intra_v1_1.last_quote_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_648.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.price_rate.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.direction_of_the_bid.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_trading.size

-- Display: Last Quote Message
bmv_bmvmarketdata_snapshot_intra_v1_1.last_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Quote Message
bmv_bmvmarketdata_snapshot_intra_v1_1.last_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Origin: ALPHA
  index, origin = bmv_bmvmarketdata_snapshot_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Volume Int 648: Int64
  index, volume_int_648 = bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_648.dissect(buffer, index, packet, parent)

  -- Price Rate: Price (8)
  index, price_rate = bmv_bmvmarketdata_snapshot_intra_v1_1.price_rate.dissect(buffer, index, packet, parent)

  -- Direction Of The Bid: ALFA
  index, direction_of_the_bid = bmv_bmvmarketdata_snapshot_intra_v1_1.direction_of_the_bid.dissect(buffer, index, packet, parent)

  -- Type Of Trading: ALFA
  index, type_of_trading = bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_trading.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Quote Message
bmv_bmvmarketdata_snapshot_intra_v1_1.last_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.last_quote_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.last_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.last_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.last_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancellations Of Orders Message
bmv_bmvmarketdata_snapshot_intra_v1_1.cancellations_of_orders_message = {}

-- Size: Cancellations Of Orders Message
bmv_bmvmarketdata_snapshot_intra_v1_1.cancellations_of_orders_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.date.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.consecutive_number.size

-- Display: Cancellations Of Orders Message
bmv_bmvmarketdata_snapshot_intra_v1_1.cancellations_of_orders_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancellations Of Orders Message
bmv_bmvmarketdata_snapshot_intra_v1_1.cancellations_of_orders_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Origin: ALPHA
  index, origin = bmv_bmvmarketdata_snapshot_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Date: Timestamp(1)
  index, date = bmv_bmvmarketdata_snapshot_intra_v1_1.date.dissect(buffer, index, packet, parent)

  -- Consecutive Number: Int64
  index, consecutive_number = bmv_bmvmarketdata_snapshot_intra_v1_1.consecutive_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancellations Of Orders Message
bmv_bmvmarketdata_snapshot_intra_v1_1.cancellations_of_orders_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.cancellations_of_orders_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.cancellations_of_orders_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.cancellations_of_orders_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.cancellations_of_orders_message.fields(buffer, offset, packet, parent)
  end
end

-- Registration Of Order Message
bmv_bmvmarketdata_snapshot_intra_v1_1.registration_of_order_message = {}

-- Size: Registration Of Order Message
bmv_bmvmarketdata_snapshot_intra_v1_1.registration_of_order_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.date_and_time.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.consecutive_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.direction.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_648.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.price.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.participant.size

-- Display: Registration Of Order Message
bmv_bmvmarketdata_snapshot_intra_v1_1.registration_of_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Registration Of Order Message
bmv_bmvmarketdata_snapshot_intra_v1_1.registration_of_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Origin: ALPHA
  index, origin = bmv_bmvmarketdata_snapshot_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Date And Time: Timestamp(2)
  index, date_and_time = bmv_bmvmarketdata_snapshot_intra_v1_1.date_and_time.dissect(buffer, index, packet, parent)

  -- Consecutive Number: Int64
  index, consecutive_number = bmv_bmvmarketdata_snapshot_intra_v1_1.consecutive_number.dissect(buffer, index, packet, parent)

  -- Direction: ALPHA
  index, direction = bmv_bmvmarketdata_snapshot_intra_v1_1.direction.dissect(buffer, index, packet, parent)

  -- Volume Int 648: Int64
  index, volume_int_648 = bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_648.dissect(buffer, index, packet, parent)

  -- Price: Price (8)
  index, price = bmv_bmvmarketdata_snapshot_intra_v1_1.price.dissect(buffer, index, packet, parent)

  -- Participant: ALPHA
  index, participant = bmv_bmvmarketdata_snapshot_intra_v1_1.participant.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Registration Of Order Message
bmv_bmvmarketdata_snapshot_intra_v1_1.registration_of_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.registration_of_order_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.registration_of_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.registration_of_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.registration_of_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Consolidated Execution Of Orders Message
bmv_bmvmarketdata_snapshot_intra_v1_1.consolidated_execution_of_orders_message = {}

-- Size: Consolidated Execution Of Orders Message
bmv_bmvmarketdata_snapshot_intra_v1_1.consolidated_execution_of_orders_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.date.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.consecutive_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_648.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.consecutive_number_of_the_trade.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.execution_price.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.indicator.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.sets_price.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.participant.size

-- Display: Consolidated Execution Of Orders Message
bmv_bmvmarketdata_snapshot_intra_v1_1.consolidated_execution_of_orders_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Execution Of Orders Message
bmv_bmvmarketdata_snapshot_intra_v1_1.consolidated_execution_of_orders_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Origin: ALPHA
  index, origin = bmv_bmvmarketdata_snapshot_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Date: Timestamp(1)
  index, date = bmv_bmvmarketdata_snapshot_intra_v1_1.date.dissect(buffer, index, packet, parent)

  -- Consecutive Number: Int64
  index, consecutive_number = bmv_bmvmarketdata_snapshot_intra_v1_1.consecutive_number.dissect(buffer, index, packet, parent)

  -- Volume Int 648: Int64
  index, volume_int_648 = bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_648.dissect(buffer, index, packet, parent)

  -- Consecutive Number Of The Trade: Int64
  index, consecutive_number_of_the_trade = bmv_bmvmarketdata_snapshot_intra_v1_1.consecutive_number_of_the_trade.dissect(buffer, index, packet, parent)

  -- Execution Price: Precio(8)
  index, execution_price = bmv_bmvmarketdata_snapshot_intra_v1_1.execution_price.dissect(buffer, index, packet, parent)

  -- Indicator: ALFA
  index, indicator = bmv_bmvmarketdata_snapshot_intra_v1_1.indicator.dissect(buffer, index, packet, parent)

  -- Sets Price: ALFA
  index, sets_price = bmv_bmvmarketdata_snapshot_intra_v1_1.sets_price.dissect(buffer, index, packet, parent)

  -- Participant: ALPHA
  index, participant = bmv_bmvmarketdata_snapshot_intra_v1_1.participant.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Execution Of Orders Message
bmv_bmvmarketdata_snapshot_intra_v1_1.consolidated_execution_of_orders_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.consolidated_execution_of_orders_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.consolidated_execution_of_orders_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.consolidated_execution_of_orders_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.consolidated_execution_of_orders_message.fields(buffer, offset, packet, parent)
  end
end

-- Pricevolume Indicator Message
bmv_bmvmarketdata_snapshot_intra_v1_1.pricevolume_indicator_message = {}

-- Size: Pricevolume Indicator Message
bmv_bmvmarketdata_snapshot_intra_v1_1.pricevolume_indicator_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.probable_price_of_allotment.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_648.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.best_selling_price.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.best_purchasing_price.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_cross_trading.size

-- Display: Pricevolume Indicator Message
bmv_bmvmarketdata_snapshot_intra_v1_1.pricevolume_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Pricevolume Indicator Message
bmv_bmvmarketdata_snapshot_intra_v1_1.pricevolume_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Origin: ALPHA
  index, origin = bmv_bmvmarketdata_snapshot_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Probable Price Of Allotment: Precio(8)
  index, probable_price_of_allotment = bmv_bmvmarketdata_snapshot_intra_v1_1.probable_price_of_allotment.dissect(buffer, index, packet, parent)

  -- Volume Int 648: Int64
  index, volume_int_648 = bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_648.dissect(buffer, index, packet, parent)

  -- Best Selling Price: Price (8)
  index, best_selling_price = bmv_bmvmarketdata_snapshot_intra_v1_1.best_selling_price.dissect(buffer, index, packet, parent)

  -- Best Purchasing Price: Precio(8)
  index, best_purchasing_price = bmv_bmvmarketdata_snapshot_intra_v1_1.best_purchasing_price.dissect(buffer, index, packet, parent)

  -- Type Of Cross Trading: ALFA
  index, type_of_cross_trading = bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_cross_trading.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Pricevolume Indicator Message
bmv_bmvmarketdata_snapshot_intra_v1_1.pricevolume_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.pricevolume_indicator_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.pricevolume_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.pricevolume_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.pricevolume_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Consolidated Trade Cancellation Message
bmv_bmvmarketdata_snapshot_intra_v1_1.consolidated_trade_cancellation_message = {}

-- Size: Consolidated Trade Cancellation Message
bmv_bmvmarketdata_snapshot_intra_v1_1.consolidated_trade_cancellation_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.consecutive_number_of_the_trade.size

-- Display: Consolidated Trade Cancellation Message
bmv_bmvmarketdata_snapshot_intra_v1_1.consolidated_trade_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Trade Cancellation Message
bmv_bmvmarketdata_snapshot_intra_v1_1.consolidated_trade_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Origin: ALPHA
  index, origin = bmv_bmvmarketdata_snapshot_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Consecutive Number Of The Trade: Int64
  index, consecutive_number_of_the_trade = bmv_bmvmarketdata_snapshot_intra_v1_1.consecutive_number_of_the_trade.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Trade Cancellation Message
bmv_bmvmarketdata_snapshot_intra_v1_1.consolidated_trade_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.consolidated_trade_cancellation_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.consolidated_trade_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.consolidated_trade_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.consolidated_trade_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Equities Market Trades Message
bmv_bmvmarketdata_snapshot_intra_v1_1.equities_market_trades_message = {}

-- Size: Equities Market Trades Message
bmv_bmvmarketdata_snapshot_intra_v1_1.equities_market_trades_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.time_of_the_trade.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_648.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.price.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_agreement.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.consecutive_number_of_the_trade.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.sets_price.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_trading.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.amount.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.purchases.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.sells.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.settlement.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.auction_indicator.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.indicator.size

-- Display: Equities Market Trades Message
bmv_bmvmarketdata_snapshot_intra_v1_1.equities_market_trades_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equities Market Trades Message
bmv_bmvmarketdata_snapshot_intra_v1_1.equities_market_trades_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Origin: ALPHA
  index, origin = bmv_bmvmarketdata_snapshot_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Time Of The Trade: Timestamp(2)
  index, time_of_the_trade = bmv_bmvmarketdata_snapshot_intra_v1_1.time_of_the_trade.dissect(buffer, index, packet, parent)

  -- Volume Int 648: Int64
  index, volume_int_648 = bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_648.dissect(buffer, index, packet, parent)

  -- Price: Price (8)
  index, price = bmv_bmvmarketdata_snapshot_intra_v1_1.price.dissect(buffer, index, packet, parent)

  -- Type Of Agreement: ALFA
  index, type_of_agreement = bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_agreement.dissect(buffer, index, packet, parent)

  -- Consecutive Number Of The Trade: Int64
  index, consecutive_number_of_the_trade = bmv_bmvmarketdata_snapshot_intra_v1_1.consecutive_number_of_the_trade.dissect(buffer, index, packet, parent)

  -- Sets Price: ALFA
  index, sets_price = bmv_bmvmarketdata_snapshot_intra_v1_1.sets_price.dissect(buffer, index, packet, parent)

  -- Type Of Trading: ALFA
  index, type_of_trading = bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_trading.dissect(buffer, index, packet, parent)

  -- Amount: Precio(8)
  index, amount = bmv_bmvmarketdata_snapshot_intra_v1_1.amount.dissect(buffer, index, packet, parent)

  -- Purchases: ALFA
  index, purchases = bmv_bmvmarketdata_snapshot_intra_v1_1.purchases.dissect(buffer, index, packet, parent)

  -- Sells: ALFA
  index, sells = bmv_bmvmarketdata_snapshot_intra_v1_1.sells.dissect(buffer, index, packet, parent)

  -- Settlement: ALPHA
  index, settlement = bmv_bmvmarketdata_snapshot_intra_v1_1.settlement.dissect(buffer, index, packet, parent)

  -- Auction Indicator: ALPHA
  index, auction_indicator = bmv_bmvmarketdata_snapshot_intra_v1_1.auction_indicator.dissect(buffer, index, packet, parent)

  -- Indicator: ALFA
  index, indicator = bmv_bmvmarketdata_snapshot_intra_v1_1.indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Equities Market Trades Message
bmv_bmvmarketdata_snapshot_intra_v1_1.equities_market_trades_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.equities_market_trades_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.equities_market_trades_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.equities_market_trades_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.equities_market_trades_message.fields(buffer, offset, packet, parent)
  end
end

-- Relation Between Bmvbiva Instruments Message
bmv_bmvmarketdata_snapshot_intra_v1_1.relation_between_bmvbiva_instruments_message = {}

-- Size: Relation Between Bmvbiva Instruments Message
bmv_bmvmarketdata_snapshot_intra_v1_1.relation_between_bmvbiva_instruments_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_the_bmv_instrument.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.biva_instrument.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_trading.size

-- Display: Relation Between Bmvbiva Instruments Message
bmv_bmvmarketdata_snapshot_intra_v1_1.relation_between_bmvbiva_instruments_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Relation Between Bmvbiva Instruments Message
bmv_bmvmarketdata_snapshot_intra_v1_1.relation_between_bmvbiva_instruments_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of The Bmv Instrument: Int32
  index, number_of_the_bmv_instrument = bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_the_bmv_instrument.dissect(buffer, index, packet, parent)

  -- Biva Instrument: Int32
  index, biva_instrument = bmv_bmvmarketdata_snapshot_intra_v1_1.biva_instrument.dissect(buffer, index, packet, parent)

  -- Type Of Trading: ALFA
  index, type_of_trading = bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_trading.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Relation Between Bmvbiva Instruments Message
bmv_bmvmarketdata_snapshot_intra_v1_1.relation_between_bmvbiva_instruments_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.relation_between_bmvbiva_instruments_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.relation_between_bmvbiva_instruments_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.relation_between_bmvbiva_instruments_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.relation_between_bmvbiva_instruments_message.fields(buffer, offset, packet, parent)
  end
end

-- Probable Price Of Allocation Message
bmv_bmvmarketdata_snapshot_intra_v1_1.probable_price_of_allocation_message = {}

-- Size: Probable Price Of Allocation Message
bmv_bmvmarketdata_snapshot_intra_v1_1.probable_price_of_allocation_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.probable_price_of_allocation.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_648.size

-- Display: Probable Price Of Allocation Message
bmv_bmvmarketdata_snapshot_intra_v1_1.probable_price_of_allocation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Probable Price Of Allocation Message
bmv_bmvmarketdata_snapshot_intra_v1_1.probable_price_of_allocation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Origin: ALPHA
  index, origin = bmv_bmvmarketdata_snapshot_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Probable Price Of Allocation: Precio(8)
  index, probable_price_of_allocation = bmv_bmvmarketdata_snapshot_intra_v1_1.probable_price_of_allocation.dissect(buffer, index, packet, parent)

  -- Volume Int 648: Int64
  index, volume_int_648 = bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_648.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Probable Price Of Allocation Message
bmv_bmvmarketdata_snapshot_intra_v1_1.probable_price_of_allocation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.probable_price_of_allocation_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.probable_price_of_allocation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.probable_price_of_allocation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.probable_price_of_allocation_message.fields(buffer, offset, packet, parent)
  end
end

-- Catalog For Instruments Belonging To The Local And Global Stock Market Message
bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_for_instruments_belonging_to_the_local_and_global_stock_market_message = {}

-- Size: Catalog For Instruments Belonging To The Local And Global Stock Market Message
bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_for_instruments_belonging_to_the_local_and_global_stock_market_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.mse_instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.value_of_type.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.issuing_company.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.series.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.last_price.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.ppp_weighted_average_price.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.reference_date.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.reference.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.coupon_in_effect.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.marketability.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.numerical_marketability.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.isin.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.market.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.registered_values.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.exchange.size

-- Display: Catalog For Instruments Belonging To The Local And Global Stock Market Message
bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_for_instruments_belonging_to_the_local_and_global_stock_market_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Catalog For Instruments Belonging To The Local And Global Stock Market Message
bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_for_instruments_belonging_to_the_local_and_global_stock_market_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mse Instrument Number: Int32
  index, mse_instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.mse_instrument_number.dissect(buffer, index, packet, parent)

  -- Value Of Type: ALFA
  index, value_of_type = bmv_bmvmarketdata_snapshot_intra_v1_1.value_of_type.dissect(buffer, index, packet, parent)

  -- Issuing Company: ALFA
  index, issuing_company = bmv_bmvmarketdata_snapshot_intra_v1_1.issuing_company.dissect(buffer, index, packet, parent)

  -- Series: ALPHA
  index, series = bmv_bmvmarketdata_snapshot_intra_v1_1.series.dissect(buffer, index, packet, parent)

  -- Last Price: Price (8)
  index, last_price = bmv_bmvmarketdata_snapshot_intra_v1_1.last_price.dissect(buffer, index, packet, parent)

  -- Ppp Weighted Average Price: Precio(8)
  index, ppp_weighted_average_price = bmv_bmvmarketdata_snapshot_intra_v1_1.ppp_weighted_average_price.dissect(buffer, index, packet, parent)

  -- Reference Date: Timestamp(1)
  index, reference_date = bmv_bmvmarketdata_snapshot_intra_v1_1.reference_date.dissect(buffer, index, packet, parent)

  -- Reference: ALFA
  index, reference = bmv_bmvmarketdata_snapshot_intra_v1_1.reference.dissect(buffer, index, packet, parent)

  -- Coupon In Effect: Int16
  index, coupon_in_effect = bmv_bmvmarketdata_snapshot_intra_v1_1.coupon_in_effect.dissect(buffer, index, packet, parent)

  -- Marketability: ALFA
  index, marketability = bmv_bmvmarketdata_snapshot_intra_v1_1.marketability.dissect(buffer, index, packet, parent)

  -- Numerical Marketability: Precio(4)
  index, numerical_marketability = bmv_bmvmarketdata_snapshot_intra_v1_1.numerical_marketability.dissect(buffer, index, packet, parent)

  -- Isin: ALFA
  index, isin = bmv_bmvmarketdata_snapshot_intra_v1_1.isin.dissect(buffer, index, packet, parent)

  -- Market: ALPHA
  index, market = bmv_bmvmarketdata_snapshot_intra_v1_1.market.dissect(buffer, index, packet, parent)

  -- Registered Values: Int64
  index, registered_values = bmv_bmvmarketdata_snapshot_intra_v1_1.registered_values.dissect(buffer, index, packet, parent)

  -- Exchange: ALFA
  index, exchange = bmv_bmvmarketdata_snapshot_intra_v1_1.exchange.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Catalog For Instruments Belonging To The Local And Global Stock Market Message
bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_for_instruments_belonging_to_the_local_and_global_stock_market_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.catalog_for_instruments_belonging_to_the_local_and_global_stock_market_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_for_instruments_belonging_to_the_local_and_global_stock_market_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_for_instruments_belonging_to_the_local_and_global_stock_market_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_for_instruments_belonging_to_the_local_and_global_stock_market_message.fields(buffer, offset, packet, parent)
  end
end

-- Consolidated Inav Message
bmv_bmvmarketdata_snapshot_intra_v1_1.consolidated_inav_message = {}

-- Size: Consolidated Inav Message
bmv_bmvmarketdata_snapshot_intra_v1_1.consolidated_inav_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_the_trac.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.current_theoretical_price.size

-- Display: Consolidated Inav Message
bmv_bmvmarketdata_snapshot_intra_v1_1.consolidated_inav_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Inav Message
bmv_bmvmarketdata_snapshot_intra_v1_1.consolidated_inav_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of The Trac: Int32
  index, number_of_the_trac = bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_the_trac.dissect(buffer, index, packet, parent)

  -- Origin: ALPHA
  index, origin = bmv_bmvmarketdata_snapshot_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Current Theoretical Price: Precio(8)
  index, current_theoretical_price = bmv_bmvmarketdata_snapshot_intra_v1_1.current_theoretical_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Inav Message
bmv_bmvmarketdata_snapshot_intra_v1_1.consolidated_inav_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.consolidated_inav_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.consolidated_inav_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.consolidated_inav_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.consolidated_inav_message.fields(buffer, offset, packet, parent)
  end
end

-- Catalog Sent For Instruments Belonging To Capital Tracs Message
bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_sent_for_instruments_belonging_to_capital_tracs_message = {}

-- Size: Catalog Sent For Instruments Belonging To Capital Tracs Message
bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_sent_for_instruments_belonging_to_capital_tracs_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_the_trac.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.name_of_the_trac.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.underlying_issuing_company.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.underlying_series.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.securities.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.excluded_securities.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.price.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.component_in_cash.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.excluded_value.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_certificates.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.theoretical_price.size

-- Display: Catalog Sent For Instruments Belonging To Capital Tracs Message
bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_sent_for_instruments_belonging_to_capital_tracs_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Catalog Sent For Instruments Belonging To Capital Tracs Message
bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_sent_for_instruments_belonging_to_capital_tracs_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of The Trac: Int32
  index, number_of_the_trac = bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_the_trac.dissect(buffer, index, packet, parent)

  -- Origin: ALPHA
  index, origin = bmv_bmvmarketdata_snapshot_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Name Of The Trac: ALFA
  index, name_of_the_trac = bmv_bmvmarketdata_snapshot_intra_v1_1.name_of_the_trac.dissect(buffer, index, packet, parent)

  -- Underlying Issuing Company: ALFA
  index, underlying_issuing_company = bmv_bmvmarketdata_snapshot_intra_v1_1.underlying_issuing_company.dissect(buffer, index, packet, parent)

  -- Underlying Series: ALFA
  index, underlying_series = bmv_bmvmarketdata_snapshot_intra_v1_1.underlying_series.dissect(buffer, index, packet, parent)

  -- Securities: Precio(8)
  index, securities = bmv_bmvmarketdata_snapshot_intra_v1_1.securities.dissect(buffer, index, packet, parent)

  -- Excluded Securities: Precio(8)
  index, excluded_securities = bmv_bmvmarketdata_snapshot_intra_v1_1.excluded_securities.dissect(buffer, index, packet, parent)

  -- Price: Price (8)
  index, price = bmv_bmvmarketdata_snapshot_intra_v1_1.price.dissect(buffer, index, packet, parent)

  -- Component In Cash: Precio(8)
  index, component_in_cash = bmv_bmvmarketdata_snapshot_intra_v1_1.component_in_cash.dissect(buffer, index, packet, parent)

  -- Excluded Value: Precio (8)
  index, excluded_value = bmv_bmvmarketdata_snapshot_intra_v1_1.excluded_value.dissect(buffer, index, packet, parent)

  -- Number Of Certificates: Int64
  index, number_of_certificates = bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_certificates.dissect(buffer, index, packet, parent)

  -- Theoretical Price: Precio(8)
  index, theoretical_price = bmv_bmvmarketdata_snapshot_intra_v1_1.theoretical_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Catalog Sent For Instruments Belonging To Capital Tracs Message
bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_sent_for_instruments_belonging_to_capital_tracs_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.catalog_sent_for_instruments_belonging_to_capital_tracs_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_sent_for_instruments_belonging_to_capital_tracs_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_sent_for_instruments_belonging_to_capital_tracs_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_sent_for_instruments_belonging_to_capital_tracs_message.fields(buffer, offset, packet, parent)
  end
end

-- Catalog For Instruments Belonging To The Capital Warrants Market Message
bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_for_instruments_belonging_to_the_capital_warrants_market_message = {}

-- Size: Catalog For Instruments Belonging To The Capital Warrants Market Message
bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_for_instruments_belonging_to_the_capital_warrants_market_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_the_instrument.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_value.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.issuing_company.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.series.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_warrant.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.date_of_maturity.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.price_of_exercise.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.reference_price.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.reference_date.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.reference.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.isin.size

-- Display: Catalog For Instruments Belonging To The Capital Warrants Market Message
bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_for_instruments_belonging_to_the_capital_warrants_market_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Catalog For Instruments Belonging To The Capital Warrants Market Message
bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_for_instruments_belonging_to_the_capital_warrants_market_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of The Instrument: Int32
  index, number_of_the_instrument = bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_the_instrument.dissect(buffer, index, packet, parent)

  -- Origin: ALPHA
  index, origin = bmv_bmvmarketdata_snapshot_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Type Of Value: ALFA
  index, type_of_value = bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_value.dissect(buffer, index, packet, parent)

  -- Issuing Company: ALFA
  index, issuing_company = bmv_bmvmarketdata_snapshot_intra_v1_1.issuing_company.dissect(buffer, index, packet, parent)

  -- Series: ALPHA
  index, series = bmv_bmvmarketdata_snapshot_intra_v1_1.series.dissect(buffer, index, packet, parent)

  -- Type Of Warrant: ALFA
  index, type_of_warrant = bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_warrant.dissect(buffer, index, packet, parent)

  -- Date Of Maturity: Timestamp(1)
  index, date_of_maturity = bmv_bmvmarketdata_snapshot_intra_v1_1.date_of_maturity.dissect(buffer, index, packet, parent)

  -- Price Of Exercise: Precio(8)
  index, price_of_exercise = bmv_bmvmarketdata_snapshot_intra_v1_1.price_of_exercise.dissect(buffer, index, packet, parent)

  -- Reference Price: Precio(8)
  index, reference_price = bmv_bmvmarketdata_snapshot_intra_v1_1.reference_price.dissect(buffer, index, packet, parent)

  -- Reference Date: Timestamp(1)
  index, reference_date = bmv_bmvmarketdata_snapshot_intra_v1_1.reference_date.dissect(buffer, index, packet, parent)

  -- Reference: ALFA
  index, reference = bmv_bmvmarketdata_snapshot_intra_v1_1.reference.dissect(buffer, index, packet, parent)

  -- Isin: ALFA
  index, isin = bmv_bmvmarketdata_snapshot_intra_v1_1.isin.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Catalog For Instruments Belonging To The Capital Warrants Market Message
bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_for_instruments_belonging_to_the_capital_warrants_market_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.catalog_for_instruments_belonging_to_the_capital_warrants_market_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_for_instruments_belonging_to_the_capital_warrants_market_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_for_instruments_belonging_to_the_capital_warrants_market_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_for_instruments_belonging_to_the_capital_warrants_market_message.fields(buffer, offset, packet, parent)
  end
end

-- Changes In Status Message
bmv_bmvmarketdata_snapshot_intra_v1_1.changes_in_status_message = {}

-- Size: Changes In Status Message
bmv_bmvmarketdata_snapshot_intra_v1_1.changes_in_status_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.status.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.reason.size

-- Display: Changes In Status Message
bmv_bmvmarketdata_snapshot_intra_v1_1.changes_in_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Changes In Status Message
bmv_bmvmarketdata_snapshot_intra_v1_1.changes_in_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Origin: ALPHA
  index, origin = bmv_bmvmarketdata_snapshot_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Status: ALFA
  index, status = bmv_bmvmarketdata_snapshot_intra_v1_1.status.dissect(buffer, index, packet, parent)

  -- Reason: ALFA
  index, reason = bmv_bmvmarketdata_snapshot_intra_v1_1.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Changes In Status Message
bmv_bmvmarketdata_snapshot_intra_v1_1.changes_in_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.changes_in_status_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.changes_in_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.changes_in_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.changes_in_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Reference Price Message
bmv_bmvmarketdata_snapshot_intra_v1_1.reference_price_message = {}

-- Size: Reference Price Message
bmv_bmvmarketdata_snapshot_intra_v1_1.reference_price_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.price.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.price_type.size

-- Display: Reference Price Message
bmv_bmvmarketdata_snapshot_intra_v1_1.reference_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reference Price Message
bmv_bmvmarketdata_snapshot_intra_v1_1.reference_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Origin: ALPHA
  index, origin = bmv_bmvmarketdata_snapshot_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Price: Price (8)
  index, price = bmv_bmvmarketdata_snapshot_intra_v1_1.price.dissect(buffer, index, packet, parent)

  -- Price Type: ALFA
  index, price_type = bmv_bmvmarketdata_snapshot_intra_v1_1.price_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reference Price Message
bmv_bmvmarketdata_snapshot_intra_v1_1.reference_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.reference_price_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.reference_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.reference_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.reference_price_message.fields(buffer, offset, packet, parent)
  end
end

-- System Events Message
bmv_bmvmarketdata_snapshot_intra_v1_1.system_events_message = {}

-- Size: System Events Message
bmv_bmvmarketdata_snapshot_intra_v1_1.system_events_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.code_of_event.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.market.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.send_time.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.end_time.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.group.size

-- Display: System Events Message
bmv_bmvmarketdata_snapshot_intra_v1_1.system_events_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Events Message
bmv_bmvmarketdata_snapshot_intra_v1_1.system_events_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Origin: ALPHA
  index, origin = bmv_bmvmarketdata_snapshot_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Code Of Event: ALFA
  index, code_of_event = bmv_bmvmarketdata_snapshot_intra_v1_1.code_of_event.dissect(buffer, index, packet, parent)

  -- Market: ALPHA
  index, market = bmv_bmvmarketdata_snapshot_intra_v1_1.market.dissect(buffer, index, packet, parent)

  -- Send Time: Timestamp(2)
  index, send_time = bmv_bmvmarketdata_snapshot_intra_v1_1.send_time.dissect(buffer, index, packet, parent)

  -- End Time: Timestamp(2)
  index, end_time = bmv_bmvmarketdata_snapshot_intra_v1_1.end_time.dissect(buffer, index, packet, parent)

  -- Group: ALFA
  index, group = bmv_bmvmarketdata_snapshot_intra_v1_1.group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Events Message
bmv_bmvmarketdata_snapshot_intra_v1_1.system_events_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.system_events_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.system_events_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.system_events_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.system_events_message.fields(buffer, offset, packet, parent)
  end
end

-- Weighted Average Price Message
bmv_bmvmarketdata_snapshot_intra_v1_1.weighted_average_price_message = {}

-- Size: Weighted Average Price Message
bmv_bmvmarketdata_snapshot_intra_v1_1.weighted_average_price_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.weighted_average_price.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.volatility.size

-- Display: Weighted Average Price Message
bmv_bmvmarketdata_snapshot_intra_v1_1.weighted_average_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Weighted Average Price Message
bmv_bmvmarketdata_snapshot_intra_v1_1.weighted_average_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Origin: ALPHA
  index, origin = bmv_bmvmarketdata_snapshot_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Weighted Average Price: Price (8)
  index, weighted_average_price = bmv_bmvmarketdata_snapshot_intra_v1_1.weighted_average_price.dissect(buffer, index, packet, parent)

  -- Volatility: Price (8)
  index, volatility = bmv_bmvmarketdata_snapshot_intra_v1_1.volatility.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Weighted Average Price Message
bmv_bmvmarketdata_snapshot_intra_v1_1.weighted_average_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.weighted_average_price_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.weighted_average_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.weighted_average_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.weighted_average_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Catalog Sent For Instruments Belonging To Mutual Funds Message
bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_sent_for_instruments_belonging_to_mutual_funds_message = {}

-- Size: Catalog Sent For Instruments Belonging To Mutual Funds Message
bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_sent_for_instruments_belonging_to_mutual_funds_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_the_instrument.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_value.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.issuing_company.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.series.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.sector.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.subsector.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.industry.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.sub_industry.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.trading_company.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.reference_price.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.reference_date.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.reference.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.isin.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.rating.size

-- Display: Catalog Sent For Instruments Belonging To Mutual Funds Message
bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_sent_for_instruments_belonging_to_mutual_funds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Catalog Sent For Instruments Belonging To Mutual Funds Message
bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_sent_for_instruments_belonging_to_mutual_funds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of The Instrument: Int32
  index, number_of_the_instrument = bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_the_instrument.dissect(buffer, index, packet, parent)

  -- Origin: ALPHA
  index, origin = bmv_bmvmarketdata_snapshot_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Type Of Value: ALFA
  index, type_of_value = bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_value.dissect(buffer, index, packet, parent)

  -- Issuing Company: ALFA
  index, issuing_company = bmv_bmvmarketdata_snapshot_intra_v1_1.issuing_company.dissect(buffer, index, packet, parent)

  -- Series: ALPHA
  index, series = bmv_bmvmarketdata_snapshot_intra_v1_1.series.dissect(buffer, index, packet, parent)

  -- Sector: Int8
  index, sector = bmv_bmvmarketdata_snapshot_intra_v1_1.sector.dissect(buffer, index, packet, parent)

  -- Subsector: Int8
  index, subsector = bmv_bmvmarketdata_snapshot_intra_v1_1.subsector.dissect(buffer, index, packet, parent)

  -- Industry: Int8
  index, industry = bmv_bmvmarketdata_snapshot_intra_v1_1.industry.dissect(buffer, index, packet, parent)

  -- Sub Industry: Int8
  index, sub_industry = bmv_bmvmarketdata_snapshot_intra_v1_1.sub_industry.dissect(buffer, index, packet, parent)

  -- Trading Company: ALFA
  index, trading_company = bmv_bmvmarketdata_snapshot_intra_v1_1.trading_company.dissect(buffer, index, packet, parent)

  -- Reference Price: Precio(8)
  index, reference_price = bmv_bmvmarketdata_snapshot_intra_v1_1.reference_price.dissect(buffer, index, packet, parent)

  -- Reference Date: Timestamp(1)
  index, reference_date = bmv_bmvmarketdata_snapshot_intra_v1_1.reference_date.dissect(buffer, index, packet, parent)

  -- Reference: ALFA
  index, reference = bmv_bmvmarketdata_snapshot_intra_v1_1.reference.dissect(buffer, index, packet, parent)

  -- Isin: ALFA
  index, isin = bmv_bmvmarketdata_snapshot_intra_v1_1.isin.dissect(buffer, index, packet, parent)

  -- Rating: ALFA
  index, rating = bmv_bmvmarketdata_snapshot_intra_v1_1.rating.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Catalog Sent For Instruments Belonging To Mutual Funds Message
bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_sent_for_instruments_belonging_to_mutual_funds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.catalog_sent_for_instruments_belonging_to_mutual_funds_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_sent_for_instruments_belonging_to_mutual_funds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_sent_for_instruments_belonging_to_mutual_funds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_sent_for_instruments_belonging_to_mutual_funds_message.fields(buffer, offset, packet, parent)
  end
end

-- Catalogue Of Debt And Metals Instruments Message
bmv_bmvmarketdata_snapshot_intra_v1_1.catalogue_of_debt_and_metals_instruments_message = {}

-- Size: Catalogue Of Debt And Metals Instruments Message
bmv_bmvmarketdata_snapshot_intra_v1_1.catalogue_of_debt_and_metals_instruments_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_the_instrument.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_value.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.issuing_company.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.issuance.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.date_of_issuance.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.date_of_maturity.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.price_rate_of_reference.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.date_of_reference.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.reference.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.term_days.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.coupon_period.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.isin.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.market.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.current_nominal_value.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.original_nominal_value.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.outstanding_shares.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.amount_placed.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.trades_rate_price.size

-- Display: Catalogue Of Debt And Metals Instruments Message
bmv_bmvmarketdata_snapshot_intra_v1_1.catalogue_of_debt_and_metals_instruments_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Catalogue Of Debt And Metals Instruments Message
bmv_bmvmarketdata_snapshot_intra_v1_1.catalogue_of_debt_and_metals_instruments_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of The Instrument: Int32
  index, number_of_the_instrument = bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_the_instrument.dissect(buffer, index, packet, parent)

  -- Origin: ALPHA
  index, origin = bmv_bmvmarketdata_snapshot_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Type Of Value: ALFA
  index, type_of_value = bmv_bmvmarketdata_snapshot_intra_v1_1.type_of_value.dissect(buffer, index, packet, parent)

  -- Issuing Company: ALFA
  index, issuing_company = bmv_bmvmarketdata_snapshot_intra_v1_1.issuing_company.dissect(buffer, index, packet, parent)

  -- Issuance: ALFA
  index, issuance = bmv_bmvmarketdata_snapshot_intra_v1_1.issuance.dissect(buffer, index, packet, parent)

  -- Date Of Issuance: Timestamp(1)
  index, date_of_issuance = bmv_bmvmarketdata_snapshot_intra_v1_1.date_of_issuance.dissect(buffer, index, packet, parent)

  -- Date Of Maturity: Timestamp(1)
  index, date_of_maturity = bmv_bmvmarketdata_snapshot_intra_v1_1.date_of_maturity.dissect(buffer, index, packet, parent)

  -- Price Rate Of Reference: Precio(8)
  index, price_rate_of_reference = bmv_bmvmarketdata_snapshot_intra_v1_1.price_rate_of_reference.dissect(buffer, index, packet, parent)

  -- Date Of Reference: Timestamp(1)
  index, date_of_reference = bmv_bmvmarketdata_snapshot_intra_v1_1.date_of_reference.dissect(buffer, index, packet, parent)

  -- Reference: ALFA
  index, reference = bmv_bmvmarketdata_snapshot_intra_v1_1.reference.dissect(buffer, index, packet, parent)

  -- Term Days: Int16
  index, term_days = bmv_bmvmarketdata_snapshot_intra_v1_1.term_days.dissect(buffer, index, packet, parent)

  -- Coupon Period: Int16
  index, coupon_period = bmv_bmvmarketdata_snapshot_intra_v1_1.coupon_period.dissect(buffer, index, packet, parent)

  -- Isin: ALFA
  index, isin = bmv_bmvmarketdata_snapshot_intra_v1_1.isin.dissect(buffer, index, packet, parent)

  -- Market: ALPHA
  index, market = bmv_bmvmarketdata_snapshot_intra_v1_1.market.dissect(buffer, index, packet, parent)

  -- Current Nominal Value: Precio(8)
  index, current_nominal_value = bmv_bmvmarketdata_snapshot_intra_v1_1.current_nominal_value.dissect(buffer, index, packet, parent)

  -- Original Nominal Value: Precio(8)
  index, original_nominal_value = bmv_bmvmarketdata_snapshot_intra_v1_1.original_nominal_value.dissect(buffer, index, packet, parent)

  -- Outstanding Shares: Int64
  index, outstanding_shares = bmv_bmvmarketdata_snapshot_intra_v1_1.outstanding_shares.dissect(buffer, index, packet, parent)

  -- Amount Placed: Int64
  index, amount_placed = bmv_bmvmarketdata_snapshot_intra_v1_1.amount_placed.dissect(buffer, index, packet, parent)

  -- Trades Rate Price: ALFA
  index, trades_rate_price = bmv_bmvmarketdata_snapshot_intra_v1_1.trades_rate_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Catalogue Of Debt And Metals Instruments Message
bmv_bmvmarketdata_snapshot_intra_v1_1.catalogue_of_debt_and_metals_instruments_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.catalogue_of_debt_and_metals_instruments_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.catalogue_of_debt_and_metals_instruments_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.catalogue_of_debt_and_metals_instruments_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.catalogue_of_debt_and_metals_instruments_message.fields(buffer, offset, packet, parent)
  end
end

-- Existence Of Bids At Mid Price Message
bmv_bmvmarketdata_snapshot_intra_v1_1.existence_of_bids_at_mid_price_message = {}

-- Size: Existence Of Bids At Mid Price Message
bmv_bmvmarketdata_snapshot_intra_v1_1.existence_of_bids_at_mid_price_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.bids_existing.size

-- Display: Existence Of Bids At Mid Price Message
bmv_bmvmarketdata_snapshot_intra_v1_1.existence_of_bids_at_mid_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Existence Of Bids At Mid Price Message
bmv_bmvmarketdata_snapshot_intra_v1_1.existence_of_bids_at_mid_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Origin: ALPHA
  index, origin = bmv_bmvmarketdata_snapshot_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Bids Existing: ALFA
  index, bids_existing = bmv_bmvmarketdata_snapshot_intra_v1_1.bids_existing.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Existence Of Bids At Mid Price Message
bmv_bmvmarketdata_snapshot_intra_v1_1.existence_of_bids_at_mid_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.existence_of_bids_at_mid_price_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.existence_of_bids_at_mid_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.existence_of_bids_at_mid_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.existence_of_bids_at_mid_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Opening Of Continuous Auctions Message
bmv_bmvmarketdata_snapshot_intra_v1_1.opening_of_continuous_auctions_message = {}

-- Size: Opening Of Continuous Auctions Message
bmv_bmvmarketdata_snapshot_intra_v1_1.opening_of_continuous_auctions_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.auction_session_startup_time.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.auction_session_end_time.size

-- Display: Opening Of Continuous Auctions Message
bmv_bmvmarketdata_snapshot_intra_v1_1.opening_of_continuous_auctions_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Opening Of Continuous Auctions Message
bmv_bmvmarketdata_snapshot_intra_v1_1.opening_of_continuous_auctions_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Origin: ALPHA
  index, origin = bmv_bmvmarketdata_snapshot_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Auction Session Startup Time: Timestamp(2)
  index, auction_session_startup_time = bmv_bmvmarketdata_snapshot_intra_v1_1.auction_session_startup_time.dissect(buffer, index, packet, parent)

  -- Auction Session End Time: Timestamp(2)
  index, auction_session_end_time = bmv_bmvmarketdata_snapshot_intra_v1_1.auction_session_end_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Opening Of Continuous Auctions Message
bmv_bmvmarketdata_snapshot_intra_v1_1.opening_of_continuous_auctions_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.opening_of_continuous_auctions_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.opening_of_continuous_auctions_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.opening_of_continuous_auctions_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.opening_of_continuous_auctions_message.fields(buffer, offset, packet, parent)
  end
end

-- Mutual Funds Trades Message
bmv_bmvmarketdata_snapshot_intra_v1_1.mutual_funds_trades_message = {}

-- Size: Mutual Funds Trades Message
bmv_bmvmarketdata_snapshot_intra_v1_1.mutual_funds_trades_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.date_of_the_trade.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.price.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.book_value.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_sales_trades.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.sales_volume.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_purchase_trades.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.purchase_volume.size

-- Display: Mutual Funds Trades Message
bmv_bmvmarketdata_snapshot_intra_v1_1.mutual_funds_trades_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mutual Funds Trades Message
bmv_bmvmarketdata_snapshot_intra_v1_1.mutual_funds_trades_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Origin: ALPHA
  index, origin = bmv_bmvmarketdata_snapshot_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Date Of The Trade: Timestamp(1)
  index, date_of_the_trade = bmv_bmvmarketdata_snapshot_intra_v1_1.date_of_the_trade.dissect(buffer, index, packet, parent)

  -- Price: Price (8)
  index, price = bmv_bmvmarketdata_snapshot_intra_v1_1.price.dissect(buffer, index, packet, parent)

  -- Book Value: Price (8)
  index, book_value = bmv_bmvmarketdata_snapshot_intra_v1_1.book_value.dissect(buffer, index, packet, parent)

  -- Number Of Sales Trades: Int32
  index, number_of_sales_trades = bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_sales_trades.dissect(buffer, index, packet, parent)

  -- Sales Volume: Int64
  index, sales_volume = bmv_bmvmarketdata_snapshot_intra_v1_1.sales_volume.dissect(buffer, index, packet, parent)

  -- Number Of Purchase Trades: Int32
  index, number_of_purchase_trades = bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_purchase_trades.dissect(buffer, index, packet, parent)

  -- Purchase Volume: Int64
  index, purchase_volume = bmv_bmvmarketdata_snapshot_intra_v1_1.purchase_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mutual Funds Trades Message
bmv_bmvmarketdata_snapshot_intra_v1_1.mutual_funds_trades_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.mutual_funds_trades_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.mutual_funds_trades_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.mutual_funds_trades_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.mutual_funds_trades_message.fields(buffer, offset, packet, parent)
  end
end

-- Closing Price Origin Message
bmv_bmvmarketdata_snapshot_intra_v1_1.closing_price_origin_message = {}

-- Size: Closing Price Origin Message
bmv_bmvmarketdata_snapshot_intra_v1_1.closing_price_origin_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.origin_price.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.sending.size

-- Display: Closing Price Origin Message
bmv_bmvmarketdata_snapshot_intra_v1_1.closing_price_origin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Closing Price Origin Message
bmv_bmvmarketdata_snapshot_intra_v1_1.closing_price_origin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Origin Price: Price (8)
  index, origin_price = bmv_bmvmarketdata_snapshot_intra_v1_1.origin_price.dissect(buffer, index, packet, parent)

  -- Sending: ALFA
  index, sending = bmv_bmvmarketdata_snapshot_intra_v1_1.sending.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Closing Price Origin Message
bmv_bmvmarketdata_snapshot_intra_v1_1.closing_price_origin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.closing_price_origin_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.closing_price_origin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.closing_price_origin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.closing_price_origin_message.fields(buffer, offset, packet, parent)
  end
end

-- Capitalization Rules Message
bmv_bmvmarketdata_snapshot_intra_v1_1.capitalization_rules_message = {}

-- Size: Capitalization Rules Message
bmv_bmvmarketdata_snapshot_intra_v1_1.capitalization_rules_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.date_indicators.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.bursatility_indices.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.bursatility_indices_sign.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.beta_coefficient.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.beta_coefficient_sign.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.correlation_coefficient.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.correlation_coefficient_sign.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.delta_difference.size

-- Display: Capitalization Rules Message
bmv_bmvmarketdata_snapshot_intra_v1_1.capitalization_rules_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Capitalization Rules Message
bmv_bmvmarketdata_snapshot_intra_v1_1.capitalization_rules_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Date Indicators: Timestamp(1)
  index, date_indicators = bmv_bmvmarketdata_snapshot_intra_v1_1.date_indicators.dissect(buffer, index, packet, parent)

  -- Bursatility Indices: Price(4)
  index, bursatility_indices = bmv_bmvmarketdata_snapshot_intra_v1_1.bursatility_indices.dissect(buffer, index, packet, parent)

  -- Bursatility Indices Sign: ALPHA
  index, bursatility_indices_sign = bmv_bmvmarketdata_snapshot_intra_v1_1.bursatility_indices_sign.dissect(buffer, index, packet, parent)

  -- Beta Coefficient: Precio(8)
  index, beta_coefficient = bmv_bmvmarketdata_snapshot_intra_v1_1.beta_coefficient.dissect(buffer, index, packet, parent)

  -- Beta Coefficient Sign: ALPHA
  index, beta_coefficient_sign = bmv_bmvmarketdata_snapshot_intra_v1_1.beta_coefficient_sign.dissect(buffer, index, packet, parent)

  -- Correlation Coefficient: Precio(8)
  index, correlation_coefficient = bmv_bmvmarketdata_snapshot_intra_v1_1.correlation_coefficient.dissect(buffer, index, packet, parent)

  -- Correlation Coefficient Sign: ALPHA
  index, correlation_coefficient_sign = bmv_bmvmarketdata_snapshot_intra_v1_1.correlation_coefficient_sign.dissect(buffer, index, packet, parent)

  -- Delta Difference: Price(4)
  index, delta_difference = bmv_bmvmarketdata_snapshot_intra_v1_1.delta_difference.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Capitalization Rules Message
bmv_bmvmarketdata_snapshot_intra_v1_1.capitalization_rules_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.capitalization_rules_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.capitalization_rules_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.capitalization_rules_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.capitalization_rules_message.fields(buffer, offset, packet, parent)
  end
end

-- Benchmark Message
bmv_bmvmarketdata_snapshot_intra_v1_1.benchmark_message = {}

-- Size: Benchmark Message
bmv_bmvmarketdata_snapshot_intra_v1_1.benchmark_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.benchmark_name.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.benchmark_date.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.outstanding.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.integer_amount.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.decimal_amount.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.indices_precio_88.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.indices_24.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.rebalance.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.daily_performance.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.annual_performance.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.monthly_performance.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.last_12_months_performance.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1._24_hours_daily_performance.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1._24_hours_annual_performance.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1._24_hours_monthly_performance.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.last_12_months_24_hours_performance.size

-- Display: Benchmark Message
bmv_bmvmarketdata_snapshot_intra_v1_1.benchmark_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Benchmark Message
bmv_bmvmarketdata_snapshot_intra_v1_1.benchmark_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Benchmark Name: ALPHA
  index, benchmark_name = bmv_bmvmarketdata_snapshot_intra_v1_1.benchmark_name.dissect(buffer, index, packet, parent)

  -- Benchmark Date: Timestamp(1)
  index, benchmark_date = bmv_bmvmarketdata_snapshot_intra_v1_1.benchmark_date.dissect(buffer, index, packet, parent)

  -- Outstanding: Int64
  index, outstanding = bmv_bmvmarketdata_snapshot_intra_v1_1.outstanding.dissect(buffer, index, packet, parent)

  -- Integer Amount: Int64
  index, integer_amount = bmv_bmvmarketdata_snapshot_intra_v1_1.integer_amount.dissect(buffer, index, packet, parent)

  -- Decimal Amount: Int32
  index, decimal_amount = bmv_bmvmarketdata_snapshot_intra_v1_1.decimal_amount.dissect(buffer, index, packet, parent)

  -- Indices Precio 88: Precio(8)
  index, indices_precio_88 = bmv_bmvmarketdata_snapshot_intra_v1_1.indices_precio_88.dissect(buffer, index, packet, parent)

  -- Indices 24: Precio(8)
  index, indices_24 = bmv_bmvmarketdata_snapshot_intra_v1_1.indices_24.dissect(buffer, index, packet, parent)

  -- Rebalance: ALPHA
  index, rebalance = bmv_bmvmarketdata_snapshot_intra_v1_1.rebalance.dissect(buffer, index, packet, parent)

  -- Daily Performance: Precio(8)
  index, daily_performance = bmv_bmvmarketdata_snapshot_intra_v1_1.daily_performance.dissect(buffer, index, packet, parent)

  -- Annual Performance: Precio(8)
  index, annual_performance = bmv_bmvmarketdata_snapshot_intra_v1_1.annual_performance.dissect(buffer, index, packet, parent)

  -- Monthly Performance: Precio(8)
  index, monthly_performance = bmv_bmvmarketdata_snapshot_intra_v1_1.monthly_performance.dissect(buffer, index, packet, parent)

  -- Last 12 Months Performance: Precio(8)
  index, last_12_months_performance = bmv_bmvmarketdata_snapshot_intra_v1_1.last_12_months_performance.dissect(buffer, index, packet, parent)

  -- 24 Hours Daily Performance: Precio(8)
  index, _24_hours_daily_performance = bmv_bmvmarketdata_snapshot_intra_v1_1._24_hours_daily_performance.dissect(buffer, index, packet, parent)

  -- 24 Hours Annual Performance: Precio(8)
  index, _24_hours_annual_performance = bmv_bmvmarketdata_snapshot_intra_v1_1._24_hours_annual_performance.dissect(buffer, index, packet, parent)

  -- 24 Hours Monthly Performance: Precio(8)
  index, _24_hours_monthly_performance = bmv_bmvmarketdata_snapshot_intra_v1_1._24_hours_monthly_performance.dissect(buffer, index, packet, parent)

  -- Last 12 Months 24 Hours Performance: Precio(8)
  index, last_12_months_24_hours_performance = bmv_bmvmarketdata_snapshot_intra_v1_1.last_12_months_24_hours_performance.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Benchmark Message
bmv_bmvmarketdata_snapshot_intra_v1_1.benchmark_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.benchmark_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.benchmark_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.benchmark_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.benchmark_message.fields(buffer, offset, packet, parent)
  end
end

-- Capital Market Multiples Message
bmv_bmvmarketdata_snapshot_intra_v1_1.capital_market_multiples_message = {}

-- Size: Capital Market Multiples Message
bmv_bmvmarketdata_snapshot_intra_v1_1.capital_market_multiples_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_id.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.multiple_type.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.registry_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.sector.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.subsector.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.business_line.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.sub_line.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.pflepa_multiple.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.pfepa_multiple.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.ve_uaiida_multiple.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.p_u.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.p_vl.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_unoc.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_unoc.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_ue.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_ue.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_ve_uaiida.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_ve_uaiida.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_u.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_u.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_vl.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_vl.size

-- Display: Capital Market Multiples Message
bmv_bmvmarketdata_snapshot_intra_v1_1.capital_market_multiples_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Capital Market Multiples Message
bmv_bmvmarketdata_snapshot_intra_v1_1.capital_market_multiples_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: Int32
  index, instrument_id = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Multiple Type: ALPHA
  index, multiple_type = bmv_bmvmarketdata_snapshot_intra_v1_1.multiple_type.dissect(buffer, index, packet, parent)

  -- Registry Number: ALPHA
  index, registry_number = bmv_bmvmarketdata_snapshot_intra_v1_1.registry_number.dissect(buffer, index, packet, parent)

  -- Sector: Int8
  index, sector = bmv_bmvmarketdata_snapshot_intra_v1_1.sector.dissect(buffer, index, packet, parent)

  -- Subsector: Int8
  index, subsector = bmv_bmvmarketdata_snapshot_intra_v1_1.subsector.dissect(buffer, index, packet, parent)

  -- Business Line: Int8
  index, business_line = bmv_bmvmarketdata_snapshot_intra_v1_1.business_line.dissect(buffer, index, packet, parent)

  -- Sub Line: Int8
  index, sub_line = bmv_bmvmarketdata_snapshot_intra_v1_1.sub_line.dissect(buffer, index, packet, parent)

  -- Pflepa Multiple: Precio(8)
  index, pflepa_multiple = bmv_bmvmarketdata_snapshot_intra_v1_1.pflepa_multiple.dissect(buffer, index, packet, parent)

  -- Pfepa Multiple: Precio(8)
  index, pfepa_multiple = bmv_bmvmarketdata_snapshot_intra_v1_1.pfepa_multiple.dissect(buffer, index, packet, parent)

  -- Ve Uaiida Multiple: Precio(8)
  index, ve_uaiida_multiple = bmv_bmvmarketdata_snapshot_intra_v1_1.ve_uaiida_multiple.dissect(buffer, index, packet, parent)

  -- P U: Precio(8)
  index, p_u = bmv_bmvmarketdata_snapshot_intra_v1_1.p_u.dissect(buffer, index, packet, parent)

  -- P Vl: Precio(8)
  index, p_vl = bmv_bmvmarketdata_snapshot_intra_v1_1.p_vl.dissect(buffer, index, packet, parent)

  -- F 1 P Unoc: Precio(8)
  index, f_1_p_unoc = bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_unoc.dissect(buffer, index, packet, parent)

  -- F 2 P Unoc: Precio(8)
  index, f_2_p_unoc = bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_unoc.dissect(buffer, index, packet, parent)

  -- F 1 P Ue: Precio(8)
  index, f_1_p_ue = bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_ue.dissect(buffer, index, packet, parent)

  -- F 2 P Ue: Precio(8)
  index, f_2_p_ue = bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_ue.dissect(buffer, index, packet, parent)

  -- F 1 Ve Uaiida: Precio(8)
  index, f_1_ve_uaiida = bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_ve_uaiida.dissect(buffer, index, packet, parent)

  -- F 2 Ve Uaiida: Precio(8)
  index, f_2_ve_uaiida = bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_ve_uaiida.dissect(buffer, index, packet, parent)

  -- F 1 P U: Precio(8)
  index, f_1_p_u = bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_u.dissect(buffer, index, packet, parent)

  -- F 2 P U: Precio(8)
  index, f_2_p_u = bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_u.dissect(buffer, index, packet, parent)

  -- F 1 P Vl: Precio(8)
  index, f_1_p_vl = bmv_bmvmarketdata_snapshot_intra_v1_1.f_1_p_vl.dissect(buffer, index, packet, parent)

  -- F 2 P Vl: Precio(8)
  index, f_2_p_vl = bmv_bmvmarketdata_snapshot_intra_v1_1.f_2_p_vl.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Capital Market Multiples Message
bmv_bmvmarketdata_snapshot_intra_v1_1.capital_market_multiples_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.capital_market_multiples_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.capital_market_multiples_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.capital_market_multiples_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.capital_market_multiples_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Sales Balances Per Instrument Message
bmv_bmvmarketdata_snapshot_intra_v1_1.short_sales_balances_per_instrument_message = {}

-- Size: Short Sales Balances Per Instrument Message
bmv_bmvmarketdata_snapshot_intra_v1_1.short_sales_balances_per_instrument_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.date.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.previous_balance.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.amount_traded.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.buybacks.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.current_balance.size

-- Display: Short Sales Balances Per Instrument Message
bmv_bmvmarketdata_snapshot_intra_v1_1.short_sales_balances_per_instrument_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Sales Balances Per Instrument Message
bmv_bmvmarketdata_snapshot_intra_v1_1.short_sales_balances_per_instrument_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Date: Timestamp(1)
  index, date = bmv_bmvmarketdata_snapshot_intra_v1_1.date.dissect(buffer, index, packet, parent)

  -- Previous Balance: Int64
  index, previous_balance = bmv_bmvmarketdata_snapshot_intra_v1_1.previous_balance.dissect(buffer, index, packet, parent)

  -- Amount Traded: Int64
  index, amount_traded = bmv_bmvmarketdata_snapshot_intra_v1_1.amount_traded.dissect(buffer, index, packet, parent)

  -- Buybacks: Int64
  index, buybacks = bmv_bmvmarketdata_snapshot_intra_v1_1.buybacks.dissect(buffer, index, packet, parent)

  -- Current Balance: Int64
  index, current_balance = bmv_bmvmarketdata_snapshot_intra_v1_1.current_balance.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Sales Balances Per Instrument Message
bmv_bmvmarketdata_snapshot_intra_v1_1.short_sales_balances_per_instrument_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.short_sales_balances_per_instrument_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.short_sales_balances_per_instrument_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.short_sales_balances_per_instrument_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.short_sales_balances_per_instrument_message.fields(buffer, offset, packet, parent)
  end
end

-- Dollar Buy Sell Message
bmv_bmvmarketdata_snapshot_intra_v1_1.dollar_buy_sell_message = {}

-- Size: Dollar Buy Sell Message
bmv_bmvmarketdata_snapshot_intra_v1_1.dollar_buy_sell_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.posture_date.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.currency.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.dollar_side.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.buy_precio_88.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.sell_precio_88.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.last_deal.size

-- Display: Dollar Buy Sell Message
bmv_bmvmarketdata_snapshot_intra_v1_1.dollar_buy_sell_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dollar Buy Sell Message
bmv_bmvmarketdata_snapshot_intra_v1_1.dollar_buy_sell_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Posture Date: Timestamp(2)
  index, posture_date = bmv_bmvmarketdata_snapshot_intra_v1_1.posture_date.dissect(buffer, index, packet, parent)

  -- Currency: ALPHA
  index, currency = bmv_bmvmarketdata_snapshot_intra_v1_1.currency.dissect(buffer, index, packet, parent)

  -- Dollar Side: ALPHA
  index, dollar_side = bmv_bmvmarketdata_snapshot_intra_v1_1.dollar_side.dissect(buffer, index, packet, parent)

  -- Buy Precio 88: Precio(8)
  index, buy_precio_88 = bmv_bmvmarketdata_snapshot_intra_v1_1.buy_precio_88.dissect(buffer, index, packet, parent)

  -- Sell Precio 88: Precio(8)
  index, sell_precio_88 = bmv_bmvmarketdata_snapshot_intra_v1_1.sell_precio_88.dissect(buffer, index, packet, parent)

  -- Last Deal: Precio(8)
  index, last_deal = bmv_bmvmarketdata_snapshot_intra_v1_1.last_deal.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dollar Buy Sell Message
bmv_bmvmarketdata_snapshot_intra_v1_1.dollar_buy_sell_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.dollar_buy_sell_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.dollar_buy_sell_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.dollar_buy_sell_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.dollar_buy_sell_message.fields(buffer, offset, packet, parent)
  end
end

-- Inav Message
bmv_bmvmarketdata_snapshot_intra_v1_1.inav_message = {}

-- Size: Inav Message
bmv_bmvmarketdata_snapshot_intra_v1_1.inav_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.trac_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.theoretical_current_price.size

-- Display: Inav Message
bmv_bmvmarketdata_snapshot_intra_v1_1.inav_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inav Message
bmv_bmvmarketdata_snapshot_intra_v1_1.inav_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trac Number: Int32
  index, trac_number = bmv_bmvmarketdata_snapshot_intra_v1_1.trac_number.dissect(buffer, index, packet, parent)

  -- Theoretical Current Price: Price (8)
  index, theoretical_current_price = bmv_bmvmarketdata_snapshot_intra_v1_1.theoretical_current_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Inav Message
bmv_bmvmarketdata_snapshot_intra_v1_1.inav_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.inav_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.inav_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.inav_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.inav_message.fields(buffer, offset, packet, parent)
  end
end

-- Indices Components Message
bmv_bmvmarketdata_snapshot_intra_v1_1.indices_components_message = {}

-- Size: Indices Components Message
bmv_bmvmarketdata_snapshot_intra_v1_1.indices_components_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.date.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.component.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.sector.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.type.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.issuer.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.series.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.indices_stocks.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.last_price.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.closing_price.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.influence.size

-- Display: Indices Components Message
bmv_bmvmarketdata_snapshot_intra_v1_1.indices_components_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indices Components Message
bmv_bmvmarketdata_snapshot_intra_v1_1.indices_components_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Date: Timestamp(1)
  index, date = bmv_bmvmarketdata_snapshot_intra_v1_1.date.dissect(buffer, index, packet, parent)

  -- Component: ALPHA
  index, component = bmv_bmvmarketdata_snapshot_intra_v1_1.component.dissect(buffer, index, packet, parent)

  -- Sector: Int8
  index, sector = bmv_bmvmarketdata_snapshot_intra_v1_1.sector.dissect(buffer, index, packet, parent)

  -- Type: ALPHA
  index, type = bmv_bmvmarketdata_snapshot_intra_v1_1.type.dissect(buffer, index, packet, parent)

  -- Issuer: ALPHA
  index, issuer = bmv_bmvmarketdata_snapshot_intra_v1_1.issuer.dissect(buffer, index, packet, parent)

  -- Series: ALPHA
  index, series = bmv_bmvmarketdata_snapshot_intra_v1_1.series.dissect(buffer, index, packet, parent)

  -- Indices Stocks: Int64
  index, indices_stocks = bmv_bmvmarketdata_snapshot_intra_v1_1.indices_stocks.dissect(buffer, index, packet, parent)

  -- Last Price: Price (8)
  index, last_price = bmv_bmvmarketdata_snapshot_intra_v1_1.last_price.dissect(buffer, index, packet, parent)

  -- Closing Price: Price (8)
  index, closing_price = bmv_bmvmarketdata_snapshot_intra_v1_1.closing_price.dissect(buffer, index, packet, parent)

  -- Influence: Price (8)
  index, influence = bmv_bmvmarketdata_snapshot_intra_v1_1.influence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Indices Components Message
bmv_bmvmarketdata_snapshot_intra_v1_1.indices_components_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.indices_components_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.indices_components_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.indices_components_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.indices_components_message.fields(buffer, offset, packet, parent)
  end
end

-- General Indices Message
bmv_bmvmarketdata_snapshot_intra_v1_1.general_indices_message = {}

-- Size: General Indices Message
bmv_bmvmarketdata_snapshot_intra_v1_1.general_indices_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.component.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.sector.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.indices_hour.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_648.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.indices_price_44.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.variation.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.percentage.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.trend.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.indices_status.size

-- Display: General Indices Message
bmv_bmvmarketdata_snapshot_intra_v1_1.general_indices_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: General Indices Message
bmv_bmvmarketdata_snapshot_intra_v1_1.general_indices_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Component: ALPHA
  index, component = bmv_bmvmarketdata_snapshot_intra_v1_1.component.dissect(buffer, index, packet, parent)

  -- Sector: Int8
  index, sector = bmv_bmvmarketdata_snapshot_intra_v1_1.sector.dissect(buffer, index, packet, parent)

  -- Indices Hour: Timestamp(2)
  index, indices_hour = bmv_bmvmarketdata_snapshot_intra_v1_1.indices_hour.dissect(buffer, index, packet, parent)

  -- Volume Int 648: Int64
  index, volume_int_648 = bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_648.dissect(buffer, index, packet, parent)

  -- Indices Price 44: Price (4)
  index, indices_price_44 = bmv_bmvmarketdata_snapshot_intra_v1_1.indices_price_44.dissect(buffer, index, packet, parent)

  -- Variation: Price (4)
  index, variation = bmv_bmvmarketdata_snapshot_intra_v1_1.variation.dissect(buffer, index, packet, parent)

  -- Percentage: Price (4)
  index, percentage = bmv_bmvmarketdata_snapshot_intra_v1_1.percentage.dissect(buffer, index, packet, parent)

  -- Trend: ALPHA
  index, trend = bmv_bmvmarketdata_snapshot_intra_v1_1.trend.dissect(buffer, index, packet, parent)

  -- Indices Status: ALPHA
  index, indices_status = bmv_bmvmarketdata_snapshot_intra_v1_1.indices_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: General Indices Message
bmv_bmvmarketdata_snapshot_intra_v1_1.general_indices_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.general_indices_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.general_indices_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.general_indices_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.general_indices_message.fields(buffer, offset, packet, parent)
  end
end

-- Statistics Of Instruments Message
bmv_bmvmarketdata_snapshot_intra_v1_1.statistics_of_instruments_message = {}

-- Size: Statistics Of Instruments Message
bmv_bmvmarketdata_snapshot_intra_v1_1.statistics_of_instruments_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.previous_settlement_price.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.opening_price.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.max_price_of_the_day.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.lower_price_of_the_day.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.last_price_of_the_day.size

-- Display: Statistics Of Instruments Message
bmv_bmvmarketdata_snapshot_intra_v1_1.statistics_of_instruments_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics Of Instruments Message
bmv_bmvmarketdata_snapshot_intra_v1_1.statistics_of_instruments_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Previous Settlement Price: Price (8)
  index, previous_settlement_price = bmv_bmvmarketdata_snapshot_intra_v1_1.previous_settlement_price.dissect(buffer, index, packet, parent)

  -- Opening Price: Price (8)
  index, opening_price = bmv_bmvmarketdata_snapshot_intra_v1_1.opening_price.dissect(buffer, index, packet, parent)

  -- Max Price Of The Day: Price (8)
  index, max_price_of_the_day = bmv_bmvmarketdata_snapshot_intra_v1_1.max_price_of_the_day.dissect(buffer, index, packet, parent)

  -- Lower Price Of The Day: Price (8)
  index, lower_price_of_the_day = bmv_bmvmarketdata_snapshot_intra_v1_1.lower_price_of_the_day.dissect(buffer, index, packet, parent)

  -- Last Price Of The Day: Price (8)
  index, last_price_of_the_day = bmv_bmvmarketdata_snapshot_intra_v1_1.last_price_of_the_day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics Of Instruments Message
bmv_bmvmarketdata_snapshot_intra_v1_1.statistics_of_instruments_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.statistics_of_instruments_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.statistics_of_instruments_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.statistics_of_instruments_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.statistics_of_instruments_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Market Trades Message
bmv_bmvmarketdata_snapshot_intra_v1_1.derivatives_market_trades_message = {}

-- Size: Derivatives Market Trades Message
bmv_bmvmarketdata_snapshot_intra_v1_1.derivatives_market_trades_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.trade_time.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_324.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.price_rate.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.concertation_type.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.trade_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.operation_type.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.amount.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.parent_trade_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.leg_type.size

-- Display: Derivatives Market Trades Message
bmv_bmvmarketdata_snapshot_intra_v1_1.derivatives_market_trades_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Market Trades Message
bmv_bmvmarketdata_snapshot_intra_v1_1.derivatives_market_trades_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Trade Time: Timestamp(2)
  index, trade_time = bmv_bmvmarketdata_snapshot_intra_v1_1.trade_time.dissect(buffer, index, packet, parent)

  -- Volume Int 324: Int32
  index, volume_int_324 = bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_324.dissect(buffer, index, packet, parent)

  -- Price Rate: Price (8)
  index, price_rate = bmv_bmvmarketdata_snapshot_intra_v1_1.price_rate.dissect(buffer, index, packet, parent)

  -- Concertation Type: ALPHA
  index, concertation_type = bmv_bmvmarketdata_snapshot_intra_v1_1.concertation_type.dissect(buffer, index, packet, parent)

  -- Trade Number: Int32
  index, trade_number = bmv_bmvmarketdata_snapshot_intra_v1_1.trade_number.dissect(buffer, index, packet, parent)

  -- Operation Type: ALPHA
  index, operation_type = bmv_bmvmarketdata_snapshot_intra_v1_1.operation_type.dissect(buffer, index, packet, parent)

  -- Amount: Precio(8)
  index, amount = bmv_bmvmarketdata_snapshot_intra_v1_1.amount.dissect(buffer, index, packet, parent)

  -- Parent Trade Number: Int32
  index, parent_trade_number = bmv_bmvmarketdata_snapshot_intra_v1_1.parent_trade_number.dissect(buffer, index, packet, parent)

  -- Leg Type: ALPHA
  index, leg_type = bmv_bmvmarketdata_snapshot_intra_v1_1.leg_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Market Trades Message
bmv_bmvmarketdata_snapshot_intra_v1_1.derivatives_market_trades_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.derivatives_market_trades_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.derivatives_market_trades_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.derivatives_market_trades_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.derivatives_market_trades_message.fields(buffer, offset, packet, parent)
  end
end

-- Open Interest Message
bmv_bmvmarketdata_snapshot_intra_v1_1.open_interest_message = {}

-- Size: Open Interest Message
bmv_bmvmarketdata_snapshot_intra_v1_1.open_interest_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.open_interest.size

-- Display: Open Interest Message
bmv_bmvmarketdata_snapshot_intra_v1_1.open_interest_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Interest Message
bmv_bmvmarketdata_snapshot_intra_v1_1.open_interest_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Open Interest: Price (4)
  index, open_interest = bmv_bmvmarketdata_snapshot_intra_v1_1.open_interest.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Interest Message
bmv_bmvmarketdata_snapshot_intra_v1_1.open_interest_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.open_interest_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.open_interest_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.open_interest_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.open_interest_message.fields(buffer, offset, packet, parent)
  end
end

-- Public Offerings Message
bmv_bmvmarketdata_snapshot_intra_v1_1.public_offerings_message = {}

-- Size: Public Offerings Message
bmv_bmvmarketdata_snapshot_intra_v1_1.public_offerings_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_648.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.discount_rate_or_price.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.rate_of_return.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.term_days.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.currency_type.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.settlement.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.buy_alpha_5.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.sell_alpha_5.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.placement_date.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.issue_date.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.maturity_date.size

-- Display: Public Offerings Message
bmv_bmvmarketdata_snapshot_intra_v1_1.public_offerings_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Public Offerings Message
bmv_bmvmarketdata_snapshot_intra_v1_1.public_offerings_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Number: Int32
  index, number = bmv_bmvmarketdata_snapshot_intra_v1_1.number.dissect(buffer, index, packet, parent)

  -- Volume Int 648: Int64
  index, volume_int_648 = bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_648.dissect(buffer, index, packet, parent)

  -- Discount Rate Or Price: Price (8)
  index, discount_rate_or_price = bmv_bmvmarketdata_snapshot_intra_v1_1.discount_rate_or_price.dissect(buffer, index, packet, parent)

  -- Rate Of Return: Price (4)
  index, rate_of_return = bmv_bmvmarketdata_snapshot_intra_v1_1.rate_of_return.dissect(buffer, index, packet, parent)

  -- Term Days: Int16
  index, term_days = bmv_bmvmarketdata_snapshot_intra_v1_1.term_days.dissect(buffer, index, packet, parent)

  -- Currency Type: ALPHA
  index, currency_type = bmv_bmvmarketdata_snapshot_intra_v1_1.currency_type.dissect(buffer, index, packet, parent)

  -- Settlement: ALPHA
  index, settlement = bmv_bmvmarketdata_snapshot_intra_v1_1.settlement.dissect(buffer, index, packet, parent)

  -- Buy Alpha 5: ALPHA
  index, buy_alpha_5 = bmv_bmvmarketdata_snapshot_intra_v1_1.buy_alpha_5.dissect(buffer, index, packet, parent)

  -- Sell Alpha 5: ALPHA
  index, sell_alpha_5 = bmv_bmvmarketdata_snapshot_intra_v1_1.sell_alpha_5.dissect(buffer, index, packet, parent)

  -- Placement Date: Timestamp(1)
  index, placement_date = bmv_bmvmarketdata_snapshot_intra_v1_1.placement_date.dissect(buffer, index, packet, parent)

  -- Issue Date: Timestamp(1)
  index, issue_date = bmv_bmvmarketdata_snapshot_intra_v1_1.issue_date.dissect(buffer, index, packet, parent)

  -- Maturity Date: Timestamp(1)
  index, maturity_date = bmv_bmvmarketdata_snapshot_intra_v1_1.maturity_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Public Offerings Message
bmv_bmvmarketdata_snapshot_intra_v1_1.public_offerings_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.public_offerings_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.public_offerings_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.public_offerings_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.public_offerings_message.fields(buffer, offset, packet, parent)
  end
end

-- Best Offer Message
bmv_bmvmarketdata_snapshot_intra_v1_1.best_offer_message = {}

-- Size: Best Offer Message
bmv_bmvmarketdata_snapshot_intra_v1_1.best_offer_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_324.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.price_rate.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.offer_direction.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.operation_type.size

-- Display: Best Offer Message
bmv_bmvmarketdata_snapshot_intra_v1_1.best_offer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Offer Message
bmv_bmvmarketdata_snapshot_intra_v1_1.best_offer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Volume Int 324: Int32
  index, volume_int_324 = bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_324.dissect(buffer, index, packet, parent)

  -- Price Rate: Price (8)
  index, price_rate = bmv_bmvmarketdata_snapshot_intra_v1_1.price_rate.dissect(buffer, index, packet, parent)

  -- Offer Direction: ALPHA
  index, offer_direction = bmv_bmvmarketdata_snapshot_intra_v1_1.offer_direction.dissect(buffer, index, packet, parent)

  -- Operation Type: ALPHA
  index, operation_type = bmv_bmvmarketdata_snapshot_intra_v1_1.operation_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Offer Message
bmv_bmvmarketdata_snapshot_intra_v1_1.best_offer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.best_offer_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.best_offer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.best_offer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.best_offer_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Level
bmv_bmvmarketdata_snapshot_intra_v1_1.price_level = {}

-- Size: Price Level
bmv_bmvmarketdata_snapshot_intra_v1_1.price_level.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.price.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_orders.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_324.size

-- Display: Price Level
bmv_bmvmarketdata_snapshot_intra_v1_1.price_level.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Level
bmv_bmvmarketdata_snapshot_intra_v1_1.price_level.fields = function(buffer, offset, packet, parent, price_level_index)
  local index = offset

  -- Implicit Price Level Index
  if price_level_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.price_level_index, price_level_index)
    iteration:set_generated()
  end

  -- Price: Price (8)
  index, price = bmv_bmvmarketdata_snapshot_intra_v1_1.price.dissect(buffer, index, packet, parent)

  -- Number Of Orders: Int16
  index, number_of_orders = bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_orders.dissect(buffer, index, packet, parent)

  -- Volume Int 324: Int32
  index, volume_int_324 = bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_324.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Level
bmv_bmvmarketdata_snapshot_intra_v1_1.price_level.dissect = function(buffer, offset, packet, parent, price_level_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.price_level, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.price_level.fields(buffer, offset, packet, parent, price_level_index)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.price_level.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.price_level.fields(buffer, offset, packet, parent, price_level_index)
  end
end

-- Depth Message
bmv_bmvmarketdata_snapshot_intra_v1_1.depth_message = {}

-- Calculate size of: Depth Message
bmv_bmvmarketdata_snapshot_intra_v1_1.depth_message.size = function(buffer, offset)
  local index = 0

  index = index + bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size

  index = index + bmv_bmvmarketdata_snapshot_intra_v1_1.side.size

  index = index + bmv_bmvmarketdata_snapshot_intra_v1_1.purchase_or_sale_levels.size

  -- Calculate field size from count
  local price_level_count = buffer(offset + index - 1, 1):int()
  index = index + price_level_count * 14

  return index
end

-- Display: Depth Message
bmv_bmvmarketdata_snapshot_intra_v1_1.depth_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Depth Message
bmv_bmvmarketdata_snapshot_intra_v1_1.depth_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Side: Int8
  index, side = bmv_bmvmarketdata_snapshot_intra_v1_1.side.dissect(buffer, index, packet, parent)

  -- Purchase Or Sale Levels: Int8
  index, purchase_or_sale_levels = bmv_bmvmarketdata_snapshot_intra_v1_1.purchase_or_sale_levels.dissect(buffer, index, packet, parent)

  -- Repeating: Price Level
  for price_level_index = 1, purchase_or_sale_levels do
    index, price_level = bmv_bmvmarketdata_snapshot_intra_v1_1.price_level.dissect(buffer, index, packet, parent, price_level_index)
  end

  return index
end

-- Dissect: Depth Message
bmv_bmvmarketdata_snapshot_intra_v1_1.depth_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.depth_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.depth_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.depth_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.depth_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Change Message
bmv_bmvmarketdata_snapshot_intra_v1_1.order_change_message = {}

-- Size: Order Change Message
bmv_bmvmarketdata_snapshot_intra_v1_1.order_change_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.original_date.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.original_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.new_date.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.new_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.direction.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_324.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.price.size

-- Display: Order Change Message
bmv_bmvmarketdata_snapshot_intra_v1_1.order_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Change Message
bmv_bmvmarketdata_snapshot_intra_v1_1.order_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Original Date: Timestamp(2)
  index, original_date = bmv_bmvmarketdata_snapshot_intra_v1_1.original_date.dissect(buffer, index, packet, parent)

  -- Original Number: Int32
  index, original_number = bmv_bmvmarketdata_snapshot_intra_v1_1.original_number.dissect(buffer, index, packet, parent)

  -- New Date: Timestamp(2)
  index, new_date = bmv_bmvmarketdata_snapshot_intra_v1_1.new_date.dissect(buffer, index, packet, parent)

  -- New Number: Int32
  index, new_number = bmv_bmvmarketdata_snapshot_intra_v1_1.new_number.dissect(buffer, index, packet, parent)

  -- Direction: ALPHA
  index, direction = bmv_bmvmarketdata_snapshot_intra_v1_1.direction.dissect(buffer, index, packet, parent)

  -- Volume Int 324: Int32
  index, volume_int_324 = bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_324.dissect(buffer, index, packet, parent)

  -- Price: Price (8)
  index, price = bmv_bmvmarketdata_snapshot_intra_v1_1.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Change Message
bmv_bmvmarketdata_snapshot_intra_v1_1.order_change_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.order_change_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.order_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.order_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.order_change_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancellation Message
bmv_bmvmarketdata_snapshot_intra_v1_1.order_cancellation_message = {}

-- Size: Order Cancellation Message
bmv_bmvmarketdata_snapshot_intra_v1_1.order_cancellation_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.date.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.number.size

-- Display: Order Cancellation Message
bmv_bmvmarketdata_snapshot_intra_v1_1.order_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancellation Message
bmv_bmvmarketdata_snapshot_intra_v1_1.order_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Date: Timestamp(1)
  index, date = bmv_bmvmarketdata_snapshot_intra_v1_1.date.dissect(buffer, index, packet, parent)

  -- Number: Int32
  index, number = bmv_bmvmarketdata_snapshot_intra_v1_1.number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancellation Message
bmv_bmvmarketdata_snapshot_intra_v1_1.order_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.order_cancellation_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.order_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.order_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.order_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Of Orders Message
bmv_bmvmarketdata_snapshot_intra_v1_1.execution_of_orders_message = {}

-- Size: Execution Of Orders Message
bmv_bmvmarketdata_snapshot_intra_v1_1.execution_of_orders_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.date.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_324.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.trade_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.execution_price.size

-- Display: Execution Of Orders Message
bmv_bmvmarketdata_snapshot_intra_v1_1.execution_of_orders_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Of Orders Message
bmv_bmvmarketdata_snapshot_intra_v1_1.execution_of_orders_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Date: Timestamp(1)
  index, date = bmv_bmvmarketdata_snapshot_intra_v1_1.date.dissect(buffer, index, packet, parent)

  -- Number: Int32
  index, number = bmv_bmvmarketdata_snapshot_intra_v1_1.number.dissect(buffer, index, packet, parent)

  -- Volume Int 324: Int32
  index, volume_int_324 = bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_324.dissect(buffer, index, packet, parent)

  -- Trade Number: Int32
  index, trade_number = bmv_bmvmarketdata_snapshot_intra_v1_1.trade_number.dissect(buffer, index, packet, parent)

  -- Execution Price: Precio(8)
  index, execution_price = bmv_bmvmarketdata_snapshot_intra_v1_1.execution_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Of Orders Message
bmv_bmvmarketdata_snapshot_intra_v1_1.execution_of_orders_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.execution_of_orders_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.execution_of_orders_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.execution_of_orders_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.execution_of_orders_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Addition Message
bmv_bmvmarketdata_snapshot_intra_v1_1.order_addition_message = {}

-- Size: Order Addition Message
bmv_bmvmarketdata_snapshot_intra_v1_1.order_addition_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.date_and_time.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.direction.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_324.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.price.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.participant.size

-- Display: Order Addition Message
bmv_bmvmarketdata_snapshot_intra_v1_1.order_addition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Addition Message
bmv_bmvmarketdata_snapshot_intra_v1_1.order_addition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Date And Time: Timestamp(2)
  index, date_and_time = bmv_bmvmarketdata_snapshot_intra_v1_1.date_and_time.dissect(buffer, index, packet, parent)

  -- Number: Int32
  index, number = bmv_bmvmarketdata_snapshot_intra_v1_1.number.dissect(buffer, index, packet, parent)

  -- Direction: ALPHA
  index, direction = bmv_bmvmarketdata_snapshot_intra_v1_1.direction.dissect(buffer, index, packet, parent)

  -- Volume Int 324: Int32
  index, volume_int_324 = bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_324.dissect(buffer, index, packet, parent)

  -- Price: Price (8)
  index, price = bmv_bmvmarketdata_snapshot_intra_v1_1.price.dissect(buffer, index, packet, parent)

  -- Participant: ALPHA
  index, participant = bmv_bmvmarketdata_snapshot_intra_v1_1.participant.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Addition Message
bmv_bmvmarketdata_snapshot_intra_v1_1.order_addition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.order_addition_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.order_addition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.order_addition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.order_addition_message.fields(buffer, offset, packet, parent)
  end
end

-- Virtual Trades Message
bmv_bmvmarketdata_snapshot_intra_v1_1.virtual_trades_message = {}

-- Size: Virtual Trades Message
bmv_bmvmarketdata_snapshot_intra_v1_1.virtual_trades_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.virtual_trades_status.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.operation_type.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_324.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.concertation.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.buy_alpha_5.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.sell_alpha_5.size

-- Display: Virtual Trades Message
bmv_bmvmarketdata_snapshot_intra_v1_1.virtual_trades_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Virtual Trades Message
bmv_bmvmarketdata_snapshot_intra_v1_1.virtual_trades_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Virtual Trades Status: ALPHA
  index, virtual_trades_status = bmv_bmvmarketdata_snapshot_intra_v1_1.virtual_trades_status.dissect(buffer, index, packet, parent)

  -- Operation Type: ALPHA
  index, operation_type = bmv_bmvmarketdata_snapshot_intra_v1_1.operation_type.dissect(buffer, index, packet, parent)

  -- Number: Int32
  index, number = bmv_bmvmarketdata_snapshot_intra_v1_1.number.dissect(buffer, index, packet, parent)

  -- Volume Int 324: Int32
  index, volume_int_324 = bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_324.dissect(buffer, index, packet, parent)

  -- Concertation: ALPHA
  index, concertation = bmv_bmvmarketdata_snapshot_intra_v1_1.concertation.dissect(buffer, index, packet, parent)

  -- Buy Alpha 5: ALPHA
  index, buy_alpha_5 = bmv_bmvmarketdata_snapshot_intra_v1_1.buy_alpha_5.dissect(buffer, index, packet, parent)

  -- Sell Alpha 5: ALPHA
  index, sell_alpha_5 = bmv_bmvmarketdata_snapshot_intra_v1_1.sell_alpha_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Virtual Trades Message
bmv_bmvmarketdata_snapshot_intra_v1_1.virtual_trades_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.virtual_trades_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.virtual_trades_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.virtual_trades_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.virtual_trades_message.fields(buffer, offset, packet, parent)
  end
end

-- Tradability Message
bmv_bmvmarketdata_snapshot_intra_v1_1.tradability_message = {}

-- Size: Tradability Message
bmv_bmvmarketdata_snapshot_intra_v1_1.tradability_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_operations.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_648.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.amount.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.opening_price.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.maximum.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.minimum.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.average.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.last.size

-- Display: Tradability Message
bmv_bmvmarketdata_snapshot_intra_v1_1.tradability_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tradability Message
bmv_bmvmarketdata_snapshot_intra_v1_1.tradability_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Number Of Operations: Int32
  index, number_of_operations = bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_operations.dissect(buffer, index, packet, parent)

  -- Volume Int 648: Int64
  index, volume_int_648 = bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_648.dissect(buffer, index, packet, parent)

  -- Amount: Precio(8)
  index, amount = bmv_bmvmarketdata_snapshot_intra_v1_1.amount.dissect(buffer, index, packet, parent)

  -- Opening Price: Price (8)
  index, opening_price = bmv_bmvmarketdata_snapshot_intra_v1_1.opening_price.dissect(buffer, index, packet, parent)

  -- Maximum: Price (8)
  index, maximum = bmv_bmvmarketdata_snapshot_intra_v1_1.maximum.dissect(buffer, index, packet, parent)

  -- Minimum: Price (8)
  index, minimum = bmv_bmvmarketdata_snapshot_intra_v1_1.minimum.dissect(buffer, index, packet, parent)

  -- Average: Price (8)
  index, average = bmv_bmvmarketdata_snapshot_intra_v1_1.average.dissect(buffer, index, packet, parent)

  -- Last: Price (8)
  index, last = bmv_bmvmarketdata_snapshot_intra_v1_1.last.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tradability Message
bmv_bmvmarketdata_snapshot_intra_v1_1.tradability_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.tradability_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.tradability_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.tradability_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.tradability_message.fields(buffer, offset, packet, parent)
  end
end

-- Mutual Fund Trades Message
bmv_bmvmarketdata_snapshot_intra_v1_1.mutual_fund_trades_message = {}

-- Size: Mutual Fund Trades Message
bmv_bmvmarketdata_snapshot_intra_v1_1.mutual_fund_trades_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.trade_date.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.price.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.book_value.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_sales_transactions.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.sales_volume.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_buy_transactions.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.buy_volume.size

-- Display: Mutual Fund Trades Message
bmv_bmvmarketdata_snapshot_intra_v1_1.mutual_fund_trades_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mutual Fund Trades Message
bmv_bmvmarketdata_snapshot_intra_v1_1.mutual_fund_trades_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Trade Date: Timestamp(1)
  index, trade_date = bmv_bmvmarketdata_snapshot_intra_v1_1.trade_date.dissect(buffer, index, packet, parent)

  -- Price: Price (8)
  index, price = bmv_bmvmarketdata_snapshot_intra_v1_1.price.dissect(buffer, index, packet, parent)

  -- Book Value: Price (8)
  index, book_value = bmv_bmvmarketdata_snapshot_intra_v1_1.book_value.dissect(buffer, index, packet, parent)

  -- Number Of Sales Transactions: Int32
  index, number_of_sales_transactions = bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_sales_transactions.dissect(buffer, index, packet, parent)

  -- Sales Volume: Int64
  index, sales_volume = bmv_bmvmarketdata_snapshot_intra_v1_1.sales_volume.dissect(buffer, index, packet, parent)

  -- Number Of Buy Transactions: Int32
  index, number_of_buy_transactions = bmv_bmvmarketdata_snapshot_intra_v1_1.number_of_buy_transactions.dissect(buffer, index, packet, parent)

  -- Buy Volume: Int64
  index, buy_volume = bmv_bmvmarketdata_snapshot_intra_v1_1.buy_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mutual Fund Trades Message
bmv_bmvmarketdata_snapshot_intra_v1_1.mutual_fund_trades_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.mutual_fund_trades_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.mutual_fund_trades_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.mutual_fund_trades_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.mutual_fund_trades_message.fields(buffer, offset, packet, parent)
  end
end

-- Registry Operations Message
bmv_bmvmarketdata_snapshot_intra_v1_1.registry_operations_message = {}

-- Size: Registry Operations Message
bmv_bmvmarketdata_snapshot_intra_v1_1.registry_operations_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.offer_type.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.income.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.value_type.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.issuer.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.series.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.maximum_volume.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.registered_volume.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.price_rate.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.settlement_date.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.firm.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.movement.size

-- Display: Registry Operations Message
bmv_bmvmarketdata_snapshot_intra_v1_1.registry_operations_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Registry Operations Message
bmv_bmvmarketdata_snapshot_intra_v1_1.registry_operations_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Offer Type: ALPHA
  index, offer_type = bmv_bmvmarketdata_snapshot_intra_v1_1.offer_type.dissect(buffer, index, packet, parent)

  -- Income: ALPHA
  index, income = bmv_bmvmarketdata_snapshot_intra_v1_1.income.dissect(buffer, index, packet, parent)

  -- Value Type: ALPHA
  index, value_type = bmv_bmvmarketdata_snapshot_intra_v1_1.value_type.dissect(buffer, index, packet, parent)

  -- Issuer: ALPHA
  index, issuer = bmv_bmvmarketdata_snapshot_intra_v1_1.issuer.dissect(buffer, index, packet, parent)

  -- Series: ALPHA
  index, series = bmv_bmvmarketdata_snapshot_intra_v1_1.series.dissect(buffer, index, packet, parent)

  -- Maximum Volume: Int64
  index, maximum_volume = bmv_bmvmarketdata_snapshot_intra_v1_1.maximum_volume.dissect(buffer, index, packet, parent)

  -- Registered Volume: Int64
  index, registered_volume = bmv_bmvmarketdata_snapshot_intra_v1_1.registered_volume.dissect(buffer, index, packet, parent)

  -- Price Rate: Price (8)
  index, price_rate = bmv_bmvmarketdata_snapshot_intra_v1_1.price_rate.dissect(buffer, index, packet, parent)

  -- Settlement Date: Timestamp(1)
  index, settlement_date = bmv_bmvmarketdata_snapshot_intra_v1_1.settlement_date.dissect(buffer, index, packet, parent)

  -- Firm: ALPHA
  index, firm = bmv_bmvmarketdata_snapshot_intra_v1_1.firm.dissect(buffer, index, packet, parent)

  -- Movement: ALPHA
  index, movement = bmv_bmvmarketdata_snapshot_intra_v1_1.movement.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Registry Operations Message
bmv_bmvmarketdata_snapshot_intra_v1_1.registry_operations_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.registry_operations_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.registry_operations_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.registry_operations_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.registry_operations_message.fields(buffer, offset, packet, parent)
  end
end

-- Middle Price Existing Quotes Message
bmv_bmvmarketdata_snapshot_intra_v1_1.middle_price_existing_quotes_message = {}

-- Size: Middle Price Existing Quotes Message
bmv_bmvmarketdata_snapshot_intra_v1_1.middle_price_existing_quotes_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.existing_postures.size

-- Display: Middle Price Existing Quotes Message
bmv_bmvmarketdata_snapshot_intra_v1_1.middle_price_existing_quotes_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Middle Price Existing Quotes Message
bmv_bmvmarketdata_snapshot_intra_v1_1.middle_price_existing_quotes_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Existing Postures: ALPHA
  index, existing_postures = bmv_bmvmarketdata_snapshot_intra_v1_1.existing_postures.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Middle Price Existing Quotes Message
bmv_bmvmarketdata_snapshot_intra_v1_1.middle_price_existing_quotes_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.middle_price_existing_quotes_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.middle_price_existing_quotes_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.middle_price_existing_quotes_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.middle_price_existing_quotes_message.fields(buffer, offset, packet, parent)
  end
end

-- Continuous Auctions Beginning Message
bmv_bmvmarketdata_snapshot_intra_v1_1.continuous_auctions_beginning_message = {}

-- Size: Continuous Auctions Beginning Message
bmv_bmvmarketdata_snapshot_intra_v1_1.continuous_auctions_beginning_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.beginning_time_of_auction.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.end_auction_time.size

-- Display: Continuous Auctions Beginning Message
bmv_bmvmarketdata_snapshot_intra_v1_1.continuous_auctions_beginning_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Continuous Auctions Beginning Message
bmv_bmvmarketdata_snapshot_intra_v1_1.continuous_auctions_beginning_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Beginning Time Of Auction: Timestamp(2)
  index, beginning_time_of_auction = bmv_bmvmarketdata_snapshot_intra_v1_1.beginning_time_of_auction.dissect(buffer, index, packet, parent)

  -- End Auction Time: Timestamp(2)
  index, end_auction_time = bmv_bmvmarketdata_snapshot_intra_v1_1.end_auction_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Continuous Auctions Beginning Message
bmv_bmvmarketdata_snapshot_intra_v1_1.continuous_auctions_beginning_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.continuous_auctions_beginning_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.continuous_auctions_beginning_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.continuous_auctions_beginning_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.continuous_auctions_beginning_message.fields(buffer, offset, packet, parent)
  end
end

-- Probable Allocation Price Message
bmv_bmvmarketdata_snapshot_intra_v1_1.probable_allocation_price_message = {}

-- Size: Probable Allocation Price Message
bmv_bmvmarketdata_snapshot_intra_v1_1.probable_allocation_price_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.probable_allocation_price.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_324.size

-- Display: Probable Allocation Price Message
bmv_bmvmarketdata_snapshot_intra_v1_1.probable_allocation_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Probable Allocation Price Message
bmv_bmvmarketdata_snapshot_intra_v1_1.probable_allocation_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Probable Allocation Price: Precio (8)
  index, probable_allocation_price = bmv_bmvmarketdata_snapshot_intra_v1_1.probable_allocation_price.dissect(buffer, index, packet, parent)

  -- Volume Int 324: Int32
  index, volume_int_324 = bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_324.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Probable Allocation Price Message
bmv_bmvmarketdata_snapshot_intra_v1_1.probable_allocation_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.probable_allocation_price_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.probable_allocation_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.probable_allocation_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.probable_allocation_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Capital Trades Message
bmv_bmvmarketdata_snapshot_intra_v1_1.capital_trades_message = {}

-- Size: Capital Trades Message
bmv_bmvmarketdata_snapshot_intra_v1_1.capital_trades_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.trade_time.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_324.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.price.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.concertation_type.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.trade_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.price_setter.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.operation_type.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.amount.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.buy_alpha_5.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.sell_alpha_5.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.settlement.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.auction_indicator.size

-- Display: Capital Trades Message
bmv_bmvmarketdata_snapshot_intra_v1_1.capital_trades_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Capital Trades Message
bmv_bmvmarketdata_snapshot_intra_v1_1.capital_trades_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Trade Time: Timestamp(2)
  index, trade_time = bmv_bmvmarketdata_snapshot_intra_v1_1.trade_time.dissect(buffer, index, packet, parent)

  -- Volume Int 324: Int32
  index, volume_int_324 = bmv_bmvmarketdata_snapshot_intra_v1_1.volume_int_324.dissect(buffer, index, packet, parent)

  -- Price: Price (8)
  index, price = bmv_bmvmarketdata_snapshot_intra_v1_1.price.dissect(buffer, index, packet, parent)

  -- Concertation Type: ALPHA
  index, concertation_type = bmv_bmvmarketdata_snapshot_intra_v1_1.concertation_type.dissect(buffer, index, packet, parent)

  -- Trade Number: Int32
  index, trade_number = bmv_bmvmarketdata_snapshot_intra_v1_1.trade_number.dissect(buffer, index, packet, parent)

  -- Price Setter: ALPHA
  index, price_setter = bmv_bmvmarketdata_snapshot_intra_v1_1.price_setter.dissect(buffer, index, packet, parent)

  -- Operation Type: ALPHA
  index, operation_type = bmv_bmvmarketdata_snapshot_intra_v1_1.operation_type.dissect(buffer, index, packet, parent)

  -- Amount: Precio(8)
  index, amount = bmv_bmvmarketdata_snapshot_intra_v1_1.amount.dissect(buffer, index, packet, parent)

  -- Buy Alpha 5: ALPHA
  index, buy_alpha_5 = bmv_bmvmarketdata_snapshot_intra_v1_1.buy_alpha_5.dissect(buffer, index, packet, parent)

  -- Sell Alpha 5: ALPHA
  index, sell_alpha_5 = bmv_bmvmarketdata_snapshot_intra_v1_1.sell_alpha_5.dissect(buffer, index, packet, parent)

  -- Settlement: ALPHA
  index, settlement = bmv_bmvmarketdata_snapshot_intra_v1_1.settlement.dissect(buffer, index, packet, parent)

  -- Auction Indicator: ALPHA
  index, auction_indicator = bmv_bmvmarketdata_snapshot_intra_v1_1.auction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Capital Trades Message
bmv_bmvmarketdata_snapshot_intra_v1_1.capital_trades_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.capital_trades_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.capital_trades_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.capital_trades_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.capital_trades_message.fields(buffer, offset, packet, parent)
  end
end

-- Weighted Average Price Settlement Prices Message
bmv_bmvmarketdata_snapshot_intra_v1_1.weighted_average_price_settlement_prices_message = {}

-- Size: Weighted Average Price Settlement Prices Message
bmv_bmvmarketdata_snapshot_intra_v1_1.weighted_average_price_settlement_prices_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.weighted_average_price.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.volatility.size

-- Display: Weighted Average Price Settlement Prices Message
bmv_bmvmarketdata_snapshot_intra_v1_1.weighted_average_price_settlement_prices_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Weighted Average Price Settlement Prices Message
bmv_bmvmarketdata_snapshot_intra_v1_1.weighted_average_price_settlement_prices_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Weighted Average Price: Price (8)
  index, weighted_average_price = bmv_bmvmarketdata_snapshot_intra_v1_1.weighted_average_price.dissect(buffer, index, packet, parent)

  -- Volatility: Price (8)
  index, volatility = bmv_bmvmarketdata_snapshot_intra_v1_1.volatility.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Weighted Average Price Settlement Prices Message
bmv_bmvmarketdata_snapshot_intra_v1_1.weighted_average_price_settlement_prices_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.weighted_average_price_settlement_prices_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.weighted_average_price_settlement_prices_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.weighted_average_price_settlement_prices_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.weighted_average_price_settlement_prices_message.fields(buffer, offset, packet, parent)
  end
end

-- Status Changes Message
bmv_bmvmarketdata_snapshot_intra_v1_1.status_changes_message = {}

-- Size: Status Changes Message
bmv_bmvmarketdata_snapshot_intra_v1_1.status_changes_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_status.size

-- Display: Status Changes Message
bmv_bmvmarketdata_snapshot_intra_v1_1.status_changes_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Status Changes Message
bmv_bmvmarketdata_snapshot_intra_v1_1.status_changes_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Instrument Status: ALPHA
  index, instrument_status = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Status Changes Message
bmv_bmvmarketdata_snapshot_intra_v1_1.status_changes_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.status_changes_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.status_changes_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.status_changes_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.status_changes_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancellation Message
bmv_bmvmarketdata_snapshot_intra_v1_1.trade_cancellation_message = {}

-- Size: Trade Cancellation Message
bmv_bmvmarketdata_snapshot_intra_v1_1.trade_cancellation_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.trade_number.size

-- Display: Trade Cancellation Message
bmv_bmvmarketdata_snapshot_intra_v1_1.trade_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancellation Message
bmv_bmvmarketdata_snapshot_intra_v1_1.trade_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Trade Number: Int32
  index, trade_number = bmv_bmvmarketdata_snapshot_intra_v1_1.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancellation Message
bmv_bmvmarketdata_snapshot_intra_v1_1.trade_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.trade_cancellation_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.trade_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.trade_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.trade_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Events System Message
bmv_bmvmarketdata_snapshot_intra_v1_1.events_system_message = {}

-- Size: Events System Message
bmv_bmvmarketdata_snapshot_intra_v1_1.events_system_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.event_code.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.market.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.sending_time.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.ending_time.size

-- Display: Events System Message
bmv_bmvmarketdata_snapshot_intra_v1_1.events_system_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Events System Message
bmv_bmvmarketdata_snapshot_intra_v1_1.events_system_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_snapshot_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Event Code: ALPHA
  index, event_code = bmv_bmvmarketdata_snapshot_intra_v1_1.event_code.dissect(buffer, index, packet, parent)

  -- Market: ALPHA
  index, market = bmv_bmvmarketdata_snapshot_intra_v1_1.market.dissect(buffer, index, packet, parent)

  -- Sending Time: Timestamp(2)
  index, sending_time = bmv_bmvmarketdata_snapshot_intra_v1_1.sending_time.dissect(buffer, index, packet, parent)

  -- Ending Time: Timestamp(2)
  index, ending_time = bmv_bmvmarketdata_snapshot_intra_v1_1.ending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Events System Message
bmv_bmvmarketdata_snapshot_intra_v1_1.events_system_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.events_system_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.events_system_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.events_system_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.events_system_message.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Complete Message
bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_complete_message = {}

-- Size: Snapshot Complete Message
bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_complete_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.sequence_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.market_data_group.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_type.size

-- Display: Snapshot Complete Message
bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Complete Message
bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: Int32
  index, sequence_number = bmv_bmvmarketdata_snapshot_intra_v1_1.sequence_number.dissect(buffer, index, packet, parent)

  -- Market Data Group: Int8
  index, market_data_group = bmv_bmvmarketdata_snapshot_intra_v1_1.market_data_group.dissect(buffer, index, packet, parent)

  -- Snapshot Type: Int8
  index, snapshot_type = bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Complete Message
bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.snapshot_complete_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Response Message
bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_response_message = {}

-- Size: Snapshot Response Message
bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_response_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.quantity_of_messages.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_response_status.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_type.size

-- Display: Snapshot Response Message
bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Response Message
bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quantity Of Messages: Int32
  index, quantity_of_messages = bmv_bmvmarketdata_snapshot_intra_v1_1.quantity_of_messages.dissect(buffer, index, packet, parent)

  -- Snapshot Response Status: ALPHA
  index, snapshot_response_status = bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_response_status.dissect(buffer, index, packet, parent)

  -- Snapshot Type: Int8
  index, snapshot_type = bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Response Message
bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.snapshot_response_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Response Message
bmv_bmvmarketdata_snapshot_intra_v1_1.replay_response_message = {}

-- Size: Replay Response Message
bmv_bmvmarketdata_snapshot_intra_v1_1.replay_response_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.market_data_group.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.first_message.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.quantity.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.replay_response_status.size

-- Display: Replay Response Message
bmv_bmvmarketdata_snapshot_intra_v1_1.replay_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Response Message
bmv_bmvmarketdata_snapshot_intra_v1_1.replay_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Data Group: Int8
  index, market_data_group = bmv_bmvmarketdata_snapshot_intra_v1_1.market_data_group.dissect(buffer, index, packet, parent)

  -- First Message: Int32
  index, first_message = bmv_bmvmarketdata_snapshot_intra_v1_1.first_message.dissect(buffer, index, packet, parent)

  -- Quantity: Int16
  index, quantity = bmv_bmvmarketdata_snapshot_intra_v1_1.quantity.dissect(buffer, index, packet, parent)

  -- Replay Response Status: ALPHA
  index, replay_response_status = bmv_bmvmarketdata_snapshot_intra_v1_1.replay_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Response Message
bmv_bmvmarketdata_snapshot_intra_v1_1.replay_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.replay_response_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.replay_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.replay_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.replay_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Response Message
bmv_bmvmarketdata_snapshot_intra_v1_1.login_response_message = {}

-- Size: Login Response Message
bmv_bmvmarketdata_snapshot_intra_v1_1.login_response_message.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.login_response_status.size

-- Display: Login Response Message
bmv_bmvmarketdata_snapshot_intra_v1_1.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
bmv_bmvmarketdata_snapshot_intra_v1_1.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Response Status: ALPHA
  index, login_response_status = bmv_bmvmarketdata_snapshot_intra_v1_1.login_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response Message
bmv_bmvmarketdata_snapshot_intra_v1_1.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.login_response_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
bmv_bmvmarketdata_snapshot_intra_v1_1.payload = {}

-- Dissect: Payload
bmv_bmvmarketdata_snapshot_intra_v1_1.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Response Message
  if message_type == 0x26 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Response Message
  if message_type == 0x2A then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.replay_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Response Message
  if message_type == 0x2B then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Complete Message
  if message_type == 0x3F then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.snapshot_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Events System Message
  if message_type == 0x53 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.events_system_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancellation Message
  if message_type == 0x48 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.trade_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Status Changes Message
  if message_type == 0x34 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.status_changes_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Weighted Average Price Settlement Prices Message
  if message_type == 0x4D then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.weighted_average_price_settlement_prices_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Capital Trades Message
  if message_type == 0x50 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.capital_trades_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Probable Allocation Price Message
  if message_type == 0x32 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.probable_allocation_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Continuous Auctions Beginning Message
  if message_type == 0x33 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.continuous_auctions_beginning_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Middle Price Existing Quotes Message
  if message_type == 0x35 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.middle_price_existing_quotes_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Registry Operations Message
  if message_type == 0x5A then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.registry_operations_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mutual Fund Trades Message
  if message_type == 0x59 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.mutual_fund_trades_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tradability Message
  if message_type == 0x45 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.tradability_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Virtual Trades Message
  if message_type == 0x56 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.virtual_trades_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Addition Message
  if message_type == 0x41 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.order_addition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Of Orders Message
  if message_type == 0x43 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.execution_of_orders_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancellation Message
  if message_type == 0x44 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.order_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Change Message
  if message_type == 0x46 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.order_change_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Depth Message
  if message_type == 0x31 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.depth_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Offer Message
  if message_type == 0x4F then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.best_offer_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Public Offerings Message
  if message_type == 0x42 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.public_offerings_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Open Interest Message
  if message_type == 0x49 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.open_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivatives Market Trades Message
  if message_type == 0x51 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.derivatives_market_trades_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Statistics Of Instruments Message
  if message_type == 0x52 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.statistics_of_instruments_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect General Indices Message
  if message_type == 0x55 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.general_indices_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Indices Components Message
  if message_type == 0x57 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.indices_components_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Inav Message
  if message_type == 0x47 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.inav_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Dollar Buy Sell Message
  if message_type == 0x72 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.dollar_buy_sell_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Sales Balances Per Instrument Message
  if message_type == 0x73 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.short_sales_balances_per_instrument_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Capital Market Multiples Message
  if message_type == 0x74 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.capital_market_multiples_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Benchmark Message
  if message_type == 0x78 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.benchmark_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Capitalization Rules Message
  if message_type == 0x7A then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.capitalization_rules_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Closing Price Origin Message
  if message_type == 0x7E then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.closing_price_origin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mutual Funds Trades Message
  if message_type == 0x28 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.mutual_funds_trades_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Opening Of Continuous Auctions Message
  if message_type == 0x29 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.opening_of_continuous_auctions_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Existence Of Bids At Mid Price Message
  if message_type == 0x2C then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.existence_of_bids_at_mid_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Catalogue Of Debt And Metals Instruments Message
  if message_type == 0x2E then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.catalogue_of_debt_and_metals_instruments_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Catalog Sent For Instruments Belonging To Mutual Funds Message
  if message_type == 0x30 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_sent_for_instruments_belonging_to_mutual_funds_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Weighted Average Price Message
  if message_type == 0x36 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.weighted_average_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Events Message
  if message_type == 0x37 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.system_events_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reference Price Message
  if message_type == 0x38 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.reference_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Changes In Status Message
  if message_type == 0x39 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.changes_in_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Catalog For Instruments Belonging To The Capital Warrants Market Message
  if message_type == 0x54 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_for_instruments_belonging_to_the_capital_warrants_market_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Catalog Sent For Instruments Belonging To Capital Tracs Message
  if message_type == 0x5B then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_sent_for_instruments_belonging_to_capital_tracs_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Inav Message
  if message_type == 0x5D then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.consolidated_inav_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Catalog For Instruments Belonging To The Local And Global Stock Market Message
  if message_type == 0x68 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.catalog_for_instruments_belonging_to_the_local_and_global_stock_market_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Probable Price Of Allocation Message
  if message_type == 0x69 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.probable_price_of_allocation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Relation Between Bmvbiva Instruments Message
  if message_type == 0x6A then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.relation_between_bmvbiva_instruments_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Equities Market Trades Message
  if message_type == 0x70 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.equities_market_trades_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Trade Cancellation Message
  if message_type == 0x71 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.consolidated_trade_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Pricevolume Indicator Message
  if message_type == 0x5C then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.pricevolume_indicator_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Execution Of Orders Message
  if message_type == 0x6B then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.consolidated_execution_of_orders_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Registration Of Order Message
  if message_type == 0x6E then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.registration_of_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancellations Of Orders Message
  if message_type == 0x75 then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.cancellations_of_orders_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Last Quote Message
  if message_type == 0x6D then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.last_quote_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
bmv_bmvmarketdata_snapshot_intra_v1_1.message_header = {}

-- Size: Message Header
bmv_bmvmarketdata_snapshot_intra_v1_1.message_header.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.message_length.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.message_type.size

-- Display: Message Header
bmv_bmvmarketdata_snapshot_intra_v1_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
bmv_bmvmarketdata_snapshot_intra_v1_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: Int16
  index, message_length = bmv_bmvmarketdata_snapshot_intra_v1_1.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: ALPHA
  index, message_type = bmv_bmvmarketdata_snapshot_intra_v1_1.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
bmv_bmvmarketdata_snapshot_intra_v1_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.message_header, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message Block
bmv_bmvmarketdata_snapshot_intra_v1_1.message_block = {}

-- Display: Message Block
bmv_bmvmarketdata_snapshot_intra_v1_1.message_block.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Block
bmv_bmvmarketdata_snapshot_intra_v1_1.message_block.fields = function(buffer, offset, packet, parent, size_of_message_block, message_block_index)
  local index = offset

  -- Implicit Message Block Index
  if message_block_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.message_block_index, message_block_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = bmv_bmvmarketdata_snapshot_intra_v1_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 57 branches
  index = bmv_bmvmarketdata_snapshot_intra_v1_1.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message Block
bmv_bmvmarketdata_snapshot_intra_v1_1.message_block.dissect = function(buffer, offset, packet, parent, size_of_message_block, message_block_index)
  local index = offset + size_of_message_block

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.message_block, buffer(offset, 0))
    local current = bmv_bmvmarketdata_snapshot_intra_v1_1.message_block.fields(buffer, offset, packet, parent, size_of_message_block, message_block_index)
    parent:set_len(size_of_message_block)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.message_block.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bmv_bmvmarketdata_snapshot_intra_v1_1.message_block.fields(buffer, offset, packet, parent, size_of_message_block, message_block_index)

    return index
  end
end

-- INTRA Multicast Header
bmv_bmvmarketdata_snapshot_intra_v1_1.intra_multicast_header = {}

-- Size: INTRA Multicast Header
bmv_bmvmarketdata_snapshot_intra_v1_1.intra_multicast_header.size =
  bmv_bmvmarketdata_snapshot_intra_v1_1.length.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.total_messages.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.market_data_group.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.session.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.sequence_number.size + 
  bmv_bmvmarketdata_snapshot_intra_v1_1.datetime.size

-- Display: INTRA Multicast Header
bmv_bmvmarketdata_snapshot_intra_v1_1.intra_multicast_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: INTRA Multicast Header
bmv_bmvmarketdata_snapshot_intra_v1_1.intra_multicast_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: Int16
  index, length = bmv_bmvmarketdata_snapshot_intra_v1_1.length.dissect(buffer, index, packet, parent)

  -- Total Messages: Int8
  index, total_messages = bmv_bmvmarketdata_snapshot_intra_v1_1.total_messages.dissect(buffer, index, packet, parent)

  -- Market Data Group: Int8
  index, market_data_group = bmv_bmvmarketdata_snapshot_intra_v1_1.market_data_group.dissect(buffer, index, packet, parent)

  -- Session: Int8
  index, session = bmv_bmvmarketdata_snapshot_intra_v1_1.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: Int32
  index, sequence_number = bmv_bmvmarketdata_snapshot_intra_v1_1.sequence_number.dissect(buffer, index, packet, parent)

  -- Datetime: Timestamp(3)
  index, datetime = bmv_bmvmarketdata_snapshot_intra_v1_1.datetime.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: INTRA Multicast Header
bmv_bmvmarketdata_snapshot_intra_v1_1.intra_multicast_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.intra_multicast_header, buffer(offset, 0))
    local index = bmv_bmvmarketdata_snapshot_intra_v1_1.intra_multicast_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.intra_multicast_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_snapshot_intra_v1_1.intra_multicast_header.fields(buffer, offset, packet, parent)
  end
end

-- Tcp Unit
bmv_bmvmarketdata_snapshot_intra_v1_1.tcp_unit = {}

-- Display: Tcp Unit
bmv_bmvmarketdata_snapshot_intra_v1_1.tcp_unit.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tcp Unit
bmv_bmvmarketdata_snapshot_intra_v1_1.tcp_unit.fields = function(buffer, offset, packet, parent, size_of_tcp_unit)
  local index = offset

  -- INTRA Multicast Header: Struct of 6 fields
  index, intra_multicast_header = bmv_bmvmarketdata_snapshot_intra_v1_1.intra_multicast_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message Block
  local end_of_payload = offset + size_of_tcp_unit

  -- Message Block: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):int()

    -- Runtime Size Of: Message Block
    local size_of_message_block = message_length + 2

    -- Message Block: Struct of 2 fields
    index, message_block = bmv_bmvmarketdata_snapshot_intra_v1_1.message_block.dissect(buffer, index, packet, parent, size_of_message_block, message_block_index)
  end

  return index
end

-- Dissect: Tcp Unit
bmv_bmvmarketdata_snapshot_intra_v1_1.tcp_unit.dissect = function(buffer, offset, packet, parent, size_of_tcp_unit)
  local index = offset + size_of_tcp_unit

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1.fields.tcp_unit, buffer(offset, 0))
    local current = bmv_bmvmarketdata_snapshot_intra_v1_1.tcp_unit.fields(buffer, offset, packet, parent, size_of_tcp_unit)
    parent:set_len(size_of_tcp_unit)
    local display = bmv_bmvmarketdata_snapshot_intra_v1_1.tcp_unit.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bmv_bmvmarketdata_snapshot_intra_v1_1.tcp_unit.fields(buffer, offset, packet, parent, size_of_tcp_unit)

    return index
  end
end

-- Remaining Bytes For: Tcp Unit
local tcp_unit_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < bmv_bmvmarketdata_snapshot_intra_v1_1.intra_multicast_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):int()

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Packet
bmv_bmvmarketdata_snapshot_intra_v1_1.packet = {}

-- Verify required size of Tcp packet
bmv_bmvmarketdata_snapshot_intra_v1_1.packet.requiredsize = function(buffer)
  return buffer:len() >= bmv_bmvmarketdata_snapshot_intra_v1_1.intra_multicast_header.size
end

-- Dissect Packet
bmv_bmvmarketdata_snapshot_intra_v1_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Tcp Unit
  local end_of_payload = buffer:len()

  -- Tcp Unit: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_tcp_unit = tcp_unit_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_tcp_unit):tvb()
      index = bmv_bmvmarketdata_snapshot_intra_v1_1.tcp_unit.dissect(frame, index, packet, parent, size_of_tcp_unit)
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
function omi_bmv_bmvmarketdata_snapshot_intra_v1_1.init()
end

-- Connection roles for Bmv BmvMarketData Snapshot Intra 1.1: Client is the initiator, Server is the acceptor
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
bmv_bmvmarketdata_snapshot_intra_v1_1.role = function(packet)
  if omi_bmv_bmvmarketdata_snapshot_intra_v1_1.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_bmv_bmvmarketdata_snapshot_intra_v1_1.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.prefs.acceptor_port

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

  if omi_bmv_bmvmarketdata_snapshot_intra_v1_1.prefs.swap_sides then
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
bmv_bmvmarketdata_snapshot_intra_v1_1.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Bmv BmvMarketData Snapshot Intra 1.1
function omi_bmv_bmvmarketdata_snapshot_intra_v1_1.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_bmv_bmvmarketdata_snapshot_intra_v1_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_bmv_bmvmarketdata_snapshot_intra_v1_1, buffer(), omi_bmv_bmvmarketdata_snapshot_intra_v1_1.description, "("..buffer:len().." Bytes)")
  local role = bmv_bmvmarketdata_snapshot_intra_v1_1.role(packet)

  if role == "initiator" then
    return bmv_bmvmarketdata_snapshot_intra_v1_1.client_packet.dissect(buffer, packet, protocol)
  end

  return bmv_bmvmarketdata_snapshot_intra_v1_1.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
bmv_bmvmarketdata_snapshot_intra_v1_1.packet.fingerprint = function(buffer)
  if buffer:len() < 20 then
    return false
  end

  local message_type = buffer(19, 1):uint()

  -- Login Response Message
  if message_type == 0x26 then
    return true
  end

  -- Replay Response Message
  if message_type == 0x2A then
    return true
  end

  -- Snapshot Response Message
  if message_type == 0x2B then
    return true
  end

  -- Snapshot Complete Message
  if message_type == 0x3F then
    return true
  end

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

  -- Depth Message
  if message_type == 0x31 then
    return true
  end

  -- Best Offer Message
  if message_type == 0x4F then
    return true
  end

  -- Public Offerings Message
  if message_type == 0x42 then
    return true
  end

  -- Open Interest Message
  if message_type == 0x49 then
    return true
  end

  -- Derivatives Market Trades Message
  if message_type == 0x51 then
    return true
  end

  -- Statistics Of Instruments Message
  if message_type == 0x52 then
    return true
  end

  -- General Indices Message
  if message_type == 0x55 then
    return true
  end

  -- Indices Components Message
  if message_type == 0x57 then
    return true
  end

  -- Inav Message
  if message_type == 0x47 then
    return true
  end

  -- Dollar Buy Sell Message
  if message_type == 0x72 then
    return true
  end

  -- Short Sales Balances Per Instrument Message
  if message_type == 0x73 then
    return true
  end

  -- Capital Market Multiples Message
  if message_type == 0x74 then
    return true
  end

  -- Benchmark Message
  if message_type == 0x78 then
    return true
  end

  -- Capitalization Rules Message
  if message_type == 0x7A then
    return true
  end

  -- Closing Price Origin Message
  if message_type == 0x7E then
    return true
  end

  -- Mutual Funds Trades Message
  if message_type == 0x28 then
    return true
  end

  -- Opening Of Continuous Auctions Message
  if message_type == 0x29 then
    return true
  end

  -- Existence Of Bids At Mid Price Message
  if message_type == 0x2C then
    return true
  end

  -- Catalogue Of Debt And Metals Instruments Message
  if message_type == 0x2E then
    return true
  end

  -- Catalog Sent For Instruments Belonging To Mutual Funds Message
  if message_type == 0x30 then
    return true
  end

  -- Weighted Average Price Message
  if message_type == 0x36 then
    return true
  end

  -- System Events Message
  if message_type == 0x37 then
    return true
  end

  -- Reference Price Message
  if message_type == 0x38 then
    return true
  end

  -- Changes In Status Message
  if message_type == 0x39 then
    return true
  end

  -- Catalog For Instruments Belonging To The Capital Warrants Market Message
  if message_type == 0x54 then
    return true
  end

  -- Catalog Sent For Instruments Belonging To Capital Tracs Message
  if message_type == 0x5B then
    return true
  end

  -- Consolidated Inav Message
  if message_type == 0x5D then
    return true
  end

  -- Catalog For Instruments Belonging To The Local And Global Stock Market Message
  if message_type == 0x68 then
    return true
  end

  -- Probable Price Of Allocation Message
  if message_type == 0x69 then
    return true
  end

  -- Relation Between Bmvbiva Instruments Message
  if message_type == 0x6A then
    return true
  end

  -- Equities Market Trades Message
  if message_type == 0x70 then
    return true
  end

  -- Consolidated Trade Cancellation Message
  if message_type == 0x71 then
    return true
  end

  -- Pricevolume Indicator Message
  if message_type == 0x5C then
    return true
  end

  -- Consolidated Execution Of Orders Message
  if message_type == 0x6B then
    return true
  end

  -- Registration Of Order Message
  if message_type == 0x6E then
    return true
  end

  -- Cancellations Of Orders Message
  if message_type == 0x75 then
    return true
  end

  -- Last Quote Message
  if message_type == 0x6D then
    return true
  end

  return false
end

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
bmv_bmvmarketdata_snapshot_intra_v1_1.client_packet.fingerprint = function(buffer)
  if buffer:len() < 2 then
    return false
  end

  local client_message_type = buffer(1, 1):uint()

  -- Login Message
  if client_message_type == 0x21 then
    return true
  end

  -- Replay Request Message
  if client_message_type == 0x23 then
    return true
  end

  -- Snapshot Request Message
  if client_message_type == 0x24 then
    return true
  end

  -- Snapshot Indices Request Message
  if client_message_type == 0x2D then
    return true
  end

  -- Snapshot Consolidated Feed Request Message
  if client_message_type == 0x5F then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Bmv BmvMarketData Snapshot Intra 1.1 (Tcp)
local function omi_bmv_bmvmarketdata_snapshot_intra_v1_1_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not bmv_bmvmarketdata_snapshot_intra_v1_1.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp packet message dispatch
  if not bmv_bmvmarketdata_snapshot_intra_v1_1.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_bmv_bmvmarketdata_snapshot_intra_v1_1
  omi_bmv_bmvmarketdata_snapshot_intra_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Bmv BmvMarketData Snapshot Intra 1.1 (Tcp)
local function omi_bmv_bmvmarketdata_snapshot_intra_v1_1_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not bmv_bmvmarketdata_snapshot_intra_v1_1.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp client packet message dispatch
  if not bmv_bmvmarketdata_snapshot_intra_v1_1.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_bmv_bmvmarketdata_snapshot_intra_v1_1
  omi_bmv_bmvmarketdata_snapshot_intra_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Bmv BmvMarketData Snapshot Intra 1.1 (Tcp): apply the heuristic of the sender's connection role
local function omi_bmv_bmvmarketdata_snapshot_intra_v1_1_tcp_heuristic(buffer, packet, parent)
  local role = bmv_bmvmarketdata_snapshot_intra_v1_1.role(packet)
  local initiator = omi_bmv_bmvmarketdata_snapshot_intra_v1_1_tcp_initiator_heuristic
  local acceptor = omi_bmv_bmvmarketdata_snapshot_intra_v1_1_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  bmv_bmvmarketdata_snapshot_intra_v1_1.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  bmv_bmvmarketdata_snapshot_intra_v1_1.swap(packet)

  return false
end

-- Register Heuristics for Bmv BmvMarketData Snapshot Intra 1.1
omi_bmv_bmvmarketdata_snapshot_intra_v1_1:register_heuristic("tcp", omi_bmv_bmvmarketdata_snapshot_intra_v1_1_tcp_heuristic)

-- Register Bmv BmvMarketData Snapshot Intra 1.1 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_bmv_bmvmarketdata_snapshot_intra_v1_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Bolsa Mexicana de Valores
--   Version: 1.1
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
