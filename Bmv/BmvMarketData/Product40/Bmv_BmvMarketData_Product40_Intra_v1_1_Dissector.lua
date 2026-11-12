-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Bmv BmvMarketData Product40 Intra 1.1 Protocol
local omi_bmv_bmvmarketdata_product40_intra_v1_1 = Proto("Omi.Bmv.BmvMarketData.Product40.Intra.v1.1", "Bmv BmvMarketData Product40 Intra 1.1")

-- Protocol table
local bmv_bmvmarketdata_product40_intra_v1_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Bmv BmvMarketData Product40 Intra 1.1 Fields
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.amount_placed = ProtoField.new("Amount Placed", "bmv.bmvmarketdata.product40.intra.v1.1.amountplaced", ftypes.INT64)
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.bid = ProtoField.new("Bid", "bmv.bmvmarketdata.product40.intra.v1.1.bid", ftypes.DOUBLE, nil, nil, nil, "Multiple bid price")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.blocks_amount = ProtoField.new("Blocks Amount", "bmv.bmvmarketdata.product40.intra.v1.1.blocksamount", ftypes.DOUBLE, nil, nil, nil, "Minimum amount for block trade")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.business_line = ProtoField.new("Business Line", "bmv.bmvmarketdata.product40.intra.v1.1.businessline", ftypes.INT8, nil, nil, nil, "See Industry Classification on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.cash_component = ProtoField.new("Cash Component", "bmv.bmvmarketdata.product40.intra.v1.1.cashcomponent", ftypes.DOUBLE, nil, nil, nil, "Cash component by unit")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.cfi_code = ProtoField.new("Cfi Code", "bmv.bmvmarketdata.product40.intra.v1.1.cficode", ftypes.STRING)
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.class = ProtoField.new("Class", "bmv.bmvmarketdata.product40.intra.v1.1.class", ftypes.STRING, nil, nil, nil, "Class name")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.closing_price = ProtoField.new("Closing Price", "bmv.bmvmarketdata.product40.intra.v1.1.closingprice", ftypes.DOUBLE, nil, nil, nil, "Close price of the day")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.contract_size = ProtoField.new("Contract Size", "bmv.bmvmarketdata.product40.intra.v1.1.contractsize", ftypes.INT32, nil, nil, nil, "Number of securities covered by an operated contract")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.current_coupon = ProtoField.new("Current Coupon", "bmv.bmvmarketdata.product40.intra.v1.1.currentcoupon", ftypes.INT16, nil, nil, nil, "Current coupon number")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.current_nominal_value = ProtoField.new("Current Nominal Value", "bmv.bmvmarketdata.product40.intra.v1.1.currentnominalvalue", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.daily_maturity = ProtoField.new("Daily Maturity", "bmv.bmvmarketdata.product40.intra.v1.1.dailymaturity", ftypes.STRING, nil, nil, nil, "1-For daily maturity 0 - Not daily maturity")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.datetime = ProtoField.new("Datetime", "bmv.bmvmarketdata.product40.intra.v1.1.datetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date and time the packet is created")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.datetime_utc = ProtoField.new("Datetime", "bmv.bmvmarketdata.product40.intra.v1.1.datetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date and time the packet is created")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.exchange = ProtoField.new("Exchange", "bmv.bmvmarketdata.product40.intra.v1.1.exchange", ftypes.STRING, nil, nil, nil, "Exchange where the issuer was listed M-BMV I- BIVA")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.excluded_securities = ProtoField.new("Excluded Securities", "bmv.bmvmarketdata.product40.intra.v1.1.excludedsecurities", ftypes.DOUBLE, nil, nil, nil, "Number of excluded underlying value securities")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.excluded_value = ProtoField.new("Excluded Value", "bmv.bmvmarketdata.product40.intra.v1.1.excludedvalue", ftypes.DOUBLE, nil, nil, nil, "Estimated value of excluded assets by unit")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.exercise_price = ProtoField.new("Exercise Price", "bmv.bmvmarketdata.product40.intra.v1.1.exerciseprice", ftypes.DOUBLE, nil, nil, nil, "Warrant exercise price")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.filler = ProtoField.new("Filler", "bmv.bmvmarketdata.product40.intra.v1.1.filler", ftypes.BYTES)
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.frequency = ProtoField.new("Frequency", "bmv.bmvmarketdata.product40.intra.v1.1.frequency", ftypes.INT8, nil, nil, nil, "Applicable only for forward chains")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.instrument_number = ProtoField.new("Instrument Number", "bmv.bmvmarketdata.product40.intra.v1.1.instrumentnumber", ftypes.INT32, nil, nil, nil, "Unique code during instruments life")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.isin = ProtoField.new("Isin", "bmv.bmvmarketdata.product40.intra.v1.1.isin", ftypes.STRING, nil, nil, nil, "ISIN instrument code")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.issue = ProtoField.new("Issue", "bmv.bmvmarketdata.product40.intra.v1.1.issue", ftypes.STRING, nil, nil, nil, "Issue code")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.issue_date = ProtoField.new("Issue Date", "bmv.bmvmarketdata.product40.intra.v1.1.issuedate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Placement and issue date")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.issue_date_utc = ProtoField.new("Issue Date", "bmv.bmvmarketdata.product40.intra.v1.1.issuedate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Placement and issue date")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.issuer = ProtoField.new("Issuer", "bmv.bmvmarketdata.product40.intra.v1.1.issuer", ftypes.STRING, nil, nil, nil, "Issuer code")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.key_exercise_price = ProtoField.new("Key Exercise Price", "bmv.bmvmarketdata.product40.intra.v1.1.keyexerciseprice", ftypes.STRING)
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.last_date_operation = ProtoField.new("Last Date Operation", "bmv.bmvmarketdata.product40.intra.v1.1.lastdateoperation", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Last operation date")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.last_date_operation_utc = ProtoField.new("Last Date Operation", "bmv.bmvmarketdata.product40.intra.v1.1.lastdateoperation.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Last operation date")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.last_day_of_operation = ProtoField.new("Last Day Of Operation", "bmv.bmvmarketdata.product40.intra.v1.1.lastdayofoperation", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date of last operation")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.last_day_of_operation_utc = ProtoField.new("Last Day Of Operation", "bmv.bmvmarketdata.product40.intra.v1.1.lastdayofoperation.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date of last operation")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.last_price = ProtoField.new("Last Price", "bmv.bmvmarketdata.product40.intra.v1.1.lastprice", ftypes.DOUBLE, nil, nil, nil, "Last reference price")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.length = ProtoField.new("Length", "bmv.bmvmarketdata.product40.intra.v1.1.length", ftypes.INT16, nil, nil, nil, "Packet length, including header and all attached messages")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.long_leg_instruments_id = ProtoField.new("Long Leg Instruments Id", "bmv.bmvmarketdata.product40.intra.v1.1.longleginstrumentsid", ftypes.INT32, nil, nil, nil, "Applicable only in rollovers and forwards")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.market = ProtoField.new("Market", "bmv.bmvmarketdata.product40.intra.v1.1.market", ftypes.STRING, nil, nil, nil, "See Markets Catalog on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.market_data_group = ProtoField.new("Market Data Group", "bmv.bmvmarketdata.product40.intra.v1.1.marketdatagroup", ftypes.INT8, nil, nil, nil, "See Market Data Groups Catalog")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.marketability = ProtoField.new("Marketability", "bmv.bmvmarketdata.product40.intra.v1.1.marketability", ftypes.STRING, nil, nil, nil, "See Marketability Catalog on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.maturity = ProtoField.new("Maturity", "bmv.bmvmarketdata.product40.intra.v1.1.maturity", ftypes.STRING, nil, nil, nil, "Maturity code. Blank space for swaps.")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.maturity_date = ProtoField.new("Maturity Date", "bmv.bmvmarketdata.product40.intra.v1.1.maturitydate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.maturity_date_utc = ProtoField.new("Maturity Date", "bmv.bmvmarketdata.product40.intra.v1.1.maturitydate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.message_length = ProtoField.new("Message Length", "bmv.bmvmarketdata.product40.intra.v1.1.messagelength", ftypes.INT16, nil, nil, nil, "Indicates message length contained in this message block")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.message_type = ProtoField.new("Message Type", "bmv.bmvmarketdata.product40.intra.v1.1.messagetype", ftypes.UINT16, nil, nil, nil, "Code identifying the message")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.number_of_certificates = ProtoField.new("Number Of Certificates", "bmv.bmvmarketdata.product40.intra.v1.1.numberofcertificates", ftypes.INT64, nil, nil, nil, "Number of Certificates by unit")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.number_of_maturities = ProtoField.new("Number Of Maturities", "bmv.bmvmarketdata.product40.intra.v1.1.numberofmaturities", ftypes.INT8, nil, nil, nil, "Applicable only for forward chains")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.number_of_registered_values = ProtoField.new("Number Of Registered Values", "bmv.bmvmarketdata.product40.intra.v1.1.numberofregisteredvalues", ftypes.INT64, nil, nil, nil, "Registered value numbers code")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.numeric_marketability = ProtoField.new("Numeric Marketability", "bmv.bmvmarketdata.product40.intra.v1.1.numericmarketability", ftypes.DOUBLE, nil, nil, nil, "View BMV Marketability Index Methodology on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.open_contracts = ProtoField.new("Open Contracts", "bmv.bmvmarketdata.product40.intra.v1.1.opencontracts", ftypes.INT32, nil, nil, nil, "Number of open contracts at prior closing day")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.operate_price_rate = ProtoField.new("Operate Price Rate", "bmv.bmvmarketdata.product40.intra.v1.1.operatepricerate", ftypes.STRING, nil, nil, nil, "T - Rate P - Price \" \" - Default")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.operating_company = ProtoField.new("Operating Company", "bmv.bmvmarketdata.product40.intra.v1.1.operatingcompany", ftypes.STRING, nil, nil, nil, "Mutual fund operating company code")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.option_type = ProtoField.new("Option Type", "bmv.bmvmarketdata.product40.intra.v1.1.optiontype", ftypes.STRING, nil, nil, nil, "Option type: \"C\" - Call \"P\" - Put")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.original_nominal_value = ProtoField.new("Original Nominal Value", "bmv.bmvmarketdata.product40.intra.v1.1.originalnominalvalue", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.outstanding_shares = ProtoField.new("Outstanding Shares", "bmv.bmvmarketdata.product40.intra.v1.1.outstandingshares", ftypes.INT64)
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.price = ProtoField.new("Price", "bmv.bmvmarketdata.product40.intra.v1.1.price", ftypes.DOUBLE, nil, nil, nil, "Underlying value price")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.prior_day_settlement_price = ProtoField.new("Prior Day Settlement Price", "bmv.bmvmarketdata.product40.intra.v1.1.priordaysettlementprice", ftypes.DOUBLE, nil, nil, nil, "Previous settlement price")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.product_code = ProtoField.new("Product Code", "bmv.bmvmarketdata.product40.intra.v1.1.productcode", ftypes.STRING, nil, nil, nil, "CME Identification (Chicago Mercantile Exchange)")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.rating = ProtoField.new("Rating", "bmv.bmvmarketdata.product40.intra.v1.1.rating", ftypes.STRING)
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.reference = ProtoField.new("Reference", "bmv.bmvmarketdata.product40.intra.v1.1.reference", ftypes.STRING, nil, nil, nil, "See Reference Catalog")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.reference_date = ProtoField.new("Reference Date", "bmv.bmvmarketdata.product40.intra.v1.1.referencedate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Last reference date")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.reference_date_utc = ProtoField.new("Reference Date", "bmv.bmvmarketdata.product40.intra.v1.1.referencedate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Last reference date")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.reference_price = ProtoField.new("Reference Price", "bmv.bmvmarketdata.product40.intra.v1.1.referenceprice", ftypes.DOUBLE, nil, nil, nil, "Last reference price")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.reference_pricerate = ProtoField.new("Reference Pricerate", "bmv.bmvmarketdata.product40.intra.v1.1.referencepricerate", ftypes.DOUBLE, nil, nil, nil, "Last reference price or rate")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.sector = ProtoField.new("Sector", "bmv.bmvmarketdata.product40.intra.v1.1.sector", ftypes.INT8, nil, nil, nil, "See Industry Classification on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.securities = ProtoField.new("Securities", "bmv.bmvmarketdata.product40.intra.v1.1.securities", ftypes.DOUBLE, nil, nil, nil, "Number of underlying value certificates")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.sequence_number = ProtoField.new("Sequence Number", "bmv.bmvmarketdata.product40.intra.v1.1.sequencenumber", ftypes.INT32, nil, nil, nil, "Sequence number of the first message attached to header")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.series = ProtoField.new("Series", "bmv.bmvmarketdata.product40.intra.v1.1.series", ftypes.STRING, nil, nil, nil, "Series code")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.session = ProtoField.new("Session", "bmv.bmvmarketdata.product40.intra.v1.1.session", ftypes.INT8, nil, nil, nil, "Current session identifier")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.shares_outstanding = ProtoField.new("Shares Outstanding", "bmv.bmvmarketdata.product40.intra.v1.1.sharesoutstanding", ftypes.INT64)
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.short_leg_instrument_identifier = ProtoField.new("Short Leg Instrument Identifier", "bmv.bmvmarketdata.product40.intra.v1.1.shortleginstrumentidentifier", ftypes.INT32, nil, nil, nil, "Applicable only in rollovers and forwards")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.sub_line = ProtoField.new("Sub Line", "bmv.bmvmarketdata.product40.intra.v1.1.subline", ftypes.INT8, nil, nil, nil, "See Industry Classification on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.subsector = ProtoField.new("Subsector", "bmv.bmvmarketdata.product40.intra.v1.1.subsector", ftypes.INT8, nil, nil, nil, "See Industry Classification on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.term_days = ProtoField.new("Term Days", "bmv.bmvmarketdata.product40.intra.v1.1.termdays", ftypes.INT16, nil, nil, nil, "Term days issue")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.theoretical_price = ProtoField.new("Theoretical Price", "bmv.bmvmarketdata.product40.intra.v1.1.theoreticalprice", ftypes.DOUBLE, nil, nil, nil, "Theoretical Price by certificate")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.total_messages = ProtoField.new("Total Messages", "bmv.bmvmarketdata.product40.intra.v1.1.totalmessages", ftypes.INT8, nil, nil, nil, "Number of messages after the header")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.trac_name = ProtoField.new("Trac Name", "bmv.bmvmarketdata.product40.intra.v1.1.tracname", ftypes.STRING, nil, nil, nil, "Identifies trac name")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.trac_number = ProtoField.new("Trac Number", "bmv.bmvmarketdata.product40.intra.v1.1.tracnumber", ftypes.INT32, nil, nil, nil, "Unique code during instruments life")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.type_of_strategy = ProtoField.new("Type Of Strategy", "bmv.bmvmarketdata.product40.intra.v1.1.typeofstrategy", ftypes.STRING, nil, nil, nil, "R-Rollover E-Engrapado(Chain of forwards) F-Forward(Foreign currency strategy)")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.underlying_issuer = ProtoField.new("Underlying Issuer", "bmv.bmvmarketdata.product40.intra.v1.1.underlyingissuer", ftypes.STRING, nil, nil, nil, "Underlying value issuer code")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.underlying_series = ProtoField.new("Underlying Series", "bmv.bmvmarketdata.product40.intra.v1.1.underlyingseries", ftypes.STRING, nil, nil, nil, "Underlying value series code")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.underlying_value_type = ProtoField.new("Underlying Value Type", "bmv.bmvmarketdata.product40.intra.v1.1.underlyingvaluetype", ftypes.STRING, nil, nil, nil, "Underlying value type code")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.value_type = ProtoField.new("Value Type", "bmv.bmvmarketdata.product40.intra.v1.1.valuetype", ftypes.STRING, nil, nil, nil, "Value type code")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.wap = ProtoField.new("Wap", "bmv.bmvmarketdata.product40.intra.v1.1.wap", ftypes.DOUBLE, nil, nil, nil, "Weighted Average Price (WAP)")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.warrant_type = ProtoField.new("Warrant Type", "bmv.bmvmarketdata.product40.intra.v1.1.warranttype", ftypes.STRING, nil, nil, nil, "Warrant type: \"C\"-Buy \"V\"-Sell “Null”-For BIVA’s instruments")

-- Bmv BmvMarketData Product40 Intra 1.1 Framing
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.intra_multicast_header = ProtoField.new("INTRA Multicast Header", "bmv.bmvmarketdata.product40.intra.v1.1.intramulticastheader", ftypes.STRING, nil, nil, nil, "BMV INTRA Multicast Header")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.message_block = ProtoField.new("Message Block", "bmv.bmvmarketdata.product40.intra.v1.1.messageblock", ftypes.STRING, nil, nil, nil, "BMV INTRA Multicast message block")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.message_header = ProtoField.new("Message Header", "bmv.bmvmarketdata.product40.intra.v1.1.messageheader", ftypes.STRING, nil, nil, nil, "Message length and message type")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.packet = ProtoField.new("Packet", "bmv.bmvmarketdata.product40.intra.v1.1.packet", ftypes.STRING, nil, nil, nil, "Bmv INTRA Multicast Udp Packet")

-- Bmv BmvMarketData Product40 1.1 Application Messages
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.catalog_for_instruments_belonging_to_the_capital_warrants_market_message = ProtoField.new("Catalog For Instruments Belonging To The Capital Warrants Market Message", "bmv.bmvmarketdata.product40.intra.v1.1.catalogforinstrumentsbelongingtothecapitalwarrantsmarketmessage", ftypes.STRING, nil, nil, nil, "Catalog for instruments belonging to the capital warrants market")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.catalog_for_instruments_belonging_to_the_local_and_global_stock_market_message = ProtoField.new("Catalog For Instruments Belonging To The Local And Global Stock Market Message", "bmv.bmvmarketdata.product40.intra.v1.1.catalogforinstrumentsbelongingtothelocalandglobalstockmarketmessage", ftypes.STRING, nil, nil, nil, "It disseminates information on the local and global stock market.")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.catalog_of_instruments_that_belong_to_the_debt_metals_and_money_market_message = ProtoField.new("Catalog Of Instruments That Belong To The Debt Metals And Money Market Message", "bmv.bmvmarketdata.product40.intra.v1.1.catalogofinstrumentsthatbelongtothedebtmetalsandmoneymarketmessage", ftypes.STRING, nil, nil, nil, "Catalog of instruments that belong to the Debt, Metals and Money market")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.catalog_sent_for_instruments_belonging_to_capital_tracs_message = ProtoField.new("Catalog Sent For Instruments Belonging To Capital Tracs Message", "bmv.bmvmarketdata.product40.intra.v1.1.catalogsentforinstrumentsbelongingtocapitaltracsmessage", ftypes.STRING, nil, nil, nil, "Catalog sent for instruments belonging to capital TRACS")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.catalog_sent_for_instruments_belonging_to_mutual_funds_message = ProtoField.new("Catalog Sent For Instruments Belonging To Mutual Funds Message", "bmv.bmvmarketdata.product40.intra.v1.1.catalogsentforinstrumentsbelongingtomutualfundsmessage", ftypes.STRING, nil, nil, nil, "Catalog sent for instruments belonging to mutual funds")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.catalog_sent_for_instruments_belonging_to_the_strategy_derivative_market_message = ProtoField.new("Catalog Sent For Instruments Belonging To The Strategy Derivative Market Message", "bmv.bmvmarketdata.product40.intra.v1.1.catalogsentforinstrumentsbelongingtothestrategyderivativemarketmessage", ftypes.STRING, nil, nil, nil, "Catalog sent for instruments belonging to the strategy derivative market")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.options_futures_and_swaps_derivatives_market_instruments_catalog_message = ProtoField.new("Options Futures And Swaps Derivatives Market Instruments Catalog Message", "bmv.bmvmarketdata.product40.intra.v1.1.optionsfuturesandswapsderivativesmarketinstrumentscatalogmessage", ftypes.STRING, nil, nil, nil, "Options, futures and swaps derivatives market instruments catalog")
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.underlying_value_on_warrants_catalog_message = ProtoField.new("Underlying Value On Warrants Catalog Message", "bmv.bmvmarketdata.product40.intra.v1.1.underlyingvalueonwarrantscatalogmessage", ftypes.STRING, nil, nil, nil, "Underlying value on warrants catalog")

-- Bmv BmvMarketData Product40 Intra 1.1 Generated Fields
omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.message_block_index = ProtoField.new("Message Block Index", "bmv.bmvmarketdata.product40.intra.v1.1.messageblockindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Bmv BmvMarketData Product40 Intra 1.1 Formatting
-----------------------------------------------------------------------

-- Text field character encoding (Wireshark ENC_ constant)
bmv_bmvmarketdata_product40_intra_v1_1.text_encoding = ENC_ASCII

-- timestamp format
local timestamp_format_enum = {
  { 1, "Full DateTime Local", 2 },
  { 2, "Full DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=Full DateTime Local, 3=Full DateTime Utc
bmv_bmvmarketdata_product40_intra_v1_1.timestamp_format = 2


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Bmv BmvMarketData Product40 Intra 1.1 Element Dissection Options
show.application_messages = true
show.headers = true
show.structs = true
show.padding = false
show.indexes = true

-- Register Bmv BmvMarketData Product40 Intra 1.1 Show Options
omi_bmv_bmvmarketdata_product40_intra_v1_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_bmv_bmvmarketdata_product40_intra_v1_1.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_bmv_bmvmarketdata_product40_intra_v1_1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_bmv_bmvmarketdata_product40_intra_v1_1.prefs.show_padding = Pref.bool("Show Padding", show.padding, "Parse and add Padding to protocol tree")
omi_bmv_bmvmarketdata_product40_intra_v1_1.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_bmv_bmvmarketdata_product40_intra_v1_1.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_bmv_bmvmarketdata_product40_intra_v1_1.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_bmv_bmvmarketdata_product40_intra_v1_1.prefs.show_application_messages then
    show.application_messages = omi_bmv_bmvmarketdata_product40_intra_v1_1.prefs.show_application_messages
  end
  if show.headers ~= omi_bmv_bmvmarketdata_product40_intra_v1_1.prefs.show_headers then
    show.headers = omi_bmv_bmvmarketdata_product40_intra_v1_1.prefs.show_headers
  end
  if show.padding ~= omi_bmv_bmvmarketdata_product40_intra_v1_1.prefs.show_padding then
    show.padding = omi_bmv_bmvmarketdata_product40_intra_v1_1.prefs.show_padding
  end
  if show.structs ~= omi_bmv_bmvmarketdata_product40_intra_v1_1.prefs.show_structs then
    show.structs = omi_bmv_bmvmarketdata_product40_intra_v1_1.prefs.show_structs
  end
  if show.indexes ~= omi_bmv_bmvmarketdata_product40_intra_v1_1.prefs.show_indexes then
    show.indexes = omi_bmv_bmvmarketdata_product40_intra_v1_1.prefs.show_indexes
  end
  if bmv_bmvmarketdata_product40_intra_v1_1.timestamp_format ~= omi_bmv_bmvmarketdata_product40_intra_v1_1.prefs.timestamp_format then
    bmv_bmvmarketdata_product40_intra_v1_1.timestamp_format = omi_bmv_bmvmarketdata_product40_intra_v1_1.prefs.timestamp_format
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
-- Bmv BmvMarketData Product40 Intra 1.1 Fields
-----------------------------------------------------------------------

-- Amount Placed
bmv_bmvmarketdata_product40_intra_v1_1.amount_placed = {}

-- Size: Amount Placed
bmv_bmvmarketdata_product40_intra_v1_1.amount_placed.size = 8

-- Display: Amount Placed
bmv_bmvmarketdata_product40_intra_v1_1.amount_placed.display = function(value)
  return "Amount Placed: "..value
end

-- Dissect: Amount Placed
bmv_bmvmarketdata_product40_intra_v1_1.amount_placed.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.amount_placed.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_product40_intra_v1_1.amount_placed.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.amount_placed, range, value, display)

  return offset + length, value
end

-- Bid
bmv_bmvmarketdata_product40_intra_v1_1.bid = {}

-- Size: Bid
bmv_bmvmarketdata_product40_intra_v1_1.bid.size = 8

-- Display: Bid
bmv_bmvmarketdata_product40_intra_v1_1.bid.display = function(value)
  return "Bid: "..value
end

-- Translate: Bid
bmv_bmvmarketdata_product40_intra_v1_1.bid.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Bid
bmv_bmvmarketdata_product40_intra_v1_1.bid.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.bid.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product40_intra_v1_1.bid.translate(raw)
  local display = bmv_bmvmarketdata_product40_intra_v1_1.bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.bid, range, value, display)

  return offset + length, value
end

-- Blocks Amount
bmv_bmvmarketdata_product40_intra_v1_1.blocks_amount = {}

-- Size: Blocks Amount
bmv_bmvmarketdata_product40_intra_v1_1.blocks_amount.size = 8

-- Display: Blocks Amount
bmv_bmvmarketdata_product40_intra_v1_1.blocks_amount.display = function(value)
  return "Blocks Amount: "..value
end

-- Translate: Blocks Amount
bmv_bmvmarketdata_product40_intra_v1_1.blocks_amount.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Blocks Amount
bmv_bmvmarketdata_product40_intra_v1_1.blocks_amount.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.blocks_amount.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product40_intra_v1_1.blocks_amount.translate(raw)
  local display = bmv_bmvmarketdata_product40_intra_v1_1.blocks_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.blocks_amount, range, value, display)

  return offset + length, value
end

-- Business Line
bmv_bmvmarketdata_product40_intra_v1_1.business_line = {}

-- Size: Business Line
bmv_bmvmarketdata_product40_intra_v1_1.business_line.size = 1

-- Display: Business Line
bmv_bmvmarketdata_product40_intra_v1_1.business_line.display = function(value)
  return "Business Line: "..value
end

-- Dissect: Business Line
bmv_bmvmarketdata_product40_intra_v1_1.business_line.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.business_line.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product40_intra_v1_1.business_line.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.business_line, range, value, display)

  return offset + length, value
end

-- Cash Component
bmv_bmvmarketdata_product40_intra_v1_1.cash_component = {}

-- Size: Cash Component
bmv_bmvmarketdata_product40_intra_v1_1.cash_component.size = 8

-- Display: Cash Component
bmv_bmvmarketdata_product40_intra_v1_1.cash_component.display = function(value)
  return "Cash Component: "..value
end

-- Translate: Cash Component
bmv_bmvmarketdata_product40_intra_v1_1.cash_component.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Cash Component
bmv_bmvmarketdata_product40_intra_v1_1.cash_component.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.cash_component.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product40_intra_v1_1.cash_component.translate(raw)
  local display = bmv_bmvmarketdata_product40_intra_v1_1.cash_component.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.cash_component, range, value, display)

  return offset + length, value
end

-- Cfi Code
bmv_bmvmarketdata_product40_intra_v1_1.cfi_code = {}

-- Size: Cfi Code
bmv_bmvmarketdata_product40_intra_v1_1.cfi_code.size = 6

-- Display: Cfi Code
bmv_bmvmarketdata_product40_intra_v1_1.cfi_code.display = function(value)
  return "Cfi Code: "..value
end

-- Dissect: Cfi Code
bmv_bmvmarketdata_product40_intra_v1_1.cfi_code.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.cfi_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product40_intra_v1_1.cfi_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.cfi_code, range, value, display)

  return offset + length, value
end

-- Class
bmv_bmvmarketdata_product40_intra_v1_1.class = {}

-- Size: Class
bmv_bmvmarketdata_product40_intra_v1_1.class.size = 7

-- Display: Class
bmv_bmvmarketdata_product40_intra_v1_1.class.display = function(value)
  return "Class: "..value
end

-- Dissect: Class
bmv_bmvmarketdata_product40_intra_v1_1.class.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.class.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product40_intra_v1_1.class.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.class, range, value, display)

  return offset + length, value
end

-- Closing Price
bmv_bmvmarketdata_product40_intra_v1_1.closing_price = {}

-- Size: Closing Price
bmv_bmvmarketdata_product40_intra_v1_1.closing_price.size = 8

-- Display: Closing Price
bmv_bmvmarketdata_product40_intra_v1_1.closing_price.display = function(value)
  return "Closing Price: "..value
end

-- Translate: Closing Price
bmv_bmvmarketdata_product40_intra_v1_1.closing_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Closing Price
bmv_bmvmarketdata_product40_intra_v1_1.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.closing_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product40_intra_v1_1.closing_price.translate(raw)
  local display = bmv_bmvmarketdata_product40_intra_v1_1.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Contract Size
bmv_bmvmarketdata_product40_intra_v1_1.contract_size = {}

-- Size: Contract Size
bmv_bmvmarketdata_product40_intra_v1_1.contract_size.size = 4

-- Display: Contract Size
bmv_bmvmarketdata_product40_intra_v1_1.contract_size.display = function(value)
  return "Contract Size: "..value
end

-- Dissect: Contract Size
bmv_bmvmarketdata_product40_intra_v1_1.contract_size.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.contract_size.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product40_intra_v1_1.contract_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.contract_size, range, value, display)

  return offset + length, value
end

-- Current Coupon
bmv_bmvmarketdata_product40_intra_v1_1.current_coupon = {}

-- Size: Current Coupon
bmv_bmvmarketdata_product40_intra_v1_1.current_coupon.size = 2

-- Display: Current Coupon
bmv_bmvmarketdata_product40_intra_v1_1.current_coupon.display = function(value)
  return "Current Coupon: "..value
end

-- Dissect: Current Coupon
bmv_bmvmarketdata_product40_intra_v1_1.current_coupon.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.current_coupon.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product40_intra_v1_1.current_coupon.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.current_coupon, range, value, display)

  return offset + length, value
end

-- Current Nominal Value
bmv_bmvmarketdata_product40_intra_v1_1.current_nominal_value = {}

-- Size: Current Nominal Value
bmv_bmvmarketdata_product40_intra_v1_1.current_nominal_value.size = 8

-- Display: Current Nominal Value
bmv_bmvmarketdata_product40_intra_v1_1.current_nominal_value.display = function(value)
  return "Current Nominal Value: "..value
end

-- Translate: Current Nominal Value
bmv_bmvmarketdata_product40_intra_v1_1.current_nominal_value.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Current Nominal Value
bmv_bmvmarketdata_product40_intra_v1_1.current_nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.current_nominal_value.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product40_intra_v1_1.current_nominal_value.translate(raw)
  local display = bmv_bmvmarketdata_product40_intra_v1_1.current_nominal_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.current_nominal_value, range, value, display)

  return offset + length, value
end

-- Daily Maturity
bmv_bmvmarketdata_product40_intra_v1_1.daily_maturity = {}

-- Size: Daily Maturity
bmv_bmvmarketdata_product40_intra_v1_1.daily_maturity.size = 1

-- Display: Daily Maturity
bmv_bmvmarketdata_product40_intra_v1_1.daily_maturity.labels = {
  ["1"] = "Daily Maturity: For Daily Maturity (1)",
  ["0"] = "Daily Maturity: Not Daily Maturity (0)",
}

bmv_bmvmarketdata_product40_intra_v1_1.daily_maturity.display = function(value)
  return bmv_bmvmarketdata_product40_intra_v1_1.daily_maturity.labels[value] or "Daily Maturity: Unknown("..value..")"
end

-- Dissect: Daily Maturity
bmv_bmvmarketdata_product40_intra_v1_1.daily_maturity.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.daily_maturity.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product40_intra_v1_1.daily_maturity.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.daily_maturity, range, value, display)

  return offset + length, value
end

-- Datetime
bmv_bmvmarketdata_product40_intra_v1_1.datetime = {}

-- Size: Datetime
bmv_bmvmarketdata_product40_intra_v1_1.datetime.size = 8

-- Dissect: Datetime
bmv_bmvmarketdata_product40_intra_v1_1.datetime.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.datetime.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.datetime
  if bmv_bmvmarketdata_product40_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.datetime_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Exchange
bmv_bmvmarketdata_product40_intra_v1_1.exchange = {}

-- Size: Exchange
bmv_bmvmarketdata_product40_intra_v1_1.exchange.size = 1

-- Display: Exchange
bmv_bmvmarketdata_product40_intra_v1_1.exchange.labels = {
  ["M"] = "Exchange: Bmv (M)",
  ["I"] = "Exchange: Biva (I)",
}

bmv_bmvmarketdata_product40_intra_v1_1.exchange.display = function(value)
  return bmv_bmvmarketdata_product40_intra_v1_1.exchange.labels[value] or "Exchange: Unknown("..value..")"
end

-- Dissect: Exchange
bmv_bmvmarketdata_product40_intra_v1_1.exchange.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.exchange.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product40_intra_v1_1.exchange.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.exchange, range, value, display)

  return offset + length, value
end

-- Excluded Securities
bmv_bmvmarketdata_product40_intra_v1_1.excluded_securities = {}

-- Size: Excluded Securities
bmv_bmvmarketdata_product40_intra_v1_1.excluded_securities.size = 8

-- Display: Excluded Securities
bmv_bmvmarketdata_product40_intra_v1_1.excluded_securities.display = function(value)
  return "Excluded Securities: "..value
end

-- Translate: Excluded Securities
bmv_bmvmarketdata_product40_intra_v1_1.excluded_securities.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Excluded Securities
bmv_bmvmarketdata_product40_intra_v1_1.excluded_securities.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.excluded_securities.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product40_intra_v1_1.excluded_securities.translate(raw)
  local display = bmv_bmvmarketdata_product40_intra_v1_1.excluded_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.excluded_securities, range, value, display)

  return offset + length, value
end

-- Excluded Value
bmv_bmvmarketdata_product40_intra_v1_1.excluded_value = {}

-- Size: Excluded Value
bmv_bmvmarketdata_product40_intra_v1_1.excluded_value.size = 8

-- Display: Excluded Value
bmv_bmvmarketdata_product40_intra_v1_1.excluded_value.display = function(value)
  return "Excluded Value: "..value
end

-- Translate: Excluded Value
bmv_bmvmarketdata_product40_intra_v1_1.excluded_value.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Excluded Value
bmv_bmvmarketdata_product40_intra_v1_1.excluded_value.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.excluded_value.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product40_intra_v1_1.excluded_value.translate(raw)
  local display = bmv_bmvmarketdata_product40_intra_v1_1.excluded_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.excluded_value, range, value, display)

  return offset + length, value
end

-- Exercise Price
bmv_bmvmarketdata_product40_intra_v1_1.exercise_price = {}

-- Size: Exercise Price
bmv_bmvmarketdata_product40_intra_v1_1.exercise_price.size = 8

-- Display: Exercise Price
bmv_bmvmarketdata_product40_intra_v1_1.exercise_price.display = function(value)
  return "Exercise Price: "..value
end

-- Translate: Exercise Price
bmv_bmvmarketdata_product40_intra_v1_1.exercise_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Exercise Price
bmv_bmvmarketdata_product40_intra_v1_1.exercise_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.exercise_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product40_intra_v1_1.exercise_price.translate(raw)
  local display = bmv_bmvmarketdata_product40_intra_v1_1.exercise_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.exercise_price, range, value, display)

  return offset + length, value
end

-- Filler
bmv_bmvmarketdata_product40_intra_v1_1.filler = {}

-- Size: Filler
bmv_bmvmarketdata_product40_intra_v1_1.filler.size = 20

-- Display: Filler
bmv_bmvmarketdata_product40_intra_v1_1.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
bmv_bmvmarketdata_product40_intra_v1_1.filler.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.filler.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bmv_bmvmarketdata_product40_intra_v1_1.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.filler, range, value, display)

  return offset + length, value
end

-- Frequency
bmv_bmvmarketdata_product40_intra_v1_1.frequency = {}

-- Size: Frequency
bmv_bmvmarketdata_product40_intra_v1_1.frequency.size = 1

-- Display: Frequency
bmv_bmvmarketdata_product40_intra_v1_1.frequency.display = function(value)
  return "Frequency: "..value
end

-- Dissect: Frequency
bmv_bmvmarketdata_product40_intra_v1_1.frequency.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.frequency.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product40_intra_v1_1.frequency.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.frequency, range, value, display)

  return offset + length, value
end

-- Instrument Number
bmv_bmvmarketdata_product40_intra_v1_1.instrument_number = {}

-- Size: Instrument Number
bmv_bmvmarketdata_product40_intra_v1_1.instrument_number.size = 4

-- Display: Instrument Number
bmv_bmvmarketdata_product40_intra_v1_1.instrument_number.display = function(value)
  return "Instrument Number: "..value
end

-- Dissect: Instrument Number
bmv_bmvmarketdata_product40_intra_v1_1.instrument_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.instrument_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product40_intra_v1_1.instrument_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.instrument_number, range, value, display)

  return offset + length, value
end

-- Isin
bmv_bmvmarketdata_product40_intra_v1_1.isin = {}

-- Size: Isin
bmv_bmvmarketdata_product40_intra_v1_1.isin.size = 12

-- Display: Isin
bmv_bmvmarketdata_product40_intra_v1_1.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
bmv_bmvmarketdata_product40_intra_v1_1.isin.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product40_intra_v1_1.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.isin, range, value, display)

  return offset + length, value
end

-- Issue
bmv_bmvmarketdata_product40_intra_v1_1.issue = {}

-- Size: Issue
bmv_bmvmarketdata_product40_intra_v1_1.issue.size = 6

-- Display: Issue
bmv_bmvmarketdata_product40_intra_v1_1.issue.display = function(value)
  return "Issue: "..value
end

-- Dissect: Issue
bmv_bmvmarketdata_product40_intra_v1_1.issue.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.issue.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product40_intra_v1_1.issue.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.issue, range, value, display)

  return offset + length, value
end

-- Issue Date
bmv_bmvmarketdata_product40_intra_v1_1.issue_date = {}

-- Size: Issue Date
bmv_bmvmarketdata_product40_intra_v1_1.issue_date.size = 8

-- Dissect: Issue Date
bmv_bmvmarketdata_product40_intra_v1_1.issue_date.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.issue_date.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.issue_date
  if bmv_bmvmarketdata_product40_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.issue_date_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Issuer
bmv_bmvmarketdata_product40_intra_v1_1.issuer = {}

-- Size: Issuer
bmv_bmvmarketdata_product40_intra_v1_1.issuer.size = 7

-- Display: Issuer
bmv_bmvmarketdata_product40_intra_v1_1.issuer.display = function(value)
  return "Issuer: "..value
end

-- Dissect: Issuer
bmv_bmvmarketdata_product40_intra_v1_1.issuer.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.issuer.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product40_intra_v1_1.issuer.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.issuer, range, value, display)

  return offset + length, value
end

-- Key Exercise Price
bmv_bmvmarketdata_product40_intra_v1_1.key_exercise_price = {}

-- Size: Key Exercise Price
bmv_bmvmarketdata_product40_intra_v1_1.key_exercise_price.size = 6

-- Display: Key Exercise Price
bmv_bmvmarketdata_product40_intra_v1_1.key_exercise_price.display = function(value)
  return "Key Exercise Price: "..value
end

-- Dissect: Key Exercise Price
bmv_bmvmarketdata_product40_intra_v1_1.key_exercise_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.key_exercise_price.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product40_intra_v1_1.key_exercise_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.key_exercise_price, range, value, display)

  return offset + length, value
end

-- Last Date Operation
bmv_bmvmarketdata_product40_intra_v1_1.last_date_operation = {}

-- Size: Last Date Operation
bmv_bmvmarketdata_product40_intra_v1_1.last_date_operation.size = 8

-- Dissect: Last Date Operation
bmv_bmvmarketdata_product40_intra_v1_1.last_date_operation.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.last_date_operation.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.last_date_operation
  if bmv_bmvmarketdata_product40_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.last_date_operation_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Last Day Of Operation
bmv_bmvmarketdata_product40_intra_v1_1.last_day_of_operation = {}

-- Size: Last Day Of Operation
bmv_bmvmarketdata_product40_intra_v1_1.last_day_of_operation.size = 8

-- Dissect: Last Day Of Operation
bmv_bmvmarketdata_product40_intra_v1_1.last_day_of_operation.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.last_day_of_operation.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.last_day_of_operation
  if bmv_bmvmarketdata_product40_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.last_day_of_operation_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Last Price
bmv_bmvmarketdata_product40_intra_v1_1.last_price = {}

-- Size: Last Price
bmv_bmvmarketdata_product40_intra_v1_1.last_price.size = 8

-- Display: Last Price
bmv_bmvmarketdata_product40_intra_v1_1.last_price.display = function(value)
  return "Last Price: "..value
end

-- Translate: Last Price
bmv_bmvmarketdata_product40_intra_v1_1.last_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Price
bmv_bmvmarketdata_product40_intra_v1_1.last_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.last_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product40_intra_v1_1.last_price.translate(raw)
  local display = bmv_bmvmarketdata_product40_intra_v1_1.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.last_price, range, value, display)

  return offset + length, value
end

-- Length
bmv_bmvmarketdata_product40_intra_v1_1.length = {}

-- Size: Length
bmv_bmvmarketdata_product40_intra_v1_1.length.size = 2

-- Display: Length
bmv_bmvmarketdata_product40_intra_v1_1.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
bmv_bmvmarketdata_product40_intra_v1_1.length.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product40_intra_v1_1.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.length, range, value, display)

  return offset + length, value
end

-- Long Leg Instruments Id
bmv_bmvmarketdata_product40_intra_v1_1.long_leg_instruments_id = {}

-- Size: Long Leg Instruments Id
bmv_bmvmarketdata_product40_intra_v1_1.long_leg_instruments_id.size = 4

-- Display: Long Leg Instruments Id
bmv_bmvmarketdata_product40_intra_v1_1.long_leg_instruments_id.display = function(value)
  return "Long Leg Instruments Id: "..value
end

-- Dissect: Long Leg Instruments Id
bmv_bmvmarketdata_product40_intra_v1_1.long_leg_instruments_id.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.long_leg_instruments_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product40_intra_v1_1.long_leg_instruments_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.long_leg_instruments_id, range, value, display)

  return offset + length, value
end

-- Market
bmv_bmvmarketdata_product40_intra_v1_1.market = {}

-- Size: Market
bmv_bmvmarketdata_product40_intra_v1_1.market.size = 1

-- Display: Market
bmv_bmvmarketdata_product40_intra_v1_1.market.display = function(value)
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
bmv_bmvmarketdata_product40_intra_v1_1.market.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.market.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product40_intra_v1_1.market.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.market, range, value, display)

  return offset + length, value
end

-- Market Data Group
bmv_bmvmarketdata_product40_intra_v1_1.market_data_group = {}

-- Size: Market Data Group
bmv_bmvmarketdata_product40_intra_v1_1.market_data_group.size = 1

-- Display: Market Data Group
bmv_bmvmarketdata_product40_intra_v1_1.market_data_group.labels = {
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

bmv_bmvmarketdata_product40_intra_v1_1.market_data_group.display = function(value)
  return bmv_bmvmarketdata_product40_intra_v1_1.market_data_group.labels[value] or "Market Data Group: Unknown("..value..")"
end

-- Dissect: Market Data Group
bmv_bmvmarketdata_product40_intra_v1_1.market_data_group.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.market_data_group.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product40_intra_v1_1.market_data_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Marketability
bmv_bmvmarketdata_product40_intra_v1_1.marketability = {}

-- Size: Marketability
bmv_bmvmarketdata_product40_intra_v1_1.marketability.size = 2

-- Display: Marketability
bmv_bmvmarketdata_product40_intra_v1_1.marketability.labels = {
  ["AL"] = "Marketability: High (AL)",
  ["ME"] = "Marketability: Medium (ME)",
  ["BA"] = "Marketability: Low (BA)",
  ["MI"] = "Marketability: Minimum (MI)",
  ["RC"] = "Marketability: Recent Quotation (RC)",
  ["NU"] = "Marketability: Null Or Inapplicable (NU)",
}

bmv_bmvmarketdata_product40_intra_v1_1.marketability.display = function(value)
  return bmv_bmvmarketdata_product40_intra_v1_1.marketability.labels[value] or "Marketability: Unknown("..value..")"
end

-- Dissect: Marketability
bmv_bmvmarketdata_product40_intra_v1_1.marketability.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.marketability.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product40_intra_v1_1.marketability.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.marketability, range, value, display)

  return offset + length, value
end

-- Maturity
bmv_bmvmarketdata_product40_intra_v1_1.maturity = {}

-- Size: Maturity
bmv_bmvmarketdata_product40_intra_v1_1.maturity.size = 6

-- Display: Maturity
bmv_bmvmarketdata_product40_intra_v1_1.maturity.display = function(value)
  return "Maturity: "..value
end

-- Dissect: Maturity
bmv_bmvmarketdata_product40_intra_v1_1.maturity.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.maturity.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product40_intra_v1_1.maturity.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.maturity, range, value, display)

  return offset + length, value
end

-- Maturity Date
bmv_bmvmarketdata_product40_intra_v1_1.maturity_date = {}

-- Size: Maturity Date
bmv_bmvmarketdata_product40_intra_v1_1.maturity_date.size = 8

-- Dissect: Maturity Date
bmv_bmvmarketdata_product40_intra_v1_1.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.maturity_date.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.maturity_date
  if bmv_bmvmarketdata_product40_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.maturity_date_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Message Length
bmv_bmvmarketdata_product40_intra_v1_1.message_length = {}

-- Size: Message Length
bmv_bmvmarketdata_product40_intra_v1_1.message_length.size = 2

-- Display: Message Length
bmv_bmvmarketdata_product40_intra_v1_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
bmv_bmvmarketdata_product40_intra_v1_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.message_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product40_intra_v1_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
bmv_bmvmarketdata_product40_intra_v1_1.message_type = {}

-- Size: Message Type
bmv_bmvmarketdata_product40_intra_v1_1.message_type.size = 2

-- Display: Message Type
bmv_bmvmarketdata_product40_intra_v1_1.message_type.display = function(value)
  if value == 0x6361 then
    return "Message Type: Catalog For Instruments Belonging To The Local And Global Stock Market Message (0x6361)"
  end
  if value == 0x6362 then
    return "Message Type: Catalog Of Instruments That Belong To The Debt Metals And Money Market Message (0x6362)"
  end
  if value == 0x6363 then
    return "Message Type: Catalog For Instruments Belonging To The Capital Warrants Market Message (0x6363)"
  end
  if value == 0x6364 then
    return "Message Type: Options Futures And Swaps Derivatives Market Instruments Catalog Message (0x6364)"
  end
  if value == 0x6365 then
    return "Message Type: Catalog Sent For Instruments Belonging To Capital Tracs Message (0x6365)"
  end
  if value == 0x6366 then
    return "Message Type: Catalog Sent For Instruments Belonging To Mutual Funds Message (0x6366)"
  end
  if value == 0x6367 then
    return "Message Type: Catalog Sent For Instruments Belonging To The Strategy Derivative Market Message (0x6367)"
  end
  if value == 0x6379 then
    return "Message Type: Underlying Value On Warrants Catalog Message (0x6379)"
  end

  return "Message Type: Unknown("..string.format("0x%04X", value)..")"
end

-- Dissect: Message Type
bmv_bmvmarketdata_product40_intra_v1_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bmv_bmvmarketdata_product40_intra_v1_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Number Of Certificates
bmv_bmvmarketdata_product40_intra_v1_1.number_of_certificates = {}

-- Size: Number Of Certificates
bmv_bmvmarketdata_product40_intra_v1_1.number_of_certificates.size = 8

-- Display: Number Of Certificates
bmv_bmvmarketdata_product40_intra_v1_1.number_of_certificates.display = function(value)
  return "Number Of Certificates: "..value
end

-- Dissect: Number Of Certificates
bmv_bmvmarketdata_product40_intra_v1_1.number_of_certificates.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.number_of_certificates.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_product40_intra_v1_1.number_of_certificates.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.number_of_certificates, range, value, display)

  return offset + length, value
end

-- Number Of Maturities
bmv_bmvmarketdata_product40_intra_v1_1.number_of_maturities = {}

-- Size: Number Of Maturities
bmv_bmvmarketdata_product40_intra_v1_1.number_of_maturities.size = 1

-- Display: Number Of Maturities
bmv_bmvmarketdata_product40_intra_v1_1.number_of_maturities.display = function(value)
  return "Number Of Maturities: "..value
end

-- Dissect: Number Of Maturities
bmv_bmvmarketdata_product40_intra_v1_1.number_of_maturities.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.number_of_maturities.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product40_intra_v1_1.number_of_maturities.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.number_of_maturities, range, value, display)

  return offset + length, value
end

-- Number Of Registered Values
bmv_bmvmarketdata_product40_intra_v1_1.number_of_registered_values = {}

-- Size: Number Of Registered Values
bmv_bmvmarketdata_product40_intra_v1_1.number_of_registered_values.size = 8

-- Display: Number Of Registered Values
bmv_bmvmarketdata_product40_intra_v1_1.number_of_registered_values.display = function(value)
  return "Number Of Registered Values: "..value
end

-- Dissect: Number Of Registered Values
bmv_bmvmarketdata_product40_intra_v1_1.number_of_registered_values.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.number_of_registered_values.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_product40_intra_v1_1.number_of_registered_values.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.number_of_registered_values, range, value, display)

  return offset + length, value
end

-- Numeric Marketability
bmv_bmvmarketdata_product40_intra_v1_1.numeric_marketability = {}

-- Size: Numeric Marketability
bmv_bmvmarketdata_product40_intra_v1_1.numeric_marketability.size = 4

-- Display: Numeric Marketability
bmv_bmvmarketdata_product40_intra_v1_1.numeric_marketability.display = function(value)
  return "Numeric Marketability: "..value
end

-- Translate: Numeric Marketability
bmv_bmvmarketdata_product40_intra_v1_1.numeric_marketability.translate = function(raw)
  return raw/10000
end

-- Dissect: Numeric Marketability
bmv_bmvmarketdata_product40_intra_v1_1.numeric_marketability.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.numeric_marketability.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_product40_intra_v1_1.numeric_marketability.translate(raw)
  local display = bmv_bmvmarketdata_product40_intra_v1_1.numeric_marketability.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.numeric_marketability, range, value, display)

  return offset + length, value
end

-- Open Contracts
bmv_bmvmarketdata_product40_intra_v1_1.open_contracts = {}

-- Size: Open Contracts
bmv_bmvmarketdata_product40_intra_v1_1.open_contracts.size = 4

-- Display: Open Contracts
bmv_bmvmarketdata_product40_intra_v1_1.open_contracts.display = function(value)
  return "Open Contracts: "..value
end

-- Dissect: Open Contracts
bmv_bmvmarketdata_product40_intra_v1_1.open_contracts.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.open_contracts.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product40_intra_v1_1.open_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.open_contracts, range, value, display)

  return offset + length, value
end

-- Operate Price Rate
bmv_bmvmarketdata_product40_intra_v1_1.operate_price_rate = {}

-- Size: Operate Price Rate
bmv_bmvmarketdata_product40_intra_v1_1.operate_price_rate.size = 1

-- Display: Operate Price Rate
bmv_bmvmarketdata_product40_intra_v1_1.operate_price_rate.display = function(value)
  if value == "T" then
    return "Operate Price Rate: Rate (T)"
  end
  if value == "P" then
    return "Operate Price Rate: Price (P)"
  end
  if value == " " then
    return "Operate Price Rate: Default (<whitespace>)"
  end

  return "Operate Price Rate: Unknown("..value..")"
end

-- Dissect: Operate Price Rate
bmv_bmvmarketdata_product40_intra_v1_1.operate_price_rate.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.operate_price_rate.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product40_intra_v1_1.operate_price_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.operate_price_rate, range, value, display)

  return offset + length, value
end

-- Operating Company
bmv_bmvmarketdata_product40_intra_v1_1.operating_company = {}

-- Size: Operating Company
bmv_bmvmarketdata_product40_intra_v1_1.operating_company.size = 10

-- Display: Operating Company
bmv_bmvmarketdata_product40_intra_v1_1.operating_company.display = function(value)
  return "Operating Company: "..value
end

-- Dissect: Operating Company
bmv_bmvmarketdata_product40_intra_v1_1.operating_company.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.operating_company.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product40_intra_v1_1.operating_company.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.operating_company, range, value, display)

  return offset + length, value
end

-- Option Type
bmv_bmvmarketdata_product40_intra_v1_1.option_type = {}

-- Size: Option Type
bmv_bmvmarketdata_product40_intra_v1_1.option_type.size = 1

-- Display: Option Type
bmv_bmvmarketdata_product40_intra_v1_1.option_type.labels = {
  ["C"] = "Option Type: Call (C)",
  ["P"] = "Option Type: Put (P)",
}

bmv_bmvmarketdata_product40_intra_v1_1.option_type.display = function(value)
  return bmv_bmvmarketdata_product40_intra_v1_1.option_type.labels[value] or "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
bmv_bmvmarketdata_product40_intra_v1_1.option_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.option_type.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product40_intra_v1_1.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.option_type, range, value, display)

  return offset + length, value
end

-- Original Nominal Value
bmv_bmvmarketdata_product40_intra_v1_1.original_nominal_value = {}

-- Size: Original Nominal Value
bmv_bmvmarketdata_product40_intra_v1_1.original_nominal_value.size = 8

-- Display: Original Nominal Value
bmv_bmvmarketdata_product40_intra_v1_1.original_nominal_value.display = function(value)
  return "Original Nominal Value: "..value
end

-- Translate: Original Nominal Value
bmv_bmvmarketdata_product40_intra_v1_1.original_nominal_value.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Original Nominal Value
bmv_bmvmarketdata_product40_intra_v1_1.original_nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.original_nominal_value.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product40_intra_v1_1.original_nominal_value.translate(raw)
  local display = bmv_bmvmarketdata_product40_intra_v1_1.original_nominal_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.original_nominal_value, range, value, display)

  return offset + length, value
end

-- Outstanding Shares
bmv_bmvmarketdata_product40_intra_v1_1.outstanding_shares = {}

-- Size: Outstanding Shares
bmv_bmvmarketdata_product40_intra_v1_1.outstanding_shares.size = 8

-- Display: Outstanding Shares
bmv_bmvmarketdata_product40_intra_v1_1.outstanding_shares.display = function(value)
  return "Outstanding Shares: "..value
end

-- Dissect: Outstanding Shares
bmv_bmvmarketdata_product40_intra_v1_1.outstanding_shares.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.outstanding_shares.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_product40_intra_v1_1.outstanding_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.outstanding_shares, range, value, display)

  return offset + length, value
end

-- Price
bmv_bmvmarketdata_product40_intra_v1_1.price = {}

-- Size: Price
bmv_bmvmarketdata_product40_intra_v1_1.price.size = 8

-- Display: Price
bmv_bmvmarketdata_product40_intra_v1_1.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
bmv_bmvmarketdata_product40_intra_v1_1.price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price
bmv_bmvmarketdata_product40_intra_v1_1.price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product40_intra_v1_1.price.translate(raw)
  local display = bmv_bmvmarketdata_product40_intra_v1_1.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.price, range, value, display)

  return offset + length, value
end

-- Prior Day Settlement Price
bmv_bmvmarketdata_product40_intra_v1_1.prior_day_settlement_price = {}

-- Size: Prior Day Settlement Price
bmv_bmvmarketdata_product40_intra_v1_1.prior_day_settlement_price.size = 8

-- Display: Prior Day Settlement Price
bmv_bmvmarketdata_product40_intra_v1_1.prior_day_settlement_price.display = function(value)
  return "Prior Day Settlement Price: "..value
end

-- Translate: Prior Day Settlement Price
bmv_bmvmarketdata_product40_intra_v1_1.prior_day_settlement_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Prior Day Settlement Price
bmv_bmvmarketdata_product40_intra_v1_1.prior_day_settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.prior_day_settlement_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product40_intra_v1_1.prior_day_settlement_price.translate(raw)
  local display = bmv_bmvmarketdata_product40_intra_v1_1.prior_day_settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.prior_day_settlement_price, range, value, display)

  return offset + length, value
end

-- Product Code
bmv_bmvmarketdata_product40_intra_v1_1.product_code = {}

-- Size: Product Code
bmv_bmvmarketdata_product40_intra_v1_1.product_code.size = 12

-- Display: Product Code
bmv_bmvmarketdata_product40_intra_v1_1.product_code.display = function(value)
  return "Product Code: "..value
end

-- Dissect: Product Code
bmv_bmvmarketdata_product40_intra_v1_1.product_code.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.product_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product40_intra_v1_1.product_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.product_code, range, value, display)

  return offset + length, value
end

-- Rating
bmv_bmvmarketdata_product40_intra_v1_1.rating = {}

-- Size: Rating
bmv_bmvmarketdata_product40_intra_v1_1.rating.size = 15

-- Display: Rating
bmv_bmvmarketdata_product40_intra_v1_1.rating.display = function(value)
  return "Rating: "..value
end

-- Dissect: Rating
bmv_bmvmarketdata_product40_intra_v1_1.rating.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.rating.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product40_intra_v1_1.rating.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.rating, range, value, display)

  return offset + length, value
end

-- Reference
bmv_bmvmarketdata_product40_intra_v1_1.reference = {}

-- Size: Reference
bmv_bmvmarketdata_product40_intra_v1_1.reference.size = 2

-- Display: Reference
bmv_bmvmarketdata_product40_intra_v1_1.reference.display = function(value)
  if value == "AN" then
    return "Reference: Previous (AN)"
  end
  if value == "AJ" then
    return "Reference: Adjusted (AJ)"
  end
  if value == "VA" then
    return "Reference: Adjusted Face Value (VA)"
  end
  if value == "" then
    return "Reference: Without Price (<whitespace>)"
  end

  return "Reference: Unknown("..value..")"
end

-- Dissect: Reference
bmv_bmvmarketdata_product40_intra_v1_1.reference.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.reference.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product40_intra_v1_1.reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.reference, range, value, display)

  return offset + length, value
end

-- Reference Date
bmv_bmvmarketdata_product40_intra_v1_1.reference_date = {}

-- Size: Reference Date
bmv_bmvmarketdata_product40_intra_v1_1.reference_date.size = 8

-- Dissect: Reference Date
bmv_bmvmarketdata_product40_intra_v1_1.reference_date.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.reference_date.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.reference_date
  if bmv_bmvmarketdata_product40_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.reference_date_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Reference Price
bmv_bmvmarketdata_product40_intra_v1_1.reference_price = {}

-- Size: Reference Price
bmv_bmvmarketdata_product40_intra_v1_1.reference_price.size = 8

-- Display: Reference Price
bmv_bmvmarketdata_product40_intra_v1_1.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
bmv_bmvmarketdata_product40_intra_v1_1.reference_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Reference Price
bmv_bmvmarketdata_product40_intra_v1_1.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.reference_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product40_intra_v1_1.reference_price.translate(raw)
  local display = bmv_bmvmarketdata_product40_intra_v1_1.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Reference Pricerate
bmv_bmvmarketdata_product40_intra_v1_1.reference_pricerate = {}

-- Size: Reference Pricerate
bmv_bmvmarketdata_product40_intra_v1_1.reference_pricerate.size = 8

-- Display: Reference Pricerate
bmv_bmvmarketdata_product40_intra_v1_1.reference_pricerate.display = function(value)
  return "Reference Pricerate: "..value
end

-- Translate: Reference Pricerate
bmv_bmvmarketdata_product40_intra_v1_1.reference_pricerate.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Reference Pricerate
bmv_bmvmarketdata_product40_intra_v1_1.reference_pricerate.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.reference_pricerate.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product40_intra_v1_1.reference_pricerate.translate(raw)
  local display = bmv_bmvmarketdata_product40_intra_v1_1.reference_pricerate.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.reference_pricerate, range, value, display)

  return offset + length, value
end

-- Sector
bmv_bmvmarketdata_product40_intra_v1_1.sector = {}

-- Size: Sector
bmv_bmvmarketdata_product40_intra_v1_1.sector.size = 1

-- Display: Sector
bmv_bmvmarketdata_product40_intra_v1_1.sector.display = function(value)
  return "Sector: "..value
end

-- Dissect: Sector
bmv_bmvmarketdata_product40_intra_v1_1.sector.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.sector.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product40_intra_v1_1.sector.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.sector, range, value, display)

  return offset + length, value
end

-- Securities
bmv_bmvmarketdata_product40_intra_v1_1.securities = {}

-- Size: Securities
bmv_bmvmarketdata_product40_intra_v1_1.securities.size = 8

-- Display: Securities
bmv_bmvmarketdata_product40_intra_v1_1.securities.display = function(value)
  return "Securities: "..value
end

-- Translate: Securities
bmv_bmvmarketdata_product40_intra_v1_1.securities.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Securities
bmv_bmvmarketdata_product40_intra_v1_1.securities.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.securities.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product40_intra_v1_1.securities.translate(raw)
  local display = bmv_bmvmarketdata_product40_intra_v1_1.securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.securities, range, value, display)

  return offset + length, value
end

-- Sequence Number
bmv_bmvmarketdata_product40_intra_v1_1.sequence_number = {}

-- Size: Sequence Number
bmv_bmvmarketdata_product40_intra_v1_1.sequence_number.size = 4

-- Display: Sequence Number
bmv_bmvmarketdata_product40_intra_v1_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
bmv_bmvmarketdata_product40_intra_v1_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.sequence_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product40_intra_v1_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Series
bmv_bmvmarketdata_product40_intra_v1_1.series = {}

-- Size: Series
bmv_bmvmarketdata_product40_intra_v1_1.series.size = 6

-- Display: Series
bmv_bmvmarketdata_product40_intra_v1_1.series.display = function(value)
  return "Series: "..value
end

-- Dissect: Series
bmv_bmvmarketdata_product40_intra_v1_1.series.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.series.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product40_intra_v1_1.series.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.series, range, value, display)

  return offset + length, value
end

-- Session
bmv_bmvmarketdata_product40_intra_v1_1.session = {}

-- Size: Session
bmv_bmvmarketdata_product40_intra_v1_1.session.size = 1

-- Display: Session
bmv_bmvmarketdata_product40_intra_v1_1.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
bmv_bmvmarketdata_product40_intra_v1_1.session.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.session.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product40_intra_v1_1.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.session, range, value, display)

  return offset + length, value
end

-- Shares Outstanding
bmv_bmvmarketdata_product40_intra_v1_1.shares_outstanding = {}

-- Size: Shares Outstanding
bmv_bmvmarketdata_product40_intra_v1_1.shares_outstanding.size = 8

-- Display: Shares Outstanding
bmv_bmvmarketdata_product40_intra_v1_1.shares_outstanding.display = function(value)
  return "Shares Outstanding: "..value
end

-- Dissect: Shares Outstanding
bmv_bmvmarketdata_product40_intra_v1_1.shares_outstanding.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.shares_outstanding.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_product40_intra_v1_1.shares_outstanding.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.shares_outstanding, range, value, display)

  return offset + length, value
end

-- Short Leg Instrument Identifier
bmv_bmvmarketdata_product40_intra_v1_1.short_leg_instrument_identifier = {}

-- Size: Short Leg Instrument Identifier
bmv_bmvmarketdata_product40_intra_v1_1.short_leg_instrument_identifier.size = 4

-- Display: Short Leg Instrument Identifier
bmv_bmvmarketdata_product40_intra_v1_1.short_leg_instrument_identifier.display = function(value)
  return "Short Leg Instrument Identifier: "..value
end

-- Dissect: Short Leg Instrument Identifier
bmv_bmvmarketdata_product40_intra_v1_1.short_leg_instrument_identifier.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.short_leg_instrument_identifier.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product40_intra_v1_1.short_leg_instrument_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.short_leg_instrument_identifier, range, value, display)

  return offset + length, value
end

-- Sub Line
bmv_bmvmarketdata_product40_intra_v1_1.sub_line = {}

-- Size: Sub Line
bmv_bmvmarketdata_product40_intra_v1_1.sub_line.size = 1

-- Display: Sub Line
bmv_bmvmarketdata_product40_intra_v1_1.sub_line.display = function(value)
  return "Sub Line: "..value
end

-- Dissect: Sub Line
bmv_bmvmarketdata_product40_intra_v1_1.sub_line.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.sub_line.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product40_intra_v1_1.sub_line.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.sub_line, range, value, display)

  return offset + length, value
end

-- Subsector
bmv_bmvmarketdata_product40_intra_v1_1.subsector = {}

-- Size: Subsector
bmv_bmvmarketdata_product40_intra_v1_1.subsector.size = 1

-- Display: Subsector
bmv_bmvmarketdata_product40_intra_v1_1.subsector.display = function(value)
  return "Subsector: "..value
end

-- Dissect: Subsector
bmv_bmvmarketdata_product40_intra_v1_1.subsector.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.subsector.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product40_intra_v1_1.subsector.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.subsector, range, value, display)

  return offset + length, value
end

-- Term Days
bmv_bmvmarketdata_product40_intra_v1_1.term_days = {}

-- Size: Term Days
bmv_bmvmarketdata_product40_intra_v1_1.term_days.size = 2

-- Display: Term Days
bmv_bmvmarketdata_product40_intra_v1_1.term_days.display = function(value)
  return "Term Days: "..value
end

-- Dissect: Term Days
bmv_bmvmarketdata_product40_intra_v1_1.term_days.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.term_days.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product40_intra_v1_1.term_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.term_days, range, value, display)

  return offset + length, value
end

-- Theoretical Price
bmv_bmvmarketdata_product40_intra_v1_1.theoretical_price = {}

-- Size: Theoretical Price
bmv_bmvmarketdata_product40_intra_v1_1.theoretical_price.size = 8

-- Display: Theoretical Price
bmv_bmvmarketdata_product40_intra_v1_1.theoretical_price.display = function(value)
  return "Theoretical Price: "..value
end

-- Translate: Theoretical Price
bmv_bmvmarketdata_product40_intra_v1_1.theoretical_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Theoretical Price
bmv_bmvmarketdata_product40_intra_v1_1.theoretical_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.theoretical_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product40_intra_v1_1.theoretical_price.translate(raw)
  local display = bmv_bmvmarketdata_product40_intra_v1_1.theoretical_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.theoretical_price, range, value, display)

  return offset + length, value
end

-- Total Messages
bmv_bmvmarketdata_product40_intra_v1_1.total_messages = {}

-- Size: Total Messages
bmv_bmvmarketdata_product40_intra_v1_1.total_messages.size = 1

-- Display: Total Messages
bmv_bmvmarketdata_product40_intra_v1_1.total_messages.display = function(value)
  return "Total Messages: "..value
end

-- Dissect: Total Messages
bmv_bmvmarketdata_product40_intra_v1_1.total_messages.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.total_messages.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product40_intra_v1_1.total_messages.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.total_messages, range, value, display)

  return offset + length, value
end

-- Trac Name
bmv_bmvmarketdata_product40_intra_v1_1.trac_name = {}

-- Size: Trac Name
bmv_bmvmarketdata_product40_intra_v1_1.trac_name.size = 8

-- Display: Trac Name
bmv_bmvmarketdata_product40_intra_v1_1.trac_name.display = function(value)
  return "Trac Name: "..value
end

-- Dissect: Trac Name
bmv_bmvmarketdata_product40_intra_v1_1.trac_name.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.trac_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product40_intra_v1_1.trac_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.trac_name, range, value, display)

  return offset + length, value
end

-- Trac Number
bmv_bmvmarketdata_product40_intra_v1_1.trac_number = {}

-- Size: Trac Number
bmv_bmvmarketdata_product40_intra_v1_1.trac_number.size = 4

-- Display: Trac Number
bmv_bmvmarketdata_product40_intra_v1_1.trac_number.display = function(value)
  return "Trac Number: "..value
end

-- Dissect: Trac Number
bmv_bmvmarketdata_product40_intra_v1_1.trac_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.trac_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product40_intra_v1_1.trac_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.trac_number, range, value, display)

  return offset + length, value
end

-- Type Of Strategy
bmv_bmvmarketdata_product40_intra_v1_1.type_of_strategy = {}

-- Size: Type Of Strategy
bmv_bmvmarketdata_product40_intra_v1_1.type_of_strategy.size = 1

-- Display: Type Of Strategy
bmv_bmvmarketdata_product40_intra_v1_1.type_of_strategy.labels = {
  ["R"] = "Type Of Strategy: Rollover (R)",
  ["E"] = "Type Of Strategy: Engrapado (E)",
  ["F"] = "Type Of Strategy: Forward (F)",
}

bmv_bmvmarketdata_product40_intra_v1_1.type_of_strategy.display = function(value)
  return bmv_bmvmarketdata_product40_intra_v1_1.type_of_strategy.labels[value] or "Type Of Strategy: Unknown("..value..")"
end

-- Dissect: Type Of Strategy
bmv_bmvmarketdata_product40_intra_v1_1.type_of_strategy.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.type_of_strategy.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product40_intra_v1_1.type_of_strategy.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.type_of_strategy, range, value, display)

  return offset + length, value
end

-- Underlying Issuer
bmv_bmvmarketdata_product40_intra_v1_1.underlying_issuer = {}

-- Size: Underlying Issuer
bmv_bmvmarketdata_product40_intra_v1_1.underlying_issuer.size = 7

-- Display: Underlying Issuer
bmv_bmvmarketdata_product40_intra_v1_1.underlying_issuer.display = function(value)
  return "Underlying Issuer: "..value
end

-- Dissect: Underlying Issuer
bmv_bmvmarketdata_product40_intra_v1_1.underlying_issuer.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.underlying_issuer.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product40_intra_v1_1.underlying_issuer.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.underlying_issuer, range, value, display)

  return offset + length, value
end

-- Underlying Series
bmv_bmvmarketdata_product40_intra_v1_1.underlying_series = {}

-- Size: Underlying Series
bmv_bmvmarketdata_product40_intra_v1_1.underlying_series.size = 6

-- Display: Underlying Series
bmv_bmvmarketdata_product40_intra_v1_1.underlying_series.display = function(value)
  return "Underlying Series: "..value
end

-- Dissect: Underlying Series
bmv_bmvmarketdata_product40_intra_v1_1.underlying_series.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.underlying_series.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product40_intra_v1_1.underlying_series.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.underlying_series, range, value, display)

  return offset + length, value
end

-- Underlying Value Type
bmv_bmvmarketdata_product40_intra_v1_1.underlying_value_type = {}

-- Size: Underlying Value Type
bmv_bmvmarketdata_product40_intra_v1_1.underlying_value_type.size = 2

-- Display: Underlying Value Type
bmv_bmvmarketdata_product40_intra_v1_1.underlying_value_type.display = function(value)
  return "Underlying Value Type: "..value
end

-- Dissect: Underlying Value Type
bmv_bmvmarketdata_product40_intra_v1_1.underlying_value_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.underlying_value_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product40_intra_v1_1.underlying_value_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.underlying_value_type, range, value, display)

  return offset + length, value
end

-- Value Type
bmv_bmvmarketdata_product40_intra_v1_1.value_type = {}

-- Size: Value Type
bmv_bmvmarketdata_product40_intra_v1_1.value_type.size = 2

-- Display: Value Type
bmv_bmvmarketdata_product40_intra_v1_1.value_type.display = function(value)
  return "Value Type: "..value
end

-- Dissect: Value Type
bmv_bmvmarketdata_product40_intra_v1_1.value_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.value_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product40_intra_v1_1.value_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.value_type, range, value, display)

  return offset + length, value
end

-- Wap
bmv_bmvmarketdata_product40_intra_v1_1.wap = {}

-- Size: Wap
bmv_bmvmarketdata_product40_intra_v1_1.wap.size = 8

-- Display: Wap
bmv_bmvmarketdata_product40_intra_v1_1.wap.display = function(value)
  return "Wap: "..value
end

-- Translate: Wap
bmv_bmvmarketdata_product40_intra_v1_1.wap.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Wap
bmv_bmvmarketdata_product40_intra_v1_1.wap.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.wap.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product40_intra_v1_1.wap.translate(raw)
  local display = bmv_bmvmarketdata_product40_intra_v1_1.wap.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.wap, range, value, display)

  return offset + length, value
end

-- Warrant Type
bmv_bmvmarketdata_product40_intra_v1_1.warrant_type = {}

-- Size: Warrant Type
bmv_bmvmarketdata_product40_intra_v1_1.warrant_type.size = 1

-- Display: Warrant Type
bmv_bmvmarketdata_product40_intra_v1_1.warrant_type.labels = {
  ["C"] = "Warrant Type: Buy (C)",
  ["V"] = "Warrant Type: Sell (V)",
}

bmv_bmvmarketdata_product40_intra_v1_1.warrant_type.display = function(value)
  return bmv_bmvmarketdata_product40_intra_v1_1.warrant_type.labels[value] or "Warrant Type: Unknown("..value..")"
end

-- Dissect: Warrant Type
bmv_bmvmarketdata_product40_intra_v1_1.warrant_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product40_intra_v1_1.warrant_type.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product40_intra_v1_1.warrant_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.warrant_type, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Bmv BmvMarketData Product40 Intra 1.1
-----------------------------------------------------------------------

-- Underlying Value On Warrants Catalog Message
bmv_bmvmarketdata_product40_intra_v1_1.underlying_value_on_warrants_catalog_message = {}

-- Size: Underlying Value On Warrants Catalog Message
bmv_bmvmarketdata_product40_intra_v1_1.underlying_value_on_warrants_catalog_message.size =
  bmv_bmvmarketdata_product40_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.issuer.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.series.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.value_type.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.underlying_issuer.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.underlying_series.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.underlying_value_type.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.number_of_registered_values.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.exchange.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.filler.size

-- Display: Underlying Value On Warrants Catalog Message
bmv_bmvmarketdata_product40_intra_v1_1.underlying_value_on_warrants_catalog_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Value On Warrants Catalog Message
bmv_bmvmarketdata_product40_intra_v1_1.underlying_value_on_warrants_catalog_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product40_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Issuer: ALPHA
  index, issuer = bmv_bmvmarketdata_product40_intra_v1_1.issuer.dissect(buffer, index, packet, parent)

  -- Series: ALPHA
  index, series = bmv_bmvmarketdata_product40_intra_v1_1.series.dissect(buffer, index, packet, parent)

  -- Value Type: ALPHA
  index, value_type = bmv_bmvmarketdata_product40_intra_v1_1.value_type.dissect(buffer, index, packet, parent)

  -- Underlying Issuer: ALPHA
  index, underlying_issuer = bmv_bmvmarketdata_product40_intra_v1_1.underlying_issuer.dissect(buffer, index, packet, parent)

  -- Underlying Series: ALPHA
  index, underlying_series = bmv_bmvmarketdata_product40_intra_v1_1.underlying_series.dissect(buffer, index, packet, parent)

  -- Underlying Value Type: ALPHA
  index, underlying_value_type = bmv_bmvmarketdata_product40_intra_v1_1.underlying_value_type.dissect(buffer, index, packet, parent)

  -- Number Of Registered Values: Int64
  index, number_of_registered_values = bmv_bmvmarketdata_product40_intra_v1_1.number_of_registered_values.dissect(buffer, index, packet, parent)

  -- Exchange: ALPHA
  index, exchange = bmv_bmvmarketdata_product40_intra_v1_1.exchange.dissect(buffer, index, packet, parent)

  -- Filler: Filler
  if show.padding then
    index, filler = bmv_bmvmarketdata_product40_intra_v1_1.filler.dissect(buffer, index, packet, parent)
  else
    index = index + bmv_bmvmarketdata_product40_intra_v1_1.filler.size
  end

  return index
end

-- Dissect: Underlying Value On Warrants Catalog Message
bmv_bmvmarketdata_product40_intra_v1_1.underlying_value_on_warrants_catalog_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.underlying_value_on_warrants_catalog_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product40_intra_v1_1.underlying_value_on_warrants_catalog_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product40_intra_v1_1.underlying_value_on_warrants_catalog_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product40_intra_v1_1.underlying_value_on_warrants_catalog_message.fields(buffer, offset, packet, parent)
  end
end

-- Catalog Sent For Instruments Belonging To The Strategy Derivative Market Message
bmv_bmvmarketdata_product40_intra_v1_1.catalog_sent_for_instruments_belonging_to_the_strategy_derivative_market_message = {}

-- Size: Catalog Sent For Instruments Belonging To The Strategy Derivative Market Message
bmv_bmvmarketdata_product40_intra_v1_1.catalog_sent_for_instruments_belonging_to_the_strategy_derivative_market_message.size =
  bmv_bmvmarketdata_product40_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.value_type.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.class.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.maturity.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.type_of_strategy.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.bid.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.last_date_operation.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.maturity_date.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.short_leg_instrument_identifier.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.long_leg_instruments_id.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.frequency.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.number_of_maturities.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.filler.size

-- Display: Catalog Sent For Instruments Belonging To The Strategy Derivative Market Message
bmv_bmvmarketdata_product40_intra_v1_1.catalog_sent_for_instruments_belonging_to_the_strategy_derivative_market_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Catalog Sent For Instruments Belonging To The Strategy Derivative Market Message
bmv_bmvmarketdata_product40_intra_v1_1.catalog_sent_for_instruments_belonging_to_the_strategy_derivative_market_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product40_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Value Type: ALPHA
  index, value_type = bmv_bmvmarketdata_product40_intra_v1_1.value_type.dissect(buffer, index, packet, parent)

  -- Class: ALPHA
  index, class = bmv_bmvmarketdata_product40_intra_v1_1.class.dissect(buffer, index, packet, parent)

  -- Maturity: ALPHA
  index, maturity = bmv_bmvmarketdata_product40_intra_v1_1.maturity.dissect(buffer, index, packet, parent)

  -- Type Of Strategy: ALPHA
  index, type_of_strategy = bmv_bmvmarketdata_product40_intra_v1_1.type_of_strategy.dissect(buffer, index, packet, parent)

  -- Bid: Precio(8)
  index, bid = bmv_bmvmarketdata_product40_intra_v1_1.bid.dissect(buffer, index, packet, parent)

  -- Last Date Operation: Timestamp(1)
  index, last_date_operation = bmv_bmvmarketdata_product40_intra_v1_1.last_date_operation.dissect(buffer, index, packet, parent)

  -- Maturity Date: Timestamp(1)
  index, maturity_date = bmv_bmvmarketdata_product40_intra_v1_1.maturity_date.dissect(buffer, index, packet, parent)

  -- Short Leg Instrument Identifier: Int32
  index, short_leg_instrument_identifier = bmv_bmvmarketdata_product40_intra_v1_1.short_leg_instrument_identifier.dissect(buffer, index, packet, parent)

  -- Long Leg Instruments Id: Int32
  index, long_leg_instruments_id = bmv_bmvmarketdata_product40_intra_v1_1.long_leg_instruments_id.dissect(buffer, index, packet, parent)

  -- Frequency: Int8
  index, frequency = bmv_bmvmarketdata_product40_intra_v1_1.frequency.dissect(buffer, index, packet, parent)

  -- Number Of Maturities: Int8
  index, number_of_maturities = bmv_bmvmarketdata_product40_intra_v1_1.number_of_maturities.dissect(buffer, index, packet, parent)

  -- Filler: Filler
  if show.padding then
    index, filler = bmv_bmvmarketdata_product40_intra_v1_1.filler.dissect(buffer, index, packet, parent)
  else
    index = index + bmv_bmvmarketdata_product40_intra_v1_1.filler.size
  end

  return index
end

-- Dissect: Catalog Sent For Instruments Belonging To The Strategy Derivative Market Message
bmv_bmvmarketdata_product40_intra_v1_1.catalog_sent_for_instruments_belonging_to_the_strategy_derivative_market_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.catalog_sent_for_instruments_belonging_to_the_strategy_derivative_market_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product40_intra_v1_1.catalog_sent_for_instruments_belonging_to_the_strategy_derivative_market_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product40_intra_v1_1.catalog_sent_for_instruments_belonging_to_the_strategy_derivative_market_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product40_intra_v1_1.catalog_sent_for_instruments_belonging_to_the_strategy_derivative_market_message.fields(buffer, offset, packet, parent)
  end
end

-- Catalog Sent For Instruments Belonging To Mutual Funds Message
bmv_bmvmarketdata_product40_intra_v1_1.catalog_sent_for_instruments_belonging_to_mutual_funds_message = {}

-- Size: Catalog Sent For Instruments Belonging To Mutual Funds Message
bmv_bmvmarketdata_product40_intra_v1_1.catalog_sent_for_instruments_belonging_to_mutual_funds_message.size =
  bmv_bmvmarketdata_product40_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.value_type.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.issuer.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.series.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.sector.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.subsector.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.business_line.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.sub_line.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.operating_company.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.reference_price.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.reference_date.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.reference.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.isin.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.rating.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.filler.size

-- Display: Catalog Sent For Instruments Belonging To Mutual Funds Message
bmv_bmvmarketdata_product40_intra_v1_1.catalog_sent_for_instruments_belonging_to_mutual_funds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Catalog Sent For Instruments Belonging To Mutual Funds Message
bmv_bmvmarketdata_product40_intra_v1_1.catalog_sent_for_instruments_belonging_to_mutual_funds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product40_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Value Type: ALPHA
  index, value_type = bmv_bmvmarketdata_product40_intra_v1_1.value_type.dissect(buffer, index, packet, parent)

  -- Issuer: ALPHA
  index, issuer = bmv_bmvmarketdata_product40_intra_v1_1.issuer.dissect(buffer, index, packet, parent)

  -- Series: ALPHA
  index, series = bmv_bmvmarketdata_product40_intra_v1_1.series.dissect(buffer, index, packet, parent)

  -- Sector: Int8
  index, sector = bmv_bmvmarketdata_product40_intra_v1_1.sector.dissect(buffer, index, packet, parent)

  -- Subsector: Int8
  index, subsector = bmv_bmvmarketdata_product40_intra_v1_1.subsector.dissect(buffer, index, packet, parent)

  -- Business Line: Int8
  index, business_line = bmv_bmvmarketdata_product40_intra_v1_1.business_line.dissect(buffer, index, packet, parent)

  -- Sub Line: Int8
  index, sub_line = bmv_bmvmarketdata_product40_intra_v1_1.sub_line.dissect(buffer, index, packet, parent)

  -- Operating Company: ALPHA
  index, operating_company = bmv_bmvmarketdata_product40_intra_v1_1.operating_company.dissect(buffer, index, packet, parent)

  -- Reference Price: Precio(8)
  index, reference_price = bmv_bmvmarketdata_product40_intra_v1_1.reference_price.dissect(buffer, index, packet, parent)

  -- Reference Date: Timestamp(1)
  index, reference_date = bmv_bmvmarketdata_product40_intra_v1_1.reference_date.dissect(buffer, index, packet, parent)

  -- Reference: ALPHA
  index, reference = bmv_bmvmarketdata_product40_intra_v1_1.reference.dissect(buffer, index, packet, parent)

  -- Isin: ALPHA
  index, isin = bmv_bmvmarketdata_product40_intra_v1_1.isin.dissect(buffer, index, packet, parent)

  -- Rating: ALPHA
  index, rating = bmv_bmvmarketdata_product40_intra_v1_1.rating.dissect(buffer, index, packet, parent)

  -- Filler: Filler
  if show.padding then
    index, filler = bmv_bmvmarketdata_product40_intra_v1_1.filler.dissect(buffer, index, packet, parent)
  else
    index = index + bmv_bmvmarketdata_product40_intra_v1_1.filler.size
  end

  return index
end

-- Dissect: Catalog Sent For Instruments Belonging To Mutual Funds Message
bmv_bmvmarketdata_product40_intra_v1_1.catalog_sent_for_instruments_belonging_to_mutual_funds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.catalog_sent_for_instruments_belonging_to_mutual_funds_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product40_intra_v1_1.catalog_sent_for_instruments_belonging_to_mutual_funds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product40_intra_v1_1.catalog_sent_for_instruments_belonging_to_mutual_funds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product40_intra_v1_1.catalog_sent_for_instruments_belonging_to_mutual_funds_message.fields(buffer, offset, packet, parent)
  end
end

-- Catalog Sent For Instruments Belonging To Capital Tracs Message
bmv_bmvmarketdata_product40_intra_v1_1.catalog_sent_for_instruments_belonging_to_capital_tracs_message = {}

-- Size: Catalog Sent For Instruments Belonging To Capital Tracs Message
bmv_bmvmarketdata_product40_intra_v1_1.catalog_sent_for_instruments_belonging_to_capital_tracs_message.size =
  bmv_bmvmarketdata_product40_intra_v1_1.trac_number.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.trac_name.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.underlying_issuer.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.underlying_series.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.securities.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.excluded_securities.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.price.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.cash_component.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.excluded_value.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.number_of_certificates.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.theoretical_price.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.filler.size

-- Display: Catalog Sent For Instruments Belonging To Capital Tracs Message
bmv_bmvmarketdata_product40_intra_v1_1.catalog_sent_for_instruments_belonging_to_capital_tracs_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Catalog Sent For Instruments Belonging To Capital Tracs Message
bmv_bmvmarketdata_product40_intra_v1_1.catalog_sent_for_instruments_belonging_to_capital_tracs_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trac Number: Int32
  index, trac_number = bmv_bmvmarketdata_product40_intra_v1_1.trac_number.dissect(buffer, index, packet, parent)

  -- Trac Name: ALPHA
  index, trac_name = bmv_bmvmarketdata_product40_intra_v1_1.trac_name.dissect(buffer, index, packet, parent)

  -- Underlying Issuer: ALPHA
  index, underlying_issuer = bmv_bmvmarketdata_product40_intra_v1_1.underlying_issuer.dissect(buffer, index, packet, parent)

  -- Underlying Series: ALPHA
  index, underlying_series = bmv_bmvmarketdata_product40_intra_v1_1.underlying_series.dissect(buffer, index, packet, parent)

  -- Securities: Price (8)
  index, securities = bmv_bmvmarketdata_product40_intra_v1_1.securities.dissect(buffer, index, packet, parent)

  -- Excluded Securities: Price (8)
  index, excluded_securities = bmv_bmvmarketdata_product40_intra_v1_1.excluded_securities.dissect(buffer, index, packet, parent)

  -- Price: Price (8)
  index, price = bmv_bmvmarketdata_product40_intra_v1_1.price.dissect(buffer, index, packet, parent)

  -- Cash Component: Price (8)
  index, cash_component = bmv_bmvmarketdata_product40_intra_v1_1.cash_component.dissect(buffer, index, packet, parent)

  -- Excluded Value: Price (8)
  index, excluded_value = bmv_bmvmarketdata_product40_intra_v1_1.excluded_value.dissect(buffer, index, packet, parent)

  -- Number Of Certificates: Int64
  index, number_of_certificates = bmv_bmvmarketdata_product40_intra_v1_1.number_of_certificates.dissect(buffer, index, packet, parent)

  -- Theoretical Price: Price (8)
  index, theoretical_price = bmv_bmvmarketdata_product40_intra_v1_1.theoretical_price.dissect(buffer, index, packet, parent)

  -- Filler: Filler
  if show.padding then
    index, filler = bmv_bmvmarketdata_product40_intra_v1_1.filler.dissect(buffer, index, packet, parent)
  else
    index = index + bmv_bmvmarketdata_product40_intra_v1_1.filler.size
  end

  return index
end

-- Dissect: Catalog Sent For Instruments Belonging To Capital Tracs Message
bmv_bmvmarketdata_product40_intra_v1_1.catalog_sent_for_instruments_belonging_to_capital_tracs_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.catalog_sent_for_instruments_belonging_to_capital_tracs_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product40_intra_v1_1.catalog_sent_for_instruments_belonging_to_capital_tracs_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product40_intra_v1_1.catalog_sent_for_instruments_belonging_to_capital_tracs_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product40_intra_v1_1.catalog_sent_for_instruments_belonging_to_capital_tracs_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Futures And Swaps Derivatives Market Instruments Catalog Message
bmv_bmvmarketdata_product40_intra_v1_1.options_futures_and_swaps_derivatives_market_instruments_catalog_message = {}

-- Size: Options Futures And Swaps Derivatives Market Instruments Catalog Message
bmv_bmvmarketdata_product40_intra_v1_1.options_futures_and_swaps_derivatives_market_instruments_catalog_message.size =
  bmv_bmvmarketdata_product40_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.value_type.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.class.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.maturity.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.option_type.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.exercise_price.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.bid.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.prior_day_settlement_price.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.last_day_of_operation.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.maturity_date.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.open_contracts.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.contract_size.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.product_code.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.daily_maturity.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.key_exercise_price.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.cfi_code.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.filler.size

-- Display: Options Futures And Swaps Derivatives Market Instruments Catalog Message
bmv_bmvmarketdata_product40_intra_v1_1.options_futures_and_swaps_derivatives_market_instruments_catalog_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Futures And Swaps Derivatives Market Instruments Catalog Message
bmv_bmvmarketdata_product40_intra_v1_1.options_futures_and_swaps_derivatives_market_instruments_catalog_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product40_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Value Type: ALPHA
  index, value_type = bmv_bmvmarketdata_product40_intra_v1_1.value_type.dissect(buffer, index, packet, parent)

  -- Class: ALPHA
  index, class = bmv_bmvmarketdata_product40_intra_v1_1.class.dissect(buffer, index, packet, parent)

  -- Maturity: ALPHA
  index, maturity = bmv_bmvmarketdata_product40_intra_v1_1.maturity.dissect(buffer, index, packet, parent)

  -- Option Type: ALPHA
  index, option_type = bmv_bmvmarketdata_product40_intra_v1_1.option_type.dissect(buffer, index, packet, parent)

  -- Exercise Price: Precio(8)
  index, exercise_price = bmv_bmvmarketdata_product40_intra_v1_1.exercise_price.dissect(buffer, index, packet, parent)

  -- Bid: Precio(8)
  index, bid = bmv_bmvmarketdata_product40_intra_v1_1.bid.dissect(buffer, index, packet, parent)

  -- Prior Day Settlement Price: Precio(8)
  index, prior_day_settlement_price = bmv_bmvmarketdata_product40_intra_v1_1.prior_day_settlement_price.dissect(buffer, index, packet, parent)

  -- Last Day Of Operation: Timestamp(1)
  index, last_day_of_operation = bmv_bmvmarketdata_product40_intra_v1_1.last_day_of_operation.dissect(buffer, index, packet, parent)

  -- Maturity Date: Timestamp(1)
  index, maturity_date = bmv_bmvmarketdata_product40_intra_v1_1.maturity_date.dissect(buffer, index, packet, parent)

  -- Open Contracts: Int32
  index, open_contracts = bmv_bmvmarketdata_product40_intra_v1_1.open_contracts.dissect(buffer, index, packet, parent)

  -- Contract Size: Int32
  index, contract_size = bmv_bmvmarketdata_product40_intra_v1_1.contract_size.dissect(buffer, index, packet, parent)

  -- Product Code: ALPHA
  index, product_code = bmv_bmvmarketdata_product40_intra_v1_1.product_code.dissect(buffer, index, packet, parent)

  -- Daily Maturity: ALPHA
  index, daily_maturity = bmv_bmvmarketdata_product40_intra_v1_1.daily_maturity.dissect(buffer, index, packet, parent)

  -- Key Exercise Price: ALPHA
  index, key_exercise_price = bmv_bmvmarketdata_product40_intra_v1_1.key_exercise_price.dissect(buffer, index, packet, parent)

  -- Cfi Code: ALPHA
  index, cfi_code = bmv_bmvmarketdata_product40_intra_v1_1.cfi_code.dissect(buffer, index, packet, parent)

  -- Filler: Filler
  if show.padding then
    index, filler = bmv_bmvmarketdata_product40_intra_v1_1.filler.dissect(buffer, index, packet, parent)
  else
    index = index + bmv_bmvmarketdata_product40_intra_v1_1.filler.size
  end

  return index
end

-- Dissect: Options Futures And Swaps Derivatives Market Instruments Catalog Message
bmv_bmvmarketdata_product40_intra_v1_1.options_futures_and_swaps_derivatives_market_instruments_catalog_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.options_futures_and_swaps_derivatives_market_instruments_catalog_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product40_intra_v1_1.options_futures_and_swaps_derivatives_market_instruments_catalog_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product40_intra_v1_1.options_futures_and_swaps_derivatives_market_instruments_catalog_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product40_intra_v1_1.options_futures_and_swaps_derivatives_market_instruments_catalog_message.fields(buffer, offset, packet, parent)
  end
end

-- Catalog For Instruments Belonging To The Capital Warrants Market Message
bmv_bmvmarketdata_product40_intra_v1_1.catalog_for_instruments_belonging_to_the_capital_warrants_market_message = {}

-- Size: Catalog For Instruments Belonging To The Capital Warrants Market Message
bmv_bmvmarketdata_product40_intra_v1_1.catalog_for_instruments_belonging_to_the_capital_warrants_market_message.size =
  bmv_bmvmarketdata_product40_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.value_type.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.issuer.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.series.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.warrant_type.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.maturity_date.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.exercise_price.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.reference_price.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.reference_date.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.reference.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.isin.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.exchange.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.filler.size

-- Display: Catalog For Instruments Belonging To The Capital Warrants Market Message
bmv_bmvmarketdata_product40_intra_v1_1.catalog_for_instruments_belonging_to_the_capital_warrants_market_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Catalog For Instruments Belonging To The Capital Warrants Market Message
bmv_bmvmarketdata_product40_intra_v1_1.catalog_for_instruments_belonging_to_the_capital_warrants_market_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product40_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Value Type: ALPHA
  index, value_type = bmv_bmvmarketdata_product40_intra_v1_1.value_type.dissect(buffer, index, packet, parent)

  -- Issuer: ALPHA
  index, issuer = bmv_bmvmarketdata_product40_intra_v1_1.issuer.dissect(buffer, index, packet, parent)

  -- Series: ALPHA
  index, series = bmv_bmvmarketdata_product40_intra_v1_1.series.dissect(buffer, index, packet, parent)

  -- Warrant Type: ALPHA
  index, warrant_type = bmv_bmvmarketdata_product40_intra_v1_1.warrant_type.dissect(buffer, index, packet, parent)

  -- Maturity Date: Timestamp(1)
  index, maturity_date = bmv_bmvmarketdata_product40_intra_v1_1.maturity_date.dissect(buffer, index, packet, parent)

  -- Exercise Price: Precio(8)
  index, exercise_price = bmv_bmvmarketdata_product40_intra_v1_1.exercise_price.dissect(buffer, index, packet, parent)

  -- Reference Price: Precio(8)
  index, reference_price = bmv_bmvmarketdata_product40_intra_v1_1.reference_price.dissect(buffer, index, packet, parent)

  -- Reference Date: Timestamp(1)
  index, reference_date = bmv_bmvmarketdata_product40_intra_v1_1.reference_date.dissect(buffer, index, packet, parent)

  -- Reference: ALPHA
  index, reference = bmv_bmvmarketdata_product40_intra_v1_1.reference.dissect(buffer, index, packet, parent)

  -- Isin: ALPHA
  index, isin = bmv_bmvmarketdata_product40_intra_v1_1.isin.dissect(buffer, index, packet, parent)

  -- Exchange: ALPHA
  index, exchange = bmv_bmvmarketdata_product40_intra_v1_1.exchange.dissect(buffer, index, packet, parent)

  -- Filler: Filler
  if show.padding then
    index, filler = bmv_bmvmarketdata_product40_intra_v1_1.filler.dissect(buffer, index, packet, parent)
  else
    index = index + bmv_bmvmarketdata_product40_intra_v1_1.filler.size
  end

  return index
end

-- Dissect: Catalog For Instruments Belonging To The Capital Warrants Market Message
bmv_bmvmarketdata_product40_intra_v1_1.catalog_for_instruments_belonging_to_the_capital_warrants_market_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.catalog_for_instruments_belonging_to_the_capital_warrants_market_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product40_intra_v1_1.catalog_for_instruments_belonging_to_the_capital_warrants_market_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product40_intra_v1_1.catalog_for_instruments_belonging_to_the_capital_warrants_market_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product40_intra_v1_1.catalog_for_instruments_belonging_to_the_capital_warrants_market_message.fields(buffer, offset, packet, parent)
  end
end

-- Catalog Of Instruments That Belong To The Debt Metals And Money Market Message
bmv_bmvmarketdata_product40_intra_v1_1.catalog_of_instruments_that_belong_to_the_debt_metals_and_money_market_message = {}

-- Size: Catalog Of Instruments That Belong To The Debt Metals And Money Market Message
bmv_bmvmarketdata_product40_intra_v1_1.catalog_of_instruments_that_belong_to_the_debt_metals_and_money_market_message.size =
  bmv_bmvmarketdata_product40_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.value_type.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.issuer.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.issue.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.issue_date.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.maturity_date.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.reference_pricerate.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.reference_date.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.reference.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.term_days.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.current_coupon.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.isin.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.market.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.current_nominal_value.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.original_nominal_value.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.outstanding_shares.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.amount_placed.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.operate_price_rate.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.exchange.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.filler.size

-- Display: Catalog Of Instruments That Belong To The Debt Metals And Money Market Message
bmv_bmvmarketdata_product40_intra_v1_1.catalog_of_instruments_that_belong_to_the_debt_metals_and_money_market_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Catalog Of Instruments That Belong To The Debt Metals And Money Market Message
bmv_bmvmarketdata_product40_intra_v1_1.catalog_of_instruments_that_belong_to_the_debt_metals_and_money_market_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product40_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Value Type: ALPHA
  index, value_type = bmv_bmvmarketdata_product40_intra_v1_1.value_type.dissect(buffer, index, packet, parent)

  -- Issuer: ALPHA
  index, issuer = bmv_bmvmarketdata_product40_intra_v1_1.issuer.dissect(buffer, index, packet, parent)

  -- Issue: ALPHA
  index, issue = bmv_bmvmarketdata_product40_intra_v1_1.issue.dissect(buffer, index, packet, parent)

  -- Issue Date: Timestamp(1)
  index, issue_date = bmv_bmvmarketdata_product40_intra_v1_1.issue_date.dissect(buffer, index, packet, parent)

  -- Maturity Date: Timestamp(1)
  index, maturity_date = bmv_bmvmarketdata_product40_intra_v1_1.maturity_date.dissect(buffer, index, packet, parent)

  -- Reference Pricerate: Precio(8)
  index, reference_pricerate = bmv_bmvmarketdata_product40_intra_v1_1.reference_pricerate.dissect(buffer, index, packet, parent)

  -- Reference Date: Timestamp(1)
  index, reference_date = bmv_bmvmarketdata_product40_intra_v1_1.reference_date.dissect(buffer, index, packet, parent)

  -- Reference: ALPHA
  index, reference = bmv_bmvmarketdata_product40_intra_v1_1.reference.dissect(buffer, index, packet, parent)

  -- Term Days: Int16
  index, term_days = bmv_bmvmarketdata_product40_intra_v1_1.term_days.dissect(buffer, index, packet, parent)

  -- Current Coupon: Int16
  index, current_coupon = bmv_bmvmarketdata_product40_intra_v1_1.current_coupon.dissect(buffer, index, packet, parent)

  -- Isin: ALPHA
  index, isin = bmv_bmvmarketdata_product40_intra_v1_1.isin.dissect(buffer, index, packet, parent)

  -- Market: ALPHA
  index, market = bmv_bmvmarketdata_product40_intra_v1_1.market.dissect(buffer, index, packet, parent)

  -- Current Nominal Value: Precio(8)
  index, current_nominal_value = bmv_bmvmarketdata_product40_intra_v1_1.current_nominal_value.dissect(buffer, index, packet, parent)

  -- Original Nominal Value: Precio(8)
  index, original_nominal_value = bmv_bmvmarketdata_product40_intra_v1_1.original_nominal_value.dissect(buffer, index, packet, parent)

  -- Outstanding Shares: Int64
  index, outstanding_shares = bmv_bmvmarketdata_product40_intra_v1_1.outstanding_shares.dissect(buffer, index, packet, parent)

  -- Amount Placed: Int64
  index, amount_placed = bmv_bmvmarketdata_product40_intra_v1_1.amount_placed.dissect(buffer, index, packet, parent)

  -- Operate Price Rate: ALPHA
  index, operate_price_rate = bmv_bmvmarketdata_product40_intra_v1_1.operate_price_rate.dissect(buffer, index, packet, parent)

  -- Exchange: ALPHA
  index, exchange = bmv_bmvmarketdata_product40_intra_v1_1.exchange.dissect(buffer, index, packet, parent)

  -- Filler: Filler
  if show.padding then
    index, filler = bmv_bmvmarketdata_product40_intra_v1_1.filler.dissect(buffer, index, packet, parent)
  else
    index = index + bmv_bmvmarketdata_product40_intra_v1_1.filler.size
  end

  return index
end

-- Dissect: Catalog Of Instruments That Belong To The Debt Metals And Money Market Message
bmv_bmvmarketdata_product40_intra_v1_1.catalog_of_instruments_that_belong_to_the_debt_metals_and_money_market_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.catalog_of_instruments_that_belong_to_the_debt_metals_and_money_market_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product40_intra_v1_1.catalog_of_instruments_that_belong_to_the_debt_metals_and_money_market_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product40_intra_v1_1.catalog_of_instruments_that_belong_to_the_debt_metals_and_money_market_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product40_intra_v1_1.catalog_of_instruments_that_belong_to_the_debt_metals_and_money_market_message.fields(buffer, offset, packet, parent)
  end
end

-- Catalog For Instruments Belonging To The Local And Global Stock Market Message
bmv_bmvmarketdata_product40_intra_v1_1.catalog_for_instruments_belonging_to_the_local_and_global_stock_market_message = {}

-- Size: Catalog For Instruments Belonging To The Local And Global Stock Market Message
bmv_bmvmarketdata_product40_intra_v1_1.catalog_for_instruments_belonging_to_the_local_and_global_stock_market_message.size =
  bmv_bmvmarketdata_product40_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.value_type.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.issuer.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.series.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.last_price.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.wap.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.closing_price.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.reference_date.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.reference.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.current_coupon.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.marketability.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.numeric_marketability.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.isin.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.market.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.shares_outstanding.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.blocks_amount.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.exchange.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.filler.size

-- Display: Catalog For Instruments Belonging To The Local And Global Stock Market Message
bmv_bmvmarketdata_product40_intra_v1_1.catalog_for_instruments_belonging_to_the_local_and_global_stock_market_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Catalog For Instruments Belonging To The Local And Global Stock Market Message
bmv_bmvmarketdata_product40_intra_v1_1.catalog_for_instruments_belonging_to_the_local_and_global_stock_market_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product40_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Value Type: ALPHA
  index, value_type = bmv_bmvmarketdata_product40_intra_v1_1.value_type.dissect(buffer, index, packet, parent)

  -- Issuer: ALPHA
  index, issuer = bmv_bmvmarketdata_product40_intra_v1_1.issuer.dissect(buffer, index, packet, parent)

  -- Series: ALPHA
  index, series = bmv_bmvmarketdata_product40_intra_v1_1.series.dissect(buffer, index, packet, parent)

  -- Last Price: Precio(8)
  index, last_price = bmv_bmvmarketdata_product40_intra_v1_1.last_price.dissect(buffer, index, packet, parent)

  -- Wap: Precio(8)
  index, wap = bmv_bmvmarketdata_product40_intra_v1_1.wap.dissect(buffer, index, packet, parent)

  -- Closing Price: Precio(8)
  index, closing_price = bmv_bmvmarketdata_product40_intra_v1_1.closing_price.dissect(buffer, index, packet, parent)

  -- Reference Date: Timestamp(1)
  index, reference_date = bmv_bmvmarketdata_product40_intra_v1_1.reference_date.dissect(buffer, index, packet, parent)

  -- Reference: ALPHA
  index, reference = bmv_bmvmarketdata_product40_intra_v1_1.reference.dissect(buffer, index, packet, parent)

  -- Current Coupon: Int16
  index, current_coupon = bmv_bmvmarketdata_product40_intra_v1_1.current_coupon.dissect(buffer, index, packet, parent)

  -- Marketability: ALPHA
  index, marketability = bmv_bmvmarketdata_product40_intra_v1_1.marketability.dissect(buffer, index, packet, parent)

  -- Numeric Marketability: Price(4)
  index, numeric_marketability = bmv_bmvmarketdata_product40_intra_v1_1.numeric_marketability.dissect(buffer, index, packet, parent)

  -- Isin: ALPHA
  index, isin = bmv_bmvmarketdata_product40_intra_v1_1.isin.dissect(buffer, index, packet, parent)

  -- Market: ALPHA
  index, market = bmv_bmvmarketdata_product40_intra_v1_1.market.dissect(buffer, index, packet, parent)

  -- Shares Outstanding: Int64
  index, shares_outstanding = bmv_bmvmarketdata_product40_intra_v1_1.shares_outstanding.dissect(buffer, index, packet, parent)

  -- Blocks Amount: Precio (8)
  index, blocks_amount = bmv_bmvmarketdata_product40_intra_v1_1.blocks_amount.dissect(buffer, index, packet, parent)

  -- Exchange: ALPHA
  index, exchange = bmv_bmvmarketdata_product40_intra_v1_1.exchange.dissect(buffer, index, packet, parent)

  -- Filler: Filler
  if show.padding then
    index, filler = bmv_bmvmarketdata_product40_intra_v1_1.filler.dissect(buffer, index, packet, parent)
  else
    index = index + bmv_bmvmarketdata_product40_intra_v1_1.filler.size
  end

  return index
end

-- Dissect: Catalog For Instruments Belonging To The Local And Global Stock Market Message
bmv_bmvmarketdata_product40_intra_v1_1.catalog_for_instruments_belonging_to_the_local_and_global_stock_market_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.catalog_for_instruments_belonging_to_the_local_and_global_stock_market_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product40_intra_v1_1.catalog_for_instruments_belonging_to_the_local_and_global_stock_market_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product40_intra_v1_1.catalog_for_instruments_belonging_to_the_local_and_global_stock_market_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product40_intra_v1_1.catalog_for_instruments_belonging_to_the_local_and_global_stock_market_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
bmv_bmvmarketdata_product40_intra_v1_1.payload = {}

-- Dissect: Payload
bmv_bmvmarketdata_product40_intra_v1_1.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Catalog For Instruments Belonging To The Local And Global Stock Market Message
  if message_type == 0x6361 then
    return bmv_bmvmarketdata_product40_intra_v1_1.catalog_for_instruments_belonging_to_the_local_and_global_stock_market_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Catalog Of Instruments That Belong To The Debt Metals And Money Market Message
  if message_type == 0x6362 then
    return bmv_bmvmarketdata_product40_intra_v1_1.catalog_of_instruments_that_belong_to_the_debt_metals_and_money_market_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Catalog For Instruments Belonging To The Capital Warrants Market Message
  if message_type == 0x6363 then
    return bmv_bmvmarketdata_product40_intra_v1_1.catalog_for_instruments_belonging_to_the_capital_warrants_market_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Futures And Swaps Derivatives Market Instruments Catalog Message
  if message_type == 0x6364 then
    return bmv_bmvmarketdata_product40_intra_v1_1.options_futures_and_swaps_derivatives_market_instruments_catalog_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Catalog Sent For Instruments Belonging To Capital Tracs Message
  if message_type == 0x6365 then
    return bmv_bmvmarketdata_product40_intra_v1_1.catalog_sent_for_instruments_belonging_to_capital_tracs_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Catalog Sent For Instruments Belonging To Mutual Funds Message
  if message_type == 0x6366 then
    return bmv_bmvmarketdata_product40_intra_v1_1.catalog_sent_for_instruments_belonging_to_mutual_funds_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Catalog Sent For Instruments Belonging To The Strategy Derivative Market Message
  if message_type == 0x6367 then
    return bmv_bmvmarketdata_product40_intra_v1_1.catalog_sent_for_instruments_belonging_to_the_strategy_derivative_market_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Value On Warrants Catalog Message
  if message_type == 0x6379 then
    return bmv_bmvmarketdata_product40_intra_v1_1.underlying_value_on_warrants_catalog_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
bmv_bmvmarketdata_product40_intra_v1_1.message_header = {}

-- Size: Message Header
bmv_bmvmarketdata_product40_intra_v1_1.message_header.size =
  bmv_bmvmarketdata_product40_intra_v1_1.message_length.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.message_type.size

-- Display: Message Header
bmv_bmvmarketdata_product40_intra_v1_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
bmv_bmvmarketdata_product40_intra_v1_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: Int16
  index, message_length = bmv_bmvmarketdata_product40_intra_v1_1.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: ALPHA
  index, message_type = bmv_bmvmarketdata_product40_intra_v1_1.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
bmv_bmvmarketdata_product40_intra_v1_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.message_header, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product40_intra_v1_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product40_intra_v1_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product40_intra_v1_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message Block
bmv_bmvmarketdata_product40_intra_v1_1.message_block = {}

-- Display: Message Block
bmv_bmvmarketdata_product40_intra_v1_1.message_block.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Block
bmv_bmvmarketdata_product40_intra_v1_1.message_block.fields = function(buffer, offset, packet, parent, size_of_message_block, message_block_index)
  local index = offset

  -- Implicit Message Block Index
  if message_block_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.message_block_index, message_block_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = bmv_bmvmarketdata_product40_intra_v1_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):uint()

  -- Payload: Runtime Type with 8 branches
  index = bmv_bmvmarketdata_product40_intra_v1_1.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message Block
bmv_bmvmarketdata_product40_intra_v1_1.message_block.dissect = function(buffer, offset, packet, parent, size_of_message_block, message_block_index)
  local index = offset + size_of_message_block

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.message_block, buffer(offset, 0))
    local current = bmv_bmvmarketdata_product40_intra_v1_1.message_block.fields(buffer, offset, packet, parent, size_of_message_block, message_block_index)
    parent:set_len(size_of_message_block)
    local display = bmv_bmvmarketdata_product40_intra_v1_1.message_block.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bmv_bmvmarketdata_product40_intra_v1_1.message_block.fields(buffer, offset, packet, parent, size_of_message_block, message_block_index)

    return index
  end
end

-- INTRA Multicast Header
bmv_bmvmarketdata_product40_intra_v1_1.intra_multicast_header = {}

-- Size: INTRA Multicast Header
bmv_bmvmarketdata_product40_intra_v1_1.intra_multicast_header.size =
  bmv_bmvmarketdata_product40_intra_v1_1.length.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.total_messages.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.market_data_group.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.session.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.sequence_number.size + 
  bmv_bmvmarketdata_product40_intra_v1_1.datetime.size

-- Display: INTRA Multicast Header
bmv_bmvmarketdata_product40_intra_v1_1.intra_multicast_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: INTRA Multicast Header
bmv_bmvmarketdata_product40_intra_v1_1.intra_multicast_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: Int16
  index, length = bmv_bmvmarketdata_product40_intra_v1_1.length.dissect(buffer, index, packet, parent)

  -- Total Messages: Int8
  index, total_messages = bmv_bmvmarketdata_product40_intra_v1_1.total_messages.dissect(buffer, index, packet, parent)

  -- Market Data Group: Int8
  index, market_data_group = bmv_bmvmarketdata_product40_intra_v1_1.market_data_group.dissect(buffer, index, packet, parent)

  -- Session: Int8
  index, session = bmv_bmvmarketdata_product40_intra_v1_1.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: Int32
  index, sequence_number = bmv_bmvmarketdata_product40_intra_v1_1.sequence_number.dissect(buffer, index, packet, parent)

  -- Datetime: Timestamp(3)
  index, datetime = bmv_bmvmarketdata_product40_intra_v1_1.datetime.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: INTRA Multicast Header
bmv_bmvmarketdata_product40_intra_v1_1.intra_multicast_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1.fields.intra_multicast_header, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product40_intra_v1_1.intra_multicast_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product40_intra_v1_1.intra_multicast_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product40_intra_v1_1.intra_multicast_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
bmv_bmvmarketdata_product40_intra_v1_1.packet = {}

-- Verify required size of Udp packet
bmv_bmvmarketdata_product40_intra_v1_1.packet.requiredsize = function(buffer)
  return buffer:len() >= bmv_bmvmarketdata_product40_intra_v1_1.intra_multicast_header.size
end

-- Dissect Packet
bmv_bmvmarketdata_product40_intra_v1_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- INTRA Multicast Header: Struct of 6 fields
  index, intra_multicast_header = bmv_bmvmarketdata_product40_intra_v1_1.intra_multicast_header.dissect(buffer, index, packet, parent)

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
    index, message_block = bmv_bmvmarketdata_product40_intra_v1_1.message_block.dissect(buffer, index, packet, parent, size_of_message_block, message_block_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_bmv_bmvmarketdata_product40_intra_v1_1.init()
end

-- Dissector for Bmv BmvMarketData Product40 Intra 1.1
function omi_bmv_bmvmarketdata_product40_intra_v1_1.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_bmv_bmvmarketdata_product40_intra_v1_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_bmv_bmvmarketdata_product40_intra_v1_1, buffer(), omi_bmv_bmvmarketdata_product40_intra_v1_1.description, "("..buffer:len().." Bytes)")
  return bmv_bmvmarketdata_product40_intra_v1_1.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
bmv_bmvmarketdata_product40_intra_v1_1.packet.fingerprint = function(buffer)
  if buffer:len() < 21 then
    return false
  end

  local message_type = buffer(19, 2):uint()

  -- Catalog For Instruments Belonging To The Local And Global Stock Market Message
  if message_type == 0x6361 then
    return true
  end

  -- Catalog Of Instruments That Belong To The Debt Metals And Money Market Message
  if message_type == 0x6362 then
    return true
  end

  -- Catalog For Instruments Belonging To The Capital Warrants Market Message
  if message_type == 0x6363 then
    return true
  end

  -- Options Futures And Swaps Derivatives Market Instruments Catalog Message
  if message_type == 0x6364 then
    return true
  end

  -- Catalog Sent For Instruments Belonging To Capital Tracs Message
  if message_type == 0x6365 then
    return true
  end

  -- Catalog Sent For Instruments Belonging To Mutual Funds Message
  if message_type == 0x6366 then
    return true
  end

  -- Catalog Sent For Instruments Belonging To The Strategy Derivative Market Message
  if message_type == 0x6367 then
    return true
  end

  -- Underlying Value On Warrants Catalog Message
  if message_type == 0x6379 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Bmv BmvMarketData Product40 Intra 1.1 (Udp)
local function omi_bmv_bmvmarketdata_product40_intra_v1_1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not bmv_bmvmarketdata_product40_intra_v1_1.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not bmv_bmvmarketdata_product40_intra_v1_1.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_bmv_bmvmarketdata_product40_intra_v1_1
  omi_bmv_bmvmarketdata_product40_intra_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Bmv BmvMarketData Product40 Intra 1.1
omi_bmv_bmvmarketdata_product40_intra_v1_1:register_heuristic("udp", omi_bmv_bmvmarketdata_product40_intra_v1_1_udp_heuristic)

-- Register Bmv BmvMarketData Product40 Intra 1.1 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_bmv_bmvmarketdata_product40_intra_v1_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Bolsa Mexicana de Valores
--   Version: 1.1
--   Specification: Market Data Multicast_P40_2_ENG.pdf
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
