-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Gpw Wse MarketInformation Xdp 6.8 Protocol
local omi_gpw_wse_marketinformation_xdp_v6_8 = Proto("Omi.Gpw.Wse.MarketInformation.Xdp.v6.8", "Gpw Wse MarketInformation Xdp 6.8")

-- Protocol table
local gpw_wse_marketinformation_xdp_v6_8 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Gpw Wse MarketInformation Xdp 6.8 Fields
omi_gpw_wse_marketinformation_xdp_v6_8.fields.accumulated_interest = ProtoField.new("Accumulated Interest", "gpw.wse.marketinformation.xdp.v6.8.accumulatedinterest", ftypes.UINT32, nil, nil, nil, "Accumulated interest on the bonds or for mortgage-backed bonds on the day of settling the transaction")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.accumulated_interest_scale_code = ProtoField.new("Accumulated Interest Scale Code", "gpw.wse.marketinformation.xdp.v6.8.accumulatedinterestscalecode", ftypes.UINT8, nil, nil, nil, "Applicable to the accumulated interest")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.action_affecting_state = ProtoField.new("Action Affecting State", "gpw.wse.marketinformation.xdp.v6.8.actionaffectingstate", ftypes.STRING, nil, nil, nil, "Code indicating the event that caused a change in the instrument state")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.algo = ProtoField.new("Algo", "gpw.wse.marketinformation.xdp.v6.8.algo", ftypes.STRING, nil, nil, nil, "Indicates which algorithm is used")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.auth_shares = ProtoField.new("Auth Shares", "gpw.wse.marketinformation.xdp.v6.8.authshares", ftypes.UINT64, nil, nil, nil, "Not used")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.authority = ProtoField.new("Authority", "gpw.wse.marketinformation.xdp.v6.8.authority", ftypes.STRING, nil, nil, nil, "Indicates the authority which required the short sale change")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.average_weighted_price = ProtoField.new("Average Weighted Price", "gpw.wse.marketinformation.xdp.v6.8.averageweightedprice", ftypes.UINT32, nil, nil, nil, "The average weighted by the trading volume price of concluding the transaction for a particular instrument during a particular stock exchange session")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.average_weighted_price_scale_code = ProtoField.new("Average Weighted Price Scale Code", "gpw.wse.marketinformation.xdp.v6.8.averageweightedpricescalecode", ftypes.UINT8, nil, nil, nil, "Applicable to the average weighted price")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.bic_depositary = ProtoField.new("Bic Depositary", "gpw.wse.marketinformation.xdp.v6.8.bicdepositary", ftypes.STRING, nil, nil, nil, "Identifies the depository organization for the shares of an instrument, or when the same organization manages several systems, this item identifies the relevant settlement system for settling trades on a given listed security")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.block_size = ProtoField.new("Block Size", "gpw.wse.marketinformation.xdp.v6.8.blocksize", ftypes.UINT32, nil, nil, nil, "Size of a normal block")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.block_trades_number = ProtoField.new("Block Trades Number", "gpw.wse.marketinformation.xdp.v6.8.blocktradesnumber", ftypes.UINT32, nil, nil, nil, "The total number of block trades concluded on a particular instrument during the current trading session")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.cfi = ProtoField.new("Cfi", "gpw.wse.marketinformation.xdp.v6.8.cfi", ftypes.STRING, nil, nil, nil, "Classification code of a financial instrument defined by the ISO- 10962 standard")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.class_phase = ProtoField.new("Class Phase", "gpw.wse.marketinformation.xdp.v6.8.classphase", ftypes.STRING, nil, nil, nil, "A class phase of the session timetable, the start time of the phase and the phase itself, repeated 15 times")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.class_phase_number = ProtoField.new("Class Phase Number", "gpw.wse.marketinformation.xdp.v6.8.classphasenumber", ftypes.UINT16, nil, nil, nil, "Indicates the number of class phases")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.class_state = ProtoField.new("Class State", "gpw.wse.marketinformation.xdp.v6.8.classstate", ftypes.STRING, nil, nil, nil, "Class status representing the current trading market phase for instruments belonging to that class and whose status is inherited")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.class_state_time = ProtoField.new("Class State Time", "gpw.wse.marketinformation.xdp.v6.8.classstatetime", ftypes.STRING, nil, nil, nil, "Indicates the start time of the class phase, format HHMM")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.closing_price = ProtoField.new("Closing Price", "gpw.wse.marketinformation.xdp.v6.8.closingprice", ftypes.UINT32, nil, nil, nil, "Single-price quotation: Single-price determined at the last fixing during a particular session")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.closing_price_scale_code = ProtoField.new("Closing Price Scale Code", "gpw.wse.marketinformation.xdp.v6.8.closingpricescalecode", ftypes.UINT8, nil, nil, nil, "Applicable to the closing price")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.collar_type = ProtoField.new("Collar Type", "gpw.wse.marketinformation.xdp.v6.8.collartype", ftypes.STRING, nil, nil, nil, "Defines the type of collars")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.conversion_coefficient_factor_1 = ProtoField.new("Conversion Coefficient Factor 1", "gpw.wse.marketinformation.xdp.v6.8.conversioncoefficientfactor1", ftypes.STRING, nil, nil, nil, "Conversion coefficient value for (1) Treasury Bonds series, a numeric value with a fixed decimal places of 6")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.conversion_coefficient_factor_2 = ProtoField.new("Conversion Coefficient Factor 2", "gpw.wse.marketinformation.xdp.v6.8.conversioncoefficientfactor2", ftypes.STRING, nil, nil, nil, "Conversion coefficient value for (2) Treasury Bonds series, a numeric value with a fixed decimal places of 6")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.conversion_coefficient_factor_3 = ProtoField.new("Conversion Coefficient Factor 3", "gpw.wse.marketinformation.xdp.v6.8.conversioncoefficientfactor3", ftypes.STRING, nil, nil, nil, "Conversion coefficient value for (3) Treasury Bonds series, a numeric value with a fixed decimal places of 6")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.conversion_coefficient_factor_4 = ProtoField.new("Conversion Coefficient Factor 4", "gpw.wse.marketinformation.xdp.v6.8.conversioncoefficientfactor4", ftypes.STRING, nil, nil, nil, "Conversion coefficient value for (4) Treasury Bonds series, a numeric value with a fixed decimal places of 6")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.conversion_coefficient_factor_5 = ProtoField.new("Conversion Coefficient Factor 5", "gpw.wse.marketinformation.xdp.v6.8.conversioncoefficientfactor5", ftypes.STRING, nil, nil, nil, "Conversion coefficient value for (5) Treasury Bonds series, a numeric value with a fixed decimal places of 6")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.currency_coef = ProtoField.new("Currency Coef", "gpw.wse.marketinformation.xdp.v6.8.currencycoef", ftypes.UINT32, nil, nil, nil, "Change ratio coefficient of currency applied to instrument: Used in conjunction with one of the change rate indicators in order to apply this coefficient to a currency among two available currencies defined for the instrument: - Trading currency - Currency code of strike price for Derivative Instrument The currency to which this coefficient will be applied depends on just one of the two values set to the related indicators (defined below in the integrity constraints)")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.currency_coef_scale_code = ProtoField.new("Currency Coef Scale Code", "gpw.wse.marketinformation.xdp.v6.8.currencycoefscalecode", ftypes.UINT8, nil, nil, nil, "To be combined with CurrencyCoef Not used")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.currency_price = ProtoField.new("Currency Price", "gpw.wse.marketinformation.xdp.v6.8.currencyprice", ftypes.UINT32, nil, nil, nil, "The field contains the currency price from the Stock Exchange trading session day")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.currency_price_scale_code = ProtoField.new("Currency Price Scale Code", "gpw.wse.marketinformation.xdp.v6.8.currencypricescalecode", ftypes.UINT8, nil, nil, nil, "Applicable to the currency price")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.date_ascii_str_8 = ProtoField.new("Date Ascii Str 8", "gpw.wse.marketinformation.xdp.v6.8.dateasciistr8", ftypes.STRING, nil, nil, nil, "Start date")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.date_binary_int_4 = ProtoField.new("Date Binary Int 4", "gpw.wse.marketinformation.xdp.v6.8.datebinaryint4", ftypes.UINT32, nil, nil, nil, "Stock Exchange date (YYYYMMDD)")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.date_of_first_quotation = ProtoField.new("Date Of First Quotation", "gpw.wse.marketinformation.xdp.v6.8.dateoffirstquotation", ftypes.STRING, nil, nil, nil, "Date of first quotation of given futures indicated in field ISIN Code")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.date_of_last_trade = ProtoField.new("Date Of Last Trade", "gpw.wse.marketinformation.xdp.v6.8.dateoflasttrade", ftypes.STRING, nil, nil, nil, "Not Available")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.delivery_flag = ProtoField.new("Delivery Flag", "gpw.wse.marketinformation.xdp.v6.8.deliveryflag", ftypes.UINT8, nil, nil, nil, "Indicates delivery method, and a client reads it to determine whether the packet is ZliB compressed")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.delivery_type = ProtoField.new("Delivery Type", "gpw.wse.marketinformation.xdp.v6.8.deliverytype", ftypes.STRING, nil, nil, nil, "Indicates the type of delivery for a derivatives instrument only (otherwise left blank i.e")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.delta = ProtoField.new("Delta", "gpw.wse.marketinformation.xdp.v6.8.delta", ftypes.UINT32, nil, nil, nil, "Value of Delta indicator from the current session")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.delta_scale_code = ProtoField.new("Delta Scale Code", "gpw.wse.marketinformation.xdp.v6.8.deltascalecode", ftypes.UINT8, nil, nil, nil, "Applicable to the delta")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.depositary = ProtoField.new("Depositary", "gpw.wse.marketinformation.xdp.v6.8.depositary", ftypes.STRING, nil, nil, nil, "A depository organization of the instrument, 5 characters padded with zeros. The document gives Null - Not significant for an entry that is not populated, without stating its form on the wire, so no sentinel is declared")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.depositary_list = ProtoField.new("Depositary List", "gpw.wse.marketinformation.xdp.v6.8.depositarylist", ftypes.STRING, nil, nil, nil, "The possible main depository organizations of an instrument. Section 1.2.10.3 gives the entry width, max 5 characters padded with zeros, and the field width, 25 bytes, so the run is five entries; the document does not state the count in words. Used by the clearing house to determine the relevant system for settling trades")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.dividend = ProtoField.new("Dividend", "gpw.wse.marketinformation.xdp.v6.8.dividend", ftypes.STRING, nil, nil, nil, "This field informs that the instruments are traded the first time after determining the right to dividend")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.dividend_rate = ProtoField.new("Dividend Rate", "gpw.wse.marketinformation.xdp.v6.8.dividendrate", ftypes.UINT32, nil, nil, nil, "Dividend rate for the company is given on the basis of dividends paid by companies being the base instrument for futures and options")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.dividend_rate_scale_code = ProtoField.new("Dividend Rate Scale Code", "gpw.wse.marketinformation.xdp.v6.8.dividendratescalecode", ftypes.UINT8, nil, nil, nil, "Applicable to the dividend rate")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.eighth_reserved_1 = ProtoField.new("Eighth Reserved 1", "gpw.wse.marketinformation.xdp.v6.8.eighthreserved1", ftypes.BYTES, nil, nil, nil, "For future use")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.end_trading = ProtoField.new("End Trading", "gpw.wse.marketinformation.xdp.v6.8.endtrading", ftypes.UINT32, nil, nil, nil, "End of trading date (YYYYMMDD)")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.event_date = ProtoField.new("Event Date", "gpw.wse.marketinformation.xdp.v6.8.eventdate", ftypes.STRING, nil, nil, nil, "Date of the last modification of the characteristics of the instrument except the following ones (which are modified every day)")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.exercise_type = ProtoField.new("Exercise Type", "gpw.wse.marketinformation.xdp.v6.8.exercisetype", ftypes.STRING, nil, nil, nil, "Indicates the type of exercise for an option only (otherwise left blank i.e")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.expiry_date = ProtoField.new("Expiry Date", "gpw.wse.marketinformation.xdp.v6.8.expirydate", ftypes.STRING, nil, nil, nil, "Instrument expiry date")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.fifth_reserved_1 = ProtoField.new("Fifth Reserved 1", "gpw.wse.marketinformation.xdp.v6.8.fifthreserved1", ftypes.BYTES, nil, nil, nil, "For future use")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.financial_market_code = ProtoField.new("Financial Market Code", "gpw.wse.marketinformation.xdp.v6.8.financialmarketcode", ftypes.STRING, nil, nil, nil, "Not Used")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.first_settlement_date = ProtoField.new("First Settlement Date", "gpw.wse.marketinformation.xdp.v6.8.firstsettlementdate", ftypes.STRING, nil, nil, nil, "Represents the first possible settlement date for a given instrument with the instrument's depository")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.fourth_reserved_1 = ProtoField.new("Fourth Reserved 1", "gpw.wse.marketinformation.xdp.v6.8.fourthreserved1", ftypes.BYTES, nil, nil, nil, "For future use")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.fourth_reserved_4 = ProtoField.new("Fourth Reserved 4", "gpw.wse.marketinformation.xdp.v6.8.fourthreserved4", ftypes.BYTES, nil, nil, nil, "For future use")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.gamma = ProtoField.new("Gamma", "gpw.wse.marketinformation.xdp.v6.8.gamma", ftypes.UINT32, nil, nil, nil, "Value of gamma indicator from the current session")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.gamma_scale_code = ProtoField.new("Gamma Scale Code", "gpw.wse.marketinformation.xdp.v6.8.gammascalecode", ftypes.UINT8, nil, nil, nil, "Applicable to the gamma")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.halt_reason = ProtoField.new("Halt Reason", "gpw.wse.marketinformation.xdp.v6.8.haltreason", ftypes.STRING, nil, nil, nil, "Indicates the origin of halting for an instrument")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.high_collar = ProtoField.new("High Collar", "gpw.wse.marketinformation.xdp.v6.8.highcollar", ftypes.UINT32, nil, nil, nil, "Higher bound of the collar price range (To be calculated with the HighScaleCode)")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.high_scale_code = ProtoField.new("High Scale Code", "gpw.wse.marketinformation.xdp.v6.8.highscalecode", ftypes.UINT8, nil, nil, nil, "To be combined with HighCollar")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.holding_period = ProtoField.new("Holding Period", "gpw.wse.marketinformation.xdp.v6.8.holdingperiod", ftypes.STRING, nil, nil, nil, "Specifies the PRIIPs recommended holding period")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.icb = ProtoField.new("Icb", "gpw.wse.marketinformation.xdp.v6.8.icb", ftypes.STRING, nil, nil, nil, "Identifies for a listed instrument, the economic subsector of the issuing company in the ICB (Industry Classification Benchmark) classification")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.im_price = ProtoField.new("Im Price", "gpw.wse.marketinformation.xdp.v6.8.imprice", ftypes.UINT32, nil, nil, nil, "Indicative Matching Price: Price at which transaction on a security would occur if Opening occurred at this moment (To be calculated with the PriceScaleCode)")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.im_volume = ProtoField.new("Im Volume", "gpw.wse.marketinformation.xdp.v6.8.imvolume", ftypes.UINT32, nil, nil, nil, "Indicative Matching Volume: Volume that would be exchanged if Auction occurred at this moment")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.implied_volatility = ProtoField.new("Implied Volatility", "gpw.wse.marketinformation.xdp.v6.8.impliedvolatility", ftypes.UINT32, nil, nil, nil, "Implied volatility of WIG 20 index calculated on the basis of the price of the last transaction at the session for options on WIG 20 index with the use of Black-Scholes option pricing model according to algorithm worked out by the WSE, which is available on the website: www.opcje.gpw.pl")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.implied_volatility_scale_code = ProtoField.new("Implied Volatility Scale Code", "gpw.wse.marketinformation.xdp.v6.8.impliedvolatilityscalecode", ftypes.UINT8, nil, nil, nil, "Applicable to the implied volatility")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.index_set_of_var_price_tick = ProtoField.new("Index Set Of Var Price Tick", "gpw.wse.marketinformation.xdp.v6.8.indexsetofvarpricetick", ftypes.STRING, nil, nil, nil, "When the instrument's tick is defined via a Variable Tick Table: The key for the variable price tick table consists of two data items [the index for a set of variable price ticks, the lowest value in a range of prices]. The index data item refers to a set of lines in that table which make it possible to determine the price tick for an instrument, based on the price range in which a given price for the instrument falls (i.e")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.indicator = ProtoField.new("Indicator", "gpw.wse.marketinformation.xdp.v6.8.indicator", ftypes.STRING, nil, nil, nil, "This field indicates the start of the Referential flow")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.industry_code = ProtoField.new("Industry Code", "gpw.wse.marketinformation.xdp.v6.8.industrycode", ftypes.STRING, nil, nil, nil, "Not used")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.industry_text = ProtoField.new("Industry Text", "gpw.wse.marketinformation.xdp.v6.8.industrytext", ftypes.STRING, nil, nil, nil, "Not used")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.instrument_category = ProtoField.new("Instrument Category", "gpw.wse.marketinformation.xdp.v6.8.instrumentcategory", ftypes.STRING, nil, nil, nil, "Indicates to which category, the security belongs")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.instrument_code = ProtoField.new("Instrument Code", "gpw.wse.marketinformation.xdp.v6.8.instrumentcode", ftypes.STRING, nil, nil, nil, "ISIN Code, International Securities Identification Number, according to the ISO-6166")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.instrument_group_code = ProtoField.new("Instrument Group Code", "gpw.wse.marketinformation.xdp.v6.8.instrumentgroupcode", ftypes.STRING, nil, nil, nil, "Class Identification")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.instrument_group_state = ProtoField.new("Instrument Group State", "gpw.wse.marketinformation.xdp.v6.8.instrumentgroupstate", ftypes.STRING, nil, nil, nil, "Not used")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.instrument_id = ProtoField.new("Instrument Id", "gpw.wse.marketinformation.xdp.v6.8.instrumentid", ftypes.STRING, nil, nil, nil, "WSE: TradingCode BS: InstrumentCode 'Space' – not applicable")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.instrument_name = ProtoField.new("Instrument Name", "gpw.wse.marketinformation.xdp.v6.8.instrumentname", ftypes.STRING, nil, nil, nil, "Instrument Name For instrument others than SHARES: Contains a short instrument name (Formally known as mnemonic)")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.instrument_state = ProtoField.new("Instrument State", "gpw.wse.marketinformation.xdp.v6.8.instrumentstate", ftypes.STRING, nil, nil, nil, "Indicates the state of the instrument")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.instrument_state_tcs = ProtoField.new("Instrument State Tcs", "gpw.wse.marketinformation.xdp.v6.8.instrumentstatetcs", ftypes.STRING, nil, nil, nil, "Not used")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.instrument_trading_status = ProtoField.new("Instrument Trading Status", "gpw.wse.marketinformation.xdp.v6.8.instrumenttradingstatus", ftypes.STRING, nil, nil, nil, "Not used")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.interest_rate = ProtoField.new("Interest Rate", "gpw.wse.marketinformation.xdp.v6.8.interestrate", ftypes.UINT32, nil, nil, nil, "Interest rate is determined on the basis of WIBOR/WIBID rates for each expiration date of options and futures")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.interest_rate_scale_code = ProtoField.new("Interest Rate Scale Code", "gpw.wse.marketinformation.xdp.v6.8.interestratescalecode", ftypes.UINT8, nil, nil, nil, "Applicable to the interest rate")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.interim_dividend_right = ProtoField.new("Interim Dividend Right", "gpw.wse.marketinformation.xdp.v6.8.interimdividendright", ftypes.STRING, nil, nil, nil, "This field informs that the shares are traded the first time after determining the interim dividend rights")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.internal_msg_type = ProtoField.new("Internal Msg Type", "gpw.wse.marketinformation.xdp.v6.8.internalmsgtype", ftypes.STRING, nil, nil, nil, "This field specifies the internal message type")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.isin_code = ProtoField.new("Isin Code", "gpw.wse.marketinformation.xdp.v6.8.isincode", ftypes.STRING, nil, nil, nil, "Treasury Bond Future ISIN Code")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.issuing_country_code = ProtoField.new("Issuing Country Code", "gpw.wse.marketinformation.xdp.v6.8.issuingcountrycode", ftypes.STRING, nil, nil, nil, "Country code of location for the corporate headquarters of the company that issued the instrument")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.kid = ProtoField.new("Kid", "gpw.wse.marketinformation.xdp.v6.8.kid", ftypes.STRING, nil, nil, nil, "Body Message for InternalMsgType field = 03, which informs about the selected values for PRIIPs key information for the given trading day and includes the link to the issuer's website")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.kid_issue_date = ProtoField.new("Kid Issue Date", "gpw.wse.marketinformation.xdp.v6.8.kidissuedate", ftypes.STRING, nil, nil, nil, "Date of creation and first publication of KID for given instrument / Issue date")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.kid_version = ProtoField.new("Kid Version", "gpw.wse.marketinformation.xdp.v6.8.kidversion", ftypes.STRING, nil, nil, nil, "Specifies the version of KID")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.language_version = ProtoField.new("Language Version", "gpw.wse.marketinformation.xdp.v6.8.languageversion", ftypes.STRING, nil, nil, nil, "Field defines the language of the contents of the message")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.last_adj_price = ProtoField.new("Last Adj Price", "gpw.wse.marketinformation.xdp.v6.8.lastadjprice", ftypes.UINT32, nil, nil, nil, "Last traded price of the previous trading day after application of the adjustment coefficient (To be calculated with the LastAdjPriceScaleCode)")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.last_adj_price_scale_code = ProtoField.new("Last Adj Price Scale Code", "gpw.wse.marketinformation.xdp.v6.8.lastadjpricescalecode", ftypes.UINT8, nil, nil, nil, "To be combined with LastAdjPrice")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.last_trade_date = ProtoField.new("Last Trade Date", "gpw.wse.marketinformation.xdp.v6.8.lasttradedate", ftypes.UINT32, nil, nil, nil, "The date of execution of the last trade for the given instrument (YYYYMMDD)")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.last_trade_price = ProtoField.new("Last Trade Price", "gpw.wse.marketinformation.xdp.v6.8.lasttradeprice", ftypes.UINT32, nil, nil, nil, "The price of the last trade for given instrument")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.last_trade_price_scale_code = ProtoField.new("Last Trade Price Scale Code", "gpw.wse.marketinformation.xdp.v6.8.lasttradepricescalecode", ftypes.UINT8, nil, nil, nil, "Applicable to the last trade price")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.liquidity_support_pge = ProtoField.new("Liquidity Support Pge", "gpw.wse.marketinformation.xdp.v6.8.liquiditysupportpge", ftypes.STRING, nil, nil, nil, "The field informs if the company entered to Liquidity Support Programme")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.local_name = ProtoField.new("Local Name", "gpw.wse.marketinformation.xdp.v6.8.localname", ftypes.STRING, nil, nil, nil, "Issuing company short name")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.lot_size = ProtoField.new("Lot Size", "gpw.wse.marketinformation.xdp.v6.8.lotsize", ftypes.UINT64, nil, nil, nil, "Expressed in number of shares or in an amount or a volume of the capital, of the lot size")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.lot_size_scale_code = ProtoField.new("Lot Size Scale Code", "gpw.wse.marketinformation.xdp.v6.8.lotsizescalecode", ftypes.UINT8, nil, nil, nil, "To be combined with LotSize")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.low_collar = ProtoField.new("Low Collar", "gpw.wse.marketinformation.xdp.v6.8.lowcollar", ftypes.UINT32, nil, nil, nil, "Lower bound of the collar price range (To be calculated with the LowScaleCode)")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.low_scale_code = ProtoField.new("Low Scale Code", "gpw.wse.marketinformation.xdp.v6.8.lowscalecode", ftypes.UINT8, nil, nil, nil, "To be combined with LowCollar")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.lower_liquidity = ProtoField.new("Lower Liquidity", "gpw.wse.marketinformation.xdp.v6.8.lowerliquidity", ftypes.STRING, nil, nil, nil, "The field informs if the company was qualified to Lower Liquidity Space")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.main_depositary = ProtoField.new("Main Depositary", "gpw.wse.marketinformation.xdp.v6.8.maindepositary", ftypes.STRING, nil, nil, nil, "Identifies the default (or main) depository organisation of the instrument used by priority for the settlement (e.g.: multi-listed instruments which have several depositories)")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.marker_pct_change_price = ProtoField.new("Marker Pct Change Price", "gpw.wse.marketinformation.xdp.v6.8.markerpctchangeprice", ftypes.STRING, nil, nil, nil, "The field contains the market of the percentage change of the instrument closing price from the current session in relation to the reference price")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.market = ProtoField.new("Market", "gpw.wse.marketinformation.xdp.v6.8.market", ftypes.STRING, nil, nil, nil, "Defines the market the instrument belongs to")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.market_conditions = ProtoField.new("Market Conditions", "gpw.wse.marketinformation.xdp.v6.8.marketconditions", ftypes.STRING, nil, nil, nil, "Body Message for InternalMsgType field = 04, 05, which informs about the beginning or the end of a Stressed or an Exceptional Market Conditions State for a given instrument")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.market_conditions_number = ProtoField.new("Market Conditions Number", "gpw.wse.marketinformation.xdp.v6.8.marketconditionsnumber", ftypes.STRING, nil, nil, nil, "Unique numeric and increasing identifier of Market Conditions during a day")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.market_conditions_state = ProtoField.new("Market Conditions State", "gpw.wse.marketinformation.xdp.v6.8.marketconditionsstate", ftypes.STRING, nil, nil, nil, "Indicates the state of market conditions")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.market_feed_code = ProtoField.new("Market Feed Code", "gpw.wse.marketinformation.xdp.v6.8.marketfeedcode", ftypes.STRING, nil, nil, nil, "Not Available")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.market_indicator = ProtoField.new("Market Indicator", "gpw.wse.marketinformation.xdp.v6.8.marketindicator", ftypes.UINT8, nil, nil, nil, "Indicates the market regulations governing the market on which the security is traded")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.market_segment = ProtoField.new("Market Segment", "gpw.wse.marketinformation.xdp.v6.8.marketsegment", ftypes.STRING)
omi_gpw_wse_marketinformation_xdp_v6_8.fields.max_quantity = ProtoField.new("Max Quantity", "gpw.wse.marketinformation.xdp.v6.8.maxquantity", ftypes.UINT32, nil, nil, nil, "Maximum quantity allowed for orders on that instrument")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.max_value = ProtoField.new("Max Value", "gpw.wse.marketinformation.xdp.v6.8.maxvalue", ftypes.UINT64, nil, nil, nil, "Maximum order value allowed for orders on that instrument")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.maximum_block_price = ProtoField.new("Maximum Block Price", "gpw.wse.marketinformation.xdp.v6.8.maximumblockprice", ftypes.UINT32, nil, nil, nil, "Maximum price of block trades in the instrument during the current trading session")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.maximum_block_price_scale_code = ProtoField.new("Maximum Block Price Scale Code", "gpw.wse.marketinformation.xdp.v6.8.maximumblockpricescalecode", ftypes.UINT8, nil, nil, nil, "Applicable to the maximum block price")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.maximum_price = ProtoField.new("Maximum Price", "gpw.wse.marketinformation.xdp.v6.8.maximumprice", ftypes.UINT32, nil, nil, nil, "Single-price quotation: The maximum single-price during the current stock exchange session")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.maximum_price_scale_code = ProtoField.new("Maximum Price Scale Code", "gpw.wse.marketinformation.xdp.v6.8.maximumpricescalecode", ftypes.UINT8, nil, nil, nil, "Applicable to the maximum price")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.message_size = ProtoField.new("Message Size", "gpw.wse.marketinformation.xdp.v6.8.messagesize", ftypes.UINT16, nil, nil, nil, "Length of the message body, excluding the 2 byte MsgSize field")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.message_type = ProtoField.new("Message Type", "gpw.wse.marketinformation.xdp.v6.8.messagetype", ftypes.UINT16, nil, nil, nil, "The type of this message")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.mic = ProtoField.new("Mic", "gpw.wse.marketinformation.xdp.v6.8.mic", ftypes.STRING, nil, nil, nil, "Identifies the market to which an instrument belongs to by its MIC (Market Identification code), according to ISO 10383")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.mic_list = ProtoField.new("Mic List", "gpw.wse.marketinformation.xdp.v6.8.miclist", ftypes.STRING, nil, nil, nil, "Not used")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.min_quantity = ProtoField.new("Min Quantity", "gpw.wse.marketinformation.xdp.v6.8.minquantity", ftypes.UINT32, nil, nil, nil, "Minimum quantity allowed for orders on that instrument")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.minimum_block_price = ProtoField.new("Minimum Block Price", "gpw.wse.marketinformation.xdp.v6.8.minimumblockprice", ftypes.UINT32, nil, nil, nil, "Minimum price of block trades in the instrument during the current trading session")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.minimum_block_price_scale_code = ProtoField.new("Minimum Block Price Scale Code", "gpw.wse.marketinformation.xdp.v6.8.minimumblockpricescalecode", ftypes.UINT8, nil, nil, nil, "Applicable to the minimum block price")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.minimum_price = ProtoField.new("Minimum Price", "gpw.wse.marketinformation.xdp.v6.8.minimumprice", ftypes.UINT32, nil, nil, nil, "Single-price quotation: The minimum single-price during the current session")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.minimum_price_scale_code = ProtoField.new("Minimum Price Scale Code", "gpw.wse.marketinformation.xdp.v6.8.minimumpricescalecode", ftypes.UINT8, nil, nil, nil, "Applicable to the minimum price")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.mnemo = ProtoField.new("Mnemo", "gpw.wse.marketinformation.xdp.v6.8.mnemo", ftypes.STRING, nil, nil, nil, "Mnemonic code of the instrument")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.msg_serial_num = ProtoField.new("Msg Serial Num", "gpw.wse.marketinformation.xdp.v6.8.msgserialnum", ftypes.STRING, nil, nil, nil, "The message serial number within the framework of the whole given message based on InternalMsgType")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.msg_type_indicator = ProtoField.new("Msg Type Indicator", "gpw.wse.marketinformation.xdp.v6.8.msgtypeindicator", ftypes.STRING, nil, nil, nil, "Field defines the character or nature of the message being sent")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.multiplier = ProtoField.new("Multiplier", "gpw.wse.marketinformation.xdp.v6.8.multiplier", ftypes.UINT32)
omi_gpw_wse_marketinformation_xdp_v6_8.fields.multiplier_scale_code = ProtoField.new("Multiplier Scale Code", "gpw.wse.marketinformation.xdp.v6.8.multiplierscalecode", ftypes.UINT8, nil, nil, nil, "To be combined with Multiplier")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.ninth_reserved_1 = ProtoField.new("Ninth Reserved 1", "gpw.wse.marketinformation.xdp.v6.8.ninthreserved1", ftypes.BYTES, nil, nil, nil, "For future use")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.notional_amount = ProtoField.new("Notional Amount", "gpw.wse.marketinformation.xdp.v6.8.notionalamount", ftypes.STRING, nil, nil, nil, "Nominal amount or notional amount")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.notional_currency = ProtoField.new("Notional Currency", "gpw.wse.marketinformation.xdp.v6.8.notionalcurrency", ftypes.STRING, nil, nil, nil, "Currency in which the notional is denominated as defined by ISO 4217")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.number_instrument_circ = ProtoField.new("Number Instrument Circ", "gpw.wse.marketinformation.xdp.v6.8.numberinstrumentcirc", ftypes.UINT64, nil, nil, nil, "Number of shares issued/bonds outstanding after payments")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.number_msg_entries = ProtoField.new("Number Msg Entries", "gpw.wse.marketinformation.xdp.v6.8.numbermsgentries", ftypes.UINT8, nil, nil, nil, "The number of messages that are contained within the packet")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.number_of_instruments = ProtoField.new("Number Of Instruments", "gpw.wse.marketinformation.xdp.v6.8.numberofinstruments", ftypes.UINT32, nil, nil, nil, "Number of instruments admitted to trading For European type of warrants, the number of warrants in trade is equal to the number of issued warrants, while for the American type of warrants, the number of warrants in trade is equal to the number of issued warrants reduced by the number of executed warrants")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.open_position = ProtoField.new("Open Position", "gpw.wse.marketinformation.xdp.v6.8.openposition", ftypes.UINT32, nil, nil, nil, "Number of open positions")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.open_position_indicator = ProtoField.new("Open Position Indicator", "gpw.wse.marketinformation.xdp.v6.8.openpositionindicator", ftypes.STRING, nil, nil, nil, "The field defines whether: -the NOP value being sent is a value calculated during the quotation based on the incoming TRANSACTION messages – and thus an estimated value -the NOP value being sent is the last on a given day -the value being sent is a verified value")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.open_positions = ProtoField.new("Open Positions", "gpw.wse.marketinformation.xdp.v6.8.openpositions", ftypes.UINT32, nil, nil, nil, "Number of open positions after the end of the session")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.opening_price = ProtoField.new("Opening Price", "gpw.wse.marketinformation.xdp.v6.8.openingprice", ftypes.UINT32, nil, nil, nil, "Single-price quotation: The first single-price defined at the fixing during a particular stock exchange session")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.opening_price_scale_code = ProtoField.new("Opening Price Scale Code", "gpw.wse.marketinformation.xdp.v6.8.openingpricescalecode", ftypes.UINT8, nil, nil, nil, "Applicable to the opening price")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.option_type = ProtoField.new("Option Type", "gpw.wse.marketinformation.xdp.v6.8.optiontype", ftypes.STRING, nil, nil, nil, "Indicates the type of an option only (otherwise left blank i.e")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.order_entry_rejection = ProtoField.new("Order Entry Rejection", "gpw.wse.marketinformation.xdp.v6.8.orderentryrejection", ftypes.STRING, nil, nil, nil, "Indicates whether order entry is allowed or forbidden")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.packet_length = ProtoField.new("Packet Length", "gpw.wse.marketinformation.xdp.v6.8.packetlength", ftypes.UINT16, nil, nil, nil, "Length of the packet including the 16 byte packet header")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.packet_sequence_number = ProtoField.new("Packet Sequence Number", "gpw.wse.marketinformation.xdp.v6.8.packetsequencenumber", ftypes.UINT32, nil, nil, nil, "The packet sequence number, unique for each broadcast stream and used for gap detection. It increases serially and monotonically and is reset to 1 at the beginning of each trading day. It is unique for packets containing market data only, and heartbeats inherit it from the last market data packet or packet sequence number reset packet")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.packet_type = ProtoField.new("Packet Type", "gpw.wse.marketinformation.xdp.v6.8.packettype", ftypes.UINT16, nil, nil, nil, "Identifier for the type of data contained in the packet. Section 1.1 states one value, 501 for Market Data messages, for every feed the document specifies")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.pct_change_price = ProtoField.new("Pct Change Price", "gpw.wse.marketinformation.xdp.v6.8.pctchangeprice", ftypes.UINT32, nil, nil, nil, "Percentage change of the instrument closing price at the current session in relation to the reference price")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.pct_change_price_scale_code = ProtoField.new("Pct Change Price Scale Code", "gpw.wse.marketinformation.xdp.v6.8.pctchangepricescalecode", ftypes.UINT8, nil, nil, nil, "Applicable to the percentage change price")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.period_indicator = ProtoField.new("Period Indicator", "gpw.wse.marketinformation.xdp.v6.8.periodindicator", ftypes.STRING, nil, nil, nil, "Not used")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.period_side = ProtoField.new("Period Side", "gpw.wse.marketinformation.xdp.v6.8.periodside", ftypes.STRING, nil, nil, nil, "Indicates the side for an instrument beginning or ending a Bid only or Offer only situation")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.prev_day_capital_traded = ProtoField.new("Prev Day Capital Traded", "gpw.wse.marketinformation.xdp.v6.8.prevdaycapitaltraded", ftypes.UINT64, nil, nil, nil, "Not used")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.prev_day_capital_traded_scale_code = ProtoField.new("Prev Day Capital Traded Scale Code", "gpw.wse.marketinformation.xdp.v6.8.prevdaycapitaltradedscalecode", ftypes.UINT8, nil, nil, nil, "Not used")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.prev_volume_traded = ProtoField.new("Prev Volume Traded", "gpw.wse.marketinformation.xdp.v6.8.prevvolumetraded", ftypes.UINT32, nil, nil, nil, "Not used")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.price_notation = ProtoField.new("Price Notation", "gpw.wse.marketinformation.xdp.v6.8.pricenotation", ftypes.STRING, nil, nil, nil, "Indication as to whether the price and the strike price is expressed in monetary value, in percentage or in yield Possible values: - MONE: monetary value")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.price_scale_code = ProtoField.new("Price Scale Code", "gpw.wse.marketinformation.xdp.v6.8.pricescalecode", ftypes.UINT8, nil, nil, nil, "To be combined with IMPrice")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.priip_kid_url = ProtoField.new("Priip Kid Url", "gpw.wse.marketinformation.xdp.v6.8.priipkidurl", ftypes.STRING, nil, nil, nil, "Specifies the URL from which the KID can be retrieved, written PRIIP KID/url in the document")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.prog_opening_time = ProtoField.new("Prog Opening Time", "gpw.wse.marketinformation.xdp.v6.8.progopeningtime", ftypes.STRING, nil, nil, nil, "Instrument opening (unhalting) time that has been programmed by the Market Operation Team")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.quotation_system = ProtoField.new("Quotation System", "gpw.wse.marketinformation.xdp.v6.8.quotationsystem", ftypes.STRING, nil, nil, nil, "The field informing about the system of listing the instrument")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.reference_price = ProtoField.new("Reference Price", "gpw.wse.marketinformation.xdp.v6.8.referenceprice", ftypes.UINT32, nil, nil, nil, "The reference price valid for the current session")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.reference_price_scale_code = ProtoField.new("Reference Price Scale Code", "gpw.wse.marketinformation.xdp.v6.8.referencepricescalecode", ftypes.UINT8, nil, nil, nil, "Applicable to the reference price")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.repo_indicator = ProtoField.new("Repo Indicator", "gpw.wse.marketinformation.xdp.v6.8.repoindicator", ftypes.STRING, nil, nil, nil, "Not used")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.reserved_1 = ProtoField.new("Reserved 1", "gpw.wse.marketinformation.xdp.v6.8.reserved1", ftypes.BYTES, nil, nil, nil, "For future use")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.reserved_2 = ProtoField.new("Reserved 2", "gpw.wse.marketinformation.xdp.v6.8.reserved2", ftypes.BYTES, nil, nil, nil, "For future use")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.reserved_203 = ProtoField.new("Reserved 203", "gpw.wse.marketinformation.xdp.v6.8.reserved203", ftypes.BYTES, nil, nil, nil, "Filler")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.reserved_3 = ProtoField.new("Reserved 3", "gpw.wse.marketinformation.xdp.v6.8.reserved3", ftypes.BYTES, nil, nil, nil, "For future use")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.reserved_4 = ProtoField.new("Reserved 4", "gpw.wse.marketinformation.xdp.v6.8.reserved4", ftypes.BYTES, nil, nil, nil, "For future use")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.reserved_59 = ProtoField.new("Reserved 59", "gpw.wse.marketinformation.xdp.v6.8.reserved59", ftypes.BYTES, nil, nil, nil, "For future use")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.rho = ProtoField.new("Rho", "gpw.wse.marketinformation.xdp.v6.8.rho", ftypes.UINT32, nil, nil, nil, "Value of rho indicator from the current session")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.rho_scale_code = ProtoField.new("Rho Scale Code", "gpw.wse.marketinformation.xdp.v6.8.rhoscalecode", ftypes.UINT8, nil, nil, nil, "Applicable to the rho")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.scope = ProtoField.new("Scope", "gpw.wse.marketinformation.xdp.v6.8.scope", ftypes.STRING)
omi_gpw_wse_marketinformation_xdp_v6_8.fields.second_reserved_1 = ProtoField.new("Second Reserved 1", "gpw.wse.marketinformation.xdp.v6.8.secondreserved1", ftypes.BYTES, nil, nil, nil, "For future use")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.second_reserved_2 = ProtoField.new("Second Reserved 2", "gpw.wse.marketinformation.xdp.v6.8.secondreserved2", ftypes.BYTES, nil, nil, nil, "For future use")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.second_reserved_4 = ProtoField.new("Second Reserved 4", "gpw.wse.marketinformation.xdp.v6.8.secondreserved4", ftypes.BYTES, nil, nil, nil, "For future use")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.sector = ProtoField.new("Sector", "gpw.wse.marketinformation.xdp.v6.8.sector", ftypes.STRING, nil, nil, nil, "Defines the sector of the economy that the company belongs to")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.segment = ProtoField.new("Segment", "gpw.wse.marketinformation.xdp.v6.8.segment", ftypes.STRING, nil, nil, nil, "Informs in which segment the instrument is traded")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.send_time = ProtoField.new("Send Time", "gpw.wse.marketinformation.xdp.v6.8.sendtime", ftypes.UINT32, nil, nil, nil, "Timestamp in millisecond indicating the packet broadcast time. The number represents the number of milliseconds since midnight of the last Sunday 00:00 UTC, a weekly epoch no Epoch trait represents, so the field carries no epoch and a reader resolves the absolute time against the Sunday preceding the capture")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.service_id = ProtoField.new("Service Id", "gpw.wse.marketinformation.xdp.v6.8.serviceid", ftypes.UINT16, nil, nil, nil, "Numeric value identifying the broadcast stream. Section 1.1 states that the possible values are described in the XDP CDE Configuration document, a companion this specification does not reproduce, so no value set is declared here")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.session_type = ProtoField.new("Session Type", "gpw.wse.marketinformation.xdp.v6.8.sessiontype", ftypes.STRING, nil, nil, nil, "Market Session")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.settlement_delay = ProtoField.new("Settlement Delay", "gpw.wse.marketinformation.xdp.v6.8.settlementdelay", ftypes.STRING, nil, nil, nil, "Settlement delay for the trades")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.settlement_price = ProtoField.new("Settlement Price", "gpw.wse.marketinformation.xdp.v6.8.settlementprice", ftypes.UINT32, nil, nil, nil, "The price defined according to the trading conditions depending on the type of instrument")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.settlement_price_scale_code = ProtoField.new("Settlement Price Scale Code", "gpw.wse.marketinformation.xdp.v6.8.settlementpricescalecode", ftypes.UINT8, nil, nil, nil, "Applicable to the settlement price")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.settlement_value = ProtoField.new("Settlement Value", "gpw.wse.marketinformation.xdp.v6.8.settlementvalue", ftypes.UINT32, nil, nil, nil, "The price defined depending on the type of instrument")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.settlement_value_scale_code = ProtoField.new("Settlement Value Scale Code", "gpw.wse.marketinformation.xdp.v6.8.settlementvaluescalecode", ftypes.UINT8, nil, nil, nil, "Applicable to the settlement value")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.seventh_reserved_1 = ProtoField.new("Seventh Reserved 1", "gpw.wse.marketinformation.xdp.v6.8.seventhreserved1", ftypes.BYTES, nil, nil, nil, "For future use")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.shares_out = ProtoField.new("Shares Out", "gpw.wse.marketinformation.xdp.v6.8.sharesout", ftypes.UINT64, nil, nil, nil, "For BondSpot ONLY: Number of quoted instrument For WSE: filled with zero")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.short_name = ProtoField.new("Short Name", "gpw.wse.marketinformation.xdp.v6.8.shortname", ftypes.STRING, nil, nil, nil, "Treasury Bond Future short name")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.short_sale = ProtoField.new("Short Sale", "gpw.wse.marketinformation.xdp.v6.8.shortsale", ftypes.STRING, nil, nil, nil, "Field should be ignored")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.short_selling_trades_number = ProtoField.new("Short Selling Trades Number", "gpw.wse.marketinformation.xdp.v6.8.shortsellingtradesnumber", ftypes.UINT32, nil, nil, nil, "Field should be ignored")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.sixth_reserved_1 = ProtoField.new("Sixth Reserved 1", "gpw.wse.marketinformation.xdp.v6.8.sixthreserved1", ftypes.BYTES, nil, nil, nil, "For future use")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.source_data = ProtoField.new("Source Data", "gpw.wse.marketinformation.xdp.v6.8.sourcedata", ftypes.STRING, nil, nil, nil, "Source of Data: '1' - UTP Cash '2' - UTP Derivatives '3' - Indexator '4' -BondSpot '5' – other 'space' - not applicable")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.source_seq_num = ProtoField.new("Source Seq Num", "gpw.wse.marketinformation.xdp.v6.8.sourceseqnum", ftypes.UINT32, nil, nil, nil, "This field specifies the sequence number assigned by the source system to this message")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.source_time = ProtoField.new("Source Time", "gpw.wse.marketinformation.xdp.v6.8.sourcetime", ftypes.UINT32, nil, nil, nil, "This field specifies the message generation time")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.source_time_micro_secs = ProtoField.new("Source Time Micro Secs", "gpw.wse.marketinformation.xdp.v6.8.sourcetimemicrosecs", ftypes.UINT16, nil, nil, nil, "Number of micro seconds")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.split = ProtoField.new("Split", "gpw.wse.marketinformation.xdp.v6.8.split", ftypes.STRING, nil, nil, nil, "This field informs that the securities are traded the first time after the change of the nominal value of shares")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.ss_market_maker = ProtoField.new("Ss Market Maker", "gpw.wse.marketinformation.xdp.v6.8.ssmarketmaker", ftypes.STRING, nil, nil, nil, "Field should be ignored Short sale eligibility for a capacity of a market maker")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.ss_non_market_maker = ProtoField.new("Ss Non Market Maker", "gpw.wse.marketinformation.xdp.v6.8.ssnonmarketmaker", ftypes.STRING, nil, nil, nil, "Field should be ignored Short sale eligibility for a capacity different from market maker")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.start_date_halting = ProtoField.new("Start Date Halting", "gpw.wse.marketinformation.xdp.v6.8.startdatehalting", ftypes.STRING, nil, nil, nil, "Date when suspension of trading started for an instrument")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.start_time_halting = ProtoField.new("Start Time Halting", "gpw.wse.marketinformation.xdp.v6.8.starttimehalting", ftypes.STRING, nil, nil, nil, "Time when suspension of trading started for an instrument")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.status_indicator = ProtoField.new("Status Indicator", "gpw.wse.marketinformation.xdp.v6.8.statusindicator", ftypes.STRING, nil, nil, nil, "Defines the status of the instrument at the end of the stock exchange session")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.stock_exchange_code = ProtoField.new("Stock Exchange Code", "gpw.wse.marketinformation.xdp.v6.8.stockexchangecode", ftypes.UINT16, nil, nil, nil, "Indicates the Market Place")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.strike_currency = ProtoField.new("Strike Currency", "gpw.wse.marketinformation.xdp.v6.8.strikecurrency", ftypes.STRING, nil, nil, nil, "This field contains the currency in which the Warrant Strike Price is expressed")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.strike_currency_indicator = ProtoField.new("Strike Currency Indicator", "gpw.wse.marketinformation.xdp.v6.8.strikecurrencyindicator", ftypes.UINT8, nil, nil, nil, "Change rate indicator for currency of the strike price Indicates if the change rate will be applied to the currency defined for strike prices of the instrument")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.strike_price = ProtoField.new("Strike Price", "gpw.wse.marketinformation.xdp.v6.8.strikeprice", ftypes.UINT32, nil, nil, nil, "The specified price of an option contract at which the contract may be exercised, whereby a call option buyer can buy the underlying or a put option buyer can sell the underlying")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.strike_price_scale_code = ProtoField.new("Strike Price Scale Code", "gpw.wse.marketinformation.xdp.v6.8.strikepricescalecode", ftypes.UINT8, nil, nil, nil, "Applicable to the strike price")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.strike_scale_code = ProtoField.new("Strike Scale Code", "gpw.wse.marketinformation.xdp.v6.8.strikescalecode", ftypes.UINT8, nil, nil, nil, "To be combined with StrikePrice")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.subscription_right = ProtoField.new("Subscription Right", "gpw.wse.marketinformation.xdp.v6.8.subscriptionright", ftypes.STRING, nil, nil, nil, "This field informs that the securities are traded the first time after determining the subscription right")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.symbol_delta = ProtoField.new("Symbol Delta", "gpw.wse.marketinformation.xdp.v6.8.symboldelta", ftypes.STRING, nil, nil, nil, "The field contains a symbol of Delta indicator from the current session")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.symbol_gamma = ProtoField.new("Symbol Gamma", "gpw.wse.marketinformation.xdp.v6.8.symbolgamma", ftypes.STRING, nil, nil, nil, "The field contains a symbol of Gamma indicator from the current session")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.symbol_index = ProtoField.new("Symbol Index", "gpw.wse.marketinformation.xdp.v6.8.symbolindex", ftypes.UINT32, nil, nil, nil, "UTP-MD proprietary identification of the instrument")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.symbol_rho = ProtoField.new("Symbol Rho", "gpw.wse.marketinformation.xdp.v6.8.symbolrho", ftypes.STRING, nil, nil, nil, "The field contains a symbol of Rho indicator from the current session")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.symbol_theta = ProtoField.new("Symbol Theta", "gpw.wse.marketinformation.xdp.v6.8.symboltheta", ftypes.STRING, nil, nil, nil, "The field contains a symbol of Theta indicator from the current session")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.symbol_vega = ProtoField.new("Symbol Vega", "gpw.wse.marketinformation.xdp.v6.8.symbolvega", ftypes.STRING, nil, nil, nil, "The field contains a symbol of Vega indicator from the current session")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.system_id = ProtoField.new("System Id", "gpw.wse.marketinformation.xdp.v6.8.systemid", ftypes.UINT32, nil, nil, nil, "The ID of the originating Exchange/System of the message")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.tax_code = ProtoField.new("Tax Code", "gpw.wse.marketinformation.xdp.v6.8.taxcode", ftypes.UINT8, nil, nil, nil, "Not used")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.text_ascii_ch_100 = ProtoField.new("Text Ascii Ch 100", "gpw.wse.marketinformation.xdp.v6.8.textasciich100", ftypes.STRING, nil, nil, nil, "Free text")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.text_ascii_str_1000 = ProtoField.new("Text Ascii Str 1000", "gpw.wse.marketinformation.xdp.v6.8.textasciistr1000", ftypes.STRING, nil, nil, nil, "Text")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.theta = ProtoField.new("Theta", "gpw.wse.marketinformation.xdp.v6.8.theta", ftypes.UINT32, nil, nil, nil, "Value of theta indicator from the current session")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.theta_scale_code = ProtoField.new("Theta Scale Code", "gpw.wse.marketinformation.xdp.v6.8.thetascalecode", ftypes.UINT8, nil, nil, nil, "Applicable to the theta")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.third_reserved_1 = ProtoField.new("Third Reserved 1", "gpw.wse.marketinformation.xdp.v6.8.thirdreserved1", ftypes.BYTES, nil, nil, nil, "For future use")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.third_reserved_4 = ProtoField.new("Third Reserved 4", "gpw.wse.marketinformation.xdp.v6.8.thirdreserved4", ftypes.BYTES, nil, nil, nil, "For future use")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.time_lag_euronext_utc = ProtoField.new("Time Lag Euronext Utc", "gpw.wse.marketinformation.xdp.v6.8.timelageuronextutc", ftypes.STRING, nil, nil, nil, "Not used")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.time_lag_mi_fid_reg_utc = ProtoField.new("Time Lag Mi Fid Reg Utc", "gpw.wse.marketinformation.xdp.v6.8.timelagmifidregutc", ftypes.STRING, nil, nil, nil, "Not used")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.title = ProtoField.new("Title", "gpw.wse.marketinformation.xdp.v6.8.title", ftypes.STRING)
omi_gpw_wse_marketinformation_xdp_v6_8.fields.trading_code = ProtoField.new("Trading Code", "gpw.wse.marketinformation.xdp.v6.8.tradingcode", ftypes.STRING, nil, nil, nil, "For WSE: Trading code of the instrument")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.trading_currency = ProtoField.new("Trading Currency", "gpw.wse.marketinformation.xdp.v6.8.tradingcurrency", ftypes.STRING, nil, nil, nil, "Code of the currency in which the instrument is traded")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.trading_currency_indicator = ProtoField.new("Trading Currency Indicator", "gpw.wse.marketinformation.xdp.v6.8.tradingcurrencyindicator", ftypes.UINT8, nil, nil, nil, "Change rate indicator for currency of Instrument Traded Price")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.trading_date = ProtoField.new("Trading Date", "gpw.wse.marketinformation.xdp.v6.8.tradingdate", ftypes.STRING, nil, nil, nil, "Date of trading day (YYYYMMDD)")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.trading_value = ProtoField.new("Trading Value", "gpw.wse.marketinformation.xdp.v6.8.tradingvalue", ftypes.UINT64, nil, nil, nil, "Accumulated value of all transactions concluded on a particular instrument during the current stock exchange session")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.trading_value_currency = ProtoField.new("Trading Value Currency", "gpw.wse.marketinformation.xdp.v6.8.tradingvaluecurrency", ftypes.UINT64, nil, nil, nil, "The field comprises the trading value expressed in trading currency")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.trading_value_currency_scale_code = ProtoField.new("Trading Value Currency Scale Code", "gpw.wse.marketinformation.xdp.v6.8.tradingvaluecurrencyscalecode", ftypes.UINT8, nil, nil, nil, "Applicable to the trading value")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.trading_value_scale_code = ProtoField.new("Trading Value Scale Code", "gpw.wse.marketinformation.xdp.v6.8.tradingvaluescalecode", ftypes.UINT8, nil, nil, nil, "Applicable to the trading value")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.trading_volume = ProtoField.new("Trading Volume", "gpw.wse.marketinformation.xdp.v6.8.tradingvolume", ftypes.UINT32, nil, nil, nil, "Accumulated trading volume of all transactions concluded on a particular instrument during the current session")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.transaction_number = ProtoField.new("Transaction Number", "gpw.wse.marketinformation.xdp.v6.8.transactionnumber", ftypes.UINT32, nil, nil, nil, "Number of transactions when OpenPositionIndicator = 0")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.transactions_number = ProtoField.new("Transactions Number", "gpw.wse.marketinformation.xdp.v6.8.transactionsnumber", ftypes.UINT32, nil, nil, nil, "The total number of transactions concluded on a particular instrument during the current market session")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.treasury_bond_1_isin_code = ProtoField.new("Treasury Bond 1 Isin Code", "gpw.wse.marketinformation.xdp.v6.8.treasurybond1isincode", ftypes.STRING, nil, nil, nil, "ISIN Code of (1) Treasury Bond series included in the bond basket")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.treasury_bond_2_isin_code = ProtoField.new("Treasury Bond 2 Isin Code", "gpw.wse.marketinformation.xdp.v6.8.treasurybond2isincode", ftypes.STRING, nil, nil, nil, "ISIN Code of (2) Treasury Bond series included in the bond basket")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.treasury_bond_3_isin_code = ProtoField.new("Treasury Bond 3 Isin Code", "gpw.wse.marketinformation.xdp.v6.8.treasurybond3isincode", ftypes.STRING, nil, nil, nil, "ISIN Code of (3) Treasury Bond series included in the bond basket")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.treasury_bond_4_isin_code = ProtoField.new("Treasury Bond 4 Isin Code", "gpw.wse.marketinformation.xdp.v6.8.treasurybond4isincode", ftypes.STRING, nil, nil, nil, "ISIN Code of (4) Treasury Bond series included in the bond basket")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.treasury_bond_5_isin_code = ProtoField.new("Treasury Bond 5 Isin Code", "gpw.wse.marketinformation.xdp.v6.8.treasurybond5isincode", ftypes.STRING, nil, nil, nil, "ISIN Code of (5) Treasury Bond series included in the bond basket")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.treasury_bond_futures_data = ProtoField.new("Treasury Bond Futures Data", "gpw.wse.marketinformation.xdp.v6.8.treasurybondfuturesdata", ftypes.STRING, nil, nil, nil, "Body Message for InternalMsgType = 02, which informs about the structure of the basket of treasury bonds for a given bond future for the next trading day")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.type_of_corporate_event = ProtoField.new("Type Of Corporate Event", "gpw.wse.marketinformation.xdp.v6.8.typeofcorporateevent", ftypes.STRING, nil, nil, nil, "Indicates the last type of corporate event that has occurred on an instrument, such as detachment of rights, or of coupons")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.type_of_derivatives = ProtoField.new("Type Of Derivatives", "gpw.wse.marketinformation.xdp.v6.8.typeofderivatives", ftypes.STRING, nil, nil, nil, "Type of derivative instrument associated to the security")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.type_of_instrument_ascii_str_4 = ProtoField.new("Type Of Instrument Ascii Str 4", "gpw.wse.marketinformation.xdp.v6.8.typeofinstrumentasciistr4", ftypes.STRING, nil, nil, nil, "Type of instrument / Categorization code")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.type_of_instrument_binary_int_2 = ProtoField.new("Type Of Instrument Binary Int 2", "gpw.wse.marketinformation.xdp.v6.8.typeofinstrumentbinaryint2", ftypes.UINT16, nil, nil, nil, "Type of instrument")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.type_of_market_admission = ProtoField.new("Type Of Market Admission", "gpw.wse.marketinformation.xdp.v6.8.typeofmarketadmission", ftypes.STRING, nil, nil, nil, "Not used")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.type_off_recipient = ProtoField.new("Type Off Recipient", "gpw.wse.marketinformation.xdp.v6.8.typeoffrecipient", ftypes.STRING, nil, nil, nil, "This field defines the class of the recipient of a message being sent This field assumes one of the below specified values: 'D' – distributors of information 'M' – exchange members")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.underlying_isin_code = ProtoField.new("Underlying Isin Code", "gpw.wse.marketinformation.xdp.v6.8.underlyingisincode", ftypes.STRING, nil, nil, nil, "Gives the ISIN Code of a warrant or a derivatives instrument")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.underlying_repo_isin_code = ProtoField.new("Underlying Repo Isin Code", "gpw.wse.marketinformation.xdp.v6.8.underlyingrepoisincode", ftypes.STRING, nil, nil, nil, "Underlying security (security used in the loan quotation system) for loan contracts at given value on centralized lending market")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.us_indicators = ProtoField.new("Us Indicators", "gpw.wse.marketinformation.xdp.v6.8.usindicators", ftypes.STRING, nil, nil, nil, "Not used")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.value_at_risk = ProtoField.new("Value At Risk", "gpw.wse.marketinformation.xdp.v6.8.valueatrisk", ftypes.STRING, nil, nil, nil, "Value included in this field depends on the information delivered")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.value_block_trades = ProtoField.new("Value Block Trades", "gpw.wse.marketinformation.xdp.v6.8.valueblocktrades", ftypes.UINT32, nil, nil, nil, "The total turnover value of block trades concluded on a particular instrument during the current trading session")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.value_block_trades_scale_code = ProtoField.new("Value Block Trades Scale Code", "gpw.wse.marketinformation.xdp.v6.8.valueblocktradesscalecode", ftypes.UINT8, nil, nil, nil, "Applicable to the value of the block trades")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.value_short_selling_trades = ProtoField.new("Value Short Selling Trades", "gpw.wse.marketinformation.xdp.v6.8.valueshortsellingtrades", ftypes.UINT32, nil, nil, nil, "Field should be ignored")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.value_short_selling_trades_scale_code = ProtoField.new("Value Short Selling Trades Scale Code", "gpw.wse.marketinformation.xdp.v6.8.valueshortsellingtradesscalecode", ftypes.UINT8, nil, nil, nil, "Field should be ignored")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.variation = ProtoField.new("Variation", "gpw.wse.marketinformation.xdp.v6.8.variation", ftypes.UINT32, nil, nil, nil, "Percentage variation of the last IMP against the previous day's reference price for the stock concerned, ie the last known (signed) price can be the last adjusted closing price or the last price indication (valuation trade).(To be calculated with the VariationScaleCode)")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.variation_scale_code = ProtoField.new("Variation Scale Code", "gpw.wse.marketinformation.xdp.v6.8.variationscalecode", ftypes.UINT8, nil, nil, nil, "To be combined with Variation")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.vega = ProtoField.new("Vega", "gpw.wse.marketinformation.xdp.v6.8.vega", ftypes.UINT32, nil, nil, nil, "Value of vega indicator from the current session")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.vega_scale_code = ProtoField.new("Vega Scale Code", "gpw.wse.marketinformation.xdp.v6.8.vegascalecode", ftypes.UINT8, nil, nil, nil, "Applicable to the vega")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.volatility = ProtoField.new("Volatility", "gpw.wse.marketinformation.xdp.v6.8.volatility", ftypes.UINT32, nil, nil, nil, "Volatility to be calculated is based on the implied volatility (provided in field ImpliedVolatility) according to algorithm worked out by the WSE, which is available on the website: www.opcje.gpw.pl")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.volatility_scale_code = ProtoField.new("Volatility Scale Code", "gpw.wse.marketinformation.xdp.v6.8.volatilityscalecode", ftypes.UINT8, nil, nil, nil, "Applicable to the volatility")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.volume_block_trades = ProtoField.new("Volume Block Trades", "gpw.wse.marketinformation.xdp.v6.8.volumeblocktrades", ftypes.UINT32, nil, nil, nil, "The total turnover volume of block trades concluded on a particular instrument during the current trading session")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.volume_short_selling_trades = ProtoField.new("Volume Short Selling Trades", "gpw.wse.marketinformation.xdp.v6.8.volumeshortsellingtrades", ftypes.UINT32, nil, nil, nil, "Field should be ignored")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.vwap_blocktrade = ProtoField.new("Vwap Blocktrade", "gpw.wse.marketinformation.xdp.v6.8.vwapblocktrade", ftypes.UINT32, nil, nil, nil, "Volume weighted average price of block trades for a particular instrument during a particular trading session, calculated according the following algorithm: ( TCS trade price * TCS trade volume ) /  (TCS trade volume) If no block trades were concluded during the trading session, the field is completed with zeros")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.vwap_blocktrade_scale_code = ProtoField.new("Vwap Blocktrade Scale Code", "gpw.wse.marketinformation.xdp.v6.8.vwapblocktradescalecode", ftypes.UINT8, nil, nil, nil, "Applicable to the VWAP block trade")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.warrant_threshold_max = ProtoField.new("Warrant Threshold Max", "gpw.wse.marketinformation.xdp.v6.8.warrantthresholdmax", ftypes.UINT32, nil, nil, nil, "Maximum threshold for the warrant underlying")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.warrant_threshold_max_scale_code = ProtoField.new("Warrant Threshold Max Scale Code", "gpw.wse.marketinformation.xdp.v6.8.warrantthresholdmaxscalecode", ftypes.UINT8, nil, nil, nil, "To be combined with WarrantThresholdMax")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.warrant_threshold_min = ProtoField.new("Warrant Threshold Min", "gpw.wse.marketinformation.xdp.v6.8.warrantthresholdmin", ftypes.UINT32, nil, nil, nil, "Minimum threshold for the warrant underlying")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.warrant_threshold_min_scale_code = ProtoField.new("Warrant Threshold Min Scale Code", "gpw.wse.marketinformation.xdp.v6.8.warrantthresholdminscalecode", ftypes.UINT8, nil, nil, nil, "To be combined with WarrantThresholdMin")

-- Gpw Wse MarketInformation Xdp 6.8 Framing
omi_gpw_wse_marketinformation_xdp_v6_8.fields.message = ProtoField.new("Message", "gpw.wse.marketinformation.xdp.v6.8.message", ftypes.STRING)
omi_gpw_wse_marketinformation_xdp_v6_8.fields.message_header = ProtoField.new("Message Header", "gpw.wse.marketinformation.xdp.v6.8.messageheader", ftypes.STRING)
omi_gpw_wse_marketinformation_xdp_v6_8.fields.packet = ProtoField.new("Packet", "gpw.wse.marketinformation.xdp.v6.8.packet", ftypes.STRING, nil, nil, nil, "Gpw Xdp Udp Packet")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.packet_header = ProtoField.new("Packet Header", "gpw.wse.marketinformation.xdp.v6.8.packetheader", ftypes.STRING, nil, nil, nil, "All messages are preceded by a common packet header format, which section 1.1 states for every Market Information message")

-- Gpw Wse MarketInformation 6.8 Application Messages
omi_gpw_wse_marketinformation_xdp_v6_8.fields.class_state_change_message = ProtoField.new("Class State Change Message", "gpw.wse.marketinformation.xdp.v6.8.classstatechangemessage", ftypes.STRING, nil, nil, nil, "The Class State Change message indicates a change in the state of a class")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.collars_message = ProtoField.new("Collars Message", "gpw.wse.marketinformation.xdp.v6.8.collarsmessage", ftypes.STRING, nil, nil, nil, "A Collars message informs Clients of modifications in authorized price fluctuations for an instrument")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.end_referential_message = ProtoField.new("End Referential Message", "gpw.wse.marketinformation.xdp.v6.8.endreferentialmessage", ftypes.STRING, nil, nil, nil, "The End referential message is sent to signal the end of transmission of the Instrument Reference Data Flow")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.generic_wse_message = ProtoField.new("Generic Wse Message", "gpw.wse.marketinformation.xdp.v6.8.genericwsemessage", ftypes.STRING, nil, nil, nil, "This message is a free format message with a container of 250 bytes")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.indicative_matching_price_message = ProtoField.new("Indicative Matching Price Message", "gpw.wse.marketinformation.xdp.v6.8.indicativematchingpricemessage", ftypes.STRING, nil, nil, nil, "The Indicative matching price message indicates an instrument's theoretical opening price (also known as an indicative opening price):  An IMP-message is sent if the indicative matching price or – volume varies")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.instrument_state_change_message = ProtoField.new("Instrument State Change Message", "gpw.wse.marketinformation.xdp.v6.8.instrumentstatechangemessage", ftypes.STRING, nil, nil, nil, "An 'Instrument State Change' message is generated by the trading engines to announce a change in the state of an instrument")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.mail_message = ProtoField.new("Mail Message", "gpw.wse.marketinformation.xdp.v6.8.mailmessage", ftypes.STRING, nil, nil, nil, "This message supplies a part or a complete electronic message (E-mail), in order to inform members and rebroadcasting members about quotation conditions on a given listed instrument or a set of listed instruments or otherwise about a technical problem")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.open_position_message = ProtoField.new("Open Position Message", "gpw.wse.marketinformation.xdp.v6.8.openpositionmessage", ftypes.STRING, nil, nil, nil, "The Open Position message indicates the current number of open positions for a particular instrument")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.referential_message = ProtoField.new("Referential Message", "gpw.wse.marketinformation.xdp.v6.8.referentialmessage", ftypes.STRING, nil, nil, nil, "The referential message indicates the main characteristics of a listed instrument:  Characteristics of the instrument itself  Trading characteristics of the instrument  Previous trading day price")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.session_summary_message = ProtoField.new("Session Summary Message", "gpw.wse.marketinformation.xdp.v6.8.sessionsummarymessage", ftypes.STRING, nil, nil, nil, "This message contains statistical data")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.session_timetable_message = ProtoField.new("Session Timetable Message", "gpw.wse.marketinformation.xdp.v6.8.sessiontimetablemessage", ftypes.STRING, nil, nil, nil, "The session timetable message indicates the timetable listing all the states changes of a Class for the current trading day")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.short_sale_change_message = ProtoField.new("Short Sale Change Message", "gpw.wse.marketinformation.xdp.v6.8.shortsalechangemessage", ftypes.STRING, nil, nil, nil, "The Short Sale Change message indicates whether an instrument short sale is suspended or re-authorized")
omi_gpw_wse_marketinformation_xdp_v6_8.fields.start_referential_message = ProtoField.new("Start Referential Message", "gpw.wse.marketinformation.xdp.v6.8.startreferentialmessage", ftypes.STRING, nil, nil, nil, "The Start referential message is sent to signal the start of transmission of the Instrument Reference Data Flow")

-- Gpw Wse MarketInformation Xdp 6.8 Generated Fields
omi_gpw_wse_marketinformation_xdp_v6_8.fields.class_phase_index = ProtoField.new("Class Phase Index", "gpw.wse.marketinformation.xdp.v6.8.classphaseindex", ftypes.UINT16)
omi_gpw_wse_marketinformation_xdp_v6_8.fields.depositary_list_index = ProtoField.new("Depositary List Index", "gpw.wse.marketinformation.xdp.v6.8.depositarylistindex", ftypes.UINT16)
omi_gpw_wse_marketinformation_xdp_v6_8.fields.message_index = ProtoField.new("Message Index", "gpw.wse.marketinformation.xdp.v6.8.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Gpw Wse MarketInformation Xdp 6.8 Element Dissection Options
show.repeating_groups = true
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Gpw Wse MarketInformation Xdp 6.8 Show Options
omi_gpw_wse_marketinformation_xdp_v6_8.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_gpw_wse_marketinformation_xdp_v6_8.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_gpw_wse_marketinformation_xdp_v6_8.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_gpw_wse_marketinformation_xdp_v6_8.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_gpw_wse_marketinformation_xdp_v6_8.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_gpw_wse_marketinformation_xdp_v6_8.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_gpw_wse_marketinformation_xdp_v6_8.prefs.show_application_messages then
    show.application_messages = omi_gpw_wse_marketinformation_xdp_v6_8.prefs.show_application_messages
  end
  if show.headers ~= omi_gpw_wse_marketinformation_xdp_v6_8.prefs.show_headers then
    show.headers = omi_gpw_wse_marketinformation_xdp_v6_8.prefs.show_headers
  end
  if show.repeating_groups ~= omi_gpw_wse_marketinformation_xdp_v6_8.prefs.show_repeating_groups then
    show.repeating_groups = omi_gpw_wse_marketinformation_xdp_v6_8.prefs.show_repeating_groups
  end
  if show.structs ~= omi_gpw_wse_marketinformation_xdp_v6_8.prefs.show_structs then
    show.structs = omi_gpw_wse_marketinformation_xdp_v6_8.prefs.show_structs
  end
  if show.indexes ~= omi_gpw_wse_marketinformation_xdp_v6_8.prefs.show_indexes then
    show.indexes = omi_gpw_wse_marketinformation_xdp_v6_8.prefs.show_indexes
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
-- Gpw Wse MarketInformation Xdp 6.8 Fields
-----------------------------------------------------------------------

-- Accumulated Interest
gpw_wse_marketinformation_xdp_v6_8.accumulated_interest = {}

-- Size: Accumulated Interest
gpw_wse_marketinformation_xdp_v6_8.accumulated_interest.size = 4

-- Display: Accumulated Interest
gpw_wse_marketinformation_xdp_v6_8.accumulated_interest.display = function(value)
  return "Accumulated Interest: "..value
end

-- Dissect: Accumulated Interest
gpw_wse_marketinformation_xdp_v6_8.accumulated_interest.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.accumulated_interest.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.accumulated_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.accumulated_interest, range, value, display)

  return offset + length, value
end

-- Accumulated Interest Scale Code
gpw_wse_marketinformation_xdp_v6_8.accumulated_interest_scale_code = {}

-- Size: Accumulated Interest Scale Code
gpw_wse_marketinformation_xdp_v6_8.accumulated_interest_scale_code.size = 1

-- Display: Accumulated Interest Scale Code
gpw_wse_marketinformation_xdp_v6_8.accumulated_interest_scale_code.display = function(value)
  return "Accumulated Interest Scale Code: "..value
end

-- Dissect: Accumulated Interest Scale Code
gpw_wse_marketinformation_xdp_v6_8.accumulated_interest_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.accumulated_interest_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.accumulated_interest_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.accumulated_interest_scale_code, range, value, display)

  return offset + length, value
end

-- Action Affecting State
gpw_wse_marketinformation_xdp_v6_8.action_affecting_state = {}

-- Size: Action Affecting State
gpw_wse_marketinformation_xdp_v6_8.action_affecting_state.size = 1

-- Display: Action Affecting State
gpw_wse_marketinformation_xdp_v6_8.action_affecting_state.labels = {
  ["C"] = "Action Affecting State: Trading On The Instrument At The Opening Sent Before O (C)",
  ["D"] = "Action Affecting State: Cancelled Programmed Opening (D)",
  ["M"] = "Action Affecting State: Instrument Halted Independently From Its Class (M)",
  ["N"] = "Action Affecting State: Instrument Is Being Initialized Beginning Of The Trading Day (N)",
  ["O"] = "Action Affecting State: Instrument Opened (O)",
  ["P"] = "Action Affecting State: Deferred Programmed Opening (P)",
  ["R"] = "Action Affecting State: Automatic Halting At The Class Auction (R)",
  ["Y"] = "Action Affecting State: Beginning Of A One Side Only Period (Y)",
  ["Z"] = "Action Affecting State: End Of A One Side Only Period (Z)",
}

gpw_wse_marketinformation_xdp_v6_8.action_affecting_state.display = function(value)
  return gpw_wse_marketinformation_xdp_v6_8.action_affecting_state.labels[value] or "Action Affecting State: Unknown("..value..")"
end

-- Dissect: Action Affecting State
gpw_wse_marketinformation_xdp_v6_8.action_affecting_state.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.action_affecting_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.action_affecting_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.action_affecting_state, range, value, display)

  return offset + length, value
end

-- Algo
gpw_wse_marketinformation_xdp_v6_8.algo = {}

-- Size: Algo
gpw_wse_marketinformation_xdp_v6_8.algo.size = 1

-- Display: Algo
gpw_wse_marketinformation_xdp_v6_8.algo.labels = {
  ["F"] = "Algo: Fifo (F)",
  ["O"] = "Algo: Fifo Origin (O)",
}

gpw_wse_marketinformation_xdp_v6_8.algo.display = function(value)
  return gpw_wse_marketinformation_xdp_v6_8.algo.labels[value] or "Algo: Unknown("..value..")"
end

-- Dissect: Algo
gpw_wse_marketinformation_xdp_v6_8.algo.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.algo.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.algo.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.algo, range, value, display)

  return offset + length, value
end

-- Auth Shares
gpw_wse_marketinformation_xdp_v6_8.auth_shares = {}

-- Size: Auth Shares
gpw_wse_marketinformation_xdp_v6_8.auth_shares.size = 8

-- Display: Auth Shares
gpw_wse_marketinformation_xdp_v6_8.auth_shares.display = function(value)
  return "Auth Shares: "..value
end

-- Dissect: Auth Shares
gpw_wse_marketinformation_xdp_v6_8.auth_shares.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.auth_shares.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = gpw_wse_marketinformation_xdp_v6_8.auth_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.auth_shares, range, value, display)

  return offset + length, value
end

-- Authority
gpw_wse_marketinformation_xdp_v6_8.authority = {}

-- Size: Authority
gpw_wse_marketinformation_xdp_v6_8.authority.size = 1

-- Display: Authority
gpw_wse_marketinformation_xdp_v6_8.authority.labels = {
  ["1"] = "Authority: Wse (1)",
  ["2"] = "Authority: Kdpw (2)",
  ["3"] = "Authority: Knf (3)",
}

gpw_wse_marketinformation_xdp_v6_8.authority.display = function(value)
  return gpw_wse_marketinformation_xdp_v6_8.authority.labels[value] or "Authority: Unknown("..value..")"
end

-- Dissect: Authority
gpw_wse_marketinformation_xdp_v6_8.authority.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.authority.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.authority.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.authority, range, value, display)

  return offset + length, value
end

-- Average Weighted Price
gpw_wse_marketinformation_xdp_v6_8.average_weighted_price = {}

-- Size: Average Weighted Price
gpw_wse_marketinformation_xdp_v6_8.average_weighted_price.size = 4

-- Display: Average Weighted Price
gpw_wse_marketinformation_xdp_v6_8.average_weighted_price.display = function(value)
  return "Average Weighted Price: "..value
end

-- Dissect: Average Weighted Price
gpw_wse_marketinformation_xdp_v6_8.average_weighted_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.average_weighted_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.average_weighted_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.average_weighted_price, range, value, display)

  return offset + length, value
end

-- Average Weighted Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.average_weighted_price_scale_code = {}

-- Size: Average Weighted Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.average_weighted_price_scale_code.size = 1

-- Display: Average Weighted Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.average_weighted_price_scale_code.display = function(value)
  return "Average Weighted Price Scale Code: "..value
end

-- Dissect: Average Weighted Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.average_weighted_price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.average_weighted_price_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.average_weighted_price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.average_weighted_price_scale_code, range, value, display)

  return offset + length, value
end

-- Bic Depositary
gpw_wse_marketinformation_xdp_v6_8.bic_depositary = {}

-- Size: Bic Depositary
gpw_wse_marketinformation_xdp_v6_8.bic_depositary.size = 11

-- Display: Bic Depositary
gpw_wse_marketinformation_xdp_v6_8.bic_depositary.display = function(value)
  return "Bic Depositary: "..value
end

-- Dissect: Bic Depositary
gpw_wse_marketinformation_xdp_v6_8.bic_depositary.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.bic_depositary.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.bic_depositary.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.bic_depositary, range, value, display)

  return offset + length, value
end

-- Block Size
gpw_wse_marketinformation_xdp_v6_8.block_size = {}

-- Size: Block Size
gpw_wse_marketinformation_xdp_v6_8.block_size.size = 4

-- Display: Block Size
gpw_wse_marketinformation_xdp_v6_8.block_size.display = function(value)
  return "Block Size: "..value
end

-- Dissect: Block Size
gpw_wse_marketinformation_xdp_v6_8.block_size.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.block_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.block_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.block_size, range, value, display)

  return offset + length, value
end

-- Block Trades Number
gpw_wse_marketinformation_xdp_v6_8.block_trades_number = {}

-- Size: Block Trades Number
gpw_wse_marketinformation_xdp_v6_8.block_trades_number.size = 4

-- Display: Block Trades Number
gpw_wse_marketinformation_xdp_v6_8.block_trades_number.display = function(value)
  return "Block Trades Number: "..value
end

-- Dissect: Block Trades Number
gpw_wse_marketinformation_xdp_v6_8.block_trades_number.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.block_trades_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.block_trades_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.block_trades_number, range, value, display)

  return offset + length, value
end

-- Cfi
gpw_wse_marketinformation_xdp_v6_8.cfi = {}

-- Size: Cfi
gpw_wse_marketinformation_xdp_v6_8.cfi.size = 6

-- Display: Cfi
gpw_wse_marketinformation_xdp_v6_8.cfi.display = function(value)
  return "Cfi: "..value
end

-- Dissect: Cfi
gpw_wse_marketinformation_xdp_v6_8.cfi.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.cfi.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.cfi.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.cfi, range, value, display)

  return offset + length, value
end

-- Class Phase Number
gpw_wse_marketinformation_xdp_v6_8.class_phase_number = {}

-- Size: Class Phase Number
gpw_wse_marketinformation_xdp_v6_8.class_phase_number.size = 2

-- Display: Class Phase Number
gpw_wse_marketinformation_xdp_v6_8.class_phase_number.display = function(value)
  return "Class Phase Number: "..value
end

-- Dissect: Class Phase Number
gpw_wse_marketinformation_xdp_v6_8.class_phase_number.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.class_phase_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.class_phase_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.class_phase_number, range, value, display)

  return offset + length, value
end

-- Class State
gpw_wse_marketinformation_xdp_v6_8.class_state = {}

-- Size: Class State
gpw_wse_marketinformation_xdp_v6_8.class_state.size = 4

-- Display: Class State
gpw_wse_marketinformation_xdp_v6_8.class_state.display = function(value)
  if value == "EAMO" then
    return "Class State: Early Monitoring (EAMO)"
  end
  if value == "COCA" then
    return "Class State: Core Call (COCA)"
  end
  if value == "COAU" then
    return "Class State: Core Auction (COAU)"
  end
  if value == "COCO" then
    return "Class State: Core Continuous (COCO)"
  end
  if value == "CLCA" then
    return "Class State: Closing Call (CLCA)"
  end
  if value == "CLAU" then
    return "Class State: Closing Auction (CLAU)"
  end
  if value == "LTAL" then
    return "Class State: Late Trading At Last (LTAL)"
  end
  if value == "CTAL" then
    return "Class State: Core Trading At Last (CTAL)"
  end
  if value == "COMO" then
    return "Class State: Core Monitoring (COMO)"
  end
  if value == "LAMO" then
    return "Class State: Late Monitoring (LAMO)"
  end
  if value == "HALT" then
    return "Class State: Halted Listed For The Class State Of The 523 Mail Message (HALT)"
  end
  if value == "CLSD" then
    return "Class State: Closed (CLSD)"
  end
  if value == "    " then
    return "Class State: Inactive Class Phase Listed For The Class State Of The 539 Session Timetable Message (<whitespace>)"
  end

  return "Class State: Unknown("..value..")"
end

-- Dissect: Class State
gpw_wse_marketinformation_xdp_v6_8.class_state.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.class_state.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.class_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.class_state, range, value, display)

  return offset + length, value
end

-- Class State Time
gpw_wse_marketinformation_xdp_v6_8.class_state_time = {}

-- Size: Class State Time
gpw_wse_marketinformation_xdp_v6_8.class_state_time.size = 4

-- Display: Class State Time
gpw_wse_marketinformation_xdp_v6_8.class_state_time.display = function(value)
  if #value < 4 then
    return "Class State Time: "..value
  end

  local hour = value:sub(1, 2)
  local minute = value:sub(3, 4)

  if minute:match("^%s*$") then
    return "Class State Time: "..hour
  end

  return "Class State Time: "..hour..":"..minute
end

-- Dissect: Class State Time
gpw_wse_marketinformation_xdp_v6_8.class_state_time.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.class_state_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.class_state_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.class_state_time, range, value, display)

  return offset + length, value
end

-- Closing Price
gpw_wse_marketinformation_xdp_v6_8.closing_price = {}

-- Size: Closing Price
gpw_wse_marketinformation_xdp_v6_8.closing_price.size = 4

-- Display: Closing Price
gpw_wse_marketinformation_xdp_v6_8.closing_price.display = function(value)
  return "Closing Price: "..value
end

-- Dissect: Closing Price
gpw_wse_marketinformation_xdp_v6_8.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.closing_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Closing Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.closing_price_scale_code = {}

-- Size: Closing Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.closing_price_scale_code.size = 1

-- Display: Closing Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.closing_price_scale_code.display = function(value)
  return "Closing Price Scale Code: "..value
end

-- Dissect: Closing Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.closing_price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.closing_price_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.closing_price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.closing_price_scale_code, range, value, display)

  return offset + length, value
end

-- Collar Type
gpw_wse_marketinformation_xdp_v6_8.collar_type = {}

-- Size: Collar Type
gpw_wse_marketinformation_xdp_v6_8.collar_type.size = 1

-- Display: Collar Type
gpw_wse_marketinformation_xdp_v6_8.collar_type.labels = {
  ["D"] = "Collar Type: Dynamic Collars (D)",
  ["S"] = "Collar Type: Static Thresholds (S)",
}

gpw_wse_marketinformation_xdp_v6_8.collar_type.display = function(value)
  return gpw_wse_marketinformation_xdp_v6_8.collar_type.labels[value] or "Collar Type: Unknown("..value..")"
end

-- Dissect: Collar Type
gpw_wse_marketinformation_xdp_v6_8.collar_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.collar_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.collar_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.collar_type, range, value, display)

  return offset + length, value
end

-- Conversion Coefficient Factor 1
gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_1 = {}

-- Size: Conversion Coefficient Factor 1
gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_1.size = 9

-- Display: Conversion Coefficient Factor 1
gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_1.display = function(value)
  return "Conversion Coefficient Factor 1: "..value
end

-- Dissect: Conversion Coefficient Factor 1
gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_1.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.conversion_coefficient_factor_1, range, value, display)

  return offset + length, value
end

-- Conversion Coefficient Factor 2
gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_2 = {}

-- Size: Conversion Coefficient Factor 2
gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_2.size = 9

-- Display: Conversion Coefficient Factor 2
gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_2.display = function(value)
  return "Conversion Coefficient Factor 2: "..value
end

-- Dissect: Conversion Coefficient Factor 2
gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_2.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.conversion_coefficient_factor_2, range, value, display)

  return offset + length, value
end

-- Conversion Coefficient Factor 3
gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_3 = {}

-- Size: Conversion Coefficient Factor 3
gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_3.size = 9

-- Display: Conversion Coefficient Factor 3
gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_3.display = function(value)
  return "Conversion Coefficient Factor 3: "..value
end

-- Dissect: Conversion Coefficient Factor 3
gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_3.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_3.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.conversion_coefficient_factor_3, range, value, display)

  return offset + length, value
end

-- Conversion Coefficient Factor 4
gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_4 = {}

-- Size: Conversion Coefficient Factor 4
gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_4.size = 9

-- Display: Conversion Coefficient Factor 4
gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_4.display = function(value)
  return "Conversion Coefficient Factor 4: "..value
end

-- Dissect: Conversion Coefficient Factor 4
gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_4.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_4.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.conversion_coefficient_factor_4, range, value, display)

  return offset + length, value
end

-- Conversion Coefficient Factor 5
gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_5 = {}

-- Size: Conversion Coefficient Factor 5
gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_5.size = 9

-- Display: Conversion Coefficient Factor 5
gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_5.display = function(value)
  return "Conversion Coefficient Factor 5: "..value
end

-- Dissect: Conversion Coefficient Factor 5
gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_5.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_5.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.conversion_coefficient_factor_5, range, value, display)

  return offset + length, value
end

-- Currency Coef
gpw_wse_marketinformation_xdp_v6_8.currency_coef = {}

-- Size: Currency Coef
gpw_wse_marketinformation_xdp_v6_8.currency_coef.size = 4

-- Display: Currency Coef
gpw_wse_marketinformation_xdp_v6_8.currency_coef.display = function(value)
  return "Currency Coef: "..value
end

-- Dissect: Currency Coef
gpw_wse_marketinformation_xdp_v6_8.currency_coef.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.currency_coef.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.currency_coef.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.currency_coef, range, value, display)

  return offset + length, value
end

-- Currency Coef Scale Code
gpw_wse_marketinformation_xdp_v6_8.currency_coef_scale_code = {}

-- Size: Currency Coef Scale Code
gpw_wse_marketinformation_xdp_v6_8.currency_coef_scale_code.size = 1

-- Display: Currency Coef Scale Code
gpw_wse_marketinformation_xdp_v6_8.currency_coef_scale_code.display = function(value)
  return "Currency Coef Scale Code: "..value
end

-- Dissect: Currency Coef Scale Code
gpw_wse_marketinformation_xdp_v6_8.currency_coef_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.currency_coef_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.currency_coef_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.currency_coef_scale_code, range, value, display)

  return offset + length, value
end

-- Currency Price
gpw_wse_marketinformation_xdp_v6_8.currency_price = {}

-- Size: Currency Price
gpw_wse_marketinformation_xdp_v6_8.currency_price.size = 4

-- Display: Currency Price
gpw_wse_marketinformation_xdp_v6_8.currency_price.display = function(value)
  return "Currency Price: "..value
end

-- Dissect: Currency Price
gpw_wse_marketinformation_xdp_v6_8.currency_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.currency_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.currency_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.currency_price, range, value, display)

  return offset + length, value
end

-- Currency Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.currency_price_scale_code = {}

-- Size: Currency Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.currency_price_scale_code.size = 1

-- Display: Currency Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.currency_price_scale_code.display = function(value)
  return "Currency Price Scale Code: "..value
end

-- Dissect: Currency Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.currency_price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.currency_price_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.currency_price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.currency_price_scale_code, range, value, display)

  return offset + length, value
end

-- Date Ascii Str 8
gpw_wse_marketinformation_xdp_v6_8.date_ascii_str_8 = {}

-- Size: Date Ascii Str 8
gpw_wse_marketinformation_xdp_v6_8.date_ascii_str_8.size = 8

-- Display: Date Ascii Str 8
gpw_wse_marketinformation_xdp_v6_8.date_ascii_str_8.display = function(value)
  return "Date Ascii Str 8: "..value
end

-- Dissect: Date Ascii Str 8
gpw_wse_marketinformation_xdp_v6_8.date_ascii_str_8.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.date_ascii_str_8.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.date_ascii_str_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.date_ascii_str_8, range, value, display)

  return offset + length, value
end

-- Date Binary Int 4
gpw_wse_marketinformation_xdp_v6_8.date_binary_int_4 = {}

-- Size: Date Binary Int 4
gpw_wse_marketinformation_xdp_v6_8.date_binary_int_4.size = 4

-- Display: Date Binary Int 4
gpw_wse_marketinformation_xdp_v6_8.date_binary_int_4.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Date Binary Int 4: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Date Binary Int 4
gpw_wse_marketinformation_xdp_v6_8.date_binary_int_4.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.date_binary_int_4.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.date_binary_int_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.date_binary_int_4, range, value, display)

  return offset + length, value
end

-- Date Of First Quotation
gpw_wse_marketinformation_xdp_v6_8.date_of_first_quotation = {}

-- Size: Date Of First Quotation
gpw_wse_marketinformation_xdp_v6_8.date_of_first_quotation.size = 8

-- Display: Date Of First Quotation
gpw_wse_marketinformation_xdp_v6_8.date_of_first_quotation.display = function(value)
  return "Date Of First Quotation: "..value
end

-- Dissect: Date Of First Quotation
gpw_wse_marketinformation_xdp_v6_8.date_of_first_quotation.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.date_of_first_quotation.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.date_of_first_quotation.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.date_of_first_quotation, range, value, display)

  return offset + length, value
end

-- Date Of Last Trade
gpw_wse_marketinformation_xdp_v6_8.date_of_last_trade = {}

-- Size: Date Of Last Trade
gpw_wse_marketinformation_xdp_v6_8.date_of_last_trade.size = 8

-- Display: Date Of Last Trade
gpw_wse_marketinformation_xdp_v6_8.date_of_last_trade.display = function(value)
  return "Date Of Last Trade: "..value
end

-- Dissect: Date Of Last Trade
gpw_wse_marketinformation_xdp_v6_8.date_of_last_trade.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.date_of_last_trade.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.date_of_last_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.date_of_last_trade, range, value, display)

  return offset + length, value
end

-- Delivery Flag
gpw_wse_marketinformation_xdp_v6_8.delivery_flag = {}

-- Size: Delivery Flag
gpw_wse_marketinformation_xdp_v6_8.delivery_flag.size = 1

-- Display: Delivery Flag
gpw_wse_marketinformation_xdp_v6_8.delivery_flag.labels = {
  [0] = "Delivery Flag: Real Time Message Uncompressed (0)",
  [2] = "Delivery Flag: Retransmission Message Uncompressed (2)",
  [16] = "Delivery Flag: Real Time Message Zlib Compressed (16)",
  [17] = "Delivery Flag: Refresh Message Zlib Compressed (17)",
  [18] = "Delivery Flag: Retransmission Message Compressed (18)",
}

gpw_wse_marketinformation_xdp_v6_8.delivery_flag.display = function(value)
  return gpw_wse_marketinformation_xdp_v6_8.delivery_flag.labels[value] or "Delivery Flag: Unknown("..value..")"
end

-- Dissect: Delivery Flag
gpw_wse_marketinformation_xdp_v6_8.delivery_flag.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.delivery_flag.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.delivery_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- Delivery Type
gpw_wse_marketinformation_xdp_v6_8.delivery_type = {}

-- Size: Delivery Type
gpw_wse_marketinformation_xdp_v6_8.delivery_type.size = 1

-- Display: Delivery Type
gpw_wse_marketinformation_xdp_v6_8.delivery_type.labels = {
  ["C"] = "Delivery Type: Cash Settlement (C)",
  ["P"] = "Delivery Type: Physical Delivery (P)",
}

gpw_wse_marketinformation_xdp_v6_8.delivery_type.display = function(value)
  return gpw_wse_marketinformation_xdp_v6_8.delivery_type.labels[value] or "Delivery Type: Unknown("..value..")"
end

-- Dissect: Delivery Type
gpw_wse_marketinformation_xdp_v6_8.delivery_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.delivery_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.delivery_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.delivery_type, range, value, display)

  return offset + length, value
end

-- Delta
gpw_wse_marketinformation_xdp_v6_8.delta = {}

-- Size: Delta
gpw_wse_marketinformation_xdp_v6_8.delta.size = 4

-- Display: Delta
gpw_wse_marketinformation_xdp_v6_8.delta.display = function(value)
  return "Delta: "..value
end

-- Dissect: Delta
gpw_wse_marketinformation_xdp_v6_8.delta.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.delta.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.delta.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.delta, range, value, display)

  return offset + length, value
end

-- Delta Scale Code
gpw_wse_marketinformation_xdp_v6_8.delta_scale_code = {}

-- Size: Delta Scale Code
gpw_wse_marketinformation_xdp_v6_8.delta_scale_code.size = 1

-- Display: Delta Scale Code
gpw_wse_marketinformation_xdp_v6_8.delta_scale_code.display = function(value)
  return "Delta Scale Code: "..value
end

-- Dissect: Delta Scale Code
gpw_wse_marketinformation_xdp_v6_8.delta_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.delta_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.delta_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.delta_scale_code, range, value, display)

  return offset + length, value
end

-- Depositary
gpw_wse_marketinformation_xdp_v6_8.depositary = {}

-- Size: Depositary
gpw_wse_marketinformation_xdp_v6_8.depositary.size = 5

-- Display: Depositary
gpw_wse_marketinformation_xdp_v6_8.depositary.display = function(value)
  if value == "00001" then
    return "Depositary: Kdpw (00001)"
  end
  if value == "00000" then
    return "Depositary: No Depository Organization (00000)"
  end
  if value == '' then
    return "Depositary: Not Significant"
  end

  return "Depositary: Unknown("..value..")"
end

-- Dissect: Depositary
gpw_wse_marketinformation_xdp_v6_8.depositary.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.depositary.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.depositary.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.depositary, range, value, display)

  return offset + length, value
end

-- Dividend
gpw_wse_marketinformation_xdp_v6_8.dividend = {}

-- Size: Dividend
gpw_wse_marketinformation_xdp_v6_8.dividend.size = 2

-- Display: Dividend
gpw_wse_marketinformation_xdp_v6_8.dividend.display = function(value)
  return "Dividend: "..value
end

-- Dissect: Dividend
gpw_wse_marketinformation_xdp_v6_8.dividend.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.dividend.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.dividend.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.dividend, range, value, display)

  return offset + length, value
end

-- Dividend Rate
gpw_wse_marketinformation_xdp_v6_8.dividend_rate = {}

-- Size: Dividend Rate
gpw_wse_marketinformation_xdp_v6_8.dividend_rate.size = 4

-- Display: Dividend Rate
gpw_wse_marketinformation_xdp_v6_8.dividend_rate.display = function(value)
  return "Dividend Rate: "..value
end

-- Dissect: Dividend Rate
gpw_wse_marketinformation_xdp_v6_8.dividend_rate.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.dividend_rate.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.dividend_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.dividend_rate, range, value, display)

  return offset + length, value
end

-- Dividend Rate Scale Code
gpw_wse_marketinformation_xdp_v6_8.dividend_rate_scale_code = {}

-- Size: Dividend Rate Scale Code
gpw_wse_marketinformation_xdp_v6_8.dividend_rate_scale_code.size = 1

-- Display: Dividend Rate Scale Code
gpw_wse_marketinformation_xdp_v6_8.dividend_rate_scale_code.display = function(value)
  return "Dividend Rate Scale Code: "..value
end

-- Dissect: Dividend Rate Scale Code
gpw_wse_marketinformation_xdp_v6_8.dividend_rate_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.dividend_rate_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.dividend_rate_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.dividend_rate_scale_code, range, value, display)

  return offset + length, value
end

-- Eighth Reserved 1
gpw_wse_marketinformation_xdp_v6_8.eighth_reserved_1 = {}

-- Size: Eighth Reserved 1
gpw_wse_marketinformation_xdp_v6_8.eighth_reserved_1.size = 1

-- Display: Eighth Reserved 1
gpw_wse_marketinformation_xdp_v6_8.eighth_reserved_1.display = function(value)
  return "Eighth Reserved 1: "..value
end

-- Dissect: Eighth Reserved 1
gpw_wse_marketinformation_xdp_v6_8.eighth_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.eighth_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = gpw_wse_marketinformation_xdp_v6_8.eighth_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.eighth_reserved_1, range, value, display)

  return offset + length, value
end

-- End Trading
gpw_wse_marketinformation_xdp_v6_8.end_trading = {}

-- Size: End Trading
gpw_wse_marketinformation_xdp_v6_8.end_trading.size = 4

-- Display: End Trading
gpw_wse_marketinformation_xdp_v6_8.end_trading.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("End Trading: %04d-%02d-%02d", year, month, day)
end

-- Dissect: End Trading
gpw_wse_marketinformation_xdp_v6_8.end_trading.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.end_trading.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.end_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.end_trading, range, value, display)

  return offset + length, value
end

-- Event Date
gpw_wse_marketinformation_xdp_v6_8.event_date = {}

-- Size: Event Date
gpw_wse_marketinformation_xdp_v6_8.event_date.size = 8

-- Display: Event Date
gpw_wse_marketinformation_xdp_v6_8.event_date.display = function(value)
  if #value < 8 then
    return "Event Date: "..value
  end

  return "Event Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Event Date
gpw_wse_marketinformation_xdp_v6_8.event_date.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.event_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.event_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.event_date, range, value, display)

  return offset + length, value
end

-- Exercise Type
gpw_wse_marketinformation_xdp_v6_8.exercise_type = {}

-- Size: Exercise Type
gpw_wse_marketinformation_xdp_v6_8.exercise_type.size = 1

-- Display: Exercise Type
gpw_wse_marketinformation_xdp_v6_8.exercise_type.labels = {
  ["A"] = "Exercise Type: American (A)",
  ["E"] = "Exercise Type: European (E)",
}

gpw_wse_marketinformation_xdp_v6_8.exercise_type.display = function(value)
  return gpw_wse_marketinformation_xdp_v6_8.exercise_type.labels[value] or "Exercise Type: Unknown("..value..")"
end

-- Dissect: Exercise Type
gpw_wse_marketinformation_xdp_v6_8.exercise_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.exercise_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.exercise_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.exercise_type, range, value, display)

  return offset + length, value
end

-- Expiry Date
gpw_wse_marketinformation_xdp_v6_8.expiry_date = {}

-- Size: Expiry Date
gpw_wse_marketinformation_xdp_v6_8.expiry_date.size = 8

-- Display: Expiry Date
gpw_wse_marketinformation_xdp_v6_8.expiry_date.display = function(value)
  if #value < 8 then
    return "Expiry Date: "..value
  end

  return "Expiry Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Expiry Date
gpw_wse_marketinformation_xdp_v6_8.expiry_date.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.expiry_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.expiry_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.expiry_date, range, value, display)

  return offset + length, value
end

-- Fifth Reserved 1
gpw_wse_marketinformation_xdp_v6_8.fifth_reserved_1 = {}

-- Size: Fifth Reserved 1
gpw_wse_marketinformation_xdp_v6_8.fifth_reserved_1.size = 1

-- Display: Fifth Reserved 1
gpw_wse_marketinformation_xdp_v6_8.fifth_reserved_1.display = function(value)
  return "Fifth Reserved 1: "..value
end

-- Dissect: Fifth Reserved 1
gpw_wse_marketinformation_xdp_v6_8.fifth_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.fifth_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = gpw_wse_marketinformation_xdp_v6_8.fifth_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.fifth_reserved_1, range, value, display)

  return offset + length, value
end

-- Financial Market Code
gpw_wse_marketinformation_xdp_v6_8.financial_market_code = {}

-- Size: Financial Market Code
gpw_wse_marketinformation_xdp_v6_8.financial_market_code.size = 3

-- Display: Financial Market Code
gpw_wse_marketinformation_xdp_v6_8.financial_market_code.display = function(value)
  return "Financial Market Code: "..value
end

-- Dissect: Financial Market Code
gpw_wse_marketinformation_xdp_v6_8.financial_market_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.financial_market_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.financial_market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.financial_market_code, range, value, display)

  return offset + length, value
end

-- First Settlement Date
gpw_wse_marketinformation_xdp_v6_8.first_settlement_date = {}

-- Size: First Settlement Date
gpw_wse_marketinformation_xdp_v6_8.first_settlement_date.size = 8

-- Display: First Settlement Date
gpw_wse_marketinformation_xdp_v6_8.first_settlement_date.display = function(value)
  return "First Settlement Date: "..value
end

-- Dissect: First Settlement Date
gpw_wse_marketinformation_xdp_v6_8.first_settlement_date.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.first_settlement_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.first_settlement_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.first_settlement_date, range, value, display)

  return offset + length, value
end

-- Fourth Reserved 1
gpw_wse_marketinformation_xdp_v6_8.fourth_reserved_1 = {}

-- Size: Fourth Reserved 1
gpw_wse_marketinformation_xdp_v6_8.fourth_reserved_1.size = 1

-- Display: Fourth Reserved 1
gpw_wse_marketinformation_xdp_v6_8.fourth_reserved_1.display = function(value)
  return "Fourth Reserved 1: "..value
end

-- Dissect: Fourth Reserved 1
gpw_wse_marketinformation_xdp_v6_8.fourth_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.fourth_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = gpw_wse_marketinformation_xdp_v6_8.fourth_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.fourth_reserved_1, range, value, display)

  return offset + length, value
end

-- Fourth Reserved 4
gpw_wse_marketinformation_xdp_v6_8.fourth_reserved_4 = {}

-- Size: Fourth Reserved 4
gpw_wse_marketinformation_xdp_v6_8.fourth_reserved_4.size = 4

-- Display: Fourth Reserved 4
gpw_wse_marketinformation_xdp_v6_8.fourth_reserved_4.display = function(value)
  return "Fourth Reserved 4: "..value
end

-- Dissect: Fourth Reserved 4
gpw_wse_marketinformation_xdp_v6_8.fourth_reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.fourth_reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = gpw_wse_marketinformation_xdp_v6_8.fourth_reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.fourth_reserved_4, range, value, display)

  return offset + length, value
end

-- Gamma
gpw_wse_marketinformation_xdp_v6_8.gamma = {}

-- Size: Gamma
gpw_wse_marketinformation_xdp_v6_8.gamma.size = 4

-- Display: Gamma
gpw_wse_marketinformation_xdp_v6_8.gamma.display = function(value)
  return "Gamma: "..value
end

-- Dissect: Gamma
gpw_wse_marketinformation_xdp_v6_8.gamma.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.gamma.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.gamma.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.gamma, range, value, display)

  return offset + length, value
end

-- Gamma Scale Code
gpw_wse_marketinformation_xdp_v6_8.gamma_scale_code = {}

-- Size: Gamma Scale Code
gpw_wse_marketinformation_xdp_v6_8.gamma_scale_code.size = 1

-- Display: Gamma Scale Code
gpw_wse_marketinformation_xdp_v6_8.gamma_scale_code.display = function(value)
  return "Gamma Scale Code: "..value
end

-- Dissect: Gamma Scale Code
gpw_wse_marketinformation_xdp_v6_8.gamma_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.gamma_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.gamma_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.gamma_scale_code, range, value, display)

  return offset + length, value
end

-- Halt Reason
gpw_wse_marketinformation_xdp_v6_8.halt_reason = {}

-- Size: Halt Reason
gpw_wse_marketinformation_xdp_v6_8.halt_reason.size = 1

-- Display: Halt Reason
gpw_wse_marketinformation_xdp_v6_8.halt_reason.display = function(value)
  if value == "R" then
    return "Halt Reason: Halted No Liquidity Provider (R)"
  end
  if value == "C" then
    return "Halt Reason: Trade Price Outside Dynamic Collars (C)"
  end
  if value == "M" then
    return "Halt Reason: Manual Halting By Market Operations (M)"
  end
  if value == "W" then
    return "Halt Reason: Regulatory Halting Deactivating Barrier Reached (W)"
  end
  if value == "X" then
    return "Halt Reason: Regulatory Halting Underlying Halted (X)"
  end
  if value == "G" then
    return "Halt Reason: Regulatory Halting By Mo (G)"
  end
  if value == "S" then
    return "Halt Reason: Trade Price Outside Static Collars (S)"
  end
  if value == "A" then
    return "Halt Reason: Number Of Orders Alert (A)"
  end
  if value == " " then
    return "Halt Reason: Instrument Not Halted Or Information Not Available (<whitespace>)"
  end

  return "Halt Reason: Unknown("..value..")"
end

-- Dissect: Halt Reason
gpw_wse_marketinformation_xdp_v6_8.halt_reason.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.halt_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.halt_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.halt_reason, range, value, display)

  return offset + length, value
end

-- High Collar
gpw_wse_marketinformation_xdp_v6_8.high_collar = {}

-- Size: High Collar
gpw_wse_marketinformation_xdp_v6_8.high_collar.size = 4

-- Display: High Collar
gpw_wse_marketinformation_xdp_v6_8.high_collar.display = function(value)
  return "High Collar: "..value
end

-- Dissect: High Collar
gpw_wse_marketinformation_xdp_v6_8.high_collar.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.high_collar.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.high_collar.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.high_collar, range, value, display)

  return offset + length, value
end

-- High Scale Code
gpw_wse_marketinformation_xdp_v6_8.high_scale_code = {}

-- Size: High Scale Code
gpw_wse_marketinformation_xdp_v6_8.high_scale_code.size = 1

-- Display: High Scale Code
gpw_wse_marketinformation_xdp_v6_8.high_scale_code.display = function(value)
  return "High Scale Code: "..value
end

-- Dissect: High Scale Code
gpw_wse_marketinformation_xdp_v6_8.high_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.high_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.high_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.high_scale_code, range, value, display)

  return offset + length, value
end

-- Holding Period
gpw_wse_marketinformation_xdp_v6_8.holding_period = {}

-- Size: Holding Period
gpw_wse_marketinformation_xdp_v6_8.holding_period.size = 3

-- Display: Holding Period
gpw_wse_marketinformation_xdp_v6_8.holding_period.display = function(value)
  return "Holding Period: "..value
end

-- Dissect: Holding Period
gpw_wse_marketinformation_xdp_v6_8.holding_period.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.holding_period.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.holding_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.holding_period, range, value, display)

  return offset + length, value
end

-- Icb
gpw_wse_marketinformation_xdp_v6_8.icb = {}

-- Size: Icb
gpw_wse_marketinformation_xdp_v6_8.icb.size = 4

-- Display: Icb
gpw_wse_marketinformation_xdp_v6_8.icb.display = function(value)
  return "Icb: "..value
end

-- Dissect: Icb
gpw_wse_marketinformation_xdp_v6_8.icb.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.icb.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.icb.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.icb, range, value, display)

  return offset + length, value
end

-- Im Price
gpw_wse_marketinformation_xdp_v6_8.im_price = {}

-- Size: Im Price
gpw_wse_marketinformation_xdp_v6_8.im_price.size = 4

-- Display: Im Price
gpw_wse_marketinformation_xdp_v6_8.im_price.display = function(value)
  return "Im Price: "..value
end

-- Dissect: Im Price
gpw_wse_marketinformation_xdp_v6_8.im_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.im_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.im_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.im_price, range, value, display)

  return offset + length, value
end

-- Im Volume
gpw_wse_marketinformation_xdp_v6_8.im_volume = {}

-- Size: Im Volume
gpw_wse_marketinformation_xdp_v6_8.im_volume.size = 4

-- Display: Im Volume
gpw_wse_marketinformation_xdp_v6_8.im_volume.display = function(value)
  return "Im Volume: "..value
end

-- Dissect: Im Volume
gpw_wse_marketinformation_xdp_v6_8.im_volume.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.im_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.im_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.im_volume, range, value, display)

  return offset + length, value
end

-- Implied Volatility
gpw_wse_marketinformation_xdp_v6_8.implied_volatility = {}

-- Size: Implied Volatility
gpw_wse_marketinformation_xdp_v6_8.implied_volatility.size = 4

-- Display: Implied Volatility
gpw_wse_marketinformation_xdp_v6_8.implied_volatility.display = function(value)
  return "Implied Volatility: "..value
end

-- Dissect: Implied Volatility
gpw_wse_marketinformation_xdp_v6_8.implied_volatility.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.implied_volatility.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.implied_volatility.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.implied_volatility, range, value, display)

  return offset + length, value
end

-- Implied Volatility Scale Code
gpw_wse_marketinformation_xdp_v6_8.implied_volatility_scale_code = {}

-- Size: Implied Volatility Scale Code
gpw_wse_marketinformation_xdp_v6_8.implied_volatility_scale_code.size = 1

-- Display: Implied Volatility Scale Code
gpw_wse_marketinformation_xdp_v6_8.implied_volatility_scale_code.display = function(value)
  return "Implied Volatility Scale Code: "..value
end

-- Dissect: Implied Volatility Scale Code
gpw_wse_marketinformation_xdp_v6_8.implied_volatility_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.implied_volatility_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.implied_volatility_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.implied_volatility_scale_code, range, value, display)

  return offset + length, value
end

-- Index Set Of Var Price Tick
gpw_wse_marketinformation_xdp_v6_8.index_set_of_var_price_tick = {}

-- Size: Index Set Of Var Price Tick
gpw_wse_marketinformation_xdp_v6_8.index_set_of_var_price_tick.size = 2

-- Display: Index Set Of Var Price Tick
gpw_wse_marketinformation_xdp_v6_8.index_set_of_var_price_tick.display = function(value)
  return "Index Set Of Var Price Tick: "..value
end

-- Dissect: Index Set Of Var Price Tick
gpw_wse_marketinformation_xdp_v6_8.index_set_of_var_price_tick.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.index_set_of_var_price_tick.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.index_set_of_var_price_tick.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.index_set_of_var_price_tick, range, value, display)

  return offset + length, value
end

-- Indicator
gpw_wse_marketinformation_xdp_v6_8.indicator = {}

-- Size: Indicator
gpw_wse_marketinformation_xdp_v6_8.indicator.size = 1

-- Display: Indicator
gpw_wse_marketinformation_xdp_v6_8.indicator.display = function(value)
  return "Indicator: "..value
end

-- Dissect: Indicator
gpw_wse_marketinformation_xdp_v6_8.indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.indicator, range, value, display)

  return offset + length, value
end

-- Industry Code
gpw_wse_marketinformation_xdp_v6_8.industry_code = {}

-- Size: Industry Code
gpw_wse_marketinformation_xdp_v6_8.industry_code.size = 4

-- Display: Industry Code
gpw_wse_marketinformation_xdp_v6_8.industry_code.display = function(value)
  return "Industry Code: "..value
end

-- Dissect: Industry Code
gpw_wse_marketinformation_xdp_v6_8.industry_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.industry_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.industry_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.industry_code, range, value, display)

  return offset + length, value
end

-- Industry Text
gpw_wse_marketinformation_xdp_v6_8.industry_text = {}

-- Size: Industry Text
gpw_wse_marketinformation_xdp_v6_8.industry_text.size = 100

-- Display: Industry Text
gpw_wse_marketinformation_xdp_v6_8.industry_text.display = function(value)
  return "Industry Text: "..value
end

-- Dissect: Industry Text
gpw_wse_marketinformation_xdp_v6_8.industry_text.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.industry_text.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.industry_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.industry_text, range, value, display)

  return offset + length, value
end

-- Instrument Category
gpw_wse_marketinformation_xdp_v6_8.instrument_category = {}

-- Size: Instrument Category
gpw_wse_marketinformation_xdp_v6_8.instrument_category.size = 1

-- Display: Instrument Category
gpw_wse_marketinformation_xdp_v6_8.instrument_category.labels = {
  ["A"] = "Instrument Category: Stock (A)",
  ["O"] = "Instrument Category: Bond (O)",
  ["W"] = "Instrument Category: Warrant And Certificate (W)",
  ["T"] = "Instrument Category: Tracker (T)",
  ["I"] = "Instrument Category: Index (I)",
  ["F"] = "Instrument Category: Future (F)",
  ["X"] = "Instrument Category: Option (X)",
}

gpw_wse_marketinformation_xdp_v6_8.instrument_category.display = function(value)
  return gpw_wse_marketinformation_xdp_v6_8.instrument_category.labels[value] or "Instrument Category: Unknown("..value..")"
end

-- Dissect: Instrument Category
gpw_wse_marketinformation_xdp_v6_8.instrument_category.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.instrument_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.instrument_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.instrument_category, range, value, display)

  return offset + length, value
end

-- Instrument Code
gpw_wse_marketinformation_xdp_v6_8.instrument_code = {}

-- Size: Instrument Code
gpw_wse_marketinformation_xdp_v6_8.instrument_code.size = 12

-- Display: Instrument Code
gpw_wse_marketinformation_xdp_v6_8.instrument_code.display = function(value)
  return "Instrument Code: "..value
end

-- Dissect: Instrument Code
gpw_wse_marketinformation_xdp_v6_8.instrument_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.instrument_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.instrument_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.instrument_code, range, value, display)

  return offset + length, value
end

-- Instrument Group Code
gpw_wse_marketinformation_xdp_v6_8.instrument_group_code = {}

-- Size: Instrument Group Code
gpw_wse_marketinformation_xdp_v6_8.instrument_group_code.size = 3

-- Display: Instrument Group Code
gpw_wse_marketinformation_xdp_v6_8.instrument_group_code.display = function(value)
  return "Instrument Group Code: "..value
end

-- Dissect: Instrument Group Code
gpw_wse_marketinformation_xdp_v6_8.instrument_group_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.instrument_group_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.instrument_group_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.instrument_group_code, range, value, display)

  return offset + length, value
end

-- Instrument Group State
gpw_wse_marketinformation_xdp_v6_8.instrument_group_state = {}

-- Size: Instrument Group State
gpw_wse_marketinformation_xdp_v6_8.instrument_group_state.size = 1

-- Display: Instrument Group State
gpw_wse_marketinformation_xdp_v6_8.instrument_group_state.display = function(value)
  return "Instrument Group State: "..value
end

-- Dissect: Instrument Group State
gpw_wse_marketinformation_xdp_v6_8.instrument_group_state.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.instrument_group_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.instrument_group_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.instrument_group_state, range, value, display)

  return offset + length, value
end

-- Instrument Id
gpw_wse_marketinformation_xdp_v6_8.instrument_id = {}

-- Size: Instrument Id
gpw_wse_marketinformation_xdp_v6_8.instrument_id.size = 12

-- Display: Instrument Id
gpw_wse_marketinformation_xdp_v6_8.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
gpw_wse_marketinformation_xdp_v6_8.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.instrument_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Instrument Name
gpw_wse_marketinformation_xdp_v6_8.instrument_name = {}

-- Size: Instrument Name
gpw_wse_marketinformation_xdp_v6_8.instrument_name.size = 18

-- Display: Instrument Name
gpw_wse_marketinformation_xdp_v6_8.instrument_name.display = function(value)
  return "Instrument Name: "..value
end

-- Dissect: Instrument Name
gpw_wse_marketinformation_xdp_v6_8.instrument_name.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.instrument_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.instrument_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.instrument_name, range, value, display)

  return offset + length, value
end

-- Instrument State
gpw_wse_marketinformation_xdp_v6_8.instrument_state = {}

-- Size: Instrument State
gpw_wse_marketinformation_xdp_v6_8.instrument_state.size = 1

-- Display: Instrument State
gpw_wse_marketinformation_xdp_v6_8.instrument_state.display = function(value)
  if value == "H" then
    return "Instrument State: Halted (H)"
  end
  if value == "A" then
    return "Instrument State: Auction (A)"
  end
  if value == " " then
    return "Instrument State: Inherited Following The State Of The Class The Instrument Belongs To (<whitespace>)"
  end

  return "Instrument State: Unknown("..value..")"
end

-- Dissect: Instrument State
gpw_wse_marketinformation_xdp_v6_8.instrument_state.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.instrument_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.instrument_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.instrument_state, range, value, display)

  return offset + length, value
end

-- Instrument State Tcs
gpw_wse_marketinformation_xdp_v6_8.instrument_state_tcs = {}

-- Size: Instrument State Tcs
gpw_wse_marketinformation_xdp_v6_8.instrument_state_tcs.size = 1

-- Display: Instrument State Tcs
gpw_wse_marketinformation_xdp_v6_8.instrument_state_tcs.display = function(value)
  return "Instrument State Tcs: "..value
end

-- Dissect: Instrument State Tcs
gpw_wse_marketinformation_xdp_v6_8.instrument_state_tcs.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.instrument_state_tcs.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.instrument_state_tcs.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.instrument_state_tcs, range, value, display)

  return offset + length, value
end

-- Instrument Trading Status
gpw_wse_marketinformation_xdp_v6_8.instrument_trading_status = {}

-- Size: Instrument Trading Status
gpw_wse_marketinformation_xdp_v6_8.instrument_trading_status.size = 1

-- Display: Instrument Trading Status
gpw_wse_marketinformation_xdp_v6_8.instrument_trading_status.display = function(value)
  return "Instrument Trading Status: "..value
end

-- Dissect: Instrument Trading Status
gpw_wse_marketinformation_xdp_v6_8.instrument_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.instrument_trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.instrument_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.instrument_trading_status, range, value, display)

  return offset + length, value
end

-- Interest Rate
gpw_wse_marketinformation_xdp_v6_8.interest_rate = {}

-- Size: Interest Rate
gpw_wse_marketinformation_xdp_v6_8.interest_rate.size = 4

-- Display: Interest Rate
gpw_wse_marketinformation_xdp_v6_8.interest_rate.display = function(value)
  return "Interest Rate: "..value
end

-- Dissect: Interest Rate
gpw_wse_marketinformation_xdp_v6_8.interest_rate.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.interest_rate.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.interest_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.interest_rate, range, value, display)

  return offset + length, value
end

-- Interest Rate Scale Code
gpw_wse_marketinformation_xdp_v6_8.interest_rate_scale_code = {}

-- Size: Interest Rate Scale Code
gpw_wse_marketinformation_xdp_v6_8.interest_rate_scale_code.size = 1

-- Display: Interest Rate Scale Code
gpw_wse_marketinformation_xdp_v6_8.interest_rate_scale_code.display = function(value)
  return "Interest Rate Scale Code: "..value
end

-- Dissect: Interest Rate Scale Code
gpw_wse_marketinformation_xdp_v6_8.interest_rate_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.interest_rate_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.interest_rate_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.interest_rate_scale_code, range, value, display)

  return offset + length, value
end

-- Interim Dividend Right
gpw_wse_marketinformation_xdp_v6_8.interim_dividend_right = {}

-- Size: Interim Dividend Right
gpw_wse_marketinformation_xdp_v6_8.interim_dividend_right.size = 2

-- Display: Interim Dividend Right
gpw_wse_marketinformation_xdp_v6_8.interim_dividend_right.display = function(value)
  return "Interim Dividend Right: "..value
end

-- Dissect: Interim Dividend Right
gpw_wse_marketinformation_xdp_v6_8.interim_dividend_right.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.interim_dividend_right.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.interim_dividend_right.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.interim_dividend_right, range, value, display)

  return offset + length, value
end

-- Internal Msg Type
gpw_wse_marketinformation_xdp_v6_8.internal_msg_type = {}

-- Size: Internal Msg Type
gpw_wse_marketinformation_xdp_v6_8.internal_msg_type.size = 2

-- Display: Internal Msg Type
gpw_wse_marketinformation_xdp_v6_8.internal_msg_type.labels = {
  ["01"] = "Internal Msg Type: End Of The Session (01)",
  ["02"] = "Internal Msg Type: Treasury Bond Futures Data (02)",
  ["03"] = "Internal Msg Type: Kid (03)",
  ["04"] = "Internal Msg Type: Stressed Market Conditions (04)",
  ["05"] = "Internal Msg Type: Exceptional Market Conditions (05)",
}

gpw_wse_marketinformation_xdp_v6_8.internal_msg_type.display = function(value)
  return gpw_wse_marketinformation_xdp_v6_8.internal_msg_type.labels[value] or "Internal Msg Type: Unknown("..value..")"
end

-- Dissect: Internal Msg Type
gpw_wse_marketinformation_xdp_v6_8.internal_msg_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.internal_msg_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.internal_msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.internal_msg_type, range, value, display)

  return offset + length, value
end

-- Isin Code
gpw_wse_marketinformation_xdp_v6_8.isin_code = {}

-- Size: Isin Code
gpw_wse_marketinformation_xdp_v6_8.isin_code.size = 12

-- Display: Isin Code
gpw_wse_marketinformation_xdp_v6_8.isin_code.display = function(value)
  return "Isin Code: "..value
end

-- Dissect: Isin Code
gpw_wse_marketinformation_xdp_v6_8.isin_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.isin_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.isin_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.isin_code, range, value, display)

  return offset + length, value
end

-- Issuing Country Code
gpw_wse_marketinformation_xdp_v6_8.issuing_country_code = {}

-- Size: Issuing Country Code
gpw_wse_marketinformation_xdp_v6_8.issuing_country_code.size = 3

-- Display: Issuing Country Code
gpw_wse_marketinformation_xdp_v6_8.issuing_country_code.display = function(value)
  return "Issuing Country Code: "..value
end

-- Dissect: Issuing Country Code
gpw_wse_marketinformation_xdp_v6_8.issuing_country_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.issuing_country_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.issuing_country_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.issuing_country_code, range, value, display)

  return offset + length, value
end

-- Kid Issue Date
gpw_wse_marketinformation_xdp_v6_8.kid_issue_date = {}

-- Size: Kid Issue Date
gpw_wse_marketinformation_xdp_v6_8.kid_issue_date.size = 8

-- Display: Kid Issue Date
gpw_wse_marketinformation_xdp_v6_8.kid_issue_date.display = function(value)
  return "Kid Issue Date: "..value
end

-- Dissect: Kid Issue Date
gpw_wse_marketinformation_xdp_v6_8.kid_issue_date.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.kid_issue_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.kid_issue_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.kid_issue_date, range, value, display)

  return offset + length, value
end

-- Kid Version
gpw_wse_marketinformation_xdp_v6_8.kid_version = {}

-- Size: Kid Version
gpw_wse_marketinformation_xdp_v6_8.kid_version.size = 10

-- Display: Kid Version
gpw_wse_marketinformation_xdp_v6_8.kid_version.display = function(value)
  return "Kid Version: "..value
end

-- Dissect: Kid Version
gpw_wse_marketinformation_xdp_v6_8.kid_version.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.kid_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.kid_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.kid_version, range, value, display)

  return offset + length, value
end

-- Language Version
gpw_wse_marketinformation_xdp_v6_8.language_version = {}

-- Size: Language Version
gpw_wse_marketinformation_xdp_v6_8.language_version.size = 1

-- Display: Language Version
gpw_wse_marketinformation_xdp_v6_8.language_version.display = function(value)
  if value == "P" then
    return "Language Version: Polish Version Of The Message (P)"
  end
  if value == "E" then
    return "Language Version: English Version Of The Message (E)"
  end
  if value == " " then
    return "Language Version: Not Applicable (<whitespace>)"
  end

  return "Language Version: Unknown("..value..")"
end

-- Dissect: Language Version
gpw_wse_marketinformation_xdp_v6_8.language_version.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.language_version.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.language_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.language_version, range, value, display)

  return offset + length, value
end

-- Last Adj Price
gpw_wse_marketinformation_xdp_v6_8.last_adj_price = {}

-- Size: Last Adj Price
gpw_wse_marketinformation_xdp_v6_8.last_adj_price.size = 4

-- Display: Last Adj Price
gpw_wse_marketinformation_xdp_v6_8.last_adj_price.display = function(value)
  return "Last Adj Price: "..value
end

-- Dissect: Last Adj Price
gpw_wse_marketinformation_xdp_v6_8.last_adj_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.last_adj_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.last_adj_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.last_adj_price, range, value, display)

  return offset + length, value
end

-- Last Adj Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.last_adj_price_scale_code = {}

-- Size: Last Adj Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.last_adj_price_scale_code.size = 1

-- Display: Last Adj Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.last_adj_price_scale_code.display = function(value)
  return "Last Adj Price Scale Code: "..value
end

-- Dissect: Last Adj Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.last_adj_price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.last_adj_price_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.last_adj_price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.last_adj_price_scale_code, range, value, display)

  return offset + length, value
end

-- Last Trade Date
gpw_wse_marketinformation_xdp_v6_8.last_trade_date = {}

-- Size: Last Trade Date
gpw_wse_marketinformation_xdp_v6_8.last_trade_date.size = 4

-- Display: Last Trade Date
gpw_wse_marketinformation_xdp_v6_8.last_trade_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Last Trade Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Last Trade Date
gpw_wse_marketinformation_xdp_v6_8.last_trade_date.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.last_trade_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.last_trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.last_trade_date, range, value, display)

  return offset + length, value
end

-- Last Trade Price
gpw_wse_marketinformation_xdp_v6_8.last_trade_price = {}

-- Size: Last Trade Price
gpw_wse_marketinformation_xdp_v6_8.last_trade_price.size = 4

-- Display: Last Trade Price
gpw_wse_marketinformation_xdp_v6_8.last_trade_price.display = function(value)
  return "Last Trade Price: "..value
end

-- Dissect: Last Trade Price
gpw_wse_marketinformation_xdp_v6_8.last_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.last_trade_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.last_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.last_trade_price, range, value, display)

  return offset + length, value
end

-- Last Trade Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.last_trade_price_scale_code = {}

-- Size: Last Trade Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.last_trade_price_scale_code.size = 1

-- Display: Last Trade Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.last_trade_price_scale_code.display = function(value)
  return "Last Trade Price Scale Code: "..value
end

-- Dissect: Last Trade Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.last_trade_price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.last_trade_price_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.last_trade_price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.last_trade_price_scale_code, range, value, display)

  return offset + length, value
end

-- Liquidity Support Pge
gpw_wse_marketinformation_xdp_v6_8.liquidity_support_pge = {}

-- Size: Liquidity Support Pge
gpw_wse_marketinformation_xdp_v6_8.liquidity_support_pge.size = 2

-- Display: Liquidity Support Pge
gpw_wse_marketinformation_xdp_v6_8.liquidity_support_pge.display = function(value)
  return "Liquidity Support Pge: "..value
end

-- Dissect: Liquidity Support Pge
gpw_wse_marketinformation_xdp_v6_8.liquidity_support_pge.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.liquidity_support_pge.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.liquidity_support_pge.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.liquidity_support_pge, range, value, display)

  return offset + length, value
end

-- Local Name
gpw_wse_marketinformation_xdp_v6_8.local_name = {}

-- Size: Local Name
gpw_wse_marketinformation_xdp_v6_8.local_name.size = 30

-- Display: Local Name
gpw_wse_marketinformation_xdp_v6_8.local_name.display = function(value)
  return "Local Name: "..value
end

-- Dissect: Local Name
gpw_wse_marketinformation_xdp_v6_8.local_name.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.local_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.local_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.local_name, range, value, display)

  return offset + length, value
end

-- Lot Size
gpw_wse_marketinformation_xdp_v6_8.lot_size = {}

-- Size: Lot Size
gpw_wse_marketinformation_xdp_v6_8.lot_size.size = 8

-- Display: Lot Size
gpw_wse_marketinformation_xdp_v6_8.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
gpw_wse_marketinformation_xdp_v6_8.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.lot_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = gpw_wse_marketinformation_xdp_v6_8.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Lot Size Scale Code
gpw_wse_marketinformation_xdp_v6_8.lot_size_scale_code = {}

-- Size: Lot Size Scale Code
gpw_wse_marketinformation_xdp_v6_8.lot_size_scale_code.size = 1

-- Display: Lot Size Scale Code
gpw_wse_marketinformation_xdp_v6_8.lot_size_scale_code.display = function(value)
  return "Lot Size Scale Code: "..value
end

-- Dissect: Lot Size Scale Code
gpw_wse_marketinformation_xdp_v6_8.lot_size_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.lot_size_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.lot_size_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.lot_size_scale_code, range, value, display)

  return offset + length, value
end

-- Low Collar
gpw_wse_marketinformation_xdp_v6_8.low_collar = {}

-- Size: Low Collar
gpw_wse_marketinformation_xdp_v6_8.low_collar.size = 4

-- Display: Low Collar
gpw_wse_marketinformation_xdp_v6_8.low_collar.display = function(value)
  return "Low Collar: "..value
end

-- Dissect: Low Collar
gpw_wse_marketinformation_xdp_v6_8.low_collar.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.low_collar.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.low_collar.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.low_collar, range, value, display)

  return offset + length, value
end

-- Low Scale Code
gpw_wse_marketinformation_xdp_v6_8.low_scale_code = {}

-- Size: Low Scale Code
gpw_wse_marketinformation_xdp_v6_8.low_scale_code.size = 1

-- Display: Low Scale Code
gpw_wse_marketinformation_xdp_v6_8.low_scale_code.display = function(value)
  return "Low Scale Code: "..value
end

-- Dissect: Low Scale Code
gpw_wse_marketinformation_xdp_v6_8.low_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.low_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.low_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.low_scale_code, range, value, display)

  return offset + length, value
end

-- Lower Liquidity
gpw_wse_marketinformation_xdp_v6_8.lower_liquidity = {}

-- Size: Lower Liquidity
gpw_wse_marketinformation_xdp_v6_8.lower_liquidity.size = 1

-- Display: Lower Liquidity
gpw_wse_marketinformation_xdp_v6_8.lower_liquidity.display = function(value)
  return "Lower Liquidity: "..value
end

-- Dissect: Lower Liquidity
gpw_wse_marketinformation_xdp_v6_8.lower_liquidity.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.lower_liquidity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.lower_liquidity.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.lower_liquidity, range, value, display)

  return offset + length, value
end

-- Main Depositary
gpw_wse_marketinformation_xdp_v6_8.main_depositary = {}

-- Size: Main Depositary
gpw_wse_marketinformation_xdp_v6_8.main_depositary.size = 5

-- Display: Main Depositary
gpw_wse_marketinformation_xdp_v6_8.main_depositary.labels = {
  ["00001"] = "Main Depositary: Kdpw (00001)",
  ["00000"] = "Main Depositary: No Depository Organization (00000)",
}

gpw_wse_marketinformation_xdp_v6_8.main_depositary.display = function(value)
  return gpw_wse_marketinformation_xdp_v6_8.main_depositary.labels[value] or "Main Depositary: Unknown("..value..")"
end

-- Dissect: Main Depositary
gpw_wse_marketinformation_xdp_v6_8.main_depositary.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.main_depositary.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.main_depositary.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.main_depositary, range, value, display)

  return offset + length, value
end

-- Marker Pct Change Price
gpw_wse_marketinformation_xdp_v6_8.marker_pct_change_price = {}

-- Size: Marker Pct Change Price
gpw_wse_marketinformation_xdp_v6_8.marker_pct_change_price.size = 1

-- Display: Marker Pct Change Price
gpw_wse_marketinformation_xdp_v6_8.marker_pct_change_price.display = function(value)
  if value == "+" then
    return "Marker Pct Change Price: Increase (+)"
  end
  if value == "-" then
    return "Marker Pct Change Price: Decrease (-)"
  end
  if value == " " then
    return "Marker Pct Change Price: No Change (<whitespace>)"
  end

  return "Marker Pct Change Price: Unknown("..value..")"
end

-- Dissect: Marker Pct Change Price
gpw_wse_marketinformation_xdp_v6_8.marker_pct_change_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.marker_pct_change_price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.marker_pct_change_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.marker_pct_change_price, range, value, display)

  return offset + length, value
end

-- Market
gpw_wse_marketinformation_xdp_v6_8.market = {}

-- Size: Market
gpw_wse_marketinformation_xdp_v6_8.market.size = 1

-- Display: Market
gpw_wse_marketinformation_xdp_v6_8.market.labels = {
  ["P"] = "Market: Primary Market (P)",
  ["R"] = "Market: Parallel Market (R)",
  ["Z"] = "Market: New Connect Market Price Driven Market (Z)",
  ["C"] = "Market: New Connect Marketorder Driven Market (C)",
  ["O"] = "Market: Catalyst Regulated Market (O)",
  ["N"] = "Market: Catalyst Aso (N)",
}

gpw_wse_marketinformation_xdp_v6_8.market.display = function(value)
  return gpw_wse_marketinformation_xdp_v6_8.market.labels[value] or "Market: Unknown("..value..")"
end

-- Dissect: Market
gpw_wse_marketinformation_xdp_v6_8.market.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.market.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.market.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.market, range, value, display)

  return offset + length, value
end

-- Market Conditions Number
gpw_wse_marketinformation_xdp_v6_8.market_conditions_number = {}

-- Size: Market Conditions Number
gpw_wse_marketinformation_xdp_v6_8.market_conditions_number.size = 4

-- Display: Market Conditions Number
gpw_wse_marketinformation_xdp_v6_8.market_conditions_number.display = function(value)
  return "Market Conditions Number: "..value
end

-- Dissect: Market Conditions Number
gpw_wse_marketinformation_xdp_v6_8.market_conditions_number.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.market_conditions_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.market_conditions_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.market_conditions_number, range, value, display)

  return offset + length, value
end

-- Market Conditions State
gpw_wse_marketinformation_xdp_v6_8.market_conditions_state = {}

-- Size: Market Conditions State
gpw_wse_marketinformation_xdp_v6_8.market_conditions_state.size = 1

-- Display: Market Conditions State
gpw_wse_marketinformation_xdp_v6_8.market_conditions_state.display = function(value)
  return "Market Conditions State: "..value
end

-- Dissect: Market Conditions State
gpw_wse_marketinformation_xdp_v6_8.market_conditions_state.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.market_conditions_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.market_conditions_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.market_conditions_state, range, value, display)

  return offset + length, value
end

-- Market Feed Code
gpw_wse_marketinformation_xdp_v6_8.market_feed_code = {}

-- Size: Market Feed Code
gpw_wse_marketinformation_xdp_v6_8.market_feed_code.size = 2

-- Display: Market Feed Code
gpw_wse_marketinformation_xdp_v6_8.market_feed_code.display = function(value)
  return "Market Feed Code: "..value
end

-- Dissect: Market Feed Code
gpw_wse_marketinformation_xdp_v6_8.market_feed_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.market_feed_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.market_feed_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.market_feed_code, range, value, display)

  return offset + length, value
end

-- Market Indicator
gpw_wse_marketinformation_xdp_v6_8.market_indicator = {}

-- Size: Market Indicator
gpw_wse_marketinformation_xdp_v6_8.market_indicator.size = 1

-- Display: Market Indicator
gpw_wse_marketinformation_xdp_v6_8.market_indicator.labels = {
  [0] = "Market Indicator: Not Used (0)",
}

gpw_wse_marketinformation_xdp_v6_8.market_indicator.display = function(value)
  return gpw_wse_marketinformation_xdp_v6_8.market_indicator.labels[value] or "Market Indicator: Unknown("..value..")"
end

-- Dissect: Market Indicator
gpw_wse_marketinformation_xdp_v6_8.market_indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.market_indicator.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.market_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.market_indicator, range, value, display)

  return offset + length, value
end

-- Market Segment
gpw_wse_marketinformation_xdp_v6_8.market_segment = {}

-- Size: Market Segment
gpw_wse_marketinformation_xdp_v6_8.market_segment.size = 2

-- Display: Market Segment
gpw_wse_marketinformation_xdp_v6_8.market_segment.labels = {
  ["NM"] = "Market Segment: Cash Normal Market (NM)",
  ["OT"] = "Market Segment: Cash Block Trading (OT)",
  ["TO"] = "Market Segment: Tender Offer (TO)",
  ["IP"] = "Market Segment: Ipo (IP)",
  ["IN"] = "Market Segment: Investment (IN)",
  ["LE"] = "Market Segment: Leverage (LE)",
  ["DN"] = "Market Segment: Derivatives Normal Market (DN)",
  ["DB"] = "Market Segment: Derivatives Block Trading (DB)",
  ["IX"] = "Market Segment: Wse Indices (IX)",
  ["BR"] = "Market Segment: Retail Market (BR)",
  ["BW"] = "Market Segment: Wholesale Market (BW)",
  ["BT"] = "Market Segment: Bond Spot Tbs Poland (BT)",
  ["BA"] = "Market Segment: Bond Spot Ats (BA)",
}

gpw_wse_marketinformation_xdp_v6_8.market_segment.display = function(value)
  return gpw_wse_marketinformation_xdp_v6_8.market_segment.labels[value] or "Market Segment: Unknown("..value..")"
end

-- Dissect: Market Segment
gpw_wse_marketinformation_xdp_v6_8.market_segment.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.market_segment.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.market_segment.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.market_segment, range, value, display)

  return offset + length, value
end

-- Max Quantity
gpw_wse_marketinformation_xdp_v6_8.max_quantity = {}

-- Size: Max Quantity
gpw_wse_marketinformation_xdp_v6_8.max_quantity.size = 4

-- Display: Max Quantity
gpw_wse_marketinformation_xdp_v6_8.max_quantity.display = function(value)
  return "Max Quantity: "..value
end

-- Dissect: Max Quantity
gpw_wse_marketinformation_xdp_v6_8.max_quantity.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.max_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.max_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.max_quantity, range, value, display)

  return offset + length, value
end

-- Max Value
gpw_wse_marketinformation_xdp_v6_8.max_value = {}

-- Size: Max Value
gpw_wse_marketinformation_xdp_v6_8.max_value.size = 8

-- Display: Max Value
gpw_wse_marketinformation_xdp_v6_8.max_value.display = function(value)
  return "Max Value: "..value
end

-- Dissect: Max Value
gpw_wse_marketinformation_xdp_v6_8.max_value.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.max_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = gpw_wse_marketinformation_xdp_v6_8.max_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.max_value, range, value, display)

  return offset + length, value
end

-- Maximum Block Price
gpw_wse_marketinformation_xdp_v6_8.maximum_block_price = {}

-- Size: Maximum Block Price
gpw_wse_marketinformation_xdp_v6_8.maximum_block_price.size = 4

-- Display: Maximum Block Price
gpw_wse_marketinformation_xdp_v6_8.maximum_block_price.display = function(value)
  return "Maximum Block Price: "..value
end

-- Dissect: Maximum Block Price
gpw_wse_marketinformation_xdp_v6_8.maximum_block_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.maximum_block_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.maximum_block_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.maximum_block_price, range, value, display)

  return offset + length, value
end

-- Maximum Block Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.maximum_block_price_scale_code = {}

-- Size: Maximum Block Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.maximum_block_price_scale_code.size = 1

-- Display: Maximum Block Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.maximum_block_price_scale_code.display = function(value)
  return "Maximum Block Price Scale Code: "..value
end

-- Dissect: Maximum Block Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.maximum_block_price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.maximum_block_price_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.maximum_block_price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.maximum_block_price_scale_code, range, value, display)

  return offset + length, value
end

-- Maximum Price
gpw_wse_marketinformation_xdp_v6_8.maximum_price = {}

-- Size: Maximum Price
gpw_wse_marketinformation_xdp_v6_8.maximum_price.size = 4

-- Display: Maximum Price
gpw_wse_marketinformation_xdp_v6_8.maximum_price.display = function(value)
  return "Maximum Price: "..value
end

-- Dissect: Maximum Price
gpw_wse_marketinformation_xdp_v6_8.maximum_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.maximum_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.maximum_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.maximum_price, range, value, display)

  return offset + length, value
end

-- Maximum Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.maximum_price_scale_code = {}

-- Size: Maximum Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.maximum_price_scale_code.size = 1

-- Display: Maximum Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.maximum_price_scale_code.display = function(value)
  return "Maximum Price Scale Code: "..value
end

-- Dissect: Maximum Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.maximum_price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.maximum_price_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.maximum_price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.maximum_price_scale_code, range, value, display)

  return offset + length, value
end

-- Message Size
gpw_wse_marketinformation_xdp_v6_8.message_size = {}

-- Size: Message Size
gpw_wse_marketinformation_xdp_v6_8.message_size.size = 2

-- Display: Message Size
gpw_wse_marketinformation_xdp_v6_8.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
gpw_wse_marketinformation_xdp_v6_8.message_size.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.message_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
gpw_wse_marketinformation_xdp_v6_8.message_type = {}

-- Size: Message Type
gpw_wse_marketinformation_xdp_v6_8.message_type.size = 2

-- Display: Message Type
gpw_wse_marketinformation_xdp_v6_8.message_type.labels = {
  [516] = "Message Type: Class State Change Message (516)",
  [523] = "Message Type: Mail Message (523)",
  [537] = "Message Type: Collars Message (537)",
  [539] = "Message Type: Session Timetable Message (539)",
  [550] = "Message Type: Start Referential Message (550)",
  [551] = "Message Type: End Referential Message (551)",
  [556] = "Message Type: Referential Message (556)",
  [561] = "Message Type: Session Summary Message (561)",
  [505] = "Message Type: Instrument State Change Message (505)",
  [530] = "Message Type: Indicative Matching Price Message (530)",
  [560] = "Message Type: Short Sale Change Message (560)",
  [592] = "Message Type: Generic Wse Message (592)",
  [595] = "Message Type: Open Position Message (595)",
}

gpw_wse_marketinformation_xdp_v6_8.message_type.display = function(value)
  return gpw_wse_marketinformation_xdp_v6_8.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
gpw_wse_marketinformation_xdp_v6_8.message_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mic
gpw_wse_marketinformation_xdp_v6_8.mic = {}

-- Size: Mic
gpw_wse_marketinformation_xdp_v6_8.mic.size = 4

-- Display: Mic
gpw_wse_marketinformation_xdp_v6_8.mic.labels = {
  ["XWAR"] = "Mic: Warsaw Stock Exchange (XWAR)",
  ["XNCO"] = "Mic: Warsaw Stock Exchange Equities New Connect Mtf (XNCO)",
  ["WBON"] = "Mic: Warsaw Stock Exchange Bonds Catalyst Main Market (WBON)",
  ["WMTF"] = "Mic: Warsaw Stock Exchange Bonds Catalyst Mtf (WMTF)",
  ["WDER"] = "Mic: Warsaw Stock Exchange Financial Derivatives (WDER)",
  ["WETP"] = "Mic: Warsaw Stock Exchange Et Ps (WETP)",
  ["WIND"] = "Mic: Warsaw Stock Exchange Indices (WIND)",
  ["RPWC"] = "Mic: Warsaw Stock Exchange Bonds Catalyst Bondspot Main Market (RPWC)",
  ["BOSP"] = "Mic: Warsaw Stock Exchange Bonds Catalyst Bondspot Mtf (BOSP)",
  ["TBSP"] = "Mic: Warsaw Stock Exchange Bonds Bondspot Treasury Bond Market (TBSP)",
  ["WBCL"] = "Mic: Warsaw Stock Exchange Bonds Catalyst Listing (WBCL)",
  ["WIPO"] = "Mic: Warsaw Stock Exchange Other Than Xoff Or Xxxx (WIPO)",
  ["XOFF"] = "Mic: Off Exchange Transactions Listed Instruments (XOFF)",
  ["XXXX"] = "Mic: No Market Eg Unlisted (XXXX)",
}

gpw_wse_marketinformation_xdp_v6_8.mic.display = function(value)
  return gpw_wse_marketinformation_xdp_v6_8.mic.labels[value] or "Mic: Unknown("..value..")"
end

-- Dissect: Mic
gpw_wse_marketinformation_xdp_v6_8.mic.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.mic.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.mic.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.mic, range, value, display)

  return offset + length, value
end

-- Mic List
gpw_wse_marketinformation_xdp_v6_8.mic_list = {}

-- Size: Mic List
gpw_wse_marketinformation_xdp_v6_8.mic_list.size = 24

-- Display: Mic List
gpw_wse_marketinformation_xdp_v6_8.mic_list.display = function(value)
  return "Mic List: "..value
end

-- Dissect: Mic List
gpw_wse_marketinformation_xdp_v6_8.mic_list.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.mic_list.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.mic_list.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.mic_list, range, value, display)

  return offset + length, value
end

-- Min Quantity
gpw_wse_marketinformation_xdp_v6_8.min_quantity = {}

-- Size: Min Quantity
gpw_wse_marketinformation_xdp_v6_8.min_quantity.size = 4

-- Display: Min Quantity
gpw_wse_marketinformation_xdp_v6_8.min_quantity.display = function(value)
  return "Min Quantity: "..value
end

-- Dissect: Min Quantity
gpw_wse_marketinformation_xdp_v6_8.min_quantity.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.min_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.min_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.min_quantity, range, value, display)

  return offset + length, value
end

-- Minimum Block Price
gpw_wse_marketinformation_xdp_v6_8.minimum_block_price = {}

-- Size: Minimum Block Price
gpw_wse_marketinformation_xdp_v6_8.minimum_block_price.size = 4

-- Display: Minimum Block Price
gpw_wse_marketinformation_xdp_v6_8.minimum_block_price.display = function(value)
  return "Minimum Block Price: "..value
end

-- Dissect: Minimum Block Price
gpw_wse_marketinformation_xdp_v6_8.minimum_block_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.minimum_block_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.minimum_block_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.minimum_block_price, range, value, display)

  return offset + length, value
end

-- Minimum Block Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.minimum_block_price_scale_code = {}

-- Size: Minimum Block Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.minimum_block_price_scale_code.size = 1

-- Display: Minimum Block Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.minimum_block_price_scale_code.display = function(value)
  return "Minimum Block Price Scale Code: "..value
end

-- Dissect: Minimum Block Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.minimum_block_price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.minimum_block_price_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.minimum_block_price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.minimum_block_price_scale_code, range, value, display)

  return offset + length, value
end

-- Minimum Price
gpw_wse_marketinformation_xdp_v6_8.minimum_price = {}

-- Size: Minimum Price
gpw_wse_marketinformation_xdp_v6_8.minimum_price.size = 4

-- Display: Minimum Price
gpw_wse_marketinformation_xdp_v6_8.minimum_price.display = function(value)
  return "Minimum Price: "..value
end

-- Dissect: Minimum Price
gpw_wse_marketinformation_xdp_v6_8.minimum_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.minimum_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.minimum_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.minimum_price, range, value, display)

  return offset + length, value
end

-- Minimum Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.minimum_price_scale_code = {}

-- Size: Minimum Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.minimum_price_scale_code.size = 1

-- Display: Minimum Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.minimum_price_scale_code.display = function(value)
  return "Minimum Price Scale Code: "..value
end

-- Dissect: Minimum Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.minimum_price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.minimum_price_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.minimum_price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.minimum_price_scale_code, range, value, display)

  return offset + length, value
end

-- Mnemo
gpw_wse_marketinformation_xdp_v6_8.mnemo = {}

-- Size: Mnemo
gpw_wse_marketinformation_xdp_v6_8.mnemo.size = 5

-- Display: Mnemo
gpw_wse_marketinformation_xdp_v6_8.mnemo.display = function(value)
  return "Mnemo: "..value
end

-- Dissect: Mnemo
gpw_wse_marketinformation_xdp_v6_8.mnemo.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.mnemo.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.mnemo.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.mnemo, range, value, display)

  return offset + length, value
end

-- Msg Serial Num
gpw_wse_marketinformation_xdp_v6_8.msg_serial_num = {}

-- Size: Msg Serial Num
gpw_wse_marketinformation_xdp_v6_8.msg_serial_num.size = 1

-- Display: Msg Serial Num
gpw_wse_marketinformation_xdp_v6_8.msg_serial_num.display = function(value)
  return "Msg Serial Num: "..value
end

-- Dissect: Msg Serial Num
gpw_wse_marketinformation_xdp_v6_8.msg_serial_num.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.msg_serial_num.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.msg_serial_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.msg_serial_num, range, value, display)

  return offset + length, value
end

-- Msg Type Indicator
gpw_wse_marketinformation_xdp_v6_8.msg_type_indicator = {}

-- Size: Msg Type Indicator
gpw_wse_marketinformation_xdp_v6_8.msg_type_indicator.size = 1

-- Display: Msg Type Indicator
gpw_wse_marketinformation_xdp_v6_8.msg_type_indicator.display = function(value)
  if value == "F" then
    return "Msg Type Indicator: Functional (F)"
  end
  if value == "T" then
    return "Msg Type Indicator: Technical (T)"
  end
  if value == " " then
    return "Msg Type Indicator: Not Applicable (<whitespace>)"
  end

  return "Msg Type Indicator: Unknown("..value..")"
end

-- Dissect: Msg Type Indicator
gpw_wse_marketinformation_xdp_v6_8.msg_type_indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.msg_type_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.msg_type_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.msg_type_indicator, range, value, display)

  return offset + length, value
end

-- Multiplier
gpw_wse_marketinformation_xdp_v6_8.multiplier = {}

-- Size: Multiplier
gpw_wse_marketinformation_xdp_v6_8.multiplier.size = 4

-- Display: Multiplier
gpw_wse_marketinformation_xdp_v6_8.multiplier.display = function(value)
  return "Multiplier: "..value
end

-- Dissect: Multiplier
gpw_wse_marketinformation_xdp_v6_8.multiplier.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.multiplier.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.multiplier, range, value, display)

  return offset + length, value
end

-- Multiplier Scale Code
gpw_wse_marketinformation_xdp_v6_8.multiplier_scale_code = {}

-- Size: Multiplier Scale Code
gpw_wse_marketinformation_xdp_v6_8.multiplier_scale_code.size = 1

-- Display: Multiplier Scale Code
gpw_wse_marketinformation_xdp_v6_8.multiplier_scale_code.display = function(value)
  return "Multiplier Scale Code: "..value
end

-- Dissect: Multiplier Scale Code
gpw_wse_marketinformation_xdp_v6_8.multiplier_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.multiplier_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.multiplier_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.multiplier_scale_code, range, value, display)

  return offset + length, value
end

-- Ninth Reserved 1
gpw_wse_marketinformation_xdp_v6_8.ninth_reserved_1 = {}

-- Size: Ninth Reserved 1
gpw_wse_marketinformation_xdp_v6_8.ninth_reserved_1.size = 1

-- Display: Ninth Reserved 1
gpw_wse_marketinformation_xdp_v6_8.ninth_reserved_1.display = function(value)
  return "Ninth Reserved 1: "..value
end

-- Dissect: Ninth Reserved 1
gpw_wse_marketinformation_xdp_v6_8.ninth_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.ninth_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = gpw_wse_marketinformation_xdp_v6_8.ninth_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.ninth_reserved_1, range, value, display)

  return offset + length, value
end

-- Notional Amount
gpw_wse_marketinformation_xdp_v6_8.notional_amount = {}

-- Size: Notional Amount
gpw_wse_marketinformation_xdp_v6_8.notional_amount.size = 20

-- Display: Notional Amount
gpw_wse_marketinformation_xdp_v6_8.notional_amount.display = function(value)
  return "Notional Amount: "..value
end

-- Dissect: Notional Amount
gpw_wse_marketinformation_xdp_v6_8.notional_amount.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.notional_amount.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.notional_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.notional_amount, range, value, display)

  return offset + length, value
end

-- Notional Currency
gpw_wse_marketinformation_xdp_v6_8.notional_currency = {}

-- Size: Notional Currency
gpw_wse_marketinformation_xdp_v6_8.notional_currency.size = 3

-- Display: Notional Currency
gpw_wse_marketinformation_xdp_v6_8.notional_currency.display = function(value)
  return "Notional Currency: "..value
end

-- Dissect: Notional Currency
gpw_wse_marketinformation_xdp_v6_8.notional_currency.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.notional_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.notional_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.notional_currency, range, value, display)

  return offset + length, value
end

-- Number Instrument Circ
gpw_wse_marketinformation_xdp_v6_8.number_instrument_circ = {}

-- Size: Number Instrument Circ
gpw_wse_marketinformation_xdp_v6_8.number_instrument_circ.size = 8

-- Display: Number Instrument Circ
gpw_wse_marketinformation_xdp_v6_8.number_instrument_circ.display = function(value)
  return "Number Instrument Circ: "..value
end

-- Dissect: Number Instrument Circ
gpw_wse_marketinformation_xdp_v6_8.number_instrument_circ.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.number_instrument_circ.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = gpw_wse_marketinformation_xdp_v6_8.number_instrument_circ.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.number_instrument_circ, range, value, display)

  return offset + length, value
end

-- Number Msg Entries
gpw_wse_marketinformation_xdp_v6_8.number_msg_entries = {}

-- Size: Number Msg Entries
gpw_wse_marketinformation_xdp_v6_8.number_msg_entries.size = 1

-- Display: Number Msg Entries
gpw_wse_marketinformation_xdp_v6_8.number_msg_entries.display = function(value)
  return "Number Msg Entries: "..value
end

-- Dissect: Number Msg Entries
gpw_wse_marketinformation_xdp_v6_8.number_msg_entries.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.number_msg_entries.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.number_msg_entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.number_msg_entries, range, value, display)

  return offset + length, value
end

-- Number Of Instruments
gpw_wse_marketinformation_xdp_v6_8.number_of_instruments = {}

-- Size: Number Of Instruments
gpw_wse_marketinformation_xdp_v6_8.number_of_instruments.size = 4

-- Display: Number Of Instruments
gpw_wse_marketinformation_xdp_v6_8.number_of_instruments.display = function(value)
  return "Number Of Instruments: "..value
end

-- Dissect: Number Of Instruments
gpw_wse_marketinformation_xdp_v6_8.number_of_instruments.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.number_of_instruments.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.number_of_instruments.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.number_of_instruments, range, value, display)

  return offset + length, value
end

-- Open Position
gpw_wse_marketinformation_xdp_v6_8.open_position = {}

-- Size: Open Position
gpw_wse_marketinformation_xdp_v6_8.open_position.size = 4

-- Display: Open Position
gpw_wse_marketinformation_xdp_v6_8.open_position.display = function(value)
  return "Open Position: "..value
end

-- Dissect: Open Position
gpw_wse_marketinformation_xdp_v6_8.open_position.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.open_position.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.open_position.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.open_position, range, value, display)

  return offset + length, value
end

-- Open Position Indicator
gpw_wse_marketinformation_xdp_v6_8.open_position_indicator = {}

-- Size: Open Position Indicator
gpw_wse_marketinformation_xdp_v6_8.open_position_indicator.size = 1

-- Display: Open Position Indicator
gpw_wse_marketinformation_xdp_v6_8.open_position_indicator.labels = {
  ["0"] = "Open Position Indicator: Open Position During The Quotation Phase (0)",
  ["3"] = "Open Position Indicator: Open Position After The End Of The Trading Session (3)",
  ["5"] = "Open Position Indicator: Open Position Before The Start Of The Trading Session Verified Data From The Previous Day (5)",
}

gpw_wse_marketinformation_xdp_v6_8.open_position_indicator.display = function(value)
  return gpw_wse_marketinformation_xdp_v6_8.open_position_indicator.labels[value] or "Open Position Indicator: Unknown("..value..")"
end

-- Dissect: Open Position Indicator
gpw_wse_marketinformation_xdp_v6_8.open_position_indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.open_position_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.open_position_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.open_position_indicator, range, value, display)

  return offset + length, value
end

-- Open Positions
gpw_wse_marketinformation_xdp_v6_8.open_positions = {}

-- Size: Open Positions
gpw_wse_marketinformation_xdp_v6_8.open_positions.size = 4

-- Display: Open Positions
gpw_wse_marketinformation_xdp_v6_8.open_positions.display = function(value)
  return "Open Positions: "..value
end

-- Dissect: Open Positions
gpw_wse_marketinformation_xdp_v6_8.open_positions.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.open_positions.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.open_positions.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.open_positions, range, value, display)

  return offset + length, value
end

-- Opening Price
gpw_wse_marketinformation_xdp_v6_8.opening_price = {}

-- Size: Opening Price
gpw_wse_marketinformation_xdp_v6_8.opening_price.size = 4

-- Display: Opening Price
gpw_wse_marketinformation_xdp_v6_8.opening_price.display = function(value)
  return "Opening Price: "..value
end

-- Dissect: Opening Price
gpw_wse_marketinformation_xdp_v6_8.opening_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.opening_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.opening_price, range, value, display)

  return offset + length, value
end

-- Opening Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.opening_price_scale_code = {}

-- Size: Opening Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.opening_price_scale_code.size = 1

-- Display: Opening Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.opening_price_scale_code.display = function(value)
  return "Opening Price Scale Code: "..value
end

-- Dissect: Opening Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.opening_price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.opening_price_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.opening_price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.opening_price_scale_code, range, value, display)

  return offset + length, value
end

-- Option Type
gpw_wse_marketinformation_xdp_v6_8.option_type = {}

-- Size: Option Type
gpw_wse_marketinformation_xdp_v6_8.option_type.size = 1

-- Display: Option Type
gpw_wse_marketinformation_xdp_v6_8.option_type.labels = {
  ["C"] = "Option Type: Call (C)",
  ["P"] = "Option Type: Put (P)",
}

gpw_wse_marketinformation_xdp_v6_8.option_type.display = function(value)
  return gpw_wse_marketinformation_xdp_v6_8.option_type.labels[value] or "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
gpw_wse_marketinformation_xdp_v6_8.option_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.option_type, range, value, display)

  return offset + length, value
end

-- Order Entry Rejection
gpw_wse_marketinformation_xdp_v6_8.order_entry_rejection = {}

-- Size: Order Entry Rejection
gpw_wse_marketinformation_xdp_v6_8.order_entry_rejection.size = 1

-- Display: Order Entry Rejection
gpw_wse_marketinformation_xdp_v6_8.order_entry_rejection.display = function(value)
  if value == "N" then
    return "Order Entry Rejection: Order Entry Allowed (N)"
  end
  if value == "Y" then
    return "Order Entry Rejection: Order Entry Forbidden (Y)"
  end
  if value == 0 then
    return "Order Entry Rejection: Not Provided"
  end

  return "Order Entry Rejection: Unknown("..value..")"
end

-- Dissect: Order Entry Rejection
gpw_wse_marketinformation_xdp_v6_8.order_entry_rejection.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.order_entry_rejection.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = gpw_wse_marketinformation_xdp_v6_8.order_entry_rejection.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.order_entry_rejection, range, value, display)

  return offset + length, value
end

-- Packet Length
gpw_wse_marketinformation_xdp_v6_8.packet_length = {}

-- Size: Packet Length
gpw_wse_marketinformation_xdp_v6_8.packet_length.size = 2

-- Display: Packet Length
gpw_wse_marketinformation_xdp_v6_8.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
gpw_wse_marketinformation_xdp_v6_8.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Sequence Number
gpw_wse_marketinformation_xdp_v6_8.packet_sequence_number = {}

-- Size: Packet Sequence Number
gpw_wse_marketinformation_xdp_v6_8.packet_sequence_number.size = 4

-- Display: Packet Sequence Number
gpw_wse_marketinformation_xdp_v6_8.packet_sequence_number.display = function(value)
  return "Packet Sequence Number: "..value
end

-- Dissect: Packet Sequence Number
gpw_wse_marketinformation_xdp_v6_8.packet_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.packet_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.packet_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.packet_sequence_number, range, value, display)

  return offset + length, value
end

-- Packet Type
gpw_wse_marketinformation_xdp_v6_8.packet_type = {}

-- Size: Packet Type
gpw_wse_marketinformation_xdp_v6_8.packet_type.size = 2

-- Display: Packet Type
gpw_wse_marketinformation_xdp_v6_8.packet_type.labels = {
  [501] = "Packet Type: Market Data Messages (501)",
}

gpw_wse_marketinformation_xdp_v6_8.packet_type.display = function(value)
  return gpw_wse_marketinformation_xdp_v6_8.packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
gpw_wse_marketinformation_xdp_v6_8.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.packet_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Pct Change Price
gpw_wse_marketinformation_xdp_v6_8.pct_change_price = {}

-- Size: Pct Change Price
gpw_wse_marketinformation_xdp_v6_8.pct_change_price.size = 4

-- Display: Pct Change Price
gpw_wse_marketinformation_xdp_v6_8.pct_change_price.display = function(value)
  return "Pct Change Price: "..value
end

-- Dissect: Pct Change Price
gpw_wse_marketinformation_xdp_v6_8.pct_change_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.pct_change_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.pct_change_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.pct_change_price, range, value, display)

  return offset + length, value
end

-- Pct Change Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.pct_change_price_scale_code = {}

-- Size: Pct Change Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.pct_change_price_scale_code.size = 1

-- Display: Pct Change Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.pct_change_price_scale_code.display = function(value)
  return "Pct Change Price Scale Code: "..value
end

-- Dissect: Pct Change Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.pct_change_price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.pct_change_price_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.pct_change_price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.pct_change_price_scale_code, range, value, display)

  return offset + length, value
end

-- Period Indicator
gpw_wse_marketinformation_xdp_v6_8.period_indicator = {}

-- Size: Period Indicator
gpw_wse_marketinformation_xdp_v6_8.period_indicator.size = 1

-- Display: Period Indicator
gpw_wse_marketinformation_xdp_v6_8.period_indicator.display = function(value)
  return "Period Indicator: "..value
end

-- Dissect: Period Indicator
gpw_wse_marketinformation_xdp_v6_8.period_indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.period_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.period_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.period_indicator, range, value, display)

  return offset + length, value
end

-- Period Side
gpw_wse_marketinformation_xdp_v6_8.period_side = {}

-- Size: Period Side
gpw_wse_marketinformation_xdp_v6_8.period_side.size = 1

-- Display: Period Side
gpw_wse_marketinformation_xdp_v6_8.period_side.labels = {
  ["0"] = "Period Side: Not Applicable (0)",
  ["1"] = "Period Side: Bid Only (1)",
  ["2"] = "Period Side: Offer Only (2)",
}

gpw_wse_marketinformation_xdp_v6_8.period_side.display = function(value)
  return gpw_wse_marketinformation_xdp_v6_8.period_side.labels[value] or "Period Side: Unknown("..value..")"
end

-- Dissect: Period Side
gpw_wse_marketinformation_xdp_v6_8.period_side.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.period_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.period_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.period_side, range, value, display)

  return offset + length, value
end

-- Prev Day Capital Traded
gpw_wse_marketinformation_xdp_v6_8.prev_day_capital_traded = {}

-- Size: Prev Day Capital Traded
gpw_wse_marketinformation_xdp_v6_8.prev_day_capital_traded.size = 8

-- Display: Prev Day Capital Traded
gpw_wse_marketinformation_xdp_v6_8.prev_day_capital_traded.display = function(value)
  return "Prev Day Capital Traded: "..value
end

-- Dissect: Prev Day Capital Traded
gpw_wse_marketinformation_xdp_v6_8.prev_day_capital_traded.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.prev_day_capital_traded.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = gpw_wse_marketinformation_xdp_v6_8.prev_day_capital_traded.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.prev_day_capital_traded, range, value, display)

  return offset + length, value
end

-- Prev Day Capital Traded Scale Code
gpw_wse_marketinformation_xdp_v6_8.prev_day_capital_traded_scale_code = {}

-- Size: Prev Day Capital Traded Scale Code
gpw_wse_marketinformation_xdp_v6_8.prev_day_capital_traded_scale_code.size = 1

-- Display: Prev Day Capital Traded Scale Code
gpw_wse_marketinformation_xdp_v6_8.prev_day_capital_traded_scale_code.display = function(value)
  return "Prev Day Capital Traded Scale Code: "..value
end

-- Dissect: Prev Day Capital Traded Scale Code
gpw_wse_marketinformation_xdp_v6_8.prev_day_capital_traded_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.prev_day_capital_traded_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.prev_day_capital_traded_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.prev_day_capital_traded_scale_code, range, value, display)

  return offset + length, value
end

-- Prev Volume Traded
gpw_wse_marketinformation_xdp_v6_8.prev_volume_traded = {}

-- Size: Prev Volume Traded
gpw_wse_marketinformation_xdp_v6_8.prev_volume_traded.size = 4

-- Display: Prev Volume Traded
gpw_wse_marketinformation_xdp_v6_8.prev_volume_traded.display = function(value)
  return "Prev Volume Traded: "..value
end

-- Dissect: Prev Volume Traded
gpw_wse_marketinformation_xdp_v6_8.prev_volume_traded.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.prev_volume_traded.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.prev_volume_traded.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.prev_volume_traded, range, value, display)

  return offset + length, value
end

-- Price Notation
gpw_wse_marketinformation_xdp_v6_8.price_notation = {}

-- Size: Price Notation
gpw_wse_marketinformation_xdp_v6_8.price_notation.size = 4

-- Display: Price Notation
gpw_wse_marketinformation_xdp_v6_8.price_notation.display = function(value)
  return "Price Notation: "..value
end

-- Dissect: Price Notation
gpw_wse_marketinformation_xdp_v6_8.price_notation.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.price_notation.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.price_notation.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.price_notation, range, value, display)

  return offset + length, value
end

-- Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.price_scale_code = {}

-- Size: Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.price_scale_code.size = 1

-- Display: Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.price_scale_code.display = function(value)
  return "Price Scale Code: "..value
end

-- Dissect: Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.price_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Priip Kid Url
gpw_wse_marketinformation_xdp_v6_8.priip_kid_url = {}

-- Size: Priip Kid Url
gpw_wse_marketinformation_xdp_v6_8.priip_kid_url.size = 182

-- Display: Priip Kid Url
gpw_wse_marketinformation_xdp_v6_8.priip_kid_url.display = function(value)
  return "Priip Kid Url: "..value
end

-- Dissect: Priip Kid Url
gpw_wse_marketinformation_xdp_v6_8.priip_kid_url.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.priip_kid_url.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.priip_kid_url.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.priip_kid_url, range, value, display)

  return offset + length, value
end

-- Prog Opening Time
gpw_wse_marketinformation_xdp_v6_8.prog_opening_time = {}

-- Size: Prog Opening Time
gpw_wse_marketinformation_xdp_v6_8.prog_opening_time.size = 6

-- Display: Prog Opening Time
gpw_wse_marketinformation_xdp_v6_8.prog_opening_time.display = function(value)
  if #value < 6 then
    return "Prog Opening Time: "..value
  end

  return "Prog Opening Time: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Prog Opening Time
gpw_wse_marketinformation_xdp_v6_8.prog_opening_time.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.prog_opening_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.prog_opening_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.prog_opening_time, range, value, display)

  return offset + length, value
end

-- Quotation System
gpw_wse_marketinformation_xdp_v6_8.quotation_system = {}

-- Size: Quotation System
gpw_wse_marketinformation_xdp_v6_8.quotation_system.size = 2

-- Display: Quotation System
gpw_wse_marketinformation_xdp_v6_8.quotation_system.labels = {
  ["81"] = "Quotation System: Single Price Quotation System With A Single Fixing (81)",
  ["82"] = "Quotation System: Continuous Trading (82)",
  ["83"] = "Quotation System: Single Price Quotation System With Two Fixings (83)",
}

gpw_wse_marketinformation_xdp_v6_8.quotation_system.display = function(value)
  return gpw_wse_marketinformation_xdp_v6_8.quotation_system.labels[value] or "Quotation System: Unknown("..value..")"
end

-- Dissect: Quotation System
gpw_wse_marketinformation_xdp_v6_8.quotation_system.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.quotation_system.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.quotation_system.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.quotation_system, range, value, display)

  return offset + length, value
end

-- Reference Price
gpw_wse_marketinformation_xdp_v6_8.reference_price = {}

-- Size: Reference Price
gpw_wse_marketinformation_xdp_v6_8.reference_price.size = 4

-- Display: Reference Price
gpw_wse_marketinformation_xdp_v6_8.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Dissect: Reference Price
gpw_wse_marketinformation_xdp_v6_8.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.reference_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Reference Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.reference_price_scale_code = {}

-- Size: Reference Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.reference_price_scale_code.size = 1

-- Display: Reference Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.reference_price_scale_code.display = function(value)
  return "Reference Price Scale Code: "..value
end

-- Dissect: Reference Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.reference_price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.reference_price_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.reference_price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.reference_price_scale_code, range, value, display)

  return offset + length, value
end

-- Repo Indicator
gpw_wse_marketinformation_xdp_v6_8.repo_indicator = {}

-- Size: Repo Indicator
gpw_wse_marketinformation_xdp_v6_8.repo_indicator.size = 1

-- Display: Repo Indicator
gpw_wse_marketinformation_xdp_v6_8.repo_indicator.display = function(value)
  return "Repo Indicator: "..value
end

-- Dissect: Repo Indicator
gpw_wse_marketinformation_xdp_v6_8.repo_indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.repo_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.repo_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.repo_indicator, range, value, display)

  return offset + length, value
end

-- Reserved 1
gpw_wse_marketinformation_xdp_v6_8.reserved_1 = {}

-- Size: Reserved 1
gpw_wse_marketinformation_xdp_v6_8.reserved_1.size = 1

-- Display: Reserved 1
gpw_wse_marketinformation_xdp_v6_8.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
gpw_wse_marketinformation_xdp_v6_8.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = gpw_wse_marketinformation_xdp_v6_8.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
gpw_wse_marketinformation_xdp_v6_8.reserved_2 = {}

-- Size: Reserved 2
gpw_wse_marketinformation_xdp_v6_8.reserved_2.size = 2

-- Display: Reserved 2
gpw_wse_marketinformation_xdp_v6_8.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
gpw_wse_marketinformation_xdp_v6_8.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = gpw_wse_marketinformation_xdp_v6_8.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 203
gpw_wse_marketinformation_xdp_v6_8.reserved_203 = {}

-- Size: Reserved 203
gpw_wse_marketinformation_xdp_v6_8.reserved_203.size = 203

-- Display: Reserved 203
gpw_wse_marketinformation_xdp_v6_8.reserved_203.display = function(value)
  return "Reserved 203: "..value
end

-- Dissect: Reserved 203
gpw_wse_marketinformation_xdp_v6_8.reserved_203.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.reserved_203.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = gpw_wse_marketinformation_xdp_v6_8.reserved_203.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.reserved_203, range, value, display)

  return offset + length, value
end

-- Reserved 3
gpw_wse_marketinformation_xdp_v6_8.reserved_3 = {}

-- Size: Reserved 3
gpw_wse_marketinformation_xdp_v6_8.reserved_3.size = 3

-- Display: Reserved 3
gpw_wse_marketinformation_xdp_v6_8.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
gpw_wse_marketinformation_xdp_v6_8.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.reserved_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = gpw_wse_marketinformation_xdp_v6_8.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Reserved 4
gpw_wse_marketinformation_xdp_v6_8.reserved_4 = {}

-- Size: Reserved 4
gpw_wse_marketinformation_xdp_v6_8.reserved_4.size = 4

-- Display: Reserved 4
gpw_wse_marketinformation_xdp_v6_8.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
gpw_wse_marketinformation_xdp_v6_8.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = gpw_wse_marketinformation_xdp_v6_8.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Reserved 59
gpw_wse_marketinformation_xdp_v6_8.reserved_59 = {}

-- Size: Reserved 59
gpw_wse_marketinformation_xdp_v6_8.reserved_59.size = 59

-- Display: Reserved 59
gpw_wse_marketinformation_xdp_v6_8.reserved_59.display = function(value)
  return "Reserved 59: "..value
end

-- Dissect: Reserved 59
gpw_wse_marketinformation_xdp_v6_8.reserved_59.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.reserved_59.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = gpw_wse_marketinformation_xdp_v6_8.reserved_59.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.reserved_59, range, value, display)

  return offset + length, value
end

-- Rho
gpw_wse_marketinformation_xdp_v6_8.rho = {}

-- Size: Rho
gpw_wse_marketinformation_xdp_v6_8.rho.size = 4

-- Display: Rho
gpw_wse_marketinformation_xdp_v6_8.rho.display = function(value)
  return "Rho: "..value
end

-- Dissect: Rho
gpw_wse_marketinformation_xdp_v6_8.rho.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.rho.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.rho.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.rho, range, value, display)

  return offset + length, value
end

-- Rho Scale Code
gpw_wse_marketinformation_xdp_v6_8.rho_scale_code = {}

-- Size: Rho Scale Code
gpw_wse_marketinformation_xdp_v6_8.rho_scale_code.size = 1

-- Display: Rho Scale Code
gpw_wse_marketinformation_xdp_v6_8.rho_scale_code.display = function(value)
  return "Rho Scale Code: "..value
end

-- Dissect: Rho Scale Code
gpw_wse_marketinformation_xdp_v6_8.rho_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.rho_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.rho_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.rho_scale_code, range, value, display)

  return offset + length, value
end

-- Scope
gpw_wse_marketinformation_xdp_v6_8.scope = {}

-- Size: Scope
gpw_wse_marketinformation_xdp_v6_8.scope.size = 1

-- Display: Scope
gpw_wse_marketinformation_xdp_v6_8.scope.display = function(value)
  return "Scope: "..value
end

-- Dissect: Scope
gpw_wse_marketinformation_xdp_v6_8.scope.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.scope.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.scope, range, value, display)

  return offset + length, value
end

-- Second Reserved 1
gpw_wse_marketinformation_xdp_v6_8.second_reserved_1 = {}

-- Size: Second Reserved 1
gpw_wse_marketinformation_xdp_v6_8.second_reserved_1.size = 1

-- Display: Second Reserved 1
gpw_wse_marketinformation_xdp_v6_8.second_reserved_1.display = function(value)
  return "Second Reserved 1: "..value
end

-- Dissect: Second Reserved 1
gpw_wse_marketinformation_xdp_v6_8.second_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.second_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = gpw_wse_marketinformation_xdp_v6_8.second_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.second_reserved_1, range, value, display)

  return offset + length, value
end

-- Second Reserved 2
gpw_wse_marketinformation_xdp_v6_8.second_reserved_2 = {}

-- Size: Second Reserved 2
gpw_wse_marketinformation_xdp_v6_8.second_reserved_2.size = 2

-- Display: Second Reserved 2
gpw_wse_marketinformation_xdp_v6_8.second_reserved_2.display = function(value)
  return "Second Reserved 2: "..value
end

-- Dissect: Second Reserved 2
gpw_wse_marketinformation_xdp_v6_8.second_reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.second_reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = gpw_wse_marketinformation_xdp_v6_8.second_reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.second_reserved_2, range, value, display)

  return offset + length, value
end

-- Second Reserved 4
gpw_wse_marketinformation_xdp_v6_8.second_reserved_4 = {}

-- Size: Second Reserved 4
gpw_wse_marketinformation_xdp_v6_8.second_reserved_4.size = 4

-- Display: Second Reserved 4
gpw_wse_marketinformation_xdp_v6_8.second_reserved_4.display = function(value)
  return "Second Reserved 4: "..value
end

-- Dissect: Second Reserved 4
gpw_wse_marketinformation_xdp_v6_8.second_reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.second_reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = gpw_wse_marketinformation_xdp_v6_8.second_reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.second_reserved_4, range, value, display)

  return offset + length, value
end

-- Sector
gpw_wse_marketinformation_xdp_v6_8.sector = {}

-- Size: Sector
gpw_wse_marketinformation_xdp_v6_8.sector.size = 3

-- Display: Sector
gpw_wse_marketinformation_xdp_v6_8.sector.labels = {
  ["111"] = "Sector: Commercial Banks (111)",
  ["112"] = "Sector: Cooperative Banks (112)",
  ["113"] = "Sector: Mortgage Banks (113)",
  ["114"] = "Sector: Government And International Banks (114)",
  ["119"] = "Sector: Banks Other (119)",
  ["121"] = "Sector: Insurance Offices (121)",
  ["129"] = "Sector: Insurance Other (129)",
  ["131"] = "Sector: Exchanges And Brokers (131)",
  ["132"] = "Sector: Asset Management (132)",
  ["139"] = "Sector: Capital Market Other (139)",
  ["141"] = "Sector: Real Estate Sales (141)",
  ["142"] = "Sector: Real Estate Rent (142)",
  ["149"] = "Sector: Real Estate Other (149)",
  ["150"] = "Sector: Leasing Factoring (150)",
  ["160"] = "Sector: Mortgage (160)",
  ["170"] = "Sector: Financial Services (170)",
  ["180"] = "Sector: Investment (180)",
  ["190"] = "Sector: Financials Other (190)",
  ["211"] = "Sector: Oil Gas Exploration And Production (211)",
  ["212"] = "Sector: Oil Gas Refining And Transportation (212)",
  ["219"] = "Sector: Oil Gas Other (219)",
  ["221"] = "Sector: Power Engineering (221)",
  ["222"] = "Sector: Ecoenergy (222)",
  ["229"] = "Sector: Energy Other (229)",
  ["230"] = "Sector: Water Multiutilities (230)",
  ["290"] = "Sector: Oil Energy Other (290)",
  ["311"] = "Sector: Basic Chemicals (311)",
  ["312"] = "Sector: Specialty Chemicals (312)",
  ["319"] = "Sector: Chemicals Other (319)",
  ["321"] = "Sector: Carbon Mining (321)",
  ["322"] = "Sector: Metals Mining (322)",
  ["329"] = "Sector: Mining Other (329)",
  ["331"] = "Sector: Steel Metallurgy (331)",
  ["332"] = "Sector: Nonferrous Metallurgy (332)",
  ["339"] = "Sector: Metallurgy Other (339)",
  ["340"] = "Sector: Basic Materials (340)",
  ["351"] = "Sector: Plastic (351)",
  ["352"] = "Sector: Rubber (352)",
  ["359"] = "Sector: Rubber Plastic Other (359)",
  ["361"] = "Sector: Forestry (361)",
  ["362"] = "Sector: Paper Packing (362)",
  ["369"] = "Sector: Paper Forestry Other (369)",
  ["370"] = "Sector: Recycling (370)",
  ["390"] = "Sector: Chemicals Materials Other (390)",
  ["411"] = "Sector: General Construction (411)",
  ["412"] = "Sector: Industry Construction (412)",
  ["413"] = "Sector: Engineering (413)",
  ["414"] = "Sector: Construction Materials (414)",
  ["415"] = "Sector: Building Products (415)",
  ["419"] = "Sector: Construction Other (419)",
  ["421"] = "Sector: Electro Machinery (421)",
  ["422"] = "Sector: Industrial Machinery (422)",
  ["423"] = "Sector: Metals Products (423)",
  ["424"] = "Sector: Farm Heavy Trucks (424)",
  ["429"] = "Sector: Machinery Other (429)",
  ["431"] = "Sector: Transport (431)",
  ["432"] = "Sector: Logistics (432)",
  ["439"] = "Sector: Transportation Other (439)",
  ["441"] = "Sector: Electro Products (441)",
  ["442"] = "Sector: Steel Products (442)",
  ["443"] = "Sector: Chemical Products (443)",
  ["449"] = "Sector: Industrial Supplies Other (449)",
  ["450"] = "Sector: Industry Services (450)",
  ["490"] = "Sector: Industrials Other (490)",
  ["511"] = "Sector: Food (511)",
  ["512"] = "Sector: Drinks (512)",
  ["513"] = "Sector: Agricultural Products And Fishing (513)",
  ["519"] = "Sector: Food Drinks Other (519)",
  ["521"] = "Sector: Clothes Footwear (521)",
  ["522"] = "Sector: Cosmetics Household Chemicals (522)",
  ["529"] = "Sector: Clothes Cosmetics Other (529)",
  ["531"] = "Sector: Household Durables (531)",
  ["532"] = "Sector: Electrical Electronic Equipment (532)",
  ["539"] = "Sector: Consumer Durables Other (539)",
  ["541"] = "Sector: Auto Parts (541)",
  ["549"] = "Sector: Automobiles Parts Other (549)",
  ["590"] = "Sector: Consumer Goods Other (590)",
  ["611"] = "Sector: Consumer Staples (611)",
  ["612"] = "Sector: Computers Electronics (612)",
  ["619"] = "Sector: Wholesale Trade Other (619)",
  ["621"] = "Sector: Consumer Discretionary (621)",
  ["622"] = "Sector: Consumer Electronics (622)",
  ["629"] = "Sector: General Retailers Other (629)",
  ["631"] = "Sector: Hotels Restaurants (631)",
  ["632"] = "Sector: Travel Agencies (632)",
  ["633"] = "Sector: Sports Clubs (633)",
  ["634"] = "Sector: Sport Leisure (634)",
  ["639"] = "Sector: Leisure Facilities Other (639)",
  ["641"] = "Sector: Radio Tv (641)",
  ["642"] = "Sector: Publishing (642)",
  ["643"] = "Sector: Advertising (643)",
  ["644"] = "Sector: Internet (644)",
  ["649"] = "Sector: Media Other (649)",
  ["650"] = "Sector: Video Games (650)",
  ["660"] = "Sector: E Trade (660)",
  ["690"] = "Sector: Trade Services Other (690)",
  ["710"] = "Sector: Health Care Services (710)",
  ["720"] = "Sector: Health Care Equipment (720)",
  ["730"] = "Sector: Pharmaceuticals (730)",
  ["740"] = "Sector: Pharmaceuticals Wholesales (740)",
  ["750"] = "Sector: Biotechnology (750)",
  ["790"] = "Sector: Health Care Other (790)",
  ["810"] = "Sector: Telecom (810)",
  ["821"] = "Sector: Software (821)",
  ["822"] = "Sector: It Systems (822)",
  ["823"] = "Sector: Hardware (823)",
  ["829"] = "Sector: It Other (829)",
  ["830"] = "Sector: New Technology (830)",
  ["890"] = "Sector: Technology Other (890)",
  ["910"] = "Sector: State (910)",
  ["921"] = "Sector: Voivodship (921)",
  ["922"] = "Sector: County (922)",
  ["923"] = "Sector: County State (923)",
  ["924"] = "Sector: Community (924)",
  ["929"] = "Sector: Local Government Other (929)",
  ["930"] = "Sector: Central Banks (930)",
  ["990"] = "Sector: Government Other (990)",
  ["000"] = "Sector: Non Classified (000)",
}

gpw_wse_marketinformation_xdp_v6_8.sector.display = function(value)
  return gpw_wse_marketinformation_xdp_v6_8.sector.labels[value] or "Sector: Unknown("..value..")"
end

-- Dissect: Sector
gpw_wse_marketinformation_xdp_v6_8.sector.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.sector.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.sector.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.sector, range, value, display)

  return offset + length, value
end

-- Segment
gpw_wse_marketinformation_xdp_v6_8.segment = {}

-- Size: Segment
gpw_wse_marketinformation_xdp_v6_8.segment.size = 2

-- Display: Segment
gpw_wse_marketinformation_xdp_v6_8.segment.labels = {
  ["LA"] = "Segment: Segment Alerts List (LA)",
  ["NF"] = "Segment: Segment New Connect Focus (NF)",
  ["NB"] = "Segment: Segment New Connect Base (NB)",
  ["NA"] = "Segment: Segment New Connect Alert (NA)",
}

gpw_wse_marketinformation_xdp_v6_8.segment.display = function(value)
  return gpw_wse_marketinformation_xdp_v6_8.segment.labels[value] or "Segment: Unknown("..value..")"
end

-- Dissect: Segment
gpw_wse_marketinformation_xdp_v6_8.segment.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.segment.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.segment.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.segment, range, value, display)

  return offset + length, value
end

-- Send Time
gpw_wse_marketinformation_xdp_v6_8.send_time = {}

-- Size: Send Time
gpw_wse_marketinformation_xdp_v6_8.send_time.size = 4

-- Display: Send Time
gpw_wse_marketinformation_xdp_v6_8.send_time.display = function(value)
  return "Send Time: "..value
end

-- Dissect: Send Time
gpw_wse_marketinformation_xdp_v6_8.send_time.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.send_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.send_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.send_time, range, value, display)

  return offset + length, value
end

-- Service Id
gpw_wse_marketinformation_xdp_v6_8.service_id = {}

-- Size: Service Id
gpw_wse_marketinformation_xdp_v6_8.service_id.size = 2

-- Display: Service Id
gpw_wse_marketinformation_xdp_v6_8.service_id.display = function(value)
  return "Service Id: "..value
end

-- Dissect: Service Id
gpw_wse_marketinformation_xdp_v6_8.service_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.service_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.service_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.service_id, range, value, display)

  return offset + length, value
end

-- Session Type
gpw_wse_marketinformation_xdp_v6_8.session_type = {}

-- Size: Session Type
gpw_wse_marketinformation_xdp_v6_8.session_type.size = 1

-- Display: Session Type
gpw_wse_marketinformation_xdp_v6_8.session_type.labels = {
  ["E"] = "Session Type: Early Not Used (E)",
  ["C"] = "Session Type: Core Session (C)",
  ["L"] = "Session Type: Late Not Used (L)",
}

gpw_wse_marketinformation_xdp_v6_8.session_type.display = function(value)
  return gpw_wse_marketinformation_xdp_v6_8.session_type.labels[value] or "Session Type: Unknown("..value..")"
end

-- Dissect: Session Type
gpw_wse_marketinformation_xdp_v6_8.session_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.session_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.session_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.session_type, range, value, display)

  return offset + length, value
end

-- Settlement Delay
gpw_wse_marketinformation_xdp_v6_8.settlement_delay = {}

-- Size: Settlement Delay
gpw_wse_marketinformation_xdp_v6_8.settlement_delay.size = 2

-- Display: Settlement Delay
gpw_wse_marketinformation_xdp_v6_8.settlement_delay.display = function(value)
  return "Settlement Delay: "..value
end

-- Dissect: Settlement Delay
gpw_wse_marketinformation_xdp_v6_8.settlement_delay.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.settlement_delay.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.settlement_delay.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.settlement_delay, range, value, display)

  return offset + length, value
end

-- Settlement Price
gpw_wse_marketinformation_xdp_v6_8.settlement_price = {}

-- Size: Settlement Price
gpw_wse_marketinformation_xdp_v6_8.settlement_price.size = 4

-- Display: Settlement Price
gpw_wse_marketinformation_xdp_v6_8.settlement_price.display = function(value)
  return "Settlement Price: "..value
end

-- Dissect: Settlement Price
gpw_wse_marketinformation_xdp_v6_8.settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.settlement_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Settlement Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.settlement_price_scale_code = {}

-- Size: Settlement Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.settlement_price_scale_code.size = 1

-- Display: Settlement Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.settlement_price_scale_code.display = function(value)
  return "Settlement Price Scale Code: "..value
end

-- Dissect: Settlement Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.settlement_price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.settlement_price_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.settlement_price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.settlement_price_scale_code, range, value, display)

  return offset + length, value
end

-- Settlement Value
gpw_wse_marketinformation_xdp_v6_8.settlement_value = {}

-- Size: Settlement Value
gpw_wse_marketinformation_xdp_v6_8.settlement_value.size = 4

-- Display: Settlement Value
gpw_wse_marketinformation_xdp_v6_8.settlement_value.display = function(value)
  return "Settlement Value: "..value
end

-- Dissect: Settlement Value
gpw_wse_marketinformation_xdp_v6_8.settlement_value.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.settlement_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.settlement_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.settlement_value, range, value, display)

  return offset + length, value
end

-- Settlement Value Scale Code
gpw_wse_marketinformation_xdp_v6_8.settlement_value_scale_code = {}

-- Size: Settlement Value Scale Code
gpw_wse_marketinformation_xdp_v6_8.settlement_value_scale_code.size = 1

-- Display: Settlement Value Scale Code
gpw_wse_marketinformation_xdp_v6_8.settlement_value_scale_code.display = function(value)
  return "Settlement Value Scale Code: "..value
end

-- Dissect: Settlement Value Scale Code
gpw_wse_marketinformation_xdp_v6_8.settlement_value_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.settlement_value_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.settlement_value_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.settlement_value_scale_code, range, value, display)

  return offset + length, value
end

-- Seventh Reserved 1
gpw_wse_marketinformation_xdp_v6_8.seventh_reserved_1 = {}

-- Size: Seventh Reserved 1
gpw_wse_marketinformation_xdp_v6_8.seventh_reserved_1.size = 1

-- Display: Seventh Reserved 1
gpw_wse_marketinformation_xdp_v6_8.seventh_reserved_1.display = function(value)
  return "Seventh Reserved 1: "..value
end

-- Dissect: Seventh Reserved 1
gpw_wse_marketinformation_xdp_v6_8.seventh_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.seventh_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = gpw_wse_marketinformation_xdp_v6_8.seventh_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.seventh_reserved_1, range, value, display)

  return offset + length, value
end

-- Shares Out
gpw_wse_marketinformation_xdp_v6_8.shares_out = {}

-- Size: Shares Out
gpw_wse_marketinformation_xdp_v6_8.shares_out.size = 8

-- Display: Shares Out
gpw_wse_marketinformation_xdp_v6_8.shares_out.display = function(value)
  return "Shares Out: "..value
end

-- Dissect: Shares Out
gpw_wse_marketinformation_xdp_v6_8.shares_out.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.shares_out.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = gpw_wse_marketinformation_xdp_v6_8.shares_out.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.shares_out, range, value, display)

  return offset + length, value
end

-- Short Name
gpw_wse_marketinformation_xdp_v6_8.short_name = {}

-- Size: Short Name
gpw_wse_marketinformation_xdp_v6_8.short_name.size = 16

-- Display: Short Name
gpw_wse_marketinformation_xdp_v6_8.short_name.display = function(value)
  return "Short Name: "..value
end

-- Dissect: Short Name
gpw_wse_marketinformation_xdp_v6_8.short_name.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.short_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.short_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.short_name, range, value, display)

  return offset + length, value
end

-- Short Sale
gpw_wse_marketinformation_xdp_v6_8.short_sale = {}

-- Size: Short Sale
gpw_wse_marketinformation_xdp_v6_8.short_sale.size = 1

-- Display: Short Sale
gpw_wse_marketinformation_xdp_v6_8.short_sale.display = function(value)
  return "Short Sale: "..value
end

-- Dissect: Short Sale
gpw_wse_marketinformation_xdp_v6_8.short_sale.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.short_sale.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.short_sale.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.short_sale, range, value, display)

  return offset + length, value
end

-- Short Selling Trades Number
gpw_wse_marketinformation_xdp_v6_8.short_selling_trades_number = {}

-- Size: Short Selling Trades Number
gpw_wse_marketinformation_xdp_v6_8.short_selling_trades_number.size = 4

-- Display: Short Selling Trades Number
gpw_wse_marketinformation_xdp_v6_8.short_selling_trades_number.display = function(value)
  return "Short Selling Trades Number: "..value
end

-- Dissect: Short Selling Trades Number
gpw_wse_marketinformation_xdp_v6_8.short_selling_trades_number.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.short_selling_trades_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.short_selling_trades_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.short_selling_trades_number, range, value, display)

  return offset + length, value
end

-- Sixth Reserved 1
gpw_wse_marketinformation_xdp_v6_8.sixth_reserved_1 = {}

-- Size: Sixth Reserved 1
gpw_wse_marketinformation_xdp_v6_8.sixth_reserved_1.size = 1

-- Display: Sixth Reserved 1
gpw_wse_marketinformation_xdp_v6_8.sixth_reserved_1.display = function(value)
  return "Sixth Reserved 1: "..value
end

-- Dissect: Sixth Reserved 1
gpw_wse_marketinformation_xdp_v6_8.sixth_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.sixth_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = gpw_wse_marketinformation_xdp_v6_8.sixth_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.sixth_reserved_1, range, value, display)

  return offset + length, value
end

-- Source Data
gpw_wse_marketinformation_xdp_v6_8.source_data = {}

-- Size: Source Data
gpw_wse_marketinformation_xdp_v6_8.source_data.size = 1

-- Display: Source Data
gpw_wse_marketinformation_xdp_v6_8.source_data.display = function(value)
  return "Source Data: "..value
end

-- Dissect: Source Data
gpw_wse_marketinformation_xdp_v6_8.source_data.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.source_data.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.source_data.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.source_data, range, value, display)

  return offset + length, value
end

-- Source Seq Num
gpw_wse_marketinformation_xdp_v6_8.source_seq_num = {}

-- Size: Source Seq Num
gpw_wse_marketinformation_xdp_v6_8.source_seq_num.size = 4

-- Display: Source Seq Num
gpw_wse_marketinformation_xdp_v6_8.source_seq_num.display = function(value)
  return "Source Seq Num: "..value
end

-- Dissect: Source Seq Num
gpw_wse_marketinformation_xdp_v6_8.source_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.source_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.source_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.source_seq_num, range, value, display)

  return offset + length, value
end

-- Source Time
gpw_wse_marketinformation_xdp_v6_8.source_time = {}

-- Size: Source Time
gpw_wse_marketinformation_xdp_v6_8.source_time.size = 4

-- Display: Source Time
gpw_wse_marketinformation_xdp_v6_8.source_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if gpw_wse_marketinformation_xdp_v6_8.timestamp_format == 0 then
    return "Source Time: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if gpw_wse_marketinformation_xdp_v6_8.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = gpw_wse_marketinformation_xdp_v6_8.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Source Time: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "Source Time: "..os.date("%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Source Time
gpw_wse_marketinformation_xdp_v6_8.source_time.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.source_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.source_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.source_time, range, value, display)

  return offset + length, value
end

-- Source Time Micro Secs
gpw_wse_marketinformation_xdp_v6_8.source_time_micro_secs = {}

-- Size: Source Time Micro Secs
gpw_wse_marketinformation_xdp_v6_8.source_time_micro_secs.size = 2

-- Display: Source Time Micro Secs
gpw_wse_marketinformation_xdp_v6_8.source_time_micro_secs.display = function(value)
  return "Source Time Micro Secs: "..value
end

-- Dissect: Source Time Micro Secs
gpw_wse_marketinformation_xdp_v6_8.source_time_micro_secs.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.source_time_micro_secs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.source_time_micro_secs.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.source_time_micro_secs, range, value, display)

  return offset + length, value
end

-- Split
gpw_wse_marketinformation_xdp_v6_8.split = {}

-- Size: Split
gpw_wse_marketinformation_xdp_v6_8.split.size = 2

-- Display: Split
gpw_wse_marketinformation_xdp_v6_8.split.labels = {
  ["pw"] = "Split: After The Change (pw)",
  ["zj"] = "Split: Change Of The Trading Unit From The Moment Of Change Until The Last Session Before The Date Of The Shares Merger (zj)",
}

gpw_wse_marketinformation_xdp_v6_8.split.display = function(value)
  return gpw_wse_marketinformation_xdp_v6_8.split.labels[value] or "Split: Unknown("..value..")"
end

-- Dissect: Split
gpw_wse_marketinformation_xdp_v6_8.split.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.split.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.split.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.split, range, value, display)

  return offset + length, value
end

-- Ss Market Maker
gpw_wse_marketinformation_xdp_v6_8.ss_market_maker = {}

-- Size: Ss Market Maker
gpw_wse_marketinformation_xdp_v6_8.ss_market_maker.size = 1

-- Display: Ss Market Maker
gpw_wse_marketinformation_xdp_v6_8.ss_market_maker.display = function(value)
  if value == "Y" then
    return "Ss Market Maker: Short Sale Is Authorized (Y)"
  end
  if value == "N" then
    return "Ss Market Maker: Short Sale Is Forbidden Which The 561 Session Summary Message Words As Suspended (N)"
  end
  if value == " " then
    return "Ss Market Maker: Not Significant For Warrants And Derivatives Instruments As Well As Instruments Traded On Ipo And To Segments (<whitespace>)"
  end

  return "Ss Market Maker: Unknown("..value..")"
end

-- Dissect: Ss Market Maker
gpw_wse_marketinformation_xdp_v6_8.ss_market_maker.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.ss_market_maker.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.ss_market_maker.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.ss_market_maker, range, value, display)

  return offset + length, value
end

-- Ss Non Market Maker
gpw_wse_marketinformation_xdp_v6_8.ss_non_market_maker = {}

-- Size: Ss Non Market Maker
gpw_wse_marketinformation_xdp_v6_8.ss_non_market_maker.size = 1

-- Display: Ss Non Market Maker
gpw_wse_marketinformation_xdp_v6_8.ss_non_market_maker.display = function(value)
  if value == "Y" then
    return "Ss Non Market Maker: Short Sale Is Authorized (Y)"
  end
  if value == "N" then
    return "Ss Non Market Maker: Short Sale Is Forbidden Which The 561 Session Summary Message Words As Suspended (N)"
  end
  if value == " " then
    return "Ss Non Market Maker: Not Significant For Warrants And Derivatives Instruments As Well As Instruments Traded On Ipo And To Segments (<whitespace>)"
  end

  return "Ss Non Market Maker: Unknown("..value..")"
end

-- Dissect: Ss Non Market Maker
gpw_wse_marketinformation_xdp_v6_8.ss_non_market_maker.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.ss_non_market_maker.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.ss_non_market_maker.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.ss_non_market_maker, range, value, display)

  return offset + length, value
end

-- Start Date Halting
gpw_wse_marketinformation_xdp_v6_8.start_date_halting = {}

-- Size: Start Date Halting
gpw_wse_marketinformation_xdp_v6_8.start_date_halting.size = 8

-- Display: Start Date Halting
gpw_wse_marketinformation_xdp_v6_8.start_date_halting.display = function(value)
  if #value < 8 then
    return "Start Date Halting: "..value
  end

  return "Start Date Halting: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Start Date Halting
gpw_wse_marketinformation_xdp_v6_8.start_date_halting.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.start_date_halting.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.start_date_halting.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.start_date_halting, range, value, display)

  return offset + length, value
end

-- Start Time Halting
gpw_wse_marketinformation_xdp_v6_8.start_time_halting = {}

-- Size: Start Time Halting
gpw_wse_marketinformation_xdp_v6_8.start_time_halting.size = 6

-- Display: Start Time Halting
gpw_wse_marketinformation_xdp_v6_8.start_time_halting.display = function(value)
  if #value < 6 then
    return "Start Time Halting: "..value
  end

  return "Start Time Halting: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Start Time Halting
gpw_wse_marketinformation_xdp_v6_8.start_time_halting.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.start_time_halting.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.start_time_halting.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.start_time_halting, range, value, display)

  return offset + length, value
end

-- Status Indicator
gpw_wse_marketinformation_xdp_v6_8.status_indicator = {}

-- Size: Status Indicator
gpw_wse_marketinformation_xdp_v6_8.status_indicator.size = 1

-- Display: Status Indicator
gpw_wse_marketinformation_xdp_v6_8.status_indicator.display = function(value)
  if value == "Z" then
    return "Status Indicator: Suspended (Z)"
  end
  if value == " " then
    return "Status Indicator: Active (<whitespace>)"
  end

  return "Status Indicator: Unknown("..value..")"
end

-- Dissect: Status Indicator
gpw_wse_marketinformation_xdp_v6_8.status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.status_indicator, range, value, display)

  return offset + length, value
end

-- Stock Exchange Code
gpw_wse_marketinformation_xdp_v6_8.stock_exchange_code = {}

-- Size: Stock Exchange Code
gpw_wse_marketinformation_xdp_v6_8.stock_exchange_code.size = 2

-- Display: Stock Exchange Code
gpw_wse_marketinformation_xdp_v6_8.stock_exchange_code.labels = {
  [243] = "Stock Exchange Code: Warsaw Stock Exchange (243)",
  [986] = "Stock Exchange Code: Bond Spot Non Exchange Regulated Market (986)",
  [988] = "Stock Exchange Code: Treasury Bond Spot Poland (988)",
  [989] = "Stock Exchange Code: Bond Spot Ats (989)",
}

gpw_wse_marketinformation_xdp_v6_8.stock_exchange_code.display = function(value)
  return gpw_wse_marketinformation_xdp_v6_8.stock_exchange_code.labels[value] or "Stock Exchange Code: Unknown("..value..")"
end

-- Dissect: Stock Exchange Code
gpw_wse_marketinformation_xdp_v6_8.stock_exchange_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.stock_exchange_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.stock_exchange_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.stock_exchange_code, range, value, display)

  return offset + length, value
end

-- Strike Currency
gpw_wse_marketinformation_xdp_v6_8.strike_currency = {}

-- Size: Strike Currency
gpw_wse_marketinformation_xdp_v6_8.strike_currency.size = 3

-- Display: Strike Currency
gpw_wse_marketinformation_xdp_v6_8.strike_currency.display = function(value)
  return "Strike Currency: "..value
end

-- Dissect: Strike Currency
gpw_wse_marketinformation_xdp_v6_8.strike_currency.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.strike_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.strike_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.strike_currency, range, value, display)

  return offset + length, value
end

-- Strike Currency Indicator
gpw_wse_marketinformation_xdp_v6_8.strike_currency_indicator = {}

-- Size: Strike Currency Indicator
gpw_wse_marketinformation_xdp_v6_8.strike_currency_indicator.size = 1

-- Display: Strike Currency Indicator
gpw_wse_marketinformation_xdp_v6_8.strike_currency_indicator.display = function(value)
  return "Strike Currency Indicator: "..value
end

-- Dissect: Strike Currency Indicator
gpw_wse_marketinformation_xdp_v6_8.strike_currency_indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.strike_currency_indicator.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.strike_currency_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.strike_currency_indicator, range, value, display)

  return offset + length, value
end

-- Strike Price
gpw_wse_marketinformation_xdp_v6_8.strike_price = {}

-- Size: Strike Price
gpw_wse_marketinformation_xdp_v6_8.strike_price.size = 4

-- Display: Strike Price
gpw_wse_marketinformation_xdp_v6_8.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
gpw_wse_marketinformation_xdp_v6_8.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.strike_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Strike Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.strike_price_scale_code = {}

-- Size: Strike Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.strike_price_scale_code.size = 1

-- Display: Strike Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.strike_price_scale_code.display = function(value)
  return "Strike Price Scale Code: "..value
end

-- Dissect: Strike Price Scale Code
gpw_wse_marketinformation_xdp_v6_8.strike_price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.strike_price_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.strike_price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.strike_price_scale_code, range, value, display)

  return offset + length, value
end

-- Strike Scale Code
gpw_wse_marketinformation_xdp_v6_8.strike_scale_code = {}

-- Size: Strike Scale Code
gpw_wse_marketinformation_xdp_v6_8.strike_scale_code.size = 1

-- Display: Strike Scale Code
gpw_wse_marketinformation_xdp_v6_8.strike_scale_code.display = function(value)
  return "Strike Scale Code: "..value
end

-- Dissect: Strike Scale Code
gpw_wse_marketinformation_xdp_v6_8.strike_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.strike_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.strike_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.strike_scale_code, range, value, display)

  return offset + length, value
end

-- Subscription Right
gpw_wse_marketinformation_xdp_v6_8.subscription_right = {}

-- Size: Subscription Right
gpw_wse_marketinformation_xdp_v6_8.subscription_right.size = 2

-- Display: Subscription Right
gpw_wse_marketinformation_xdp_v6_8.subscription_right.display = function(value)
  return "Subscription Right: "..value
end

-- Dissect: Subscription Right
gpw_wse_marketinformation_xdp_v6_8.subscription_right.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.subscription_right.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.subscription_right.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.subscription_right, range, value, display)

  return offset + length, value
end

-- Symbol Delta
gpw_wse_marketinformation_xdp_v6_8.symbol_delta = {}

-- Size: Symbol Delta
gpw_wse_marketinformation_xdp_v6_8.symbol_delta.size = 1

-- Display: Symbol Delta
gpw_wse_marketinformation_xdp_v6_8.symbol_delta.display = function(value)
  if value == "+" then
    return "Symbol Delta: Positive Value (+)"
  end
  if value == "-" then
    return "Symbol Delta: Negative Value (-)"
  end
  if value == " " then
    return "Symbol Delta: Zero Value (<whitespace>)"
  end

  return "Symbol Delta: Unknown("..value..")"
end

-- Dissect: Symbol Delta
gpw_wse_marketinformation_xdp_v6_8.symbol_delta.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.symbol_delta.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.symbol_delta.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.symbol_delta, range, value, display)

  return offset + length, value
end

-- Symbol Gamma
gpw_wse_marketinformation_xdp_v6_8.symbol_gamma = {}

-- Size: Symbol Gamma
gpw_wse_marketinformation_xdp_v6_8.symbol_gamma.size = 1

-- Display: Symbol Gamma
gpw_wse_marketinformation_xdp_v6_8.symbol_gamma.display = function(value)
  if value == "+" then
    return "Symbol Gamma: Positive Value (+)"
  end
  if value == "-" then
    return "Symbol Gamma: Negative Value (-)"
  end
  if value == " " then
    return "Symbol Gamma: Zero Value (<whitespace>)"
  end

  return "Symbol Gamma: Unknown("..value..")"
end

-- Dissect: Symbol Gamma
gpw_wse_marketinformation_xdp_v6_8.symbol_gamma.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.symbol_gamma.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.symbol_gamma.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.symbol_gamma, range, value, display)

  return offset + length, value
end

-- Symbol Index
gpw_wse_marketinformation_xdp_v6_8.symbol_index = {}

-- Size: Symbol Index
gpw_wse_marketinformation_xdp_v6_8.symbol_index.size = 4

-- Display: Symbol Index
gpw_wse_marketinformation_xdp_v6_8.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
gpw_wse_marketinformation_xdp_v6_8.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.symbol_index.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Symbol Rho
gpw_wse_marketinformation_xdp_v6_8.symbol_rho = {}

-- Size: Symbol Rho
gpw_wse_marketinformation_xdp_v6_8.symbol_rho.size = 1

-- Display: Symbol Rho
gpw_wse_marketinformation_xdp_v6_8.symbol_rho.display = function(value)
  if value == "+" then
    return "Symbol Rho: Positive Value (+)"
  end
  if value == "-" then
    return "Symbol Rho: Negative Value (-)"
  end
  if value == " " then
    return "Symbol Rho: Zero Value (<whitespace>)"
  end

  return "Symbol Rho: Unknown("..value..")"
end

-- Dissect: Symbol Rho
gpw_wse_marketinformation_xdp_v6_8.symbol_rho.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.symbol_rho.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.symbol_rho.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.symbol_rho, range, value, display)

  return offset + length, value
end

-- Symbol Theta
gpw_wse_marketinformation_xdp_v6_8.symbol_theta = {}

-- Size: Symbol Theta
gpw_wse_marketinformation_xdp_v6_8.symbol_theta.size = 1

-- Display: Symbol Theta
gpw_wse_marketinformation_xdp_v6_8.symbol_theta.display = function(value)
  if value == "+" then
    return "Symbol Theta: Positive Value (+)"
  end
  if value == "-" then
    return "Symbol Theta: Negative Value (-)"
  end
  if value == " " then
    return "Symbol Theta: Zero Value (<whitespace>)"
  end

  return "Symbol Theta: Unknown("..value..")"
end

-- Dissect: Symbol Theta
gpw_wse_marketinformation_xdp_v6_8.symbol_theta.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.symbol_theta.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.symbol_theta.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.symbol_theta, range, value, display)

  return offset + length, value
end

-- Symbol Vega
gpw_wse_marketinformation_xdp_v6_8.symbol_vega = {}

-- Size: Symbol Vega
gpw_wse_marketinformation_xdp_v6_8.symbol_vega.size = 1

-- Display: Symbol Vega
gpw_wse_marketinformation_xdp_v6_8.symbol_vega.display = function(value)
  if value == "+" then
    return "Symbol Vega: Positive Value (+)"
  end
  if value == "-" then
    return "Symbol Vega: Negative Value (-)"
  end
  if value == " " then
    return "Symbol Vega: Zero Value (<whitespace>)"
  end

  return "Symbol Vega: Unknown("..value..")"
end

-- Dissect: Symbol Vega
gpw_wse_marketinformation_xdp_v6_8.symbol_vega.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.symbol_vega.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.symbol_vega.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.symbol_vega, range, value, display)

  return offset + length, value
end

-- System Id
gpw_wse_marketinformation_xdp_v6_8.system_id = {}

-- Size: System Id
gpw_wse_marketinformation_xdp_v6_8.system_id.size = 4

-- Display: System Id
gpw_wse_marketinformation_xdp_v6_8.system_id.labels = {
  [1] = "System Id: All Non Utp Systems (1)",
  [11] = "System Id: Utp Trading Unit 1 (11)",
  [12] = "System Id: Utp Trading Unit 2 (12)",
}

gpw_wse_marketinformation_xdp_v6_8.system_id.display = function(value)
  return gpw_wse_marketinformation_xdp_v6_8.system_id.labels[value] or "System Id: Unknown("..value..")"
end

-- Dissect: System Id
gpw_wse_marketinformation_xdp_v6_8.system_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.system_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.system_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.system_id, range, value, display)

  return offset + length, value
end

-- Tax Code
gpw_wse_marketinformation_xdp_v6_8.tax_code = {}

-- Size: Tax Code
gpw_wse_marketinformation_xdp_v6_8.tax_code.size = 1

-- Display: Tax Code
gpw_wse_marketinformation_xdp_v6_8.tax_code.display = function(value)
  return "Tax Code: "..value
end

-- Dissect: Tax Code
gpw_wse_marketinformation_xdp_v6_8.tax_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.tax_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.tax_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.tax_code, range, value, display)

  return offset + length, value
end

-- Text Ascii Ch 100
gpw_wse_marketinformation_xdp_v6_8.text_ascii_ch_100 = {}

-- Size: Text Ascii Ch 100
gpw_wse_marketinformation_xdp_v6_8.text_ascii_ch_100.size = 100

-- Display: Text Ascii Ch 100
gpw_wse_marketinformation_xdp_v6_8.text_ascii_ch_100.display = function(value)
  return "Text Ascii Ch 100: "..value
end

-- Dissect: Text Ascii Ch 100
gpw_wse_marketinformation_xdp_v6_8.text_ascii_ch_100.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.text_ascii_ch_100.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.text_ascii_ch_100.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.text_ascii_ch_100, range, value, display)

  return offset + length, value
end

-- Text Ascii Str 1000
gpw_wse_marketinformation_xdp_v6_8.text_ascii_str_1000 = {}

-- Size: Text Ascii Str 1000
gpw_wse_marketinformation_xdp_v6_8.text_ascii_str_1000.size = 1000

-- Display: Text Ascii Str 1000
gpw_wse_marketinformation_xdp_v6_8.text_ascii_str_1000.display = function(value)
  return "Text Ascii Str 1000: "..value
end

-- Dissect: Text Ascii Str 1000
gpw_wse_marketinformation_xdp_v6_8.text_ascii_str_1000.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.text_ascii_str_1000.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.text_ascii_str_1000.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.text_ascii_str_1000, range, value, display)

  return offset + length, value
end

-- Theta
gpw_wse_marketinformation_xdp_v6_8.theta = {}

-- Size: Theta
gpw_wse_marketinformation_xdp_v6_8.theta.size = 4

-- Display: Theta
gpw_wse_marketinformation_xdp_v6_8.theta.display = function(value)
  return "Theta: "..value
end

-- Dissect: Theta
gpw_wse_marketinformation_xdp_v6_8.theta.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.theta.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.theta.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.theta, range, value, display)

  return offset + length, value
end

-- Theta Scale Code
gpw_wse_marketinformation_xdp_v6_8.theta_scale_code = {}

-- Size: Theta Scale Code
gpw_wse_marketinformation_xdp_v6_8.theta_scale_code.size = 1

-- Display: Theta Scale Code
gpw_wse_marketinformation_xdp_v6_8.theta_scale_code.display = function(value)
  return "Theta Scale Code: "..value
end

-- Dissect: Theta Scale Code
gpw_wse_marketinformation_xdp_v6_8.theta_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.theta_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.theta_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.theta_scale_code, range, value, display)

  return offset + length, value
end

-- Third Reserved 1
gpw_wse_marketinformation_xdp_v6_8.third_reserved_1 = {}

-- Size: Third Reserved 1
gpw_wse_marketinformation_xdp_v6_8.third_reserved_1.size = 1

-- Display: Third Reserved 1
gpw_wse_marketinformation_xdp_v6_8.third_reserved_1.display = function(value)
  return "Third Reserved 1: "..value
end

-- Dissect: Third Reserved 1
gpw_wse_marketinformation_xdp_v6_8.third_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.third_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = gpw_wse_marketinformation_xdp_v6_8.third_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.third_reserved_1, range, value, display)

  return offset + length, value
end

-- Third Reserved 4
gpw_wse_marketinformation_xdp_v6_8.third_reserved_4 = {}

-- Size: Third Reserved 4
gpw_wse_marketinformation_xdp_v6_8.third_reserved_4.size = 4

-- Display: Third Reserved 4
gpw_wse_marketinformation_xdp_v6_8.third_reserved_4.display = function(value)
  return "Third Reserved 4: "..value
end

-- Dissect: Third Reserved 4
gpw_wse_marketinformation_xdp_v6_8.third_reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.third_reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = gpw_wse_marketinformation_xdp_v6_8.third_reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.third_reserved_4, range, value, display)

  return offset + length, value
end

-- Time Lag Euronext Utc
gpw_wse_marketinformation_xdp_v6_8.time_lag_euronext_utc = {}

-- Size: Time Lag Euronext Utc
gpw_wse_marketinformation_xdp_v6_8.time_lag_euronext_utc.size = 5

-- Display: Time Lag Euronext Utc
gpw_wse_marketinformation_xdp_v6_8.time_lag_euronext_utc.display = function(value)
  return "Time Lag Euronext Utc: "..value
end

-- Dissect: Time Lag Euronext Utc
gpw_wse_marketinformation_xdp_v6_8.time_lag_euronext_utc.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.time_lag_euronext_utc.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.time_lag_euronext_utc.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.time_lag_euronext_utc, range, value, display)

  return offset + length, value
end

-- Time Lag Mi Fid Reg Utc
gpw_wse_marketinformation_xdp_v6_8.time_lag_mi_fid_reg_utc = {}

-- Size: Time Lag Mi Fid Reg Utc
gpw_wse_marketinformation_xdp_v6_8.time_lag_mi_fid_reg_utc.size = 5

-- Display: Time Lag Mi Fid Reg Utc
gpw_wse_marketinformation_xdp_v6_8.time_lag_mi_fid_reg_utc.display = function(value)
  return "Time Lag Mi Fid Reg Utc: "..value
end

-- Dissect: Time Lag Mi Fid Reg Utc
gpw_wse_marketinformation_xdp_v6_8.time_lag_mi_fid_reg_utc.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.time_lag_mi_fid_reg_utc.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.time_lag_mi_fid_reg_utc.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.time_lag_mi_fid_reg_utc, range, value, display)

  return offset + length, value
end

-- Title
gpw_wse_marketinformation_xdp_v6_8.title = {}

-- Size: Title
gpw_wse_marketinformation_xdp_v6_8.title.size = 80

-- Display: Title
gpw_wse_marketinformation_xdp_v6_8.title.display = function(value)
  return "Title: "..value
end

-- Dissect: Title
gpw_wse_marketinformation_xdp_v6_8.title.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.title.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.title.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.title, range, value, display)

  return offset + length, value
end

-- Trading Code
gpw_wse_marketinformation_xdp_v6_8.trading_code = {}

-- Size: Trading Code
gpw_wse_marketinformation_xdp_v6_8.trading_code.size = 12

-- Display: Trading Code
gpw_wse_marketinformation_xdp_v6_8.trading_code.display = function(value)
  return "Trading Code: "..value
end

-- Dissect: Trading Code
gpw_wse_marketinformation_xdp_v6_8.trading_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.trading_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.trading_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.trading_code, range, value, display)

  return offset + length, value
end

-- Trading Currency
gpw_wse_marketinformation_xdp_v6_8.trading_currency = {}

-- Size: Trading Currency
gpw_wse_marketinformation_xdp_v6_8.trading_currency.size = 3

-- Display: Trading Currency
gpw_wse_marketinformation_xdp_v6_8.trading_currency.display = function(value)
  return "Trading Currency: "..value
end

-- Dissect: Trading Currency
gpw_wse_marketinformation_xdp_v6_8.trading_currency.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.trading_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.trading_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.trading_currency, range, value, display)

  return offset + length, value
end

-- Trading Currency Indicator
gpw_wse_marketinformation_xdp_v6_8.trading_currency_indicator = {}

-- Size: Trading Currency Indicator
gpw_wse_marketinformation_xdp_v6_8.trading_currency_indicator.size = 1

-- Display: Trading Currency Indicator
gpw_wse_marketinformation_xdp_v6_8.trading_currency_indicator.display = function(value)
  return "Trading Currency Indicator: "..value
end

-- Dissect: Trading Currency Indicator
gpw_wse_marketinformation_xdp_v6_8.trading_currency_indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.trading_currency_indicator.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.trading_currency_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.trading_currency_indicator, range, value, display)

  return offset + length, value
end

-- Trading Date
gpw_wse_marketinformation_xdp_v6_8.trading_date = {}

-- Size: Trading Date
gpw_wse_marketinformation_xdp_v6_8.trading_date.size = 8

-- Display: Trading Date
gpw_wse_marketinformation_xdp_v6_8.trading_date.display = function(value)
  if #value < 8 then
    return "Trading Date: "..value
  end

  return "Trading Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Trading Date
gpw_wse_marketinformation_xdp_v6_8.trading_date.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.trading_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.trading_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.trading_date, range, value, display)

  return offset + length, value
end

-- Trading Value
gpw_wse_marketinformation_xdp_v6_8.trading_value = {}

-- Size: Trading Value
gpw_wse_marketinformation_xdp_v6_8.trading_value.size = 8

-- Display: Trading Value
gpw_wse_marketinformation_xdp_v6_8.trading_value.display = function(value)
  return "Trading Value: "..value
end

-- Dissect: Trading Value
gpw_wse_marketinformation_xdp_v6_8.trading_value.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.trading_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = gpw_wse_marketinformation_xdp_v6_8.trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.trading_value, range, value, display)

  return offset + length, value
end

-- Trading Value Currency
gpw_wse_marketinformation_xdp_v6_8.trading_value_currency = {}

-- Size: Trading Value Currency
gpw_wse_marketinformation_xdp_v6_8.trading_value_currency.size = 8

-- Display: Trading Value Currency
gpw_wse_marketinformation_xdp_v6_8.trading_value_currency.display = function(value)
  return "Trading Value Currency: "..value
end

-- Dissect: Trading Value Currency
gpw_wse_marketinformation_xdp_v6_8.trading_value_currency.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.trading_value_currency.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = gpw_wse_marketinformation_xdp_v6_8.trading_value_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.trading_value_currency, range, value, display)

  return offset + length, value
end

-- Trading Value Currency Scale Code
gpw_wse_marketinformation_xdp_v6_8.trading_value_currency_scale_code = {}

-- Size: Trading Value Currency Scale Code
gpw_wse_marketinformation_xdp_v6_8.trading_value_currency_scale_code.size = 1

-- Display: Trading Value Currency Scale Code
gpw_wse_marketinformation_xdp_v6_8.trading_value_currency_scale_code.display = function(value)
  return "Trading Value Currency Scale Code: "..value
end

-- Dissect: Trading Value Currency Scale Code
gpw_wse_marketinformation_xdp_v6_8.trading_value_currency_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.trading_value_currency_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.trading_value_currency_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.trading_value_currency_scale_code, range, value, display)

  return offset + length, value
end

-- Trading Value Scale Code
gpw_wse_marketinformation_xdp_v6_8.trading_value_scale_code = {}

-- Size: Trading Value Scale Code
gpw_wse_marketinformation_xdp_v6_8.trading_value_scale_code.size = 1

-- Display: Trading Value Scale Code
gpw_wse_marketinformation_xdp_v6_8.trading_value_scale_code.display = function(value)
  return "Trading Value Scale Code: "..value
end

-- Dissect: Trading Value Scale Code
gpw_wse_marketinformation_xdp_v6_8.trading_value_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.trading_value_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.trading_value_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.trading_value_scale_code, range, value, display)

  return offset + length, value
end

-- Trading Volume
gpw_wse_marketinformation_xdp_v6_8.trading_volume = {}

-- Size: Trading Volume
gpw_wse_marketinformation_xdp_v6_8.trading_volume.size = 4

-- Display: Trading Volume
gpw_wse_marketinformation_xdp_v6_8.trading_volume.display = function(value)
  return "Trading Volume: "..value
end

-- Dissect: Trading Volume
gpw_wse_marketinformation_xdp_v6_8.trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.trading_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.trading_volume, range, value, display)

  return offset + length, value
end

-- Transaction Number
gpw_wse_marketinformation_xdp_v6_8.transaction_number = {}

-- Size: Transaction Number
gpw_wse_marketinformation_xdp_v6_8.transaction_number.size = 4

-- Display: Transaction Number
gpw_wse_marketinformation_xdp_v6_8.transaction_number.display = function(value)
  return "Transaction Number: "..value
end

-- Dissect: Transaction Number
gpw_wse_marketinformation_xdp_v6_8.transaction_number.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.transaction_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.transaction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.transaction_number, range, value, display)

  return offset + length, value
end

-- Transactions Number
gpw_wse_marketinformation_xdp_v6_8.transactions_number = {}

-- Size: Transactions Number
gpw_wse_marketinformation_xdp_v6_8.transactions_number.size = 4

-- Display: Transactions Number
gpw_wse_marketinformation_xdp_v6_8.transactions_number.display = function(value)
  return "Transactions Number: "..value
end

-- Dissect: Transactions Number
gpw_wse_marketinformation_xdp_v6_8.transactions_number.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.transactions_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.transactions_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.transactions_number, range, value, display)

  return offset + length, value
end

-- Treasury Bond 1 Isin Code
gpw_wse_marketinformation_xdp_v6_8.treasury_bond_1_isin_code = {}

-- Size: Treasury Bond 1 Isin Code
gpw_wse_marketinformation_xdp_v6_8.treasury_bond_1_isin_code.size = 12

-- Display: Treasury Bond 1 Isin Code
gpw_wse_marketinformation_xdp_v6_8.treasury_bond_1_isin_code.display = function(value)
  return "Treasury Bond 1 Isin Code: "..value
end

-- Dissect: Treasury Bond 1 Isin Code
gpw_wse_marketinformation_xdp_v6_8.treasury_bond_1_isin_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.treasury_bond_1_isin_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.treasury_bond_1_isin_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.treasury_bond_1_isin_code, range, value, display)

  return offset + length, value
end

-- Treasury Bond 2 Isin Code
gpw_wse_marketinformation_xdp_v6_8.treasury_bond_2_isin_code = {}

-- Size: Treasury Bond 2 Isin Code
gpw_wse_marketinformation_xdp_v6_8.treasury_bond_2_isin_code.size = 12

-- Display: Treasury Bond 2 Isin Code
gpw_wse_marketinformation_xdp_v6_8.treasury_bond_2_isin_code.display = function(value)
  return "Treasury Bond 2 Isin Code: "..value
end

-- Dissect: Treasury Bond 2 Isin Code
gpw_wse_marketinformation_xdp_v6_8.treasury_bond_2_isin_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.treasury_bond_2_isin_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.treasury_bond_2_isin_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.treasury_bond_2_isin_code, range, value, display)

  return offset + length, value
end

-- Treasury Bond 3 Isin Code
gpw_wse_marketinformation_xdp_v6_8.treasury_bond_3_isin_code = {}

-- Size: Treasury Bond 3 Isin Code
gpw_wse_marketinformation_xdp_v6_8.treasury_bond_3_isin_code.size = 12

-- Display: Treasury Bond 3 Isin Code
gpw_wse_marketinformation_xdp_v6_8.treasury_bond_3_isin_code.display = function(value)
  return "Treasury Bond 3 Isin Code: "..value
end

-- Dissect: Treasury Bond 3 Isin Code
gpw_wse_marketinformation_xdp_v6_8.treasury_bond_3_isin_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.treasury_bond_3_isin_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.treasury_bond_3_isin_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.treasury_bond_3_isin_code, range, value, display)

  return offset + length, value
end

-- Treasury Bond 4 Isin Code
gpw_wse_marketinformation_xdp_v6_8.treasury_bond_4_isin_code = {}

-- Size: Treasury Bond 4 Isin Code
gpw_wse_marketinformation_xdp_v6_8.treasury_bond_4_isin_code.size = 12

-- Display: Treasury Bond 4 Isin Code
gpw_wse_marketinformation_xdp_v6_8.treasury_bond_4_isin_code.display = function(value)
  return "Treasury Bond 4 Isin Code: "..value
end

-- Dissect: Treasury Bond 4 Isin Code
gpw_wse_marketinformation_xdp_v6_8.treasury_bond_4_isin_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.treasury_bond_4_isin_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.treasury_bond_4_isin_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.treasury_bond_4_isin_code, range, value, display)

  return offset + length, value
end

-- Treasury Bond 5 Isin Code
gpw_wse_marketinformation_xdp_v6_8.treasury_bond_5_isin_code = {}

-- Size: Treasury Bond 5 Isin Code
gpw_wse_marketinformation_xdp_v6_8.treasury_bond_5_isin_code.size = 12

-- Display: Treasury Bond 5 Isin Code
gpw_wse_marketinformation_xdp_v6_8.treasury_bond_5_isin_code.display = function(value)
  return "Treasury Bond 5 Isin Code: "..value
end

-- Dissect: Treasury Bond 5 Isin Code
gpw_wse_marketinformation_xdp_v6_8.treasury_bond_5_isin_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.treasury_bond_5_isin_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.treasury_bond_5_isin_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.treasury_bond_5_isin_code, range, value, display)

  return offset + length, value
end

-- Type Of Corporate Event
gpw_wse_marketinformation_xdp_v6_8.type_of_corporate_event = {}

-- Size: Type Of Corporate Event
gpw_wse_marketinformation_xdp_v6_8.type_of_corporate_event.size = 2

-- Display: Type Of Corporate Event
gpw_wse_marketinformation_xdp_v6_8.type_of_corporate_event.labels = {
  ["00"] = "Type Of Corporate Event: No Specific Event (00)",
  ["01"] = "Type Of Corporate Event: Dividend Payment In Cash Or In Stocks (01)",
  ["03"] = "Type Of Corporate Event: Interest Payment Bonds For Which The Price Is Expressed In Of The Nominal (03)",
  ["04"] = "Type Of Corporate Event: Split (04)",
  ["05"] = "Type Of Corporate Event: Bonus Ie Attribution (05)",
  ["09"] = "Type Of Corporate Event: Reverse Split (09)",
  ["12"] = "Type Of Corporate Event: Purge Of The Order Book In The Absence Of A Corporate Event Eg Following The Modification Of The Variable Tick Of The Listed Instrument (12)",
  ["17"] = "Type Of Corporate Event: Spinoff (17)",
  ["18"] = "Type Of Corporate Event: Rights (18)",
  ["19"] = "Type Of Corporate Event: Bonus And Rights (19)",
  ["20"] = "Type Of Corporate Event: Bonus Also Entitled For Rights (20)",
  ["21"] = "Type Of Corporate Event: Rights Also Entitled For Bonus (21)",
  ["99"] = "Type Of Corporate Event: Multiple Corporate Events (99)",
}

gpw_wse_marketinformation_xdp_v6_8.type_of_corporate_event.display = function(value)
  return gpw_wse_marketinformation_xdp_v6_8.type_of_corporate_event.labels[value] or "Type Of Corporate Event: Unknown("..value..")"
end

-- Dissect: Type Of Corporate Event
gpw_wse_marketinformation_xdp_v6_8.type_of_corporate_event.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.type_of_corporate_event.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.type_of_corporate_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.type_of_corporate_event, range, value, display)

  return offset + length, value
end

-- Type Of Derivatives
gpw_wse_marketinformation_xdp_v6_8.type_of_derivatives = {}

-- Size: Type Of Derivatives
gpw_wse_marketinformation_xdp_v6_8.type_of_derivatives.size = 1

-- Display: Type Of Derivatives
gpw_wse_marketinformation_xdp_v6_8.type_of_derivatives.labels = {
  ["1"] = "Type Of Derivatives: Inav Indicative Net Asset Value For Etf Exchange Traded Funds (1)",
  ["4"] = "Type Of Derivatives: Supports Short Terms Options (4)",
  ["6"] = "Type Of Derivatives: Supports Long Term Options (6)",
  ["9"] = "Type Of Derivatives: No (9)",
}

gpw_wse_marketinformation_xdp_v6_8.type_of_derivatives.display = function(value)
  return gpw_wse_marketinformation_xdp_v6_8.type_of_derivatives.labels[value] or "Type Of Derivatives: Unknown("..value..")"
end

-- Dissect: Type Of Derivatives
gpw_wse_marketinformation_xdp_v6_8.type_of_derivatives.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.type_of_derivatives.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.type_of_derivatives.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.type_of_derivatives, range, value, display)

  return offset + length, value
end

-- Type Of Instrument Ascii Str 4
gpw_wse_marketinformation_xdp_v6_8.type_of_instrument_ascii_str_4 = {}

-- Size: Type Of Instrument Ascii Str 4
gpw_wse_marketinformation_xdp_v6_8.type_of_instrument_ascii_str_4.size = 4

-- Display: Type Of Instrument Ascii Str 4
gpw_wse_marketinformation_xdp_v6_8.type_of_instrument_ascii_str_4.display = function(value)
  return "Type Of Instrument Ascii Str 4: "..value
end

-- Dissect: Type Of Instrument Ascii Str 4
gpw_wse_marketinformation_xdp_v6_8.type_of_instrument_ascii_str_4.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.type_of_instrument_ascii_str_4.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.type_of_instrument_ascii_str_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.type_of_instrument_ascii_str_4, range, value, display)

  return offset + length, value
end

-- Type Of Instrument Binary Int 2
gpw_wse_marketinformation_xdp_v6_8.type_of_instrument_binary_int_2 = {}

-- Size: Type Of Instrument Binary Int 2
gpw_wse_marketinformation_xdp_v6_8.type_of_instrument_binary_int_2.size = 2

-- Display: Type Of Instrument Binary Int 2
gpw_wse_marketinformation_xdp_v6_8.type_of_instrument_binary_int_2.display = function(value)
  return "Type Of Instrument Binary Int 2: "..value
end

-- Dissect: Type Of Instrument Binary Int 2
gpw_wse_marketinformation_xdp_v6_8.type_of_instrument_binary_int_2.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.type_of_instrument_binary_int_2.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.type_of_instrument_binary_int_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.type_of_instrument_binary_int_2, range, value, display)

  return offset + length, value
end

-- Type Of Market Admission
gpw_wse_marketinformation_xdp_v6_8.type_of_market_admission = {}

-- Size: Type Of Market Admission
gpw_wse_marketinformation_xdp_v6_8.type_of_market_admission.size = 1

-- Display: Type Of Market Admission
gpw_wse_marketinformation_xdp_v6_8.type_of_market_admission.display = function(value)
  return "Type Of Market Admission: "..value
end

-- Dissect: Type Of Market Admission
gpw_wse_marketinformation_xdp_v6_8.type_of_market_admission.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.type_of_market_admission.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.type_of_market_admission.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.type_of_market_admission, range, value, display)

  return offset + length, value
end

-- Type Off Recipient
gpw_wse_marketinformation_xdp_v6_8.type_off_recipient = {}

-- Size: Type Off Recipient
gpw_wse_marketinformation_xdp_v6_8.type_off_recipient.size = 1

-- Display: Type Off Recipient
gpw_wse_marketinformation_xdp_v6_8.type_off_recipient.display = function(value)
  return "Type Off Recipient: "..value
end

-- Dissect: Type Off Recipient
gpw_wse_marketinformation_xdp_v6_8.type_off_recipient.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.type_off_recipient.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.type_off_recipient.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.type_off_recipient, range, value, display)

  return offset + length, value
end

-- Underlying Isin Code
gpw_wse_marketinformation_xdp_v6_8.underlying_isin_code = {}

-- Size: Underlying Isin Code
gpw_wse_marketinformation_xdp_v6_8.underlying_isin_code.size = 12

-- Display: Underlying Isin Code
gpw_wse_marketinformation_xdp_v6_8.underlying_isin_code.display = function(value)
  return "Underlying Isin Code: "..value
end

-- Dissect: Underlying Isin Code
gpw_wse_marketinformation_xdp_v6_8.underlying_isin_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.underlying_isin_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.underlying_isin_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.underlying_isin_code, range, value, display)

  return offset + length, value
end

-- Underlying Repo Isin Code
gpw_wse_marketinformation_xdp_v6_8.underlying_repo_isin_code = {}

-- Size: Underlying Repo Isin Code
gpw_wse_marketinformation_xdp_v6_8.underlying_repo_isin_code.size = 12

-- Display: Underlying Repo Isin Code
gpw_wse_marketinformation_xdp_v6_8.underlying_repo_isin_code.display = function(value)
  return "Underlying Repo Isin Code: "..value
end

-- Dissect: Underlying Repo Isin Code
gpw_wse_marketinformation_xdp_v6_8.underlying_repo_isin_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.underlying_repo_isin_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.underlying_repo_isin_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.underlying_repo_isin_code, range, value, display)

  return offset + length, value
end

-- Us Indicators
gpw_wse_marketinformation_xdp_v6_8.us_indicators = {}

-- Size: Us Indicators
gpw_wse_marketinformation_xdp_v6_8.us_indicators.size = 7

-- Display: Us Indicators
gpw_wse_marketinformation_xdp_v6_8.us_indicators.display = function(value)
  return "Us Indicators: "..value
end

-- Dissect: Us Indicators
gpw_wse_marketinformation_xdp_v6_8.us_indicators.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.us_indicators.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_marketinformation_xdp_v6_8.us_indicators.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.us_indicators, range, value, display)

  return offset + length, value
end

-- Value At Risk
gpw_wse_marketinformation_xdp_v6_8.value_at_risk = {}

-- Size: Value At Risk
gpw_wse_marketinformation_xdp_v6_8.value_at_risk.size = 1

-- Display: Value At Risk
gpw_wse_marketinformation_xdp_v6_8.value_at_risk.display = function(value)
  return "Value At Risk: "..value
end

-- Dissect: Value At Risk
gpw_wse_marketinformation_xdp_v6_8.value_at_risk.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.value_at_risk.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_marketinformation_xdp_v6_8.value_at_risk.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.value_at_risk, range, value, display)

  return offset + length, value
end

-- Value Block Trades
gpw_wse_marketinformation_xdp_v6_8.value_block_trades = {}

-- Size: Value Block Trades
gpw_wse_marketinformation_xdp_v6_8.value_block_trades.size = 4

-- Display: Value Block Trades
gpw_wse_marketinformation_xdp_v6_8.value_block_trades.display = function(value)
  return "Value Block Trades: "..value
end

-- Dissect: Value Block Trades
gpw_wse_marketinformation_xdp_v6_8.value_block_trades.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.value_block_trades.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.value_block_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.value_block_trades, range, value, display)

  return offset + length, value
end

-- Value Block Trades Scale Code
gpw_wse_marketinformation_xdp_v6_8.value_block_trades_scale_code = {}

-- Size: Value Block Trades Scale Code
gpw_wse_marketinformation_xdp_v6_8.value_block_trades_scale_code.size = 1

-- Display: Value Block Trades Scale Code
gpw_wse_marketinformation_xdp_v6_8.value_block_trades_scale_code.display = function(value)
  return "Value Block Trades Scale Code: "..value
end

-- Dissect: Value Block Trades Scale Code
gpw_wse_marketinformation_xdp_v6_8.value_block_trades_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.value_block_trades_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.value_block_trades_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.value_block_trades_scale_code, range, value, display)

  return offset + length, value
end

-- Value Short Selling Trades
gpw_wse_marketinformation_xdp_v6_8.value_short_selling_trades = {}

-- Size: Value Short Selling Trades
gpw_wse_marketinformation_xdp_v6_8.value_short_selling_trades.size = 4

-- Display: Value Short Selling Trades
gpw_wse_marketinformation_xdp_v6_8.value_short_selling_trades.display = function(value)
  return "Value Short Selling Trades: "..value
end

-- Dissect: Value Short Selling Trades
gpw_wse_marketinformation_xdp_v6_8.value_short_selling_trades.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.value_short_selling_trades.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.value_short_selling_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.value_short_selling_trades, range, value, display)

  return offset + length, value
end

-- Value Short Selling Trades Scale Code
gpw_wse_marketinformation_xdp_v6_8.value_short_selling_trades_scale_code = {}

-- Size: Value Short Selling Trades Scale Code
gpw_wse_marketinformation_xdp_v6_8.value_short_selling_trades_scale_code.size = 1

-- Display: Value Short Selling Trades Scale Code
gpw_wse_marketinformation_xdp_v6_8.value_short_selling_trades_scale_code.display = function(value)
  return "Value Short Selling Trades Scale Code: "..value
end

-- Dissect: Value Short Selling Trades Scale Code
gpw_wse_marketinformation_xdp_v6_8.value_short_selling_trades_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.value_short_selling_trades_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.value_short_selling_trades_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.value_short_selling_trades_scale_code, range, value, display)

  return offset + length, value
end

-- Variation
gpw_wse_marketinformation_xdp_v6_8.variation = {}

-- Size: Variation
gpw_wse_marketinformation_xdp_v6_8.variation.size = 4

-- Display: Variation
gpw_wse_marketinformation_xdp_v6_8.variation.display = function(value)
  return "Variation: "..value
end

-- Dissect: Variation
gpw_wse_marketinformation_xdp_v6_8.variation.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.variation.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.variation.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.variation, range, value, display)

  return offset + length, value
end

-- Variation Scale Code
gpw_wse_marketinformation_xdp_v6_8.variation_scale_code = {}

-- Size: Variation Scale Code
gpw_wse_marketinformation_xdp_v6_8.variation_scale_code.size = 1

-- Display: Variation Scale Code
gpw_wse_marketinformation_xdp_v6_8.variation_scale_code.display = function(value)
  return "Variation Scale Code: "..value
end

-- Dissect: Variation Scale Code
gpw_wse_marketinformation_xdp_v6_8.variation_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.variation_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.variation_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.variation_scale_code, range, value, display)

  return offset + length, value
end

-- Vega
gpw_wse_marketinformation_xdp_v6_8.vega = {}

-- Size: Vega
gpw_wse_marketinformation_xdp_v6_8.vega.size = 4

-- Display: Vega
gpw_wse_marketinformation_xdp_v6_8.vega.display = function(value)
  return "Vega: "..value
end

-- Dissect: Vega
gpw_wse_marketinformation_xdp_v6_8.vega.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.vega.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.vega.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.vega, range, value, display)

  return offset + length, value
end

-- Vega Scale Code
gpw_wse_marketinformation_xdp_v6_8.vega_scale_code = {}

-- Size: Vega Scale Code
gpw_wse_marketinformation_xdp_v6_8.vega_scale_code.size = 1

-- Display: Vega Scale Code
gpw_wse_marketinformation_xdp_v6_8.vega_scale_code.display = function(value)
  return "Vega Scale Code: "..value
end

-- Dissect: Vega Scale Code
gpw_wse_marketinformation_xdp_v6_8.vega_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.vega_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.vega_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.vega_scale_code, range, value, display)

  return offset + length, value
end

-- Volatility
gpw_wse_marketinformation_xdp_v6_8.volatility = {}

-- Size: Volatility
gpw_wse_marketinformation_xdp_v6_8.volatility.size = 4

-- Display: Volatility
gpw_wse_marketinformation_xdp_v6_8.volatility.display = function(value)
  return "Volatility: "..value
end

-- Dissect: Volatility
gpw_wse_marketinformation_xdp_v6_8.volatility.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.volatility.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.volatility.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.volatility, range, value, display)

  return offset + length, value
end

-- Volatility Scale Code
gpw_wse_marketinformation_xdp_v6_8.volatility_scale_code = {}

-- Size: Volatility Scale Code
gpw_wse_marketinformation_xdp_v6_8.volatility_scale_code.size = 1

-- Display: Volatility Scale Code
gpw_wse_marketinformation_xdp_v6_8.volatility_scale_code.display = function(value)
  return "Volatility Scale Code: "..value
end

-- Dissect: Volatility Scale Code
gpw_wse_marketinformation_xdp_v6_8.volatility_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.volatility_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.volatility_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.volatility_scale_code, range, value, display)

  return offset + length, value
end

-- Volume Block Trades
gpw_wse_marketinformation_xdp_v6_8.volume_block_trades = {}

-- Size: Volume Block Trades
gpw_wse_marketinformation_xdp_v6_8.volume_block_trades.size = 4

-- Display: Volume Block Trades
gpw_wse_marketinformation_xdp_v6_8.volume_block_trades.display = function(value)
  return "Volume Block Trades: "..value
end

-- Dissect: Volume Block Trades
gpw_wse_marketinformation_xdp_v6_8.volume_block_trades.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.volume_block_trades.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.volume_block_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.volume_block_trades, range, value, display)

  return offset + length, value
end

-- Volume Short Selling Trades
gpw_wse_marketinformation_xdp_v6_8.volume_short_selling_trades = {}

-- Size: Volume Short Selling Trades
gpw_wse_marketinformation_xdp_v6_8.volume_short_selling_trades.size = 4

-- Display: Volume Short Selling Trades
gpw_wse_marketinformation_xdp_v6_8.volume_short_selling_trades.display = function(value)
  return "Volume Short Selling Trades: "..value
end

-- Dissect: Volume Short Selling Trades
gpw_wse_marketinformation_xdp_v6_8.volume_short_selling_trades.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.volume_short_selling_trades.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.volume_short_selling_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.volume_short_selling_trades, range, value, display)

  return offset + length, value
end

-- Vwap Blocktrade
gpw_wse_marketinformation_xdp_v6_8.vwap_blocktrade = {}

-- Size: Vwap Blocktrade
gpw_wse_marketinformation_xdp_v6_8.vwap_blocktrade.size = 4

-- Display: Vwap Blocktrade
gpw_wse_marketinformation_xdp_v6_8.vwap_blocktrade.display = function(value)
  return "Vwap Blocktrade: "..value
end

-- Dissect: Vwap Blocktrade
gpw_wse_marketinformation_xdp_v6_8.vwap_blocktrade.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.vwap_blocktrade.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.vwap_blocktrade.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.vwap_blocktrade, range, value, display)

  return offset + length, value
end

-- Vwap Blocktrade Scale Code
gpw_wse_marketinformation_xdp_v6_8.vwap_blocktrade_scale_code = {}

-- Size: Vwap Blocktrade Scale Code
gpw_wse_marketinformation_xdp_v6_8.vwap_blocktrade_scale_code.size = 1

-- Display: Vwap Blocktrade Scale Code
gpw_wse_marketinformation_xdp_v6_8.vwap_blocktrade_scale_code.display = function(value)
  return "Vwap Blocktrade Scale Code: "..value
end

-- Dissect: Vwap Blocktrade Scale Code
gpw_wse_marketinformation_xdp_v6_8.vwap_blocktrade_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.vwap_blocktrade_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.vwap_blocktrade_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.vwap_blocktrade_scale_code, range, value, display)

  return offset + length, value
end

-- Warrant Threshold Max
gpw_wse_marketinformation_xdp_v6_8.warrant_threshold_max = {}

-- Size: Warrant Threshold Max
gpw_wse_marketinformation_xdp_v6_8.warrant_threshold_max.size = 4

-- Display: Warrant Threshold Max
gpw_wse_marketinformation_xdp_v6_8.warrant_threshold_max.display = function(value)
  return "Warrant Threshold Max: "..value
end

-- Dissect: Warrant Threshold Max
gpw_wse_marketinformation_xdp_v6_8.warrant_threshold_max.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.warrant_threshold_max.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.warrant_threshold_max.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.warrant_threshold_max, range, value, display)

  return offset + length, value
end

-- Warrant Threshold Max Scale Code
gpw_wse_marketinformation_xdp_v6_8.warrant_threshold_max_scale_code = {}

-- Size: Warrant Threshold Max Scale Code
gpw_wse_marketinformation_xdp_v6_8.warrant_threshold_max_scale_code.size = 1

-- Display: Warrant Threshold Max Scale Code
gpw_wse_marketinformation_xdp_v6_8.warrant_threshold_max_scale_code.display = function(value)
  return "Warrant Threshold Max Scale Code: "..value
end

-- Dissect: Warrant Threshold Max Scale Code
gpw_wse_marketinformation_xdp_v6_8.warrant_threshold_max_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.warrant_threshold_max_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.warrant_threshold_max_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.warrant_threshold_max_scale_code, range, value, display)

  return offset + length, value
end

-- Warrant Threshold Min
gpw_wse_marketinformation_xdp_v6_8.warrant_threshold_min = {}

-- Size: Warrant Threshold Min
gpw_wse_marketinformation_xdp_v6_8.warrant_threshold_min.size = 4

-- Display: Warrant Threshold Min
gpw_wse_marketinformation_xdp_v6_8.warrant_threshold_min.display = function(value)
  return "Warrant Threshold Min: "..value
end

-- Dissect: Warrant Threshold Min
gpw_wse_marketinformation_xdp_v6_8.warrant_threshold_min.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.warrant_threshold_min.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.warrant_threshold_min.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.warrant_threshold_min, range, value, display)

  return offset + length, value
end

-- Warrant Threshold Min Scale Code
gpw_wse_marketinformation_xdp_v6_8.warrant_threshold_min_scale_code = {}

-- Size: Warrant Threshold Min Scale Code
gpw_wse_marketinformation_xdp_v6_8.warrant_threshold_min_scale_code.size = 1

-- Display: Warrant Threshold Min Scale Code
gpw_wse_marketinformation_xdp_v6_8.warrant_threshold_min_scale_code.display = function(value)
  return "Warrant Threshold Min Scale Code: "..value
end

-- Dissect: Warrant Threshold Min Scale Code
gpw_wse_marketinformation_xdp_v6_8.warrant_threshold_min_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_marketinformation_xdp_v6_8.warrant_threshold_min_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_marketinformation_xdp_v6_8.warrant_threshold_min_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.warrant_threshold_min_scale_code, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Gpw Wse MarketInformation Xdp 6.8
-----------------------------------------------------------------------

-- Open Position Message
gpw_wse_marketinformation_xdp_v6_8.open_position_message = {}

-- Size: Open Position Message
gpw_wse_marketinformation_xdp_v6_8.open_position_message.size =
  gpw_wse_marketinformation_xdp_v6_8.symbol_index.size + 
  gpw_wse_marketinformation_xdp_v6_8.source_seq_num.size + 
  gpw_wse_marketinformation_xdp_v6_8.source_time.size + 
  gpw_wse_marketinformation_xdp_v6_8.trading_date.size + 
  gpw_wse_marketinformation_xdp_v6_8.open_position.size + 
  gpw_wse_marketinformation_xdp_v6_8.transaction_number.size + 
  gpw_wse_marketinformation_xdp_v6_8.system_id.size + 
  gpw_wse_marketinformation_xdp_v6_8.source_time_micro_secs.size + 
  gpw_wse_marketinformation_xdp_v6_8.open_position_indicator.size + 
  gpw_wse_marketinformation_xdp_v6_8.reserved_1.size

-- Display: Open Position Message
gpw_wse_marketinformation_xdp_v6_8.open_position_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Position Message
gpw_wse_marketinformation_xdp_v6_8.open_position_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = gpw_wse_marketinformation_xdp_v6_8.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = gpw_wse_marketinformation_xdp_v6_8.source_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = gpw_wse_marketinformation_xdp_v6_8.source_time.dissect(buffer, index, packet, parent)

  -- Trading Date: ASCII Str.
  index, trading_date = gpw_wse_marketinformation_xdp_v6_8.trading_date.dissect(buffer, index, packet, parent)

  -- Open Position: Binary Int.
  index, open_position = gpw_wse_marketinformation_xdp_v6_8.open_position.dissect(buffer, index, packet, parent)

  -- Transaction Number: Binary Int.
  index, transaction_number = gpw_wse_marketinformation_xdp_v6_8.transaction_number.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = gpw_wse_marketinformation_xdp_v6_8.system_id.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = gpw_wse_marketinformation_xdp_v6_8.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Open Position Indicator: ASCII Str.
  index, open_position_indicator = gpw_wse_marketinformation_xdp_v6_8.open_position_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary Int.
  index, reserved_1 = gpw_wse_marketinformation_xdp_v6_8.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Position Message
gpw_wse_marketinformation_xdp_v6_8.open_position_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.open_position_message, buffer(offset, 0))
    local index = gpw_wse_marketinformation_xdp_v6_8.open_position_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_marketinformation_xdp_v6_8.open_position_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_marketinformation_xdp_v6_8.open_position_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Conditions
gpw_wse_marketinformation_xdp_v6_8.market_conditions = {}

-- Size: Market Conditions
gpw_wse_marketinformation_xdp_v6_8.market_conditions.size =
  gpw_wse_marketinformation_xdp_v6_8.isin_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.market_conditions_state.size + 
  gpw_wse_marketinformation_xdp_v6_8.market_conditions_number.size + 
  gpw_wse_marketinformation_xdp_v6_8.reserved_203.size

-- Display: Market Conditions
gpw_wse_marketinformation_xdp_v6_8.market_conditions.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Conditions
gpw_wse_marketinformation_xdp_v6_8.market_conditions.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin Code: ASCII Str.
  index, isin_code = gpw_wse_marketinformation_xdp_v6_8.isin_code.dissect(buffer, index, packet, parent)

  -- Market Conditions State: ASCII Str.
  index, market_conditions_state = gpw_wse_marketinformation_xdp_v6_8.market_conditions_state.dissect(buffer, index, packet, parent)

  -- Market Conditions Number: ASCII Str.
  index, market_conditions_number = gpw_wse_marketinformation_xdp_v6_8.market_conditions_number.dissect(buffer, index, packet, parent)

  -- Reserved 203: ASCII Str.
  index, reserved_203 = gpw_wse_marketinformation_xdp_v6_8.reserved_203.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Conditions
gpw_wse_marketinformation_xdp_v6_8.market_conditions.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.market_conditions, buffer(offset, 0))
    local index = gpw_wse_marketinformation_xdp_v6_8.market_conditions.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_marketinformation_xdp_v6_8.market_conditions.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_marketinformation_xdp_v6_8.market_conditions.fields(buffer, offset, packet, parent)
  end
end

-- Kid
gpw_wse_marketinformation_xdp_v6_8.kid = {}

-- Size: Kid
gpw_wse_marketinformation_xdp_v6_8.kid.size =
  gpw_wse_marketinformation_xdp_v6_8.isin_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.type_of_instrument_ascii_str_4.size + 
  gpw_wse_marketinformation_xdp_v6_8.kid_version.size + 
  gpw_wse_marketinformation_xdp_v6_8.kid_issue_date.size + 
  gpw_wse_marketinformation_xdp_v6_8.value_at_risk.size + 
  gpw_wse_marketinformation_xdp_v6_8.holding_period.size + 
  gpw_wse_marketinformation_xdp_v6_8.priip_kid_url.size

-- Display: Kid
gpw_wse_marketinformation_xdp_v6_8.kid.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Kid
gpw_wse_marketinformation_xdp_v6_8.kid.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin Code: ASCII Str.
  index, isin_code = gpw_wse_marketinformation_xdp_v6_8.isin_code.dissect(buffer, index, packet, parent)

  -- Type Of Instrument Ascii Str 4: ASCII Str.
  index, type_of_instrument_ascii_str_4 = gpw_wse_marketinformation_xdp_v6_8.type_of_instrument_ascii_str_4.dissect(buffer, index, packet, parent)

  -- Kid Version: ASCII Str.
  index, kid_version = gpw_wse_marketinformation_xdp_v6_8.kid_version.dissect(buffer, index, packet, parent)

  -- Kid Issue Date: ASCII Str.
  index, kid_issue_date = gpw_wse_marketinformation_xdp_v6_8.kid_issue_date.dissect(buffer, index, packet, parent)

  -- Value At Risk: ASCII Str.
  index, value_at_risk = gpw_wse_marketinformation_xdp_v6_8.value_at_risk.dissect(buffer, index, packet, parent)

  -- Holding Period: ASCII Str.
  index, holding_period = gpw_wse_marketinformation_xdp_v6_8.holding_period.dissect(buffer, index, packet, parent)

  -- Priip Kid Url: ASCII Str.
  index, priip_kid_url = gpw_wse_marketinformation_xdp_v6_8.priip_kid_url.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Kid
gpw_wse_marketinformation_xdp_v6_8.kid.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.kid, buffer(offset, 0))
    local index = gpw_wse_marketinformation_xdp_v6_8.kid.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_marketinformation_xdp_v6_8.kid.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_marketinformation_xdp_v6_8.kid.fields(buffer, offset, packet, parent)
  end
end

-- Treasury Bond Futures Data
gpw_wse_marketinformation_xdp_v6_8.treasury_bond_futures_data = {}

-- Size: Treasury Bond Futures Data
gpw_wse_marketinformation_xdp_v6_8.treasury_bond_futures_data.size =
  gpw_wse_marketinformation_xdp_v6_8.isin_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.date_of_first_quotation.size + 
  gpw_wse_marketinformation_xdp_v6_8.short_name.size + 
  gpw_wse_marketinformation_xdp_v6_8.date_ascii_str_8.size + 
  gpw_wse_marketinformation_xdp_v6_8.underlying_isin_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.treasury_bond_1_isin_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_1.size + 
  gpw_wse_marketinformation_xdp_v6_8.treasury_bond_2_isin_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_2.size + 
  gpw_wse_marketinformation_xdp_v6_8.treasury_bond_3_isin_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_3.size + 
  gpw_wse_marketinformation_xdp_v6_8.treasury_bond_4_isin_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_4.size + 
  gpw_wse_marketinformation_xdp_v6_8.treasury_bond_5_isin_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_5.size + 
  gpw_wse_marketinformation_xdp_v6_8.reserved_59.size

-- Display: Treasury Bond Futures Data
gpw_wse_marketinformation_xdp_v6_8.treasury_bond_futures_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Treasury Bond Futures Data
gpw_wse_marketinformation_xdp_v6_8.treasury_bond_futures_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin Code: ASCII Str.
  index, isin_code = gpw_wse_marketinformation_xdp_v6_8.isin_code.dissect(buffer, index, packet, parent)

  -- Date Of First Quotation: ASCII Str.
  index, date_of_first_quotation = gpw_wse_marketinformation_xdp_v6_8.date_of_first_quotation.dissect(buffer, index, packet, parent)

  -- Short Name: ASCII Str.
  index, short_name = gpw_wse_marketinformation_xdp_v6_8.short_name.dissect(buffer, index, packet, parent)

  -- Date Ascii Str 8: ASCII Str.
  index, date_ascii_str_8 = gpw_wse_marketinformation_xdp_v6_8.date_ascii_str_8.dissect(buffer, index, packet, parent)

  -- Underlying Isin Code: ASCII Str.
  index, underlying_isin_code = gpw_wse_marketinformation_xdp_v6_8.underlying_isin_code.dissect(buffer, index, packet, parent)

  -- Treasury Bond 1 Isin Code: ASCII Str.
  index, treasury_bond_1_isin_code = gpw_wse_marketinformation_xdp_v6_8.treasury_bond_1_isin_code.dissect(buffer, index, packet, parent)

  -- Conversion Coefficient Factor 1: ASCII Str.
  index, conversion_coefficient_factor_1 = gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_1.dissect(buffer, index, packet, parent)

  -- Treasury Bond 2 Isin Code: ASCII Str.
  index, treasury_bond_2_isin_code = gpw_wse_marketinformation_xdp_v6_8.treasury_bond_2_isin_code.dissect(buffer, index, packet, parent)

  -- Conversion Coefficient Factor 2: ASCII Str.
  index, conversion_coefficient_factor_2 = gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_2.dissect(buffer, index, packet, parent)

  -- Treasury Bond 3 Isin Code: ASCII Str.
  index, treasury_bond_3_isin_code = gpw_wse_marketinformation_xdp_v6_8.treasury_bond_3_isin_code.dissect(buffer, index, packet, parent)

  -- Conversion Coefficient Factor 3: ASCII Str.
  index, conversion_coefficient_factor_3 = gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_3.dissect(buffer, index, packet, parent)

  -- Treasury Bond 4 Isin Code: ASCII Str.
  index, treasury_bond_4_isin_code = gpw_wse_marketinformation_xdp_v6_8.treasury_bond_4_isin_code.dissect(buffer, index, packet, parent)

  -- Conversion Coefficient Factor 4: ASCII Str.
  index, conversion_coefficient_factor_4 = gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_4.dissect(buffer, index, packet, parent)

  -- Treasury Bond 5 Isin Code: ASCII Str.
  index, treasury_bond_5_isin_code = gpw_wse_marketinformation_xdp_v6_8.treasury_bond_5_isin_code.dissect(buffer, index, packet, parent)

  -- Conversion Coefficient Factor 5: ASCII Str.
  index, conversion_coefficient_factor_5 = gpw_wse_marketinformation_xdp_v6_8.conversion_coefficient_factor_5.dissect(buffer, index, packet, parent)

  -- Reserved 59: ASCII Str.
  index, reserved_59 = gpw_wse_marketinformation_xdp_v6_8.reserved_59.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Treasury Bond Futures Data
gpw_wse_marketinformation_xdp_v6_8.treasury_bond_futures_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.treasury_bond_futures_data, buffer(offset, 0))
    local index = gpw_wse_marketinformation_xdp_v6_8.treasury_bond_futures_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_marketinformation_xdp_v6_8.treasury_bond_futures_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_marketinformation_xdp_v6_8.treasury_bond_futures_data.fields(buffer, offset, packet, parent)
  end
end

-- Body Message
gpw_wse_marketinformation_xdp_v6_8.body_message = {}

-- Dispatch: Body Message
gpw_wse_marketinformation_xdp_v6_8.body_message.dispatch = {
  ["02"] = gpw_wse_marketinformation_xdp_v6_8.treasury_bond_futures_data.dissect,
  ["03"] = gpw_wse_marketinformation_xdp_v6_8.kid.dissect,
  ["04"] = gpw_wse_marketinformation_xdp_v6_8.market_conditions.dissect,
  ["05"] = gpw_wse_marketinformation_xdp_v6_8.market_conditions.dissect,
}

-- Dissect: Body Message
gpw_wse_marketinformation_xdp_v6_8.body_message.dissect = function(buffer, offset, packet, parent, internal_msg_type)
  local dissect = gpw_wse_marketinformation_xdp_v6_8.body_message.dispatch[internal_msg_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Generic Wse Message
gpw_wse_marketinformation_xdp_v6_8.generic_wse_message = {}

-- Calculate size of: Generic Wse Message
gpw_wse_marketinformation_xdp_v6_8.generic_wse_message.size = function(buffer, offset)
  local index = 0

  index = index + gpw_wse_marketinformation_xdp_v6_8.source_seq_num.size

  index = index + gpw_wse_marketinformation_xdp_v6_8.source_time.size

  index = index + gpw_wse_marketinformation_xdp_v6_8.system_id.size

  index = index + gpw_wse_marketinformation_xdp_v6_8.source_time_micro_secs.size

  index = index + gpw_wse_marketinformation_xdp_v6_8.source_data.size

  index = index + gpw_wse_marketinformation_xdp_v6_8.internal_msg_type.size

  index = index + gpw_wse_marketinformation_xdp_v6_8.event_date.size

  index = index + gpw_wse_marketinformation_xdp_v6_8.instrument_id.size

  index = index + gpw_wse_marketinformation_xdp_v6_8.instrument_group_code.size

  index = index + gpw_wse_marketinformation_xdp_v6_8.msg_type_indicator.size

  index = index + gpw_wse_marketinformation_xdp_v6_8.language_version.size

  index = index + gpw_wse_marketinformation_xdp_v6_8.type_off_recipient.size

  index = index + gpw_wse_marketinformation_xdp_v6_8.msg_serial_num.size

  -- Calculate runtime size of Body Message field
  local body_message_offset = offset + index
  local body_message_type = buffer(body_message_offset - 29, 2):string()
  index = index + gpw_wse_marketinformation_xdp_v6_8.body_message.size(buffer, body_message_offset, body_message_type)

  return index
end

-- Display: Generic Wse Message
gpw_wse_marketinformation_xdp_v6_8.generic_wse_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Generic Wse Message
gpw_wse_marketinformation_xdp_v6_8.generic_wse_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Seq Num: Binary Int.
  index, source_seq_num = gpw_wse_marketinformation_xdp_v6_8.source_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = gpw_wse_marketinformation_xdp_v6_8.source_time.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = gpw_wse_marketinformation_xdp_v6_8.system_id.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = gpw_wse_marketinformation_xdp_v6_8.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Source Data: ASCII Str.
  index, source_data = gpw_wse_marketinformation_xdp_v6_8.source_data.dissect(buffer, index, packet, parent)

  -- Internal Msg Type: ASCII Str.
  index, internal_msg_type = gpw_wse_marketinformation_xdp_v6_8.internal_msg_type.dissect(buffer, index, packet, parent)

  -- Event Date: ASCII Str.
  index, event_date = gpw_wse_marketinformation_xdp_v6_8.event_date.dissect(buffer, index, packet, parent)

  -- Instrument Id: ASCII Str.
  index, instrument_id = gpw_wse_marketinformation_xdp_v6_8.instrument_id.dissect(buffer, index, packet, parent)

  -- Instrument Group Code: ASCII Str.
  index, instrument_group_code = gpw_wse_marketinformation_xdp_v6_8.instrument_group_code.dissect(buffer, index, packet, parent)

  -- Msg Type Indicator: ASCII Str.
  index, msg_type_indicator = gpw_wse_marketinformation_xdp_v6_8.msg_type_indicator.dissect(buffer, index, packet, parent)

  -- Language Version: ASCII Str.
  index, language_version = gpw_wse_marketinformation_xdp_v6_8.language_version.dissect(buffer, index, packet, parent)

  -- Type Off Recipient: ASCII Str.
  index, type_off_recipient = gpw_wse_marketinformation_xdp_v6_8.type_off_recipient.dissect(buffer, index, packet, parent)

  -- Msg Serial Num: ASCII Str.
  index, msg_serial_num = gpw_wse_marketinformation_xdp_v6_8.msg_serial_num.dissect(buffer, index, packet, parent)

  -- Body Message: Runtime Type with 3 branches
  index = gpw_wse_marketinformation_xdp_v6_8.body_message.dissect(buffer, index, packet, parent, internal_msg_type)

  return index
end

-- Dissect: Generic Wse Message
gpw_wse_marketinformation_xdp_v6_8.generic_wse_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.generic_wse_message, buffer(offset, 0))
    local index = gpw_wse_marketinformation_xdp_v6_8.generic_wse_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_marketinformation_xdp_v6_8.generic_wse_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_marketinformation_xdp_v6_8.generic_wse_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Sale Change Message
gpw_wse_marketinformation_xdp_v6_8.short_sale_change_message = {}

-- Size: Short Sale Change Message
gpw_wse_marketinformation_xdp_v6_8.short_sale_change_message.size =
  gpw_wse_marketinformation_xdp_v6_8.symbol_index.size + 
  gpw_wse_marketinformation_xdp_v6_8.source_seq_num.size + 
  gpw_wse_marketinformation_xdp_v6_8.source_time.size + 
  gpw_wse_marketinformation_xdp_v6_8.system_id.size + 
  gpw_wse_marketinformation_xdp_v6_8.source_time_micro_secs.size + 
  gpw_wse_marketinformation_xdp_v6_8.text_ascii_ch_100.size + 
  gpw_wse_marketinformation_xdp_v6_8.authority.size + 
  gpw_wse_marketinformation_xdp_v6_8.ss_market_maker.size + 
  gpw_wse_marketinformation_xdp_v6_8.ss_non_market_maker.size + 
  gpw_wse_marketinformation_xdp_v6_8.reserved_3.size

-- Display: Short Sale Change Message
gpw_wse_marketinformation_xdp_v6_8.short_sale_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Sale Change Message
gpw_wse_marketinformation_xdp_v6_8.short_sale_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = gpw_wse_marketinformation_xdp_v6_8.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = gpw_wse_marketinformation_xdp_v6_8.source_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = gpw_wse_marketinformation_xdp_v6_8.source_time.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = gpw_wse_marketinformation_xdp_v6_8.system_id.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = gpw_wse_marketinformation_xdp_v6_8.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Text Ascii Ch 100: ASCII Ch.
  index, text_ascii_ch_100 = gpw_wse_marketinformation_xdp_v6_8.text_ascii_ch_100.dissect(buffer, index, packet, parent)

  -- Authority: ASCII Ch.
  index, authority = gpw_wse_marketinformation_xdp_v6_8.authority.dissect(buffer, index, packet, parent)

  -- Ss Market Maker: ASCII Ch.
  index, ss_market_maker = gpw_wse_marketinformation_xdp_v6_8.ss_market_maker.dissect(buffer, index, packet, parent)

  -- Ss Non Market Maker: ASCII Ch.
  index, ss_non_market_maker = gpw_wse_marketinformation_xdp_v6_8.ss_non_market_maker.dissect(buffer, index, packet, parent)

  -- Reserved 3: Binary Int.
  index, reserved_3 = gpw_wse_marketinformation_xdp_v6_8.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Sale Change Message
gpw_wse_marketinformation_xdp_v6_8.short_sale_change_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.short_sale_change_message, buffer(offset, 0))
    local index = gpw_wse_marketinformation_xdp_v6_8.short_sale_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_marketinformation_xdp_v6_8.short_sale_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_marketinformation_xdp_v6_8.short_sale_change_message.fields(buffer, offset, packet, parent)
  end
end

-- Indicative Matching Price Message
gpw_wse_marketinformation_xdp_v6_8.indicative_matching_price_message = {}

-- Size: Indicative Matching Price Message
gpw_wse_marketinformation_xdp_v6_8.indicative_matching_price_message.size =
  gpw_wse_marketinformation_xdp_v6_8.symbol_index.size + 
  gpw_wse_marketinformation_xdp_v6_8.source_seq_num.size + 
  gpw_wse_marketinformation_xdp_v6_8.source_time.size + 
  gpw_wse_marketinformation_xdp_v6_8.im_price.size + 
  gpw_wse_marketinformation_xdp_v6_8.variation.size + 
  gpw_wse_marketinformation_xdp_v6_8.system_id.size + 
  gpw_wse_marketinformation_xdp_v6_8.source_time_micro_secs.size + 
  gpw_wse_marketinformation_xdp_v6_8.price_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.variation_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.im_volume.size

-- Display: Indicative Matching Price Message
gpw_wse_marketinformation_xdp_v6_8.indicative_matching_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indicative Matching Price Message
gpw_wse_marketinformation_xdp_v6_8.indicative_matching_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = gpw_wse_marketinformation_xdp_v6_8.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = gpw_wse_marketinformation_xdp_v6_8.source_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = gpw_wse_marketinformation_xdp_v6_8.source_time.dissect(buffer, index, packet, parent)

  -- Im Price: Binary Int.
  index, im_price = gpw_wse_marketinformation_xdp_v6_8.im_price.dissect(buffer, index, packet, parent)

  -- Variation: Binary Int.
  index, variation = gpw_wse_marketinformation_xdp_v6_8.variation.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = gpw_wse_marketinformation_xdp_v6_8.system_id.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = gpw_wse_marketinformation_xdp_v6_8.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary Int.
  index, price_scale_code = gpw_wse_marketinformation_xdp_v6_8.price_scale_code.dissect(buffer, index, packet, parent)

  -- Variation Scale Code: Binary Int.
  index, variation_scale_code = gpw_wse_marketinformation_xdp_v6_8.variation_scale_code.dissect(buffer, index, packet, parent)

  -- Im Volume: Binary Int.
  index, im_volume = gpw_wse_marketinformation_xdp_v6_8.im_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Indicative Matching Price Message
gpw_wse_marketinformation_xdp_v6_8.indicative_matching_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.indicative_matching_price_message, buffer(offset, 0))
    local index = gpw_wse_marketinformation_xdp_v6_8.indicative_matching_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_marketinformation_xdp_v6_8.indicative_matching_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_marketinformation_xdp_v6_8.indicative_matching_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument State Change Message
gpw_wse_marketinformation_xdp_v6_8.instrument_state_change_message = {}

-- Size: Instrument State Change Message
gpw_wse_marketinformation_xdp_v6_8.instrument_state_change_message.size =
  gpw_wse_marketinformation_xdp_v6_8.symbol_index.size + 
  gpw_wse_marketinformation_xdp_v6_8.source_seq_num.size + 
  gpw_wse_marketinformation_xdp_v6_8.source_time.size + 
  gpw_wse_marketinformation_xdp_v6_8.system_id.size + 
  gpw_wse_marketinformation_xdp_v6_8.source_time_micro_secs.size + 
  gpw_wse_marketinformation_xdp_v6_8.reserved_2.size + 
  gpw_wse_marketinformation_xdp_v6_8.start_date_halting.size + 
  gpw_wse_marketinformation_xdp_v6_8.start_time_halting.size + 
  gpw_wse_marketinformation_xdp_v6_8.prog_opening_time.size + 
  gpw_wse_marketinformation_xdp_v6_8.order_entry_rejection.size + 
  gpw_wse_marketinformation_xdp_v6_8.instrument_state.size + 
  gpw_wse_marketinformation_xdp_v6_8.instrument_trading_status.size + 
  gpw_wse_marketinformation_xdp_v6_8.halt_reason.size + 
  gpw_wse_marketinformation_xdp_v6_8.action_affecting_state.size + 
  gpw_wse_marketinformation_xdp_v6_8.instrument_state_tcs.size + 
  gpw_wse_marketinformation_xdp_v6_8.period_side.size + 
  gpw_wse_marketinformation_xdp_v6_8.reserved_1.size

-- Display: Instrument State Change Message
gpw_wse_marketinformation_xdp_v6_8.instrument_state_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument State Change Message
gpw_wse_marketinformation_xdp_v6_8.instrument_state_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = gpw_wse_marketinformation_xdp_v6_8.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = gpw_wse_marketinformation_xdp_v6_8.source_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = gpw_wse_marketinformation_xdp_v6_8.source_time.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = gpw_wse_marketinformation_xdp_v6_8.system_id.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = gpw_wse_marketinformation_xdp_v6_8.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Reserved 2: Binary Int.
  index, reserved_2 = gpw_wse_marketinformation_xdp_v6_8.reserved_2.dissect(buffer, index, packet, parent)

  -- Start Date Halting: ASCII Str.
  index, start_date_halting = gpw_wse_marketinformation_xdp_v6_8.start_date_halting.dissect(buffer, index, packet, parent)

  -- Start Time Halting: ASCII Str.
  index, start_time_halting = gpw_wse_marketinformation_xdp_v6_8.start_time_halting.dissect(buffer, index, packet, parent)

  -- Prog Opening Time: ASCII Str.
  index, prog_opening_time = gpw_wse_marketinformation_xdp_v6_8.prog_opening_time.dissect(buffer, index, packet, parent)

  -- Order Entry Rejection: ASCII Ch.
  index, order_entry_rejection = gpw_wse_marketinformation_xdp_v6_8.order_entry_rejection.dissect(buffer, index, packet, parent)

  -- Instrument State: ASCII Ch.
  index, instrument_state = gpw_wse_marketinformation_xdp_v6_8.instrument_state.dissect(buffer, index, packet, parent)

  -- Instrument Trading Status: ASCII Ch.
  index, instrument_trading_status = gpw_wse_marketinformation_xdp_v6_8.instrument_trading_status.dissect(buffer, index, packet, parent)

  -- Halt Reason: ASCII Ch.
  index, halt_reason = gpw_wse_marketinformation_xdp_v6_8.halt_reason.dissect(buffer, index, packet, parent)

  -- Action Affecting State: ASCII Ch.
  index, action_affecting_state = gpw_wse_marketinformation_xdp_v6_8.action_affecting_state.dissect(buffer, index, packet, parent)

  -- Instrument State Tcs: ASCII Ch.
  index, instrument_state_tcs = gpw_wse_marketinformation_xdp_v6_8.instrument_state_tcs.dissect(buffer, index, packet, parent)

  -- Period Side: ASCII Ch.
  index, period_side = gpw_wse_marketinformation_xdp_v6_8.period_side.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary Int.
  index, reserved_1 = gpw_wse_marketinformation_xdp_v6_8.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument State Change Message
gpw_wse_marketinformation_xdp_v6_8.instrument_state_change_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.instrument_state_change_message, buffer(offset, 0))
    local index = gpw_wse_marketinformation_xdp_v6_8.instrument_state_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_marketinformation_xdp_v6_8.instrument_state_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_marketinformation_xdp_v6_8.instrument_state_change_message.fields(buffer, offset, packet, parent)
  end
end

-- Session Summary Message
gpw_wse_marketinformation_xdp_v6_8.session_summary_message = {}

-- Size: Session Summary Message
gpw_wse_marketinformation_xdp_v6_8.session_summary_message.size =
  gpw_wse_marketinformation_xdp_v6_8.symbol_index.size + 
  gpw_wse_marketinformation_xdp_v6_8.source_time.size + 
  gpw_wse_marketinformation_xdp_v6_8.source_seq_num.size + 
  gpw_wse_marketinformation_xdp_v6_8.date_binary_int_4.size + 
  gpw_wse_marketinformation_xdp_v6_8.multiplier.size + 
  gpw_wse_marketinformation_xdp_v6_8.accumulated_interest.size + 
  gpw_wse_marketinformation_xdp_v6_8.opening_price.size + 
  gpw_wse_marketinformation_xdp_v6_8.maximum_price.size + 
  gpw_wse_marketinformation_xdp_v6_8.minimum_price.size + 
  gpw_wse_marketinformation_xdp_v6_8.closing_price.size + 
  gpw_wse_marketinformation_xdp_v6_8.implied_volatility.size + 
  gpw_wse_marketinformation_xdp_v6_8.average_weighted_price.size + 
  gpw_wse_marketinformation_xdp_v6_8.reference_price.size + 
  gpw_wse_marketinformation_xdp_v6_8.pct_change_price.size + 
  gpw_wse_marketinformation_xdp_v6_8.dividend_rate.size + 
  gpw_wse_marketinformation_xdp_v6_8.settlement_price.size + 
  gpw_wse_marketinformation_xdp_v6_8.settlement_value.size + 
  gpw_wse_marketinformation_xdp_v6_8.reserved_4.size + 
  gpw_wse_marketinformation_xdp_v6_8.open_positions.size + 
  gpw_wse_marketinformation_xdp_v6_8.trading_volume.size + 
  gpw_wse_marketinformation_xdp_v6_8.transactions_number.size + 
  gpw_wse_marketinformation_xdp_v6_8.trading_value.size + 
  gpw_wse_marketinformation_xdp_v6_8.currency_price.size + 
  gpw_wse_marketinformation_xdp_v6_8.delta.size + 
  gpw_wse_marketinformation_xdp_v6_8.gamma.size + 
  gpw_wse_marketinformation_xdp_v6_8.rho.size + 
  gpw_wse_marketinformation_xdp_v6_8.theta.size + 
  gpw_wse_marketinformation_xdp_v6_8.vega.size + 
  gpw_wse_marketinformation_xdp_v6_8.end_trading.size + 
  gpw_wse_marketinformation_xdp_v6_8.number_of_instruments.size + 
  gpw_wse_marketinformation_xdp_v6_8.trading_value_currency.size + 
  gpw_wse_marketinformation_xdp_v6_8.interest_rate.size + 
  gpw_wse_marketinformation_xdp_v6_8.volatility.size + 
  gpw_wse_marketinformation_xdp_v6_8.strike_price.size + 
  gpw_wse_marketinformation_xdp_v6_8.short_selling_trades_number.size + 
  gpw_wse_marketinformation_xdp_v6_8.volume_short_selling_trades.size + 
  gpw_wse_marketinformation_xdp_v6_8.value_short_selling_trades.size + 
  gpw_wse_marketinformation_xdp_v6_8.last_trade_date.size + 
  gpw_wse_marketinformation_xdp_v6_8.last_trade_price.size + 
  gpw_wse_marketinformation_xdp_v6_8.block_trades_number.size + 
  gpw_wse_marketinformation_xdp_v6_8.volume_block_trades.size + 
  gpw_wse_marketinformation_xdp_v6_8.value_block_trades.size + 
  gpw_wse_marketinformation_xdp_v6_8.vwap_blocktrade.size + 
  gpw_wse_marketinformation_xdp_v6_8.maximum_block_price.size + 
  gpw_wse_marketinformation_xdp_v6_8.minimum_block_price.size + 
  gpw_wse_marketinformation_xdp_v6_8.system_id.size + 
  gpw_wse_marketinformation_xdp_v6_8.source_time_micro_secs.size + 
  gpw_wse_marketinformation_xdp_v6_8.multiplier_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.accumulated_interest_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.opening_price_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.maximum_price_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.minimum_price_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.closing_price_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.implied_volatility_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.average_weighted_price_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.reference_price_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.pct_change_price_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.dividend_rate_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.settlement_price_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.settlement_value_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.reserved_1.size + 
  gpw_wse_marketinformation_xdp_v6_8.trading_value_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.currency_price_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.delta_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.gamma_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.rho_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.theta_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.vega_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.trading_value_currency_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.interest_rate_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.volatility_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.strike_price_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.value_short_selling_trades_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.last_trade_price_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.value_block_trades_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.vwap_blocktrade_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.maximum_block_price_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.minimum_block_price_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.status_indicator.size + 
  gpw_wse_marketinformation_xdp_v6_8.sector.size + 
  gpw_wse_marketinformation_xdp_v6_8.market.size + 
  gpw_wse_marketinformation_xdp_v6_8.second_reserved_1.size + 
  gpw_wse_marketinformation_xdp_v6_8.short_sale.size + 
  gpw_wse_marketinformation_xdp_v6_8.marker_pct_change_price.size + 
  gpw_wse_marketinformation_xdp_v6_8.symbol_delta.size + 
  gpw_wse_marketinformation_xdp_v6_8.symbol_gamma.size + 
  gpw_wse_marketinformation_xdp_v6_8.symbol_rho.size + 
  gpw_wse_marketinformation_xdp_v6_8.symbol_theta.size + 
  gpw_wse_marketinformation_xdp_v6_8.symbol_vega.size + 
  gpw_wse_marketinformation_xdp_v6_8.third_reserved_1.size + 
  gpw_wse_marketinformation_xdp_v6_8.fourth_reserved_1.size + 
  gpw_wse_marketinformation_xdp_v6_8.fifth_reserved_1.size + 
  gpw_wse_marketinformation_xdp_v6_8.sixth_reserved_1.size + 
  gpw_wse_marketinformation_xdp_v6_8.seventh_reserved_1.size + 
  gpw_wse_marketinformation_xdp_v6_8.eighth_reserved_1.size + 
  gpw_wse_marketinformation_xdp_v6_8.segment.size + 
  gpw_wse_marketinformation_xdp_v6_8.lower_liquidity.size + 
  gpw_wse_marketinformation_xdp_v6_8.dividend.size + 
  gpw_wse_marketinformation_xdp_v6_8.subscription_right.size + 
  gpw_wse_marketinformation_xdp_v6_8.split.size + 
  gpw_wse_marketinformation_xdp_v6_8.interim_dividend_right.size + 
  gpw_wse_marketinformation_xdp_v6_8.quotation_system.size + 
  gpw_wse_marketinformation_xdp_v6_8.liquidity_support_pge.size + 
  gpw_wse_marketinformation_xdp_v6_8.ninth_reserved_1.size

-- Display: Session Summary Message
gpw_wse_marketinformation_xdp_v6_8.session_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Session Summary Message
gpw_wse_marketinformation_xdp_v6_8.session_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = gpw_wse_marketinformation_xdp_v6_8.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = gpw_wse_marketinformation_xdp_v6_8.source_time.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = gpw_wse_marketinformation_xdp_v6_8.source_seq_num.dissect(buffer, index, packet, parent)

  -- Date Binary Int 4: Binary Int.
  index, date_binary_int_4 = gpw_wse_marketinformation_xdp_v6_8.date_binary_int_4.dissect(buffer, index, packet, parent)

  -- Multiplier: Binary Int.
  index, multiplier = gpw_wse_marketinformation_xdp_v6_8.multiplier.dissect(buffer, index, packet, parent)

  -- Accumulated Interest: Binary Int.
  index, accumulated_interest = gpw_wse_marketinformation_xdp_v6_8.accumulated_interest.dissect(buffer, index, packet, parent)

  -- Opening Price: Binary Int.
  index, opening_price = gpw_wse_marketinformation_xdp_v6_8.opening_price.dissect(buffer, index, packet, parent)

  -- Maximum Price: Binary Int.
  index, maximum_price = gpw_wse_marketinformation_xdp_v6_8.maximum_price.dissect(buffer, index, packet, parent)

  -- Minimum Price: Binary Int.
  index, minimum_price = gpw_wse_marketinformation_xdp_v6_8.minimum_price.dissect(buffer, index, packet, parent)

  -- Closing Price: Binary Int.
  index, closing_price = gpw_wse_marketinformation_xdp_v6_8.closing_price.dissect(buffer, index, packet, parent)

  -- Implied Volatility: Binary Int.
  index, implied_volatility = gpw_wse_marketinformation_xdp_v6_8.implied_volatility.dissect(buffer, index, packet, parent)

  -- Average Weighted Price: Binary Int.
  index, average_weighted_price = gpw_wse_marketinformation_xdp_v6_8.average_weighted_price.dissect(buffer, index, packet, parent)

  -- Reference Price: Binary Int.
  index, reference_price = gpw_wse_marketinformation_xdp_v6_8.reference_price.dissect(buffer, index, packet, parent)

  -- Pct Change Price: Binary Int.
  index, pct_change_price = gpw_wse_marketinformation_xdp_v6_8.pct_change_price.dissect(buffer, index, packet, parent)

  -- Dividend Rate: Binary Int.
  index, dividend_rate = gpw_wse_marketinformation_xdp_v6_8.dividend_rate.dissect(buffer, index, packet, parent)

  -- Settlement Price: Binary Int.
  index, settlement_price = gpw_wse_marketinformation_xdp_v6_8.settlement_price.dissect(buffer, index, packet, parent)

  -- Settlement Value: Binary Int.
  index, settlement_value = gpw_wse_marketinformation_xdp_v6_8.settlement_value.dissect(buffer, index, packet, parent)

  -- Reserved 4: Binary Int.
  index, reserved_4 = gpw_wse_marketinformation_xdp_v6_8.reserved_4.dissect(buffer, index, packet, parent)

  -- Open Positions: Binary Int.
  index, open_positions = gpw_wse_marketinformation_xdp_v6_8.open_positions.dissect(buffer, index, packet, parent)

  -- Trading Volume: Binary Int.
  index, trading_volume = gpw_wse_marketinformation_xdp_v6_8.trading_volume.dissect(buffer, index, packet, parent)

  -- Transactions Number: Binary Int.
  index, transactions_number = gpw_wse_marketinformation_xdp_v6_8.transactions_number.dissect(buffer, index, packet, parent)

  -- Trading Value: Binary Int.
  index, trading_value = gpw_wse_marketinformation_xdp_v6_8.trading_value.dissect(buffer, index, packet, parent)

  -- Currency Price: Binary Int.
  index, currency_price = gpw_wse_marketinformation_xdp_v6_8.currency_price.dissect(buffer, index, packet, parent)

  -- Delta: Binary Int.
  index, delta = gpw_wse_marketinformation_xdp_v6_8.delta.dissect(buffer, index, packet, parent)

  -- Gamma: Binary Int.
  index, gamma = gpw_wse_marketinformation_xdp_v6_8.gamma.dissect(buffer, index, packet, parent)

  -- Rho: Binary Int.
  index, rho = gpw_wse_marketinformation_xdp_v6_8.rho.dissect(buffer, index, packet, parent)

  -- Theta: Binary Int.
  index, theta = gpw_wse_marketinformation_xdp_v6_8.theta.dissect(buffer, index, packet, parent)

  -- Vega: Binary Int.
  index, vega = gpw_wse_marketinformation_xdp_v6_8.vega.dissect(buffer, index, packet, parent)

  -- End Trading: Binary Int.
  index, end_trading = gpw_wse_marketinformation_xdp_v6_8.end_trading.dissect(buffer, index, packet, parent)

  -- Number Of Instruments: Binary Int.
  index, number_of_instruments = gpw_wse_marketinformation_xdp_v6_8.number_of_instruments.dissect(buffer, index, packet, parent)

  -- Trading Value Currency: Binary Int.
  index, trading_value_currency = gpw_wse_marketinformation_xdp_v6_8.trading_value_currency.dissect(buffer, index, packet, parent)

  -- Interest Rate: Binary Int.
  index, interest_rate = gpw_wse_marketinformation_xdp_v6_8.interest_rate.dissect(buffer, index, packet, parent)

  -- Volatility: Binary Int.
  index, volatility = gpw_wse_marketinformation_xdp_v6_8.volatility.dissect(buffer, index, packet, parent)

  -- Strike Price: Binary Int.
  index, strike_price = gpw_wse_marketinformation_xdp_v6_8.strike_price.dissect(buffer, index, packet, parent)

  -- Short Selling Trades Number: Binary Int.
  index, short_selling_trades_number = gpw_wse_marketinformation_xdp_v6_8.short_selling_trades_number.dissect(buffer, index, packet, parent)

  -- Volume Short Selling Trades: Binary Int.
  index, volume_short_selling_trades = gpw_wse_marketinformation_xdp_v6_8.volume_short_selling_trades.dissect(buffer, index, packet, parent)

  -- Value Short Selling Trades: Binary Int.
  index, value_short_selling_trades = gpw_wse_marketinformation_xdp_v6_8.value_short_selling_trades.dissect(buffer, index, packet, parent)

  -- Last Trade Date: Binary Int.
  index, last_trade_date = gpw_wse_marketinformation_xdp_v6_8.last_trade_date.dissect(buffer, index, packet, parent)

  -- Last Trade Price: Binary Int.
  index, last_trade_price = gpw_wse_marketinformation_xdp_v6_8.last_trade_price.dissect(buffer, index, packet, parent)

  -- Block Trades Number: Binary Int.
  index, block_trades_number = gpw_wse_marketinformation_xdp_v6_8.block_trades_number.dissect(buffer, index, packet, parent)

  -- Volume Block Trades: Binary Int.
  index, volume_block_trades = gpw_wse_marketinformation_xdp_v6_8.volume_block_trades.dissect(buffer, index, packet, parent)

  -- Value Block Trades: Binary Int.
  index, value_block_trades = gpw_wse_marketinformation_xdp_v6_8.value_block_trades.dissect(buffer, index, packet, parent)

  -- Vwap Blocktrade: Binary Int.
  index, vwap_blocktrade = gpw_wse_marketinformation_xdp_v6_8.vwap_blocktrade.dissect(buffer, index, packet, parent)

  -- Maximum Block Price: Binary Int.
  index, maximum_block_price = gpw_wse_marketinformation_xdp_v6_8.maximum_block_price.dissect(buffer, index, packet, parent)

  -- Minimum Block Price: Binary Int.
  index, minimum_block_price = gpw_wse_marketinformation_xdp_v6_8.minimum_block_price.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = gpw_wse_marketinformation_xdp_v6_8.system_id.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = gpw_wse_marketinformation_xdp_v6_8.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Multiplier Scale Code: Binary Int.
  index, multiplier_scale_code = gpw_wse_marketinformation_xdp_v6_8.multiplier_scale_code.dissect(buffer, index, packet, parent)

  -- Accumulated Interest Scale Code: Binary Int.
  index, accumulated_interest_scale_code = gpw_wse_marketinformation_xdp_v6_8.accumulated_interest_scale_code.dissect(buffer, index, packet, parent)

  -- Opening Price Scale Code: Binary Int.
  index, opening_price_scale_code = gpw_wse_marketinformation_xdp_v6_8.opening_price_scale_code.dissect(buffer, index, packet, parent)

  -- Maximum Price Scale Code: Binary Int.
  index, maximum_price_scale_code = gpw_wse_marketinformation_xdp_v6_8.maximum_price_scale_code.dissect(buffer, index, packet, parent)

  -- Minimum Price Scale Code: Binary Int.
  index, minimum_price_scale_code = gpw_wse_marketinformation_xdp_v6_8.minimum_price_scale_code.dissect(buffer, index, packet, parent)

  -- Closing Price Scale Code: Binary Int.
  index, closing_price_scale_code = gpw_wse_marketinformation_xdp_v6_8.closing_price_scale_code.dissect(buffer, index, packet, parent)

  -- Implied Volatility Scale Code: Binary Int.
  index, implied_volatility_scale_code = gpw_wse_marketinformation_xdp_v6_8.implied_volatility_scale_code.dissect(buffer, index, packet, parent)

  -- Average Weighted Price Scale Code: Binary Int.
  index, average_weighted_price_scale_code = gpw_wse_marketinformation_xdp_v6_8.average_weighted_price_scale_code.dissect(buffer, index, packet, parent)

  -- Reference Price Scale Code: Binary Int.
  index, reference_price_scale_code = gpw_wse_marketinformation_xdp_v6_8.reference_price_scale_code.dissect(buffer, index, packet, parent)

  -- Pct Change Price Scale Code: Binary Int.
  index, pct_change_price_scale_code = gpw_wse_marketinformation_xdp_v6_8.pct_change_price_scale_code.dissect(buffer, index, packet, parent)

  -- Dividend Rate Scale Code: Binary Int.
  index, dividend_rate_scale_code = gpw_wse_marketinformation_xdp_v6_8.dividend_rate_scale_code.dissect(buffer, index, packet, parent)

  -- Settlement Price Scale Code: Binary Int.
  index, settlement_price_scale_code = gpw_wse_marketinformation_xdp_v6_8.settlement_price_scale_code.dissect(buffer, index, packet, parent)

  -- Settlement Value Scale Code: Binary Int.
  index, settlement_value_scale_code = gpw_wse_marketinformation_xdp_v6_8.settlement_value_scale_code.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary Int.
  index, reserved_1 = gpw_wse_marketinformation_xdp_v6_8.reserved_1.dissect(buffer, index, packet, parent)

  -- Trading Value Scale Code: Binary Int.
  index, trading_value_scale_code = gpw_wse_marketinformation_xdp_v6_8.trading_value_scale_code.dissect(buffer, index, packet, parent)

  -- Currency Price Scale Code: Binary Int.
  index, currency_price_scale_code = gpw_wse_marketinformation_xdp_v6_8.currency_price_scale_code.dissect(buffer, index, packet, parent)

  -- Delta Scale Code: Binary Int.
  index, delta_scale_code = gpw_wse_marketinformation_xdp_v6_8.delta_scale_code.dissect(buffer, index, packet, parent)

  -- Gamma Scale Code: Binary Int.
  index, gamma_scale_code = gpw_wse_marketinformation_xdp_v6_8.gamma_scale_code.dissect(buffer, index, packet, parent)

  -- Rho Scale Code: Binary Int.
  index, rho_scale_code = gpw_wse_marketinformation_xdp_v6_8.rho_scale_code.dissect(buffer, index, packet, parent)

  -- Theta Scale Code: Binary Int.
  index, theta_scale_code = gpw_wse_marketinformation_xdp_v6_8.theta_scale_code.dissect(buffer, index, packet, parent)

  -- Vega Scale Code: Binary Int.
  index, vega_scale_code = gpw_wse_marketinformation_xdp_v6_8.vega_scale_code.dissect(buffer, index, packet, parent)

  -- Trading Value Currency Scale Code: Binary Int.
  index, trading_value_currency_scale_code = gpw_wse_marketinformation_xdp_v6_8.trading_value_currency_scale_code.dissect(buffer, index, packet, parent)

  -- Interest Rate Scale Code: Binary Int.
  index, interest_rate_scale_code = gpw_wse_marketinformation_xdp_v6_8.interest_rate_scale_code.dissect(buffer, index, packet, parent)

  -- Volatility Scale Code: Binary Int.
  index, volatility_scale_code = gpw_wse_marketinformation_xdp_v6_8.volatility_scale_code.dissect(buffer, index, packet, parent)

  -- Strike Price Scale Code: Binary Int.
  index, strike_price_scale_code = gpw_wse_marketinformation_xdp_v6_8.strike_price_scale_code.dissect(buffer, index, packet, parent)

  -- Value Short Selling Trades Scale Code: Binary Int.
  index, value_short_selling_trades_scale_code = gpw_wse_marketinformation_xdp_v6_8.value_short_selling_trades_scale_code.dissect(buffer, index, packet, parent)

  -- Last Trade Price Scale Code: Binary Int.
  index, last_trade_price_scale_code = gpw_wse_marketinformation_xdp_v6_8.last_trade_price_scale_code.dissect(buffer, index, packet, parent)

  -- Value Block Trades Scale Code: Binary Int.
  index, value_block_trades_scale_code = gpw_wse_marketinformation_xdp_v6_8.value_block_trades_scale_code.dissect(buffer, index, packet, parent)

  -- Vwap Blocktrade Scale Code: Binary Int.
  index, vwap_blocktrade_scale_code = gpw_wse_marketinformation_xdp_v6_8.vwap_blocktrade_scale_code.dissect(buffer, index, packet, parent)

  -- Maximum Block Price Scale Code: Binary Int.
  index, maximum_block_price_scale_code = gpw_wse_marketinformation_xdp_v6_8.maximum_block_price_scale_code.dissect(buffer, index, packet, parent)

  -- Minimum Block Price Scale Code: Binary Int.
  index, minimum_block_price_scale_code = gpw_wse_marketinformation_xdp_v6_8.minimum_block_price_scale_code.dissect(buffer, index, packet, parent)

  -- Status Indicator: ASCII Str.
  index, status_indicator = gpw_wse_marketinformation_xdp_v6_8.status_indicator.dissect(buffer, index, packet, parent)

  -- Sector: ASCII Str.
  index, sector = gpw_wse_marketinformation_xdp_v6_8.sector.dissect(buffer, index, packet, parent)

  -- Market: ASCII Str.
  index, market = gpw_wse_marketinformation_xdp_v6_8.market.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: Binary Int.
  index, second_reserved_1 = gpw_wse_marketinformation_xdp_v6_8.second_reserved_1.dissect(buffer, index, packet, parent)

  -- Short Sale: ASCII Str.
  index, short_sale = gpw_wse_marketinformation_xdp_v6_8.short_sale.dissect(buffer, index, packet, parent)

  -- Marker Pct Change Price: ASCII Str.
  index, marker_pct_change_price = gpw_wse_marketinformation_xdp_v6_8.marker_pct_change_price.dissect(buffer, index, packet, parent)

  -- Symbol Delta: ASCII Str.
  index, symbol_delta = gpw_wse_marketinformation_xdp_v6_8.symbol_delta.dissect(buffer, index, packet, parent)

  -- Symbol Gamma: ASCII Str.
  index, symbol_gamma = gpw_wse_marketinformation_xdp_v6_8.symbol_gamma.dissect(buffer, index, packet, parent)

  -- Symbol Rho: ASCII Str.
  index, symbol_rho = gpw_wse_marketinformation_xdp_v6_8.symbol_rho.dissect(buffer, index, packet, parent)

  -- Symbol Theta: ASCII Str.
  index, symbol_theta = gpw_wse_marketinformation_xdp_v6_8.symbol_theta.dissect(buffer, index, packet, parent)

  -- Symbol Vega: ASCII Str.
  index, symbol_vega = gpw_wse_marketinformation_xdp_v6_8.symbol_vega.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: Binary Int.
  index, third_reserved_1 = gpw_wse_marketinformation_xdp_v6_8.third_reserved_1.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: Binary Int.
  index, fourth_reserved_1 = gpw_wse_marketinformation_xdp_v6_8.fourth_reserved_1.dissect(buffer, index, packet, parent)

  -- Fifth Reserved 1: Binary Int.
  index, fifth_reserved_1 = gpw_wse_marketinformation_xdp_v6_8.fifth_reserved_1.dissect(buffer, index, packet, parent)

  -- Sixth Reserved 1: Binary Int.
  index, sixth_reserved_1 = gpw_wse_marketinformation_xdp_v6_8.sixth_reserved_1.dissect(buffer, index, packet, parent)

  -- Seventh Reserved 1: Binary Int.
  index, seventh_reserved_1 = gpw_wse_marketinformation_xdp_v6_8.seventh_reserved_1.dissect(buffer, index, packet, parent)

  -- Eighth Reserved 1: Binary Int.
  index, eighth_reserved_1 = gpw_wse_marketinformation_xdp_v6_8.eighth_reserved_1.dissect(buffer, index, packet, parent)

  -- Segment: ASCII Str.
  index, segment = gpw_wse_marketinformation_xdp_v6_8.segment.dissect(buffer, index, packet, parent)

  -- Lower Liquidity: ASCII Str.
  index, lower_liquidity = gpw_wse_marketinformation_xdp_v6_8.lower_liquidity.dissect(buffer, index, packet, parent)

  -- Dividend: ASCII Str.
  index, dividend = gpw_wse_marketinformation_xdp_v6_8.dividend.dissect(buffer, index, packet, parent)

  -- Subscription Right: ASCII Str.
  index, subscription_right = gpw_wse_marketinformation_xdp_v6_8.subscription_right.dissect(buffer, index, packet, parent)

  -- Split: ASCII Str.
  index, split = gpw_wse_marketinformation_xdp_v6_8.split.dissect(buffer, index, packet, parent)

  -- Interim Dividend Right: ASCII Str.
  index, interim_dividend_right = gpw_wse_marketinformation_xdp_v6_8.interim_dividend_right.dissect(buffer, index, packet, parent)

  -- Quotation System: ASCII Str.
  index, quotation_system = gpw_wse_marketinformation_xdp_v6_8.quotation_system.dissect(buffer, index, packet, parent)

  -- Liquidity Support Pge: ASCII Str.
  index, liquidity_support_pge = gpw_wse_marketinformation_xdp_v6_8.liquidity_support_pge.dissect(buffer, index, packet, parent)

  -- Ninth Reserved 1: Binary Int.
  index, ninth_reserved_1 = gpw_wse_marketinformation_xdp_v6_8.ninth_reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Session Summary Message
gpw_wse_marketinformation_xdp_v6_8.session_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.session_summary_message, buffer(offset, 0))
    local index = gpw_wse_marketinformation_xdp_v6_8.session_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_marketinformation_xdp_v6_8.session_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_marketinformation_xdp_v6_8.session_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Depositary List
gpw_wse_marketinformation_xdp_v6_8.depositary_list = {}

-- Size: Depositary List
gpw_wse_marketinformation_xdp_v6_8.depositary_list.size =
  gpw_wse_marketinformation_xdp_v6_8.depositary.size

-- Display: Depositary List
gpw_wse_marketinformation_xdp_v6_8.depositary_list.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Depositary List
gpw_wse_marketinformation_xdp_v6_8.depositary_list.fields = function(buffer, offset, packet, parent, depositary_list_index)
  local index = offset

  -- Implicit Depositary List Index
  if depositary_list_index ~= nil and show.indexes then
    local iteration = parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.depositary_list_index, depositary_list_index)
    iteration:set_generated()
  end

  -- Depositary: ASCII Str.
  index, depositary = gpw_wse_marketinformation_xdp_v6_8.depositary.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Depositary List
gpw_wse_marketinformation_xdp_v6_8.depositary_list.dissect = function(buffer, offset, packet, parent, depositary_list_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.depositary_list, buffer(offset, 0))
    local index = gpw_wse_marketinformation_xdp_v6_8.depositary_list.fields(buffer, offset, packet, parent, depositary_list_index)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_marketinformation_xdp_v6_8.depositary_list.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_marketinformation_xdp_v6_8.depositary_list.fields(buffer, offset, packet, parent, depositary_list_index)
  end
end

-- Referential Message
gpw_wse_marketinformation_xdp_v6_8.referential_message = {}

-- Size: Referential Message
gpw_wse_marketinformation_xdp_v6_8.referential_message.size =
  gpw_wse_marketinformation_xdp_v6_8.symbol_index.size + 
  gpw_wse_marketinformation_xdp_v6_8.source_seq_num.size + 
  gpw_wse_marketinformation_xdp_v6_8.source_time.size + 
  gpw_wse_marketinformation_xdp_v6_8.last_adj_price.size + 
  gpw_wse_marketinformation_xdp_v6_8.system_id.size + 
  gpw_wse_marketinformation_xdp_v6_8.prev_volume_traded.size + 
  gpw_wse_marketinformation_xdp_v6_8.reserved_4.size + 
  gpw_wse_marketinformation_xdp_v6_8.source_time_micro_secs.size + 
  gpw_wse_marketinformation_xdp_v6_8.stock_exchange_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.type_of_instrument_binary_int_2.size + 
  gpw_wse_marketinformation_xdp_v6_8.event_date.size + 
  gpw_wse_marketinformation_xdp_v6_8.instrument_name.size + 
  gpw_wse_marketinformation_xdp_v6_8.period_indicator.size + 
  gpw_wse_marketinformation_xdp_v6_8.type_of_market_admission.size + 
  gpw_wse_marketinformation_xdp_v6_8.issuing_country_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.trading_currency.size + 
  gpw_wse_marketinformation_xdp_v6_8.instrument_group_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.instrument_category.size + 
  gpw_wse_marketinformation_xdp_v6_8.instrument_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.date_of_last_trade.size + 
  gpw_wse_marketinformation_xdp_v6_8.underlying_repo_isin_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.expiry_date.size + 
  gpw_wse_marketinformation_xdp_v6_8.first_settlement_date.size + 
  gpw_wse_marketinformation_xdp_v6_8.type_of_derivatives.size + 
  gpw_wse_marketinformation_xdp_v6_8.bic_depositary.size + 
  gpw_wse_marketinformation_xdp_v6_8.icb.size + 
  gpw_wse_marketinformation_xdp_v6_8.mic.size + 
  gpw_wse_marketinformation_xdp_v6_8.underlying_isin_code.size + 
  5 * gpw_wse_marketinformation_xdp_v6_8.depositary_list.size + 
  gpw_wse_marketinformation_xdp_v6_8.main_depositary.size + 
  gpw_wse_marketinformation_xdp_v6_8.type_of_corporate_event.size + 
  gpw_wse_marketinformation_xdp_v6_8.time_lag_euronext_utc.size + 
  gpw_wse_marketinformation_xdp_v6_8.time_lag_mi_fid_reg_utc.size + 
  gpw_wse_marketinformation_xdp_v6_8.cfi.size + 
  gpw_wse_marketinformation_xdp_v6_8.second_reserved_4.size + 
  gpw_wse_marketinformation_xdp_v6_8.index_set_of_var_price_tick.size + 
  gpw_wse_marketinformation_xdp_v6_8.market_feed_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.mic_list.size + 
  gpw_wse_marketinformation_xdp_v6_8.industry_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.industry_text.size + 
  gpw_wse_marketinformation_xdp_v6_8.financial_market_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.us_indicators.size + 
  gpw_wse_marketinformation_xdp_v6_8.reserved_2.size + 
  gpw_wse_marketinformation_xdp_v6_8.prev_day_capital_traded.size + 
  gpw_wse_marketinformation_xdp_v6_8.lot_size.size + 
  gpw_wse_marketinformation_xdp_v6_8.number_instrument_circ.size + 
  gpw_wse_marketinformation_xdp_v6_8.shares_out.size + 
  gpw_wse_marketinformation_xdp_v6_8.auth_shares.size + 
  gpw_wse_marketinformation_xdp_v6_8.price_notation.size + 
  gpw_wse_marketinformation_xdp_v6_8.repo_indicator.size + 
  gpw_wse_marketinformation_xdp_v6_8.notional_amount.size + 
  gpw_wse_marketinformation_xdp_v6_8.notional_currency.size + 
  gpw_wse_marketinformation_xdp_v6_8.last_adj_price_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.market_indicator.size + 
  gpw_wse_marketinformation_xdp_v6_8.prev_day_capital_traded_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.tax_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.reserved_1.size + 
  gpw_wse_marketinformation_xdp_v6_8.lot_size_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.second_reserved_1.size + 
  gpw_wse_marketinformation_xdp_v6_8.mnemo.size + 
  gpw_wse_marketinformation_xdp_v6_8.trading_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.third_reserved_4.size + 
  gpw_wse_marketinformation_xdp_v6_8.strike_price.size + 
  gpw_wse_marketinformation_xdp_v6_8.strike_currency.size + 
  gpw_wse_marketinformation_xdp_v6_8.strike_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.currency_coef.size + 
  gpw_wse_marketinformation_xdp_v6_8.currency_coef_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.trading_currency_indicator.size + 
  gpw_wse_marketinformation_xdp_v6_8.strike_currency_indicator.size + 
  gpw_wse_marketinformation_xdp_v6_8.market_segment.size + 
  gpw_wse_marketinformation_xdp_v6_8.algo.size + 
  gpw_wse_marketinformation_xdp_v6_8.local_name.size + 
  gpw_wse_marketinformation_xdp_v6_8.block_size.size + 
  gpw_wse_marketinformation_xdp_v6_8.ss_market_maker.size + 
  gpw_wse_marketinformation_xdp_v6_8.ss_non_market_maker.size + 
  gpw_wse_marketinformation_xdp_v6_8.settlement_delay.size + 
  gpw_wse_marketinformation_xdp_v6_8.option_type.size + 
  gpw_wse_marketinformation_xdp_v6_8.delivery_type.size + 
  gpw_wse_marketinformation_xdp_v6_8.exercise_type.size + 
  gpw_wse_marketinformation_xdp_v6_8.multiplier_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.warrant_threshold_min_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.warrant_threshold_max_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.second_reserved_2.size + 
  gpw_wse_marketinformation_xdp_v6_8.warrant_threshold_min.size + 
  gpw_wse_marketinformation_xdp_v6_8.warrant_threshold_max.size + 
  gpw_wse_marketinformation_xdp_v6_8.min_quantity.size + 
  gpw_wse_marketinformation_xdp_v6_8.max_quantity.size + 
  gpw_wse_marketinformation_xdp_v6_8.multiplier.size + 
  gpw_wse_marketinformation_xdp_v6_8.fourth_reserved_4.size + 
  gpw_wse_marketinformation_xdp_v6_8.max_value.size

-- Display: Referential Message
gpw_wse_marketinformation_xdp_v6_8.referential_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Referential Message
gpw_wse_marketinformation_xdp_v6_8.referential_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = gpw_wse_marketinformation_xdp_v6_8.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = gpw_wse_marketinformation_xdp_v6_8.source_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = gpw_wse_marketinformation_xdp_v6_8.source_time.dissect(buffer, index, packet, parent)

  -- Last Adj Price: Binary Int.
  index, last_adj_price = gpw_wse_marketinformation_xdp_v6_8.last_adj_price.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = gpw_wse_marketinformation_xdp_v6_8.system_id.dissect(buffer, index, packet, parent)

  -- Prev Volume Traded: Binary Int.
  index, prev_volume_traded = gpw_wse_marketinformation_xdp_v6_8.prev_volume_traded.dissect(buffer, index, packet, parent)

  -- Reserved 4: Binary Int.
  index, reserved_4 = gpw_wse_marketinformation_xdp_v6_8.reserved_4.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = gpw_wse_marketinformation_xdp_v6_8.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Stock Exchange Code: Binary Int.
  index, stock_exchange_code = gpw_wse_marketinformation_xdp_v6_8.stock_exchange_code.dissect(buffer, index, packet, parent)

  -- Type Of Instrument Binary Int 2: Binary Int.
  index, type_of_instrument_binary_int_2 = gpw_wse_marketinformation_xdp_v6_8.type_of_instrument_binary_int_2.dissect(buffer, index, packet, parent)

  -- Event Date: ASCII Str.
  index, event_date = gpw_wse_marketinformation_xdp_v6_8.event_date.dissect(buffer, index, packet, parent)

  -- Instrument Name: ASCII Str.
  index, instrument_name = gpw_wse_marketinformation_xdp_v6_8.instrument_name.dissect(buffer, index, packet, parent)

  -- Period Indicator: ASCII Ch.
  index, period_indicator = gpw_wse_marketinformation_xdp_v6_8.period_indicator.dissect(buffer, index, packet, parent)

  -- Type Of Market Admission: ASCII Ch.
  index, type_of_market_admission = gpw_wse_marketinformation_xdp_v6_8.type_of_market_admission.dissect(buffer, index, packet, parent)

  -- Issuing Country Code: ASCII Str.
  index, issuing_country_code = gpw_wse_marketinformation_xdp_v6_8.issuing_country_code.dissect(buffer, index, packet, parent)

  -- Trading Currency: ASCII Str.
  index, trading_currency = gpw_wse_marketinformation_xdp_v6_8.trading_currency.dissect(buffer, index, packet, parent)

  -- Instrument Group Code: ASCII Str.
  index, instrument_group_code = gpw_wse_marketinformation_xdp_v6_8.instrument_group_code.dissect(buffer, index, packet, parent)

  -- Instrument Category: ASCII Ch.
  index, instrument_category = gpw_wse_marketinformation_xdp_v6_8.instrument_category.dissect(buffer, index, packet, parent)

  -- Instrument Code: ASCII Str.
  index, instrument_code = gpw_wse_marketinformation_xdp_v6_8.instrument_code.dissect(buffer, index, packet, parent)

  -- Date Of Last Trade: ASCII Str.
  index, date_of_last_trade = gpw_wse_marketinformation_xdp_v6_8.date_of_last_trade.dissect(buffer, index, packet, parent)

  -- Underlying Repo Isin Code: ASCII Str.
  index, underlying_repo_isin_code = gpw_wse_marketinformation_xdp_v6_8.underlying_repo_isin_code.dissect(buffer, index, packet, parent)

  -- Expiry Date: ASCII Str.
  index, expiry_date = gpw_wse_marketinformation_xdp_v6_8.expiry_date.dissect(buffer, index, packet, parent)

  -- First Settlement Date: ASCII Str.
  index, first_settlement_date = gpw_wse_marketinformation_xdp_v6_8.first_settlement_date.dissect(buffer, index, packet, parent)

  -- Type Of Derivatives: ASCII Ch.
  index, type_of_derivatives = gpw_wse_marketinformation_xdp_v6_8.type_of_derivatives.dissect(buffer, index, packet, parent)

  -- Bic Depositary: ASCII Str.
  index, bic_depositary = gpw_wse_marketinformation_xdp_v6_8.bic_depositary.dissect(buffer, index, packet, parent)

  -- Icb: ASCII Str.
  index, icb = gpw_wse_marketinformation_xdp_v6_8.icb.dissect(buffer, index, packet, parent)

  -- Mic: ASCII Str.
  index, mic = gpw_wse_marketinformation_xdp_v6_8.mic.dissect(buffer, index, packet, parent)

  -- Underlying Isin Code: ASCII Str.
  index, underlying_isin_code = gpw_wse_marketinformation_xdp_v6_8.underlying_isin_code.dissect(buffer, index, packet, parent)

  -- Array Of: Depositary List
  for depositary_list_index = 1, 5 do
    index, depositary_list = gpw_wse_marketinformation_xdp_v6_8.depositary_list.dissect(buffer, index, packet, parent, depositary_list_index)
  end

  -- Main Depositary: ASCII Str.
  index, main_depositary = gpw_wse_marketinformation_xdp_v6_8.main_depositary.dissect(buffer, index, packet, parent)

  -- Type Of Corporate Event: ASCII Str.
  index, type_of_corporate_event = gpw_wse_marketinformation_xdp_v6_8.type_of_corporate_event.dissect(buffer, index, packet, parent)

  -- Time Lag Euronext Utc: ASCII Str.
  index, time_lag_euronext_utc = gpw_wse_marketinformation_xdp_v6_8.time_lag_euronext_utc.dissect(buffer, index, packet, parent)

  -- Time Lag Mi Fid Reg Utc: ASCII Str.
  index, time_lag_mi_fid_reg_utc = gpw_wse_marketinformation_xdp_v6_8.time_lag_mi_fid_reg_utc.dissect(buffer, index, packet, parent)

  -- Cfi: ASCII Str.
  index, cfi = gpw_wse_marketinformation_xdp_v6_8.cfi.dissect(buffer, index, packet, parent)

  -- Second Reserved 4: Binary Int.
  index, second_reserved_4 = gpw_wse_marketinformation_xdp_v6_8.second_reserved_4.dissect(buffer, index, packet, parent)

  -- Index Set Of Var Price Tick: ASCII Str.
  index, index_set_of_var_price_tick = gpw_wse_marketinformation_xdp_v6_8.index_set_of_var_price_tick.dissect(buffer, index, packet, parent)

  -- Market Feed Code: ASCII Str.
  index, market_feed_code = gpw_wse_marketinformation_xdp_v6_8.market_feed_code.dissect(buffer, index, packet, parent)

  -- Mic List: ASCII Str.
  index, mic_list = gpw_wse_marketinformation_xdp_v6_8.mic_list.dissect(buffer, index, packet, parent)

  -- Industry Code: ASCII Str.
  index, industry_code = gpw_wse_marketinformation_xdp_v6_8.industry_code.dissect(buffer, index, packet, parent)

  -- Industry Text: ASCII Str.
  index, industry_text = gpw_wse_marketinformation_xdp_v6_8.industry_text.dissect(buffer, index, packet, parent)

  -- Financial Market Code: ASCII Str.
  index, financial_market_code = gpw_wse_marketinformation_xdp_v6_8.financial_market_code.dissect(buffer, index, packet, parent)

  -- Us Indicators: ASCII Str.
  index, us_indicators = gpw_wse_marketinformation_xdp_v6_8.us_indicators.dissect(buffer, index, packet, parent)

  -- Reserved 2: Binary Int.
  index, reserved_2 = gpw_wse_marketinformation_xdp_v6_8.reserved_2.dissect(buffer, index, packet, parent)

  -- Prev Day Capital Traded: Binary Int.
  index, prev_day_capital_traded = gpw_wse_marketinformation_xdp_v6_8.prev_day_capital_traded.dissect(buffer, index, packet, parent)

  -- Lot Size: Binary Int.
  index, lot_size = gpw_wse_marketinformation_xdp_v6_8.lot_size.dissect(buffer, index, packet, parent)

  -- Number Instrument Circ: Binary Int.
  index, number_instrument_circ = gpw_wse_marketinformation_xdp_v6_8.number_instrument_circ.dissect(buffer, index, packet, parent)

  -- Shares Out: Binary Int.
  index, shares_out = gpw_wse_marketinformation_xdp_v6_8.shares_out.dissect(buffer, index, packet, parent)

  -- Auth Shares: Binary Int.
  index, auth_shares = gpw_wse_marketinformation_xdp_v6_8.auth_shares.dissect(buffer, index, packet, parent)

  -- Price Notation: ASCII Str.
  index, price_notation = gpw_wse_marketinformation_xdp_v6_8.price_notation.dissect(buffer, index, packet, parent)

  -- Repo Indicator: ASCII Ch.
  index, repo_indicator = gpw_wse_marketinformation_xdp_v6_8.repo_indicator.dissect(buffer, index, packet, parent)

  -- Notional Amount: ASCII Ch.
  index, notional_amount = gpw_wse_marketinformation_xdp_v6_8.notional_amount.dissect(buffer, index, packet, parent)

  -- Notional Currency: ASCII Ch.
  index, notional_currency = gpw_wse_marketinformation_xdp_v6_8.notional_currency.dissect(buffer, index, packet, parent)

  -- Last Adj Price Scale Code: Binary Int.
  index, last_adj_price_scale_code = gpw_wse_marketinformation_xdp_v6_8.last_adj_price_scale_code.dissect(buffer, index, packet, parent)

  -- Market Indicator: Binary Int.
  index, market_indicator = gpw_wse_marketinformation_xdp_v6_8.market_indicator.dissect(buffer, index, packet, parent)

  -- Prev Day Capital Traded Scale Code: Binary Int.
  index, prev_day_capital_traded_scale_code = gpw_wse_marketinformation_xdp_v6_8.prev_day_capital_traded_scale_code.dissect(buffer, index, packet, parent)

  -- Tax Code: Binary Int.
  index, tax_code = gpw_wse_marketinformation_xdp_v6_8.tax_code.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary Int.
  index, reserved_1 = gpw_wse_marketinformation_xdp_v6_8.reserved_1.dissect(buffer, index, packet, parent)

  -- Lot Size Scale Code: Binary Int.
  index, lot_size_scale_code = gpw_wse_marketinformation_xdp_v6_8.lot_size_scale_code.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: Binary Int.
  index, second_reserved_1 = gpw_wse_marketinformation_xdp_v6_8.second_reserved_1.dissect(buffer, index, packet, parent)

  -- Mnemo: ASCII Str.
  index, mnemo = gpw_wse_marketinformation_xdp_v6_8.mnemo.dissect(buffer, index, packet, parent)

  -- Trading Code: ASCII Str.
  index, trading_code = gpw_wse_marketinformation_xdp_v6_8.trading_code.dissect(buffer, index, packet, parent)

  -- Third Reserved 4: Binary Int.
  index, third_reserved_4 = gpw_wse_marketinformation_xdp_v6_8.third_reserved_4.dissect(buffer, index, packet, parent)

  -- Strike Price: Binary Int.
  index, strike_price = gpw_wse_marketinformation_xdp_v6_8.strike_price.dissect(buffer, index, packet, parent)

  -- Strike Currency: ASCII Str.
  index, strike_currency = gpw_wse_marketinformation_xdp_v6_8.strike_currency.dissect(buffer, index, packet, parent)

  -- Strike Scale Code: Binary Int.
  index, strike_scale_code = gpw_wse_marketinformation_xdp_v6_8.strike_scale_code.dissect(buffer, index, packet, parent)

  -- Currency Coef: Binary Int.
  index, currency_coef = gpw_wse_marketinformation_xdp_v6_8.currency_coef.dissect(buffer, index, packet, parent)

  -- Currency Coef Scale Code: Binary Int.
  index, currency_coef_scale_code = gpw_wse_marketinformation_xdp_v6_8.currency_coef_scale_code.dissect(buffer, index, packet, parent)

  -- Trading Currency Indicator: Binary Int.
  index, trading_currency_indicator = gpw_wse_marketinformation_xdp_v6_8.trading_currency_indicator.dissect(buffer, index, packet, parent)

  -- Strike Currency Indicator: Binary Int.
  index, strike_currency_indicator = gpw_wse_marketinformation_xdp_v6_8.strike_currency_indicator.dissect(buffer, index, packet, parent)

  -- Market Segment: ASCII Ch.
  index, market_segment = gpw_wse_marketinformation_xdp_v6_8.market_segment.dissect(buffer, index, packet, parent)

  -- Algo: ASCII Ch.
  index, algo = gpw_wse_marketinformation_xdp_v6_8.algo.dissect(buffer, index, packet, parent)

  -- Local Name: ASCII Ch.
  index, local_name = gpw_wse_marketinformation_xdp_v6_8.local_name.dissect(buffer, index, packet, parent)

  -- Block Size: Binary Int.
  index, block_size = gpw_wse_marketinformation_xdp_v6_8.block_size.dissect(buffer, index, packet, parent)

  -- Ss Market Maker: ASCII Ch.
  index, ss_market_maker = gpw_wse_marketinformation_xdp_v6_8.ss_market_maker.dissect(buffer, index, packet, parent)

  -- Ss Non Market Maker: ASCII Ch.
  index, ss_non_market_maker = gpw_wse_marketinformation_xdp_v6_8.ss_non_market_maker.dissect(buffer, index, packet, parent)

  -- Settlement Delay: ASCII Ch.
  index, settlement_delay = gpw_wse_marketinformation_xdp_v6_8.settlement_delay.dissect(buffer, index, packet, parent)

  -- Option Type: ASCII Ch.
  index, option_type = gpw_wse_marketinformation_xdp_v6_8.option_type.dissect(buffer, index, packet, parent)

  -- Delivery Type: ASCII Ch.
  index, delivery_type = gpw_wse_marketinformation_xdp_v6_8.delivery_type.dissect(buffer, index, packet, parent)

  -- Exercise Type: ASCII Ch.
  index, exercise_type = gpw_wse_marketinformation_xdp_v6_8.exercise_type.dissect(buffer, index, packet, parent)

  -- Multiplier Scale Code: Binary Int.
  index, multiplier_scale_code = gpw_wse_marketinformation_xdp_v6_8.multiplier_scale_code.dissect(buffer, index, packet, parent)

  -- Warrant Threshold Min Scale Code: Binary Int.
  index, warrant_threshold_min_scale_code = gpw_wse_marketinformation_xdp_v6_8.warrant_threshold_min_scale_code.dissect(buffer, index, packet, parent)

  -- Warrant Threshold Max Scale Code: Binary Int.
  index, warrant_threshold_max_scale_code = gpw_wse_marketinformation_xdp_v6_8.warrant_threshold_max_scale_code.dissect(buffer, index, packet, parent)

  -- Second Reserved 2: Binary Int.
  index, second_reserved_2 = gpw_wse_marketinformation_xdp_v6_8.second_reserved_2.dissect(buffer, index, packet, parent)

  -- Warrant Threshold Min: Binary Int.
  index, warrant_threshold_min = gpw_wse_marketinformation_xdp_v6_8.warrant_threshold_min.dissect(buffer, index, packet, parent)

  -- Warrant Threshold Max: Binary Int.
  index, warrant_threshold_max = gpw_wse_marketinformation_xdp_v6_8.warrant_threshold_max.dissect(buffer, index, packet, parent)

  -- Min Quantity: Binary Int.
  index, min_quantity = gpw_wse_marketinformation_xdp_v6_8.min_quantity.dissect(buffer, index, packet, parent)

  -- Max Quantity: Binary Int.
  index, max_quantity = gpw_wse_marketinformation_xdp_v6_8.max_quantity.dissect(buffer, index, packet, parent)

  -- Multiplier: Binary Int.
  index, multiplier = gpw_wse_marketinformation_xdp_v6_8.multiplier.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 4: Binary Int.
  index, fourth_reserved_4 = gpw_wse_marketinformation_xdp_v6_8.fourth_reserved_4.dissect(buffer, index, packet, parent)

  -- Max Value: Binary Int.
  index, max_value = gpw_wse_marketinformation_xdp_v6_8.max_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Referential Message
gpw_wse_marketinformation_xdp_v6_8.referential_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.referential_message, buffer(offset, 0))
    local index = gpw_wse_marketinformation_xdp_v6_8.referential_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_marketinformation_xdp_v6_8.referential_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_marketinformation_xdp_v6_8.referential_message.fields(buffer, offset, packet, parent)
  end
end

-- End Referential Message
gpw_wse_marketinformation_xdp_v6_8.end_referential_message = {}

-- Size: End Referential Message
gpw_wse_marketinformation_xdp_v6_8.end_referential_message.size =
  gpw_wse_marketinformation_xdp_v6_8.indicator.size + 
  gpw_wse_marketinformation_xdp_v6_8.reserved_3.size

-- Display: End Referential Message
gpw_wse_marketinformation_xdp_v6_8.end_referential_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Referential Message
gpw_wse_marketinformation_xdp_v6_8.end_referential_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Indicator: ASCII Ch.
  index, indicator = gpw_wse_marketinformation_xdp_v6_8.indicator.dissect(buffer, index, packet, parent)

  -- Reserved 3: Binary Int.
  index, reserved_3 = gpw_wse_marketinformation_xdp_v6_8.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Referential Message
gpw_wse_marketinformation_xdp_v6_8.end_referential_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.end_referential_message, buffer(offset, 0))
    local index = gpw_wse_marketinformation_xdp_v6_8.end_referential_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_marketinformation_xdp_v6_8.end_referential_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_marketinformation_xdp_v6_8.end_referential_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Referential Message
gpw_wse_marketinformation_xdp_v6_8.start_referential_message = {}

-- Size: Start Referential Message
gpw_wse_marketinformation_xdp_v6_8.start_referential_message.size =
  gpw_wse_marketinformation_xdp_v6_8.indicator.size + 
  gpw_wse_marketinformation_xdp_v6_8.reserved_3.size

-- Display: Start Referential Message
gpw_wse_marketinformation_xdp_v6_8.start_referential_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Referential Message
gpw_wse_marketinformation_xdp_v6_8.start_referential_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Indicator: ASCII Ch.
  index, indicator = gpw_wse_marketinformation_xdp_v6_8.indicator.dissect(buffer, index, packet, parent)

  -- Reserved 3: Binary Int.
  index, reserved_3 = gpw_wse_marketinformation_xdp_v6_8.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Referential Message
gpw_wse_marketinformation_xdp_v6_8.start_referential_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.start_referential_message, buffer(offset, 0))
    local index = gpw_wse_marketinformation_xdp_v6_8.start_referential_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_marketinformation_xdp_v6_8.start_referential_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_marketinformation_xdp_v6_8.start_referential_message.fields(buffer, offset, packet, parent)
  end
end

-- Class Phase
gpw_wse_marketinformation_xdp_v6_8.class_phase = {}

-- Size: Class Phase
gpw_wse_marketinformation_xdp_v6_8.class_phase.size =
  gpw_wse_marketinformation_xdp_v6_8.class_state_time.size + 
  gpw_wse_marketinformation_xdp_v6_8.class_state.size

-- Display: Class Phase
gpw_wse_marketinformation_xdp_v6_8.class_phase.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Class Phase
gpw_wse_marketinformation_xdp_v6_8.class_phase.fields = function(buffer, offset, packet, parent, class_phase_index)
  local index = offset

  -- Implicit Class Phase Index
  if class_phase_index ~= nil and show.indexes then
    local iteration = parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.class_phase_index, class_phase_index)
    iteration:set_generated()
  end

  -- Class State Time: ASCII Str.
  index, class_state_time = gpw_wse_marketinformation_xdp_v6_8.class_state_time.dissect(buffer, index, packet, parent)

  -- Class State: ASCII Ch.
  index, class_state = gpw_wse_marketinformation_xdp_v6_8.class_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Class Phase
gpw_wse_marketinformation_xdp_v6_8.class_phase.dissect = function(buffer, offset, packet, parent, class_phase_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.class_phase, buffer(offset, 0))
    local index = gpw_wse_marketinformation_xdp_v6_8.class_phase.fields(buffer, offset, packet, parent, class_phase_index)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_marketinformation_xdp_v6_8.class_phase.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_marketinformation_xdp_v6_8.class_phase.fields(buffer, offset, packet, parent, class_phase_index)
  end
end

-- Session Timetable Message
gpw_wse_marketinformation_xdp_v6_8.session_timetable_message = {}

-- Size: Session Timetable Message
gpw_wse_marketinformation_xdp_v6_8.session_timetable_message.size =
  gpw_wse_marketinformation_xdp_v6_8.source_seq_num.size + 
  gpw_wse_marketinformation_xdp_v6_8.source_time.size + 
  gpw_wse_marketinformation_xdp_v6_8.system_id.size + 
  gpw_wse_marketinformation_xdp_v6_8.source_time_micro_secs.size + 
  gpw_wse_marketinformation_xdp_v6_8.instrument_group_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.reserved_1.size + 
  gpw_wse_marketinformation_xdp_v6_8.class_phase_number.size + 
  15 * gpw_wse_marketinformation_xdp_v6_8.class_phase.size

-- Display: Session Timetable Message
gpw_wse_marketinformation_xdp_v6_8.session_timetable_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Session Timetable Message
gpw_wse_marketinformation_xdp_v6_8.session_timetable_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Seq Num: Binary Int.
  index, source_seq_num = gpw_wse_marketinformation_xdp_v6_8.source_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = gpw_wse_marketinformation_xdp_v6_8.source_time.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = gpw_wse_marketinformation_xdp_v6_8.system_id.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = gpw_wse_marketinformation_xdp_v6_8.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Instrument Group Code: ASCII Str.
  index, instrument_group_code = gpw_wse_marketinformation_xdp_v6_8.instrument_group_code.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary Int.
  index, reserved_1 = gpw_wse_marketinformation_xdp_v6_8.reserved_1.dissect(buffer, index, packet, parent)

  -- Class Phase Number: Binary Int.
  index, class_phase_number = gpw_wse_marketinformation_xdp_v6_8.class_phase_number.dissect(buffer, index, packet, parent)

  -- Array Of: Class Phase
  for class_phase_index = 1, 15 do
    index, class_phase = gpw_wse_marketinformation_xdp_v6_8.class_phase.dissect(buffer, index, packet, parent, class_phase_index)
  end

  return index
end

-- Dissect: Session Timetable Message
gpw_wse_marketinformation_xdp_v6_8.session_timetable_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.session_timetable_message, buffer(offset, 0))
    local index = gpw_wse_marketinformation_xdp_v6_8.session_timetable_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_marketinformation_xdp_v6_8.session_timetable_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_marketinformation_xdp_v6_8.session_timetable_message.fields(buffer, offset, packet, parent)
  end
end

-- Collars Message
gpw_wse_marketinformation_xdp_v6_8.collars_message = {}

-- Size: Collars Message
gpw_wse_marketinformation_xdp_v6_8.collars_message.size =
  gpw_wse_marketinformation_xdp_v6_8.symbol_index.size + 
  gpw_wse_marketinformation_xdp_v6_8.source_seq_num.size + 
  gpw_wse_marketinformation_xdp_v6_8.source_time.size + 
  gpw_wse_marketinformation_xdp_v6_8.high_collar.size + 
  gpw_wse_marketinformation_xdp_v6_8.low_collar.size + 
  gpw_wse_marketinformation_xdp_v6_8.system_id.size + 
  gpw_wse_marketinformation_xdp_v6_8.source_time_micro_secs.size + 
  gpw_wse_marketinformation_xdp_v6_8.high_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.low_scale_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.collar_type.size + 
  gpw_wse_marketinformation_xdp_v6_8.reserved_3.size

-- Display: Collars Message
gpw_wse_marketinformation_xdp_v6_8.collars_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Collars Message
gpw_wse_marketinformation_xdp_v6_8.collars_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = gpw_wse_marketinformation_xdp_v6_8.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = gpw_wse_marketinformation_xdp_v6_8.source_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = gpw_wse_marketinformation_xdp_v6_8.source_time.dissect(buffer, index, packet, parent)

  -- High Collar: Binary Int.
  index, high_collar = gpw_wse_marketinformation_xdp_v6_8.high_collar.dissect(buffer, index, packet, parent)

  -- Low Collar: Binary Int.
  index, low_collar = gpw_wse_marketinformation_xdp_v6_8.low_collar.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = gpw_wse_marketinformation_xdp_v6_8.system_id.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = gpw_wse_marketinformation_xdp_v6_8.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- High Scale Code: Binary Int.
  index, high_scale_code = gpw_wse_marketinformation_xdp_v6_8.high_scale_code.dissect(buffer, index, packet, parent)

  -- Low Scale Code: Binary Int.
  index, low_scale_code = gpw_wse_marketinformation_xdp_v6_8.low_scale_code.dissect(buffer, index, packet, parent)

  -- Collar Type: ASCII Ch.
  index, collar_type = gpw_wse_marketinformation_xdp_v6_8.collar_type.dissect(buffer, index, packet, parent)

  -- Reserved 3: Binary Int.
  index, reserved_3 = gpw_wse_marketinformation_xdp_v6_8.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Collars Message
gpw_wse_marketinformation_xdp_v6_8.collars_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.collars_message, buffer(offset, 0))
    local index = gpw_wse_marketinformation_xdp_v6_8.collars_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_marketinformation_xdp_v6_8.collars_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_marketinformation_xdp_v6_8.collars_message.fields(buffer, offset, packet, parent)
  end
end

-- Mail Message
gpw_wse_marketinformation_xdp_v6_8.mail_message = {}

-- Size: Mail Message
gpw_wse_marketinformation_xdp_v6_8.mail_message.size =
  gpw_wse_marketinformation_xdp_v6_8.source_seq_num.size + 
  gpw_wse_marketinformation_xdp_v6_8.source_time.size + 
  gpw_wse_marketinformation_xdp_v6_8.system_id.size + 
  gpw_wse_marketinformation_xdp_v6_8.source_time_micro_secs.size + 
  gpw_wse_marketinformation_xdp_v6_8.scope.size + 
  gpw_wse_marketinformation_xdp_v6_8.title.size + 
  gpw_wse_marketinformation_xdp_v6_8.text_ascii_str_1000.size + 
  gpw_wse_marketinformation_xdp_v6_8.reserved_3.size

-- Display: Mail Message
gpw_wse_marketinformation_xdp_v6_8.mail_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mail Message
gpw_wse_marketinformation_xdp_v6_8.mail_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Seq Num: Binary Int.
  index, source_seq_num = gpw_wse_marketinformation_xdp_v6_8.source_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = gpw_wse_marketinformation_xdp_v6_8.source_time.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = gpw_wse_marketinformation_xdp_v6_8.system_id.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = gpw_wse_marketinformation_xdp_v6_8.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Scope: ASCII Ch.
  index, scope = gpw_wse_marketinformation_xdp_v6_8.scope.dissect(buffer, index, packet, parent)

  -- Title: ASCII Ch.
  index, title = gpw_wse_marketinformation_xdp_v6_8.title.dissect(buffer, index, packet, parent)

  -- Text Ascii Str 1000: ASCII Str.
  index, text_ascii_str_1000 = gpw_wse_marketinformation_xdp_v6_8.text_ascii_str_1000.dissect(buffer, index, packet, parent)

  -- Reserved 3: Binary Int.
  index, reserved_3 = gpw_wse_marketinformation_xdp_v6_8.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mail Message
gpw_wse_marketinformation_xdp_v6_8.mail_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.mail_message, buffer(offset, 0))
    local index = gpw_wse_marketinformation_xdp_v6_8.mail_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_marketinformation_xdp_v6_8.mail_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_marketinformation_xdp_v6_8.mail_message.fields(buffer, offset, packet, parent)
  end
end

-- Class State Change Message
gpw_wse_marketinformation_xdp_v6_8.class_state_change_message = {}

-- Size: Class State Change Message
gpw_wse_marketinformation_xdp_v6_8.class_state_change_message.size =
  gpw_wse_marketinformation_xdp_v6_8.source_seq_num.size + 
  gpw_wse_marketinformation_xdp_v6_8.source_time.size + 
  gpw_wse_marketinformation_xdp_v6_8.system_id.size + 
  gpw_wse_marketinformation_xdp_v6_8.source_time_micro_secs.size + 
  gpw_wse_marketinformation_xdp_v6_8.instrument_group_code.size + 
  gpw_wse_marketinformation_xdp_v6_8.instrument_group_state.size + 
  gpw_wse_marketinformation_xdp_v6_8.session_type.size + 
  gpw_wse_marketinformation_xdp_v6_8.reserved_1.size + 
  gpw_wse_marketinformation_xdp_v6_8.class_state.size

-- Display: Class State Change Message
gpw_wse_marketinformation_xdp_v6_8.class_state_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Class State Change Message
gpw_wse_marketinformation_xdp_v6_8.class_state_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Seq Num: Binary Int.
  index, source_seq_num = gpw_wse_marketinformation_xdp_v6_8.source_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = gpw_wse_marketinformation_xdp_v6_8.source_time.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = gpw_wse_marketinformation_xdp_v6_8.system_id.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = gpw_wse_marketinformation_xdp_v6_8.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Instrument Group Code: ASCII Str.
  index, instrument_group_code = gpw_wse_marketinformation_xdp_v6_8.instrument_group_code.dissect(buffer, index, packet, parent)

  -- Instrument Group State: ASCII Ch.
  index, instrument_group_state = gpw_wse_marketinformation_xdp_v6_8.instrument_group_state.dissect(buffer, index, packet, parent)

  -- Session Type: ASCII Ch.
  index, session_type = gpw_wse_marketinformation_xdp_v6_8.session_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary Int.
  index, reserved_1 = gpw_wse_marketinformation_xdp_v6_8.reserved_1.dissect(buffer, index, packet, parent)

  -- Class State: ASCII Ch.
  index, class_state = gpw_wse_marketinformation_xdp_v6_8.class_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Class State Change Message
gpw_wse_marketinformation_xdp_v6_8.class_state_change_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.class_state_change_message, buffer(offset, 0))
    local index = gpw_wse_marketinformation_xdp_v6_8.class_state_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_marketinformation_xdp_v6_8.class_state_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_marketinformation_xdp_v6_8.class_state_change_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
gpw_wse_marketinformation_xdp_v6_8.payload = {}

-- Dispatch: Payload
gpw_wse_marketinformation_xdp_v6_8.payload.dispatch = {
  [516] = gpw_wse_marketinformation_xdp_v6_8.class_state_change_message.dissect,
  [523] = gpw_wse_marketinformation_xdp_v6_8.mail_message.dissect,
  [537] = gpw_wse_marketinformation_xdp_v6_8.collars_message.dissect,
  [539] = gpw_wse_marketinformation_xdp_v6_8.session_timetable_message.dissect,
  [550] = gpw_wse_marketinformation_xdp_v6_8.start_referential_message.dissect,
  [551] = gpw_wse_marketinformation_xdp_v6_8.end_referential_message.dissect,
  [556] = gpw_wse_marketinformation_xdp_v6_8.referential_message.dissect,
  [561] = gpw_wse_marketinformation_xdp_v6_8.session_summary_message.dissect,
  [505] = gpw_wse_marketinformation_xdp_v6_8.instrument_state_change_message.dissect,
  [530] = gpw_wse_marketinformation_xdp_v6_8.indicative_matching_price_message.dissect,
  [560] = gpw_wse_marketinformation_xdp_v6_8.short_sale_change_message.dissect,
  [592] = gpw_wse_marketinformation_xdp_v6_8.generic_wse_message.dissect,
  [595] = gpw_wse_marketinformation_xdp_v6_8.open_position_message.dissect,
}

-- Dissect: Payload
gpw_wse_marketinformation_xdp_v6_8.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = gpw_wse_marketinformation_xdp_v6_8.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
gpw_wse_marketinformation_xdp_v6_8.message_header = {}

-- Size: Message Header
gpw_wse_marketinformation_xdp_v6_8.message_header.size =
  gpw_wse_marketinformation_xdp_v6_8.message_size.size + 
  gpw_wse_marketinformation_xdp_v6_8.message_type.size

-- Display: Message Header
gpw_wse_marketinformation_xdp_v6_8.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
gpw_wse_marketinformation_xdp_v6_8.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: Binary Int.
  index, message_size = gpw_wse_marketinformation_xdp_v6_8.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: Binary Int.
  index, message_type = gpw_wse_marketinformation_xdp_v6_8.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
gpw_wse_marketinformation_xdp_v6_8.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.message_header, buffer(offset, 0))
    local index = gpw_wse_marketinformation_xdp_v6_8.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_marketinformation_xdp_v6_8.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_marketinformation_xdp_v6_8.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
gpw_wse_marketinformation_xdp_v6_8.message = {}

-- Display: Message
gpw_wse_marketinformation_xdp_v6_8.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
gpw_wse_marketinformation_xdp_v6_8.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = gpw_wse_marketinformation_xdp_v6_8.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):uint()

  -- Payload: Runtime Type with 13 branches
  index = gpw_wse_marketinformation_xdp_v6_8.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
gpw_wse_marketinformation_xdp_v6_8.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.message, buffer(offset, 0))
    local current = gpw_wse_marketinformation_xdp_v6_8.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = gpw_wse_marketinformation_xdp_v6_8.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    gpw_wse_marketinformation_xdp_v6_8.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
gpw_wse_marketinformation_xdp_v6_8.packet_header = {}

-- Size: Packet Header
gpw_wse_marketinformation_xdp_v6_8.packet_header.size =
  gpw_wse_marketinformation_xdp_v6_8.packet_length.size + 
  gpw_wse_marketinformation_xdp_v6_8.packet_type.size + 
  gpw_wse_marketinformation_xdp_v6_8.packet_sequence_number.size + 
  gpw_wse_marketinformation_xdp_v6_8.send_time.size + 
  gpw_wse_marketinformation_xdp_v6_8.service_id.size + 
  gpw_wse_marketinformation_xdp_v6_8.delivery_flag.size + 
  gpw_wse_marketinformation_xdp_v6_8.number_msg_entries.size

-- Display: Packet Header
gpw_wse_marketinformation_xdp_v6_8.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
gpw_wse_marketinformation_xdp_v6_8.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: Binary Int.
  index, packet_length = gpw_wse_marketinformation_xdp_v6_8.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: Binary Int.
  index, packet_type = gpw_wse_marketinformation_xdp_v6_8.packet_type.dissect(buffer, index, packet, parent)

  -- Packet Sequence Number: Binary Int.
  index, packet_sequence_number = gpw_wse_marketinformation_xdp_v6_8.packet_sequence_number.dissect(buffer, index, packet, parent)

  -- Send Time: Binary Int.
  index, send_time = gpw_wse_marketinformation_xdp_v6_8.send_time.dissect(buffer, index, packet, parent)

  -- Service Id: Binary Int.
  index, service_id = gpw_wse_marketinformation_xdp_v6_8.service_id.dissect(buffer, index, packet, parent)

  -- Delivery Flag: Binary Int.
  index, delivery_flag = gpw_wse_marketinformation_xdp_v6_8.delivery_flag.dissect(buffer, index, packet, parent)

  -- Number Msg Entries: Binary Int.
  index, number_msg_entries = gpw_wse_marketinformation_xdp_v6_8.number_msg_entries.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
gpw_wse_marketinformation_xdp_v6_8.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_marketinformation_xdp_v6_8.fields.packet_header, buffer(offset, 0))
    local index = gpw_wse_marketinformation_xdp_v6_8.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_marketinformation_xdp_v6_8.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_marketinformation_xdp_v6_8.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
gpw_wse_marketinformation_xdp_v6_8.packet = {}

-- Verify required size of Udp packet
gpw_wse_marketinformation_xdp_v6_8.packet.requiredsize = function(buffer)
  return buffer:len() >= gpw_wse_marketinformation_xdp_v6_8.packet_header.size
end

-- Dissect Packet
gpw_wse_marketinformation_xdp_v6_8.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 7 fields
  index, packet_header = gpw_wse_marketinformation_xdp_v6_8.packet_header.dissect(buffer, index, packet, parent)

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
    index, message = gpw_wse_marketinformation_xdp_v6_8.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_gpw_wse_marketinformation_xdp_v6_8.init()
end

-- Dissector for Gpw Wse MarketInformation Xdp 6.8
function omi_gpw_wse_marketinformation_xdp_v6_8.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_gpw_wse_marketinformation_xdp_v6_8.name

  -- Dissect protocol
  local protocol = parent:add(omi_gpw_wse_marketinformation_xdp_v6_8, buffer(), omi_gpw_wse_marketinformation_xdp_v6_8.description, "("..buffer:len().." Bytes)")
  return gpw_wse_marketinformation_xdp_v6_8.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Gpw Wse MarketInformation Xdp 6.8 (Udp)
local function omi_gpw_wse_marketinformation_xdp_v6_8_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not gpw_wse_marketinformation_xdp_v6_8.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_gpw_wse_marketinformation_xdp_v6_8
  omi_gpw_wse_marketinformation_xdp_v6_8.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Gpw Wse MarketInformation Xdp 6.8
omi_gpw_wse_marketinformation_xdp_v6_8:register_heuristic("udp", omi_gpw_wse_marketinformation_xdp_v6_8_udp_heuristic)

-- Register Gpw Wse MarketInformation Xdp 6.8 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_gpw_wse_marketinformation_xdp_v6_8)

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
