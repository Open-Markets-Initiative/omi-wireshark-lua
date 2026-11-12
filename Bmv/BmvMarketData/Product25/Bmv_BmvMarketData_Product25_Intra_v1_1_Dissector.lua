-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Bmv BmvMarketData Product25 Intra 1.1 Protocol
local omi_bmv_bmvmarketdata_product25_intra_v1_1 = Proto("Omi.Bmv.BmvMarketData.Product25.Intra.v1.1", "Bmv BmvMarketData Product25 Intra 1.1")

-- Protocol table
local bmv_bmvmarketdata_product25_intra_v1_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Bmv BmvMarketData Product25 Intra 1.1 Fields
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.amount = ProtoField.new("Amount", "bmv.bmvmarketdata.product25.intra.v1.1.amount", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.amount_placed = ProtoField.new("Amount Placed", "bmv.bmvmarketdata.product25.intra.v1.1.amountplaced", ftypes.INT64)
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.auction_indicator = ProtoField.new("Auction Indicator", "bmv.bmvmarketdata.product25.intra.v1.1.auctionindicator", ftypes.STRING, nil, nil, nil, "\"P\"-Opening Auction \"S\"-Other Auctions \" \"- Continuous Market \"N\"- Not Applicable")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.auction_session_end_time = ProtoField.new("Auction Session End Time", "bmv.bmvmarketdata.product25.intra.v1.1.auctionsessionendtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time when the auction session ends")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.auction_session_end_time_utc = ProtoField.new("Auction Session End Time", "bmv.bmvmarketdata.product25.intra.v1.1.auctionsessionendtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time when the auction session ends")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.auction_session_startup_time = ProtoField.new("Auction Session Startup Time", "bmv.bmvmarketdata.product25.intra.v1.1.auctionsessionstartuptime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time when the auction session opens")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.auction_session_startup_time_utc = ProtoField.new("Auction Session Startup Time", "bmv.bmvmarketdata.product25.intra.v1.1.auctionsessionstartuptime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time when the auction session opens")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.bids_existing = ProtoField.new("Bids Existing", "bmv.bmvmarketdata.product25.intra.v1.1.bidsexisting", ftypes.STRING, nil, nil, nil, "If the value is \"1\", it will be construed as true (there are bids), in any other case it will be false (there are no bids).")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.biva_instrument = ProtoField.new("Biva Instrument", "bmv.bmvmarketdata.product25.intra.v1.1.bivainstrument", ftypes.INT32, nil, nil, nil, "Code of the instrument at BIVA")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.book_value = ProtoField.new("Book Value", "bmv.bmvmarketdata.product25.intra.v1.1.bookvalue", ftypes.DOUBLE, nil, nil, nil, "Book value per share")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.code_of_event = ProtoField.new("Code Of Event", "bmv.bmvmarketdata.product25.intra.v1.1.codeofevent", ftypes.STRING, nil, nil, nil, "See Catalogue of Codes of System Event on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.component_in_cash = ProtoField.new("Component In Cash", "bmv.bmvmarketdata.product25.intra.v1.1.componentincash", ftypes.DOUBLE, nil, nil, nil, "Cash component per unit")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.consecutive_number_of_the_trade = ProtoField.new("Consecutive Number Of The Trade", "bmv.bmvmarketdata.product25.intra.v1.1.consecutivenumberofthetrade", ftypes.INT64, nil, nil, nil, "Numbering stamp per instrument")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.coupon_in_effect = ProtoField.new("Coupon In Effect", "bmv.bmvmarketdata.product25.intra.v1.1.couponineffect", ftypes.INT16, nil, nil, nil, "Coupon number in effect")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.coupon_period = ProtoField.new("Coupon Period", "bmv.bmvmarketdata.product25.intra.v1.1.couponperiod", ftypes.INT16, nil, nil, nil, "Coupon number in effect or period number")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.current_nominal_value = ProtoField.new("Current Nominal Value", "bmv.bmvmarketdata.product25.intra.v1.1.currentnominalvalue", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.current_theoretical_price = ProtoField.new("Current Theoretical Price", "bmv.bmvmarketdata.product25.intra.v1.1.currenttheoreticalprice", ftypes.DOUBLE, nil, nil, nil, "Last theoretical price of the Trac")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.date_of_issuance = ProtoField.new("Date Of Issuance", "bmv.bmvmarketdata.product25.intra.v1.1.dateofissuance", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date of issuance and placement")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.date_of_issuance_utc = ProtoField.new("Date Of Issuance", "bmv.bmvmarketdata.product25.intra.v1.1.dateofissuance.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date of issuance and placement")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.date_of_maturity = ProtoField.new("Date Of Maturity", "bmv.bmvmarketdata.product25.intra.v1.1.dateofmaturity", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.date_of_maturity_utc = ProtoField.new("Date Of Maturity", "bmv.bmvmarketdata.product25.intra.v1.1.dateofmaturity.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.date_of_reference = ProtoField.new("Date Of Reference", "bmv.bmvmarketdata.product25.intra.v1.1.dateofreference", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Last reference date")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.date_of_reference_utc = ProtoField.new("Date Of Reference", "bmv.bmvmarketdata.product25.intra.v1.1.dateofreference.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Last reference date")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.date_of_the_trade = ProtoField.new("Date Of The Trade", "bmv.bmvmarketdata.product25.intra.v1.1.dateofthetrade", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date when the trade was made")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.date_of_the_trade_utc = ProtoField.new("Date Of The Trade", "bmv.bmvmarketdata.product25.intra.v1.1.dateofthetrade.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date when the trade was made")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.datetime = ProtoField.new("Datetime", "bmv.bmvmarketdata.product25.intra.v1.1.datetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date and time the packet is created")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.datetime_utc = ProtoField.new("Datetime", "bmv.bmvmarketdata.product25.intra.v1.1.datetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date and time the packet is created")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.end_time = ProtoField.new("End Time", "bmv.bmvmarketdata.product25.intra.v1.1.endtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "End time of administrative recess. Used only in case of administrative recess notices and in the case of an automatic resource.")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.end_time_utc = ProtoField.new("End Time", "bmv.bmvmarketdata.product25.intra.v1.1.endtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "End time of administrative recess. Used only in case of administrative recess notices and in the case of an automatic resource.")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.exchange = ProtoField.new("Exchange", "bmv.bmvmarketdata.product25.intra.v1.1.exchange", ftypes.STRING, nil, nil, nil, "Exchange where the value was listed. M-BMV I-BIVA (Document label: Registered Values)")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.excluded_securities = ProtoField.new("Excluded Securities", "bmv.bmvmarketdata.product25.intra.v1.1.excludedsecurities", ftypes.DOUBLE, nil, nil, nil, "Number of securities excluded from the underlying value")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.excluded_value = ProtoField.new("Excluded Value", "bmv.bmvmarketdata.product25.intra.v1.1.excludedvalue", ftypes.DOUBLE, nil, nil, nil, "Estimated value of excluded assets by unit")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.group = ProtoField.new("Group", "bmv.bmvmarketdata.product25.intra.v1.1.group", ftypes.STRING, nil, nil, nil, "Group identifier. If blank, it applies at system level.")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.indicator = ProtoField.new("Indicator", "bmv.bmvmarketdata.product25.intra.v1.1.indicator", ftypes.STRING, nil, nil, nil, "Denotes if the execution must be reflected for the volume calculations: \"N\" – No, \"Y\" – Yes In the case of the BMV this field does not apply and will be sent blank.")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.industry = ProtoField.new("Industry", "bmv.bmvmarketdata.product25.intra.v1.1.industry", ftypes.INT8, nil, nil, nil, "See Industry Classification on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.instrument_number = ProtoField.new("Instrument Number", "bmv.bmvmarketdata.product25.intra.v1.1.instrumentnumber", ftypes.INT32, nil, nil, nil, "Sole code throughout the life on the instrument")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.isin = ProtoField.new("Isin", "bmv.bmvmarketdata.product25.intra.v1.1.isin", ftypes.STRING, nil, nil, nil, "ISIN Code of the instrument")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.issuance = ProtoField.new("Issuance", "bmv.bmvmarketdata.product25.intra.v1.1.issuance", ftypes.STRING, nil, nil, nil, "Code of the issuance")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.issuing_company = ProtoField.new("Issuing Company", "bmv.bmvmarketdata.product25.intra.v1.1.issuingcompany", ftypes.STRING, nil, nil, nil, "Code of the issuing Company")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.last_price = ProtoField.new("Last Price", "bmv.bmvmarketdata.product25.intra.v1.1.lastprice", ftypes.DOUBLE, nil, nil, nil, "Last reference price")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.length = ProtoField.new("Length", "bmv.bmvmarketdata.product25.intra.v1.1.length", ftypes.INT16, nil, nil, nil, "Packet length, including header and all attached messages")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.market = ProtoField.new("Market", "bmv.bmvmarketdata.product25.intra.v1.1.market", ftypes.STRING, nil, nil, nil, "D – Local debt, F- Global debt, E – Money")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.market_data_group = ProtoField.new("Market Data Group", "bmv.bmvmarketdata.product25.intra.v1.1.marketdatagroup", ftypes.INT8, nil, nil, nil, "See Market Data Groups Catalog")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.marketability = ProtoField.new("Marketability", "bmv.bmvmarketdata.product25.intra.v1.1.marketability", ftypes.STRING, nil, nil, nil, "See Marketability Catalog on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.message_length = ProtoField.new("Message Length", "bmv.bmvmarketdata.product25.intra.v1.1.messagelength", ftypes.INT16, nil, nil, nil, "Indicates message length contained in this message block")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.message_type = ProtoField.new("Message Type", "bmv.bmvmarketdata.product25.intra.v1.1.messagetype", ftypes.UINT8, nil, nil, nil, "Code identifying the message")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.mse_instrument_number = ProtoField.new("Mse Instrument Number", "bmv.bmvmarketdata.product25.intra.v1.1.mseinstrumentnumber", ftypes.INT32, nil, nil, nil, "Unique code during instruments life")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.name_of_the_trac = ProtoField.new("Name Of The Trac", "bmv.bmvmarketdata.product25.intra.v1.1.nameofthetrac", ftypes.STRING, nil, nil, nil, "Identifies the name of the Trac")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.number_of_certificates = ProtoField.new("Number Of Certificates", "bmv.bmvmarketdata.product25.intra.v1.1.numberofcertificates", ftypes.INT64, nil, nil, nil, "Estimated value of the excluded assets per unit (Document label: Excluded Value)")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.number_of_purchase_trades = ProtoField.new("Number Of Purchase Trades", "bmv.bmvmarketdata.product25.intra.v1.1.numberofpurchasetrades", ftypes.INT32)
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.number_of_sales_trades = ProtoField.new("Number Of Sales Trades", "bmv.bmvmarketdata.product25.intra.v1.1.numberofsalestrades", ftypes.INT32)
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.number_of_the_bmv_instrument = ProtoField.new("Number Of The Bmv Instrument", "bmv.bmvmarketdata.product25.intra.v1.1.numberofthebmvinstrument", ftypes.INT32, nil, nil, nil, "Sole code throughout the life of the instrument at BMV")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.number_of_the_instrument = ProtoField.new("Number Of The Instrument", "bmv.bmvmarketdata.product25.intra.v1.1.numberoftheinstrument", ftypes.INT32, nil, nil, nil, "Sole code throughout the life of the instrument")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.number_of_the_trac = ProtoField.new("Number Of The Trac", "bmv.bmvmarketdata.product25.intra.v1.1.numberofthetrac", ftypes.INT32, nil, nil, nil, "Sole code throughout the life of the instrument")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.numerical_marketability = ProtoField.new("Numerical Marketability", "bmv.bmvmarketdata.product25.intra.v1.1.numericalmarketability", ftypes.DOUBLE, nil, nil, nil, "Refer to the BMV Marketability Indices Methodology")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.origin = ProtoField.new("Origin", "bmv.bmvmarketdata.product25.intra.v1.1.origin", ftypes.STRING, nil, nil, nil, "M-BMV")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.original_nominal_value = ProtoField.new("Original Nominal Value", "bmv.bmvmarketdata.product25.intra.v1.1.originalnominalvalue", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.outstanding_shares = ProtoField.new("Outstanding Shares", "bmv.bmvmarketdata.product25.intra.v1.1.outstandingshares", ftypes.INT64)
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.ppp_weighted_average_price = ProtoField.new("Ppp Weighted Average Price", "bmv.bmvmarketdata.product25.intra.v1.1.pppweightedaverageprice", ftypes.DOUBLE, nil, nil, nil, "Weighted average price")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.price = ProtoField.new("Price", "bmv.bmvmarketdata.product25.intra.v1.1.price", ftypes.DOUBLE, nil, nil, nil, "Market price")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.price_of_exercise = ProtoField.new("Price Of Exercise", "bmv.bmvmarketdata.product25.intra.v1.1.priceofexercise", ftypes.DOUBLE, nil, nil, nil, "Price to exercise the Warrant")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.price_rate_of_reference = ProtoField.new("Price Rate Of Reference", "bmv.bmvmarketdata.product25.intra.v1.1.pricerateofreference", ftypes.DOUBLE, nil, nil, nil, "Last reference price or rate")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.price_type = ProtoField.new("Price Type", "bmv.bmvmarketdata.product25.intra.v1.1.pricetype", ftypes.STRING, nil, nil, nil, "Type of Price sent. See Catalogue of types of price on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.probable_price_of_allocation = ProtoField.new("Probable Price Of Allocation", "bmv.bmvmarketdata.product25.intra.v1.1.probablepriceofallocation", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.purchase_volume = ProtoField.new("Purchase Volume", "bmv.bmvmarketdata.product25.intra.v1.1.purchasevolume", ftypes.INT64)
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.purchases = ProtoField.new("Purchases", "bmv.bmvmarketdata.product25.intra.v1.1.purchases", ftypes.STRING, nil, nil, nil, "Short code of the Purchasing Exchange (BMV and BIVA)")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.rating = ProtoField.new("Rating", "bmv.bmvmarketdata.product25.intra.v1.1.rating", ftypes.STRING)
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.reason = ProtoField.new("Reason", "bmv.bmvmarketdata.product25.intra.v1.1.reason", ftypes.STRING, nil, nil, nil, "Reason for the change of status. See Catalogue of reasons. on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.reference = ProtoField.new("Reference", "bmv.bmvmarketdata.product25.intra.v1.1.reference", ftypes.STRING, nil, nil, nil, "N – Prior, “ ” – W/O Price, V – Adjusted Nominal Value")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.reference_date = ProtoField.new("Reference Date", "bmv.bmvmarketdata.product25.intra.v1.1.referencedate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Last reference date")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.reference_date_utc = ProtoField.new("Reference Date", "bmv.bmvmarketdata.product25.intra.v1.1.referencedate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Last reference date")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.reference_price = ProtoField.new("Reference Price", "bmv.bmvmarketdata.product25.intra.v1.1.referenceprice", ftypes.DOUBLE, nil, nil, nil, "Last reference price or rate")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.registered_values = ProtoField.new("Registered Values", "bmv.bmvmarketdata.product25.intra.v1.1.registeredvalues", ftypes.INT64, nil, nil, nil, "Outstanding shares")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.sales_volume = ProtoField.new("Sales Volume", "bmv.bmvmarketdata.product25.intra.v1.1.salesvolume", ftypes.INT64)
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.sector = ProtoField.new("Sector", "bmv.bmvmarketdata.product25.intra.v1.1.sector", ftypes.INT8, nil, nil, nil, "See Industry Classification on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.securities = ProtoField.new("Securities", "bmv.bmvmarketdata.product25.intra.v1.1.securities", ftypes.DOUBLE, nil, nil, nil, "Number of Securities of the underlying value")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.sells = ProtoField.new("Sells", "bmv.bmvmarketdata.product25.intra.v1.1.sells", ftypes.STRING, nil, nil, nil, "Short code of the Selling Exchange (BMV and BIVA)")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.send_time = ProtoField.new("Send Time", "bmv.bmvmarketdata.product25.intra.v1.1.sendtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Send time of administrative recess. Used only in case of administrative recess notices.")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.send_time_utc = ProtoField.new("Send Time", "bmv.bmvmarketdata.product25.intra.v1.1.sendtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Send time of administrative recess. Used only in case of administrative recess notices.")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.sequence_number = ProtoField.new("Sequence Number", "bmv.bmvmarketdata.product25.intra.v1.1.sequencenumber", ftypes.INT32, nil, nil, nil, "Sequence number of the first message attached to header")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.series = ProtoField.new("Series", "bmv.bmvmarketdata.product25.intra.v1.1.series", ftypes.STRING, nil, nil, nil, "Code of the Series")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.session = ProtoField.new("Session", "bmv.bmvmarketdata.product25.intra.v1.1.session", ftypes.INT8, nil, nil, nil, "Current session identifier")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.sets_price = ProtoField.new("Sets Price", "bmv.bmvmarketdata.product25.intra.v1.1.setsprice", ftypes.STRING, nil, nil, nil, "If the Value is 1, it will be construed as true, in any other case it will be false.")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.settlement = ProtoField.new("Settlement", "bmv.bmvmarketdata.product25.intra.v1.1.settlement", ftypes.STRING, nil, nil, nil, "See Catalogue of Types of Settlement on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.status = ProtoField.new("Status", "bmv.bmvmarketdata.product25.intra.v1.1.status", ftypes.STRING, nil, nil, nil, "New status of the instrument. See Catalogue of status changes. on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.sub_industry = ProtoField.new("Sub Industry", "bmv.bmvmarketdata.product25.intra.v1.1.subindustry", ftypes.INT8, nil, nil, nil, "See Industry Classification on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.sub_sector = ProtoField.new("Sub Sector", "bmv.bmvmarketdata.product25.intra.v1.1.subsector", ftypes.INT8, nil, nil, nil, "See Industry Classification on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.term_days = ProtoField.new("Term Days", "bmv.bmvmarketdata.product25.intra.v1.1.termdays", ftypes.INT16, nil, nil, nil, "Term days of the issuance")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.theoretical_price = ProtoField.new("Theoretical Price", "bmv.bmvmarketdata.product25.intra.v1.1.theoreticalprice", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.time_of_the_trade = ProtoField.new("Time Of The Trade", "bmv.bmvmarketdata.product25.intra.v1.1.timeofthetrade", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time when the transaction took place")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.time_of_the_trade_utc = ProtoField.new("Time Of The Trade", "bmv.bmvmarketdata.product25.intra.v1.1.timeofthetrade.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time when the transaction took place")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.total_messages = ProtoField.new("Total Messages", "bmv.bmvmarketdata.product25.intra.v1.1.totalmessages", ftypes.INT8, nil, nil, nil, "Number of messages after the header")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.trades_rate_price = ProtoField.new("Trades Rate Price", "bmv.bmvmarketdata.product25.intra.v1.1.tradesrateprice", ftypes.STRING, nil, nil, nil, "T - Rate P - Price \" \"- By default")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.trading_company = ProtoField.new("Trading Company", "bmv.bmvmarketdata.product25.intra.v1.1.tradingcompany", ftypes.STRING, nil, nil, nil, "Code of the trading company of the investment fund")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.type_of_agreement = ProtoField.new("Type Of Agreement", "bmv.bmvmarketdata.product25.intra.v1.1.typeofagreement", ftypes.STRING, nil, nil, nil, "See Catalogue of Type of Agreement on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.type_of_trading = ProtoField.new("Type Of Trading", "bmv.bmvmarketdata.product25.intra.v1.1.typeoftrading", ftypes.STRING, nil, nil, nil, "See Catalogue of Type of BIVA operations on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.type_of_value = ProtoField.new("Type Of Value", "bmv.bmvmarketdata.product25.intra.v1.1.typeofvalue", ftypes.STRING, nil, nil, nil, "Code of the Type Value")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.type_of_warrant = ProtoField.new("Type Of Warrant", "bmv.bmvmarketdata.product25.intra.v1.1.typeofwarrant", ftypes.STRING, nil, nil, nil, "\"C\"- Purchase \"V\"- Sale")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.underlying_issuing_company = ProtoField.new("Underlying Issuing Company", "bmv.bmvmarketdata.product25.intra.v1.1.underlyingissuingcompany", ftypes.STRING, nil, nil, nil, "Code of the issuing company of the underlying value")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.underlying_series = ProtoField.new("Underlying Series", "bmv.bmvmarketdata.product25.intra.v1.1.underlyingseries", ftypes.STRING, nil, nil, nil, "Code of the series of the underlying value")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.value_of_type = ProtoField.new("Value Of Type", "bmv.bmvmarketdata.product25.intra.v1.1.valueoftype", ftypes.STRING, nil, nil, nil, "Code of the Type of Value")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.volatility = ProtoField.new("Volatility", "bmv.bmvmarketdata.product25.intra.v1.1.volatility", ftypes.DOUBLE, nil, nil, nil, "Volatility of the instrument")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.volume = ProtoField.new("Volume", "bmv.bmvmarketdata.product25.intra.v1.1.volume", ftypes.INT64, nil, nil, nil, "Maximum volume to be traded")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.weighted_average_price = ProtoField.new("Weighted Average Price", "bmv.bmvmarketdata.product25.intra.v1.1.weightedaverageprice", ftypes.DOUBLE, nil, nil, nil, "Average price of the instrument")

-- Bmv BmvMarketData Product25 Intra 1.1 Framing
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.intra_multicast_header = ProtoField.new("INTRA Multicast Header", "bmv.bmvmarketdata.product25.intra.v1.1.intramulticastheader", ftypes.STRING, nil, nil, nil, "BMV INTRA Multicast Header")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.message_block = ProtoField.new("Message Block", "bmv.bmvmarketdata.product25.intra.v1.1.messageblock", ftypes.STRING, nil, nil, nil, "BMV INTRA Multicast message block")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.message_header = ProtoField.new("Message Header", "bmv.bmvmarketdata.product25.intra.v1.1.messageheader", ftypes.STRING, nil, nil, nil, "Message length and message type")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.packet = ProtoField.new("Packet", "bmv.bmvmarketdata.product25.intra.v1.1.packet", ftypes.STRING, nil, nil, nil, "Bmv INTRA Multicast Udp Packet")

-- Bmv BmvMarketData Product25 1.1 Application Messages
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.catalog_for_instruments_belonging_to_the_capital_warrants_market_message = ProtoField.new("Catalog For Instruments Belonging To The Capital Warrants Market Message", "bmv.bmvmarketdata.product25.intra.v1.1.catalogforinstrumentsbelongingtothecapitalwarrantsmarketmessage", ftypes.STRING, nil, nil, nil, "Catalogue for instruments pertaining to the Equities Warrants market.")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.catalog_for_instruments_belonging_to_the_local_and_global_stock_market_message = ProtoField.new("Catalog For Instruments Belonging To The Local And Global Stock Market Message", "bmv.bmvmarketdata.product25.intra.v1.1.catalogforinstrumentsbelongingtothelocalandglobalstockmarketmessage", ftypes.STRING, nil, nil, nil, "Catalog of instruments from the local and global stock markets.")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.catalog_sent_for_instruments_belonging_to_capital_tracs_message = ProtoField.new("Catalog Sent For Instruments Belonging To Capital Tracs Message", "bmv.bmvmarketdata.product25.intra.v1.1.catalogsentforinstrumentsbelongingtocapitaltracsmessage", ftypes.STRING, nil, nil, nil, "Catalogue sent for instruments pertaining to the equities TRACS.")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.catalog_sent_for_instruments_belonging_to_mutual_funds_message = ProtoField.new("Catalog Sent For Instruments Belonging To Mutual Funds Message", "bmv.bmvmarketdata.product25.intra.v1.1.catalogsentforinstrumentsbelongingtomutualfundsmessage", ftypes.STRING, nil, nil, nil, "Catalogue sent for instrument pertaining to the investment companies.")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.catalogue_of_debt_and_metals_instruments_message = ProtoField.new("Catalogue Of Debt And Metals Instruments Message", "bmv.bmvmarketdata.product25.intra.v1.1.catalogueofdebtandmetalsinstrumentsmessage", ftypes.STRING, nil, nil, nil, "Catalogue sent for instruments pertaining to the Local Fixed rate, Global Fixed rate and metals markets.")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.changes_in_status_message = ProtoField.new("Changes In Status Message", "bmv.bmvmarketdata.product25.intra.v1.1.changesinstatusmessage", ftypes.STRING, nil, nil, nil, "This message is sent when there has been a change in the status of the instruments.")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.consolidated_inav_message = ProtoField.new("Consolidated Inav Message", "bmv.bmvmarketdata.product25.intra.v1.1.consolidatedinavmessage", ftypes.STRING, nil, nil, nil, "Disclosure of the TRACS during the trading hours of the ongoing market.")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.consolidated_trade_cancellation_message = ProtoField.new("Consolidated Trade Cancellation Message", "bmv.bmvmarketdata.product25.intra.v1.1.consolidatedtradecancellationmessage", ftypes.STRING, nil, nil, nil, "This message in sent when a transaction is cancelled from BMV or BIVA system.")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.equities_market_trades_message = ProtoField.new("Equities Market Trades Message", "bmv.bmvmarketdata.product25.intra.v1.1.equitiesmarkettradesmessage", ftypes.STRING, nil, nil, nil, "Informs about any transaction which was accepted at the BMV or BIVA.")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.existence_of_bids_at_mid_price_message = ProtoField.new("Existence Of Bids At Mid Price Message", "bmv.bmvmarketdata.product25.intra.v1.1.existenceofbidsatmidpricemessage", ftypes.STRING, nil, nil, nil, "This message is generated when an instrument enters a bid in the hidden electronic book At Mean Price.")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.mutual_funds_trades_message = ProtoField.new("Mutual Funds Trades Message", "bmv.bmvmarketdata.product25.intra.v1.1.mutualfundstradesmessage", ftypes.STRING, nil, nil, nil, "Any transaction made in mutual funds is reported.")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.opening_of_continuous_auctions_message = ProtoField.new("Opening Of Continuous Auctions Message", "bmv.bmvmarketdata.product25.intra.v1.1.openingofcontinuousauctionsmessage", ftypes.STRING, nil, nil, nil, "The message is sent when one of the ongoing, volatility or SIC bidding sessions is generated.")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.probable_price_of_allocation_message = ProtoField.new("Probable Price Of Allocation Message", "bmv.bmvmarketdata.product25.intra.v1.1.probablepriceofallocationmessage", ftypes.STRING, nil, nil, nil, "The message is sent during any type of bidding (Opening, Ongoing, Volatility and Intraday) and only in the instruments where there already is a virtual term matching or pre-allotment.")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.reference_price_message = ProtoField.new("Reference Price Message", "bmv.bmvmarketdata.product25.intra.v1.1.referencepricemessage", ftypes.STRING, nil, nil, nil, "This message is sent to define the reference price of an instrument.")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.relation_between_bmvbiva_instruments_message = ProtoField.new("Relation Between Bmvbiva Instruments Message", "bmv.bmvmarketdata.product25.intra.v1.1.relationbetweenbmvbivainstrumentsmessage", ftypes.STRING, nil, nil, nil, "Relation between identifiers of instruments between BIVA and BMV.")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.system_events_message = ProtoField.new("System Events Message", "bmv.bmvmarketdata.product25.intra.v1.1.systemeventsmessage", ftypes.STRING, nil, nil, nil, "The system events message is used to inform that an event has taken place, which needs to be disclosed to the public for its attention.")
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.weighted_average_price_message = ProtoField.new("Weighted Average Price Message", "bmv.bmvmarketdata.product25.intra.v1.1.weightedaveragepricemessage", ftypes.STRING, nil, nil, nil, "This message will have the weighted average price (WAP) per instrument and is sent for each transaction generated within the calculation period of the WAP (last 20 minutes of the trading session); when there are no more trades in this period, the message is sent with the Weighted Average Price in zeros.")

-- Bmv BmvMarketData Product25 Intra 1.1 Generated Fields
omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.message_block_index = ProtoField.new("Message Block Index", "bmv.bmvmarketdata.product25.intra.v1.1.messageblockindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Bmv BmvMarketData Product25 Intra 1.1 Formatting
-----------------------------------------------------------------------

-- Text field character encoding (Wireshark ENC_ constant)
bmv_bmvmarketdata_product25_intra_v1_1.text_encoding = ENC_ASCII

-- timestamp format
local timestamp_format_enum = {
  { 1, "Full DateTime Local", 2 },
  { 2, "Full DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=Full DateTime Local, 3=Full DateTime Utc
bmv_bmvmarketdata_product25_intra_v1_1.timestamp_format = 2


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Bmv BmvMarketData Product25 Intra 1.1 Element Dissection Options
show.application_messages = true
show.headers = true
show.structs = true
show.indexes = true

-- Register Bmv BmvMarketData Product25 Intra 1.1 Show Options
omi_bmv_bmvmarketdata_product25_intra_v1_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_bmv_bmvmarketdata_product25_intra_v1_1.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_bmv_bmvmarketdata_product25_intra_v1_1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_bmv_bmvmarketdata_product25_intra_v1_1.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_bmv_bmvmarketdata_product25_intra_v1_1.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_bmv_bmvmarketdata_product25_intra_v1_1.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_bmv_bmvmarketdata_product25_intra_v1_1.prefs.show_application_messages then
    show.application_messages = omi_bmv_bmvmarketdata_product25_intra_v1_1.prefs.show_application_messages
  end
  if show.headers ~= omi_bmv_bmvmarketdata_product25_intra_v1_1.prefs.show_headers then
    show.headers = omi_bmv_bmvmarketdata_product25_intra_v1_1.prefs.show_headers
  end
  if show.structs ~= omi_bmv_bmvmarketdata_product25_intra_v1_1.prefs.show_structs then
    show.structs = omi_bmv_bmvmarketdata_product25_intra_v1_1.prefs.show_structs
  end
  if show.indexes ~= omi_bmv_bmvmarketdata_product25_intra_v1_1.prefs.show_indexes then
    show.indexes = omi_bmv_bmvmarketdata_product25_intra_v1_1.prefs.show_indexes
  end
  if bmv_bmvmarketdata_product25_intra_v1_1.timestamp_format ~= omi_bmv_bmvmarketdata_product25_intra_v1_1.prefs.timestamp_format then
    bmv_bmvmarketdata_product25_intra_v1_1.timestamp_format = omi_bmv_bmvmarketdata_product25_intra_v1_1.prefs.timestamp_format
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
-- Bmv BmvMarketData Product25 Intra 1.1 Fields
-----------------------------------------------------------------------

-- Amount
bmv_bmvmarketdata_product25_intra_v1_1.amount = {}

-- Size: Amount
bmv_bmvmarketdata_product25_intra_v1_1.amount.size = 8

-- Display: Amount
bmv_bmvmarketdata_product25_intra_v1_1.amount.display = function(value)
  return "Amount: "..value
end

-- Translate: Amount
bmv_bmvmarketdata_product25_intra_v1_1.amount.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Amount
bmv_bmvmarketdata_product25_intra_v1_1.amount.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.amount.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product25_intra_v1_1.amount.translate(raw)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.amount, range, value, display)

  return offset + length, value
end

-- Amount Placed
bmv_bmvmarketdata_product25_intra_v1_1.amount_placed = {}

-- Size: Amount Placed
bmv_bmvmarketdata_product25_intra_v1_1.amount_placed.size = 8

-- Display: Amount Placed
bmv_bmvmarketdata_product25_intra_v1_1.amount_placed.display = function(value)
  return "Amount Placed: "..value
end

-- Dissect: Amount Placed
bmv_bmvmarketdata_product25_intra_v1_1.amount_placed.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.amount_placed.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_product25_intra_v1_1.amount_placed.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.amount_placed, range, value, display)

  return offset + length, value
end

-- Auction Indicator
bmv_bmvmarketdata_product25_intra_v1_1.auction_indicator = {}

-- Size: Auction Indicator
bmv_bmvmarketdata_product25_intra_v1_1.auction_indicator.size = 1

-- Display: Auction Indicator
bmv_bmvmarketdata_product25_intra_v1_1.auction_indicator.display = function(value)
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
bmv_bmvmarketdata_product25_intra_v1_1.auction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.auction_indicator.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.auction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.auction_indicator, range, value, display)

  return offset + length, value
end

-- Auction Session End Time
bmv_bmvmarketdata_product25_intra_v1_1.auction_session_end_time = {}

-- Size: Auction Session End Time
bmv_bmvmarketdata_product25_intra_v1_1.auction_session_end_time.size = 8

-- Dissect: Auction Session End Time
bmv_bmvmarketdata_product25_intra_v1_1.auction_session_end_time.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.auction_session_end_time.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.auction_session_end_time
  if bmv_bmvmarketdata_product25_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.auction_session_end_time_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Auction Session Startup Time
bmv_bmvmarketdata_product25_intra_v1_1.auction_session_startup_time = {}

-- Size: Auction Session Startup Time
bmv_bmvmarketdata_product25_intra_v1_1.auction_session_startup_time.size = 8

-- Dissect: Auction Session Startup Time
bmv_bmvmarketdata_product25_intra_v1_1.auction_session_startup_time.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.auction_session_startup_time.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.auction_session_startup_time
  if bmv_bmvmarketdata_product25_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.auction_session_startup_time_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Bids Existing
bmv_bmvmarketdata_product25_intra_v1_1.bids_existing = {}

-- Size: Bids Existing
bmv_bmvmarketdata_product25_intra_v1_1.bids_existing.size = 1

-- Display: Bids Existing
bmv_bmvmarketdata_product25_intra_v1_1.bids_existing.display = function(value)
  return "Bids Existing: "..value
end

-- Dissect: Bids Existing
bmv_bmvmarketdata_product25_intra_v1_1.bids_existing.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.bids_existing.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.bids_existing.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.bids_existing, range, value, display)

  return offset + length, value
end

-- Biva Instrument
bmv_bmvmarketdata_product25_intra_v1_1.biva_instrument = {}

-- Size: Biva Instrument
bmv_bmvmarketdata_product25_intra_v1_1.biva_instrument.size = 4

-- Display: Biva Instrument
bmv_bmvmarketdata_product25_intra_v1_1.biva_instrument.display = function(value)
  return "Biva Instrument: "..value
end

-- Dissect: Biva Instrument
bmv_bmvmarketdata_product25_intra_v1_1.biva_instrument.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.biva_instrument.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product25_intra_v1_1.biva_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.biva_instrument, range, value, display)

  return offset + length, value
end

-- Book Value
bmv_bmvmarketdata_product25_intra_v1_1.book_value = {}

-- Size: Book Value
bmv_bmvmarketdata_product25_intra_v1_1.book_value.size = 8

-- Display: Book Value
bmv_bmvmarketdata_product25_intra_v1_1.book_value.display = function(value)
  return "Book Value: "..value
end

-- Translate: Book Value
bmv_bmvmarketdata_product25_intra_v1_1.book_value.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Book Value
bmv_bmvmarketdata_product25_intra_v1_1.book_value.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.book_value.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product25_intra_v1_1.book_value.translate(raw)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.book_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.book_value, range, value, display)

  return offset + length, value
end

-- Code Of Event
bmv_bmvmarketdata_product25_intra_v1_1.code_of_event = {}

-- Size: Code Of Event
bmv_bmvmarketdata_product25_intra_v1_1.code_of_event.size = 1

-- Display: Code Of Event
bmv_bmvmarketdata_product25_intra_v1_1.code_of_event.labels = {
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

bmv_bmvmarketdata_product25_intra_v1_1.code_of_event.display = function(value)
  return bmv_bmvmarketdata_product25_intra_v1_1.code_of_event.labels[value] or "Code Of Event: Unknown("..value..")"
end

-- Dissect: Code Of Event
bmv_bmvmarketdata_product25_intra_v1_1.code_of_event.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.code_of_event.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.code_of_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.code_of_event, range, value, display)

  return offset + length, value
end

-- Component In Cash
bmv_bmvmarketdata_product25_intra_v1_1.component_in_cash = {}

-- Size: Component In Cash
bmv_bmvmarketdata_product25_intra_v1_1.component_in_cash.size = 8

-- Display: Component In Cash
bmv_bmvmarketdata_product25_intra_v1_1.component_in_cash.display = function(value)
  return "Component In Cash: "..value
end

-- Translate: Component In Cash
bmv_bmvmarketdata_product25_intra_v1_1.component_in_cash.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Component In Cash
bmv_bmvmarketdata_product25_intra_v1_1.component_in_cash.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.component_in_cash.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product25_intra_v1_1.component_in_cash.translate(raw)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.component_in_cash.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.component_in_cash, range, value, display)

  return offset + length, value
end

-- Consecutive Number Of The Trade
bmv_bmvmarketdata_product25_intra_v1_1.consecutive_number_of_the_trade = {}

-- Size: Consecutive Number Of The Trade
bmv_bmvmarketdata_product25_intra_v1_1.consecutive_number_of_the_trade.size = 8

-- Display: Consecutive Number Of The Trade
bmv_bmvmarketdata_product25_intra_v1_1.consecutive_number_of_the_trade.display = function(value)
  return "Consecutive Number Of The Trade: "..value
end

-- Dissect: Consecutive Number Of The Trade
bmv_bmvmarketdata_product25_intra_v1_1.consecutive_number_of_the_trade.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.consecutive_number_of_the_trade.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_product25_intra_v1_1.consecutive_number_of_the_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.consecutive_number_of_the_trade, range, value, display)

  return offset + length, value
end

-- Coupon In Effect
bmv_bmvmarketdata_product25_intra_v1_1.coupon_in_effect = {}

-- Size: Coupon In Effect
bmv_bmvmarketdata_product25_intra_v1_1.coupon_in_effect.size = 2

-- Display: Coupon In Effect
bmv_bmvmarketdata_product25_intra_v1_1.coupon_in_effect.display = function(value)
  return "Coupon In Effect: "..value
end

-- Dissect: Coupon In Effect
bmv_bmvmarketdata_product25_intra_v1_1.coupon_in_effect.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.coupon_in_effect.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product25_intra_v1_1.coupon_in_effect.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.coupon_in_effect, range, value, display)

  return offset + length, value
end

-- Coupon Period
bmv_bmvmarketdata_product25_intra_v1_1.coupon_period = {}

-- Size: Coupon Period
bmv_bmvmarketdata_product25_intra_v1_1.coupon_period.size = 2

-- Display: Coupon Period
bmv_bmvmarketdata_product25_intra_v1_1.coupon_period.display = function(value)
  return "Coupon Period: "..value
end

-- Dissect: Coupon Period
bmv_bmvmarketdata_product25_intra_v1_1.coupon_period.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.coupon_period.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product25_intra_v1_1.coupon_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.coupon_period, range, value, display)

  return offset + length, value
end

-- Current Nominal Value
bmv_bmvmarketdata_product25_intra_v1_1.current_nominal_value = {}

-- Size: Current Nominal Value
bmv_bmvmarketdata_product25_intra_v1_1.current_nominal_value.size = 8

-- Display: Current Nominal Value
bmv_bmvmarketdata_product25_intra_v1_1.current_nominal_value.display = function(value)
  return "Current Nominal Value: "..value
end

-- Translate: Current Nominal Value
bmv_bmvmarketdata_product25_intra_v1_1.current_nominal_value.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Current Nominal Value
bmv_bmvmarketdata_product25_intra_v1_1.current_nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.current_nominal_value.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product25_intra_v1_1.current_nominal_value.translate(raw)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.current_nominal_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.current_nominal_value, range, value, display)

  return offset + length, value
end

-- Current Theoretical Price
bmv_bmvmarketdata_product25_intra_v1_1.current_theoretical_price = {}

-- Size: Current Theoretical Price
bmv_bmvmarketdata_product25_intra_v1_1.current_theoretical_price.size = 8

-- Display: Current Theoretical Price
bmv_bmvmarketdata_product25_intra_v1_1.current_theoretical_price.display = function(value)
  return "Current Theoretical Price: "..value
end

-- Translate: Current Theoretical Price
bmv_bmvmarketdata_product25_intra_v1_1.current_theoretical_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Current Theoretical Price
bmv_bmvmarketdata_product25_intra_v1_1.current_theoretical_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.current_theoretical_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product25_intra_v1_1.current_theoretical_price.translate(raw)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.current_theoretical_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.current_theoretical_price, range, value, display)

  return offset + length, value
end

-- Date Of Issuance
bmv_bmvmarketdata_product25_intra_v1_1.date_of_issuance = {}

-- Size: Date Of Issuance
bmv_bmvmarketdata_product25_intra_v1_1.date_of_issuance.size = 8

-- Dissect: Date Of Issuance
bmv_bmvmarketdata_product25_intra_v1_1.date_of_issuance.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.date_of_issuance.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.date_of_issuance
  if bmv_bmvmarketdata_product25_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.date_of_issuance_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Date Of Maturity
bmv_bmvmarketdata_product25_intra_v1_1.date_of_maturity = {}

-- Size: Date Of Maturity
bmv_bmvmarketdata_product25_intra_v1_1.date_of_maturity.size = 8

-- Dissect: Date Of Maturity
bmv_bmvmarketdata_product25_intra_v1_1.date_of_maturity.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.date_of_maturity.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.date_of_maturity
  if bmv_bmvmarketdata_product25_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.date_of_maturity_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Date Of Reference
bmv_bmvmarketdata_product25_intra_v1_1.date_of_reference = {}

-- Size: Date Of Reference
bmv_bmvmarketdata_product25_intra_v1_1.date_of_reference.size = 8

-- Dissect: Date Of Reference
bmv_bmvmarketdata_product25_intra_v1_1.date_of_reference.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.date_of_reference.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.date_of_reference
  if bmv_bmvmarketdata_product25_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.date_of_reference_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Date Of The Trade
bmv_bmvmarketdata_product25_intra_v1_1.date_of_the_trade = {}

-- Size: Date Of The Trade
bmv_bmvmarketdata_product25_intra_v1_1.date_of_the_trade.size = 8

-- Dissect: Date Of The Trade
bmv_bmvmarketdata_product25_intra_v1_1.date_of_the_trade.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.date_of_the_trade.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.date_of_the_trade
  if bmv_bmvmarketdata_product25_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.date_of_the_trade_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Datetime
bmv_bmvmarketdata_product25_intra_v1_1.datetime = {}

-- Size: Datetime
bmv_bmvmarketdata_product25_intra_v1_1.datetime.size = 8

-- Dissect: Datetime
bmv_bmvmarketdata_product25_intra_v1_1.datetime.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.datetime.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.datetime
  if bmv_bmvmarketdata_product25_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.datetime_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- End Time
bmv_bmvmarketdata_product25_intra_v1_1.end_time = {}

-- Size: End Time
bmv_bmvmarketdata_product25_intra_v1_1.end_time.size = 8

-- Dissect: End Time
bmv_bmvmarketdata_product25_intra_v1_1.end_time.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.end_time.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.end_time
  if bmv_bmvmarketdata_product25_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.end_time_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Exchange
bmv_bmvmarketdata_product25_intra_v1_1.exchange = {}

-- Size: Exchange
bmv_bmvmarketdata_product25_intra_v1_1.exchange.size = 1

-- Display: Exchange
bmv_bmvmarketdata_product25_intra_v1_1.exchange.labels = {
  ["M"] = "Exchange: Bmv (M)",
  ["I"] = "Exchange: Biva (I)",
}

bmv_bmvmarketdata_product25_intra_v1_1.exchange.display = function(value)
  return bmv_bmvmarketdata_product25_intra_v1_1.exchange.labels[value] or "Exchange: Unknown("..value..")"
end

-- Dissect: Exchange
bmv_bmvmarketdata_product25_intra_v1_1.exchange.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.exchange.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.exchange.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.exchange, range, value, display)

  return offset + length, value
end

-- Excluded Securities
bmv_bmvmarketdata_product25_intra_v1_1.excluded_securities = {}

-- Size: Excluded Securities
bmv_bmvmarketdata_product25_intra_v1_1.excluded_securities.size = 8

-- Display: Excluded Securities
bmv_bmvmarketdata_product25_intra_v1_1.excluded_securities.display = function(value)
  return "Excluded Securities: "..value
end

-- Translate: Excluded Securities
bmv_bmvmarketdata_product25_intra_v1_1.excluded_securities.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Excluded Securities
bmv_bmvmarketdata_product25_intra_v1_1.excluded_securities.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.excluded_securities.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product25_intra_v1_1.excluded_securities.translate(raw)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.excluded_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.excluded_securities, range, value, display)

  return offset + length, value
end

-- Excluded Value
bmv_bmvmarketdata_product25_intra_v1_1.excluded_value = {}

-- Size: Excluded Value
bmv_bmvmarketdata_product25_intra_v1_1.excluded_value.size = 8

-- Display: Excluded Value
bmv_bmvmarketdata_product25_intra_v1_1.excluded_value.display = function(value)
  return "Excluded Value: "..value
end

-- Translate: Excluded Value
bmv_bmvmarketdata_product25_intra_v1_1.excluded_value.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Excluded Value
bmv_bmvmarketdata_product25_intra_v1_1.excluded_value.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.excluded_value.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product25_intra_v1_1.excluded_value.translate(raw)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.excluded_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.excluded_value, range, value, display)

  return offset + length, value
end

-- Group
bmv_bmvmarketdata_product25_intra_v1_1.group = {}

-- Size: Group
bmv_bmvmarketdata_product25_intra_v1_1.group.size = 8

-- Display: Group
bmv_bmvmarketdata_product25_intra_v1_1.group.display = function(value)
  return "Group: "..value
end

-- Dissect: Group
bmv_bmvmarketdata_product25_intra_v1_1.group.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.group.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product25_intra_v1_1.group.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.group, range, value, display)

  return offset + length, value
end

-- Indicator
bmv_bmvmarketdata_product25_intra_v1_1.indicator = {}

-- Size: Indicator
bmv_bmvmarketdata_product25_intra_v1_1.indicator.size = 1

-- Display: Indicator
bmv_bmvmarketdata_product25_intra_v1_1.indicator.labels = {
  ["N"] = "Indicator: No (N)",
  ["Y"] = "Indicator: Yes (Y)",
}

bmv_bmvmarketdata_product25_intra_v1_1.indicator.display = function(value)
  return bmv_bmvmarketdata_product25_intra_v1_1.indicator.labels[value] or "Indicator: Unknown("..value..")"
end

-- Dissect: Indicator
bmv_bmvmarketdata_product25_intra_v1_1.indicator.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.indicator.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.indicator, range, value, display)

  return offset + length, value
end

-- Industry
bmv_bmvmarketdata_product25_intra_v1_1.industry = {}

-- Size: Industry
bmv_bmvmarketdata_product25_intra_v1_1.industry.size = 1

-- Display: Industry
bmv_bmvmarketdata_product25_intra_v1_1.industry.display = function(value)
  return "Industry: "..value
end

-- Dissect: Industry
bmv_bmvmarketdata_product25_intra_v1_1.industry.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.industry.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product25_intra_v1_1.industry.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.industry, range, value, display)

  return offset + length, value
end

-- Instrument Number
bmv_bmvmarketdata_product25_intra_v1_1.instrument_number = {}

-- Size: Instrument Number
bmv_bmvmarketdata_product25_intra_v1_1.instrument_number.size = 4

-- Display: Instrument Number
bmv_bmvmarketdata_product25_intra_v1_1.instrument_number.display = function(value)
  return "Instrument Number: "..value
end

-- Dissect: Instrument Number
bmv_bmvmarketdata_product25_intra_v1_1.instrument_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.instrument_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product25_intra_v1_1.instrument_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.instrument_number, range, value, display)

  return offset + length, value
end

-- Isin
bmv_bmvmarketdata_product25_intra_v1_1.isin = {}

-- Size: Isin
bmv_bmvmarketdata_product25_intra_v1_1.isin.size = 12

-- Display: Isin
bmv_bmvmarketdata_product25_intra_v1_1.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
bmv_bmvmarketdata_product25_intra_v1_1.isin.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product25_intra_v1_1.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.isin, range, value, display)

  return offset + length, value
end

-- Issuance
bmv_bmvmarketdata_product25_intra_v1_1.issuance = {}

-- Size: Issuance
bmv_bmvmarketdata_product25_intra_v1_1.issuance.size = 6

-- Display: Issuance
bmv_bmvmarketdata_product25_intra_v1_1.issuance.display = function(value)
  return "Issuance: "..value
end

-- Dissect: Issuance
bmv_bmvmarketdata_product25_intra_v1_1.issuance.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.issuance.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product25_intra_v1_1.issuance.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.issuance, range, value, display)

  return offset + length, value
end

-- Issuing Company
bmv_bmvmarketdata_product25_intra_v1_1.issuing_company = {}

-- Size: Issuing Company
bmv_bmvmarketdata_product25_intra_v1_1.issuing_company.size = 7

-- Display: Issuing Company
bmv_bmvmarketdata_product25_intra_v1_1.issuing_company.display = function(value)
  return "Issuing Company: "..value
end

-- Dissect: Issuing Company
bmv_bmvmarketdata_product25_intra_v1_1.issuing_company.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.issuing_company.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product25_intra_v1_1.issuing_company.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.issuing_company, range, value, display)

  return offset + length, value
end

-- Last Price
bmv_bmvmarketdata_product25_intra_v1_1.last_price = {}

-- Size: Last Price
bmv_bmvmarketdata_product25_intra_v1_1.last_price.size = 8

-- Display: Last Price
bmv_bmvmarketdata_product25_intra_v1_1.last_price.display = function(value)
  return "Last Price: "..value
end

-- Translate: Last Price
bmv_bmvmarketdata_product25_intra_v1_1.last_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Price
bmv_bmvmarketdata_product25_intra_v1_1.last_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.last_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product25_intra_v1_1.last_price.translate(raw)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.last_price, range, value, display)

  return offset + length, value
end

-- Length
bmv_bmvmarketdata_product25_intra_v1_1.length = {}

-- Size: Length
bmv_bmvmarketdata_product25_intra_v1_1.length.size = 2

-- Display: Length
bmv_bmvmarketdata_product25_intra_v1_1.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
bmv_bmvmarketdata_product25_intra_v1_1.length.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product25_intra_v1_1.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.length, range, value, display)

  return offset + length, value
end

-- Market
bmv_bmvmarketdata_product25_intra_v1_1.market = {}

-- Size: Market
bmv_bmvmarketdata_product25_intra_v1_1.market.size = 1

-- Display: Market
bmv_bmvmarketdata_product25_intra_v1_1.market.display = function(value)
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
bmv_bmvmarketdata_product25_intra_v1_1.market.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.market.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.market.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.market, range, value, display)

  return offset + length, value
end

-- Market Data Group
bmv_bmvmarketdata_product25_intra_v1_1.market_data_group = {}

-- Size: Market Data Group
bmv_bmvmarketdata_product25_intra_v1_1.market_data_group.size = 1

-- Display: Market Data Group
bmv_bmvmarketdata_product25_intra_v1_1.market_data_group.labels = {
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

bmv_bmvmarketdata_product25_intra_v1_1.market_data_group.display = function(value)
  return bmv_bmvmarketdata_product25_intra_v1_1.market_data_group.labels[value] or "Market Data Group: Unknown("..value..")"
end

-- Dissect: Market Data Group
bmv_bmvmarketdata_product25_intra_v1_1.market_data_group.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.market_data_group.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product25_intra_v1_1.market_data_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Marketability
bmv_bmvmarketdata_product25_intra_v1_1.marketability = {}

-- Size: Marketability
bmv_bmvmarketdata_product25_intra_v1_1.marketability.size = 1

-- Display: Marketability
bmv_bmvmarketdata_product25_intra_v1_1.marketability.display = function(value)
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
bmv_bmvmarketdata_product25_intra_v1_1.marketability.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.marketability.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.marketability.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.marketability, range, value, display)

  return offset + length, value
end

-- Message Length
bmv_bmvmarketdata_product25_intra_v1_1.message_length = {}

-- Size: Message Length
bmv_bmvmarketdata_product25_intra_v1_1.message_length.size = 2

-- Display: Message Length
bmv_bmvmarketdata_product25_intra_v1_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
bmv_bmvmarketdata_product25_intra_v1_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.message_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product25_intra_v1_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
bmv_bmvmarketdata_product25_intra_v1_1.message_type = {}

-- Size: Message Type
bmv_bmvmarketdata_product25_intra_v1_1.message_type.size = 1

-- Display: Message Type
bmv_bmvmarketdata_product25_intra_v1_1.message_type.display = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
bmv_bmvmarketdata_product25_intra_v1_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bmv_bmvmarketdata_product25_intra_v1_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mse Instrument Number
bmv_bmvmarketdata_product25_intra_v1_1.mse_instrument_number = {}

-- Size: Mse Instrument Number
bmv_bmvmarketdata_product25_intra_v1_1.mse_instrument_number.size = 4

-- Display: Mse Instrument Number
bmv_bmvmarketdata_product25_intra_v1_1.mse_instrument_number.display = function(value)
  return "Mse Instrument Number: "..value
end

-- Dissect: Mse Instrument Number
bmv_bmvmarketdata_product25_intra_v1_1.mse_instrument_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.mse_instrument_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product25_intra_v1_1.mse_instrument_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.mse_instrument_number, range, value, display)

  return offset + length, value
end

-- Name Of The Trac
bmv_bmvmarketdata_product25_intra_v1_1.name_of_the_trac = {}

-- Size: Name Of The Trac
bmv_bmvmarketdata_product25_intra_v1_1.name_of_the_trac.size = 8

-- Display: Name Of The Trac
bmv_bmvmarketdata_product25_intra_v1_1.name_of_the_trac.display = function(value)
  return "Name Of The Trac: "..value
end

-- Dissect: Name Of The Trac
bmv_bmvmarketdata_product25_intra_v1_1.name_of_the_trac.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.name_of_the_trac.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product25_intra_v1_1.name_of_the_trac.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.name_of_the_trac, range, value, display)

  return offset + length, value
end

-- Number Of Certificates
bmv_bmvmarketdata_product25_intra_v1_1.number_of_certificates = {}

-- Size: Number Of Certificates
bmv_bmvmarketdata_product25_intra_v1_1.number_of_certificates.size = 8

-- Display: Number Of Certificates
bmv_bmvmarketdata_product25_intra_v1_1.number_of_certificates.display = function(value)
  return "Number Of Certificates: "..value
end

-- Dissect: Number Of Certificates
bmv_bmvmarketdata_product25_intra_v1_1.number_of_certificates.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.number_of_certificates.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_product25_intra_v1_1.number_of_certificates.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.number_of_certificates, range, value, display)

  return offset + length, value
end

-- Number Of Purchase Trades
bmv_bmvmarketdata_product25_intra_v1_1.number_of_purchase_trades = {}

-- Size: Number Of Purchase Trades
bmv_bmvmarketdata_product25_intra_v1_1.number_of_purchase_trades.size = 4

-- Display: Number Of Purchase Trades
bmv_bmvmarketdata_product25_intra_v1_1.number_of_purchase_trades.display = function(value)
  return "Number Of Purchase Trades: "..value
end

-- Dissect: Number Of Purchase Trades
bmv_bmvmarketdata_product25_intra_v1_1.number_of_purchase_trades.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.number_of_purchase_trades.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product25_intra_v1_1.number_of_purchase_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.number_of_purchase_trades, range, value, display)

  return offset + length, value
end

-- Number Of Sales Trades
bmv_bmvmarketdata_product25_intra_v1_1.number_of_sales_trades = {}

-- Size: Number Of Sales Trades
bmv_bmvmarketdata_product25_intra_v1_1.number_of_sales_trades.size = 4

-- Display: Number Of Sales Trades
bmv_bmvmarketdata_product25_intra_v1_1.number_of_sales_trades.display = function(value)
  return "Number Of Sales Trades: "..value
end

-- Dissect: Number Of Sales Trades
bmv_bmvmarketdata_product25_intra_v1_1.number_of_sales_trades.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.number_of_sales_trades.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product25_intra_v1_1.number_of_sales_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.number_of_sales_trades, range, value, display)

  return offset + length, value
end

-- Number Of The Bmv Instrument
bmv_bmvmarketdata_product25_intra_v1_1.number_of_the_bmv_instrument = {}

-- Size: Number Of The Bmv Instrument
bmv_bmvmarketdata_product25_intra_v1_1.number_of_the_bmv_instrument.size = 4

-- Display: Number Of The Bmv Instrument
bmv_bmvmarketdata_product25_intra_v1_1.number_of_the_bmv_instrument.display = function(value)
  return "Number Of The Bmv Instrument: "..value
end

-- Dissect: Number Of The Bmv Instrument
bmv_bmvmarketdata_product25_intra_v1_1.number_of_the_bmv_instrument.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.number_of_the_bmv_instrument.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product25_intra_v1_1.number_of_the_bmv_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.number_of_the_bmv_instrument, range, value, display)

  return offset + length, value
end

-- Number Of The Instrument
bmv_bmvmarketdata_product25_intra_v1_1.number_of_the_instrument = {}

-- Size: Number Of The Instrument
bmv_bmvmarketdata_product25_intra_v1_1.number_of_the_instrument.size = 4

-- Display: Number Of The Instrument
bmv_bmvmarketdata_product25_intra_v1_1.number_of_the_instrument.display = function(value)
  return "Number Of The Instrument: "..value
end

-- Dissect: Number Of The Instrument
bmv_bmvmarketdata_product25_intra_v1_1.number_of_the_instrument.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.number_of_the_instrument.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product25_intra_v1_1.number_of_the_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.number_of_the_instrument, range, value, display)

  return offset + length, value
end

-- Number Of The Trac
bmv_bmvmarketdata_product25_intra_v1_1.number_of_the_trac = {}

-- Size: Number Of The Trac
bmv_bmvmarketdata_product25_intra_v1_1.number_of_the_trac.size = 4

-- Display: Number Of The Trac
bmv_bmvmarketdata_product25_intra_v1_1.number_of_the_trac.display = function(value)
  return "Number Of The Trac: "..value
end

-- Dissect: Number Of The Trac
bmv_bmvmarketdata_product25_intra_v1_1.number_of_the_trac.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.number_of_the_trac.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product25_intra_v1_1.number_of_the_trac.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.number_of_the_trac, range, value, display)

  return offset + length, value
end

-- Numerical Marketability
bmv_bmvmarketdata_product25_intra_v1_1.numerical_marketability = {}

-- Size: Numerical Marketability
bmv_bmvmarketdata_product25_intra_v1_1.numerical_marketability.size = 4

-- Display: Numerical Marketability
bmv_bmvmarketdata_product25_intra_v1_1.numerical_marketability.display = function(value)
  return "Numerical Marketability: "..value
end

-- Translate: Numerical Marketability
bmv_bmvmarketdata_product25_intra_v1_1.numerical_marketability.translate = function(raw)
  return raw/10000
end

-- Dissect: Numerical Marketability
bmv_bmvmarketdata_product25_intra_v1_1.numerical_marketability.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.numerical_marketability.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_product25_intra_v1_1.numerical_marketability.translate(raw)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.numerical_marketability.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.numerical_marketability, range, value, display)

  return offset + length, value
end

-- Origin
bmv_bmvmarketdata_product25_intra_v1_1.origin = {}

-- Size: Origin
bmv_bmvmarketdata_product25_intra_v1_1.origin.size = 1

-- Display: Origin
bmv_bmvmarketdata_product25_intra_v1_1.origin.labels = {
  ["M"] = "Origin: Bmv (M)",
  ["I"] = "Origin: Biva (I)",
  ["A"] = "Origin: Both (A)",
}

bmv_bmvmarketdata_product25_intra_v1_1.origin.display = function(value)
  return bmv_bmvmarketdata_product25_intra_v1_1.origin.labels[value] or "Origin: Unknown("..value..")"
end

-- Dissect: Origin
bmv_bmvmarketdata_product25_intra_v1_1.origin.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.origin.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.origin.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.origin, range, value, display)

  return offset + length, value
end

-- Original Nominal Value
bmv_bmvmarketdata_product25_intra_v1_1.original_nominal_value = {}

-- Size: Original Nominal Value
bmv_bmvmarketdata_product25_intra_v1_1.original_nominal_value.size = 8

-- Display: Original Nominal Value
bmv_bmvmarketdata_product25_intra_v1_1.original_nominal_value.display = function(value)
  return "Original Nominal Value: "..value
end

-- Translate: Original Nominal Value
bmv_bmvmarketdata_product25_intra_v1_1.original_nominal_value.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Original Nominal Value
bmv_bmvmarketdata_product25_intra_v1_1.original_nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.original_nominal_value.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product25_intra_v1_1.original_nominal_value.translate(raw)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.original_nominal_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.original_nominal_value, range, value, display)

  return offset + length, value
end

-- Outstanding Shares
bmv_bmvmarketdata_product25_intra_v1_1.outstanding_shares = {}

-- Size: Outstanding Shares
bmv_bmvmarketdata_product25_intra_v1_1.outstanding_shares.size = 8

-- Display: Outstanding Shares
bmv_bmvmarketdata_product25_intra_v1_1.outstanding_shares.display = function(value)
  return "Outstanding Shares: "..value
end

-- Dissect: Outstanding Shares
bmv_bmvmarketdata_product25_intra_v1_1.outstanding_shares.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.outstanding_shares.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_product25_intra_v1_1.outstanding_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.outstanding_shares, range, value, display)

  return offset + length, value
end

-- Ppp Weighted Average Price
bmv_bmvmarketdata_product25_intra_v1_1.ppp_weighted_average_price = {}

-- Size: Ppp Weighted Average Price
bmv_bmvmarketdata_product25_intra_v1_1.ppp_weighted_average_price.size = 8

-- Display: Ppp Weighted Average Price
bmv_bmvmarketdata_product25_intra_v1_1.ppp_weighted_average_price.display = function(value)
  return "Ppp Weighted Average Price: "..value
end

-- Translate: Ppp Weighted Average Price
bmv_bmvmarketdata_product25_intra_v1_1.ppp_weighted_average_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Ppp Weighted Average Price
bmv_bmvmarketdata_product25_intra_v1_1.ppp_weighted_average_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.ppp_weighted_average_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product25_intra_v1_1.ppp_weighted_average_price.translate(raw)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.ppp_weighted_average_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.ppp_weighted_average_price, range, value, display)

  return offset + length, value
end

-- Price
bmv_bmvmarketdata_product25_intra_v1_1.price = {}

-- Size: Price
bmv_bmvmarketdata_product25_intra_v1_1.price.size = 8

-- Display: Price
bmv_bmvmarketdata_product25_intra_v1_1.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
bmv_bmvmarketdata_product25_intra_v1_1.price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price
bmv_bmvmarketdata_product25_intra_v1_1.price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product25_intra_v1_1.price.translate(raw)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.price, range, value, display)

  return offset + length, value
end

-- Price Of Exercise
bmv_bmvmarketdata_product25_intra_v1_1.price_of_exercise = {}

-- Size: Price Of Exercise
bmv_bmvmarketdata_product25_intra_v1_1.price_of_exercise.size = 8

-- Display: Price Of Exercise
bmv_bmvmarketdata_product25_intra_v1_1.price_of_exercise.display = function(value)
  return "Price Of Exercise: "..value
end

-- Translate: Price Of Exercise
bmv_bmvmarketdata_product25_intra_v1_1.price_of_exercise.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price Of Exercise
bmv_bmvmarketdata_product25_intra_v1_1.price_of_exercise.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.price_of_exercise.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product25_intra_v1_1.price_of_exercise.translate(raw)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.price_of_exercise.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.price_of_exercise, range, value, display)

  return offset + length, value
end

-- Price Rate Of Reference
bmv_bmvmarketdata_product25_intra_v1_1.price_rate_of_reference = {}

-- Size: Price Rate Of Reference
bmv_bmvmarketdata_product25_intra_v1_1.price_rate_of_reference.size = 8

-- Display: Price Rate Of Reference
bmv_bmvmarketdata_product25_intra_v1_1.price_rate_of_reference.display = function(value)
  return "Price Rate Of Reference: "..value
end

-- Translate: Price Rate Of Reference
bmv_bmvmarketdata_product25_intra_v1_1.price_rate_of_reference.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price Rate Of Reference
bmv_bmvmarketdata_product25_intra_v1_1.price_rate_of_reference.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.price_rate_of_reference.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product25_intra_v1_1.price_rate_of_reference.translate(raw)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.price_rate_of_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.price_rate_of_reference, range, value, display)

  return offset + length, value
end

-- Price Type
bmv_bmvmarketdata_product25_intra_v1_1.price_type = {}

-- Size: Price Type
bmv_bmvmarketdata_product25_intra_v1_1.price_type.size = 1

-- Display: Price Type
bmv_bmvmarketdata_product25_intra_v1_1.price_type.labels = {
  ["R"] = "Price Type: Reference (R)",
  ["C"] = "Price Type: Closing Price (C)",
  ["I"] = "Price Type: Inav (I)",
  ["V"] = "Price Type: Volume Weighted Average Price (V)",
}

bmv_bmvmarketdata_product25_intra_v1_1.price_type.display = function(value)
  return bmv_bmvmarketdata_product25_intra_v1_1.price_type.labels[value] or "Price Type: Unknown("..value..")"
end

-- Dissect: Price Type
bmv_bmvmarketdata_product25_intra_v1_1.price_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.price_type.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.price_type, range, value, display)

  return offset + length, value
end

-- Probable Price Of Allocation
bmv_bmvmarketdata_product25_intra_v1_1.probable_price_of_allocation = {}

-- Size: Probable Price Of Allocation
bmv_bmvmarketdata_product25_intra_v1_1.probable_price_of_allocation.size = 8

-- Display: Probable Price Of Allocation
bmv_bmvmarketdata_product25_intra_v1_1.probable_price_of_allocation.display = function(value)
  return "Probable Price Of Allocation: "..value
end

-- Translate: Probable Price Of Allocation
bmv_bmvmarketdata_product25_intra_v1_1.probable_price_of_allocation.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Probable Price Of Allocation
bmv_bmvmarketdata_product25_intra_v1_1.probable_price_of_allocation.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.probable_price_of_allocation.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product25_intra_v1_1.probable_price_of_allocation.translate(raw)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.probable_price_of_allocation.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.probable_price_of_allocation, range, value, display)

  return offset + length, value
end

-- Purchase Volume
bmv_bmvmarketdata_product25_intra_v1_1.purchase_volume = {}

-- Size: Purchase Volume
bmv_bmvmarketdata_product25_intra_v1_1.purchase_volume.size = 8

-- Display: Purchase Volume
bmv_bmvmarketdata_product25_intra_v1_1.purchase_volume.display = function(value)
  return "Purchase Volume: "..value
end

-- Dissect: Purchase Volume
bmv_bmvmarketdata_product25_intra_v1_1.purchase_volume.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.purchase_volume.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_product25_intra_v1_1.purchase_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.purchase_volume, range, value, display)

  return offset + length, value
end

-- Purchases
bmv_bmvmarketdata_product25_intra_v1_1.purchases = {}

-- Size: Purchases
bmv_bmvmarketdata_product25_intra_v1_1.purchases.size = 5

-- Display: Purchases
bmv_bmvmarketdata_product25_intra_v1_1.purchases.display = function(value)
  return "Purchases: "..value
end

-- Dissect: Purchases
bmv_bmvmarketdata_product25_intra_v1_1.purchases.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.purchases.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product25_intra_v1_1.purchases.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.purchases, range, value, display)

  return offset + length, value
end

-- Rating
bmv_bmvmarketdata_product25_intra_v1_1.rating = {}

-- Size: Rating
bmv_bmvmarketdata_product25_intra_v1_1.rating.size = 15

-- Display: Rating
bmv_bmvmarketdata_product25_intra_v1_1.rating.display = function(value)
  return "Rating: "..value
end

-- Dissect: Rating
bmv_bmvmarketdata_product25_intra_v1_1.rating.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.rating.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product25_intra_v1_1.rating.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.rating, range, value, display)

  return offset + length, value
end

-- Reason
bmv_bmvmarketdata_product25_intra_v1_1.reason = {}

-- Size: Reason
bmv_bmvmarketdata_product25_intra_v1_1.reason.size = 1

-- Display: Reason
bmv_bmvmarketdata_product25_intra_v1_1.reason.labels = {
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

bmv_bmvmarketdata_product25_intra_v1_1.reason.display = function(value)
  return bmv_bmvmarketdata_product25_intra_v1_1.reason.labels[value] or "Reason: Unknown("..value..")"
end

-- Dissect: Reason
bmv_bmvmarketdata_product25_intra_v1_1.reason.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.reason.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.reason, range, value, display)

  return offset + length, value
end

-- Reference
bmv_bmvmarketdata_product25_intra_v1_1.reference = {}

-- Size: Reference
bmv_bmvmarketdata_product25_intra_v1_1.reference.size = 1

-- Display: Reference
bmv_bmvmarketdata_product25_intra_v1_1.reference.display = function(value)
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
bmv_bmvmarketdata_product25_intra_v1_1.reference.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.reference.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.reference, range, value, display)

  return offset + length, value
end

-- Reference Date
bmv_bmvmarketdata_product25_intra_v1_1.reference_date = {}

-- Size: Reference Date
bmv_bmvmarketdata_product25_intra_v1_1.reference_date.size = 8

-- Dissect: Reference Date
bmv_bmvmarketdata_product25_intra_v1_1.reference_date.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.reference_date.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.reference_date
  if bmv_bmvmarketdata_product25_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.reference_date_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Reference Price
bmv_bmvmarketdata_product25_intra_v1_1.reference_price = {}

-- Size: Reference Price
bmv_bmvmarketdata_product25_intra_v1_1.reference_price.size = 8

-- Display: Reference Price
bmv_bmvmarketdata_product25_intra_v1_1.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
bmv_bmvmarketdata_product25_intra_v1_1.reference_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Reference Price
bmv_bmvmarketdata_product25_intra_v1_1.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.reference_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product25_intra_v1_1.reference_price.translate(raw)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Registered Values
bmv_bmvmarketdata_product25_intra_v1_1.registered_values = {}

-- Size: Registered Values
bmv_bmvmarketdata_product25_intra_v1_1.registered_values.size = 8

-- Display: Registered Values
bmv_bmvmarketdata_product25_intra_v1_1.registered_values.display = function(value)
  return "Registered Values: "..value
end

-- Dissect: Registered Values
bmv_bmvmarketdata_product25_intra_v1_1.registered_values.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.registered_values.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_product25_intra_v1_1.registered_values.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.registered_values, range, value, display)

  return offset + length, value
end

-- Sales Volume
bmv_bmvmarketdata_product25_intra_v1_1.sales_volume = {}

-- Size: Sales Volume
bmv_bmvmarketdata_product25_intra_v1_1.sales_volume.size = 8

-- Display: Sales Volume
bmv_bmvmarketdata_product25_intra_v1_1.sales_volume.display = function(value)
  return "Sales Volume: "..value
end

-- Dissect: Sales Volume
bmv_bmvmarketdata_product25_intra_v1_1.sales_volume.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.sales_volume.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_product25_intra_v1_1.sales_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.sales_volume, range, value, display)

  return offset + length, value
end

-- Sector
bmv_bmvmarketdata_product25_intra_v1_1.sector = {}

-- Size: Sector
bmv_bmvmarketdata_product25_intra_v1_1.sector.size = 1

-- Display: Sector
bmv_bmvmarketdata_product25_intra_v1_1.sector.display = function(value)
  return "Sector: "..value
end

-- Dissect: Sector
bmv_bmvmarketdata_product25_intra_v1_1.sector.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.sector.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product25_intra_v1_1.sector.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.sector, range, value, display)

  return offset + length, value
end

-- Securities
bmv_bmvmarketdata_product25_intra_v1_1.securities = {}

-- Size: Securities
bmv_bmvmarketdata_product25_intra_v1_1.securities.size = 8

-- Display: Securities
bmv_bmvmarketdata_product25_intra_v1_1.securities.display = function(value)
  return "Securities: "..value
end

-- Translate: Securities
bmv_bmvmarketdata_product25_intra_v1_1.securities.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Securities
bmv_bmvmarketdata_product25_intra_v1_1.securities.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.securities.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product25_intra_v1_1.securities.translate(raw)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.securities, range, value, display)

  return offset + length, value
end

-- Sells
bmv_bmvmarketdata_product25_intra_v1_1.sells = {}

-- Size: Sells
bmv_bmvmarketdata_product25_intra_v1_1.sells.size = 5

-- Display: Sells
bmv_bmvmarketdata_product25_intra_v1_1.sells.display = function(value)
  return "Sells: "..value
end

-- Dissect: Sells
bmv_bmvmarketdata_product25_intra_v1_1.sells.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.sells.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product25_intra_v1_1.sells.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.sells, range, value, display)

  return offset + length, value
end

-- Send Time
bmv_bmvmarketdata_product25_intra_v1_1.send_time = {}

-- Size: Send Time
bmv_bmvmarketdata_product25_intra_v1_1.send_time.size = 8

-- Dissect: Send Time
bmv_bmvmarketdata_product25_intra_v1_1.send_time.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.send_time.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.send_time
  if bmv_bmvmarketdata_product25_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.send_time_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Sequence Number
bmv_bmvmarketdata_product25_intra_v1_1.sequence_number = {}

-- Size: Sequence Number
bmv_bmvmarketdata_product25_intra_v1_1.sequence_number.size = 4

-- Display: Sequence Number
bmv_bmvmarketdata_product25_intra_v1_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
bmv_bmvmarketdata_product25_intra_v1_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.sequence_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product25_intra_v1_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Series
bmv_bmvmarketdata_product25_intra_v1_1.series = {}

-- Size: Series
bmv_bmvmarketdata_product25_intra_v1_1.series.size = 6

-- Display: Series
bmv_bmvmarketdata_product25_intra_v1_1.series.display = function(value)
  return "Series: "..value
end

-- Dissect: Series
bmv_bmvmarketdata_product25_intra_v1_1.series.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.series.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product25_intra_v1_1.series.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.series, range, value, display)

  return offset + length, value
end

-- Session
bmv_bmvmarketdata_product25_intra_v1_1.session = {}

-- Size: Session
bmv_bmvmarketdata_product25_intra_v1_1.session.size = 1

-- Display: Session
bmv_bmvmarketdata_product25_intra_v1_1.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
bmv_bmvmarketdata_product25_intra_v1_1.session.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.session.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product25_intra_v1_1.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.session, range, value, display)

  return offset + length, value
end

-- Sets Price
bmv_bmvmarketdata_product25_intra_v1_1.sets_price = {}

-- Size: Sets Price
bmv_bmvmarketdata_product25_intra_v1_1.sets_price.size = 1

-- Display: Sets Price
bmv_bmvmarketdata_product25_intra_v1_1.sets_price.display = function(value)
  return "Sets Price: "..value
end

-- Dissect: Sets Price
bmv_bmvmarketdata_product25_intra_v1_1.sets_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.sets_price.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.sets_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.sets_price, range, value, display)

  return offset + length, value
end

-- Settlement
bmv_bmvmarketdata_product25_intra_v1_1.settlement = {}

-- Size: Settlement
bmv_bmvmarketdata_product25_intra_v1_1.settlement.size = 1

-- Display: Settlement
bmv_bmvmarketdata_product25_intra_v1_1.settlement.labels = {
  ["M"] = "Settlement: Same Day (M)",
  ["2"] = "Settlement: Twenty Four Hours (2)",
  ["4"] = "Settlement: Forty Eight Hours (4)",
  ["7"] = "Settlement: Seventy Two Hours (7)",
  ["9"] = "Settlement: Ninety Six Hours (9)",
  ["1"] = "Settlement: One Hundred Twenty Hours (1)",
}

bmv_bmvmarketdata_product25_intra_v1_1.settlement.display = function(value)
  return bmv_bmvmarketdata_product25_intra_v1_1.settlement.labels[value] or "Settlement: Unknown("..value..")"
end

-- Dissect: Settlement
bmv_bmvmarketdata_product25_intra_v1_1.settlement.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.settlement.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.settlement.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.settlement, range, value, display)

  return offset + length, value
end

-- Status
bmv_bmvmarketdata_product25_intra_v1_1.status = {}

-- Size: Status
bmv_bmvmarketdata_product25_intra_v1_1.status.size = 1

-- Display: Status
bmv_bmvmarketdata_product25_intra_v1_1.status.labels = {
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

bmv_bmvmarketdata_product25_intra_v1_1.status.display = function(value)
  return bmv_bmvmarketdata_product25_intra_v1_1.status.labels[value] or "Status: Unknown("..value..")"
end

-- Dissect: Status
bmv_bmvmarketdata_product25_intra_v1_1.status.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.status.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.status, range, value, display)

  return offset + length, value
end

-- Sub Industry
bmv_bmvmarketdata_product25_intra_v1_1.sub_industry = {}

-- Size: Sub Industry
bmv_bmvmarketdata_product25_intra_v1_1.sub_industry.size = 1

-- Display: Sub Industry
bmv_bmvmarketdata_product25_intra_v1_1.sub_industry.display = function(value)
  return "Sub Industry: "..value
end

-- Dissect: Sub Industry
bmv_bmvmarketdata_product25_intra_v1_1.sub_industry.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.sub_industry.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product25_intra_v1_1.sub_industry.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.sub_industry, range, value, display)

  return offset + length, value
end

-- Sub Sector
bmv_bmvmarketdata_product25_intra_v1_1.sub_sector = {}

-- Size: Sub Sector
bmv_bmvmarketdata_product25_intra_v1_1.sub_sector.size = 1

-- Display: Sub Sector
bmv_bmvmarketdata_product25_intra_v1_1.sub_sector.display = function(value)
  return "Sub Sector: "..value
end

-- Dissect: Sub Sector
bmv_bmvmarketdata_product25_intra_v1_1.sub_sector.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.sub_sector.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product25_intra_v1_1.sub_sector.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.sub_sector, range, value, display)

  return offset + length, value
end

-- Term Days
bmv_bmvmarketdata_product25_intra_v1_1.term_days = {}

-- Size: Term Days
bmv_bmvmarketdata_product25_intra_v1_1.term_days.size = 2

-- Display: Term Days
bmv_bmvmarketdata_product25_intra_v1_1.term_days.display = function(value)
  return "Term Days: "..value
end

-- Dissect: Term Days
bmv_bmvmarketdata_product25_intra_v1_1.term_days.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.term_days.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product25_intra_v1_1.term_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.term_days, range, value, display)

  return offset + length, value
end

-- Theoretical Price
bmv_bmvmarketdata_product25_intra_v1_1.theoretical_price = {}

-- Size: Theoretical Price
bmv_bmvmarketdata_product25_intra_v1_1.theoretical_price.size = 8

-- Display: Theoretical Price
bmv_bmvmarketdata_product25_intra_v1_1.theoretical_price.display = function(value)
  return "Theoretical Price: "..value
end

-- Translate: Theoretical Price
bmv_bmvmarketdata_product25_intra_v1_1.theoretical_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Theoretical Price
bmv_bmvmarketdata_product25_intra_v1_1.theoretical_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.theoretical_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product25_intra_v1_1.theoretical_price.translate(raw)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.theoretical_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.theoretical_price, range, value, display)

  return offset + length, value
end

-- Time Of The Trade
bmv_bmvmarketdata_product25_intra_v1_1.time_of_the_trade = {}

-- Size: Time Of The Trade
bmv_bmvmarketdata_product25_intra_v1_1.time_of_the_trade.size = 8

-- Dissect: Time Of The Trade
bmv_bmvmarketdata_product25_intra_v1_1.time_of_the_trade.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.time_of_the_trade.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.time_of_the_trade
  if bmv_bmvmarketdata_product25_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.time_of_the_trade_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Total Messages
bmv_bmvmarketdata_product25_intra_v1_1.total_messages = {}

-- Size: Total Messages
bmv_bmvmarketdata_product25_intra_v1_1.total_messages.size = 1

-- Display: Total Messages
bmv_bmvmarketdata_product25_intra_v1_1.total_messages.display = function(value)
  return "Total Messages: "..value
end

-- Dissect: Total Messages
bmv_bmvmarketdata_product25_intra_v1_1.total_messages.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.total_messages.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product25_intra_v1_1.total_messages.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.total_messages, range, value, display)

  return offset + length, value
end

-- Trades Rate Price
bmv_bmvmarketdata_product25_intra_v1_1.trades_rate_price = {}

-- Size: Trades Rate Price
bmv_bmvmarketdata_product25_intra_v1_1.trades_rate_price.size = 1

-- Display: Trades Rate Price
bmv_bmvmarketdata_product25_intra_v1_1.trades_rate_price.display = function(value)
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
bmv_bmvmarketdata_product25_intra_v1_1.trades_rate_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.trades_rate_price.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.trades_rate_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.trades_rate_price, range, value, display)

  return offset + length, value
end

-- Trading Company
bmv_bmvmarketdata_product25_intra_v1_1.trading_company = {}

-- Size: Trading Company
bmv_bmvmarketdata_product25_intra_v1_1.trading_company.size = 10

-- Display: Trading Company
bmv_bmvmarketdata_product25_intra_v1_1.trading_company.display = function(value)
  return "Trading Company: "..value
end

-- Dissect: Trading Company
bmv_bmvmarketdata_product25_intra_v1_1.trading_company.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.trading_company.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product25_intra_v1_1.trading_company.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.trading_company, range, value, display)

  return offset + length, value
end

-- Type Of Agreement
bmv_bmvmarketdata_product25_intra_v1_1.type_of_agreement = {}

-- Size: Type Of Agreement
bmv_bmvmarketdata_product25_intra_v1_1.type_of_agreement.size = 1

-- Display: Type Of Agreement
bmv_bmvmarketdata_product25_intra_v1_1.type_of_agreement.labels = {
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

bmv_bmvmarketdata_product25_intra_v1_1.type_of_agreement.display = function(value)
  return bmv_bmvmarketdata_product25_intra_v1_1.type_of_agreement.labels[value] or "Type Of Agreement: Unknown("..value..")"
end

-- Dissect: Type Of Agreement
bmv_bmvmarketdata_product25_intra_v1_1.type_of_agreement.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.type_of_agreement.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.type_of_agreement.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.type_of_agreement, range, value, display)

  return offset + length, value
end

-- Type Of Trading
bmv_bmvmarketdata_product25_intra_v1_1.type_of_trading = {}

-- Size: Type Of Trading
bmv_bmvmarketdata_product25_intra_v1_1.type_of_trading.size = 1

-- Display: Type Of Trading
bmv_bmvmarketdata_product25_intra_v1_1.type_of_trading.labels = {
  ["E"] = "Type Of Trading: Continuous Electronic Trading (E)",
  ["C"] = "Type Of Trading: Market On Close (C)",
  ["B"] = "Type Of Trading: Block Trading (B)",
  ["D"] = "Type Of Trading: Debt Trading (D)",
  ["W"] = "Type Of Trading: Warrants Trading (W)",
}

bmv_bmvmarketdata_product25_intra_v1_1.type_of_trading.display = function(value)
  return bmv_bmvmarketdata_product25_intra_v1_1.type_of_trading.labels[value] or "Type Of Trading: Unknown("..value..")"
end

-- Dissect: Type Of Trading
bmv_bmvmarketdata_product25_intra_v1_1.type_of_trading.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.type_of_trading.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.type_of_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.type_of_trading, range, value, display)

  return offset + length, value
end

-- Type Of Value
bmv_bmvmarketdata_product25_intra_v1_1.type_of_value = {}

-- Size: Type Of Value
bmv_bmvmarketdata_product25_intra_v1_1.type_of_value.size = 2

-- Display: Type Of Value
bmv_bmvmarketdata_product25_intra_v1_1.type_of_value.display = function(value)
  return "Type Of Value: "..value
end

-- Dissect: Type Of Value
bmv_bmvmarketdata_product25_intra_v1_1.type_of_value.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.type_of_value.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product25_intra_v1_1.type_of_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.type_of_value, range, value, display)

  return offset + length, value
end

-- Type Of Warrant
bmv_bmvmarketdata_product25_intra_v1_1.type_of_warrant = {}

-- Size: Type Of Warrant
bmv_bmvmarketdata_product25_intra_v1_1.type_of_warrant.size = 1

-- Display: Type Of Warrant
bmv_bmvmarketdata_product25_intra_v1_1.type_of_warrant.labels = {
  ["C"] = "Type Of Warrant: Purchase (C)",
  ["V"] = "Type Of Warrant: Sale (V)",
}

bmv_bmvmarketdata_product25_intra_v1_1.type_of_warrant.display = function(value)
  return bmv_bmvmarketdata_product25_intra_v1_1.type_of_warrant.labels[value] or "Type Of Warrant: Unknown("..value..")"
end

-- Dissect: Type Of Warrant
bmv_bmvmarketdata_product25_intra_v1_1.type_of_warrant.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.type_of_warrant.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.type_of_warrant.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.type_of_warrant, range, value, display)

  return offset + length, value
end

-- Underlying Issuing Company
bmv_bmvmarketdata_product25_intra_v1_1.underlying_issuing_company = {}

-- Size: Underlying Issuing Company
bmv_bmvmarketdata_product25_intra_v1_1.underlying_issuing_company.size = 7

-- Display: Underlying Issuing Company
bmv_bmvmarketdata_product25_intra_v1_1.underlying_issuing_company.display = function(value)
  return "Underlying Issuing Company: "..value
end

-- Dissect: Underlying Issuing Company
bmv_bmvmarketdata_product25_intra_v1_1.underlying_issuing_company.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.underlying_issuing_company.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product25_intra_v1_1.underlying_issuing_company.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.underlying_issuing_company, range, value, display)

  return offset + length, value
end

-- Underlying Series
bmv_bmvmarketdata_product25_intra_v1_1.underlying_series = {}

-- Size: Underlying Series
bmv_bmvmarketdata_product25_intra_v1_1.underlying_series.size = 6

-- Display: Underlying Series
bmv_bmvmarketdata_product25_intra_v1_1.underlying_series.display = function(value)
  return "Underlying Series: "..value
end

-- Dissect: Underlying Series
bmv_bmvmarketdata_product25_intra_v1_1.underlying_series.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.underlying_series.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product25_intra_v1_1.underlying_series.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.underlying_series, range, value, display)

  return offset + length, value
end

-- Value Of Type
bmv_bmvmarketdata_product25_intra_v1_1.value_of_type = {}

-- Size: Value Of Type
bmv_bmvmarketdata_product25_intra_v1_1.value_of_type.size = 2

-- Display: Value Of Type
bmv_bmvmarketdata_product25_intra_v1_1.value_of_type.display = function(value)
  return "Value Of Type: "..value
end

-- Dissect: Value Of Type
bmv_bmvmarketdata_product25_intra_v1_1.value_of_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.value_of_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product25_intra_v1_1.value_of_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.value_of_type, range, value, display)

  return offset + length, value
end

-- Volatility
bmv_bmvmarketdata_product25_intra_v1_1.volatility = {}

-- Size: Volatility
bmv_bmvmarketdata_product25_intra_v1_1.volatility.size = 8

-- Display: Volatility
bmv_bmvmarketdata_product25_intra_v1_1.volatility.display = function(value)
  return "Volatility: "..value
end

-- Translate: Volatility
bmv_bmvmarketdata_product25_intra_v1_1.volatility.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Volatility
bmv_bmvmarketdata_product25_intra_v1_1.volatility.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.volatility.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product25_intra_v1_1.volatility.translate(raw)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.volatility.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.volatility, range, value, display)

  return offset + length, value
end

-- Volume
bmv_bmvmarketdata_product25_intra_v1_1.volume = {}

-- Size: Volume
bmv_bmvmarketdata_product25_intra_v1_1.volume.size = 8

-- Display: Volume
bmv_bmvmarketdata_product25_intra_v1_1.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
bmv_bmvmarketdata_product25_intra_v1_1.volume.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.volume.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_product25_intra_v1_1.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.volume, range, value, display)

  return offset + length, value
end

-- Weighted Average Price
bmv_bmvmarketdata_product25_intra_v1_1.weighted_average_price = {}

-- Size: Weighted Average Price
bmv_bmvmarketdata_product25_intra_v1_1.weighted_average_price.size = 8

-- Display: Weighted Average Price
bmv_bmvmarketdata_product25_intra_v1_1.weighted_average_price.display = function(value)
  return "Weighted Average Price: "..value
end

-- Translate: Weighted Average Price
bmv_bmvmarketdata_product25_intra_v1_1.weighted_average_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Weighted Average Price
bmv_bmvmarketdata_product25_intra_v1_1.weighted_average_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product25_intra_v1_1.weighted_average_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product25_intra_v1_1.weighted_average_price.translate(raw)
  local display = bmv_bmvmarketdata_product25_intra_v1_1.weighted_average_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.weighted_average_price, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Bmv BmvMarketData Product25 Intra 1.1
-----------------------------------------------------------------------

-- Consolidated Trade Cancellation Message
bmv_bmvmarketdata_product25_intra_v1_1.consolidated_trade_cancellation_message = {}

-- Size: Consolidated Trade Cancellation Message
bmv_bmvmarketdata_product25_intra_v1_1.consolidated_trade_cancellation_message.size =
  bmv_bmvmarketdata_product25_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.consecutive_number_of_the_trade.size

-- Display: Consolidated Trade Cancellation Message
bmv_bmvmarketdata_product25_intra_v1_1.consolidated_trade_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Trade Cancellation Message
bmv_bmvmarketdata_product25_intra_v1_1.consolidated_trade_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product25_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Origin: ALFA
  index, origin = bmv_bmvmarketdata_product25_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Consecutive Number Of The Trade: Int64
  index, consecutive_number_of_the_trade = bmv_bmvmarketdata_product25_intra_v1_1.consecutive_number_of_the_trade.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Trade Cancellation Message
bmv_bmvmarketdata_product25_intra_v1_1.consolidated_trade_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.consolidated_trade_cancellation_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product25_intra_v1_1.consolidated_trade_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product25_intra_v1_1.consolidated_trade_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product25_intra_v1_1.consolidated_trade_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Equities Market Trades Message
bmv_bmvmarketdata_product25_intra_v1_1.equities_market_trades_message = {}

-- Size: Equities Market Trades Message
bmv_bmvmarketdata_product25_intra_v1_1.equities_market_trades_message.size =
  bmv_bmvmarketdata_product25_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.time_of_the_trade.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.volume.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.price.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.type_of_agreement.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.consecutive_number_of_the_trade.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.sets_price.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.type_of_trading.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.amount.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.purchases.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.sells.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.settlement.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.auction_indicator.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.indicator.size

-- Display: Equities Market Trades Message
bmv_bmvmarketdata_product25_intra_v1_1.equities_market_trades_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equities Market Trades Message
bmv_bmvmarketdata_product25_intra_v1_1.equities_market_trades_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product25_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Origin: ALFA
  index, origin = bmv_bmvmarketdata_product25_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Time Of The Trade: Timestamp(2)
  index, time_of_the_trade = bmv_bmvmarketdata_product25_intra_v1_1.time_of_the_trade.dissect(buffer, index, packet, parent)

  -- Volume: Int64
  index, volume = bmv_bmvmarketdata_product25_intra_v1_1.volume.dissect(buffer, index, packet, parent)

  -- Price: Precio(8)
  index, price = bmv_bmvmarketdata_product25_intra_v1_1.price.dissect(buffer, index, packet, parent)

  -- Type Of Agreement: ALFA
  index, type_of_agreement = bmv_bmvmarketdata_product25_intra_v1_1.type_of_agreement.dissect(buffer, index, packet, parent)

  -- Consecutive Number Of The Trade: Int64
  index, consecutive_number_of_the_trade = bmv_bmvmarketdata_product25_intra_v1_1.consecutive_number_of_the_trade.dissect(buffer, index, packet, parent)

  -- Sets Price: ALFA
  index, sets_price = bmv_bmvmarketdata_product25_intra_v1_1.sets_price.dissect(buffer, index, packet, parent)

  -- Type Of Trading: ALFA
  index, type_of_trading = bmv_bmvmarketdata_product25_intra_v1_1.type_of_trading.dissect(buffer, index, packet, parent)

  -- Amount: Precio(8)
  index, amount = bmv_bmvmarketdata_product25_intra_v1_1.amount.dissect(buffer, index, packet, parent)

  -- Purchases: ALFA
  index, purchases = bmv_bmvmarketdata_product25_intra_v1_1.purchases.dissect(buffer, index, packet, parent)

  -- Sells: ALFA
  index, sells = bmv_bmvmarketdata_product25_intra_v1_1.sells.dissect(buffer, index, packet, parent)

  -- Settlement: ALFA
  index, settlement = bmv_bmvmarketdata_product25_intra_v1_1.settlement.dissect(buffer, index, packet, parent)

  -- Auction Indicator: ALFA
  index, auction_indicator = bmv_bmvmarketdata_product25_intra_v1_1.auction_indicator.dissect(buffer, index, packet, parent)

  -- Indicator: ALFA
  index, indicator = bmv_bmvmarketdata_product25_intra_v1_1.indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Equities Market Trades Message
bmv_bmvmarketdata_product25_intra_v1_1.equities_market_trades_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.equities_market_trades_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product25_intra_v1_1.equities_market_trades_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product25_intra_v1_1.equities_market_trades_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product25_intra_v1_1.equities_market_trades_message.fields(buffer, offset, packet, parent)
  end
end

-- Relation Between Bmvbiva Instruments Message
bmv_bmvmarketdata_product25_intra_v1_1.relation_between_bmvbiva_instruments_message = {}

-- Size: Relation Between Bmvbiva Instruments Message
bmv_bmvmarketdata_product25_intra_v1_1.relation_between_bmvbiva_instruments_message.size =
  bmv_bmvmarketdata_product25_intra_v1_1.number_of_the_bmv_instrument.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.biva_instrument.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.type_of_trading.size

-- Display: Relation Between Bmvbiva Instruments Message
bmv_bmvmarketdata_product25_intra_v1_1.relation_between_bmvbiva_instruments_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Relation Between Bmvbiva Instruments Message
bmv_bmvmarketdata_product25_intra_v1_1.relation_between_bmvbiva_instruments_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of The Bmv Instrument: Int32
  index, number_of_the_bmv_instrument = bmv_bmvmarketdata_product25_intra_v1_1.number_of_the_bmv_instrument.dissect(buffer, index, packet, parent)

  -- Biva Instrument: Int32
  index, biva_instrument = bmv_bmvmarketdata_product25_intra_v1_1.biva_instrument.dissect(buffer, index, packet, parent)

  -- Type Of Trading: ALFA
  index, type_of_trading = bmv_bmvmarketdata_product25_intra_v1_1.type_of_trading.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Relation Between Bmvbiva Instruments Message
bmv_bmvmarketdata_product25_intra_v1_1.relation_between_bmvbiva_instruments_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.relation_between_bmvbiva_instruments_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product25_intra_v1_1.relation_between_bmvbiva_instruments_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product25_intra_v1_1.relation_between_bmvbiva_instruments_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product25_intra_v1_1.relation_between_bmvbiva_instruments_message.fields(buffer, offset, packet, parent)
  end
end

-- Probable Price Of Allocation Message
bmv_bmvmarketdata_product25_intra_v1_1.probable_price_of_allocation_message = {}

-- Size: Probable Price Of Allocation Message
bmv_bmvmarketdata_product25_intra_v1_1.probable_price_of_allocation_message.size =
  bmv_bmvmarketdata_product25_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.probable_price_of_allocation.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.volume.size

-- Display: Probable Price Of Allocation Message
bmv_bmvmarketdata_product25_intra_v1_1.probable_price_of_allocation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Probable Price Of Allocation Message
bmv_bmvmarketdata_product25_intra_v1_1.probable_price_of_allocation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product25_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Origin: ALFA
  index, origin = bmv_bmvmarketdata_product25_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Probable Price Of Allocation: Precio(8)
  index, probable_price_of_allocation = bmv_bmvmarketdata_product25_intra_v1_1.probable_price_of_allocation.dissect(buffer, index, packet, parent)

  -- Volume: Int64
  index, volume = bmv_bmvmarketdata_product25_intra_v1_1.volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Probable Price Of Allocation Message
bmv_bmvmarketdata_product25_intra_v1_1.probable_price_of_allocation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.probable_price_of_allocation_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product25_intra_v1_1.probable_price_of_allocation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product25_intra_v1_1.probable_price_of_allocation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product25_intra_v1_1.probable_price_of_allocation_message.fields(buffer, offset, packet, parent)
  end
end

-- Catalog For Instruments Belonging To The Local And Global Stock Market Message
bmv_bmvmarketdata_product25_intra_v1_1.catalog_for_instruments_belonging_to_the_local_and_global_stock_market_message = {}

-- Size: Catalog For Instruments Belonging To The Local And Global Stock Market Message
bmv_bmvmarketdata_product25_intra_v1_1.catalog_for_instruments_belonging_to_the_local_and_global_stock_market_message.size =
  bmv_bmvmarketdata_product25_intra_v1_1.mse_instrument_number.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.value_of_type.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.issuing_company.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.series.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.last_price.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.ppp_weighted_average_price.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.reference_date.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.reference.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.coupon_in_effect.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.marketability.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.numerical_marketability.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.isin.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.market.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.registered_values.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.exchange.size

-- Display: Catalog For Instruments Belonging To The Local And Global Stock Market Message
bmv_bmvmarketdata_product25_intra_v1_1.catalog_for_instruments_belonging_to_the_local_and_global_stock_market_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Catalog For Instruments Belonging To The Local And Global Stock Market Message
bmv_bmvmarketdata_product25_intra_v1_1.catalog_for_instruments_belonging_to_the_local_and_global_stock_market_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mse Instrument Number: Int32
  index, mse_instrument_number = bmv_bmvmarketdata_product25_intra_v1_1.mse_instrument_number.dissect(buffer, index, packet, parent)

  -- Value Of Type: ALFA
  index, value_of_type = bmv_bmvmarketdata_product25_intra_v1_1.value_of_type.dissect(buffer, index, packet, parent)

  -- Issuing Company: ALFA
  index, issuing_company = bmv_bmvmarketdata_product25_intra_v1_1.issuing_company.dissect(buffer, index, packet, parent)

  -- Series: ALFA
  index, series = bmv_bmvmarketdata_product25_intra_v1_1.series.dissect(buffer, index, packet, parent)

  -- Last Price: Precio(8)
  index, last_price = bmv_bmvmarketdata_product25_intra_v1_1.last_price.dissect(buffer, index, packet, parent)

  -- Ppp Weighted Average Price: Precio(8)
  index, ppp_weighted_average_price = bmv_bmvmarketdata_product25_intra_v1_1.ppp_weighted_average_price.dissect(buffer, index, packet, parent)

  -- Reference Date: Timestamp(1)
  index, reference_date = bmv_bmvmarketdata_product25_intra_v1_1.reference_date.dissect(buffer, index, packet, parent)

  -- Reference: ALFA
  index, reference = bmv_bmvmarketdata_product25_intra_v1_1.reference.dissect(buffer, index, packet, parent)

  -- Coupon In Effect: Int16
  index, coupon_in_effect = bmv_bmvmarketdata_product25_intra_v1_1.coupon_in_effect.dissect(buffer, index, packet, parent)

  -- Marketability: ALFA
  index, marketability = bmv_bmvmarketdata_product25_intra_v1_1.marketability.dissect(buffer, index, packet, parent)

  -- Numerical Marketability: Precio(4)
  index, numerical_marketability = bmv_bmvmarketdata_product25_intra_v1_1.numerical_marketability.dissect(buffer, index, packet, parent)

  -- Isin: ALFA
  index, isin = bmv_bmvmarketdata_product25_intra_v1_1.isin.dissect(buffer, index, packet, parent)

  -- Market: ALFA
  index, market = bmv_bmvmarketdata_product25_intra_v1_1.market.dissect(buffer, index, packet, parent)

  -- Registered Values: Int64
  index, registered_values = bmv_bmvmarketdata_product25_intra_v1_1.registered_values.dissect(buffer, index, packet, parent)

  -- Exchange: ALFA
  index, exchange = bmv_bmvmarketdata_product25_intra_v1_1.exchange.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Catalog For Instruments Belonging To The Local And Global Stock Market Message
bmv_bmvmarketdata_product25_intra_v1_1.catalog_for_instruments_belonging_to_the_local_and_global_stock_market_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.catalog_for_instruments_belonging_to_the_local_and_global_stock_market_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product25_intra_v1_1.catalog_for_instruments_belonging_to_the_local_and_global_stock_market_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product25_intra_v1_1.catalog_for_instruments_belonging_to_the_local_and_global_stock_market_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product25_intra_v1_1.catalog_for_instruments_belonging_to_the_local_and_global_stock_market_message.fields(buffer, offset, packet, parent)
  end
end

-- Consolidated Inav Message
bmv_bmvmarketdata_product25_intra_v1_1.consolidated_inav_message = {}

-- Size: Consolidated Inav Message
bmv_bmvmarketdata_product25_intra_v1_1.consolidated_inav_message.size =
  bmv_bmvmarketdata_product25_intra_v1_1.number_of_the_trac.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.current_theoretical_price.size

-- Display: Consolidated Inav Message
bmv_bmvmarketdata_product25_intra_v1_1.consolidated_inav_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Inav Message
bmv_bmvmarketdata_product25_intra_v1_1.consolidated_inav_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of The Trac: Int32
  index, number_of_the_trac = bmv_bmvmarketdata_product25_intra_v1_1.number_of_the_trac.dissect(buffer, index, packet, parent)

  -- Origin: ALFA
  index, origin = bmv_bmvmarketdata_product25_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Current Theoretical Price: Precio(8)
  index, current_theoretical_price = bmv_bmvmarketdata_product25_intra_v1_1.current_theoretical_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Inav Message
bmv_bmvmarketdata_product25_intra_v1_1.consolidated_inav_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.consolidated_inav_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product25_intra_v1_1.consolidated_inav_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product25_intra_v1_1.consolidated_inav_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product25_intra_v1_1.consolidated_inav_message.fields(buffer, offset, packet, parent)
  end
end

-- Catalog Sent For Instruments Belonging To Capital Tracs Message
bmv_bmvmarketdata_product25_intra_v1_1.catalog_sent_for_instruments_belonging_to_capital_tracs_message = {}

-- Size: Catalog Sent For Instruments Belonging To Capital Tracs Message
bmv_bmvmarketdata_product25_intra_v1_1.catalog_sent_for_instruments_belonging_to_capital_tracs_message.size =
  bmv_bmvmarketdata_product25_intra_v1_1.number_of_the_trac.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.name_of_the_trac.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.underlying_issuing_company.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.underlying_series.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.securities.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.excluded_securities.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.price.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.component_in_cash.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.excluded_value.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.number_of_certificates.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.theoretical_price.size

-- Display: Catalog Sent For Instruments Belonging To Capital Tracs Message
bmv_bmvmarketdata_product25_intra_v1_1.catalog_sent_for_instruments_belonging_to_capital_tracs_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Catalog Sent For Instruments Belonging To Capital Tracs Message
bmv_bmvmarketdata_product25_intra_v1_1.catalog_sent_for_instruments_belonging_to_capital_tracs_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of The Trac: Int32
  index, number_of_the_trac = bmv_bmvmarketdata_product25_intra_v1_1.number_of_the_trac.dissect(buffer, index, packet, parent)

  -- Origin: ALFA
  index, origin = bmv_bmvmarketdata_product25_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Name Of The Trac: ALFA
  index, name_of_the_trac = bmv_bmvmarketdata_product25_intra_v1_1.name_of_the_trac.dissect(buffer, index, packet, parent)

  -- Underlying Issuing Company: ALFA
  index, underlying_issuing_company = bmv_bmvmarketdata_product25_intra_v1_1.underlying_issuing_company.dissect(buffer, index, packet, parent)

  -- Underlying Series: ALFA
  index, underlying_series = bmv_bmvmarketdata_product25_intra_v1_1.underlying_series.dissect(buffer, index, packet, parent)

  -- Securities: Precio(8)
  index, securities = bmv_bmvmarketdata_product25_intra_v1_1.securities.dissect(buffer, index, packet, parent)

  -- Excluded Securities: Precio(8)
  index, excluded_securities = bmv_bmvmarketdata_product25_intra_v1_1.excluded_securities.dissect(buffer, index, packet, parent)

  -- Price: Precio(8)
  index, price = bmv_bmvmarketdata_product25_intra_v1_1.price.dissect(buffer, index, packet, parent)

  -- Component In Cash: Precio(8)
  index, component_in_cash = bmv_bmvmarketdata_product25_intra_v1_1.component_in_cash.dissect(buffer, index, packet, parent)

  -- Excluded Value: Precio (8)
  index, excluded_value = bmv_bmvmarketdata_product25_intra_v1_1.excluded_value.dissect(buffer, index, packet, parent)

  -- Number Of Certificates: Int64
  index, number_of_certificates = bmv_bmvmarketdata_product25_intra_v1_1.number_of_certificates.dissect(buffer, index, packet, parent)

  -- Theoretical Price: Precio(8)
  index, theoretical_price = bmv_bmvmarketdata_product25_intra_v1_1.theoretical_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Catalog Sent For Instruments Belonging To Capital Tracs Message
bmv_bmvmarketdata_product25_intra_v1_1.catalog_sent_for_instruments_belonging_to_capital_tracs_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.catalog_sent_for_instruments_belonging_to_capital_tracs_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product25_intra_v1_1.catalog_sent_for_instruments_belonging_to_capital_tracs_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product25_intra_v1_1.catalog_sent_for_instruments_belonging_to_capital_tracs_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product25_intra_v1_1.catalog_sent_for_instruments_belonging_to_capital_tracs_message.fields(buffer, offset, packet, parent)
  end
end

-- Catalog For Instruments Belonging To The Capital Warrants Market Message
bmv_bmvmarketdata_product25_intra_v1_1.catalog_for_instruments_belonging_to_the_capital_warrants_market_message = {}

-- Size: Catalog For Instruments Belonging To The Capital Warrants Market Message
bmv_bmvmarketdata_product25_intra_v1_1.catalog_for_instruments_belonging_to_the_capital_warrants_market_message.size =
  bmv_bmvmarketdata_product25_intra_v1_1.number_of_the_instrument.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.type_of_value.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.issuing_company.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.series.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.type_of_warrant.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.date_of_maturity.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.price_of_exercise.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.reference_price.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.reference_date.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.reference.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.isin.size

-- Display: Catalog For Instruments Belonging To The Capital Warrants Market Message
bmv_bmvmarketdata_product25_intra_v1_1.catalog_for_instruments_belonging_to_the_capital_warrants_market_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Catalog For Instruments Belonging To The Capital Warrants Market Message
bmv_bmvmarketdata_product25_intra_v1_1.catalog_for_instruments_belonging_to_the_capital_warrants_market_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of The Instrument: Int32
  index, number_of_the_instrument = bmv_bmvmarketdata_product25_intra_v1_1.number_of_the_instrument.dissect(buffer, index, packet, parent)

  -- Origin: ALFA
  index, origin = bmv_bmvmarketdata_product25_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Type Of Value: ALFA
  index, type_of_value = bmv_bmvmarketdata_product25_intra_v1_1.type_of_value.dissect(buffer, index, packet, parent)

  -- Issuing Company: ALFA
  index, issuing_company = bmv_bmvmarketdata_product25_intra_v1_1.issuing_company.dissect(buffer, index, packet, parent)

  -- Series: ALFA
  index, series = bmv_bmvmarketdata_product25_intra_v1_1.series.dissect(buffer, index, packet, parent)

  -- Type Of Warrant: ALFA
  index, type_of_warrant = bmv_bmvmarketdata_product25_intra_v1_1.type_of_warrant.dissect(buffer, index, packet, parent)

  -- Date Of Maturity: Timestamp(1)
  index, date_of_maturity = bmv_bmvmarketdata_product25_intra_v1_1.date_of_maturity.dissect(buffer, index, packet, parent)

  -- Price Of Exercise: Precio(8)
  index, price_of_exercise = bmv_bmvmarketdata_product25_intra_v1_1.price_of_exercise.dissect(buffer, index, packet, parent)

  -- Reference Price: Precio(8)
  index, reference_price = bmv_bmvmarketdata_product25_intra_v1_1.reference_price.dissect(buffer, index, packet, parent)

  -- Reference Date: Timestamp(1)
  index, reference_date = bmv_bmvmarketdata_product25_intra_v1_1.reference_date.dissect(buffer, index, packet, parent)

  -- Reference: ALFA
  index, reference = bmv_bmvmarketdata_product25_intra_v1_1.reference.dissect(buffer, index, packet, parent)

  -- Isin: ALFA
  index, isin = bmv_bmvmarketdata_product25_intra_v1_1.isin.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Catalog For Instruments Belonging To The Capital Warrants Market Message
bmv_bmvmarketdata_product25_intra_v1_1.catalog_for_instruments_belonging_to_the_capital_warrants_market_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.catalog_for_instruments_belonging_to_the_capital_warrants_market_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product25_intra_v1_1.catalog_for_instruments_belonging_to_the_capital_warrants_market_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product25_intra_v1_1.catalog_for_instruments_belonging_to_the_capital_warrants_market_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product25_intra_v1_1.catalog_for_instruments_belonging_to_the_capital_warrants_market_message.fields(buffer, offset, packet, parent)
  end
end

-- Changes In Status Message
bmv_bmvmarketdata_product25_intra_v1_1.changes_in_status_message = {}

-- Size: Changes In Status Message
bmv_bmvmarketdata_product25_intra_v1_1.changes_in_status_message.size =
  bmv_bmvmarketdata_product25_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.status.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.reason.size

-- Display: Changes In Status Message
bmv_bmvmarketdata_product25_intra_v1_1.changes_in_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Changes In Status Message
bmv_bmvmarketdata_product25_intra_v1_1.changes_in_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product25_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Origin: ALFA
  index, origin = bmv_bmvmarketdata_product25_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Status: ALFA
  index, status = bmv_bmvmarketdata_product25_intra_v1_1.status.dissect(buffer, index, packet, parent)

  -- Reason: ALFA
  index, reason = bmv_bmvmarketdata_product25_intra_v1_1.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Changes In Status Message
bmv_bmvmarketdata_product25_intra_v1_1.changes_in_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.changes_in_status_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product25_intra_v1_1.changes_in_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product25_intra_v1_1.changes_in_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product25_intra_v1_1.changes_in_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Reference Price Message
bmv_bmvmarketdata_product25_intra_v1_1.reference_price_message = {}

-- Size: Reference Price Message
bmv_bmvmarketdata_product25_intra_v1_1.reference_price_message.size =
  bmv_bmvmarketdata_product25_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.price.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.price_type.size

-- Display: Reference Price Message
bmv_bmvmarketdata_product25_intra_v1_1.reference_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reference Price Message
bmv_bmvmarketdata_product25_intra_v1_1.reference_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product25_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Origin: ALFA
  index, origin = bmv_bmvmarketdata_product25_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Price: Precio(8)
  index, price = bmv_bmvmarketdata_product25_intra_v1_1.price.dissect(buffer, index, packet, parent)

  -- Price Type: ALFA
  index, price_type = bmv_bmvmarketdata_product25_intra_v1_1.price_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reference Price Message
bmv_bmvmarketdata_product25_intra_v1_1.reference_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.reference_price_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product25_intra_v1_1.reference_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product25_intra_v1_1.reference_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product25_intra_v1_1.reference_price_message.fields(buffer, offset, packet, parent)
  end
end

-- System Events Message
bmv_bmvmarketdata_product25_intra_v1_1.system_events_message = {}

-- Size: System Events Message
bmv_bmvmarketdata_product25_intra_v1_1.system_events_message.size =
  bmv_bmvmarketdata_product25_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.code_of_event.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.market.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.send_time.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.end_time.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.group.size

-- Display: System Events Message
bmv_bmvmarketdata_product25_intra_v1_1.system_events_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Events Message
bmv_bmvmarketdata_product25_intra_v1_1.system_events_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product25_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Origin: ALFA
  index, origin = bmv_bmvmarketdata_product25_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Code Of Event: ALFA
  index, code_of_event = bmv_bmvmarketdata_product25_intra_v1_1.code_of_event.dissect(buffer, index, packet, parent)

  -- Market: ALFA
  index, market = bmv_bmvmarketdata_product25_intra_v1_1.market.dissect(buffer, index, packet, parent)

  -- Send Time: Timestamp(2)
  index, send_time = bmv_bmvmarketdata_product25_intra_v1_1.send_time.dissect(buffer, index, packet, parent)

  -- End Time: Timestamp(2)
  index, end_time = bmv_bmvmarketdata_product25_intra_v1_1.end_time.dissect(buffer, index, packet, parent)

  -- Group: ALFA
  index, group = bmv_bmvmarketdata_product25_intra_v1_1.group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Events Message
bmv_bmvmarketdata_product25_intra_v1_1.system_events_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.system_events_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product25_intra_v1_1.system_events_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product25_intra_v1_1.system_events_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product25_intra_v1_1.system_events_message.fields(buffer, offset, packet, parent)
  end
end

-- Weighted Average Price Message
bmv_bmvmarketdata_product25_intra_v1_1.weighted_average_price_message = {}

-- Size: Weighted Average Price Message
bmv_bmvmarketdata_product25_intra_v1_1.weighted_average_price_message.size =
  bmv_bmvmarketdata_product25_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.weighted_average_price.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.volatility.size

-- Display: Weighted Average Price Message
bmv_bmvmarketdata_product25_intra_v1_1.weighted_average_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Weighted Average Price Message
bmv_bmvmarketdata_product25_intra_v1_1.weighted_average_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product25_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Origin: ALFA
  index, origin = bmv_bmvmarketdata_product25_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Weighted Average Price: Precio(8)
  index, weighted_average_price = bmv_bmvmarketdata_product25_intra_v1_1.weighted_average_price.dissect(buffer, index, packet, parent)

  -- Volatility: Precio(8)
  index, volatility = bmv_bmvmarketdata_product25_intra_v1_1.volatility.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Weighted Average Price Message
bmv_bmvmarketdata_product25_intra_v1_1.weighted_average_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.weighted_average_price_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product25_intra_v1_1.weighted_average_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product25_intra_v1_1.weighted_average_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product25_intra_v1_1.weighted_average_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Catalog Sent For Instruments Belonging To Mutual Funds Message
bmv_bmvmarketdata_product25_intra_v1_1.catalog_sent_for_instruments_belonging_to_mutual_funds_message = {}

-- Size: Catalog Sent For Instruments Belonging To Mutual Funds Message
bmv_bmvmarketdata_product25_intra_v1_1.catalog_sent_for_instruments_belonging_to_mutual_funds_message.size =
  bmv_bmvmarketdata_product25_intra_v1_1.number_of_the_instrument.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.type_of_value.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.issuing_company.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.series.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.sector.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.sub_sector.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.industry.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.sub_industry.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.trading_company.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.reference_price.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.reference_date.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.reference.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.isin.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.rating.size

-- Display: Catalog Sent For Instruments Belonging To Mutual Funds Message
bmv_bmvmarketdata_product25_intra_v1_1.catalog_sent_for_instruments_belonging_to_mutual_funds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Catalog Sent For Instruments Belonging To Mutual Funds Message
bmv_bmvmarketdata_product25_intra_v1_1.catalog_sent_for_instruments_belonging_to_mutual_funds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of The Instrument: Int32
  index, number_of_the_instrument = bmv_bmvmarketdata_product25_intra_v1_1.number_of_the_instrument.dissect(buffer, index, packet, parent)

  -- Origin: ALFA
  index, origin = bmv_bmvmarketdata_product25_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Type Of Value: ALFA
  index, type_of_value = bmv_bmvmarketdata_product25_intra_v1_1.type_of_value.dissect(buffer, index, packet, parent)

  -- Issuing Company: ALFA
  index, issuing_company = bmv_bmvmarketdata_product25_intra_v1_1.issuing_company.dissect(buffer, index, packet, parent)

  -- Series: ALFA
  index, series = bmv_bmvmarketdata_product25_intra_v1_1.series.dissect(buffer, index, packet, parent)

  -- Sector: Int8
  index, sector = bmv_bmvmarketdata_product25_intra_v1_1.sector.dissect(buffer, index, packet, parent)

  -- Sub Sector: Int8
  index, sub_sector = bmv_bmvmarketdata_product25_intra_v1_1.sub_sector.dissect(buffer, index, packet, parent)

  -- Industry: Int8
  index, industry = bmv_bmvmarketdata_product25_intra_v1_1.industry.dissect(buffer, index, packet, parent)

  -- Sub Industry: Int8
  index, sub_industry = bmv_bmvmarketdata_product25_intra_v1_1.sub_industry.dissect(buffer, index, packet, parent)

  -- Trading Company: ALFA
  index, trading_company = bmv_bmvmarketdata_product25_intra_v1_1.trading_company.dissect(buffer, index, packet, parent)

  -- Reference Price: Precio(8)
  index, reference_price = bmv_bmvmarketdata_product25_intra_v1_1.reference_price.dissect(buffer, index, packet, parent)

  -- Reference Date: Timestamp(1)
  index, reference_date = bmv_bmvmarketdata_product25_intra_v1_1.reference_date.dissect(buffer, index, packet, parent)

  -- Reference: ALFA
  index, reference = bmv_bmvmarketdata_product25_intra_v1_1.reference.dissect(buffer, index, packet, parent)

  -- Isin: ALFA
  index, isin = bmv_bmvmarketdata_product25_intra_v1_1.isin.dissect(buffer, index, packet, parent)

  -- Rating: ALFA
  index, rating = bmv_bmvmarketdata_product25_intra_v1_1.rating.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Catalog Sent For Instruments Belonging To Mutual Funds Message
bmv_bmvmarketdata_product25_intra_v1_1.catalog_sent_for_instruments_belonging_to_mutual_funds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.catalog_sent_for_instruments_belonging_to_mutual_funds_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product25_intra_v1_1.catalog_sent_for_instruments_belonging_to_mutual_funds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product25_intra_v1_1.catalog_sent_for_instruments_belonging_to_mutual_funds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product25_intra_v1_1.catalog_sent_for_instruments_belonging_to_mutual_funds_message.fields(buffer, offset, packet, parent)
  end
end

-- Catalogue Of Debt And Metals Instruments Message
bmv_bmvmarketdata_product25_intra_v1_1.catalogue_of_debt_and_metals_instruments_message = {}

-- Size: Catalogue Of Debt And Metals Instruments Message
bmv_bmvmarketdata_product25_intra_v1_1.catalogue_of_debt_and_metals_instruments_message.size =
  bmv_bmvmarketdata_product25_intra_v1_1.number_of_the_instrument.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.type_of_value.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.issuing_company.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.issuance.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.date_of_issuance.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.date_of_maturity.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.price_rate_of_reference.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.date_of_reference.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.reference.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.term_days.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.coupon_period.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.isin.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.market.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.current_nominal_value.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.original_nominal_value.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.outstanding_shares.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.amount_placed.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.trades_rate_price.size

-- Display: Catalogue Of Debt And Metals Instruments Message
bmv_bmvmarketdata_product25_intra_v1_1.catalogue_of_debt_and_metals_instruments_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Catalogue Of Debt And Metals Instruments Message
bmv_bmvmarketdata_product25_intra_v1_1.catalogue_of_debt_and_metals_instruments_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of The Instrument: Int32
  index, number_of_the_instrument = bmv_bmvmarketdata_product25_intra_v1_1.number_of_the_instrument.dissect(buffer, index, packet, parent)

  -- Origin: ALFA
  index, origin = bmv_bmvmarketdata_product25_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Type Of Value: ALFA
  index, type_of_value = bmv_bmvmarketdata_product25_intra_v1_1.type_of_value.dissect(buffer, index, packet, parent)

  -- Issuing Company: ALFA
  index, issuing_company = bmv_bmvmarketdata_product25_intra_v1_1.issuing_company.dissect(buffer, index, packet, parent)

  -- Issuance: ALFA
  index, issuance = bmv_bmvmarketdata_product25_intra_v1_1.issuance.dissect(buffer, index, packet, parent)

  -- Date Of Issuance: Timestamp(1)
  index, date_of_issuance = bmv_bmvmarketdata_product25_intra_v1_1.date_of_issuance.dissect(buffer, index, packet, parent)

  -- Date Of Maturity: Timestamp(1)
  index, date_of_maturity = bmv_bmvmarketdata_product25_intra_v1_1.date_of_maturity.dissect(buffer, index, packet, parent)

  -- Price Rate Of Reference: Precio(8)
  index, price_rate_of_reference = bmv_bmvmarketdata_product25_intra_v1_1.price_rate_of_reference.dissect(buffer, index, packet, parent)

  -- Date Of Reference: Timestamp(1)
  index, date_of_reference = bmv_bmvmarketdata_product25_intra_v1_1.date_of_reference.dissect(buffer, index, packet, parent)

  -- Reference: ALFA
  index, reference = bmv_bmvmarketdata_product25_intra_v1_1.reference.dissect(buffer, index, packet, parent)

  -- Term Days: Int16
  index, term_days = bmv_bmvmarketdata_product25_intra_v1_1.term_days.dissect(buffer, index, packet, parent)

  -- Coupon Period: Int16
  index, coupon_period = bmv_bmvmarketdata_product25_intra_v1_1.coupon_period.dissect(buffer, index, packet, parent)

  -- Isin: ALFA
  index, isin = bmv_bmvmarketdata_product25_intra_v1_1.isin.dissect(buffer, index, packet, parent)

  -- Market: ALFA
  index, market = bmv_bmvmarketdata_product25_intra_v1_1.market.dissect(buffer, index, packet, parent)

  -- Current Nominal Value: Precio(8)
  index, current_nominal_value = bmv_bmvmarketdata_product25_intra_v1_1.current_nominal_value.dissect(buffer, index, packet, parent)

  -- Original Nominal Value: Precio(8)
  index, original_nominal_value = bmv_bmvmarketdata_product25_intra_v1_1.original_nominal_value.dissect(buffer, index, packet, parent)

  -- Outstanding Shares: Int64
  index, outstanding_shares = bmv_bmvmarketdata_product25_intra_v1_1.outstanding_shares.dissect(buffer, index, packet, parent)

  -- Amount Placed: Int64
  index, amount_placed = bmv_bmvmarketdata_product25_intra_v1_1.amount_placed.dissect(buffer, index, packet, parent)

  -- Trades Rate Price: ALFA
  index, trades_rate_price = bmv_bmvmarketdata_product25_intra_v1_1.trades_rate_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Catalogue Of Debt And Metals Instruments Message
bmv_bmvmarketdata_product25_intra_v1_1.catalogue_of_debt_and_metals_instruments_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.catalogue_of_debt_and_metals_instruments_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product25_intra_v1_1.catalogue_of_debt_and_metals_instruments_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product25_intra_v1_1.catalogue_of_debt_and_metals_instruments_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product25_intra_v1_1.catalogue_of_debt_and_metals_instruments_message.fields(buffer, offset, packet, parent)
  end
end

-- Existence Of Bids At Mid Price Message
bmv_bmvmarketdata_product25_intra_v1_1.existence_of_bids_at_mid_price_message = {}

-- Size: Existence Of Bids At Mid Price Message
bmv_bmvmarketdata_product25_intra_v1_1.existence_of_bids_at_mid_price_message.size =
  bmv_bmvmarketdata_product25_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.bids_existing.size

-- Display: Existence Of Bids At Mid Price Message
bmv_bmvmarketdata_product25_intra_v1_1.existence_of_bids_at_mid_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Existence Of Bids At Mid Price Message
bmv_bmvmarketdata_product25_intra_v1_1.existence_of_bids_at_mid_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product25_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Origin: ALFA
  index, origin = bmv_bmvmarketdata_product25_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Bids Existing: ALFA
  index, bids_existing = bmv_bmvmarketdata_product25_intra_v1_1.bids_existing.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Existence Of Bids At Mid Price Message
bmv_bmvmarketdata_product25_intra_v1_1.existence_of_bids_at_mid_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.existence_of_bids_at_mid_price_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product25_intra_v1_1.existence_of_bids_at_mid_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product25_intra_v1_1.existence_of_bids_at_mid_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product25_intra_v1_1.existence_of_bids_at_mid_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Opening Of Continuous Auctions Message
bmv_bmvmarketdata_product25_intra_v1_1.opening_of_continuous_auctions_message = {}

-- Size: Opening Of Continuous Auctions Message
bmv_bmvmarketdata_product25_intra_v1_1.opening_of_continuous_auctions_message.size =
  bmv_bmvmarketdata_product25_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.auction_session_startup_time.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.auction_session_end_time.size

-- Display: Opening Of Continuous Auctions Message
bmv_bmvmarketdata_product25_intra_v1_1.opening_of_continuous_auctions_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Opening Of Continuous Auctions Message
bmv_bmvmarketdata_product25_intra_v1_1.opening_of_continuous_auctions_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product25_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Origin: ALFA
  index, origin = bmv_bmvmarketdata_product25_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Auction Session Startup Time: Timestamp(2)
  index, auction_session_startup_time = bmv_bmvmarketdata_product25_intra_v1_1.auction_session_startup_time.dissect(buffer, index, packet, parent)

  -- Auction Session End Time: Timestamp(2)
  index, auction_session_end_time = bmv_bmvmarketdata_product25_intra_v1_1.auction_session_end_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Opening Of Continuous Auctions Message
bmv_bmvmarketdata_product25_intra_v1_1.opening_of_continuous_auctions_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.opening_of_continuous_auctions_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product25_intra_v1_1.opening_of_continuous_auctions_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product25_intra_v1_1.opening_of_continuous_auctions_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product25_intra_v1_1.opening_of_continuous_auctions_message.fields(buffer, offset, packet, parent)
  end
end

-- Mutual Funds Trades Message
bmv_bmvmarketdata_product25_intra_v1_1.mutual_funds_trades_message = {}

-- Size: Mutual Funds Trades Message
bmv_bmvmarketdata_product25_intra_v1_1.mutual_funds_trades_message.size =
  bmv_bmvmarketdata_product25_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.date_of_the_trade.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.price.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.book_value.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.number_of_sales_trades.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.sales_volume.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.number_of_purchase_trades.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.purchase_volume.size

-- Display: Mutual Funds Trades Message
bmv_bmvmarketdata_product25_intra_v1_1.mutual_funds_trades_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mutual Funds Trades Message
bmv_bmvmarketdata_product25_intra_v1_1.mutual_funds_trades_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product25_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Origin: ALFA
  index, origin = bmv_bmvmarketdata_product25_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Date Of The Trade: Timestamp(1)
  index, date_of_the_trade = bmv_bmvmarketdata_product25_intra_v1_1.date_of_the_trade.dissect(buffer, index, packet, parent)

  -- Price: Precio(8)
  index, price = bmv_bmvmarketdata_product25_intra_v1_1.price.dissect(buffer, index, packet, parent)

  -- Book Value: Precio(8)
  index, book_value = bmv_bmvmarketdata_product25_intra_v1_1.book_value.dissect(buffer, index, packet, parent)

  -- Number Of Sales Trades: Int32
  index, number_of_sales_trades = bmv_bmvmarketdata_product25_intra_v1_1.number_of_sales_trades.dissect(buffer, index, packet, parent)

  -- Sales Volume: Int64
  index, sales_volume = bmv_bmvmarketdata_product25_intra_v1_1.sales_volume.dissect(buffer, index, packet, parent)

  -- Number Of Purchase Trades: Int32
  index, number_of_purchase_trades = bmv_bmvmarketdata_product25_intra_v1_1.number_of_purchase_trades.dissect(buffer, index, packet, parent)

  -- Purchase Volume: Int64
  index, purchase_volume = bmv_bmvmarketdata_product25_intra_v1_1.purchase_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mutual Funds Trades Message
bmv_bmvmarketdata_product25_intra_v1_1.mutual_funds_trades_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.mutual_funds_trades_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product25_intra_v1_1.mutual_funds_trades_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product25_intra_v1_1.mutual_funds_trades_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product25_intra_v1_1.mutual_funds_trades_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
bmv_bmvmarketdata_product25_intra_v1_1.payload = {}

-- Dissect: Payload
bmv_bmvmarketdata_product25_intra_v1_1.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Mutual Funds Trades Message
  if message_type == 0x28 then
    return bmv_bmvmarketdata_product25_intra_v1_1.mutual_funds_trades_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Opening Of Continuous Auctions Message
  if message_type == 0x29 then
    return bmv_bmvmarketdata_product25_intra_v1_1.opening_of_continuous_auctions_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Existence Of Bids At Mid Price Message
  if message_type == 0x2C then
    return bmv_bmvmarketdata_product25_intra_v1_1.existence_of_bids_at_mid_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Catalogue Of Debt And Metals Instruments Message
  if message_type == 0x2E then
    return bmv_bmvmarketdata_product25_intra_v1_1.catalogue_of_debt_and_metals_instruments_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Catalog Sent For Instruments Belonging To Mutual Funds Message
  if message_type == 0x30 then
    return bmv_bmvmarketdata_product25_intra_v1_1.catalog_sent_for_instruments_belonging_to_mutual_funds_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Weighted Average Price Message
  if message_type == 0x36 then
    return bmv_bmvmarketdata_product25_intra_v1_1.weighted_average_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Events Message
  if message_type == 0x37 then
    return bmv_bmvmarketdata_product25_intra_v1_1.system_events_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reference Price Message
  if message_type == 0x38 then
    return bmv_bmvmarketdata_product25_intra_v1_1.reference_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Changes In Status Message
  if message_type == 0x39 then
    return bmv_bmvmarketdata_product25_intra_v1_1.changes_in_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Catalog For Instruments Belonging To The Capital Warrants Market Message
  if message_type == 0x54 then
    return bmv_bmvmarketdata_product25_intra_v1_1.catalog_for_instruments_belonging_to_the_capital_warrants_market_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Catalog Sent For Instruments Belonging To Capital Tracs Message
  if message_type == 0x5B then
    return bmv_bmvmarketdata_product25_intra_v1_1.catalog_sent_for_instruments_belonging_to_capital_tracs_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Inav Message
  if message_type == 0x5D then
    return bmv_bmvmarketdata_product25_intra_v1_1.consolidated_inav_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Catalog For Instruments Belonging To The Local And Global Stock Market Message
  if message_type == 0x68 then
    return bmv_bmvmarketdata_product25_intra_v1_1.catalog_for_instruments_belonging_to_the_local_and_global_stock_market_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Probable Price Of Allocation Message
  if message_type == 0x69 then
    return bmv_bmvmarketdata_product25_intra_v1_1.probable_price_of_allocation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Relation Between Bmvbiva Instruments Message
  if message_type == 0x6A then
    return bmv_bmvmarketdata_product25_intra_v1_1.relation_between_bmvbiva_instruments_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Equities Market Trades Message
  if message_type == 0x70 then
    return bmv_bmvmarketdata_product25_intra_v1_1.equities_market_trades_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Trade Cancellation Message
  if message_type == 0x71 then
    return bmv_bmvmarketdata_product25_intra_v1_1.consolidated_trade_cancellation_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
bmv_bmvmarketdata_product25_intra_v1_1.message_header = {}

-- Size: Message Header
bmv_bmvmarketdata_product25_intra_v1_1.message_header.size =
  bmv_bmvmarketdata_product25_intra_v1_1.message_length.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.message_type.size

-- Display: Message Header
bmv_bmvmarketdata_product25_intra_v1_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
bmv_bmvmarketdata_product25_intra_v1_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: Int16
  index, message_length = bmv_bmvmarketdata_product25_intra_v1_1.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: ALPHA
  index, message_type = bmv_bmvmarketdata_product25_intra_v1_1.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
bmv_bmvmarketdata_product25_intra_v1_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.message_header, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product25_intra_v1_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product25_intra_v1_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product25_intra_v1_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message Block
bmv_bmvmarketdata_product25_intra_v1_1.message_block = {}

-- Display: Message Block
bmv_bmvmarketdata_product25_intra_v1_1.message_block.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Block
bmv_bmvmarketdata_product25_intra_v1_1.message_block.fields = function(buffer, offset, packet, parent, size_of_message_block, message_block_index)
  local index = offset

  -- Implicit Message Block Index
  if message_block_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.message_block_index, message_block_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = bmv_bmvmarketdata_product25_intra_v1_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 17 branches
  index = bmv_bmvmarketdata_product25_intra_v1_1.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message Block
bmv_bmvmarketdata_product25_intra_v1_1.message_block.dissect = function(buffer, offset, packet, parent, size_of_message_block, message_block_index)
  local index = offset + size_of_message_block

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.message_block, buffer(offset, 0))
    local current = bmv_bmvmarketdata_product25_intra_v1_1.message_block.fields(buffer, offset, packet, parent, size_of_message_block, message_block_index)
    parent:set_len(size_of_message_block)
    local display = bmv_bmvmarketdata_product25_intra_v1_1.message_block.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bmv_bmvmarketdata_product25_intra_v1_1.message_block.fields(buffer, offset, packet, parent, size_of_message_block, message_block_index)

    return index
  end
end

-- INTRA Multicast Header
bmv_bmvmarketdata_product25_intra_v1_1.intra_multicast_header = {}

-- Size: INTRA Multicast Header
bmv_bmvmarketdata_product25_intra_v1_1.intra_multicast_header.size =
  bmv_bmvmarketdata_product25_intra_v1_1.length.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.total_messages.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.market_data_group.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.session.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.sequence_number.size + 
  bmv_bmvmarketdata_product25_intra_v1_1.datetime.size

-- Display: INTRA Multicast Header
bmv_bmvmarketdata_product25_intra_v1_1.intra_multicast_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: INTRA Multicast Header
bmv_bmvmarketdata_product25_intra_v1_1.intra_multicast_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: Int16
  index, length = bmv_bmvmarketdata_product25_intra_v1_1.length.dissect(buffer, index, packet, parent)

  -- Total Messages: Int8
  index, total_messages = bmv_bmvmarketdata_product25_intra_v1_1.total_messages.dissect(buffer, index, packet, parent)

  -- Market Data Group: Int8
  index, market_data_group = bmv_bmvmarketdata_product25_intra_v1_1.market_data_group.dissect(buffer, index, packet, parent)

  -- Session: Int8
  index, session = bmv_bmvmarketdata_product25_intra_v1_1.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: Int32
  index, sequence_number = bmv_bmvmarketdata_product25_intra_v1_1.sequence_number.dissect(buffer, index, packet, parent)

  -- Datetime: Timestamp(3)
  index, datetime = bmv_bmvmarketdata_product25_intra_v1_1.datetime.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: INTRA Multicast Header
bmv_bmvmarketdata_product25_intra_v1_1.intra_multicast_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1.fields.intra_multicast_header, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product25_intra_v1_1.intra_multicast_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product25_intra_v1_1.intra_multicast_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product25_intra_v1_1.intra_multicast_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
bmv_bmvmarketdata_product25_intra_v1_1.packet = {}

-- Verify required size of Udp packet
bmv_bmvmarketdata_product25_intra_v1_1.packet.requiredsize = function(buffer)
  return buffer:len() >= bmv_bmvmarketdata_product25_intra_v1_1.intra_multicast_header.size
end

-- Dissect Packet
bmv_bmvmarketdata_product25_intra_v1_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- INTRA Multicast Header: Struct of 6 fields
  index, intra_multicast_header = bmv_bmvmarketdata_product25_intra_v1_1.intra_multicast_header.dissect(buffer, index, packet, parent)

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
    index, message_block = bmv_bmvmarketdata_product25_intra_v1_1.message_block.dissect(buffer, index, packet, parent, size_of_message_block, message_block_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_bmv_bmvmarketdata_product25_intra_v1_1.init()
end

-- Dissector for Bmv BmvMarketData Product25 Intra 1.1
function omi_bmv_bmvmarketdata_product25_intra_v1_1.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_bmv_bmvmarketdata_product25_intra_v1_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_bmv_bmvmarketdata_product25_intra_v1_1, buffer(), omi_bmv_bmvmarketdata_product25_intra_v1_1.description, "("..buffer:len().." Bytes)")
  return bmv_bmvmarketdata_product25_intra_v1_1.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
bmv_bmvmarketdata_product25_intra_v1_1.packet.fingerprint = function(buffer)
  if buffer:len() < 20 then
    return false
  end

  local message_type = buffer(19, 1):uint()

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

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Bmv BmvMarketData Product25 Intra 1.1 (Udp)
local function omi_bmv_bmvmarketdata_product25_intra_v1_1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not bmv_bmvmarketdata_product25_intra_v1_1.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not bmv_bmvmarketdata_product25_intra_v1_1.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_bmv_bmvmarketdata_product25_intra_v1_1
  omi_bmv_bmvmarketdata_product25_intra_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Bmv BmvMarketData Product25 Intra 1.1
omi_bmv_bmvmarketdata_product25_intra_v1_1:register_heuristic("udp", omi_bmv_bmvmarketdata_product25_intra_v1_1_udp_heuristic)

-- Register Bmv BmvMarketData Product25 Intra 1.1 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_bmv_bmvmarketdata_product25_intra_v1_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Bolsa Mexicana de Valores
--   Version: 1.1
--   Specification: Market Data Multicast_P25_1_ENG.pdf
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
