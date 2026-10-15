-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Qse QseCash MarketData Xdp 2.6 Protocol
local omi_qse_qsecash_marketdata_xdp_v2_6 = Proto("Omi.Qse.QseCash.MarketData.Xdp.v2.6", "Qse QseCash MarketData Xdp 2.6")

-- Protocol table
local qse_qsecash_marketdata_xdp_v2_6 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Qse QseCash MarketData Xdp 2.6 Fields
omi_qse_qsecash_marketdata_xdp_v2_6.fields.action_affecting_state = ProtoField.new("Action Affecting State", "qse.qsecash.marketdata.xdp.v2.6.actionaffectingstate", ftypes.STRING, nil, nil, nil, "Code indicating the event that caused a change in the instrument state")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.action_type = ProtoField.new("Action Type", "qse.qsecash.marketdata.xdp.v2.6.actiontype", ftypes.STRING, nil, nil, nil, "This field identifies why the volume (size) at the (current order) price was modified")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.address_type = ProtoField.new("Address Type", "qse.qsecash.marketdata.xdp.v2.6.addresstype", ftypes.STRING, nil, nil, nil, "Indicates the users to whom the message is addressed")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.adjusted_closing_price = ProtoField.new("Adjusted Closing Price", "qse.qsecash.marketdata.xdp.v2.6.adjustedclosingprice", ftypes.UINT32, nil, nil, nil, "Adjusted VWAP/Closing Price (To be calculated with the PriceScaleCode)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.aggregated_volume = ProtoField.new("Aggregated Volume", "qse.qsecash.marketdata.xdp.v2.6.aggregatedvolume", ftypes.UINT32, nil, nil, nil, "Total quantity at the price of the current order")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.algo = ProtoField.new("Algo", "qse.qsecash.marketdata.xdp.v2.6.algo", ftypes.STRING, nil, nil, nil, "Qatar Exchange only: Indicates which trading algorithm is used")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.amount_traded = ProtoField.new("Amount Traded", "qse.qsecash.marketdata.xdp.v2.6.amounttraded", ftypes.UINT32, nil, nil, nil, "Total cumulated amount traded on the market since the beginning of the Trading day (To be calculated with the PriceScaleCode)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.ask_price = ProtoField.new("Ask Price", "qse.qsecash.marketdata.xdp.v2.6.askprice", ftypes.UINT32, nil, nil, nil, "Ask Price for Quote (To be calculated with the ScaleCode) Specific values: FF FF FF FE: Market Order or Market To Limit Order FF FF FF FD At Opening Order (NSC only)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.ask_size = ProtoField.new("Ask Size", "qse.qsecash.marketdata.xdp.v2.6.asksize", ftypes.UINT32, nil, nil, nil, "Total number of shares requested in sell orders at the ask price")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.auth_shares = ProtoField.new("Auth Shares", "qse.qsecash.marketdata.xdp.v2.6.authshares", ftypes.UINT64, nil, nil, nil, "Not used OfficialQuotationList 416 Gives the section, heading and sub-headings in which the security is in HeadingNumber 2 Binary Int")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.bic_depositary = ProtoField.new("Bic Depositary", "qse.qsecash.marketdata.xdp.v2.6.bicdepositary", ftypes.STRING, nil, nil, nil, "Identifies the depository organization for the shares of an instrument, or when the same organization manages several systems, this item identifies the relevant settlement system for settling trades on a given listed security")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.bid_price = ProtoField.new("Bid Price", "qse.qsecash.marketdata.xdp.v2.6.bidprice", ftypes.UINT32, nil, nil, nil, "Bid Price for Quote (To be calculated with the ScaleCode) Specific values: FF FF FF FE: Market Order or Market To Limit Order FF FF FF FD At Opening Order (NSC only)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.bid_size = ProtoField.new("Bid Size", "qse.qsecash.marketdata.xdp.v2.6.bidsize", ftypes.UINT32, nil, nil, nil, "Total number of shares requested in buy orders at the bid price")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.cfi = ProtoField.new("Cfi", "qse.qsecash.marketdata.xdp.v2.6.cfi", ftypes.STRING, nil, nil, nil, "Classification code of a financial instrument defined by the ISO-10962 standard")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.class_state = ProtoField.new("Class State", "qse.qsecash.marketdata.xdp.v2.6.classstate", ftypes.STRING, nil, nil, nil, "For UTP traded instruments only")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.clearing_level = ProtoField.new("Clearing Level", "qse.qsecash.marketdata.xdp.v2.6.clearinglevel", ftypes.UINT32, nil, nil, nil, "Reference daily settlement index level (To be calculated with the LevelScaleCode)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.clearing_time = ProtoField.new("Clearing Time", "qse.qsecash.marketdata.xdp.v2.6.clearingtime", ftypes.UINT32, nil, nil, nil, "Time of provisional daily settlement index level")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.closing_price = ProtoField.new("Closing Price", "qse.qsecash.marketdata.xdp.v2.6.closingprice", ftypes.UINT32, nil, nil, nil, "Current VWAP/Closing Price (To be calculated with the PriceScaleCode)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.closing_price_rule = ProtoField.new("Closing Price Rule", "qse.qsecash.marketdata.xdp.v2.6.closingpricerule", ftypes.UINT16, nil, nil, nil, "Indicate the Closing Price calculation rule, that can be: 1 - LTP (Last Traded Price) 2 - VWAP (Volume Weighted Average Price)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.closing_reference_level = ProtoField.new("Closing Reference Level", "qse.qsecash.marketdata.xdp.v2.6.closingreferencelevel", ftypes.UINT32, nil, nil, nil, "Reference closing index level (To be calculated with the LevelScaleCode)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.closing_reference_time = ProtoField.new("Closing Reference Time", "qse.qsecash.marketdata.xdp.v2.6.closingreferencetime", ftypes.UINT32, nil, nil, nil, "Time of provisional closing reference index level")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.collar_type = ProtoField.new("Collar Type", "qse.qsecash.marketdata.xdp.v2.6.collartype", ftypes.STRING, nil, nil, nil, "Defines the type of collars: D Dynamic collars S Static thresholds")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.cumulative_quantity = ProtoField.new("Cumulative Quantity", "qse.qsecash.marketdata.xdp.v2.6.cumulativequantity", ftypes.UINT32, nil, nil, nil, "Cumulative number of shares traded on UTP/NSC since the start of the current trading session")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.currency_coef = ProtoField.new("Currency Coef", "qse.qsecash.marketdata.xdp.v2.6.currencycoef", ftypes.UINT32, nil, nil, nil, "Change ratio coefficient of currency applied to instrument: Used in conjunction with one of the change rate indicators in order to apply this coefficient to a currency among two available currencies defined for the instrument: - Trading currency - Currency code of strike price for Derivative Instrument The currency to which this coefficient will be applied depends on just one of the two values set to the related indicators (defined below in the integrity constraints)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.currency_coef_scale_code = ProtoField.new("Currency Coef Scale Code", "qse.qsecash.marketdata.xdp.v2.6.currencycoefscalecode", ftypes.UINT8, nil, nil, nil, "To be combined with CurrencyCoef")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.date_of_last_trade = ProtoField.new("Date Of Last Trade", "qse.qsecash.marketdata.xdp.v2.6.dateoflasttrade", ftypes.STRING, nil, nil, nil, "Date of the last trading day during which a trade was executed for the instrument")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.delivery_flag = ProtoField.new("Delivery Flag", "qse.qsecash.marketdata.xdp.v2.6.deliveryflag", ftypes.UINT8, nil, nil, nil, "Indicates delivery method, and a client uses it to determine whether a packet is ZliB compressed")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.depositary_list = ProtoField.new("Depositary List", "qse.qsecash.marketdata.xdp.v2.6.depositarylist", ftypes.STRING, nil, nil, nil, "Identifies the possible main depository organizations (max 5) for the shares or bonds for an instrument")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.e_mail_msg_number = ProtoField.new("E Mail Msg Number", "qse.qsecash.marketdata.xdp.v2.6.emailmsgnumber", ftypes.UINT16, nil, nil, nil, "Helps in rebuilding a mail message that was sent in several messages")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.eod_time = ProtoField.new("Eod Time", "qse.qsecash.marketdata.xdp.v2.6.eodtime", ftypes.STRING, nil, nil, nil, "Time of End of day inquiry / Late Monitoring")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.event_date = ProtoField.new("Event Date", "qse.qsecash.marketdata.xdp.v2.6.eventdate", ftypes.STRING, nil, nil, nil, "Date of the last modification of the characteristics of the instrument except the following ones (which are modified every day): - Previous day’s adjusted closing price (LastAdjPrice) - Previous day capital traded (PrevDayCapitalTraded) - Number of shares for this security traded on previous day (PrevVolumeTraded) - Date when the security last traded (DateOfLastTrade)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.filler_ascii_str_1 = ProtoField.new("Filler Ascii Str 1", "qse.qsecash.marketdata.xdp.v2.6.fillerasciistr1", ftypes.BYTES, nil, nil, nil, "For future use")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.filler_ascii_str_2 = ProtoField.new("Filler Ascii Str 2", "qse.qsecash.marketdata.xdp.v2.6.fillerasciistr2", ftypes.BYTES, nil, nil, nil, "For future use")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.filler_ascii_str_3 = ProtoField.new("Filler Ascii Str 3", "qse.qsecash.marketdata.xdp.v2.6.fillerasciistr3", ftypes.BYTES, nil, nil, nil, "For future use")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.filler_binary_int_1 = ProtoField.new("Filler Binary Int 1", "qse.qsecash.marketdata.xdp.v2.6.fillerbinaryint1", ftypes.BYTES, nil, nil, nil, "For future use")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.filler_binary_int_12 = ProtoField.new("Filler Binary Int 12", "qse.qsecash.marketdata.xdp.v2.6.fillerbinaryint12", ftypes.BYTES, nil, nil, nil, "For future use")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.filler_binary_int_2 = ProtoField.new("Filler Binary Int 2", "qse.qsecash.marketdata.xdp.v2.6.fillerbinaryint2", ftypes.BYTES, nil, nil, nil, "For future use")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.financial_market_code = ProtoField.new("Financial Market Code", "qse.qsecash.marketdata.xdp.v2.6.financialmarketcode", ftypes.STRING, nil, nil, nil, "Refer to appendix B")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.first_level = ProtoField.new("First Level", "qse.qsecash.marketdata.xdp.v2.6.firstlevel", ftypes.UINT32, nil, nil, nil, "First index level broadcast (To be calculated with the LevelScaleCode)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.first_price = ProtoField.new("First Price", "qse.qsecash.marketdata.xdp.v2.6.firstprice", ftypes.UINT32, nil, nil, nil, "First traded price for the current trading day (To be calculated with the PriceScaleCode)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.first_settlement_date = ProtoField.new("First Settlement Date", "qse.qsecash.marketdata.xdp.v2.6.firstsettlementdate", ftypes.STRING, nil, nil, nil, "Represents the first possible settlement date for a given instrument with the instrument's depository")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.first_time = ProtoField.new("First Time", "qse.qsecash.marketdata.xdp.v2.6.firsttime", ftypes.UINT32, nil, nil, nil, "Time of provisional first index level")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.fix_price_tick = ProtoField.new("Fix Price Tick", "qse.qsecash.marketdata.xdp.v2.6.fixpricetick", ftypes.UINT32, nil, nil, nil, "Indicates the amount of the fixed tick size, if it has been defined at the instrument level")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.fix_price_tick_scale_code = ProtoField.new("Fix Price Tick Scale Code", "qse.qsecash.marketdata.xdp.v2.6.fixpricetickscalecode", ftypes.UINT8, nil, nil, nil, "To be combined with FixPriceTick")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.forerunner_level = ProtoField.new("Forerunner Level", "qse.qsecash.marketdata.xdp.v2.6.forerunnerlevel", ftypes.UINT32, nil, nil, nil, "The percentage of variation of the last Forerunner level for the index (signed) that is the subject of this message, if any (To be calculated with the LevelScaleCode)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.halt_reason = ProtoField.new("Halt Reason", "qse.qsecash.marketdata.xdp.v2.6.haltreason", ftypes.STRING, nil, nil, nil, "Indicates the origin of halting for an instrument")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.heading_number = ProtoField.new("Heading Number", "qse.qsecash.marketdata.xdp.v2.6.headingnumber", ftypes.UINT16, nil, nil, nil, "Gives the heading in which the security is in the Bulletin de la Cote Officielle. Used in Euronext only")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.high_collar = ProtoField.new("High Collar", "qse.qsecash.marketdata.xdp.v2.6.highcollar", ftypes.UINT32, nil, nil, nil, "Higher bound of the collar price range (To be calculated with the HighScaleCode)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.high_level = ProtoField.new("High Level", "qse.qsecash.marketdata.xdp.v2.6.highlevel", ftypes.UINT32, nil, nil, nil, "Highest index level (To be calculated with the LevelScaleCode)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.high_scale_code = ProtoField.new("High Scale Code", "qse.qsecash.marketdata.xdp.v2.6.highscalecode", ftypes.UINT8, nil, nil, nil, "To be combined with HighCollar")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.high_time = ProtoField.new("High Time", "qse.qsecash.marketdata.xdp.v2.6.hightime", ftypes.UINT32, nil, nil, nil, "Time of provisional highest index level")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.highest_price = ProtoField.new("Highest Price", "qse.qsecash.marketdata.xdp.v2.6.highestprice", ftypes.UINT32, nil, nil, nil, "Highest Price traded during the day(To be calculated with the PriceScaleCode)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.icb = ProtoField.new("Icb", "qse.qsecash.marketdata.xdp.v2.6.icb", ftypes.STRING, nil, nil, nil, "Identifies for a listed instrument, the economic subsector of the issuing company in the ICB (Industry Classification Benchmark) classification")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.im_price = ProtoField.new("Im Price", "qse.qsecash.marketdata.xdp.v2.6.imprice", ftypes.UINT32, nil, nil, nil, "Indicative Matching Price: Price at which transaction on a security would occur if Opening occurred at this moment (To be calculated with the PriceScaleCode)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.im_volume = ProtoField.new("Im Volume", "qse.qsecash.marketdata.xdp.v2.6.imvolume", ftypes.UINT32, nil, nil, nil, "Indicative Matching Volume: Volume that would be exchanged if Auction occurred at this moment")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.index_frequency = ProtoField.new("Index Frequency", "qse.qsecash.marketdata.xdp.v2.6.indexfrequency", ftypes.STRING, nil, nil, nil, "Frequency of index calculation: ‘C’ - Continuous calculation ‘D’ - Discontinuous calculation")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.index_level = ProtoField.new("Index Level", "qse.qsecash.marketdata.xdp.v2.6.indexlevel", ftypes.UINT32, nil, nil, nil, "The value of the last level for the index that is the subject of this message To be calculated with the LevelScaleCode)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.index_level_code = ProtoField.new("Index Level Code", "qse.qsecash.marketdata.xdp.v2.6.indexlevelcode", ftypes.STRING)
omi_qse_qsecash_marketdata_xdp_v2_6.fields.index_set_of_var_price_tick = ProtoField.new("Index Set Of Var Price Tick", "qse.qsecash.marketdata.xdp.v2.6.indexsetofvarpricetick", ftypes.STRING, nil, nil, nil, "When the instrument's tick is defined via a Variable Tick Table: The key for the variable price tick table consists of two data items [the index for a set of variable price ticks, the lowest value in a range of prices]")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.indicator = ProtoField.new("Indicator", "qse.qsecash.marketdata.xdp.v2.6.indicator", ftypes.STRING, nil, nil, nil, "This field indicates the start of the Instrument characteristic flow")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.industry_code = ProtoField.new("Industry Code", "qse.qsecash.marketdata.xdp.v2.6.industrycode", ftypes.STRING, nil, nil, nil, "Not used")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.industry_text = ProtoField.new("Industry Text", "qse.qsecash.marketdata.xdp.v2.6.industrytext", ftypes.STRING, nil, nil, nil, "Not used")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.instance_id = ProtoField.new("Instance Id", "qse.qsecash.marketdata.xdp.v2.6.instanceid", ftypes.UINT8, nil, nil, nil, "Indicates the number of instances for a given trading engine rebroadcasting orderbooks")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.instrument_category = ProtoField.new("Instrument Category", "qse.qsecash.marketdata.xdp.v2.6.instrumentcategory", ftypes.STRING, nil, nil, nil, "Indicates to which category, the security belongs")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.instrument_code = ProtoField.new("Instrument Code", "qse.qsecash.marketdata.xdp.v2.6.instrumentcode", ftypes.STRING, nil, nil, nil, "Isin Code, International Securities Identification Number, according to the ISO-6166")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.instrument_factor = ProtoField.new("Instrument Factor", "qse.qsecash.marketdata.xdp.v2.6.instrumentfactor", ftypes.UINT32, nil, nil, nil, "Capitalization adjustment coefficient of an instrument in the index (To be calculated with the PriceScaleCode)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.instrument_group_code = ProtoField.new("Instrument Group Code", "qse.qsecash.marketdata.xdp.v2.6.instrumentgroupcode", ftypes.STRING, nil, nil, nil, "Instrument Group / Class Identification")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.instrument_group_state = ProtoField.new("Instrument Group State", "qse.qsecash.marketdata.xdp.v2.6.instrumentgroupstate", ftypes.STRING, nil, nil, nil, "For NSC traded instrument-groups only")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.instrument_id_of_component = ProtoField.new("Instrument Id Of Component", "qse.qsecash.marketdata.xdp.v2.6.instrumentidofcomponent", ftypes.STRING, nil, nil, nil, "Trading code (if any, else ISIN code) ID of index component")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.instrument_name = ProtoField.new("Instrument Name", "qse.qsecash.marketdata.xdp.v2.6.instrumentname", ftypes.STRING)
omi_qse_qsecash_marketdata_xdp_v2_6.fields.instrument_state = ProtoField.new("Instrument State", "qse.qsecash.marketdata.xdp.v2.6.instrumentstate", ftypes.STRING, nil, nil, nil, "Indicates the state of the instrument")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.instrument_state_tcs = ProtoField.new("Instrument State Tcs", "qse.qsecash.marketdata.xdp.v2.6.instrumentstatetcs", ftypes.STRING, nil, nil, nil, "Indicates if trade declaration/reporting is authorized in TCS")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.instrument_trading_status = ProtoField.new("Instrument Trading Status", "qse.qsecash.marketdata.xdp.v2.6.instrumenttradingstatus", ftypes.STRING, nil, nil, nil, "Indicates whether trading on an instrument is suspended, halted or resumed:")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.instrument_valuation_price = ProtoField.new("Instrument Valuation Price", "qse.qsecash.marketdata.xdp.v2.6.instrumentvaluationprice", ftypes.STRING, nil, nil, nil, "Indicates whether the data item “last price” is a valuation price")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.instrument_weight = ProtoField.new("Instrument Weight", "qse.qsecash.marketdata.xdp.v2.6.instrumentweight", ftypes.UINT32, nil, nil, nil, "Instrument's weight (in %) in previous day's reference capitalization of the index (To be calculated with the PriceScaleCode)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.issuing_country_code = ProtoField.new("Issuing Country Code", "qse.qsecash.marketdata.xdp.v2.6.issuingcountrycode", ftypes.STRING, nil, nil, nil, "Country code of location for the corporate headquarters of the company that issued the instrument")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.last_adj_price = ProtoField.new("Last Adj Price", "qse.qsecash.marketdata.xdp.v2.6.lastadjprice", ftypes.UINT32, nil, nil, nil, "Last traded price of the previous trading day after application of the adjustment coefficient (To be calculated with the LastAdjPriceScaleCode)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.last_adj_price_scale_code = ProtoField.new("Last Adj Price Scale Code", "qse.qsecash.marketdata.xdp.v2.6.lastadjpricescalecode", ftypes.UINT8, nil, nil, nil, "To be combined with LastAdjPrice")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.last_price = ProtoField.new("Last Price", "qse.qsecash.marketdata.xdp.v2.6.lastprice", ftypes.UINT32, nil, nil, nil, "Most recent traded price for the current trading day (To be calculated with the PriceScaleCode)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.last_seq_num = ProtoField.new("Last Seq Num", "qse.qsecash.marketdata.xdp.v2.6.lastseqnum", ftypes.UINT32, nil, nil, nil, "Contains the last cached PacketSeqNum that the Refresh is valid to")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.level_scale_code = ProtoField.new("Level Scale Code", "qse.qsecash.marketdata.xdp.v2.6.levelscalecode", ftypes.UINT8, nil, nil, nil, "To be combined with IndexLevel, ForerunnerLevel, SessionHigh, SessionLow")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.link_id = ProtoField.new("Link Id", "qse.qsecash.marketdata.xdp.v2.6.linkid", ftypes.UINT32, nil, nil, nil, "The LinkID identifies a unique transaction in the matching and allows you to correlate execution reports and quotes to the last sale")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.liquidation_level = ProtoField.new("Liquidation Level", "qse.qsecash.marketdata.xdp.v2.6.liquidationlevel", ftypes.UINT32, nil, nil, nil, "Reference at-expiration settlement index level (To be calculated with the LevelScaleCode)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.liquidation_time = ProtoField.new("Liquidation Time", "qse.qsecash.marketdata.xdp.v2.6.liquidationtime", ftypes.UINT32, nil, nil, nil, "Time of provisional expiation settlement index level")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.local_name = ProtoField.new("Local Name", "qse.qsecash.marketdata.xdp.v2.6.localname", ftypes.STRING, nil, nil, nil, "Qatar Exchange only: Instrument name in local language (Arabic character set ISO-8859-6 for QE)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.lot_size = ProtoField.new("Lot Size", "qse.qsecash.marketdata.xdp.v2.6.lotsize", ftypes.UINT64, nil, nil, nil, "Expressed in number of shares or in an amount or a volume of the capital, of the lot size")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.lot_size_scale_code = ProtoField.new("Lot Size Scale Code", "qse.qsecash.marketdata.xdp.v2.6.lotsizescalecode", ftypes.UINT8, nil, nil, nil, "To be combined with LotSize")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.low_collar = ProtoField.new("Low Collar", "qse.qsecash.marketdata.xdp.v2.6.lowcollar", ftypes.UINT32, nil, nil, nil, "Lower bound of the collar price range (To be calculated with the LowScaleCode)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.low_level = ProtoField.new("Low Level", "qse.qsecash.marketdata.xdp.v2.6.lowlevel", ftypes.UINT32, nil, nil, nil, "Lowest index level (To be calculated with the LevelScaleCode)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.low_scale_code = ProtoField.new("Low Scale Code", "qse.qsecash.marketdata.xdp.v2.6.lowscalecode", ftypes.UINT8, nil, nil, nil, "To be combined with LowCollar")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.low_time = ProtoField.new("Low Time", "qse.qsecash.marketdata.xdp.v2.6.lowtime", ftypes.UINT32, nil, nil, nil, "Time of provisional lowest index level")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.lowest_price = ProtoField.new("Lowest Price", "qse.qsecash.marketdata.xdp.v2.6.lowestprice", ftypes.UINT32, nil, nil, nil, "Lowest Price traded during the day(To be calculated with the PriceScaleCode)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.main_depositary = ProtoField.new("Main Depositary", "qse.qsecash.marketdata.xdp.v2.6.maindepositary", ftypes.STRING, nil, nil, nil, "Identifies the default (or main) depository organisation of the instrument (for Euronext, between the possible 5 depositaries registered for Euronext markets) used by priority for the settlement (e.g.: multi-listed instruments which have several depositories)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.market_feed_code = ProtoField.new("Market Feed Code", "qse.qsecash.marketdata.xdp.v2.6.marketfeedcode", ftypes.STRING, nil, nil, nil, "\"Market data flow\" to which the instrument belongs")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.market_indicator = ProtoField.new("Market Indicator", "qse.qsecash.marketdata.xdp.v2.6.marketindicator", ftypes.UINT8, nil, nil, nil, "Indicates the market regulations governing the market on which the security is traded")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.market_segment = ProtoField.new("Market Segment", "qse.qsecash.marketdata.xdp.v2.6.marketsegment", ftypes.STRING, nil, nil, nil, "Qatar Exchange only: Market segment")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.message_size = ProtoField.new("Message Size", "qse.qsecash.marketdata.xdp.v2.6.messagesize", ftypes.UINT16, nil, nil, nil, "Length of the message body, excluding the 2 byte MsgSize field")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.message_type = ProtoField.new("Message Type", "qse.qsecash.marketdata.xdp.v2.6.messagetype", ftypes.UINT16, nil, nil, nil, "The type of this message")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.mic = ProtoField.new("Mic", "qse.qsecash.marketdata.xdp.v2.6.mic", ftypes.STRING, nil, nil, nil, "Identifies the market to which an instrument y belongs by its MIC (Market Identification code), according to ISO 10383")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.mic_list = ProtoField.new("Mic List", "qse.qsecash.marketdata.xdp.v2.6.miclist", ftypes.STRING, nil, nil, nil, "Identifies the markets on which a security is listed by its MIC (Market Identification Code)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.mnemo = ProtoField.new("Mnemo", "qse.qsecash.marketdata.xdp.v2.6.mnemo", ftypes.STRING, nil, nil, nil, "Mnemonic code of the instrument")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.nb_trades = ProtoField.new("Nb Trades", "qse.qsecash.marketdata.xdp.v2.6.nbtrades", ftypes.UINT32, nil, nil, nil, "Number of Trades executed on the market since the beginning of the Trading Day")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.nom_mkdt_price_scale_code = ProtoField.new("Nom Mkdt Price Scale Code", "qse.qsecash.marketdata.xdp.v2.6.nommkdtpricescalecode", ftypes.UINT8, nil, nil, nil, "To be combined with NomMkdtPrice")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.nom_mkt_price = ProtoField.new("Nom Mkt Price", "qse.qsecash.marketdata.xdp.v2.6.nommktprice", ftypes.UINT64, nil, nil, nil, "Amount of the nominal value of the security (To be calculated with the NomMktPriceScaleCode)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.num_of_securities_quoted = ProtoField.new("Num Of Securities Quoted", "qse.qsecash.marketdata.xdp.v2.6.numofsecuritiesquoted", ftypes.UINT16, nil, nil, nil, "Number of instruments in the index that have actually traded (active instruments)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.number_ask_orders = ProtoField.new("Number Ask Orders", "qse.qsecash.marketdata.xdp.v2.6.numberaskorders", ftypes.UINT16, nil, nil, nil, "Number of sell orders at the ask price")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.number_bid_orders = ProtoField.new("Number Bid Orders", "qse.qsecash.marketdata.xdp.v2.6.numberbidorders", ftypes.UINT16, nil, nil, nil, "Number of buy orders at the bid price")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.number_instrument_circ = ProtoField.new("Number Instrument Circ", "qse.qsecash.marketdata.xdp.v2.6.numberinstrumentcirc", ftypes.UINT64, nil, nil, nil, "Number of shares issued/bonds outstanding after payments")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.number_msg_entries = ProtoField.new("Number Msg Entries", "qse.qsecash.marketdata.xdp.v2.6.numbermsgentries", ftypes.UINT8, nil, nil, nil, "The number of messages that are contained within the packet")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.number_of_conponents = ProtoField.new("Number Of Conponents", "qse.qsecash.marketdata.xdp.v2.6.numberofconponents", ftypes.UINT16, nil, nil, nil, "Total number of instruments in the index")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.number_of_message = ProtoField.new("Number Of Message", "qse.qsecash.marketdata.xdp.v2.6.numberofmessage", ftypes.UINT16, nil, nil, nil, "Helps in rebuilding a mail message that was sent in several transmission (between 1 to 20)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.number_orders = ProtoField.new("Number Orders", "qse.qsecash.marketdata.xdp.v2.6.numberorders", ftypes.UINT16, nil, nil, nil, "Number of orders in the Book at the price of the current order")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.opening_reference_level = ProtoField.new("Opening Reference Level", "qse.qsecash.marketdata.xdp.v2.6.openingreferencelevel", ftypes.UINT32, nil, nil, nil, "Reference opening index level (To be calculated with the LevelScaleCode)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.opening_reference_time = ProtoField.new("Opening Reference Time", "qse.qsecash.marketdata.xdp.v2.6.openingreferencetime", ftypes.UINT32, nil, nil, nil, "Time of provisional opening reference index level")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.opening_trade_indicator = ProtoField.new("Opening Trade Indicator", "qse.qsecash.marketdata.xdp.v2.6.openingtradeindicator", ftypes.STRING, nil, nil, nil, "If the trade took place during the opening auction or during the core session")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.order_date = ProtoField.new("Order Date", "qse.qsecash.marketdata.xdp.v2.6.orderdate", ftypes.UINT32, nil, nil, nil, "Date of order (YYYYMMDD)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.order_entry_rejection = ProtoField.new("Order Entry Rejection", "qse.qsecash.marketdata.xdp.v2.6.orderentryrejection", ftypes.STRING, nil, nil, nil, "Indicates whether order entry is allowed or forbidden")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.order_id = ProtoField.new("Order Id", "qse.qsecash.marketdata.xdp.v2.6.orderid", ftypes.UINT32, nil, nil, nil, "Identifies the uniqueness of the order, when combined with OrderDate")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.order_origin = ProtoField.new("Order Origin", "qse.qsecash.marketdata.xdp.v2.6.orderorigin", ftypes.STRING, nil, nil, nil, "QATAR EXCHANGE ONLY: Order Origin (so that the FIFO-Origin priority can be determined)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.order_priority_date = ProtoField.new("Order Priority Date", "qse.qsecash.marketdata.xdp.v2.6.orderprioritydate", ftypes.UINT32, nil, nil, nil, "Date giving the priority of the order (YYYYMMDD)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.order_priority_micro_secs = ProtoField.new("Order Priority Micro Secs", "qse.qsecash.marketdata.xdp.v2.6.orderprioritymicrosecs", ftypes.UINT16, nil, nil, nil, "Number of micro seconds in the current millisecond")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.order_priority_time = ProtoField.new("Order Priority Time", "qse.qsecash.marketdata.xdp.v2.6.orderprioritytime", ftypes.UINT32, nil, nil, nil, "Time giving the priority of the order (HHMMSSsss)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.order_type = ProtoField.new("Order Type", "qse.qsecash.marketdata.xdp.v2.6.ordertype", ftypes.STRING, nil, nil, nil, "Type of Order")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.original_trade_id_number = ProtoField.new("Original Trade Id Number", "qse.qsecash.marketdata.xdp.v2.6.originaltradeidnumber", ftypes.UINT32, nil, nil, nil, "This field refers to the initial TradeIDNumber of the trade concerned (as reported in a 220/240 message) in this cancellation message")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.packet_length = ProtoField.new("Packet Length", "qse.qsecash.marketdata.xdp.v2.6.packetlength", ftypes.UINT16, nil, nil, nil, "Length of the packet in bytes, including the 16 byte packet header")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.packet_sequence_number = ProtoField.new("Packet Sequence Number", "qse.qsecash.marketdata.xdp.v2.6.packetsequencenumber", ftypes.UINT32, nil, nil, nil, "The packet sequence number, unique for each broadcast stream and used for gap detection. It increases serially and monotonically and is reset to 1 at the beginning of each trading day. It is unique for packets containing market data only, and heartbeats inherit it from the last market data packet or packet sequence number reset packet")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.packet_type = ProtoField.new("Packet Type", "qse.qsecash.marketdata.xdp.v2.6.packettype", ftypes.UINT16, nil, nil, nil, "Identifier for the type of data contained in the packet. If all messages within a packet are of the same message type the packet type equals that message type, and if not it is set to the generic packet type of the feed")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.percent_variation_prev_clos = ProtoField.new("Percent Variation Prev Clos", "qse.qsecash.marketdata.xdp.v2.6.percentvariationprevclos", ftypes.UINT32, nil, nil, nil, "Percentage of variation for last index level vs")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.percentage_of_capitalization = ProtoField.new("Percentage Of Capitalization", "qse.qsecash.marketdata.xdp.v2.6.percentageofcapitalization", ftypes.UINT32, nil, nil, nil, "Percentage of capitalization for the active instruments in the index (To be calculated with the PercentageScaleCode)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.percentage_scale_code = ProtoField.new("Percentage Scale Code", "qse.qsecash.marketdata.xdp.v2.6.percentagescalecode", ftypes.UINT8, nil, nil, nil, "To be combined with PercentageOfCapitalization")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.period_indicator = ProtoField.new("Period Indicator", "qse.qsecash.marketdata.xdp.v2.6.periodindicator", ftypes.STRING, nil, nil, nil, "Indicates for which day the characteristics of the instrument will be effective")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.period_side = ProtoField.new("Period Side", "qse.qsecash.marketdata.xdp.v2.6.periodside", ftypes.STRING, nil, nil, nil, "This indicator indicates the side phase for an instrument being in a Bid only situation or Offer only situation")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.preliminary_opening_level = ProtoField.new("Preliminary Opening Level", "qse.qsecash.marketdata.xdp.v2.6.preliminaryopeninglevel", ftypes.UINT32, nil, nil, nil, "Preliminary Opening index level(To be calculated with the LevelScaleCode)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.preliminary_opening_time = ProtoField.new("Preliminary Opening Time", "qse.qsecash.marketdata.xdp.v2.6.preliminaryopeningtime", ftypes.UINT32, nil, nil, nil, "Time of provisional opening index level")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.prev_day_capital_traded = ProtoField.new("Prev Day Capital Traded", "qse.qsecash.marketdata.xdp.v2.6.prevdaycapitaltraded", ftypes.UINT64, nil, nil, nil, "Cumulative capital traded for all previous day trades on a security (To be calculated with the PrevDayCapitalTradedScaleCode)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.prev_day_capital_traded_scale_code = ProtoField.new("Prev Day Capital Traded Scale Code", "qse.qsecash.marketdata.xdp.v2.6.prevdaycapitaltradedscalecode", ftypes.UINT8, nil, nil, nil, "To be combined with PrevDayCapitalTraded")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.prev_volume_traded = ProtoField.new("Prev Volume Traded", "qse.qsecash.marketdata.xdp.v2.6.prevvolumetraded", ftypes.UINT32, nil, nil, nil, "Number of shares traded on this security during trading day identified by 'DateOfLastTrade'")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.previous_close = ProtoField.new("Previous Close", "qse.qsecash.marketdata.xdp.v2.6.previousclose", ftypes.UINT32, nil, nil, nil, "Previous day's reference closing level for the index (To be calculated with the LevelScaleCode)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.price = ProtoField.new("Price", "qse.qsecash.marketdata.xdp.v2.6.price", ftypes.UINT32, nil, nil, nil, "Price of the trade (To be calculated with the PriceScaleCode)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.price_scale_code = ProtoField.new("Price Scale Code", "qse.qsecash.marketdata.xdp.v2.6.pricescalecode", ftypes.UINT8, nil, nil, nil, "To be combined with IMPrice")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.priority_indicator = ProtoField.new("Priority Indicator", "qse.qsecash.marketdata.xdp.v2.6.priorityindicator", ftypes.STRING, nil, nil, nil, "Urgency of the mail, valid values: ‘O’ - Urgent message")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.prog_opening_time = ProtoField.new("Prog Opening Time", "qse.qsecash.marketdata.xdp.v2.6.progopeningtime", ftypes.STRING, nil, nil, nil, "Instrument opening time that has been programmed by the Cash Market Operations")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.qty_shares = ProtoField.new("Qty Shares", "qse.qsecash.marketdata.xdp.v2.6.qtyshares", ftypes.UINT32, nil, nil, nil, "Cumulated Quantity traded (number of shares) on the market since the beginning of the Trading Day")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.quantity_notation = ProtoField.new("Quantity Notation", "qse.qsecash.marketdata.xdp.v2.6.quantitynotation", ftypes.STRING, nil, nil, nil, "Specifies the nature of the amount expression used for negotiating the instrument on the market")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.quote_condition = ProtoField.new("Quote Condition", "qse.qsecash.marketdata.xdp.v2.6.quotecondition", ftypes.STRING, nil, nil, nil, "Liquidity provider presence indicator:")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.quote_link_id = ProtoField.new("Quote Link Id", "qse.qsecash.marketdata.xdp.v2.6.quotelinkid", ftypes.UINT32, nil, nil, nil, "Identifies a unique quote that the Trade executed against")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.quote_number = ProtoField.new("Quote Number", "qse.qsecash.marketdata.xdp.v2.6.quotenumber", ftypes.UINT8, nil, nil, nil, "Indicates the level in the order book for the given aggregate quote, derived from it’s price value")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.rebroadcast_indicator = ProtoField.new("Rebroadcast Indicator", "qse.qsecash.marketdata.xdp.v2.6.rebroadcastindicator", ftypes.STRING, nil, nil, nil, "On occasion the 542 message carrying the closing level of the previous day is rebroadcast at the beginning of the trading day")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.repo_expiry_date = ProtoField.new("Repo Expiry Date", "qse.qsecash.marketdata.xdp.v2.6.repoexpirydate", ftypes.STRING, nil, nil, nil, "Represents the inclusive date until which a lending/borrowing contract can be traded")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.repo_indicator = ProtoField.new("Repo Indicator", "qse.qsecash.marketdata.xdp.v2.6.repoindicator", ftypes.STRING, nil, nil, nil, "Indicates whether the security listed underlies any loan contracts, meaning it has been admitted to the Deferred Settlement system and/or to the lending market")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.retransmission_indicator = ProtoField.new("Retransmission Indicator", "qse.qsecash.marketdata.xdp.v2.6.retransmissionindicator", ftypes.STRING, nil, nil, nil, "Indicates the status of the retransmission for the instance of the trading engine: 'B' Beginning of the retransmission 'E' End of the retransmission")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.section_number = ProtoField.new("Section Number", "qse.qsecash.marketdata.xdp.v2.6.sectionnumber", ftypes.UINT8, nil, nil, nil, "Gives the section in which the security is in the Bulletin de la Cote Officielle. Used in Euronext only")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.send_time = ProtoField.new("Send Time", "qse.qsecash.marketdata.xdp.v2.6.sendtime", ftypes.UINT32, nil, nil, nil, "Timestamp in milliseconds indicating the packet broadcast time. The number represents the number of milliseconds since midnight of the last Sunday 00:00 UTC, a weekly epoch no Epoch trait represents, so the field carries no epoch and a reader resolves the absolute time against the Sunday preceding the capture")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.sending_indicator = ProtoField.new("Sending Indicator", "qse.qsecash.marketdata.xdp.v2.6.sendingindicator", ftypes.UINT16, nil, nil, nil, "Indicate the \"sending mode\" that can be: 1 - Real Time 2 - Batch mode")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.sequence_number = ProtoField.new("Sequence Number", "qse.qsecash.marketdata.xdp.v2.6.sequencenumber", ftypes.UINT16, nil, nil, nil, "Current sequence number message")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.service_id = ProtoField.new("Service Id", "qse.qsecash.marketdata.xdp.v2.6.serviceid", ftypes.UINT16, nil, nil, nil, "Numeric value identifying the broadcast stream. Qatar Exchange production streams are 201 Equities All Data, 202 Equities Trades and Quotes, 204 Equities Orders, 207 Indices Composition and Values, 208 Off Exchange Trade Reporting Referential Data and 209 Off Exchange Trade Reporting Trade Reporting")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.session_high = ProtoField.new("Session High", "qse.qsecash.marketdata.xdp.v2.6.sessionhigh", ftypes.UINT32, nil, nil, nil, "Highest level of the day (To be calculated with the LevelScaleCode)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.session_low = ProtoField.new("Session Low", "qse.qsecash.marketdata.xdp.v2.6.sessionlow", ftypes.UINT32, nil, nil, nil, "Lowest level of the day (To be calculated with the LevelScaleCode)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.session_type = ProtoField.new("Session Type", "qse.qsecash.marketdata.xdp.v2.6.sessiontype", ftypes.STRING, nil, nil, nil, "Market Session")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.shares_out = ProtoField.new("Shares Out", "qse.qsecash.marketdata.xdp.v2.6.sharesout", ftypes.UINT64, nil, nil, nil, "Not used")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.side = ProtoField.new("Side", "qse.qsecash.marketdata.xdp.v2.6.side", ftypes.STRING, nil, nil, nil, "Indicates the side of the order")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.small_trade = ProtoField.new("Small Trade", "qse.qsecash.marketdata.xdp.v2.6.smalltrade", ftypes.UINT32, nil, nil, nil, "Qatar Exchange only: Instrument trade amount under which a trade is considered as small")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.small_trade_indicator = ProtoField.new("Small Trade Indicator", "qse.qsecash.marketdata.xdp.v2.6.smalltradeindicator", ftypes.STRING, nil, nil, nil, "QATAR EXCHANGE ONLY: This field indicates if the trade is a small trade or not")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.source_seq_num = ProtoField.new("Source Seq Num", "qse.qsecash.marketdata.xdp.v2.6.sourceseqnum", ftypes.UINT32, nil, nil, nil, "This field specifies the sequence number assigned by the source system to this message")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.source_time = ProtoField.new("Source Time", "qse.qsecash.marketdata.xdp.v2.6.sourcetime", ftypes.UINT32, nil, nil, nil, "This field specifies the message generation time")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.source_time_micro_secs = ProtoField.new("Source Time Micro Secs", "qse.qsecash.marketdata.xdp.v2.6.sourcetimemicrosecs", ftypes.UINT16, nil, nil, nil, "Number of micro seconds to be combined with SourceTime")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.start_date_halting = ProtoField.new("Start Date Halting", "qse.qsecash.marketdata.xdp.v2.6.startdatehalting", ftypes.STRING, nil, nil, nil, "Date when suspension of trading started for an instrument")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.start_time_halting = ProtoField.new("Start Time Halting", "qse.qsecash.marketdata.xdp.v2.6.starttimehalting", ftypes.STRING, nil, nil, nil, "Time when suspension of trading started for an instrument")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.stock_exchange_code = ProtoField.new("Stock Exchange Code", "qse.qsecash.marketdata.xdp.v2.6.stockexchangecode", ftypes.UINT16, nil, nil, nil, "Indicates the Market Place")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.strike_currency = ProtoField.new("Strike Currency", "qse.qsecash.marketdata.xdp.v2.6.strikecurrency", ftypes.STRING, nil, nil, nil, "Code for the currency of the strike price applied for an instrument whose maturity is reached (ISO 4217-3A)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.strike_currency_indicator = ProtoField.new("Strike Currency Indicator", "qse.qsecash.marketdata.xdp.v2.6.strikecurrencyindicator", ftypes.UINT8, nil, nil, nil, "Change rate indicator for currency of the strike price Indicates if the change rate will be applied to the currency defined for strike prices of the instrument")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.strike_price = ProtoField.new("Strike Price", "qse.qsecash.marketdata.xdp.v2.6.strikeprice", ftypes.UINT32, nil, nil, nil, "The specified price of an option contract at which the contract may be exercised, whereby a call option buyer can buy the underlying or a put option buyer can sell the underlying")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.strike_scale_code = ProtoField.new("Strike Scale Code", "qse.qsecash.marketdata.xdp.v2.6.strikescalecode", ftypes.UINT8, nil, nil, nil, "To be combined with StrikePrice")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.symbol_index = ProtoField.new("Symbol Index", "qse.qsecash.marketdata.xdp.v2.6.symbolindex", ftypes.UINT32, nil, nil, nil, "UTP-MD proprietary identification of the instrument")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.system_id = ProtoField.new("System Id", "qse.qsecash.marketdata.xdp.v2.6.systemid", ftypes.UINT32, nil, nil, nil, "The ID of the originating Exchange/System of the message")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.tax_code = ProtoField.new("Tax Code", "qse.qsecash.marketdata.xdp.v2.6.taxcode", ftypes.UINT8, nil, nil, nil, "Tax deduction code to which the security belongs")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.text = ProtoField.new("Text", "qse.qsecash.marketdata.xdp.v2.6.text", ftypes.STRING, nil, nil, nil, "Text, line break (@), page break (#)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.tick_direction = ProtoField.new("Tick Direction", "qse.qsecash.marketdata.xdp.v2.6.tickdirection", ftypes.STRING, nil, nil, nil, "Symbol of the variation of the price versus the previous (traded or reference) price, valid values: ‘+’ - positive ‘-‘ - negative ‘0’ - no variation or data field not significant Null - not significant")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.time_closing_1 = ProtoField.new("Time Closing 1", "qse.qsecash.marketdata.xdp.v2.6.timeclosing1", ftypes.STRING, nil, nil, nil, "Indicates the closing time of the Class / Instrument Group for the session nd")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.time_closing_2 = ProtoField.new("Time Closing 2", "qse.qsecash.marketdata.xdp.v2.6.timeclosing2", ftypes.STRING, nil, nil, nil, "Indicates, if applicable, the closing time of 2 auction rd")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.time_closing_3 = ProtoField.new("Time Closing 3", "qse.qsecash.marketdata.xdp.v2.6.timeclosing3", ftypes.STRING, nil, nil, nil, "Indicates, if applicable, the closing time of 3 auction")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.time_lag_euronext_utc = ProtoField.new("Time Lag Euronext Utc", "qse.qsecash.marketdata.xdp.v2.6.timelageuronextutc", ftypes.STRING, nil, nil, nil, "Used for Euronext/MiFID: Effective difference time between CET (Euronext time) and UTC")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.time_lag_mi_fid_reg_utc = ProtoField.new("Time Lag Mi Fid Reg Utc", "qse.qsecash.marketdata.xdp.v2.6.timelagmifidregutc", ftypes.STRING, nil, nil, nil, "Used for Euronext/MiFID: Effective time difference between MiFID regulators and UTC")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.time_opening_1 = ProtoField.new("Time Opening 1", "qse.qsecash.marketdata.xdp.v2.6.timeopening1", ftypes.STRING, nil, nil, nil, "Indicates the opening time of the Class / Instrument Group for the session")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.time_opening_2 = ProtoField.new("Time Opening 2", "qse.qsecash.marketdata.xdp.v2.6.timeopening2", ftypes.STRING, nil, nil, nil, "Indicates, if applicable, the opening time of 2 auction nd")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.time_opening_3 = ProtoField.new("Time Opening 3", "qse.qsecash.marketdata.xdp.v2.6.timeopening3", ftypes.STRING, nil, nil, nil, "Indicates, if applicable, the opening time of 3 auction rd")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.time_pre_opening_1 = ProtoField.new("Time Pre Opening 1", "qse.qsecash.marketdata.xdp.v2.6.timepreopening1", ftypes.STRING, nil, nil, nil, "Indicates the pre-opening time of the Class / Instrument Group for the session")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.time_pre_opening_2 = ProtoField.new("Time Pre Opening 2", "qse.qsecash.marketdata.xdp.v2.6.timepreopening2", ftypes.STRING, nil, nil, nil, "Indicates, if applicable, the pre-opening time of 2 auction nd")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.time_pre_opening_3 = ProtoField.new("Time Pre Opening 3", "qse.qsecash.marketdata.xdp.v2.6.timepreopening3", ftypes.STRING, nil, nil, nil, "Indicates, if applicable, the pre-opening time of 3 auction rd")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.title = ProtoField.new("Title", "qse.qsecash.marketdata.xdp.v2.6.title", ftypes.STRING, nil, nil, nil, "Title of the mail")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.trad_cond_2 = ProtoField.new("Trad Cond 2", "qse.qsecash.marketdata.xdp.v2.6.tradcond2", ftypes.STRING, nil, nil, nil, "Sequencing related conditions, Last of a series of trades at the same price")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.trad_cond_3 = ProtoField.new("Trad Cond 3", "qse.qsecash.marketdata.xdp.v2.6.tradcond3", ftypes.STRING, nil, nil, nil, "Trade related conditions, Cross trade indicator")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.trade_id_number = ProtoField.new("Trade Id Number", "qse.qsecash.marketdata.xdp.v2.6.tradeidnumber", ftypes.UINT32, nil, nil, nil, "Unique numeric and increasing Identifier of the trade, set by the trading engine")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.trade_origin = ProtoField.new("Trade Origin", "qse.qsecash.marketdata.xdp.v2.6.tradeorigin", ftypes.STRING, nil, nil, nil, "QATAR EXCHANGE ONLY: Field Name Offset Size Format Description (Bytes) This field indicates the origin of the trade")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.trading_code = ProtoField.new("Trading Code", "qse.qsecash.marketdata.xdp.v2.6.tradingcode", ftypes.STRING, nil, nil, nil, "Trading code of the instrument")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.trading_currency = ProtoField.new("Trading Currency", "qse.qsecash.marketdata.xdp.v2.6.tradingcurrency", ftypes.STRING, nil, nil, nil, "Code of the currency in which the instrument is traded")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.trading_currency_indicator = ProtoField.new("Trading Currency Indicator", "qse.qsecash.marketdata.xdp.v2.6.tradingcurrencyindicator", ftypes.UINT8, nil, nil, nil, "Change rate indicator for currency of Instrument Traded Price: Indicates if the change rate will be applied to the currency defined for traded prices of the instrument")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.trading_engine_id = ProtoField.new("Trading Engine Id", "qse.qsecash.marketdata.xdp.v2.6.tradingengineid", ftypes.STRING, nil, nil, nil, "Code identifying the trading engine")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.type_of_ask_price = ProtoField.new("Type Of Ask Price", "qse.qsecash.marketdata.xdp.v2.6.typeofaskprice", ftypes.UINT8)
omi_qse_qsecash_marketdata_xdp_v2_6.fields.type_of_bid_price = ProtoField.new("Type Of Bid Price", "qse.qsecash.marketdata.xdp.v2.6.typeofbidprice", ftypes.UINT8)
omi_qse_qsecash_marketdata_xdp_v2_6.fields.type_of_corporate_event = ProtoField.new("Type Of Corporate Event", "qse.qsecash.marketdata.xdp.v2.6.typeofcorporateevent", ftypes.STRING, nil, nil, nil, "Indicates the last type of corporate event that has occurred on an instrument, such as detachment of rights, or of coupons")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.type_of_derivatives = ProtoField.new("Type Of Derivatives", "qse.qsecash.marketdata.xdp.v2.6.typeofderivatives", ftypes.STRING, nil, nil, nil, "Type of derivative instrument associated to the security")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.type_of_instrument = ProtoField.new("Type Of Instrument", "qse.qsecash.marketdata.xdp.v2.6.typeofinstrument", ftypes.UINT16)
omi_qse_qsecash_marketdata_xdp_v2_6.fields.type_of_last_price = ProtoField.new("Type Of Last Price", "qse.qsecash.marketdata.xdp.v2.6.typeoflastprice", ftypes.UINT16, nil, nil, nil, "Indicates the message trade type")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.type_of_level = ProtoField.new("Type Of Level", "qse.qsecash.marketdata.xdp.v2.6.typeoflevel", ftypes.STRING, nil, nil, nil, "‘1’ - Price level ‘2’ - Gross profitability level ‘3’ - Net profitability level")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.type_of_market_admission = ProtoField.new("Type Of Market Admission", "qse.qsecash.marketdata.xdp.v2.6.typeofmarketadmission", ftypes.STRING, nil, nil, nil, "Indicates the type of market to which a security has been listed")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.type_of_message = ProtoField.new("Type Of Message", "qse.qsecash.marketdata.xdp.v2.6.typeofmessage", ftypes.STRING, nil, nil, nil, "General contents of the message")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.type_of_price = ProtoField.new("Type Of Price", "qse.qsecash.marketdata.xdp.v2.6.typeofprice", ftypes.UINT16, nil, nil, nil, "Market- Code identifying the type of price that is updated")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.type_of_unit_exp = ProtoField.new("Type Of Unit Exp", "qse.qsecash.marketdata.xdp.v2.6.typeofunitexp", ftypes.UINT8, nil, nil, nil, "Unit in which the security is quoted")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.underlying_repo_isin_code = ProtoField.new("Underlying Repo Isin Code", "qse.qsecash.marketdata.xdp.v2.6.underlyingrepoisincode", ftypes.STRING, nil, nil, nil, "Underlying security (security used in the loan quotation system) for loan contracts at given value on centralized lending market")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.underlying_wisin_code = ProtoField.new("Underlying Wisin Code", "qse.qsecash.marketdata.xdp.v2.6.underlyingwisincode", ftypes.STRING, nil, nil, nil, "Gives the trading code of the underlying listed security of a warrant")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.us_indicators = ProtoField.new("Us Indicators", "qse.qsecash.marketdata.xdp.v2.6.usindicators", ftypes.STRING, nil, nil, nil, "Not used")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.variation = ProtoField.new("Variation", "qse.qsecash.marketdata.xdp.v2.6.variation", ftypes.UINT32, nil, nil, nil, "Percentage variation of the last IMP against the previous day’s (signed) reference price for the stock concerned, ie the last known price can be the last adjusted closing price or the last price indication (if an indication was entered after the last traded price).(To be calculated with the VariationScaleCode)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.variation_from_previous_days_price = ProtoField.new("Variation From Previous Days Price", "qse.qsecash.marketdata.xdp.v2.6.variationfrompreviousdaysprice", ftypes.INT32, nil, nil, nil, "Percentage of variation for day's index / Previous day's reference (To sPrice (signed) be calculated with the VariationScaleCode) Field Name Offset Size Format Description (Bytes)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.variation_last_price = ProtoField.new("Variation Last Price", "qse.qsecash.marketdata.xdp.v2.6.variationlastprice", ftypes.UINT32, nil, nil, nil, "Percentage variation of today’s price/last reference price(To be (signed) calculated with the VariationScaleCode)")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.variation_scale_code = ProtoField.new("Variation Scale Code", "qse.qsecash.marketdata.xdp.v2.6.variationscalecode", ftypes.UINT8, nil, nil, nil, "To be combined with Variation")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.volume = ProtoField.new("Volume", "qse.qsecash.marketdata.xdp.v2.6.volume", ftypes.UINT32, nil, nil, nil, "Number of shares transacted in this trade")

-- Qse QseCash MarketData Xdp 2.6 Framing
omi_qse_qsecash_marketdata_xdp_v2_6.fields.message = ProtoField.new("Message", "qse.qsecash.marketdata.xdp.v2.6.message", ftypes.STRING)
omi_qse_qsecash_marketdata_xdp_v2_6.fields.message_header = ProtoField.new("Message Header", "qse.qsecash.marketdata.xdp.v2.6.messageheader", ftypes.STRING)
omi_qse_qsecash_marketdata_xdp_v2_6.fields.packet = ProtoField.new("Packet", "qse.qsecash.marketdata.xdp.v2.6.packet", ftypes.STRING, nil, nil, nil, "Qse Xdp Udp Packet")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.packet_header = ProtoField.new("Packet Header", "qse.qsecash.marketdata.xdp.v2.6.packetheader", ftypes.STRING, nil, nil, nil, "All messages contain a common packet header, so that a client implements line level protocol processing once and then develops parsing algorithms only for its choice of message")

-- Qse QseCash MarketData 2.6 Application Messages
omi_qse_qsecash_marketdata_xdp_v2_6.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "qse.qsecash.marketdata.xdp.v2.6.auctionsummarymessage", ftypes.STRING, nil, nil, nil, "An Auction Summary message summarises the trades resulting from an auction.")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.class_state_change_message = ProtoField.new("Class State Change Message", "qse.qsecash.marketdata.xdp.v2.6.classstatechangemessage", ftypes.STRING, nil, nil, nil, "A Class State Change message announces a change in the trading market phase of a class or instrument group, which instruments belonging to it inherit.")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.collars_message = ProtoField.new("Collars Message", "qse.qsecash.marketdata.xdp.v2.6.collarsmessage", ftypes.STRING, nil, nil, nil, "A Collars message gives the upper and lower price thresholds beyond which an instrument is reserved.")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.end_referential_message = ProtoField.new("End Referential Message", "qse.qsecash.marketdata.xdp.v2.6.endreferentialmessage", ftypes.STRING, nil, nil, nil, "An End Referential message marks the end of the broadcast of the reference data.")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.end_refresh_message = ProtoField.new("End Refresh Message", "qse.qsecash.marketdata.xdp.v2.6.endrefreshmessage", ftypes.STRING, nil, nil, nil, "A refresh cycle ends with an End Refresh message on the multicast channels.")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.global_market_activity_summary_message = ProtoField.new("Global Market Activity Summary Message", "qse.qsecash.marketdata.xdp.v2.6.globalmarketactivitysummarymessage", ftypes.STRING, nil, nil, nil, "A Global Market Activity Summary message provides an overall summary of the global market activity. This message is used only at Qatar Exchange.")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.index_composition_message = ProtoField.new("Index Composition Message", "qse.qsecash.marketdata.xdp.v2.6.indexcompositionmessage", ftypes.STRING, nil, nil, nil, "An Index Composition message transmits one instrument making up an index, its weight and its adjustment coefficient.")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.index_summary_message = ProtoField.new("Index Summary Message", "qse.qsecash.marketdata.xdp.v2.6.indexsummarymessage", ftypes.STRING, nil, nil, nil, "An Index Summary message gives the summary of an index for the trading day.")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.indicative_matching_price_message = ProtoField.new("Indicative Matching Price Message", "qse.qsecash.marketdata.xdp.v2.6.indicativematchingpricemessage", ftypes.STRING, nil, nil, nil, "An Indicative Matching Price message gives the price at which the instrument would open, were the opening to occur at this moment.")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.mail_message = ProtoField.new("Mail Message", "qse.qsecash.marketdata.xdp.v2.6.mailmessage", ftypes.STRING, nil, nil, nil, "A Mail message carries a free text notice broadcast to market participants.")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.order_update_market_sheet_message = ProtoField.new("Order Update Market Sheet Message", "qse.qsecash.marketdata.xdp.v2.6.orderupdatemarketsheetmessage", ftypes.STRING, nil, nil, nil, "An Order Update message carries a single order of the market sheet, so that the order book of an instrument may be rebuilt and maintained.")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.orderbook_retransmission_delimiter_message = ProtoField.new("Orderbook Retransmission Delimiter Message", "qse.qsecash.marketdata.xdp.v2.6.orderbookretransmissiondelimitermessage", ftypes.STRING, nil, nil, nil, "An Orderbook Retransmission Delimiter message delimits the retransmission of a market sheet, so that the order book is cleaned before the orders that follow are applied.")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.price_update_message = ProtoField.new("Price Update Message", "qse.qsecash.marketdata.xdp.v2.6.priceupdatemessage", ftypes.STRING, nil, nil, nil, "A Price Update message updates the statistics of an instrument without carrying a new trade.")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.quotes_message = ProtoField.new("Quotes Message", "qse.qsecash.marketdata.xdp.v2.6.quotesmessage", ftypes.STRING, nil, nil, nil, "A Quotes message carries the best limits of the order book for an instrument.")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.real_time_index_message = ProtoField.new("Real Time Index Message", "qse.qsecash.marketdata.xdp.v2.6.realtimeindexmessage", ftypes.STRING, nil, nil, nil, "A Real Time Index message carries the current level of an index.")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.referential_message = ProtoField.new("Referential Message", "qse.qsecash.marketdata.xdp.v2.6.referentialmessage", ftypes.STRING, nil, nil, nil, "A Referential message carries the characteristics of an instrument, including its standard identifiers, trading parameters and reference prices.")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.session_timetable_message = ProtoField.new("Session Timetable Message", "qse.qsecash.marketdata.xdp.v2.6.sessiontimetablemessage", ftypes.STRING, nil, nil, nil, "A Session Timetable message gives the timetable of the trading session for a group of instruments.")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.start_referential_message = ProtoField.new("Start Referential Message", "qse.qsecash.marketdata.xdp.v2.6.startreferentialmessage", ftypes.STRING, nil, nil, nil, "A Start Referential message marks the beginning of the broadcast of the reference data.")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.start_refresh_message = ProtoField.new("Start Refresh Message", "qse.qsecash.marketdata.xdp.v2.6.startrefreshmessage", ftypes.STRING, nil, nil, nil, "A refresh cycle begins with a Start Refresh message on the multicast channels.")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.stock_state_change_message = ProtoField.new("Stock State Change Message", "qse.qsecash.marketdata.xdp.v2.6.stockstatechangemessage", ftypes.STRING, nil, nil, nil, "A Stock State Change message is generated by the trading engines to announce a change in the state of an instrument.")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.trade_cancellation_message = ProtoField.new("Trade Cancellation Message", "qse.qsecash.marketdata.xdp.v2.6.tradecancellationmessage", ftypes.STRING, nil, nil, nil, "A Trade Cancellation message announces the cancellation of a trade previously published.")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.trade_creation_message = ProtoField.new("Trade Creation Message", "qse.qsecash.marketdata.xdp.v2.6.tradecreationmessage", ftypes.STRING, nil, nil, nil, "A Trade Creation message announces a trade that has just been created in the trading engine.")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.trade_full_information_message = ProtoField.new("Trade Full Information Message", "qse.qsecash.marketdata.xdp.v2.6.tradefullinformationmessage", ftypes.STRING, nil, nil, nil, "A Trade Full Information message carries a trade along with the cumulated statistics of the instrument for the trading day.")
omi_qse_qsecash_marketdata_xdp_v2_6.fields.vwap_closing_price_message = ProtoField.new("Vwap Closing Price Message", "qse.qsecash.marketdata.xdp.v2.6.vwapclosingpricemessage", ftypes.STRING, nil, nil, nil, "A VWAP - Closing Price message contains the real time Volume-Weighted Average Price for an instrument together with the current closing price. This message is used exclusively at Qatar Exchange.")

-- Qse QseCash MarketData Xdp 2.6 Generated Fields
omi_qse_qsecash_marketdata_xdp_v2_6.fields.message_index = ProtoField.new("Message Index", "qse.qsecash.marketdata.xdp.v2.6.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Qse QseCash MarketData Xdp 2.6 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Qse QseCash MarketData Xdp 2.6 Show Options
omi_qse_qsecash_marketdata_xdp_v2_6.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_qse_qsecash_marketdata_xdp_v2_6.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_qse_qsecash_marketdata_xdp_v2_6.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_qse_qsecash_marketdata_xdp_v2_6.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_qse_qsecash_marketdata_xdp_v2_6.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_qse_qsecash_marketdata_xdp_v2_6.prefs.show_application_messages then
    show.application_messages = omi_qse_qsecash_marketdata_xdp_v2_6.prefs.show_application_messages
  end
  if show.headers ~= omi_qse_qsecash_marketdata_xdp_v2_6.prefs.show_headers then
    show.headers = omi_qse_qsecash_marketdata_xdp_v2_6.prefs.show_headers
  end
  if show.structs ~= omi_qse_qsecash_marketdata_xdp_v2_6.prefs.show_structs then
    show.structs = omi_qse_qsecash_marketdata_xdp_v2_6.prefs.show_structs
  end
  if show.indexes ~= omi_qse_qsecash_marketdata_xdp_v2_6.prefs.show_indexes then
    show.indexes = omi_qse_qsecash_marketdata_xdp_v2_6.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------


-- Zlib decompression: wireshark built in inflate (uncompress_zlib from 4.4, uncompress before)
local function zlib_decompress(range)
  local ok, decompressed = pcall(function() return range:uncompress_zlib("Decompressed") end)

  if ok then
    return decompressed
  end

  return range:uncompress("Decompressed")
end
-----------------------------------------------------------------------
-- Qse QseCash MarketData Xdp 2.6 Fields
-----------------------------------------------------------------------

-- Action Affecting State
qse_qsecash_marketdata_xdp_v2_6.action_affecting_state = {}

-- Size: Action Affecting State
qse_qsecash_marketdata_xdp_v2_6.action_affecting_state.size = 1

-- Display: Action Affecting State
qse_qsecash_marketdata_xdp_v2_6.action_affecting_state.display = function(value)
  if value == "0" then
    return "Action Affecting State: Not Applicable (0)"
  end
  if value == "C" then
    return "Action Affecting State: Trading On The Instrument At The Opening Sent Before O (C)"
  end
  if value == "D" then
    return "Action Affecting State: Cancelled Programmed Opening (D)"
  end
  if value == "M" then
    return "Action Affecting State: Instrument Manually Halted By Market Operations (M)"
  end
  if value == "N" then
    return "Action Affecting State: Instrument Is Being Initialized Beginning Of The Trading Day (N)"
  end
  if value == "O" then
    return "Action Affecting State: Instrument Opened (O)"
  end
  if value == "P" then
    return "Action Affecting State: Deferred Programmed Opening (P)"
  end
  if value == "R" then
    return "Action Affecting State: Automatic Halting At The Class Auction (R)"
  end

  return "Action Affecting State: Unknown("..value..")"
end

-- Dissect: Action Affecting State
qse_qsecash_marketdata_xdp_v2_6.action_affecting_state.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.action_affecting_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.action_affecting_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.action_affecting_state, range, value, display)

  return offset + length, value
end

-- Action Type
qse_qsecash_marketdata_xdp_v2_6.action_type = {}

-- Size: Action Type
qse_qsecash_marketdata_xdp_v2_6.action_type.size = 1

-- Display: Action Type
qse_qsecash_marketdata_xdp_v2_6.action_type.display = function(value)
  if value == "A" then
    return "Action Type: New Order (A)"
  end
  if value == "D" then
    return "Action Type: Deletion Of Order Identified By Order Id (D)"
  end
  if value == "P" then
    return "Action Type: Deletion Of Order Identified By Order Id And All Preceding Orders (P)"
  end
  if value == "F" then
    return "Action Type: Deletion Of All Orders For The Given Instrument Depending On The (F)"
  end
  if value == "Y" then
    return "Action Type: Retransmission Of All Orders For The Given Instrument (Y)"
  end

  return "Action Type: Unknown("..value..")"
end

-- Dissect: Action Type
qse_qsecash_marketdata_xdp_v2_6.action_type.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.action_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.action_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.action_type, range, value, display)

  return offset + length, value
end

-- Address Type
qse_qsecash_marketdata_xdp_v2_6.address_type = {}

-- Size: Address Type
qse_qsecash_marketdata_xdp_v2_6.address_type.size = 2

-- Display: Address Type
qse_qsecash_marketdata_xdp_v2_6.address_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Address Type: No Value"
  end

  return "Address Type: "..value
end

-- Dissect: Address Type
qse_qsecash_marketdata_xdp_v2_6.address_type.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.address_type.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.address_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.address_type, range, value, display)

  return offset + length, value
end

-- Adjusted Closing Price
qse_qsecash_marketdata_xdp_v2_6.adjusted_closing_price = {}

-- Size: Adjusted Closing Price
qse_qsecash_marketdata_xdp_v2_6.adjusted_closing_price.size = 4

-- Display: Adjusted Closing Price
qse_qsecash_marketdata_xdp_v2_6.adjusted_closing_price.display = function(value)
  return "Adjusted Closing Price: "..value
end

-- Dissect: Adjusted Closing Price
qse_qsecash_marketdata_xdp_v2_6.adjusted_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.adjusted_closing_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.adjusted_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.adjusted_closing_price, range, value, display)

  return offset + length, value
end

-- Aggregated Volume
qse_qsecash_marketdata_xdp_v2_6.aggregated_volume = {}

-- Size: Aggregated Volume
qse_qsecash_marketdata_xdp_v2_6.aggregated_volume.size = 4

-- Display: Aggregated Volume
qse_qsecash_marketdata_xdp_v2_6.aggregated_volume.display = function(value)
  return "Aggregated Volume: "..value
end

-- Dissect: Aggregated Volume
qse_qsecash_marketdata_xdp_v2_6.aggregated_volume.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.aggregated_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.aggregated_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.aggregated_volume, range, value, display)

  return offset + length, value
end

-- Algo
qse_qsecash_marketdata_xdp_v2_6.algo = {}

-- Size: Algo
qse_qsecash_marketdata_xdp_v2_6.algo.size = 1

-- Display: Algo
qse_qsecash_marketdata_xdp_v2_6.algo.display = function(value)
  if value == "F" then
    return "Algo: Fifo (F)"
  end
  if value == "O" then
    return "Algo: Fifo Origin (O)"
  end

  return "Algo: Unknown("..value..")"
end

-- Dissect: Algo
qse_qsecash_marketdata_xdp_v2_6.algo.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.algo.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.algo.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.algo, range, value, display)

  return offset + length, value
end

-- Amount Traded
qse_qsecash_marketdata_xdp_v2_6.amount_traded = {}

-- Size: Amount Traded
qse_qsecash_marketdata_xdp_v2_6.amount_traded.size = 4

-- Display: Amount Traded
qse_qsecash_marketdata_xdp_v2_6.amount_traded.display = function(value)
  return "Amount Traded: "..value
end

-- Dissect: Amount Traded
qse_qsecash_marketdata_xdp_v2_6.amount_traded.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.amount_traded.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.amount_traded.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.amount_traded, range, value, display)

  return offset + length, value
end

-- Ask Price
qse_qsecash_marketdata_xdp_v2_6.ask_price = {}

-- Size: Ask Price
qse_qsecash_marketdata_xdp_v2_6.ask_price.size = 4

-- Display: Ask Price
qse_qsecash_marketdata_xdp_v2_6.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
qse_qsecash_marketdata_xdp_v2_6.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.ask_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Size
qse_qsecash_marketdata_xdp_v2_6.ask_size = {}

-- Size: Ask Size
qse_qsecash_marketdata_xdp_v2_6.ask_size.size = 4

-- Display: Ask Size
qse_qsecash_marketdata_xdp_v2_6.ask_size.display = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
qse_qsecash_marketdata_xdp_v2_6.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.ask_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Auth Shares
qse_qsecash_marketdata_xdp_v2_6.auth_shares = {}

-- Size: Auth Shares
qse_qsecash_marketdata_xdp_v2_6.auth_shares.size = 8

-- Display: Auth Shares
qse_qsecash_marketdata_xdp_v2_6.auth_shares.display = function(value)
  return "Auth Shares: "..value
end

-- Dissect: Auth Shares
qse_qsecash_marketdata_xdp_v2_6.auth_shares.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.auth_shares.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = qse_qsecash_marketdata_xdp_v2_6.auth_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.auth_shares, range, value, display)

  return offset + length, value
end

-- Bic Depositary
qse_qsecash_marketdata_xdp_v2_6.bic_depositary = {}

-- Size: Bic Depositary
qse_qsecash_marketdata_xdp_v2_6.bic_depositary.size = 11

-- Display: Bic Depositary
qse_qsecash_marketdata_xdp_v2_6.bic_depositary.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Bic Depositary: No Value"
  end

  return "Bic Depositary: "..value
end

-- Dissect: Bic Depositary
qse_qsecash_marketdata_xdp_v2_6.bic_depositary.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.bic_depositary.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.bic_depositary.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.bic_depositary, range, value, display)

  return offset + length, value
end

-- Bid Price
qse_qsecash_marketdata_xdp_v2_6.bid_price = {}

-- Size: Bid Price
qse_qsecash_marketdata_xdp_v2_6.bid_price.size = 4

-- Display: Bid Price
qse_qsecash_marketdata_xdp_v2_6.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
qse_qsecash_marketdata_xdp_v2_6.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.bid_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Size
qse_qsecash_marketdata_xdp_v2_6.bid_size = {}

-- Size: Bid Size
qse_qsecash_marketdata_xdp_v2_6.bid_size.size = 4

-- Display: Bid Size
qse_qsecash_marketdata_xdp_v2_6.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
qse_qsecash_marketdata_xdp_v2_6.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Cfi
qse_qsecash_marketdata_xdp_v2_6.cfi = {}

-- Size: Cfi
qse_qsecash_marketdata_xdp_v2_6.cfi.size = 6

-- Display: Cfi
qse_qsecash_marketdata_xdp_v2_6.cfi.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cfi: No Value"
  end

  return "Cfi: "..value
end

-- Dissect: Cfi
qse_qsecash_marketdata_xdp_v2_6.cfi.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.cfi.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.cfi.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.cfi, range, value, display)

  return offset + length, value
end

-- Class State
qse_qsecash_marketdata_xdp_v2_6.class_state = {}

-- Size: Class State
qse_qsecash_marketdata_xdp_v2_6.class_state.size = 4

-- Display: Class State
qse_qsecash_marketdata_xdp_v2_6.class_state.display = function(value)
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
  if value == "TAL" then
    return "Class State: Trading At Last (TAL)"
  end
  if value == "COMO" then
    return "Class State: Core Monitoring (COMO)"
  end
  if value == "LAMO" then
    return "Class State: Late Monitoring (LAMO)"
  end
  if value == "HALT" then
    return "Class State: Halted (HALT)"
  end

  return "Class State: Unknown("..value..")"
end

-- Dissect: Class State
qse_qsecash_marketdata_xdp_v2_6.class_state.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.class_state.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.class_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.class_state, range, value, display)

  return offset + length, value
end

-- Clearing Level
qse_qsecash_marketdata_xdp_v2_6.clearing_level = {}

-- Size: Clearing Level
qse_qsecash_marketdata_xdp_v2_6.clearing_level.size = 4

-- Display: Clearing Level
qse_qsecash_marketdata_xdp_v2_6.clearing_level.display = function(value)
  return "Clearing Level: "..value
end

-- Dissect: Clearing Level
qse_qsecash_marketdata_xdp_v2_6.clearing_level.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.clearing_level.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.clearing_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.clearing_level, range, value, display)

  return offset + length, value
end

-- Clearing Time
qse_qsecash_marketdata_xdp_v2_6.clearing_time = {}

-- Size: Clearing Time
qse_qsecash_marketdata_xdp_v2_6.clearing_time.size = 4

-- Display: Clearing Time
qse_qsecash_marketdata_xdp_v2_6.clearing_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if qse_qsecash_marketdata_xdp_v2_6.timestamp_format == 0 then
    return "Clearing Time: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if qse_qsecash_marketdata_xdp_v2_6.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = qse_qsecash_marketdata_xdp_v2_6.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Clearing Time: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "Clearing Time: "..os.date("%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Clearing Time
qse_qsecash_marketdata_xdp_v2_6.clearing_time.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.clearing_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.clearing_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.clearing_time, range, value, display)

  return offset + length, value
end

-- Closing Price
qse_qsecash_marketdata_xdp_v2_6.closing_price = {}

-- Size: Closing Price
qse_qsecash_marketdata_xdp_v2_6.closing_price.size = 4

-- Display: Closing Price
qse_qsecash_marketdata_xdp_v2_6.closing_price.display = function(value)
  return "Closing Price: "..value
end

-- Dissect: Closing Price
qse_qsecash_marketdata_xdp_v2_6.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.closing_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Closing Price Rule
qse_qsecash_marketdata_xdp_v2_6.closing_price_rule = {}

-- Size: Closing Price Rule
qse_qsecash_marketdata_xdp_v2_6.closing_price_rule.size = 2

-- Display: Closing Price Rule
qse_qsecash_marketdata_xdp_v2_6.closing_price_rule.display = function(value)
  return "Closing Price Rule: "..value
end

-- Dissect: Closing Price Rule
qse_qsecash_marketdata_xdp_v2_6.closing_price_rule.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.closing_price_rule.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.closing_price_rule.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.closing_price_rule, range, value, display)

  return offset + length, value
end

-- Closing Reference Level
qse_qsecash_marketdata_xdp_v2_6.closing_reference_level = {}

-- Size: Closing Reference Level
qse_qsecash_marketdata_xdp_v2_6.closing_reference_level.size = 4

-- Display: Closing Reference Level
qse_qsecash_marketdata_xdp_v2_6.closing_reference_level.display = function(value)
  return "Closing Reference Level: "..value
end

-- Dissect: Closing Reference Level
qse_qsecash_marketdata_xdp_v2_6.closing_reference_level.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.closing_reference_level.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.closing_reference_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.closing_reference_level, range, value, display)

  return offset + length, value
end

-- Closing Reference Time
qse_qsecash_marketdata_xdp_v2_6.closing_reference_time = {}

-- Size: Closing Reference Time
qse_qsecash_marketdata_xdp_v2_6.closing_reference_time.size = 4

-- Display: Closing Reference Time
qse_qsecash_marketdata_xdp_v2_6.closing_reference_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if qse_qsecash_marketdata_xdp_v2_6.timestamp_format == 0 then
    return "Closing Reference Time: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if qse_qsecash_marketdata_xdp_v2_6.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = qse_qsecash_marketdata_xdp_v2_6.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Closing Reference Time: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "Closing Reference Time: "..os.date("%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Closing Reference Time
qse_qsecash_marketdata_xdp_v2_6.closing_reference_time.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.closing_reference_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.closing_reference_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.closing_reference_time, range, value, display)

  return offset + length, value
end

-- Collar Type
qse_qsecash_marketdata_xdp_v2_6.collar_type = {}

-- Size: Collar Type
qse_qsecash_marketdata_xdp_v2_6.collar_type.size = 1

-- Display: Collar Type
qse_qsecash_marketdata_xdp_v2_6.collar_type.display = function(value)
  if value == "D" then
    return "Collar Type: Dynamic Collars (D)"
  end
  if value == "S" then
    return "Collar Type: Static Thresholds (S)"
  end

  return "Collar Type: Unknown("..value..")"
end

-- Dissect: Collar Type
qse_qsecash_marketdata_xdp_v2_6.collar_type.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.collar_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.collar_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.collar_type, range, value, display)

  return offset + length, value
end

-- Cumulative Quantity
qse_qsecash_marketdata_xdp_v2_6.cumulative_quantity = {}

-- Size: Cumulative Quantity
qse_qsecash_marketdata_xdp_v2_6.cumulative_quantity.size = 4

-- Display: Cumulative Quantity
qse_qsecash_marketdata_xdp_v2_6.cumulative_quantity.display = function(value)
  return "Cumulative Quantity: "..value
end

-- Dissect: Cumulative Quantity
qse_qsecash_marketdata_xdp_v2_6.cumulative_quantity.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.cumulative_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.cumulative_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.cumulative_quantity, range, value, display)

  return offset + length, value
end

-- Currency Coef
qse_qsecash_marketdata_xdp_v2_6.currency_coef = {}

-- Size: Currency Coef
qse_qsecash_marketdata_xdp_v2_6.currency_coef.size = 4

-- Display: Currency Coef
qse_qsecash_marketdata_xdp_v2_6.currency_coef.display = function(value)
  return "Currency Coef: "..value
end

-- Dissect: Currency Coef
qse_qsecash_marketdata_xdp_v2_6.currency_coef.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.currency_coef.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.currency_coef.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.currency_coef, range, value, display)

  return offset + length, value
end

-- Currency Coef Scale Code
qse_qsecash_marketdata_xdp_v2_6.currency_coef_scale_code = {}

-- Size: Currency Coef Scale Code
qse_qsecash_marketdata_xdp_v2_6.currency_coef_scale_code.size = 1

-- Display: Currency Coef Scale Code
qse_qsecash_marketdata_xdp_v2_6.currency_coef_scale_code.display = function(value)
  return "Currency Coef Scale Code: "..value
end

-- Dissect: Currency Coef Scale Code
qse_qsecash_marketdata_xdp_v2_6.currency_coef_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.currency_coef_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.currency_coef_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.currency_coef_scale_code, range, value, display)

  return offset + length, value
end

-- Date Of Last Trade
qse_qsecash_marketdata_xdp_v2_6.date_of_last_trade = {}

-- Size: Date Of Last Trade
qse_qsecash_marketdata_xdp_v2_6.date_of_last_trade.size = 8

-- Display: Date Of Last Trade
qse_qsecash_marketdata_xdp_v2_6.date_of_last_trade.display = function(value)
  if #value < 8 then
    return "Date Of Last Trade: "..value
  end

  return "Date Of Last Trade: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Date Of Last Trade
qse_qsecash_marketdata_xdp_v2_6.date_of_last_trade.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.date_of_last_trade.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = qse_qsecash_marketdata_xdp_v2_6.date_of_last_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.date_of_last_trade, range, value, display)

  return offset + length, value
end

-- Delivery Flag
qse_qsecash_marketdata_xdp_v2_6.delivery_flag = {}

-- Size: Delivery Flag
qse_qsecash_marketdata_xdp_v2_6.delivery_flag.size = 1

-- Display: Delivery Flag
qse_qsecash_marketdata_xdp_v2_6.delivery_flag.display = function(value)
  if value == 0 then
    return "Delivery Flag: Real Time Message Uncompressed (0)"
  end
  if value == 2 then
    return "Delivery Flag: Retransmission Message Uncompressed (2)"
  end
  if value == 17 then
    return "Delivery Flag: Refresh Message Zlib Compressed (17)"
  end

  return "Delivery Flag: Unknown("..value..")"
end

-- Dissect: Delivery Flag
qse_qsecash_marketdata_xdp_v2_6.delivery_flag.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.delivery_flag.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.delivery_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- Depositary List
qse_qsecash_marketdata_xdp_v2_6.depositary_list = {}

-- Size: Depositary List
qse_qsecash_marketdata_xdp_v2_6.depositary_list.size = 25

-- Display: Depositary List
qse_qsecash_marketdata_xdp_v2_6.depositary_list.display = function(value)
  if value == "00001" then
    return "Depositary List: Euroclear France (00001)"
  end
  if value == "00002" then
    return "Depositary List: Cik Belgium (00002)"
  end
  if value == "00003" then
    return "Depositary List: Necigef The Netherlands (00003)"
  end
  if value == "00004" then
    return "Depositary List: Xn Bo Bs System (00004)"
  end
  if value == "00005" then
    return "Depositary List: Vif Nonfungible Belgian Instruments (00005)"
  end
  if value == "00006" then
    return "Depositary List: Euroclear Bank (00006)"
  end
  if value == "00007" then
    return "Depositary List: Niec (00007)"
  end
  if value == "00008" then
    return "Depositary List: Physical (00008)"
  end
  if value == "00009" then
    return "Depositary List: Euronext Paris Non Euroclear France (00009)"
  end
  if value == "00010" then
    return "Depositary List: Interbolsa (00010)"
  end
  if value == "00000" then
    return "Depositary List: No Depository Organization (00000)"
  end

  return "Depositary List: Unknown("..value..")"
end

-- Dissect: Depositary List
qse_qsecash_marketdata_xdp_v2_6.depositary_list.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.depositary_list.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.depositary_list.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.depositary_list, range, value, display)

  return offset + length, value
end

-- E Mail Msg Number
qse_qsecash_marketdata_xdp_v2_6.e_mail_msg_number = {}

-- Size: E Mail Msg Number
qse_qsecash_marketdata_xdp_v2_6.e_mail_msg_number.size = 2

-- Display: E Mail Msg Number
qse_qsecash_marketdata_xdp_v2_6.e_mail_msg_number.display = function(value)
  return "E Mail Msg Number: "..value
end

-- Dissect: E Mail Msg Number
qse_qsecash_marketdata_xdp_v2_6.e_mail_msg_number.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.e_mail_msg_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.e_mail_msg_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.e_mail_msg_number, range, value, display)

  return offset + length, value
end

-- Eod Time
qse_qsecash_marketdata_xdp_v2_6.eod_time = {}

-- Size: Eod Time
qse_qsecash_marketdata_xdp_v2_6.eod_time.size = 6

-- Display: Eod Time
qse_qsecash_marketdata_xdp_v2_6.eod_time.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Eod Time: No Value"
  end

  return "Eod Time: "..value
end

-- Dissect: Eod Time
qse_qsecash_marketdata_xdp_v2_6.eod_time.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.eod_time.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.eod_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.eod_time, range, value, display)

  return offset + length, value
end

-- Event Date
qse_qsecash_marketdata_xdp_v2_6.event_date = {}

-- Size: Event Date
qse_qsecash_marketdata_xdp_v2_6.event_date.size = 8

-- Display: Event Date
qse_qsecash_marketdata_xdp_v2_6.event_date.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Event Date: No Value"
  end

  return "Event Date: "..value
end

-- Dissect: Event Date
qse_qsecash_marketdata_xdp_v2_6.event_date.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.event_date.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.event_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.event_date, range, value, display)

  return offset + length, value
end

-- Filler Ascii Str 1
qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_1 = {}

-- Size: Filler Ascii Str 1
qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_1.size = 1

-- Display: Filler Ascii Str 1
qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_1.display = function(value)
  return "Filler Ascii Str 1: "..value
end

-- Dissect: Filler Ascii Str 1
qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_1.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.filler_ascii_str_1, range, value, display)

  return offset + length, value
end

-- Filler Ascii Str 2
qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_2 = {}

-- Size: Filler Ascii Str 2
qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_2.size = 2

-- Display: Filler Ascii Str 2
qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_2.display = function(value)
  return "Filler Ascii Str 2: "..value
end

-- Dissect: Filler Ascii Str 2
qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_2.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.filler_ascii_str_2, range, value, display)

  return offset + length, value
end

-- Filler Ascii Str 3
qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_3 = {}

-- Size: Filler Ascii Str 3
qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_3.size = 3

-- Display: Filler Ascii Str 3
qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_3.display = function(value)
  return "Filler Ascii Str 3: "..value
end

-- Dissect: Filler Ascii Str 3
qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_3.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.filler_ascii_str_3, range, value, display)

  return offset + length, value
end

-- Filler Binary Int 1
qse_qsecash_marketdata_xdp_v2_6.filler_binary_int_1 = {}

-- Size: Filler Binary Int 1
qse_qsecash_marketdata_xdp_v2_6.filler_binary_int_1.size = 1

-- Display: Filler Binary Int 1
qse_qsecash_marketdata_xdp_v2_6.filler_binary_int_1.display = function(value)
  return "Filler Binary Int 1: "..value
end

-- Dissect: Filler Binary Int 1
qse_qsecash_marketdata_xdp_v2_6.filler_binary_int_1.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.filler_binary_int_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = qse_qsecash_marketdata_xdp_v2_6.filler_binary_int_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.filler_binary_int_1, range, value, display)

  return offset + length, value
end

-- Filler Binary Int 12
qse_qsecash_marketdata_xdp_v2_6.filler_binary_int_12 = {}

-- Size: Filler Binary Int 12
qse_qsecash_marketdata_xdp_v2_6.filler_binary_int_12.size = 12

-- Display: Filler Binary Int 12
qse_qsecash_marketdata_xdp_v2_6.filler_binary_int_12.display = function(value)
  return "Filler Binary Int 12: "..value
end

-- Dissect: Filler Binary Int 12
qse_qsecash_marketdata_xdp_v2_6.filler_binary_int_12.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.filler_binary_int_12.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = qse_qsecash_marketdata_xdp_v2_6.filler_binary_int_12.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.filler_binary_int_12, range, value, display)

  return offset + length, value
end

-- Filler Binary Int 2
qse_qsecash_marketdata_xdp_v2_6.filler_binary_int_2 = {}

-- Size: Filler Binary Int 2
qse_qsecash_marketdata_xdp_v2_6.filler_binary_int_2.size = 2

-- Display: Filler Binary Int 2
qse_qsecash_marketdata_xdp_v2_6.filler_binary_int_2.display = function(value)
  return "Filler Binary Int 2: "..value
end

-- Dissect: Filler Binary Int 2
qse_qsecash_marketdata_xdp_v2_6.filler_binary_int_2.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.filler_binary_int_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = qse_qsecash_marketdata_xdp_v2_6.filler_binary_int_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.filler_binary_int_2, range, value, display)

  return offset + length, value
end

-- Financial Market Code
qse_qsecash_marketdata_xdp_v2_6.financial_market_code = {}

-- Size: Financial Market Code
qse_qsecash_marketdata_xdp_v2_6.financial_market_code.size = 3

-- Display: Financial Market Code
qse_qsecash_marketdata_xdp_v2_6.financial_market_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Financial Market Code: No Value"
  end

  return "Financial Market Code: "..value
end

-- Dissect: Financial Market Code
qse_qsecash_marketdata_xdp_v2_6.financial_market_code.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.financial_market_code.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.financial_market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.financial_market_code, range, value, display)

  return offset + length, value
end

-- First Level
qse_qsecash_marketdata_xdp_v2_6.first_level = {}

-- Size: First Level
qse_qsecash_marketdata_xdp_v2_6.first_level.size = 4

-- Display: First Level
qse_qsecash_marketdata_xdp_v2_6.first_level.display = function(value)
  return "First Level: "..value
end

-- Dissect: First Level
qse_qsecash_marketdata_xdp_v2_6.first_level.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.first_level.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.first_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.first_level, range, value, display)

  return offset + length, value
end

-- First Price
qse_qsecash_marketdata_xdp_v2_6.first_price = {}

-- Size: First Price
qse_qsecash_marketdata_xdp_v2_6.first_price.size = 4

-- Display: First Price
qse_qsecash_marketdata_xdp_v2_6.first_price.display = function(value)
  return "First Price: "..value
end

-- Dissect: First Price
qse_qsecash_marketdata_xdp_v2_6.first_price.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.first_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.first_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.first_price, range, value, display)

  return offset + length, value
end

-- First Settlement Date
qse_qsecash_marketdata_xdp_v2_6.first_settlement_date = {}

-- Size: First Settlement Date
qse_qsecash_marketdata_xdp_v2_6.first_settlement_date.size = 8

-- Display: First Settlement Date
qse_qsecash_marketdata_xdp_v2_6.first_settlement_date.display = function(value)
  if #value < 8 then
    return "First Settlement Date: "..value
  end

  return "First Settlement Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: First Settlement Date
qse_qsecash_marketdata_xdp_v2_6.first_settlement_date.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.first_settlement_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = qse_qsecash_marketdata_xdp_v2_6.first_settlement_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.first_settlement_date, range, value, display)

  return offset + length, value
end

-- First Time
qse_qsecash_marketdata_xdp_v2_6.first_time = {}

-- Size: First Time
qse_qsecash_marketdata_xdp_v2_6.first_time.size = 4

-- Display: First Time
qse_qsecash_marketdata_xdp_v2_6.first_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if qse_qsecash_marketdata_xdp_v2_6.timestamp_format == 0 then
    return "First Time: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if qse_qsecash_marketdata_xdp_v2_6.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = qse_qsecash_marketdata_xdp_v2_6.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "First Time: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "First Time: "..os.date("%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: First Time
qse_qsecash_marketdata_xdp_v2_6.first_time.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.first_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.first_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.first_time, range, value, display)

  return offset + length, value
end

-- Fix Price Tick
qse_qsecash_marketdata_xdp_v2_6.fix_price_tick = {}

-- Size: Fix Price Tick
qse_qsecash_marketdata_xdp_v2_6.fix_price_tick.size = 4

-- Display: Fix Price Tick
qse_qsecash_marketdata_xdp_v2_6.fix_price_tick.display = function(value)
  return "Fix Price Tick: "..value
end

-- Dissect: Fix Price Tick
qse_qsecash_marketdata_xdp_v2_6.fix_price_tick.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.fix_price_tick.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.fix_price_tick.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.fix_price_tick, range, value, display)

  return offset + length, value
end

-- Fix Price Tick Scale Code
qse_qsecash_marketdata_xdp_v2_6.fix_price_tick_scale_code = {}

-- Size: Fix Price Tick Scale Code
qse_qsecash_marketdata_xdp_v2_6.fix_price_tick_scale_code.size = 1

-- Display: Fix Price Tick Scale Code
qse_qsecash_marketdata_xdp_v2_6.fix_price_tick_scale_code.display = function(value)
  return "Fix Price Tick Scale Code: "..value
end

-- Dissect: Fix Price Tick Scale Code
qse_qsecash_marketdata_xdp_v2_6.fix_price_tick_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.fix_price_tick_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.fix_price_tick_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.fix_price_tick_scale_code, range, value, display)

  return offset + length, value
end

-- Forerunner Level
qse_qsecash_marketdata_xdp_v2_6.forerunner_level = {}

-- Size: Forerunner Level
qse_qsecash_marketdata_xdp_v2_6.forerunner_level.size = 4

-- Display: Forerunner Level
qse_qsecash_marketdata_xdp_v2_6.forerunner_level.display = function(value)
  return "Forerunner Level: "..value
end

-- Dissect: Forerunner Level
qse_qsecash_marketdata_xdp_v2_6.forerunner_level.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.forerunner_level.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.forerunner_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.forerunner_level, range, value, display)

  return offset + length, value
end

-- Halt Reason
qse_qsecash_marketdata_xdp_v2_6.halt_reason = {}

-- Size: Halt Reason
qse_qsecash_marketdata_xdp_v2_6.halt_reason.size = 1

-- Display: Halt Reason
qse_qsecash_marketdata_xdp_v2_6.halt_reason.display = function(value)
  if value == "0" then
    return "Halt Reason: Not Applicable (0)"
  end
  if value == "R" then
    return "Halt Reason: Halted No Liquidity Provider (R)"
  end
  if value == "C" then
    return "Halt Reason: Opening Price Outside Collars (C)"
  end
  if value == "M" then
    return "Halt Reason: Manuel Halting By Market Operations (M)"
  end

  return "Halt Reason: Unknown("..value..")"
end

-- Dissect: Halt Reason
qse_qsecash_marketdata_xdp_v2_6.halt_reason.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.halt_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.halt_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.halt_reason, range, value, display)

  return offset + length, value
end

-- Heading Number
qse_qsecash_marketdata_xdp_v2_6.heading_number = {}

-- Size: Heading Number
qse_qsecash_marketdata_xdp_v2_6.heading_number.size = 2

-- Display: Heading Number
qse_qsecash_marketdata_xdp_v2_6.heading_number.display = function(value)
  return "Heading Number: "..value
end

-- Dissect: Heading Number
qse_qsecash_marketdata_xdp_v2_6.heading_number.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.heading_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.heading_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.heading_number, range, value, display)

  return offset + length, value
end

-- High Collar
qse_qsecash_marketdata_xdp_v2_6.high_collar = {}

-- Size: High Collar
qse_qsecash_marketdata_xdp_v2_6.high_collar.size = 4

-- Display: High Collar
qse_qsecash_marketdata_xdp_v2_6.high_collar.display = function(value)
  return "High Collar: "..value
end

-- Dissect: High Collar
qse_qsecash_marketdata_xdp_v2_6.high_collar.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.high_collar.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.high_collar.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.high_collar, range, value, display)

  return offset + length, value
end

-- High Level
qse_qsecash_marketdata_xdp_v2_6.high_level = {}

-- Size: High Level
qse_qsecash_marketdata_xdp_v2_6.high_level.size = 4

-- Display: High Level
qse_qsecash_marketdata_xdp_v2_6.high_level.display = function(value)
  return "High Level: "..value
end

-- Dissect: High Level
qse_qsecash_marketdata_xdp_v2_6.high_level.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.high_level.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.high_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.high_level, range, value, display)

  return offset + length, value
end

-- High Scale Code
qse_qsecash_marketdata_xdp_v2_6.high_scale_code = {}

-- Size: High Scale Code
qse_qsecash_marketdata_xdp_v2_6.high_scale_code.size = 1

-- Display: High Scale Code
qse_qsecash_marketdata_xdp_v2_6.high_scale_code.display = function(value)
  return "High Scale Code: "..value
end

-- Dissect: High Scale Code
qse_qsecash_marketdata_xdp_v2_6.high_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.high_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.high_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.high_scale_code, range, value, display)

  return offset + length, value
end

-- High Time
qse_qsecash_marketdata_xdp_v2_6.high_time = {}

-- Size: High Time
qse_qsecash_marketdata_xdp_v2_6.high_time.size = 4

-- Display: High Time
qse_qsecash_marketdata_xdp_v2_6.high_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if qse_qsecash_marketdata_xdp_v2_6.timestamp_format == 0 then
    return "High Time: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if qse_qsecash_marketdata_xdp_v2_6.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = qse_qsecash_marketdata_xdp_v2_6.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "High Time: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "High Time: "..os.date("%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: High Time
qse_qsecash_marketdata_xdp_v2_6.high_time.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.high_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.high_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.high_time, range, value, display)

  return offset + length, value
end

-- Highest Price
qse_qsecash_marketdata_xdp_v2_6.highest_price = {}

-- Size: Highest Price
qse_qsecash_marketdata_xdp_v2_6.highest_price.size = 4

-- Display: Highest Price
qse_qsecash_marketdata_xdp_v2_6.highest_price.display = function(value)
  return "Highest Price: "..value
end

-- Dissect: Highest Price
qse_qsecash_marketdata_xdp_v2_6.highest_price.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.highest_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.highest_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.highest_price, range, value, display)

  return offset + length, value
end

-- Icb
qse_qsecash_marketdata_xdp_v2_6.icb = {}

-- Size: Icb
qse_qsecash_marketdata_xdp_v2_6.icb.size = 4

-- Display: Icb
qse_qsecash_marketdata_xdp_v2_6.icb.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Icb: No Value"
  end

  return "Icb: "..value
end

-- Dissect: Icb
qse_qsecash_marketdata_xdp_v2_6.icb.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.icb.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.icb.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.icb, range, value, display)

  return offset + length, value
end

-- Im Price
qse_qsecash_marketdata_xdp_v2_6.im_price = {}

-- Size: Im Price
qse_qsecash_marketdata_xdp_v2_6.im_price.size = 4

-- Display: Im Price
qse_qsecash_marketdata_xdp_v2_6.im_price.display = function(value)
  return "Im Price: "..value
end

-- Dissect: Im Price
qse_qsecash_marketdata_xdp_v2_6.im_price.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.im_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.im_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.im_price, range, value, display)

  return offset + length, value
end

-- Im Volume
qse_qsecash_marketdata_xdp_v2_6.im_volume = {}

-- Size: Im Volume
qse_qsecash_marketdata_xdp_v2_6.im_volume.size = 4

-- Display: Im Volume
qse_qsecash_marketdata_xdp_v2_6.im_volume.display = function(value)
  return "Im Volume: "..value
end

-- Dissect: Im Volume
qse_qsecash_marketdata_xdp_v2_6.im_volume.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.im_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.im_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.im_volume, range, value, display)

  return offset + length, value
end

-- Index Frequency
qse_qsecash_marketdata_xdp_v2_6.index_frequency = {}

-- Size: Index Frequency
qse_qsecash_marketdata_xdp_v2_6.index_frequency.size = 1

-- Display: Index Frequency
qse_qsecash_marketdata_xdp_v2_6.index_frequency.display = function(value)
  return "Index Frequency: "..value
end

-- Dissect: Index Frequency
qse_qsecash_marketdata_xdp_v2_6.index_frequency.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.index_frequency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.index_frequency.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.index_frequency, range, value, display)

  return offset + length, value
end

-- Index Level
qse_qsecash_marketdata_xdp_v2_6.index_level = {}

-- Size: Index Level
qse_qsecash_marketdata_xdp_v2_6.index_level.size = 4

-- Display: Index Level
qse_qsecash_marketdata_xdp_v2_6.index_level.display = function(value)
  return "Index Level: "..value
end

-- Dissect: Index Level
qse_qsecash_marketdata_xdp_v2_6.index_level.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.index_level.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.index_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.index_level, range, value, display)

  return offset + length, value
end

-- Index Level Code
qse_qsecash_marketdata_xdp_v2_6.index_level_code = {}

-- Size: Index Level Code
qse_qsecash_marketdata_xdp_v2_6.index_level_code.size = 1

-- Display: Index Level Code
qse_qsecash_marketdata_xdp_v2_6.index_level_code.display = function(value)
  return "Index Level Code: "..value
end

-- Dissect: Index Level Code
qse_qsecash_marketdata_xdp_v2_6.index_level_code.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.index_level_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.index_level_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.index_level_code, range, value, display)

  return offset + length, value
end

-- Index Set Of Var Price Tick
qse_qsecash_marketdata_xdp_v2_6.index_set_of_var_price_tick = {}

-- Size: Index Set Of Var Price Tick
qse_qsecash_marketdata_xdp_v2_6.index_set_of_var_price_tick.size = 2

-- Display: Index Set Of Var Price Tick
qse_qsecash_marketdata_xdp_v2_6.index_set_of_var_price_tick.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Index Set Of Var Price Tick: No Value"
  end

  return "Index Set Of Var Price Tick: "..value
end

-- Dissect: Index Set Of Var Price Tick
qse_qsecash_marketdata_xdp_v2_6.index_set_of_var_price_tick.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.index_set_of_var_price_tick.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.index_set_of_var_price_tick.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.index_set_of_var_price_tick, range, value, display)

  return offset + length, value
end

-- Indicator
qse_qsecash_marketdata_xdp_v2_6.indicator = {}

-- Size: Indicator
qse_qsecash_marketdata_xdp_v2_6.indicator.size = 1

-- Display: Indicator
qse_qsecash_marketdata_xdp_v2_6.indicator.display = function(value)
  return "Indicator: "..value
end

-- Dissect: Indicator
qse_qsecash_marketdata_xdp_v2_6.indicator.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.indicator, range, value, display)

  return offset + length, value
end

-- Industry Code
qse_qsecash_marketdata_xdp_v2_6.industry_code = {}

-- Size: Industry Code
qse_qsecash_marketdata_xdp_v2_6.industry_code.size = 4

-- Display: Industry Code
qse_qsecash_marketdata_xdp_v2_6.industry_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Industry Code: No Value"
  end

  return "Industry Code: "..value
end

-- Dissect: Industry Code
qse_qsecash_marketdata_xdp_v2_6.industry_code.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.industry_code.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.industry_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.industry_code, range, value, display)

  return offset + length, value
end

-- Industry Text
qse_qsecash_marketdata_xdp_v2_6.industry_text = {}

-- Size: Industry Text
qse_qsecash_marketdata_xdp_v2_6.industry_text.size = 100

-- Display: Industry Text
qse_qsecash_marketdata_xdp_v2_6.industry_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Industry Text: No Value"
  end

  return "Industry Text: "..value
end

-- Dissect: Industry Text
qse_qsecash_marketdata_xdp_v2_6.industry_text.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.industry_text.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.industry_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.industry_text, range, value, display)

  return offset + length, value
end

-- Instance Id
qse_qsecash_marketdata_xdp_v2_6.instance_id = {}

-- Size: Instance Id
qse_qsecash_marketdata_xdp_v2_6.instance_id.size = 1

-- Display: Instance Id
qse_qsecash_marketdata_xdp_v2_6.instance_id.display = function(value)
  return "Instance Id: "..value
end

-- Dissect: Instance Id
qse_qsecash_marketdata_xdp_v2_6.instance_id.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.instance_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.instance_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.instance_id, range, value, display)

  return offset + length, value
end

-- Instrument Category
qse_qsecash_marketdata_xdp_v2_6.instrument_category = {}

-- Size: Instrument Category
qse_qsecash_marketdata_xdp_v2_6.instrument_category.size = 1

-- Display: Instrument Category
qse_qsecash_marketdata_xdp_v2_6.instrument_category.display = function(value)
  if value == "A" then
    return "Instrument Category: Stock (A)"
  end
  if value == "O" then
    return "Instrument Category: Bond (O)"
  end
  if value == "W" then
    return "Instrument Category: Warrant And Certificate (W)"
  end
  if value == "T" then
    return "Instrument Category: Tracker (T)"
  end
  if value == "D" then
    return "Instrument Category: Miscellaneous (D)"
  end

  return "Instrument Category: Unknown("..value..")"
end

-- Dissect: Instrument Category
qse_qsecash_marketdata_xdp_v2_6.instrument_category.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.instrument_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.instrument_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.instrument_category, range, value, display)

  return offset + length, value
end

-- Instrument Code
qse_qsecash_marketdata_xdp_v2_6.instrument_code = {}

-- Size: Instrument Code
qse_qsecash_marketdata_xdp_v2_6.instrument_code.size = 12

-- Display: Instrument Code
qse_qsecash_marketdata_xdp_v2_6.instrument_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Instrument Code: No Value"
  end

  return "Instrument Code: "..value
end

-- Dissect: Instrument Code
qse_qsecash_marketdata_xdp_v2_6.instrument_code.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.instrument_code.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.instrument_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.instrument_code, range, value, display)

  return offset + length, value
end

-- Instrument Factor
qse_qsecash_marketdata_xdp_v2_6.instrument_factor = {}

-- Size: Instrument Factor
qse_qsecash_marketdata_xdp_v2_6.instrument_factor.size = 4

-- Display: Instrument Factor
qse_qsecash_marketdata_xdp_v2_6.instrument_factor.display = function(value)
  return "Instrument Factor: "..value
end

-- Dissect: Instrument Factor
qse_qsecash_marketdata_xdp_v2_6.instrument_factor.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.instrument_factor.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.instrument_factor.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.instrument_factor, range, value, display)

  return offset + length, value
end

-- Instrument Group Code
qse_qsecash_marketdata_xdp_v2_6.instrument_group_code = {}

-- Size: Instrument Group Code
qse_qsecash_marketdata_xdp_v2_6.instrument_group_code.size = 3

-- Display: Instrument Group Code
qse_qsecash_marketdata_xdp_v2_6.instrument_group_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Instrument Group Code: No Value"
  end

  return "Instrument Group Code: "..value
end

-- Dissect: Instrument Group Code
qse_qsecash_marketdata_xdp_v2_6.instrument_group_code.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.instrument_group_code.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.instrument_group_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.instrument_group_code, range, value, display)

  return offset + length, value
end

-- Instrument Group State
qse_qsecash_marketdata_xdp_v2_6.instrument_group_state = {}

-- Size: Instrument Group State
qse_qsecash_marketdata_xdp_v2_6.instrument_group_state.size = 1

-- Display: Instrument Group State
qse_qsecash_marketdata_xdp_v2_6.instrument_group_state.display = function(value)
  if value == "P" then
    return "Instrument Group State: Pre Opening (P)"
  end
  if value == "C" then
    return "Instrument Group State: Beginning Of Day Consultation (C)"
  end
  if value == "O" then
    return "Instrument Group State: Opening (O)"
  end
  if value == "S" then
    return "Instrument Group State: Market Session (S)"
  end
  if value == "R" then
    return "Instrument Group State: Trading At Last (R)"
  end
  if value == "N" then
    return "Instrument Group State: Surveillance Intervention (N)"
  end
  if value == "F" then
    return "Instrument Group State: End Of Day Inquiry (F)"
  end
  if value == "Z" then
    return "Instrument Group State: Interrupted (Z)"
  end
  if value == "I" then
    return "Instrument Group State: Forbidden (I)"
  end

  return "Instrument Group State: Unknown("..value..")"
end

-- Dissect: Instrument Group State
qse_qsecash_marketdata_xdp_v2_6.instrument_group_state.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.instrument_group_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.instrument_group_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.instrument_group_state, range, value, display)

  return offset + length, value
end

-- Instrument Id Of Component
qse_qsecash_marketdata_xdp_v2_6.instrument_id_of_component = {}

-- Size: Instrument Id Of Component
qse_qsecash_marketdata_xdp_v2_6.instrument_id_of_component.size = 12

-- Display: Instrument Id Of Component
qse_qsecash_marketdata_xdp_v2_6.instrument_id_of_component.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Instrument Id Of Component: No Value"
  end

  return "Instrument Id Of Component: "..value
end

-- Dissect: Instrument Id Of Component
qse_qsecash_marketdata_xdp_v2_6.instrument_id_of_component.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.instrument_id_of_component.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.instrument_id_of_component.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.instrument_id_of_component, range, value, display)

  return offset + length, value
end

-- Instrument Name
qse_qsecash_marketdata_xdp_v2_6.instrument_name = {}

-- Size: Instrument Name
qse_qsecash_marketdata_xdp_v2_6.instrument_name.size = 18

-- Display: Instrument Name
qse_qsecash_marketdata_xdp_v2_6.instrument_name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Instrument Name: No Value"
  end

  return "Instrument Name: "..value
end

-- Dissect: Instrument Name
qse_qsecash_marketdata_xdp_v2_6.instrument_name.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.instrument_name.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.instrument_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.instrument_name, range, value, display)

  return offset + length, value
end

-- Instrument State
qse_qsecash_marketdata_xdp_v2_6.instrument_state = {}

-- Size: Instrument State
qse_qsecash_marketdata_xdp_v2_6.instrument_state.size = 1

-- Display: Instrument State
qse_qsecash_marketdata_xdp_v2_6.instrument_state.display = function(value)
  if value == "0" then
    return "Instrument State: Not Applicable (0)"
  end
  if value == "A" then
    return "Instrument State: Auction (A)"
  end
  if value == "H" then
    return "Instrument State: Halted (H)"
  end
  if value == "C" then
    return "Instrument State: Closed (C)"
  end

  return "Instrument State: Unknown("..value..")"
end

-- Dissect: Instrument State
qse_qsecash_marketdata_xdp_v2_6.instrument_state.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.instrument_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.instrument_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.instrument_state, range, value, display)

  return offset + length, value
end

-- Instrument State Tcs
qse_qsecash_marketdata_xdp_v2_6.instrument_state_tcs = {}

-- Size: Instrument State Tcs
qse_qsecash_marketdata_xdp_v2_6.instrument_state_tcs.size = 1

-- Display: Instrument State Tcs
qse_qsecash_marketdata_xdp_v2_6.instrument_state_tcs.display = function(value)
  if value == "0" then
    return "Instrument State Tcs: Not Applicable (0)"
  end
  if value == "S" then
    return "Instrument State Tcs: Instrument Is Forbidden (S)"
  end
  if value == "A" then
    return "Instrument State Tcs: Instrument Is Authorized (A)"
  end

  return "Instrument State Tcs: Unknown("..value..")"
end

-- Dissect: Instrument State Tcs
qse_qsecash_marketdata_xdp_v2_6.instrument_state_tcs.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.instrument_state_tcs.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.instrument_state_tcs.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.instrument_state_tcs, range, value, display)

  return offset + length, value
end

-- Instrument Trading Status
qse_qsecash_marketdata_xdp_v2_6.instrument_trading_status = {}

-- Size: Instrument Trading Status
qse_qsecash_marketdata_xdp_v2_6.instrument_trading_status.size = 1

-- Display: Instrument Trading Status
qse_qsecash_marketdata_xdp_v2_6.instrument_trading_status.display = function(value)
  if value == "S" then
    return "Instrument Trading Status: Suspended (S)"
  end

  return "Instrument Trading Status: Unknown("..value..")"
end

-- Dissect: Instrument Trading Status
qse_qsecash_marketdata_xdp_v2_6.instrument_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.instrument_trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.instrument_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.instrument_trading_status, range, value, display)

  return offset + length, value
end

-- Instrument Valuation Price
qse_qsecash_marketdata_xdp_v2_6.instrument_valuation_price = {}

-- Size: Instrument Valuation Price
qse_qsecash_marketdata_xdp_v2_6.instrument_valuation_price.size = 1

-- Display: Instrument Valuation Price
qse_qsecash_marketdata_xdp_v2_6.instrument_valuation_price.display = function(value)
  if value == "0" then
    return "Instrument Valuation Price: Not A Valuation Price (0)"
  end
  if value == "1" then
    return "Instrument Valuation Price: Valuation Price (1)"
  end

  return "Instrument Valuation Price: Unknown("..value..")"
end

-- Dissect: Instrument Valuation Price
qse_qsecash_marketdata_xdp_v2_6.instrument_valuation_price.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.instrument_valuation_price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.instrument_valuation_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.instrument_valuation_price, range, value, display)

  return offset + length, value
end

-- Instrument Weight
qse_qsecash_marketdata_xdp_v2_6.instrument_weight = {}

-- Size: Instrument Weight
qse_qsecash_marketdata_xdp_v2_6.instrument_weight.size = 4

-- Display: Instrument Weight
qse_qsecash_marketdata_xdp_v2_6.instrument_weight.display = function(value)
  return "Instrument Weight: "..value
end

-- Dissect: Instrument Weight
qse_qsecash_marketdata_xdp_v2_6.instrument_weight.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.instrument_weight.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.instrument_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.instrument_weight, range, value, display)

  return offset + length, value
end

-- Issuing Country Code
qse_qsecash_marketdata_xdp_v2_6.issuing_country_code = {}

-- Size: Issuing Country Code
qse_qsecash_marketdata_xdp_v2_6.issuing_country_code.size = 3

-- Display: Issuing Country Code
qse_qsecash_marketdata_xdp_v2_6.issuing_country_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Issuing Country Code: No Value"
  end

  return "Issuing Country Code: "..value
end

-- Dissect: Issuing Country Code
qse_qsecash_marketdata_xdp_v2_6.issuing_country_code.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.issuing_country_code.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.issuing_country_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.issuing_country_code, range, value, display)

  return offset + length, value
end

-- Last Adj Price
qse_qsecash_marketdata_xdp_v2_6.last_adj_price = {}

-- Size: Last Adj Price
qse_qsecash_marketdata_xdp_v2_6.last_adj_price.size = 4

-- Display: Last Adj Price
qse_qsecash_marketdata_xdp_v2_6.last_adj_price.display = function(value)
  return "Last Adj Price: "..value
end

-- Dissect: Last Adj Price
qse_qsecash_marketdata_xdp_v2_6.last_adj_price.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.last_adj_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.last_adj_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.last_adj_price, range, value, display)

  return offset + length, value
end

-- Last Adj Price Scale Code
qse_qsecash_marketdata_xdp_v2_6.last_adj_price_scale_code = {}

-- Size: Last Adj Price Scale Code
qse_qsecash_marketdata_xdp_v2_6.last_adj_price_scale_code.size = 1

-- Display: Last Adj Price Scale Code
qse_qsecash_marketdata_xdp_v2_6.last_adj_price_scale_code.display = function(value)
  return "Last Adj Price Scale Code: "..value
end

-- Dissect: Last Adj Price Scale Code
qse_qsecash_marketdata_xdp_v2_6.last_adj_price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.last_adj_price_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.last_adj_price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.last_adj_price_scale_code, range, value, display)

  return offset + length, value
end

-- Last Price
qse_qsecash_marketdata_xdp_v2_6.last_price = {}

-- Size: Last Price
qse_qsecash_marketdata_xdp_v2_6.last_price.size = 4

-- Display: Last Price
qse_qsecash_marketdata_xdp_v2_6.last_price.display = function(value)
  return "Last Price: "..value
end

-- Dissect: Last Price
qse_qsecash_marketdata_xdp_v2_6.last_price.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.last_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.last_price, range, value, display)

  return offset + length, value
end

-- Last Seq Num
qse_qsecash_marketdata_xdp_v2_6.last_seq_num = {}

-- Size: Last Seq Num
qse_qsecash_marketdata_xdp_v2_6.last_seq_num.size = 4

-- Display: Last Seq Num
qse_qsecash_marketdata_xdp_v2_6.last_seq_num.display = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
qse_qsecash_marketdata_xdp_v2_6.last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.last_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Level Scale Code
qse_qsecash_marketdata_xdp_v2_6.level_scale_code = {}

-- Size: Level Scale Code
qse_qsecash_marketdata_xdp_v2_6.level_scale_code.size = 1

-- Display: Level Scale Code
qse_qsecash_marketdata_xdp_v2_6.level_scale_code.display = function(value)
  return "Level Scale Code: "..value
end

-- Dissect: Level Scale Code
qse_qsecash_marketdata_xdp_v2_6.level_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.level_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.level_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.level_scale_code, range, value, display)

  return offset + length, value
end

-- Link Id
qse_qsecash_marketdata_xdp_v2_6.link_id = {}

-- Size: Link Id
qse_qsecash_marketdata_xdp_v2_6.link_id.size = 4

-- Display: Link Id
qse_qsecash_marketdata_xdp_v2_6.link_id.display = function(value)
  return "Link Id: "..value
end

-- Dissect: Link Id
qse_qsecash_marketdata_xdp_v2_6.link_id.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.link_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.link_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.link_id, range, value, display)

  return offset + length, value
end

-- Liquidation Level
qse_qsecash_marketdata_xdp_v2_6.liquidation_level = {}

-- Size: Liquidation Level
qse_qsecash_marketdata_xdp_v2_6.liquidation_level.size = 4

-- Display: Liquidation Level
qse_qsecash_marketdata_xdp_v2_6.liquidation_level.display = function(value)
  return "Liquidation Level: "..value
end

-- Dissect: Liquidation Level
qse_qsecash_marketdata_xdp_v2_6.liquidation_level.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.liquidation_level.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.liquidation_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.liquidation_level, range, value, display)

  return offset + length, value
end

-- Liquidation Time
qse_qsecash_marketdata_xdp_v2_6.liquidation_time = {}

-- Size: Liquidation Time
qse_qsecash_marketdata_xdp_v2_6.liquidation_time.size = 4

-- Display: Liquidation Time
qse_qsecash_marketdata_xdp_v2_6.liquidation_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if qse_qsecash_marketdata_xdp_v2_6.timestamp_format == 0 then
    return "Liquidation Time: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if qse_qsecash_marketdata_xdp_v2_6.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = qse_qsecash_marketdata_xdp_v2_6.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Liquidation Time: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "Liquidation Time: "..os.date("%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Liquidation Time
qse_qsecash_marketdata_xdp_v2_6.liquidation_time.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.liquidation_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.liquidation_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.liquidation_time, range, value, display)

  return offset + length, value
end

-- Local Name
qse_qsecash_marketdata_xdp_v2_6.local_name = {}

-- Size: Local Name
qse_qsecash_marketdata_xdp_v2_6.local_name.size = 30

-- Display: Local Name
qse_qsecash_marketdata_xdp_v2_6.local_name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Local Name: No Value"
  end

  return "Local Name: "..value
end

-- Dissect: Local Name
qse_qsecash_marketdata_xdp_v2_6.local_name.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.local_name.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.local_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.local_name, range, value, display)

  return offset + length, value
end

-- Lot Size
qse_qsecash_marketdata_xdp_v2_6.lot_size = {}

-- Size: Lot Size
qse_qsecash_marketdata_xdp_v2_6.lot_size.size = 8

-- Display: Lot Size
qse_qsecash_marketdata_xdp_v2_6.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
qse_qsecash_marketdata_xdp_v2_6.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.lot_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = qse_qsecash_marketdata_xdp_v2_6.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Lot Size Scale Code
qse_qsecash_marketdata_xdp_v2_6.lot_size_scale_code = {}

-- Size: Lot Size Scale Code
qse_qsecash_marketdata_xdp_v2_6.lot_size_scale_code.size = 1

-- Display: Lot Size Scale Code
qse_qsecash_marketdata_xdp_v2_6.lot_size_scale_code.display = function(value)
  return "Lot Size Scale Code: "..value
end

-- Dissect: Lot Size Scale Code
qse_qsecash_marketdata_xdp_v2_6.lot_size_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.lot_size_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.lot_size_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.lot_size_scale_code, range, value, display)

  return offset + length, value
end

-- Low Collar
qse_qsecash_marketdata_xdp_v2_6.low_collar = {}

-- Size: Low Collar
qse_qsecash_marketdata_xdp_v2_6.low_collar.size = 4

-- Display: Low Collar
qse_qsecash_marketdata_xdp_v2_6.low_collar.display = function(value)
  return "Low Collar: "..value
end

-- Dissect: Low Collar
qse_qsecash_marketdata_xdp_v2_6.low_collar.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.low_collar.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.low_collar.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.low_collar, range, value, display)

  return offset + length, value
end

-- Low Level
qse_qsecash_marketdata_xdp_v2_6.low_level = {}

-- Size: Low Level
qse_qsecash_marketdata_xdp_v2_6.low_level.size = 4

-- Display: Low Level
qse_qsecash_marketdata_xdp_v2_6.low_level.display = function(value)
  return "Low Level: "..value
end

-- Dissect: Low Level
qse_qsecash_marketdata_xdp_v2_6.low_level.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.low_level.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.low_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.low_level, range, value, display)

  return offset + length, value
end

-- Low Scale Code
qse_qsecash_marketdata_xdp_v2_6.low_scale_code = {}

-- Size: Low Scale Code
qse_qsecash_marketdata_xdp_v2_6.low_scale_code.size = 1

-- Display: Low Scale Code
qse_qsecash_marketdata_xdp_v2_6.low_scale_code.display = function(value)
  return "Low Scale Code: "..value
end

-- Dissect: Low Scale Code
qse_qsecash_marketdata_xdp_v2_6.low_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.low_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.low_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.low_scale_code, range, value, display)

  return offset + length, value
end

-- Low Time
qse_qsecash_marketdata_xdp_v2_6.low_time = {}

-- Size: Low Time
qse_qsecash_marketdata_xdp_v2_6.low_time.size = 4

-- Display: Low Time
qse_qsecash_marketdata_xdp_v2_6.low_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if qse_qsecash_marketdata_xdp_v2_6.timestamp_format == 0 then
    return "Low Time: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if qse_qsecash_marketdata_xdp_v2_6.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = qse_qsecash_marketdata_xdp_v2_6.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Low Time: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "Low Time: "..os.date("%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Low Time
qse_qsecash_marketdata_xdp_v2_6.low_time.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.low_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.low_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.low_time, range, value, display)

  return offset + length, value
end

-- Lowest Price
qse_qsecash_marketdata_xdp_v2_6.lowest_price = {}

-- Size: Lowest Price
qse_qsecash_marketdata_xdp_v2_6.lowest_price.size = 4

-- Display: Lowest Price
qse_qsecash_marketdata_xdp_v2_6.lowest_price.display = function(value)
  return "Lowest Price: "..value
end

-- Dissect: Lowest Price
qse_qsecash_marketdata_xdp_v2_6.lowest_price.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.lowest_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.lowest_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.lowest_price, range, value, display)

  return offset + length, value
end

-- Main Depositary
qse_qsecash_marketdata_xdp_v2_6.main_depositary = {}

-- Size: Main Depositary
qse_qsecash_marketdata_xdp_v2_6.main_depositary.size = 5

-- Display: Main Depositary
qse_qsecash_marketdata_xdp_v2_6.main_depositary.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Main Depositary: No Value"
  end

  return "Main Depositary: "..value
end

-- Dissect: Main Depositary
qse_qsecash_marketdata_xdp_v2_6.main_depositary.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.main_depositary.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.main_depositary.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.main_depositary, range, value, display)

  return offset + length, value
end

-- Market Feed Code
qse_qsecash_marketdata_xdp_v2_6.market_feed_code = {}

-- Size: Market Feed Code
qse_qsecash_marketdata_xdp_v2_6.market_feed_code.size = 2

-- Display: Market Feed Code
qse_qsecash_marketdata_xdp_v2_6.market_feed_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Market Feed Code: No Value"
  end

  return "Market Feed Code: "..value
end

-- Dissect: Market Feed Code
qse_qsecash_marketdata_xdp_v2_6.market_feed_code.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.market_feed_code.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.market_feed_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.market_feed_code, range, value, display)

  return offset + length, value
end

-- Market Indicator
qse_qsecash_marketdata_xdp_v2_6.market_indicator = {}

-- Size: Market Indicator
qse_qsecash_marketdata_xdp_v2_6.market_indicator.size = 1

-- Display: Market Indicator
qse_qsecash_marketdata_xdp_v2_6.market_indicator.display = function(value)
  if value == 0 then
    return "Market Indicator: Not Used (0)"
  end
  if value == 1 then
    return "Market Indicator: Cash (1)"
  end
  if value == 9 then
    return "Market Indicator: Not Defined (9)"
  end

  return "Market Indicator: Unknown("..value..")"
end

-- Dissect: Market Indicator
qse_qsecash_marketdata_xdp_v2_6.market_indicator.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.market_indicator.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.market_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.market_indicator, range, value, display)

  return offset + length, value
end

-- Market Segment
qse_qsecash_marketdata_xdp_v2_6.market_segment = {}

-- Size: Market Segment
qse_qsecash_marketdata_xdp_v2_6.market_segment.size = 2

-- Display: Market Segment
qse_qsecash_marketdata_xdp_v2_6.market_segment.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Market Segment: No Value"
  end

  return "Market Segment: "..value
end

-- Dissect: Market Segment
qse_qsecash_marketdata_xdp_v2_6.market_segment.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.market_segment.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.market_segment.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.market_segment, range, value, display)

  return offset + length, value
end

-- Message Size
qse_qsecash_marketdata_xdp_v2_6.message_size = {}

-- Size: Message Size
qse_qsecash_marketdata_xdp_v2_6.message_size.size = 2

-- Display: Message Size
qse_qsecash_marketdata_xdp_v2_6.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
qse_qsecash_marketdata_xdp_v2_6.message_size.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.message_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
qse_qsecash_marketdata_xdp_v2_6.message_type = {}

-- Size: Message Type
qse_qsecash_marketdata_xdp_v2_6.message_type.size = 2

-- Display: Message Type
qse_qsecash_marketdata_xdp_v2_6.message_type.display = function(value)
  if value == 505 then
    return "Message Type: Stock State Change Message (505)"
  end
  if value == 516 then
    return "Message Type: Class State Change Message (516)"
  end
  if value == 523 then
    return "Message Type: Mail Message (523)"
  end
  if value == 530 then
    return "Message Type: Indicative Matching Price Message (530)"
  end
  if value == 537 then
    return "Message Type: Collars Message (537)"
  end
  if value == 539 then
    return "Message Type: Session Timetable Message (539)"
  end
  if value == 545 then
    return "Message Type: Global Market Activity Summary Message (545)"
  end
  if value == 550 then
    return "Message Type: Start Referential Message (550)"
  end
  if value == 551 then
    return "Message Type: End Referential Message (551)"
  end
  if value == 555 then
    return "Message Type: Referential Message (555)"
  end
  if value == 220 then
    return "Message Type: Trade Creation Message (220)"
  end
  if value == 221 then
    return "Message Type: Trade Cancellation Message (221)"
  end
  if value == 240 then
    return "Message Type: Trade Full Information Message (240)"
  end
  if value == 241 then
    return "Message Type: Price Update Message (241)"
  end
  if value == 245 then
    return "Message Type: Auction Summary Message (245)"
  end
  if value == 247 then
    return "Message Type: Vwap Closing Price Message (247)"
  end
  if value == 140 then
    return "Message Type: Quotes Message (140)"
  end
  if value == 230 then
    return "Message Type: Order Update Market Sheet Message (230)"
  end
  if value == 231 then
    return "Message Type: Orderbook Retransmission Delimiter Message (231)"
  end
  if value == 542 then
    return "Message Type: Real Time Index Message (542)"
  end
  if value == 543 then
    return "Message Type: Index Summary Message (543)"
  end
  if value == 544 then
    return "Message Type: Index Composition Message (544)"
  end
  if value == 580 then
    return "Message Type: Start Refresh Message (580)"
  end
  if value == 581 then
    return "Message Type: End Refresh Message (581)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
qse_qsecash_marketdata_xdp_v2_6.message_type.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mic
qse_qsecash_marketdata_xdp_v2_6.mic = {}

-- Size: Mic
qse_qsecash_marketdata_xdp_v2_6.mic.size = 4

-- Display: Mic
qse_qsecash_marketdata_xdp_v2_6.mic.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mic: No Value"
  end

  return "Mic: "..value
end

-- Dissect: Mic
qse_qsecash_marketdata_xdp_v2_6.mic.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.mic.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.mic.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.mic, range, value, display)

  return offset + length, value
end

-- Mic List
qse_qsecash_marketdata_xdp_v2_6.mic_list = {}

-- Size: Mic List
qse_qsecash_marketdata_xdp_v2_6.mic_list.size = 24

-- Display: Mic List
qse_qsecash_marketdata_xdp_v2_6.mic_list.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mic List: No Value"
  end

  return "Mic List: "..value
end

-- Dissect: Mic List
qse_qsecash_marketdata_xdp_v2_6.mic_list.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.mic_list.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.mic_list.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.mic_list, range, value, display)

  return offset + length, value
end

-- Mnemo
qse_qsecash_marketdata_xdp_v2_6.mnemo = {}

-- Size: Mnemo
qse_qsecash_marketdata_xdp_v2_6.mnemo.size = 5

-- Display: Mnemo
qse_qsecash_marketdata_xdp_v2_6.mnemo.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mnemo: No Value"
  end

  return "Mnemo: "..value
end

-- Dissect: Mnemo
qse_qsecash_marketdata_xdp_v2_6.mnemo.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.mnemo.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.mnemo.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.mnemo, range, value, display)

  return offset + length, value
end

-- Nb Trades
qse_qsecash_marketdata_xdp_v2_6.nb_trades = {}

-- Size: Nb Trades
qse_qsecash_marketdata_xdp_v2_6.nb_trades.size = 4

-- Display: Nb Trades
qse_qsecash_marketdata_xdp_v2_6.nb_trades.display = function(value)
  return "Nb Trades: "..value
end

-- Dissect: Nb Trades
qse_qsecash_marketdata_xdp_v2_6.nb_trades.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.nb_trades.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.nb_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.nb_trades, range, value, display)

  return offset + length, value
end

-- Nom Mkdt Price Scale Code
qse_qsecash_marketdata_xdp_v2_6.nom_mkdt_price_scale_code = {}

-- Size: Nom Mkdt Price Scale Code
qse_qsecash_marketdata_xdp_v2_6.nom_mkdt_price_scale_code.size = 1

-- Display: Nom Mkdt Price Scale Code
qse_qsecash_marketdata_xdp_v2_6.nom_mkdt_price_scale_code.display = function(value)
  return "Nom Mkdt Price Scale Code: "..value
end

-- Dissect: Nom Mkdt Price Scale Code
qse_qsecash_marketdata_xdp_v2_6.nom_mkdt_price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.nom_mkdt_price_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.nom_mkdt_price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.nom_mkdt_price_scale_code, range, value, display)

  return offset + length, value
end

-- Nom Mkt Price
qse_qsecash_marketdata_xdp_v2_6.nom_mkt_price = {}

-- Size: Nom Mkt Price
qse_qsecash_marketdata_xdp_v2_6.nom_mkt_price.size = 8

-- Display: Nom Mkt Price
qse_qsecash_marketdata_xdp_v2_6.nom_mkt_price.display = function(value)
  return "Nom Mkt Price: "..value
end

-- Dissect: Nom Mkt Price
qse_qsecash_marketdata_xdp_v2_6.nom_mkt_price.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.nom_mkt_price.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = qse_qsecash_marketdata_xdp_v2_6.nom_mkt_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.nom_mkt_price, range, value, display)

  return offset + length, value
end

-- Num Of Securities Quoted
qse_qsecash_marketdata_xdp_v2_6.num_of_securities_quoted = {}

-- Size: Num Of Securities Quoted
qse_qsecash_marketdata_xdp_v2_6.num_of_securities_quoted.size = 2

-- Display: Num Of Securities Quoted
qse_qsecash_marketdata_xdp_v2_6.num_of_securities_quoted.display = function(value)
  return "Num Of Securities Quoted: "..value
end

-- Dissect: Num Of Securities Quoted
qse_qsecash_marketdata_xdp_v2_6.num_of_securities_quoted.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.num_of_securities_quoted.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.num_of_securities_quoted.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.num_of_securities_quoted, range, value, display)

  return offset + length, value
end

-- Number Ask Orders
qse_qsecash_marketdata_xdp_v2_6.number_ask_orders = {}

-- Size: Number Ask Orders
qse_qsecash_marketdata_xdp_v2_6.number_ask_orders.size = 2

-- Display: Number Ask Orders
qse_qsecash_marketdata_xdp_v2_6.number_ask_orders.display = function(value)
  return "Number Ask Orders: "..value
end

-- Dissect: Number Ask Orders
qse_qsecash_marketdata_xdp_v2_6.number_ask_orders.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.number_ask_orders.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.number_ask_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.number_ask_orders, range, value, display)

  return offset + length, value
end

-- Number Bid Orders
qse_qsecash_marketdata_xdp_v2_6.number_bid_orders = {}

-- Size: Number Bid Orders
qse_qsecash_marketdata_xdp_v2_6.number_bid_orders.size = 2

-- Display: Number Bid Orders
qse_qsecash_marketdata_xdp_v2_6.number_bid_orders.display = function(value)
  return "Number Bid Orders: "..value
end

-- Dissect: Number Bid Orders
qse_qsecash_marketdata_xdp_v2_6.number_bid_orders.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.number_bid_orders.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.number_bid_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.number_bid_orders, range, value, display)

  return offset + length, value
end

-- Number Instrument Circ
qse_qsecash_marketdata_xdp_v2_6.number_instrument_circ = {}

-- Size: Number Instrument Circ
qse_qsecash_marketdata_xdp_v2_6.number_instrument_circ.size = 8

-- Display: Number Instrument Circ
qse_qsecash_marketdata_xdp_v2_6.number_instrument_circ.display = function(value)
  return "Number Instrument Circ: "..value
end

-- Dissect: Number Instrument Circ
qse_qsecash_marketdata_xdp_v2_6.number_instrument_circ.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.number_instrument_circ.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = qse_qsecash_marketdata_xdp_v2_6.number_instrument_circ.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.number_instrument_circ, range, value, display)

  return offset + length, value
end

-- Number Msg Entries
qse_qsecash_marketdata_xdp_v2_6.number_msg_entries = {}

-- Size: Number Msg Entries
qse_qsecash_marketdata_xdp_v2_6.number_msg_entries.size = 1

-- Display: Number Msg Entries
qse_qsecash_marketdata_xdp_v2_6.number_msg_entries.display = function(value)
  return "Number Msg Entries: "..value
end

-- Dissect: Number Msg Entries
qse_qsecash_marketdata_xdp_v2_6.number_msg_entries.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.number_msg_entries.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.number_msg_entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.number_msg_entries, range, value, display)

  return offset + length, value
end

-- Number Of Conponents
qse_qsecash_marketdata_xdp_v2_6.number_of_conponents = {}

-- Size: Number Of Conponents
qse_qsecash_marketdata_xdp_v2_6.number_of_conponents.size = 2

-- Display: Number Of Conponents
qse_qsecash_marketdata_xdp_v2_6.number_of_conponents.display = function(value)
  return "Number Of Conponents: "..value
end

-- Dissect: Number Of Conponents
qse_qsecash_marketdata_xdp_v2_6.number_of_conponents.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.number_of_conponents.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.number_of_conponents.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.number_of_conponents, range, value, display)

  return offset + length, value
end

-- Number Of Message
qse_qsecash_marketdata_xdp_v2_6.number_of_message = {}

-- Size: Number Of Message
qse_qsecash_marketdata_xdp_v2_6.number_of_message.size = 2

-- Display: Number Of Message
qse_qsecash_marketdata_xdp_v2_6.number_of_message.display = function(value)
  return "Number Of Message: "..value
end

-- Dissect: Number Of Message
qse_qsecash_marketdata_xdp_v2_6.number_of_message.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.number_of_message.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.number_of_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.number_of_message, range, value, display)

  return offset + length, value
end

-- Number Orders
qse_qsecash_marketdata_xdp_v2_6.number_orders = {}

-- Size: Number Orders
qse_qsecash_marketdata_xdp_v2_6.number_orders.size = 2

-- Display: Number Orders
qse_qsecash_marketdata_xdp_v2_6.number_orders.display = function(value)
  return "Number Orders: "..value
end

-- Dissect: Number Orders
qse_qsecash_marketdata_xdp_v2_6.number_orders.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.number_orders.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.number_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.number_orders, range, value, display)

  return offset + length, value
end

-- Opening Reference Level
qse_qsecash_marketdata_xdp_v2_6.opening_reference_level = {}

-- Size: Opening Reference Level
qse_qsecash_marketdata_xdp_v2_6.opening_reference_level.size = 4

-- Display: Opening Reference Level
qse_qsecash_marketdata_xdp_v2_6.opening_reference_level.display = function(value)
  return "Opening Reference Level: "..value
end

-- Dissect: Opening Reference Level
qse_qsecash_marketdata_xdp_v2_6.opening_reference_level.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.opening_reference_level.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.opening_reference_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.opening_reference_level, range, value, display)

  return offset + length, value
end

-- Opening Reference Time
qse_qsecash_marketdata_xdp_v2_6.opening_reference_time = {}

-- Size: Opening Reference Time
qse_qsecash_marketdata_xdp_v2_6.opening_reference_time.size = 4

-- Display: Opening Reference Time
qse_qsecash_marketdata_xdp_v2_6.opening_reference_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if qse_qsecash_marketdata_xdp_v2_6.timestamp_format == 0 then
    return "Opening Reference Time: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if qse_qsecash_marketdata_xdp_v2_6.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = qse_qsecash_marketdata_xdp_v2_6.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Opening Reference Time: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "Opening Reference Time: "..os.date("%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Opening Reference Time
qse_qsecash_marketdata_xdp_v2_6.opening_reference_time.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.opening_reference_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.opening_reference_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.opening_reference_time, range, value, display)

  return offset + length, value
end

-- Opening Trade Indicator
qse_qsecash_marketdata_xdp_v2_6.opening_trade_indicator = {}

-- Size: Opening Trade Indicator
qse_qsecash_marketdata_xdp_v2_6.opening_trade_indicator.size = 1

-- Display: Opening Trade Indicator
qse_qsecash_marketdata_xdp_v2_6.opening_trade_indicator.display = function(value)
  if value == "O" then
    return "Opening Trade Indicator: Opening (O)"
  end
  if value == "S" then
    return "Opening Trade Indicator: Core Session (S)"
  end

  return "Opening Trade Indicator: Unknown("..value..")"
end

-- Dissect: Opening Trade Indicator
qse_qsecash_marketdata_xdp_v2_6.opening_trade_indicator.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.opening_trade_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.opening_trade_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.opening_trade_indicator, range, value, display)

  return offset + length, value
end

-- Order Date
qse_qsecash_marketdata_xdp_v2_6.order_date = {}

-- Size: Order Date
qse_qsecash_marketdata_xdp_v2_6.order_date.size = 4

-- Display: Order Date
qse_qsecash_marketdata_xdp_v2_6.order_date.display = function(value)
  return "Order Date: "..value
end

-- Dissect: Order Date
qse_qsecash_marketdata_xdp_v2_6.order_date.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.order_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.order_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.order_date, range, value, display)

  return offset + length, value
end

-- Order Entry Rejection
qse_qsecash_marketdata_xdp_v2_6.order_entry_rejection = {}

-- Size: Order Entry Rejection
qse_qsecash_marketdata_xdp_v2_6.order_entry_rejection.size = 1

-- Display: Order Entry Rejection
qse_qsecash_marketdata_xdp_v2_6.order_entry_rejection.display = function(value)
  if value == "0" then
    return "Order Entry Rejection: Not Applicable (0)"
  end
  if value == "N" then
    return "Order Entry Rejection: Order Entry Allowed (N)"
  end
  if value == "Y" then
    return "Order Entry Rejection: Order Entry Forbidden (Y)"
  end

  return "Order Entry Rejection: Unknown("..value..")"
end

-- Dissect: Order Entry Rejection
qse_qsecash_marketdata_xdp_v2_6.order_entry_rejection.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.order_entry_rejection.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.order_entry_rejection.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.order_entry_rejection, range, value, display)

  return offset + length, value
end

-- Order Id
qse_qsecash_marketdata_xdp_v2_6.order_id = {}

-- Size: Order Id
qse_qsecash_marketdata_xdp_v2_6.order_id.size = 4

-- Display: Order Id
qse_qsecash_marketdata_xdp_v2_6.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
qse_qsecash_marketdata_xdp_v2_6.order_id.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.order_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Origin
qse_qsecash_marketdata_xdp_v2_6.order_origin = {}

-- Size: Order Origin
qse_qsecash_marketdata_xdp_v2_6.order_origin.size = 1

-- Display: Order Origin
qse_qsecash_marketdata_xdp_v2_6.order_origin.display = function(value)
  return "Order Origin: "..value
end

-- Dissect: Order Origin
qse_qsecash_marketdata_xdp_v2_6.order_origin.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.order_origin.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.order_origin.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.order_origin, range, value, display)

  return offset + length, value
end

-- Order Priority Date
qse_qsecash_marketdata_xdp_v2_6.order_priority_date = {}

-- Size: Order Priority Date
qse_qsecash_marketdata_xdp_v2_6.order_priority_date.size = 4

-- Display: Order Priority Date
qse_qsecash_marketdata_xdp_v2_6.order_priority_date.display = function(value)
  return "Order Priority Date: "..value
end

-- Dissect: Order Priority Date
qse_qsecash_marketdata_xdp_v2_6.order_priority_date.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.order_priority_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.order_priority_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.order_priority_date, range, value, display)

  return offset + length, value
end

-- Order Priority Micro Secs
qse_qsecash_marketdata_xdp_v2_6.order_priority_micro_secs = {}

-- Size: Order Priority Micro Secs
qse_qsecash_marketdata_xdp_v2_6.order_priority_micro_secs.size = 2

-- Display: Order Priority Micro Secs
qse_qsecash_marketdata_xdp_v2_6.order_priority_micro_secs.display = function(value)
  return "Order Priority Micro Secs: "..value
end

-- Dissect: Order Priority Micro Secs
qse_qsecash_marketdata_xdp_v2_6.order_priority_micro_secs.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.order_priority_micro_secs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.order_priority_micro_secs.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.order_priority_micro_secs, range, value, display)

  return offset + length, value
end

-- Order Priority Time
qse_qsecash_marketdata_xdp_v2_6.order_priority_time = {}

-- Size: Order Priority Time
qse_qsecash_marketdata_xdp_v2_6.order_priority_time.size = 4

-- Display: Order Priority Time
qse_qsecash_marketdata_xdp_v2_6.order_priority_time.display = function(value)
  local hour = math.floor(value / 10000000)
  local minute = math.floor(value / 100000) % 100
  local second = math.floor(value / 1000) % 100
  local milli = value % 1000

  return string.format("Order Priority Time: %02d:%02d:%02d.%03d", hour, minute, second, milli)
end

-- Dissect: Order Priority Time
qse_qsecash_marketdata_xdp_v2_6.order_priority_time.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.order_priority_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.order_priority_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.order_priority_time, range, value, display)

  return offset + length, value
end

-- Order Type
qse_qsecash_marketdata_xdp_v2_6.order_type = {}

-- Size: Order Type
qse_qsecash_marketdata_xdp_v2_6.order_type.size = 1

-- Display: Order Type
qse_qsecash_marketdata_xdp_v2_6.order_type.display = function(value)
  if value == "1" then
    return "Order Type: Market Order (1)"
  end
  if value == "2" then
    return "Order Type: Limit Order (2)"
  end
  if value == "K" then
    return "Order Type: Market To Limit Order (K)"
  end
  if value == "P" then
    return "Order Type: Peg Order (P)"
  end

  return "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
qse_qsecash_marketdata_xdp_v2_6.order_type.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.order_type, range, value, display)

  return offset + length, value
end

-- Original Trade Id Number
qse_qsecash_marketdata_xdp_v2_6.original_trade_id_number = {}

-- Size: Original Trade Id Number
qse_qsecash_marketdata_xdp_v2_6.original_trade_id_number.size = 4

-- Display: Original Trade Id Number
qse_qsecash_marketdata_xdp_v2_6.original_trade_id_number.display = function(value)
  return "Original Trade Id Number: "..value
end

-- Dissect: Original Trade Id Number
qse_qsecash_marketdata_xdp_v2_6.original_trade_id_number.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.original_trade_id_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.original_trade_id_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.original_trade_id_number, range, value, display)

  return offset + length, value
end

-- Packet Length
qse_qsecash_marketdata_xdp_v2_6.packet_length = {}

-- Size: Packet Length
qse_qsecash_marketdata_xdp_v2_6.packet_length.size = 2

-- Display: Packet Length
qse_qsecash_marketdata_xdp_v2_6.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
qse_qsecash_marketdata_xdp_v2_6.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Sequence Number
qse_qsecash_marketdata_xdp_v2_6.packet_sequence_number = {}

-- Size: Packet Sequence Number
qse_qsecash_marketdata_xdp_v2_6.packet_sequence_number.size = 4

-- Display: Packet Sequence Number
qse_qsecash_marketdata_xdp_v2_6.packet_sequence_number.display = function(value)
  return "Packet Sequence Number: "..value
end

-- Dissect: Packet Sequence Number
qse_qsecash_marketdata_xdp_v2_6.packet_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.packet_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.packet_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.packet_sequence_number, range, value, display)

  return offset + length, value
end

-- Packet Type
qse_qsecash_marketdata_xdp_v2_6.packet_type = {}

-- Size: Packet Type
qse_qsecash_marketdata_xdp_v2_6.packet_type.size = 2

-- Display: Packet Type
qse_qsecash_marketdata_xdp_v2_6.packet_type.display = function(value)
  if value == 994 then
    return "Packet Type: Generic Quotes (994)"
  end
  if value == 995 then
    return "Packet Type: Generic Market Information (995)"
  end
  if value == 996 then
    return "Packet Type: Generic Indices (996)"
  end
  if value == 998 then
    return "Packet Type: Generic Trades (998)"
  end
  if value == 230 then
    return "Packet Type: Generic Orderbook (230)"
  end
  if value == 999 then
    return "Packet Type: Refresh Combined Packet Type (999)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
qse_qsecash_marketdata_xdp_v2_6.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.packet_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Percent Variation Prev Clos
qse_qsecash_marketdata_xdp_v2_6.percent_variation_prev_clos = {}

-- Size: Percent Variation Prev Clos
qse_qsecash_marketdata_xdp_v2_6.percent_variation_prev_clos.size = 4

-- Display: Percent Variation Prev Clos
qse_qsecash_marketdata_xdp_v2_6.percent_variation_prev_clos.display = function(value)
  return "Percent Variation Prev Clos: "..value
end

-- Dissect: Percent Variation Prev Clos
qse_qsecash_marketdata_xdp_v2_6.percent_variation_prev_clos.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.percent_variation_prev_clos.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.percent_variation_prev_clos.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.percent_variation_prev_clos, range, value, display)

  return offset + length, value
end

-- Percentage Of Capitalization
qse_qsecash_marketdata_xdp_v2_6.percentage_of_capitalization = {}

-- Size: Percentage Of Capitalization
qse_qsecash_marketdata_xdp_v2_6.percentage_of_capitalization.size = 4

-- Display: Percentage Of Capitalization
qse_qsecash_marketdata_xdp_v2_6.percentage_of_capitalization.display = function(value)
  return "Percentage Of Capitalization: "..value
end

-- Dissect: Percentage Of Capitalization
qse_qsecash_marketdata_xdp_v2_6.percentage_of_capitalization.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.percentage_of_capitalization.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.percentage_of_capitalization.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.percentage_of_capitalization, range, value, display)

  return offset + length, value
end

-- Percentage Scale Code
qse_qsecash_marketdata_xdp_v2_6.percentage_scale_code = {}

-- Size: Percentage Scale Code
qse_qsecash_marketdata_xdp_v2_6.percentage_scale_code.size = 1

-- Display: Percentage Scale Code
qse_qsecash_marketdata_xdp_v2_6.percentage_scale_code.display = function(value)
  return "Percentage Scale Code: "..value
end

-- Dissect: Percentage Scale Code
qse_qsecash_marketdata_xdp_v2_6.percentage_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.percentage_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.percentage_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.percentage_scale_code, range, value, display)

  return offset + length, value
end

-- Period Indicator
qse_qsecash_marketdata_xdp_v2_6.period_indicator = {}

-- Size: Period Indicator
qse_qsecash_marketdata_xdp_v2_6.period_indicator.size = 1

-- Display: Period Indicator
qse_qsecash_marketdata_xdp_v2_6.period_indicator.display = function(value)
  if value == "M" then
    return "Period Indicator: Morning Effective For The Current Day (M)"
  end
  if value == "E" then
    return "Period Indicator: Evening Effective For The Next Trading Day (E)"
  end

  return "Period Indicator: Unknown("..value..")"
end

-- Dissect: Period Indicator
qse_qsecash_marketdata_xdp_v2_6.period_indicator.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.period_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.period_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.period_indicator, range, value, display)

  return offset + length, value
end

-- Period Side
qse_qsecash_marketdata_xdp_v2_6.period_side = {}

-- Size: Period Side
qse_qsecash_marketdata_xdp_v2_6.period_side.size = 1

-- Display: Period Side
qse_qsecash_marketdata_xdp_v2_6.period_side.display = function(value)
  if value == "0" then
    return "Period Side: Not Applicable (0)"
  end
  if value == "A" then
    return "Period Side: Bid Only Period (A)"
  end
  if value == "V" then
    return "Period Side: Offer Only Period (V)"
  end

  return "Period Side: Unknown("..value..")"
end

-- Dissect: Period Side
qse_qsecash_marketdata_xdp_v2_6.period_side.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.period_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.period_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.period_side, range, value, display)

  return offset + length, value
end

-- Preliminary Opening Level
qse_qsecash_marketdata_xdp_v2_6.preliminary_opening_level = {}

-- Size: Preliminary Opening Level
qse_qsecash_marketdata_xdp_v2_6.preliminary_opening_level.size = 4

-- Display: Preliminary Opening Level
qse_qsecash_marketdata_xdp_v2_6.preliminary_opening_level.display = function(value)
  return "Preliminary Opening Level: "..value
end

-- Dissect: Preliminary Opening Level
qse_qsecash_marketdata_xdp_v2_6.preliminary_opening_level.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.preliminary_opening_level.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.preliminary_opening_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.preliminary_opening_level, range, value, display)

  return offset + length, value
end

-- Preliminary Opening Time
qse_qsecash_marketdata_xdp_v2_6.preliminary_opening_time = {}

-- Size: Preliminary Opening Time
qse_qsecash_marketdata_xdp_v2_6.preliminary_opening_time.size = 4

-- Display: Preliminary Opening Time
qse_qsecash_marketdata_xdp_v2_6.preliminary_opening_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if qse_qsecash_marketdata_xdp_v2_6.timestamp_format == 0 then
    return "Preliminary Opening Time: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if qse_qsecash_marketdata_xdp_v2_6.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = qse_qsecash_marketdata_xdp_v2_6.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Preliminary Opening Time: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "Preliminary Opening Time: "..os.date("%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Preliminary Opening Time
qse_qsecash_marketdata_xdp_v2_6.preliminary_opening_time.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.preliminary_opening_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.preliminary_opening_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.preliminary_opening_time, range, value, display)

  return offset + length, value
end

-- Prev Day Capital Traded
qse_qsecash_marketdata_xdp_v2_6.prev_day_capital_traded = {}

-- Size: Prev Day Capital Traded
qse_qsecash_marketdata_xdp_v2_6.prev_day_capital_traded.size = 8

-- Display: Prev Day Capital Traded
qse_qsecash_marketdata_xdp_v2_6.prev_day_capital_traded.display = function(value)
  return "Prev Day Capital Traded: "..value
end

-- Dissect: Prev Day Capital Traded
qse_qsecash_marketdata_xdp_v2_6.prev_day_capital_traded.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.prev_day_capital_traded.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = qse_qsecash_marketdata_xdp_v2_6.prev_day_capital_traded.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.prev_day_capital_traded, range, value, display)

  return offset + length, value
end

-- Prev Day Capital Traded Scale Code
qse_qsecash_marketdata_xdp_v2_6.prev_day_capital_traded_scale_code = {}

-- Size: Prev Day Capital Traded Scale Code
qse_qsecash_marketdata_xdp_v2_6.prev_day_capital_traded_scale_code.size = 1

-- Display: Prev Day Capital Traded Scale Code
qse_qsecash_marketdata_xdp_v2_6.prev_day_capital_traded_scale_code.display = function(value)
  return "Prev Day Capital Traded Scale Code: "..value
end

-- Dissect: Prev Day Capital Traded Scale Code
qse_qsecash_marketdata_xdp_v2_6.prev_day_capital_traded_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.prev_day_capital_traded_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.prev_day_capital_traded_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.prev_day_capital_traded_scale_code, range, value, display)

  return offset + length, value
end

-- Prev Volume Traded
qse_qsecash_marketdata_xdp_v2_6.prev_volume_traded = {}

-- Size: Prev Volume Traded
qse_qsecash_marketdata_xdp_v2_6.prev_volume_traded.size = 4

-- Display: Prev Volume Traded
qse_qsecash_marketdata_xdp_v2_6.prev_volume_traded.display = function(value)
  return "Prev Volume Traded: "..value
end

-- Dissect: Prev Volume Traded
qse_qsecash_marketdata_xdp_v2_6.prev_volume_traded.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.prev_volume_traded.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.prev_volume_traded.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.prev_volume_traded, range, value, display)

  return offset + length, value
end

-- Previous Close
qse_qsecash_marketdata_xdp_v2_6.previous_close = {}

-- Size: Previous Close
qse_qsecash_marketdata_xdp_v2_6.previous_close.size = 4

-- Display: Previous Close
qse_qsecash_marketdata_xdp_v2_6.previous_close.display = function(value)
  return "Previous Close: "..value
end

-- Dissect: Previous Close
qse_qsecash_marketdata_xdp_v2_6.previous_close.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.previous_close.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.previous_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.previous_close, range, value, display)

  return offset + length, value
end

-- Price
qse_qsecash_marketdata_xdp_v2_6.price = {}

-- Size: Price
qse_qsecash_marketdata_xdp_v2_6.price.size = 4

-- Display: Price
qse_qsecash_marketdata_xdp_v2_6.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
qse_qsecash_marketdata_xdp_v2_6.price.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.price, range, value, display)

  return offset + length, value
end

-- Price Scale Code
qse_qsecash_marketdata_xdp_v2_6.price_scale_code = {}

-- Size: Price Scale Code
qse_qsecash_marketdata_xdp_v2_6.price_scale_code.size = 1

-- Display: Price Scale Code
qse_qsecash_marketdata_xdp_v2_6.price_scale_code.display = function(value)
  return "Price Scale Code: "..value
end

-- Dissect: Price Scale Code
qse_qsecash_marketdata_xdp_v2_6.price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.price_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Priority Indicator
qse_qsecash_marketdata_xdp_v2_6.priority_indicator = {}

-- Size: Priority Indicator
qse_qsecash_marketdata_xdp_v2_6.priority_indicator.size = 1

-- Display: Priority Indicator
qse_qsecash_marketdata_xdp_v2_6.priority_indicator.display = function(value)
  if value == "O" then
    return "Priority Indicator: Urgent Message (O)"
  end
  if value == "N" then
    return "Priority Indicator: Non Urgent Message (N)"
  end

  return "Priority Indicator: Unknown("..value..")"
end

-- Dissect: Priority Indicator
qse_qsecash_marketdata_xdp_v2_6.priority_indicator.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.priority_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.priority_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.priority_indicator, range, value, display)

  return offset + length, value
end

-- Prog Opening Time
qse_qsecash_marketdata_xdp_v2_6.prog_opening_time = {}

-- Size: Prog Opening Time
qse_qsecash_marketdata_xdp_v2_6.prog_opening_time.size = 6

-- Display: Prog Opening Time
qse_qsecash_marketdata_xdp_v2_6.prog_opening_time.display = function(value)
  if #value < 6 then
    return "Prog Opening Time: "..value
  end

  return "Prog Opening Time: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Prog Opening Time
qse_qsecash_marketdata_xdp_v2_6.prog_opening_time.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.prog_opening_time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.prog_opening_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.prog_opening_time, range, value, display)

  return offset + length, value
end

-- Qty Shares
qse_qsecash_marketdata_xdp_v2_6.qty_shares = {}

-- Size: Qty Shares
qse_qsecash_marketdata_xdp_v2_6.qty_shares.size = 4

-- Display: Qty Shares
qse_qsecash_marketdata_xdp_v2_6.qty_shares.display = function(value)
  return "Qty Shares: "..value
end

-- Dissect: Qty Shares
qse_qsecash_marketdata_xdp_v2_6.qty_shares.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.qty_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.qty_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.qty_shares, range, value, display)

  return offset + length, value
end

-- Quantity Notation
qse_qsecash_marketdata_xdp_v2_6.quantity_notation = {}

-- Size: Quantity Notation
qse_qsecash_marketdata_xdp_v2_6.quantity_notation.size = 4

-- Display: Quantity Notation
qse_qsecash_marketdata_xdp_v2_6.quantity_notation.display = function(value)
  if value == "UNT" then
    return "Quantity Notation: In Unit Ie Number Of Shares Left Padded (UNT)"
  end
  if value == "FMT" then
    return "Quantity Notation: In Facial Amount Ie Bonds Expressed In Left Padded (FMT)"
  end

  return "Quantity Notation: Unknown("..value..")"
end

-- Dissect: Quantity Notation
qse_qsecash_marketdata_xdp_v2_6.quantity_notation.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.quantity_notation.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.quantity_notation.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.quantity_notation, range, value, display)

  return offset + length, value
end

-- Quote Condition
qse_qsecash_marketdata_xdp_v2_6.quote_condition = {}

-- Size: Quote Condition
qse_qsecash_marketdata_xdp_v2_6.quote_condition.size = 1

-- Display: Quote Condition
qse_qsecash_marketdata_xdp_v2_6.quote_condition.display = function(value)
  if value == "0" then
    return "Quote Condition: No Liquidity Provider Lp (0)"
  end
  if value == "1" then
    return "Quote Condition: Lp Only On Ask Side (1)"
  end
  if value == "2" then
    return "Quote Condition: Lp Only On Bid Side (2)"
  end
  if value == "3" then
    return "Quote Condition: Lp On Ask And Bid Sides (3)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
qse_qsecash_marketdata_xdp_v2_6.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Quote Link Id
qse_qsecash_marketdata_xdp_v2_6.quote_link_id = {}

-- Size: Quote Link Id
qse_qsecash_marketdata_xdp_v2_6.quote_link_id.size = 4

-- Display: Quote Link Id
qse_qsecash_marketdata_xdp_v2_6.quote_link_id.display = function(value)
  return "Quote Link Id: "..value
end

-- Dissect: Quote Link Id
qse_qsecash_marketdata_xdp_v2_6.quote_link_id.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.quote_link_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.quote_link_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.quote_link_id, range, value, display)

  return offset + length, value
end

-- Quote Number
qse_qsecash_marketdata_xdp_v2_6.quote_number = {}

-- Size: Quote Number
qse_qsecash_marketdata_xdp_v2_6.quote_number.size = 1

-- Display: Quote Number
qse_qsecash_marketdata_xdp_v2_6.quote_number.display = function(value)
  return "Quote Number: "..value
end

-- Dissect: Quote Number
qse_qsecash_marketdata_xdp_v2_6.quote_number.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.quote_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.quote_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.quote_number, range, value, display)

  return offset + length, value
end

-- Rebroadcast Indicator
qse_qsecash_marketdata_xdp_v2_6.rebroadcast_indicator = {}

-- Size: Rebroadcast Indicator
qse_qsecash_marketdata_xdp_v2_6.rebroadcast_indicator.size = 1

-- Display: Rebroadcast Indicator
qse_qsecash_marketdata_xdp_v2_6.rebroadcast_indicator.display = function(value)
  if value == "0" then
    return "Rebroadcast Indicator: Current Day (0)"
  end
  if value == "1" then
    return "Rebroadcast Indicator: Previous Day (1)"
  end

  return "Rebroadcast Indicator: Unknown("..value..")"
end

-- Dissect: Rebroadcast Indicator
qse_qsecash_marketdata_xdp_v2_6.rebroadcast_indicator.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.rebroadcast_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.rebroadcast_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.rebroadcast_indicator, range, value, display)

  return offset + length, value
end

-- Repo Expiry Date
qse_qsecash_marketdata_xdp_v2_6.repo_expiry_date = {}

-- Size: Repo Expiry Date
qse_qsecash_marketdata_xdp_v2_6.repo_expiry_date.size = 8

-- Display: Repo Expiry Date
qse_qsecash_marketdata_xdp_v2_6.repo_expiry_date.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Repo Expiry Date: No Value"
  end

  return "Repo Expiry Date: "..value
end

-- Dissect: Repo Expiry Date
qse_qsecash_marketdata_xdp_v2_6.repo_expiry_date.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.repo_expiry_date.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.repo_expiry_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.repo_expiry_date, range, value, display)

  return offset + length, value
end

-- Repo Indicator
qse_qsecash_marketdata_xdp_v2_6.repo_indicator = {}

-- Size: Repo Indicator
qse_qsecash_marketdata_xdp_v2_6.repo_indicator.size = 1

-- Display: Repo Indicator
qse_qsecash_marketdata_xdp_v2_6.repo_indicator.display = function(value)
  if value == "0" then
    return "Repo Indicator: Instrument Neither Eligible For The Srd Nor Eligible For The Loan (0)"
  end
  if value == "1" then
    return "Repo Indicator: Instrument Eligible For The Srd And For The Loan And Lending (1)"
  end
  if value == "2" then
    return "Repo Indicator: Instrument Eligible For The Srd But Not For The Loan And Lending (2)"
  end
  if value == "3" then
    return "Repo Indicator: Instrument Eligible For The Loan And Lending Market But Not For The (3)"
  end
  if value == "8" then
    return "Repo Indicator: Non Significant (8)"
  end

  return "Repo Indicator: Unknown("..value..")"
end

-- Dissect: Repo Indicator
qse_qsecash_marketdata_xdp_v2_6.repo_indicator.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.repo_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.repo_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.repo_indicator, range, value, display)

  return offset + length, value
end

-- Retransmission Indicator
qse_qsecash_marketdata_xdp_v2_6.retransmission_indicator = {}

-- Size: Retransmission Indicator
qse_qsecash_marketdata_xdp_v2_6.retransmission_indicator.size = 1

-- Display: Retransmission Indicator
qse_qsecash_marketdata_xdp_v2_6.retransmission_indicator.display = function(value)
  return "Retransmission Indicator: "..value
end

-- Dissect: Retransmission Indicator
qse_qsecash_marketdata_xdp_v2_6.retransmission_indicator.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.retransmission_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.retransmission_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.retransmission_indicator, range, value, display)

  return offset + length, value
end

-- Section Number
qse_qsecash_marketdata_xdp_v2_6.section_number = {}

-- Size: Section Number
qse_qsecash_marketdata_xdp_v2_6.section_number.size = 1

-- Display: Section Number
qse_qsecash_marketdata_xdp_v2_6.section_number.display = function(value)
  return "Section Number: "..value
end

-- Dissect: Section Number
qse_qsecash_marketdata_xdp_v2_6.section_number.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.section_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.section_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.section_number, range, value, display)

  return offset + length, value
end

-- Send Time
qse_qsecash_marketdata_xdp_v2_6.send_time = {}

-- Size: Send Time
qse_qsecash_marketdata_xdp_v2_6.send_time.size = 4

-- Display: Send Time
qse_qsecash_marketdata_xdp_v2_6.send_time.display = function(value)
  return "Send Time: "..value
end

-- Dissect: Send Time
qse_qsecash_marketdata_xdp_v2_6.send_time.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.send_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.send_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.send_time, range, value, display)

  return offset + length, value
end

-- Sending Indicator
qse_qsecash_marketdata_xdp_v2_6.sending_indicator = {}

-- Size: Sending Indicator
qse_qsecash_marketdata_xdp_v2_6.sending_indicator.size = 2

-- Display: Sending Indicator
qse_qsecash_marketdata_xdp_v2_6.sending_indicator.display = function(value)
  return "Sending Indicator: "..value
end

-- Dissect: Sending Indicator
qse_qsecash_marketdata_xdp_v2_6.sending_indicator.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.sending_indicator.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.sending_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.sending_indicator, range, value, display)

  return offset + length, value
end

-- Sequence Number
qse_qsecash_marketdata_xdp_v2_6.sequence_number = {}

-- Size: Sequence Number
qse_qsecash_marketdata_xdp_v2_6.sequence_number.size = 2

-- Display: Sequence Number
qse_qsecash_marketdata_xdp_v2_6.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
qse_qsecash_marketdata_xdp_v2_6.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Service Id
qse_qsecash_marketdata_xdp_v2_6.service_id = {}

-- Size: Service Id
qse_qsecash_marketdata_xdp_v2_6.service_id.size = 2

-- Display: Service Id
qse_qsecash_marketdata_xdp_v2_6.service_id.display = function(value)
  return "Service Id: "..value
end

-- Dissect: Service Id
qse_qsecash_marketdata_xdp_v2_6.service_id.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.service_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.service_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.service_id, range, value, display)

  return offset + length, value
end

-- Session High
qse_qsecash_marketdata_xdp_v2_6.session_high = {}

-- Size: Session High
qse_qsecash_marketdata_xdp_v2_6.session_high.size = 4

-- Display: Session High
qse_qsecash_marketdata_xdp_v2_6.session_high.display = function(value)
  return "Session High: "..value
end

-- Dissect: Session High
qse_qsecash_marketdata_xdp_v2_6.session_high.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.session_high.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.session_high.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.session_high, range, value, display)

  return offset + length, value
end

-- Session Low
qse_qsecash_marketdata_xdp_v2_6.session_low = {}

-- Size: Session Low
qse_qsecash_marketdata_xdp_v2_6.session_low.size = 4

-- Display: Session Low
qse_qsecash_marketdata_xdp_v2_6.session_low.display = function(value)
  return "Session Low: "..value
end

-- Dissect: Session Low
qse_qsecash_marketdata_xdp_v2_6.session_low.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.session_low.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.session_low.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.session_low, range, value, display)

  return offset + length, value
end

-- Session Type
qse_qsecash_marketdata_xdp_v2_6.session_type = {}

-- Size: Session Type
qse_qsecash_marketdata_xdp_v2_6.session_type.size = 1

-- Display: Session Type
qse_qsecash_marketdata_xdp_v2_6.session_type.display = function(value)
  if value == "E" then
    return "Session Type: Early (E)"
  end
  if value == "C" then
    return "Session Type: Core Session (C)"
  end
  if value == "L" then
    return "Session Type: Late (L)"
  end

  return "Session Type: Unknown("..value..")"
end

-- Dissect: Session Type
qse_qsecash_marketdata_xdp_v2_6.session_type.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.session_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.session_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.session_type, range, value, display)

  return offset + length, value
end

-- Shares Out
qse_qsecash_marketdata_xdp_v2_6.shares_out = {}

-- Size: Shares Out
qse_qsecash_marketdata_xdp_v2_6.shares_out.size = 8

-- Display: Shares Out
qse_qsecash_marketdata_xdp_v2_6.shares_out.display = function(value)
  return "Shares Out: "..value
end

-- Dissect: Shares Out
qse_qsecash_marketdata_xdp_v2_6.shares_out.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.shares_out.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = qse_qsecash_marketdata_xdp_v2_6.shares_out.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.shares_out, range, value, display)

  return offset + length, value
end

-- Side
qse_qsecash_marketdata_xdp_v2_6.side = {}

-- Size: Side
qse_qsecash_marketdata_xdp_v2_6.side.size = 1

-- Display: Side
qse_qsecash_marketdata_xdp_v2_6.side.display = function(value)
  return "Side: "..value
end

-- Dissect: Side
qse_qsecash_marketdata_xdp_v2_6.side.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.side, range, value, display)

  return offset + length, value
end

-- Small Trade
qse_qsecash_marketdata_xdp_v2_6.small_trade = {}

-- Size: Small Trade
qse_qsecash_marketdata_xdp_v2_6.small_trade.size = 4

-- Display: Small Trade
qse_qsecash_marketdata_xdp_v2_6.small_trade.display = function(value)
  return "Small Trade: "..value
end

-- Dissect: Small Trade
qse_qsecash_marketdata_xdp_v2_6.small_trade.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.small_trade.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.small_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.small_trade, range, value, display)

  return offset + length, value
end

-- Small Trade Indicator
qse_qsecash_marketdata_xdp_v2_6.small_trade_indicator = {}

-- Size: Small Trade Indicator
qse_qsecash_marketdata_xdp_v2_6.small_trade_indicator.size = 1

-- Display: Small Trade Indicator
qse_qsecash_marketdata_xdp_v2_6.small_trade_indicator.display = function(value)
  if value == "1" then
    return "Small Trade Indicator: Not A Small Trade (1)"
  end
  if value == "2" then
    return "Small Trade Indicator: Small Trade (2)"
  end

  return "Small Trade Indicator: Unknown("..value..")"
end

-- Dissect: Small Trade Indicator
qse_qsecash_marketdata_xdp_v2_6.small_trade_indicator.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.small_trade_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.small_trade_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.small_trade_indicator, range, value, display)

  return offset + length, value
end

-- Source Seq Num
qse_qsecash_marketdata_xdp_v2_6.source_seq_num = {}

-- Size: Source Seq Num
qse_qsecash_marketdata_xdp_v2_6.source_seq_num.size = 4

-- Display: Source Seq Num
qse_qsecash_marketdata_xdp_v2_6.source_seq_num.display = function(value)
  return "Source Seq Num: "..value
end

-- Dissect: Source Seq Num
qse_qsecash_marketdata_xdp_v2_6.source_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.source_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.source_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.source_seq_num, range, value, display)

  return offset + length, value
end

-- Source Time
qse_qsecash_marketdata_xdp_v2_6.source_time = {}

-- Size: Source Time
qse_qsecash_marketdata_xdp_v2_6.source_time.size = 4

-- Display: Source Time
qse_qsecash_marketdata_xdp_v2_6.source_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if qse_qsecash_marketdata_xdp_v2_6.timestamp_format == 0 then
    return "Source Time: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if qse_qsecash_marketdata_xdp_v2_6.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = qse_qsecash_marketdata_xdp_v2_6.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Source Time: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "Source Time: "..os.date("%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Source Time
qse_qsecash_marketdata_xdp_v2_6.source_time.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.source_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.source_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.source_time, range, value, display)

  return offset + length, value
end

-- Source Time Micro Secs
qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs = {}

-- Size: Source Time Micro Secs
qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.size = 2

-- Display: Source Time Micro Secs
qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.display = function(value)
  return "Source Time Micro Secs: "..value
end

-- Dissect: Source Time Micro Secs
qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.source_time_micro_secs, range, value, display)

  return offset + length, value
end

-- Start Date Halting
qse_qsecash_marketdata_xdp_v2_6.start_date_halting = {}

-- Size: Start Date Halting
qse_qsecash_marketdata_xdp_v2_6.start_date_halting.size = 8

-- Display: Start Date Halting
qse_qsecash_marketdata_xdp_v2_6.start_date_halting.display = function(value)
  if #value < 8 then
    return "Start Date Halting: "..value
  end

  return "Start Date Halting: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Start Date Halting
qse_qsecash_marketdata_xdp_v2_6.start_date_halting.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.start_date_halting.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = qse_qsecash_marketdata_xdp_v2_6.start_date_halting.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.start_date_halting, range, value, display)

  return offset + length, value
end

-- Start Time Halting
qse_qsecash_marketdata_xdp_v2_6.start_time_halting = {}

-- Size: Start Time Halting
qse_qsecash_marketdata_xdp_v2_6.start_time_halting.size = 6

-- Display: Start Time Halting
qse_qsecash_marketdata_xdp_v2_6.start_time_halting.display = function(value)
  if #value < 6 then
    return "Start Time Halting: "..value
  end

  return "Start Time Halting: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Start Time Halting
qse_qsecash_marketdata_xdp_v2_6.start_time_halting.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.start_time_halting.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.start_time_halting.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.start_time_halting, range, value, display)

  return offset + length, value
end

-- Stock Exchange Code
qse_qsecash_marketdata_xdp_v2_6.stock_exchange_code = {}

-- Size: Stock Exchange Code
qse_qsecash_marketdata_xdp_v2_6.stock_exchange_code.size = 2

-- Display: Stock Exchange Code
qse_qsecash_marketdata_xdp_v2_6.stock_exchange_code.display = function(value)
  return "Stock Exchange Code: "..value
end

-- Dissect: Stock Exchange Code
qse_qsecash_marketdata_xdp_v2_6.stock_exchange_code.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.stock_exchange_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.stock_exchange_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.stock_exchange_code, range, value, display)

  return offset + length, value
end

-- Strike Currency
qse_qsecash_marketdata_xdp_v2_6.strike_currency = {}

-- Size: Strike Currency
qse_qsecash_marketdata_xdp_v2_6.strike_currency.size = 3

-- Display: Strike Currency
qse_qsecash_marketdata_xdp_v2_6.strike_currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Strike Currency: No Value"
  end

  return "Strike Currency: "..value
end

-- Dissect: Strike Currency
qse_qsecash_marketdata_xdp_v2_6.strike_currency.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.strike_currency.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.strike_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.strike_currency, range, value, display)

  return offset + length, value
end

-- Strike Currency Indicator
qse_qsecash_marketdata_xdp_v2_6.strike_currency_indicator = {}

-- Size: Strike Currency Indicator
qse_qsecash_marketdata_xdp_v2_6.strike_currency_indicator.size = 1

-- Display: Strike Currency Indicator
qse_qsecash_marketdata_xdp_v2_6.strike_currency_indicator.display = function(value)
  return "Strike Currency Indicator: "..value
end

-- Dissect: Strike Currency Indicator
qse_qsecash_marketdata_xdp_v2_6.strike_currency_indicator.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.strike_currency_indicator.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.strike_currency_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.strike_currency_indicator, range, value, display)

  return offset + length, value
end

-- Strike Price
qse_qsecash_marketdata_xdp_v2_6.strike_price = {}

-- Size: Strike Price
qse_qsecash_marketdata_xdp_v2_6.strike_price.size = 4

-- Display: Strike Price
qse_qsecash_marketdata_xdp_v2_6.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
qse_qsecash_marketdata_xdp_v2_6.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.strike_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Strike Scale Code
qse_qsecash_marketdata_xdp_v2_6.strike_scale_code = {}

-- Size: Strike Scale Code
qse_qsecash_marketdata_xdp_v2_6.strike_scale_code.size = 1

-- Display: Strike Scale Code
qse_qsecash_marketdata_xdp_v2_6.strike_scale_code.display = function(value)
  return "Strike Scale Code: "..value
end

-- Dissect: Strike Scale Code
qse_qsecash_marketdata_xdp_v2_6.strike_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.strike_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.strike_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.strike_scale_code, range, value, display)

  return offset + length, value
end

-- Symbol Index
qse_qsecash_marketdata_xdp_v2_6.symbol_index = {}

-- Size: Symbol Index
qse_qsecash_marketdata_xdp_v2_6.symbol_index.size = 4

-- Display: Symbol Index
qse_qsecash_marketdata_xdp_v2_6.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
qse_qsecash_marketdata_xdp_v2_6.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.symbol_index.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- System Id
qse_qsecash_marketdata_xdp_v2_6.system_id = {}

-- Size: System Id
qse_qsecash_marketdata_xdp_v2_6.system_id.size = 4

-- Display: System Id
qse_qsecash_marketdata_xdp_v2_6.system_id.display = function(value)
  return "System Id: "..value
end

-- Dissect: System Id
qse_qsecash_marketdata_xdp_v2_6.system_id.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.system_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.system_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.system_id, range, value, display)

  return offset + length, value
end

-- Tax Code
qse_qsecash_marketdata_xdp_v2_6.tax_code = {}

-- Size: Tax Code
qse_qsecash_marketdata_xdp_v2_6.tax_code.size = 1

-- Display: Tax Code
qse_qsecash_marketdata_xdp_v2_6.tax_code.display = function(value)
  if value == 0 then
    return "Tax Code: Not Eligible To Pea (0)"
  end
  if value == 3 then
    return "Tax Code: Eligible To Pea (3)"
  end
  if value == 9 then
    return "Tax Code: Not Provided (9)"
  end

  return "Tax Code: Unknown("..value..")"
end

-- Dissect: Tax Code
qse_qsecash_marketdata_xdp_v2_6.tax_code.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.tax_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.tax_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.tax_code, range, value, display)

  return offset + length, value
end

-- Text
qse_qsecash_marketdata_xdp_v2_6.text = {}

-- Size: Text
qse_qsecash_marketdata_xdp_v2_6.text.size = 854

-- Display: Text
qse_qsecash_marketdata_xdp_v2_6.text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text: No Value"
  end

  return "Text: "..value
end

-- Dissect: Text
qse_qsecash_marketdata_xdp_v2_6.text.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.text.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.text, range, value, display)

  return offset + length, value
end

-- Tick Direction
qse_qsecash_marketdata_xdp_v2_6.tick_direction = {}

-- Size: Tick Direction
qse_qsecash_marketdata_xdp_v2_6.tick_direction.size = 1

-- Display: Tick Direction
qse_qsecash_marketdata_xdp_v2_6.tick_direction.display = function(value)
  if value == "+" then
    return "Tick Direction: Positive (+)"
  end
  if value == "-" then
    return "Tick Direction: Negative (-)"
  end
  if value == "0" then
    return "Tick Direction: No Variation Or Data Field Not Significant (0)"
  end

  return "Tick Direction: Unknown("..value..")"
end

-- Dissect: Tick Direction
qse_qsecash_marketdata_xdp_v2_6.tick_direction.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.tick_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.tick_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.tick_direction, range, value, display)

  return offset + length, value
end

-- Time Closing 1
qse_qsecash_marketdata_xdp_v2_6.time_closing_1 = {}

-- Size: Time Closing 1
qse_qsecash_marketdata_xdp_v2_6.time_closing_1.size = 6

-- Display: Time Closing 1
qse_qsecash_marketdata_xdp_v2_6.time_closing_1.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Time Closing 1: No Value"
  end

  return "Time Closing 1: "..value
end

-- Dissect: Time Closing 1
qse_qsecash_marketdata_xdp_v2_6.time_closing_1.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.time_closing_1.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.time_closing_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.time_closing_1, range, value, display)

  return offset + length, value
end

-- Time Closing 2
qse_qsecash_marketdata_xdp_v2_6.time_closing_2 = {}

-- Size: Time Closing 2
qse_qsecash_marketdata_xdp_v2_6.time_closing_2.size = 6

-- Display: Time Closing 2
qse_qsecash_marketdata_xdp_v2_6.time_closing_2.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Time Closing 2: No Value"
  end

  return "Time Closing 2: "..value
end

-- Dissect: Time Closing 2
qse_qsecash_marketdata_xdp_v2_6.time_closing_2.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.time_closing_2.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.time_closing_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.time_closing_2, range, value, display)

  return offset + length, value
end

-- Time Closing 3
qse_qsecash_marketdata_xdp_v2_6.time_closing_3 = {}

-- Size: Time Closing 3
qse_qsecash_marketdata_xdp_v2_6.time_closing_3.size = 6

-- Display: Time Closing 3
qse_qsecash_marketdata_xdp_v2_6.time_closing_3.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Time Closing 3: No Value"
  end

  return "Time Closing 3: "..value
end

-- Dissect: Time Closing 3
qse_qsecash_marketdata_xdp_v2_6.time_closing_3.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.time_closing_3.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.time_closing_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.time_closing_3, range, value, display)

  return offset + length, value
end

-- Time Lag Euronext Utc
qse_qsecash_marketdata_xdp_v2_6.time_lag_euronext_utc = {}

-- Size: Time Lag Euronext Utc
qse_qsecash_marketdata_xdp_v2_6.time_lag_euronext_utc.size = 5

-- Display: Time Lag Euronext Utc
qse_qsecash_marketdata_xdp_v2_6.time_lag_euronext_utc.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Time Lag Euronext Utc: No Value"
  end

  return "Time Lag Euronext Utc: "..value
end

-- Dissect: Time Lag Euronext Utc
qse_qsecash_marketdata_xdp_v2_6.time_lag_euronext_utc.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.time_lag_euronext_utc.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.time_lag_euronext_utc.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.time_lag_euronext_utc, range, value, display)

  return offset + length, value
end

-- Time Lag Mi Fid Reg Utc
qse_qsecash_marketdata_xdp_v2_6.time_lag_mi_fid_reg_utc = {}

-- Size: Time Lag Mi Fid Reg Utc
qse_qsecash_marketdata_xdp_v2_6.time_lag_mi_fid_reg_utc.size = 5

-- Display: Time Lag Mi Fid Reg Utc
qse_qsecash_marketdata_xdp_v2_6.time_lag_mi_fid_reg_utc.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Time Lag Mi Fid Reg Utc: No Value"
  end

  return "Time Lag Mi Fid Reg Utc: "..value
end

-- Dissect: Time Lag Mi Fid Reg Utc
qse_qsecash_marketdata_xdp_v2_6.time_lag_mi_fid_reg_utc.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.time_lag_mi_fid_reg_utc.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.time_lag_mi_fid_reg_utc.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.time_lag_mi_fid_reg_utc, range, value, display)

  return offset + length, value
end

-- Time Opening 1
qse_qsecash_marketdata_xdp_v2_6.time_opening_1 = {}

-- Size: Time Opening 1
qse_qsecash_marketdata_xdp_v2_6.time_opening_1.size = 6

-- Display: Time Opening 1
qse_qsecash_marketdata_xdp_v2_6.time_opening_1.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Time Opening 1: No Value"
  end

  return "Time Opening 1: "..value
end

-- Dissect: Time Opening 1
qse_qsecash_marketdata_xdp_v2_6.time_opening_1.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.time_opening_1.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.time_opening_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.time_opening_1, range, value, display)

  return offset + length, value
end

-- Time Opening 2
qse_qsecash_marketdata_xdp_v2_6.time_opening_2 = {}

-- Size: Time Opening 2
qse_qsecash_marketdata_xdp_v2_6.time_opening_2.size = 6

-- Display: Time Opening 2
qse_qsecash_marketdata_xdp_v2_6.time_opening_2.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Time Opening 2: No Value"
  end

  return "Time Opening 2: "..value
end

-- Dissect: Time Opening 2
qse_qsecash_marketdata_xdp_v2_6.time_opening_2.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.time_opening_2.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.time_opening_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.time_opening_2, range, value, display)

  return offset + length, value
end

-- Time Opening 3
qse_qsecash_marketdata_xdp_v2_6.time_opening_3 = {}

-- Size: Time Opening 3
qse_qsecash_marketdata_xdp_v2_6.time_opening_3.size = 6

-- Display: Time Opening 3
qse_qsecash_marketdata_xdp_v2_6.time_opening_3.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Time Opening 3: No Value"
  end

  return "Time Opening 3: "..value
end

-- Dissect: Time Opening 3
qse_qsecash_marketdata_xdp_v2_6.time_opening_3.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.time_opening_3.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.time_opening_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.time_opening_3, range, value, display)

  return offset + length, value
end

-- Time Pre Opening 1
qse_qsecash_marketdata_xdp_v2_6.time_pre_opening_1 = {}

-- Size: Time Pre Opening 1
qse_qsecash_marketdata_xdp_v2_6.time_pre_opening_1.size = 6

-- Display: Time Pre Opening 1
qse_qsecash_marketdata_xdp_v2_6.time_pre_opening_1.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Time Pre Opening 1: No Value"
  end

  return "Time Pre Opening 1: "..value
end

-- Dissect: Time Pre Opening 1
qse_qsecash_marketdata_xdp_v2_6.time_pre_opening_1.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.time_pre_opening_1.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.time_pre_opening_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.time_pre_opening_1, range, value, display)

  return offset + length, value
end

-- Time Pre Opening 2
qse_qsecash_marketdata_xdp_v2_6.time_pre_opening_2 = {}

-- Size: Time Pre Opening 2
qse_qsecash_marketdata_xdp_v2_6.time_pre_opening_2.size = 6

-- Display: Time Pre Opening 2
qse_qsecash_marketdata_xdp_v2_6.time_pre_opening_2.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Time Pre Opening 2: No Value"
  end

  return "Time Pre Opening 2: "..value
end

-- Dissect: Time Pre Opening 2
qse_qsecash_marketdata_xdp_v2_6.time_pre_opening_2.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.time_pre_opening_2.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.time_pre_opening_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.time_pre_opening_2, range, value, display)

  return offset + length, value
end

-- Time Pre Opening 3
qse_qsecash_marketdata_xdp_v2_6.time_pre_opening_3 = {}

-- Size: Time Pre Opening 3
qse_qsecash_marketdata_xdp_v2_6.time_pre_opening_3.size = 6

-- Display: Time Pre Opening 3
qse_qsecash_marketdata_xdp_v2_6.time_pre_opening_3.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Time Pre Opening 3: No Value"
  end

  return "Time Pre Opening 3: "..value
end

-- Dissect: Time Pre Opening 3
qse_qsecash_marketdata_xdp_v2_6.time_pre_opening_3.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.time_pre_opening_3.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.time_pre_opening_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.time_pre_opening_3, range, value, display)

  return offset + length, value
end

-- Title
qse_qsecash_marketdata_xdp_v2_6.title = {}

-- Size: Title
qse_qsecash_marketdata_xdp_v2_6.title.size = 80

-- Display: Title
qse_qsecash_marketdata_xdp_v2_6.title.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Title: No Value"
  end

  return "Title: "..value
end

-- Dissect: Title
qse_qsecash_marketdata_xdp_v2_6.title.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.title.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.title.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.title, range, value, display)

  return offset + length, value
end

-- Trad Cond 2
qse_qsecash_marketdata_xdp_v2_6.trad_cond_2 = {}

-- Size: Trad Cond 2
qse_qsecash_marketdata_xdp_v2_6.trad_cond_2.size = 1

-- Display: Trad Cond 2
qse_qsecash_marketdata_xdp_v2_6.trad_cond_2.display = function(value)
  if value == "0" then
    return "Trad Cond 2: Not Last Of A Series Of Trades At The Same Price (0)"
  end
  if value == "1" then
    return "Trad Cond 2: Last Of A Series Of Trade At The Same Price (1)"
  end

  return "Trad Cond 2: Unknown("..value..")"
end

-- Dissect: Trad Cond 2
qse_qsecash_marketdata_xdp_v2_6.trad_cond_2.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.trad_cond_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.trad_cond_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.trad_cond_2, range, value, display)

  return offset + length, value
end

-- Trad Cond 3
qse_qsecash_marketdata_xdp_v2_6.trad_cond_3 = {}

-- Size: Trad Cond 3
qse_qsecash_marketdata_xdp_v2_6.trad_cond_3.size = 1

-- Display: Trad Cond 3
qse_qsecash_marketdata_xdp_v2_6.trad_cond_3.display = function(value)
  if value == "0" then
    return "Trad Cond 3: Trade Does Not Stem From A Cross Order (0)"
  end
  if value == "1" then
    return "Trad Cond 3: Trade Stems From A Cross Order (1)"
  end
  if value == "4" then
    return "Trad Cond 3: Valuation Trade (4)"
  end

  return "Trad Cond 3: Unknown("..value..")"
end

-- Dissect: Trad Cond 3
qse_qsecash_marketdata_xdp_v2_6.trad_cond_3.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.trad_cond_3.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.trad_cond_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.trad_cond_3, range, value, display)

  return offset + length, value
end

-- Trade Id Number
qse_qsecash_marketdata_xdp_v2_6.trade_id_number = {}

-- Size: Trade Id Number
qse_qsecash_marketdata_xdp_v2_6.trade_id_number.size = 4

-- Display: Trade Id Number
qse_qsecash_marketdata_xdp_v2_6.trade_id_number.display = function(value)
  return "Trade Id Number: "..value
end

-- Dissect: Trade Id Number
qse_qsecash_marketdata_xdp_v2_6.trade_id_number.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.trade_id_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.trade_id_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.trade_id_number, range, value, display)

  return offset + length, value
end

-- Trade Origin
qse_qsecash_marketdata_xdp_v2_6.trade_origin = {}

-- Size: Trade Origin
qse_qsecash_marketdata_xdp_v2_6.trade_origin.size = 1

-- Display: Trade Origin
qse_qsecash_marketdata_xdp_v2_6.trade_origin.display = function(value)
  if value == "B" then
    return "Trade Origin: Orders From The Book (B)"
  end
  if value == "O" then
    return "Trade Origin: Block Trade (O)"
  end

  return "Trade Origin: Unknown("..value..")"
end

-- Dissect: Trade Origin
qse_qsecash_marketdata_xdp_v2_6.trade_origin.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.trade_origin.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.trade_origin.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.trade_origin, range, value, display)

  return offset + length, value
end

-- Trading Code
qse_qsecash_marketdata_xdp_v2_6.trading_code = {}

-- Size: Trading Code
qse_qsecash_marketdata_xdp_v2_6.trading_code.size = 12

-- Display: Trading Code
qse_qsecash_marketdata_xdp_v2_6.trading_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trading Code: No Value"
  end

  return "Trading Code: "..value
end

-- Dissect: Trading Code
qse_qsecash_marketdata_xdp_v2_6.trading_code.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.trading_code.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.trading_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.trading_code, range, value, display)

  return offset + length, value
end

-- Trading Currency
qse_qsecash_marketdata_xdp_v2_6.trading_currency = {}

-- Size: Trading Currency
qse_qsecash_marketdata_xdp_v2_6.trading_currency.size = 3

-- Display: Trading Currency
qse_qsecash_marketdata_xdp_v2_6.trading_currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trading Currency: No Value"
  end

  return "Trading Currency: "..value
end

-- Dissect: Trading Currency
qse_qsecash_marketdata_xdp_v2_6.trading_currency.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.trading_currency.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.trading_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.trading_currency, range, value, display)

  return offset + length, value
end

-- Trading Currency Indicator
qse_qsecash_marketdata_xdp_v2_6.trading_currency_indicator = {}

-- Size: Trading Currency Indicator
qse_qsecash_marketdata_xdp_v2_6.trading_currency_indicator.size = 1

-- Display: Trading Currency Indicator
qse_qsecash_marketdata_xdp_v2_6.trading_currency_indicator.display = function(value)
  return "Trading Currency Indicator: "..value
end

-- Dissect: Trading Currency Indicator
qse_qsecash_marketdata_xdp_v2_6.trading_currency_indicator.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.trading_currency_indicator.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.trading_currency_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.trading_currency_indicator, range, value, display)

  return offset + length, value
end

-- Trading Engine Id
qse_qsecash_marketdata_xdp_v2_6.trading_engine_id = {}

-- Size: Trading Engine Id
qse_qsecash_marketdata_xdp_v2_6.trading_engine_id.size = 2

-- Display: Trading Engine Id
qse_qsecash_marketdata_xdp_v2_6.trading_engine_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trading Engine Id: No Value"
  end

  return "Trading Engine Id: "..value
end

-- Dissect: Trading Engine Id
qse_qsecash_marketdata_xdp_v2_6.trading_engine_id.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.trading_engine_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.trading_engine_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.trading_engine_id, range, value, display)

  return offset + length, value
end

-- Type Of Ask Price
qse_qsecash_marketdata_xdp_v2_6.type_of_ask_price = {}

-- Size: Type Of Ask Price
qse_qsecash_marketdata_xdp_v2_6.type_of_ask_price.size = 1

-- Display: Type Of Ask Price
qse_qsecash_marketdata_xdp_v2_6.type_of_ask_price.display = function(value)
  if value == 0 then
    return "Type Of Ask Price: Limit Order (0)"
  end
  if value == 1 then
    return "Type Of Ask Price: Market Order (1)"
  end
  if value == 2 then
    return "Type Of Ask Price: At Opening Order Nsc Only (2)"
  end

  return "Type Of Ask Price: Unknown("..value..")"
end

-- Dissect: Type Of Ask Price
qse_qsecash_marketdata_xdp_v2_6.type_of_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.type_of_ask_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.type_of_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.type_of_ask_price, range, value, display)

  return offset + length, value
end

-- Type Of Bid Price
qse_qsecash_marketdata_xdp_v2_6.type_of_bid_price = {}

-- Size: Type Of Bid Price
qse_qsecash_marketdata_xdp_v2_6.type_of_bid_price.size = 1

-- Display: Type Of Bid Price
qse_qsecash_marketdata_xdp_v2_6.type_of_bid_price.display = function(value)
  if value == 0 then
    return "Type Of Bid Price: Limit Order (0)"
  end
  if value == 1 then
    return "Type Of Bid Price: Market Order (1)"
  end
  if value == 2 then
    return "Type Of Bid Price: At Opening Order Nsc Only (2)"
  end

  return "Type Of Bid Price: Unknown("..value..")"
end

-- Dissect: Type Of Bid Price
qse_qsecash_marketdata_xdp_v2_6.type_of_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.type_of_bid_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.type_of_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.type_of_bid_price, range, value, display)

  return offset + length, value
end

-- Type Of Corporate Event
qse_qsecash_marketdata_xdp_v2_6.type_of_corporate_event = {}

-- Size: Type Of Corporate Event
qse_qsecash_marketdata_xdp_v2_6.type_of_corporate_event.size = 2

-- Display: Type Of Corporate Event
qse_qsecash_marketdata_xdp_v2_6.type_of_corporate_event.display = function(value)
  if value == "00" then
    return "Type Of Corporate Event: No Specific Event (00)"
  end
  if value == "01" then
    return "Type Of Corporate Event: Dividend Payment In Cash Or In Stocks (01)"
  end
  if value == "02" then
    return "Type Of Corporate Event: Interest Payment Bonds For Which The Price Is Not Expressed In (02)"
  end
  if value == "04" then
    return "Type Of Corporate Event: Split (04)"
  end
  if value == "05" then
    return "Type Of Corporate Event: Bonus Ie Attribution (05)"
  end
  if value == "06" then
    return "Type Of Corporate Event: Subscription (06)"
  end
  if value == "07" then
    return "Type Of Corporate Event: Share Allocation (07)"
  end
  if value == "08" then
    return "Type Of Corporate Event: Share Swap (08)"
  end
  if value == "09" then
    return "Type Of Corporate Event: Reverse Split (09)"
  end
  if value == "10" then
    return "Type Of Corporate Event: Merger (10)"
  end
  if value == "11" then
    return "Type Of Corporate Event: Final Bond Redemption (11)"
  end
  if value == "12" then
    return "Type Of Corporate Event: Capital Amortization (12)"
  end
  if value == "13" then
    return "Type Of Corporate Event: Draw Announcement Belgian Bonds Only (13)"
  end
  if value == "14" then
    return "Type Of Corporate Event: Block Trade Of Controlling Interest (14)"
  end
  if value == "15" then
    return "Type Of Corporate Event: Optional Corporate Eventsdividend Option (15)"
  end
  if value == "16" then
    return "Type Of Corporate Event: Complex Corporate Event (16)"
  end
  if value == "17" then
    return "Type Of Corporate Event: Purge Of The Order Book Purge Is Initiated Manually In The (17)"
  end

  return "Type Of Corporate Event: Unknown("..value..")"
end

-- Dissect: Type Of Corporate Event
qse_qsecash_marketdata_xdp_v2_6.type_of_corporate_event.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.type_of_corporate_event.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.type_of_corporate_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.type_of_corporate_event, range, value, display)

  return offset + length, value
end

-- Type Of Derivatives
qse_qsecash_marketdata_xdp_v2_6.type_of_derivatives = {}

-- Size: Type Of Derivatives
qse_qsecash_marketdata_xdp_v2_6.type_of_derivatives.size = 1

-- Display: Type Of Derivatives
qse_qsecash_marketdata_xdp_v2_6.type_of_derivatives.display = function(value)
  if value == "1" then
    return "Type Of Derivatives: Inav Indicative Net Asset Value For Etf Exchange Traded (1)"
  end
  if value == "4" then
    return "Type Of Derivatives: Supports Short Terms Options (4)"
  end
  if value == "6" then
    return "Type Of Derivatives: Supports Long Term Options (6)"
  end
  if value == "9" then
    return "Type Of Derivatives: No (9)"
  end

  return "Type Of Derivatives: Unknown("..value..")"
end

-- Dissect: Type Of Derivatives
qse_qsecash_marketdata_xdp_v2_6.type_of_derivatives.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.type_of_derivatives.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.type_of_derivatives.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.type_of_derivatives, range, value, display)

  return offset + length, value
end

-- Type Of Instrument
qse_qsecash_marketdata_xdp_v2_6.type_of_instrument = {}

-- Size: Type Of Instrument
qse_qsecash_marketdata_xdp_v2_6.type_of_instrument.size = 2

-- Display: Type Of Instrument
qse_qsecash_marketdata_xdp_v2_6.type_of_instrument.display = function(value)
  return "Type Of Instrument: "..value
end

-- Dissect: Type Of Instrument
qse_qsecash_marketdata_xdp_v2_6.type_of_instrument.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.type_of_instrument.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.type_of_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.type_of_instrument, range, value, display)

  return offset + length, value
end

-- Type Of Last Price
qse_qsecash_marketdata_xdp_v2_6.type_of_last_price = {}

-- Size: Type Of Last Price
qse_qsecash_marketdata_xdp_v2_6.type_of_last_price.size = 2

-- Display: Type Of Last Price
qse_qsecash_marketdata_xdp_v2_6.type_of_last_price.display = function(value)
  if value == 4 then
    return "Type Of Last Price: 1st traded price (4)"
  end
  if value == 7 then
    return "Type Of Last Price: N Traded Price Resume After Reservation (7)"
  end

  return "Type Of Last Price: Unknown("..value..")"
end

-- Dissect: Type Of Last Price
qse_qsecash_marketdata_xdp_v2_6.type_of_last_price.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.type_of_last_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.type_of_last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.type_of_last_price, range, value, display)

  return offset + length, value
end

-- Type Of Level
qse_qsecash_marketdata_xdp_v2_6.type_of_level = {}

-- Size: Type Of Level
qse_qsecash_marketdata_xdp_v2_6.type_of_level.size = 1

-- Display: Type Of Level
qse_qsecash_marketdata_xdp_v2_6.type_of_level.display = function(value)
  return "Type Of Level: "..value
end

-- Dissect: Type Of Level
qse_qsecash_marketdata_xdp_v2_6.type_of_level.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.type_of_level.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.type_of_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.type_of_level, range, value, display)

  return offset + length, value
end

-- Type Of Market Admission
qse_qsecash_marketdata_xdp_v2_6.type_of_market_admission = {}

-- Size: Type Of Market Admission
qse_qsecash_marketdata_xdp_v2_6.type_of_market_admission.size = 1

-- Display: Type Of Market Admission
qse_qsecash_marketdata_xdp_v2_6.type_of_market_admission.display = function(value)
  return "Type Of Market Admission: "..value
end

-- Dissect: Type Of Market Admission
qse_qsecash_marketdata_xdp_v2_6.type_of_market_admission.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.type_of_market_admission.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.type_of_market_admission.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.type_of_market_admission, range, value, display)

  return offset + length, value
end

-- Type Of Message
qse_qsecash_marketdata_xdp_v2_6.type_of_message = {}

-- Size: Type Of Message
qse_qsecash_marketdata_xdp_v2_6.type_of_message.size = 1

-- Display: Type Of Message
qse_qsecash_marketdata_xdp_v2_6.type_of_message.display = function(value)
  if value == "B" then
    return "Type Of Message: Market Information Contents (B)"
  end
  if value == "T" then
    return "Type Of Message: Technical Information (T)"
  end
  if value == "R" then
    return "Type Of Message: Market And Technical Information (R)"
  end

  return "Type Of Message: Unknown("..value..")"
end

-- Dissect: Type Of Message
qse_qsecash_marketdata_xdp_v2_6.type_of_message.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.type_of_message.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = qse_qsecash_marketdata_xdp_v2_6.type_of_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.type_of_message, range, value, display)

  return offset + length, value
end

-- Type Of Price
qse_qsecash_marketdata_xdp_v2_6.type_of_price = {}

-- Size: Type Of Price
qse_qsecash_marketdata_xdp_v2_6.type_of_price.size = 2

-- Display: Type Of Price
qse_qsecash_marketdata_xdp_v2_6.type_of_price.display = function(value)
  if value == 0 then
    return "Type Of Price: Trade Cancellation (0)"
  end
  if value == 2 then
    return "Type Of Price: Ask Price (2)"
  end
  if value == 3 then
    return "Type Of Price: Bid Price (3)"
  end
  if value == 4 then
    return "Type Of Price: First Traded Price One Quotation Only (4)"
  end
  if value == 5 then
    return "Type Of Price: Market Imbalance Ask Price (5)"
  end
  if value == 6 then
    return "Type Of Price: Market Imbalance Bid Price (6)"
  end
  if value == 30 then
    return "Type Of Price: Change Of First Price (30)"
  end
  if value == 31 then
    return "Type Of Price: New High Price (31)"
  end
  if value == 32 then
    return "Type Of Price: New Low Price (32)"
  end
  if value == 33 then
    return "Type Of Price: New Last Price (33)"
  end
  if value == 34 then
    return "Type Of Price: New Previous Days Closing Price (34)"
  end
  if value == 41 then
    return "Type Of Price: Warrant Opening Indicative Value (41)"
  end
  if value == 42 then
    return "Type Of Price: Warrant Closing Indicative Value (42)"
  end
  if value == 51 then
    return "Type Of Price: Indicative Price (51)"
  end

  return "Type Of Price: Unknown("..value..")"
end

-- Dissect: Type Of Price
qse_qsecash_marketdata_xdp_v2_6.type_of_price.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.type_of_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.type_of_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.type_of_price, range, value, display)

  return offset + length, value
end

-- Type Of Unit Exp
qse_qsecash_marketdata_xdp_v2_6.type_of_unit_exp = {}

-- Size: Type Of Unit Exp
qse_qsecash_marketdata_xdp_v2_6.type_of_unit_exp.size = 1

-- Display: Type Of Unit Exp
qse_qsecash_marketdata_xdp_v2_6.type_of_unit_exp.display = function(value)
  if value == 1 then
    return "Type Of Unit Exp: In Units (1)"
  end
  if value == 2 then
    return "Type Of Unit Exp: As A Of Nominal (2)"
  end
  if value == 3 then
    return "Type Of Unit Exp: As A Of Nominal Including Accrued Interest (3)"
  end
  if value == 8 then
    return "Type Of Unit Exp: In Kilograms (8)"
  end
  if value == 9 then
    return "Type Of Unit Exp: In Ounces (9)"
  end

  return "Type Of Unit Exp: Unknown("..value..")"
end

-- Dissect: Type Of Unit Exp
qse_qsecash_marketdata_xdp_v2_6.type_of_unit_exp.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.type_of_unit_exp.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.type_of_unit_exp.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.type_of_unit_exp, range, value, display)

  return offset + length, value
end

-- Underlying Repo Isin Code
qse_qsecash_marketdata_xdp_v2_6.underlying_repo_isin_code = {}

-- Size: Underlying Repo Isin Code
qse_qsecash_marketdata_xdp_v2_6.underlying_repo_isin_code.size = 12

-- Display: Underlying Repo Isin Code
qse_qsecash_marketdata_xdp_v2_6.underlying_repo_isin_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Repo Isin Code: No Value"
  end

  return "Underlying Repo Isin Code: "..value
end

-- Dissect: Underlying Repo Isin Code
qse_qsecash_marketdata_xdp_v2_6.underlying_repo_isin_code.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.underlying_repo_isin_code.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.underlying_repo_isin_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.underlying_repo_isin_code, range, value, display)

  return offset + length, value
end

-- Underlying Wisin Code
qse_qsecash_marketdata_xdp_v2_6.underlying_wisin_code = {}

-- Size: Underlying Wisin Code
qse_qsecash_marketdata_xdp_v2_6.underlying_wisin_code.size = 12

-- Display: Underlying Wisin Code
qse_qsecash_marketdata_xdp_v2_6.underlying_wisin_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Wisin Code: No Value"
  end

  return "Underlying Wisin Code: "..value
end

-- Dissect: Underlying Wisin Code
qse_qsecash_marketdata_xdp_v2_6.underlying_wisin_code.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.underlying_wisin_code.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.underlying_wisin_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.underlying_wisin_code, range, value, display)

  return offset + length, value
end

-- Us Indicators
qse_qsecash_marketdata_xdp_v2_6.us_indicators = {}

-- Size: Us Indicators
qse_qsecash_marketdata_xdp_v2_6.us_indicators.size = 7

-- Display: Us Indicators
qse_qsecash_marketdata_xdp_v2_6.us_indicators.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Us Indicators: No Value"
  end

  return "Us Indicators: "..value
end

-- Dissect: Us Indicators
qse_qsecash_marketdata_xdp_v2_6.us_indicators.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.us_indicators.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = qse_qsecash_marketdata_xdp_v2_6.us_indicators.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.us_indicators, range, value, display)

  return offset + length, value
end

-- Variation
qse_qsecash_marketdata_xdp_v2_6.variation = {}

-- Size: Variation
qse_qsecash_marketdata_xdp_v2_6.variation.size = 4

-- Display: Variation
qse_qsecash_marketdata_xdp_v2_6.variation.display = function(value)
  return "Variation: "..value
end

-- Dissect: Variation
qse_qsecash_marketdata_xdp_v2_6.variation.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.variation.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.variation.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.variation, range, value, display)

  return offset + length, value
end

-- Variation From Previous Days Price
qse_qsecash_marketdata_xdp_v2_6.variation_from_previous_days_price = {}

-- Size: Variation From Previous Days Price
qse_qsecash_marketdata_xdp_v2_6.variation_from_previous_days_price.size = 4

-- Display: Variation From Previous Days Price
qse_qsecash_marketdata_xdp_v2_6.variation_from_previous_days_price.display = function(value)
  return "Variation From Previous Days Price: "..value
end

-- Dissect: Variation From Previous Days Price
qse_qsecash_marketdata_xdp_v2_6.variation_from_previous_days_price.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.variation_from_previous_days_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = qse_qsecash_marketdata_xdp_v2_6.variation_from_previous_days_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.variation_from_previous_days_price, range, value, display)

  return offset + length, value
end

-- Variation Last Price
qse_qsecash_marketdata_xdp_v2_6.variation_last_price = {}

-- Size: Variation Last Price
qse_qsecash_marketdata_xdp_v2_6.variation_last_price.size = 4

-- Display: Variation Last Price
qse_qsecash_marketdata_xdp_v2_6.variation_last_price.display = function(value)
  return "Variation Last Price: "..value
end

-- Dissect: Variation Last Price
qse_qsecash_marketdata_xdp_v2_6.variation_last_price.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.variation_last_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.variation_last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.variation_last_price, range, value, display)

  return offset + length, value
end

-- Variation Scale Code
qse_qsecash_marketdata_xdp_v2_6.variation_scale_code = {}

-- Size: Variation Scale Code
qse_qsecash_marketdata_xdp_v2_6.variation_scale_code.size = 1

-- Display: Variation Scale Code
qse_qsecash_marketdata_xdp_v2_6.variation_scale_code.display = function(value)
  return "Variation Scale Code: "..value
end

-- Dissect: Variation Scale Code
qse_qsecash_marketdata_xdp_v2_6.variation_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.variation_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.variation_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.variation_scale_code, range, value, display)

  return offset + length, value
end

-- Volume
qse_qsecash_marketdata_xdp_v2_6.volume = {}

-- Size: Volume
qse_qsecash_marketdata_xdp_v2_6.volume.size = 4

-- Display: Volume
qse_qsecash_marketdata_xdp_v2_6.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
qse_qsecash_marketdata_xdp_v2_6.volume.dissect = function(buffer, offset, packet, parent)
  local length = qse_qsecash_marketdata_xdp_v2_6.volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = qse_qsecash_marketdata_xdp_v2_6.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.volume, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Qse QseCash MarketData Xdp 2.6
-----------------------------------------------------------------------

-- End Refresh Message
qse_qsecash_marketdata_xdp_v2_6.end_refresh_message = {}

-- Size: End Refresh Message
qse_qsecash_marketdata_xdp_v2_6.end_refresh_message.size =
  qse_qsecash_marketdata_xdp_v2_6.last_seq_num.size

-- Display: End Refresh Message
qse_qsecash_marketdata_xdp_v2_6.end_refresh_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Refresh Message
qse_qsecash_marketdata_xdp_v2_6.end_refresh_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Seq Num: Binary Int.
  index, last_seq_num = qse_qsecash_marketdata_xdp_v2_6.last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Refresh Message
qse_qsecash_marketdata_xdp_v2_6.end_refresh_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.end_refresh_message, buffer(offset, 0))
    local index = qse_qsecash_marketdata_xdp_v2_6.end_refresh_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = qse_qsecash_marketdata_xdp_v2_6.end_refresh_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return qse_qsecash_marketdata_xdp_v2_6.end_refresh_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Refresh Message
qse_qsecash_marketdata_xdp_v2_6.start_refresh_message = {}

-- Size: Start Refresh Message
qse_qsecash_marketdata_xdp_v2_6.start_refresh_message.size =
  qse_qsecash_marketdata_xdp_v2_6.last_seq_num.size

-- Display: Start Refresh Message
qse_qsecash_marketdata_xdp_v2_6.start_refresh_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Refresh Message
qse_qsecash_marketdata_xdp_v2_6.start_refresh_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Seq Num: Binary Int.
  index, last_seq_num = qse_qsecash_marketdata_xdp_v2_6.last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Refresh Message
qse_qsecash_marketdata_xdp_v2_6.start_refresh_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.start_refresh_message, buffer(offset, 0))
    local index = qse_qsecash_marketdata_xdp_v2_6.start_refresh_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = qse_qsecash_marketdata_xdp_v2_6.start_refresh_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return qse_qsecash_marketdata_xdp_v2_6.start_refresh_message.fields(buffer, offset, packet, parent)
  end
end

-- Index Composition Message
qse_qsecash_marketdata_xdp_v2_6.index_composition_message = {}

-- Size: Index Composition Message
qse_qsecash_marketdata_xdp_v2_6.index_composition_message.size =
  qse_qsecash_marketdata_xdp_v2_6.symbol_index.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time.size + 
  qse_qsecash_marketdata_xdp_v2_6.instrument_weight.size + 
  qse_qsecash_marketdata_xdp_v2_6.instrument_factor.size + 
  qse_qsecash_marketdata_xdp_v2_6.previous_close.size + 
  qse_qsecash_marketdata_xdp_v2_6.system_id.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.size + 
  qse_qsecash_marketdata_xdp_v2_6.number_of_conponents.size + 
  qse_qsecash_marketdata_xdp_v2_6.instrument_id_of_component.size + 
  qse_qsecash_marketdata_xdp_v2_6.mnemo.size + 
  qse_qsecash_marketdata_xdp_v2_6.index_frequency.size + 
  qse_qsecash_marketdata_xdp_v2_6.price_scale_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.level_scale_code.size

-- Display: Index Composition Message
qse_qsecash_marketdata_xdp_v2_6.index_composition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Composition Message
qse_qsecash_marketdata_xdp_v2_6.index_composition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = qse_qsecash_marketdata_xdp_v2_6.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = qse_qsecash_marketdata_xdp_v2_6.source_time.dissect(buffer, index, packet, parent)

  -- Instrument Weight: Binary Int.
  index, instrument_weight = qse_qsecash_marketdata_xdp_v2_6.instrument_weight.dissect(buffer, index, packet, parent)

  -- Instrument Factor: Binary Int.
  index, instrument_factor = qse_qsecash_marketdata_xdp_v2_6.instrument_factor.dissect(buffer, index, packet, parent)

  -- Previous Close: Binary Int.
  index, previous_close = qse_qsecash_marketdata_xdp_v2_6.previous_close.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = qse_qsecash_marketdata_xdp_v2_6.system_id.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Number Of Conponents: Binary Int.
  index, number_of_conponents = qse_qsecash_marketdata_xdp_v2_6.number_of_conponents.dissect(buffer, index, packet, parent)

  -- Instrument Id Of Component: ASCII Str.
  index, instrument_id_of_component = qse_qsecash_marketdata_xdp_v2_6.instrument_id_of_component.dissect(buffer, index, packet, parent)

  -- Mnemo: ASCII Str.
  index, mnemo = qse_qsecash_marketdata_xdp_v2_6.mnemo.dissect(buffer, index, packet, parent)

  -- Index Frequency: ASCII Ch.
  index, index_frequency = qse_qsecash_marketdata_xdp_v2_6.index_frequency.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary Int.
  index, price_scale_code = qse_qsecash_marketdata_xdp_v2_6.price_scale_code.dissect(buffer, index, packet, parent)

  -- Level Scale Code: Binary Int.
  index, level_scale_code = qse_qsecash_marketdata_xdp_v2_6.level_scale_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Composition Message
qse_qsecash_marketdata_xdp_v2_6.index_composition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.index_composition_message, buffer(offset, 0))
    local index = qse_qsecash_marketdata_xdp_v2_6.index_composition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = qse_qsecash_marketdata_xdp_v2_6.index_composition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return qse_qsecash_marketdata_xdp_v2_6.index_composition_message.fields(buffer, offset, packet, parent)
  end
end

-- Index Summary Message
qse_qsecash_marketdata_xdp_v2_6.index_summary_message = {}

-- Size: Index Summary Message
qse_qsecash_marketdata_xdp_v2_6.index_summary_message.size =
  qse_qsecash_marketdata_xdp_v2_6.symbol_index.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time.size + 
  qse_qsecash_marketdata_xdp_v2_6.preliminary_opening_level.size + 
  qse_qsecash_marketdata_xdp_v2_6.preliminary_opening_time.size + 
  qse_qsecash_marketdata_xdp_v2_6.first_level.size + 
  qse_qsecash_marketdata_xdp_v2_6.first_time.size + 
  qse_qsecash_marketdata_xdp_v2_6.opening_reference_level.size + 
  qse_qsecash_marketdata_xdp_v2_6.opening_reference_time.size + 
  qse_qsecash_marketdata_xdp_v2_6.closing_reference_level.size + 
  qse_qsecash_marketdata_xdp_v2_6.closing_reference_time.size + 
  qse_qsecash_marketdata_xdp_v2_6.percent_variation_prev_clos.size + 
  qse_qsecash_marketdata_xdp_v2_6.high_level.size + 
  qse_qsecash_marketdata_xdp_v2_6.high_time.size + 
  qse_qsecash_marketdata_xdp_v2_6.low_level.size + 
  qse_qsecash_marketdata_xdp_v2_6.low_time.size + 
  qse_qsecash_marketdata_xdp_v2_6.clearing_level.size + 
  qse_qsecash_marketdata_xdp_v2_6.clearing_time.size + 
  qse_qsecash_marketdata_xdp_v2_6.liquidation_level.size + 
  qse_qsecash_marketdata_xdp_v2_6.liquidation_time.size + 
  qse_qsecash_marketdata_xdp_v2_6.system_id.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.size + 
  qse_qsecash_marketdata_xdp_v2_6.type_of_level.size + 
  qse_qsecash_marketdata_xdp_v2_6.level_scale_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.variation_scale_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_3.size

-- Display: Index Summary Message
qse_qsecash_marketdata_xdp_v2_6.index_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Summary Message
qse_qsecash_marketdata_xdp_v2_6.index_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = qse_qsecash_marketdata_xdp_v2_6.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = qse_qsecash_marketdata_xdp_v2_6.source_time.dissect(buffer, index, packet, parent)

  -- Preliminary Opening Level: Binary Int.
  index, preliminary_opening_level = qse_qsecash_marketdata_xdp_v2_6.preliminary_opening_level.dissect(buffer, index, packet, parent)

  -- Preliminary Opening Time: Binary Int.
  index, preliminary_opening_time = qse_qsecash_marketdata_xdp_v2_6.preliminary_opening_time.dissect(buffer, index, packet, parent)

  -- First Level: Binary Int.
  index, first_level = qse_qsecash_marketdata_xdp_v2_6.first_level.dissect(buffer, index, packet, parent)

  -- First Time: Binary Int.
  index, first_time = qse_qsecash_marketdata_xdp_v2_6.first_time.dissect(buffer, index, packet, parent)

  -- Opening Reference Level: Binary Int.
  index, opening_reference_level = qse_qsecash_marketdata_xdp_v2_6.opening_reference_level.dissect(buffer, index, packet, parent)

  -- Opening Reference Time: Binary Int.
  index, opening_reference_time = qse_qsecash_marketdata_xdp_v2_6.opening_reference_time.dissect(buffer, index, packet, parent)

  -- Closing Reference Level: Binary Int.
  index, closing_reference_level = qse_qsecash_marketdata_xdp_v2_6.closing_reference_level.dissect(buffer, index, packet, parent)

  -- Closing Reference Time: Binary Int.
  index, closing_reference_time = qse_qsecash_marketdata_xdp_v2_6.closing_reference_time.dissect(buffer, index, packet, parent)

  -- Percent Variation Prev Clos: Binary Int.
  index, percent_variation_prev_clos = qse_qsecash_marketdata_xdp_v2_6.percent_variation_prev_clos.dissect(buffer, index, packet, parent)

  -- High Level: Binary Int.
  index, high_level = qse_qsecash_marketdata_xdp_v2_6.high_level.dissect(buffer, index, packet, parent)

  -- High Time: Binary Int.
  index, high_time = qse_qsecash_marketdata_xdp_v2_6.high_time.dissect(buffer, index, packet, parent)

  -- Low Level: Binary Int.
  index, low_level = qse_qsecash_marketdata_xdp_v2_6.low_level.dissect(buffer, index, packet, parent)

  -- Low Time: Binary Int.
  index, low_time = qse_qsecash_marketdata_xdp_v2_6.low_time.dissect(buffer, index, packet, parent)

  -- Clearing Level: Binary Int.
  index, clearing_level = qse_qsecash_marketdata_xdp_v2_6.clearing_level.dissect(buffer, index, packet, parent)

  -- Clearing Time: Binary Int.
  index, clearing_time = qse_qsecash_marketdata_xdp_v2_6.clearing_time.dissect(buffer, index, packet, parent)

  -- Liquidation Level: Binary Int.
  index, liquidation_level = qse_qsecash_marketdata_xdp_v2_6.liquidation_level.dissect(buffer, index, packet, parent)

  -- Liquidation Time: Binary Int.
  index, liquidation_time = qse_qsecash_marketdata_xdp_v2_6.liquidation_time.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = qse_qsecash_marketdata_xdp_v2_6.system_id.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Type Of Level: ASCII Ch.
  index, type_of_level = qse_qsecash_marketdata_xdp_v2_6.type_of_level.dissect(buffer, index, packet, parent)

  -- Level Scale Code: Binary Int.
  index, level_scale_code = qse_qsecash_marketdata_xdp_v2_6.level_scale_code.dissect(buffer, index, packet, parent)

  -- Variation Scale Code: Binary Int.
  index, variation_scale_code = qse_qsecash_marketdata_xdp_v2_6.variation_scale_code.dissect(buffer, index, packet, parent)

  -- Filler Ascii Str 3: ASCII Str.
  index, filler_ascii_str_3 = qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Summary Message
qse_qsecash_marketdata_xdp_v2_6.index_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.index_summary_message, buffer(offset, 0))
    local index = qse_qsecash_marketdata_xdp_v2_6.index_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = qse_qsecash_marketdata_xdp_v2_6.index_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return qse_qsecash_marketdata_xdp_v2_6.index_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Real Time Index Message
qse_qsecash_marketdata_xdp_v2_6.real_time_index_message = {}

-- Size: Real Time Index Message
qse_qsecash_marketdata_xdp_v2_6.real_time_index_message.size =
  qse_qsecash_marketdata_xdp_v2_6.symbol_index.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time.size + 
  qse_qsecash_marketdata_xdp_v2_6.index_level.size + 
  qse_qsecash_marketdata_xdp_v2_6.forerunner_level.size + 
  qse_qsecash_marketdata_xdp_v2_6.session_high.size + 
  qse_qsecash_marketdata_xdp_v2_6.session_low.size + 
  qse_qsecash_marketdata_xdp_v2_6.percentage_of_capitalization.size + 
  qse_qsecash_marketdata_xdp_v2_6.variation_from_previous_days_price.size + 
  qse_qsecash_marketdata_xdp_v2_6.system_id.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.size + 
  qse_qsecash_marketdata_xdp_v2_6.num_of_securities_quoted.size + 
  qse_qsecash_marketdata_xdp_v2_6.index_level_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.type_of_level.size + 
  qse_qsecash_marketdata_xdp_v2_6.level_scale_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.percentage_scale_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.variation_scale_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.rebroadcast_indicator.size + 
  qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_2.size

-- Display: Real Time Index Message
qse_qsecash_marketdata_xdp_v2_6.real_time_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Real Time Index Message
qse_qsecash_marketdata_xdp_v2_6.real_time_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = qse_qsecash_marketdata_xdp_v2_6.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = qse_qsecash_marketdata_xdp_v2_6.source_time.dissect(buffer, index, packet, parent)

  -- Index Level: Binary Int.
  index, index_level = qse_qsecash_marketdata_xdp_v2_6.index_level.dissect(buffer, index, packet, parent)

  -- Forerunner Level: Binary Int.
  index, forerunner_level = qse_qsecash_marketdata_xdp_v2_6.forerunner_level.dissect(buffer, index, packet, parent)

  -- Session High: Binary Int.
  index, session_high = qse_qsecash_marketdata_xdp_v2_6.session_high.dissect(buffer, index, packet, parent)

  -- Session Low: Binary Int.
  index, session_low = qse_qsecash_marketdata_xdp_v2_6.session_low.dissect(buffer, index, packet, parent)

  -- Percentage Of Capitalization: Binary Int.
  index, percentage_of_capitalization = qse_qsecash_marketdata_xdp_v2_6.percentage_of_capitalization.dissect(buffer, index, packet, parent)

  -- Variation From Previous Days Price: Binary Int. (signed)
  index, variation_from_previous_days_price = qse_qsecash_marketdata_xdp_v2_6.variation_from_previous_days_price.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = qse_qsecash_marketdata_xdp_v2_6.system_id.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Num Of Securities Quoted: Binary Int.
  index, num_of_securities_quoted = qse_qsecash_marketdata_xdp_v2_6.num_of_securities_quoted.dissect(buffer, index, packet, parent)

  -- Index Level Code: ASCII Ch.
  index, index_level_code = qse_qsecash_marketdata_xdp_v2_6.index_level_code.dissect(buffer, index, packet, parent)

  -- Type Of Level: ASCII Ch.
  index, type_of_level = qse_qsecash_marketdata_xdp_v2_6.type_of_level.dissect(buffer, index, packet, parent)

  -- Level Scale Code: Binary Int.
  index, level_scale_code = qse_qsecash_marketdata_xdp_v2_6.level_scale_code.dissect(buffer, index, packet, parent)

  -- Percentage Scale Code: Binary Int.
  index, percentage_scale_code = qse_qsecash_marketdata_xdp_v2_6.percentage_scale_code.dissect(buffer, index, packet, parent)

  -- Variation Scale Code: Binary Int.
  index, variation_scale_code = qse_qsecash_marketdata_xdp_v2_6.variation_scale_code.dissect(buffer, index, packet, parent)

  -- Rebroadcast Indicator: ASCII Str.
  index, rebroadcast_indicator = qse_qsecash_marketdata_xdp_v2_6.rebroadcast_indicator.dissect(buffer, index, packet, parent)

  -- Filler Ascii Str 2: ASCII Str.
  index, filler_ascii_str_2 = qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Real Time Index Message
qse_qsecash_marketdata_xdp_v2_6.real_time_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.real_time_index_message, buffer(offset, 0))
    local index = qse_qsecash_marketdata_xdp_v2_6.real_time_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = qse_qsecash_marketdata_xdp_v2_6.real_time_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return qse_qsecash_marketdata_xdp_v2_6.real_time_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Orderbook Retransmission Delimiter Message
qse_qsecash_marketdata_xdp_v2_6.orderbook_retransmission_delimiter_message = {}

-- Size: Orderbook Retransmission Delimiter Message
qse_qsecash_marketdata_xdp_v2_6.orderbook_retransmission_delimiter_message.size =
  qse_qsecash_marketdata_xdp_v2_6.source_time.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_seq_num.size + 
  qse_qsecash_marketdata_xdp_v2_6.trading_engine_id.size + 
  qse_qsecash_marketdata_xdp_v2_6.instance_id.size + 
  qse_qsecash_marketdata_xdp_v2_6.retransmission_indicator.size

-- Display: Orderbook Retransmission Delimiter Message
qse_qsecash_marketdata_xdp_v2_6.orderbook_retransmission_delimiter_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orderbook Retransmission Delimiter Message
qse_qsecash_marketdata_xdp_v2_6.orderbook_retransmission_delimiter_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary Int.
  index, source_time = qse_qsecash_marketdata_xdp_v2_6.source_time.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = qse_qsecash_marketdata_xdp_v2_6.source_seq_num.dissect(buffer, index, packet, parent)

  -- Trading Engine Id: ASCII Str.
  index, trading_engine_id = qse_qsecash_marketdata_xdp_v2_6.trading_engine_id.dissect(buffer, index, packet, parent)

  -- Instance Id: Binary Int.
  index, instance_id = qse_qsecash_marketdata_xdp_v2_6.instance_id.dissect(buffer, index, packet, parent)

  -- Retransmission Indicator: ASCII Ch.
  index, retransmission_indicator = qse_qsecash_marketdata_xdp_v2_6.retransmission_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Orderbook Retransmission Delimiter Message
qse_qsecash_marketdata_xdp_v2_6.orderbook_retransmission_delimiter_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.orderbook_retransmission_delimiter_message, buffer(offset, 0))
    local index = qse_qsecash_marketdata_xdp_v2_6.orderbook_retransmission_delimiter_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = qse_qsecash_marketdata_xdp_v2_6.orderbook_retransmission_delimiter_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return qse_qsecash_marketdata_xdp_v2_6.orderbook_retransmission_delimiter_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Update Market Sheet Message
qse_qsecash_marketdata_xdp_v2_6.order_update_market_sheet_message = {}

-- Size: Order Update Market Sheet Message
qse_qsecash_marketdata_xdp_v2_6.order_update_market_sheet_message.size =
  qse_qsecash_marketdata_xdp_v2_6.symbol_index.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_seq_num.size + 
  qse_qsecash_marketdata_xdp_v2_6.price.size + 
  qse_qsecash_marketdata_xdp_v2_6.aggregated_volume.size + 
  qse_qsecash_marketdata_xdp_v2_6.volume.size + 
  qse_qsecash_marketdata_xdp_v2_6.link_id.size + 
  qse_qsecash_marketdata_xdp_v2_6.order_id.size + 
  qse_qsecash_marketdata_xdp_v2_6.system_id.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.size + 
  qse_qsecash_marketdata_xdp_v2_6.number_orders.size + 
  qse_qsecash_marketdata_xdp_v2_6.side.size + 
  qse_qsecash_marketdata_xdp_v2_6.order_type.size + 
  qse_qsecash_marketdata_xdp_v2_6.action_type.size + 
  qse_qsecash_marketdata_xdp_v2_6.price_scale_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.order_date.size + 
  qse_qsecash_marketdata_xdp_v2_6.order_priority_date.size + 
  qse_qsecash_marketdata_xdp_v2_6.order_priority_time.size + 
  qse_qsecash_marketdata_xdp_v2_6.order_priority_micro_secs.size + 
  qse_qsecash_marketdata_xdp_v2_6.order_origin.size + 
  qse_qsecash_marketdata_xdp_v2_6.filler_binary_int_1.size

-- Display: Order Update Market Sheet Message
qse_qsecash_marketdata_xdp_v2_6.order_update_market_sheet_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Update Market Sheet Message
qse_qsecash_marketdata_xdp_v2_6.order_update_market_sheet_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = qse_qsecash_marketdata_xdp_v2_6.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = qse_qsecash_marketdata_xdp_v2_6.source_time.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = qse_qsecash_marketdata_xdp_v2_6.source_seq_num.dissect(buffer, index, packet, parent)

  -- Price: Binary Int.
  index, price = qse_qsecash_marketdata_xdp_v2_6.price.dissect(buffer, index, packet, parent)

  -- Aggregated Volume: Binary Int.
  index, aggregated_volume = qse_qsecash_marketdata_xdp_v2_6.aggregated_volume.dissect(buffer, index, packet, parent)

  -- Volume: Binary Int.
  index, volume = qse_qsecash_marketdata_xdp_v2_6.volume.dissect(buffer, index, packet, parent)

  -- Link Id: Binary Int.
  index, link_id = qse_qsecash_marketdata_xdp_v2_6.link_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary Int.
  index, order_id = qse_qsecash_marketdata_xdp_v2_6.order_id.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = qse_qsecash_marketdata_xdp_v2_6.system_id.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Number Orders: Binary Int.
  index, number_orders = qse_qsecash_marketdata_xdp_v2_6.number_orders.dissect(buffer, index, packet, parent)

  -- Side: ASCII Ch.
  index, side = qse_qsecash_marketdata_xdp_v2_6.side.dissect(buffer, index, packet, parent)

  -- Order Type: ASCII Ch.
  index, order_type = qse_qsecash_marketdata_xdp_v2_6.order_type.dissect(buffer, index, packet, parent)

  -- Action Type: ASCII Ch.
  index, action_type = qse_qsecash_marketdata_xdp_v2_6.action_type.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary Int.
  index, price_scale_code = qse_qsecash_marketdata_xdp_v2_6.price_scale_code.dissect(buffer, index, packet, parent)

  -- Order Date: Binary Int.
  index, order_date = qse_qsecash_marketdata_xdp_v2_6.order_date.dissect(buffer, index, packet, parent)

  -- Order Priority Date: Binary Int.
  index, order_priority_date = qse_qsecash_marketdata_xdp_v2_6.order_priority_date.dissect(buffer, index, packet, parent)

  -- Order Priority Time: Binary Int.
  index, order_priority_time = qse_qsecash_marketdata_xdp_v2_6.order_priority_time.dissect(buffer, index, packet, parent)

  -- Order Priority Micro Secs: Binary Int.
  index, order_priority_micro_secs = qse_qsecash_marketdata_xdp_v2_6.order_priority_micro_secs.dissect(buffer, index, packet, parent)

  -- Order Origin: ASCII Ch.
  index, order_origin = qse_qsecash_marketdata_xdp_v2_6.order_origin.dissect(buffer, index, packet, parent)

  -- Filler Binary Int 1: Binary Int.
  index, filler_binary_int_1 = qse_qsecash_marketdata_xdp_v2_6.filler_binary_int_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Update Market Sheet Message
qse_qsecash_marketdata_xdp_v2_6.order_update_market_sheet_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.order_update_market_sheet_message, buffer(offset, 0))
    local index = qse_qsecash_marketdata_xdp_v2_6.order_update_market_sheet_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = qse_qsecash_marketdata_xdp_v2_6.order_update_market_sheet_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return qse_qsecash_marketdata_xdp_v2_6.order_update_market_sheet_message.fields(buffer, offset, packet, parent)
  end
end

-- Quotes Message
qse_qsecash_marketdata_xdp_v2_6.quotes_message = {}

-- Size: Quotes Message
qse_qsecash_marketdata_xdp_v2_6.quotes_message.size =
  qse_qsecash_marketdata_xdp_v2_6.symbol_index.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_seq_num.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time.size + 
  qse_qsecash_marketdata_xdp_v2_6.quote_link_id.size + 
  qse_qsecash_marketdata_xdp_v2_6.ask_price.size + 
  qse_qsecash_marketdata_xdp_v2_6.ask_size.size + 
  qse_qsecash_marketdata_xdp_v2_6.bid_price.size + 
  qse_qsecash_marketdata_xdp_v2_6.bid_size.size + 
  qse_qsecash_marketdata_xdp_v2_6.system_id.size + 
  qse_qsecash_marketdata_xdp_v2_6.number_ask_orders.size + 
  qse_qsecash_marketdata_xdp_v2_6.number_bid_orders.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.size + 
  qse_qsecash_marketdata_xdp_v2_6.type_of_ask_price.size + 
  qse_qsecash_marketdata_xdp_v2_6.type_of_bid_price.size + 
  qse_qsecash_marketdata_xdp_v2_6.quote_condition.size + 
  qse_qsecash_marketdata_xdp_v2_6.quote_number.size + 
  qse_qsecash_marketdata_xdp_v2_6.price_scale_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_1.size

-- Display: Quotes Message
qse_qsecash_marketdata_xdp_v2_6.quotes_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quotes Message
qse_qsecash_marketdata_xdp_v2_6.quotes_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = qse_qsecash_marketdata_xdp_v2_6.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = qse_qsecash_marketdata_xdp_v2_6.source_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = qse_qsecash_marketdata_xdp_v2_6.source_time.dissect(buffer, index, packet, parent)

  -- Quote Link Id: Binary Int.
  index, quote_link_id = qse_qsecash_marketdata_xdp_v2_6.quote_link_id.dissect(buffer, index, packet, parent)

  -- Ask Price: Binary Int.
  index, ask_price = qse_qsecash_marketdata_xdp_v2_6.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Size: Binary Int.
  index, ask_size = qse_qsecash_marketdata_xdp_v2_6.ask_size.dissect(buffer, index, packet, parent)

  -- Bid Price: Binary Int.
  index, bid_price = qse_qsecash_marketdata_xdp_v2_6.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: Binary Int.
  index, bid_size = qse_qsecash_marketdata_xdp_v2_6.bid_size.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = qse_qsecash_marketdata_xdp_v2_6.system_id.dissect(buffer, index, packet, parent)

  -- Number Ask Orders: Binary Int.
  index, number_ask_orders = qse_qsecash_marketdata_xdp_v2_6.number_ask_orders.dissect(buffer, index, packet, parent)

  -- Number Bid Orders: Binary Int.
  index, number_bid_orders = qse_qsecash_marketdata_xdp_v2_6.number_bid_orders.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Type Of Ask Price: Binary Int.
  index, type_of_ask_price = qse_qsecash_marketdata_xdp_v2_6.type_of_ask_price.dissect(buffer, index, packet, parent)

  -- Type Of Bid Price: Binary Int.
  index, type_of_bid_price = qse_qsecash_marketdata_xdp_v2_6.type_of_bid_price.dissect(buffer, index, packet, parent)

  -- Quote Condition: ASCII Ch.
  index, quote_condition = qse_qsecash_marketdata_xdp_v2_6.quote_condition.dissect(buffer, index, packet, parent)

  -- Quote Number: Binary Int.
  index, quote_number = qse_qsecash_marketdata_xdp_v2_6.quote_number.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary Int.
  index, price_scale_code = qse_qsecash_marketdata_xdp_v2_6.price_scale_code.dissect(buffer, index, packet, parent)

  -- Filler Ascii Str 1: ASCII Str.
  index, filler_ascii_str_1 = qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quotes Message
qse_qsecash_marketdata_xdp_v2_6.quotes_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.quotes_message, buffer(offset, 0))
    local index = qse_qsecash_marketdata_xdp_v2_6.quotes_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = qse_qsecash_marketdata_xdp_v2_6.quotes_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return qse_qsecash_marketdata_xdp_v2_6.quotes_message.fields(buffer, offset, packet, parent)
  end
end

-- Vwap Closing Price Message
qse_qsecash_marketdata_xdp_v2_6.vwap_closing_price_message = {}

-- Size: Vwap Closing Price Message
qse_qsecash_marketdata_xdp_v2_6.vwap_closing_price_message.size =
  qse_qsecash_marketdata_xdp_v2_6.symbol_index.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_seq_num.size + 
  qse_qsecash_marketdata_xdp_v2_6.sending_indicator.size + 
  qse_qsecash_marketdata_xdp_v2_6.closing_price_rule.size + 
  qse_qsecash_marketdata_xdp_v2_6.closing_price.size + 
  qse_qsecash_marketdata_xdp_v2_6.adjusted_closing_price.size + 
  qse_qsecash_marketdata_xdp_v2_6.nb_trades.size + 
  qse_qsecash_marketdata_xdp_v2_6.qty_shares.size + 
  qse_qsecash_marketdata_xdp_v2_6.amount_traded.size + 
  qse_qsecash_marketdata_xdp_v2_6.system_id.size + 
  qse_qsecash_marketdata_xdp_v2_6.price_scale_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_3.size

-- Display: Vwap Closing Price Message
qse_qsecash_marketdata_xdp_v2_6.vwap_closing_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Vwap Closing Price Message
qse_qsecash_marketdata_xdp_v2_6.vwap_closing_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = qse_qsecash_marketdata_xdp_v2_6.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = qse_qsecash_marketdata_xdp_v2_6.source_time.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = qse_qsecash_marketdata_xdp_v2_6.source_seq_num.dissect(buffer, index, packet, parent)

  -- Sending Indicator: Binary Int.
  index, sending_indicator = qse_qsecash_marketdata_xdp_v2_6.sending_indicator.dissect(buffer, index, packet, parent)

  -- Closing Price Rule: Binary Int.
  index, closing_price_rule = qse_qsecash_marketdata_xdp_v2_6.closing_price_rule.dissect(buffer, index, packet, parent)

  -- Closing Price: Binary Int.
  index, closing_price = qse_qsecash_marketdata_xdp_v2_6.closing_price.dissect(buffer, index, packet, parent)

  -- Adjusted Closing Price: Binary Int.
  index, adjusted_closing_price = qse_qsecash_marketdata_xdp_v2_6.adjusted_closing_price.dissect(buffer, index, packet, parent)

  -- Nb Trades: Binary Int.
  index, nb_trades = qse_qsecash_marketdata_xdp_v2_6.nb_trades.dissect(buffer, index, packet, parent)

  -- Qty Shares: Binary Int.
  index, qty_shares = qse_qsecash_marketdata_xdp_v2_6.qty_shares.dissect(buffer, index, packet, parent)

  -- Amount Traded: Binary Int.
  index, amount_traded = qse_qsecash_marketdata_xdp_v2_6.amount_traded.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = qse_qsecash_marketdata_xdp_v2_6.system_id.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary Int.
  index, price_scale_code = qse_qsecash_marketdata_xdp_v2_6.price_scale_code.dissect(buffer, index, packet, parent)

  -- Filler Ascii Str 3: ASCII Str.
  index, filler_ascii_str_3 = qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Vwap Closing Price Message
qse_qsecash_marketdata_xdp_v2_6.vwap_closing_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.vwap_closing_price_message, buffer(offset, 0))
    local index = qse_qsecash_marketdata_xdp_v2_6.vwap_closing_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = qse_qsecash_marketdata_xdp_v2_6.vwap_closing_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return qse_qsecash_marketdata_xdp_v2_6.vwap_closing_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Summary Message
qse_qsecash_marketdata_xdp_v2_6.auction_summary_message = {}

-- Size: Auction Summary Message
qse_qsecash_marketdata_xdp_v2_6.auction_summary_message.size =
  qse_qsecash_marketdata_xdp_v2_6.symbol_index.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_seq_num.size + 
  qse_qsecash_marketdata_xdp_v2_6.first_price.size + 
  qse_qsecash_marketdata_xdp_v2_6.last_price.size + 
  qse_qsecash_marketdata_xdp_v2_6.highest_price.size + 
  qse_qsecash_marketdata_xdp_v2_6.lowest_price.size + 
  qse_qsecash_marketdata_xdp_v2_6.cumulative_quantity.size + 
  qse_qsecash_marketdata_xdp_v2_6.variation.size + 
  qse_qsecash_marketdata_xdp_v2_6.system_id.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.size + 
  qse_qsecash_marketdata_xdp_v2_6.type_of_last_price.size + 
  qse_qsecash_marketdata_xdp_v2_6.tick_direction.size + 
  qse_qsecash_marketdata_xdp_v2_6.instrument_valuation_price.size + 
  qse_qsecash_marketdata_xdp_v2_6.price_scale_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.variation_scale_code.size

-- Display: Auction Summary Message
qse_qsecash_marketdata_xdp_v2_6.auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
qse_qsecash_marketdata_xdp_v2_6.auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = qse_qsecash_marketdata_xdp_v2_6.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = qse_qsecash_marketdata_xdp_v2_6.source_time.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = qse_qsecash_marketdata_xdp_v2_6.source_seq_num.dissect(buffer, index, packet, parent)

  -- First Price: Binary Int.
  index, first_price = qse_qsecash_marketdata_xdp_v2_6.first_price.dissect(buffer, index, packet, parent)

  -- Last Price: Binary Int.
  index, last_price = qse_qsecash_marketdata_xdp_v2_6.last_price.dissect(buffer, index, packet, parent)

  -- Highest Price: Binary Int.
  index, highest_price = qse_qsecash_marketdata_xdp_v2_6.highest_price.dissect(buffer, index, packet, parent)

  -- Lowest Price: Binary Int.
  index, lowest_price = qse_qsecash_marketdata_xdp_v2_6.lowest_price.dissect(buffer, index, packet, parent)

  -- Cumulative Quantity: Binary Int.
  index, cumulative_quantity = qse_qsecash_marketdata_xdp_v2_6.cumulative_quantity.dissect(buffer, index, packet, parent)

  -- Variation: Binary Int.
  index, variation = qse_qsecash_marketdata_xdp_v2_6.variation.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = qse_qsecash_marketdata_xdp_v2_6.system_id.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Type Of Last Price: Binary Int.
  index, type_of_last_price = qse_qsecash_marketdata_xdp_v2_6.type_of_last_price.dissect(buffer, index, packet, parent)

  -- Tick Direction: ASCII Ch.
  index, tick_direction = qse_qsecash_marketdata_xdp_v2_6.tick_direction.dissect(buffer, index, packet, parent)

  -- Instrument Valuation Price: ASCII Ch.
  index, instrument_valuation_price = qse_qsecash_marketdata_xdp_v2_6.instrument_valuation_price.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary Int.
  index, price_scale_code = qse_qsecash_marketdata_xdp_v2_6.price_scale_code.dissect(buffer, index, packet, parent)

  -- Variation Scale Code: Binary Int.
  index, variation_scale_code = qse_qsecash_marketdata_xdp_v2_6.variation_scale_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
qse_qsecash_marketdata_xdp_v2_6.auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.auction_summary_message, buffer(offset, 0))
    local index = qse_qsecash_marketdata_xdp_v2_6.auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = qse_qsecash_marketdata_xdp_v2_6.auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return qse_qsecash_marketdata_xdp_v2_6.auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Update Message
qse_qsecash_marketdata_xdp_v2_6.price_update_message = {}

-- Size: Price Update Message
qse_qsecash_marketdata_xdp_v2_6.price_update_message.size =
  qse_qsecash_marketdata_xdp_v2_6.symbol_index.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_seq_num.size + 
  qse_qsecash_marketdata_xdp_v2_6.price.size + 
  qse_qsecash_marketdata_xdp_v2_6.highest_price.size + 
  qse_qsecash_marketdata_xdp_v2_6.lowest_price.size + 
  qse_qsecash_marketdata_xdp_v2_6.variation_last_price.size + 
  qse_qsecash_marketdata_xdp_v2_6.system_id.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.size + 
  qse_qsecash_marketdata_xdp_v2_6.type_of_price.size + 
  qse_qsecash_marketdata_xdp_v2_6.filler_binary_int_2.size + 
  qse_qsecash_marketdata_xdp_v2_6.price_scale_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.variation_scale_code.size

-- Display: Price Update Message
qse_qsecash_marketdata_xdp_v2_6.price_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Update Message
qse_qsecash_marketdata_xdp_v2_6.price_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = qse_qsecash_marketdata_xdp_v2_6.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = qse_qsecash_marketdata_xdp_v2_6.source_time.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = qse_qsecash_marketdata_xdp_v2_6.source_seq_num.dissect(buffer, index, packet, parent)

  -- Price: Binary Int.
  index, price = qse_qsecash_marketdata_xdp_v2_6.price.dissect(buffer, index, packet, parent)

  -- Highest Price: Binary Int.
  index, highest_price = qse_qsecash_marketdata_xdp_v2_6.highest_price.dissect(buffer, index, packet, parent)

  -- Lowest Price: Binary Int.
  index, lowest_price = qse_qsecash_marketdata_xdp_v2_6.lowest_price.dissect(buffer, index, packet, parent)

  -- Variation Last Price: Binary Int.
  index, variation_last_price = qse_qsecash_marketdata_xdp_v2_6.variation_last_price.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = qse_qsecash_marketdata_xdp_v2_6.system_id.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Type Of Price: Binary Int.
  index, type_of_price = qse_qsecash_marketdata_xdp_v2_6.type_of_price.dissect(buffer, index, packet, parent)

  -- Filler Binary Int 2: Binary Int.
  index, filler_binary_int_2 = qse_qsecash_marketdata_xdp_v2_6.filler_binary_int_2.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary Int.
  index, price_scale_code = qse_qsecash_marketdata_xdp_v2_6.price_scale_code.dissect(buffer, index, packet, parent)

  -- Variation Scale Code: Binary Int.
  index, variation_scale_code = qse_qsecash_marketdata_xdp_v2_6.variation_scale_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Update Message
qse_qsecash_marketdata_xdp_v2_6.price_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.price_update_message, buffer(offset, 0))
    local index = qse_qsecash_marketdata_xdp_v2_6.price_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = qse_qsecash_marketdata_xdp_v2_6.price_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return qse_qsecash_marketdata_xdp_v2_6.price_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Full Information Message
qse_qsecash_marketdata_xdp_v2_6.trade_full_information_message = {}

-- Size: Trade Full Information Message
qse_qsecash_marketdata_xdp_v2_6.trade_full_information_message.size =
  qse_qsecash_marketdata_xdp_v2_6.symbol_index.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time.size + 
  qse_qsecash_marketdata_xdp_v2_6.trade_id_number.size + 
  qse_qsecash_marketdata_xdp_v2_6.quote_link_id.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_seq_num.size + 
  qse_qsecash_marketdata_xdp_v2_6.price.size + 
  qse_qsecash_marketdata_xdp_v2_6.volume.size + 
  qse_qsecash_marketdata_xdp_v2_6.cumulative_quantity.size + 
  qse_qsecash_marketdata_xdp_v2_6.highest_price.size + 
  qse_qsecash_marketdata_xdp_v2_6.lowest_price.size + 
  qse_qsecash_marketdata_xdp_v2_6.variation_last_price.size + 
  qse_qsecash_marketdata_xdp_v2_6.system_id.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.size + 
  qse_qsecash_marketdata_xdp_v2_6.filler_binary_int_2.size + 
  qse_qsecash_marketdata_xdp_v2_6.small_trade_indicator.size + 
  qse_qsecash_marketdata_xdp_v2_6.trad_cond_2.size + 
  qse_qsecash_marketdata_xdp_v2_6.trad_cond_3.size + 
  qse_qsecash_marketdata_xdp_v2_6.trade_origin.size + 
  qse_qsecash_marketdata_xdp_v2_6.tick_direction.size + 
  qse_qsecash_marketdata_xdp_v2_6.opening_trade_indicator.size + 
  qse_qsecash_marketdata_xdp_v2_6.variation_scale_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.price_scale_code.size

-- Display: Trade Full Information Message
qse_qsecash_marketdata_xdp_v2_6.trade_full_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Full Information Message
qse_qsecash_marketdata_xdp_v2_6.trade_full_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = qse_qsecash_marketdata_xdp_v2_6.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = qse_qsecash_marketdata_xdp_v2_6.source_time.dissect(buffer, index, packet, parent)

  -- Trade Id Number: Binary Int.
  index, trade_id_number = qse_qsecash_marketdata_xdp_v2_6.trade_id_number.dissect(buffer, index, packet, parent)

  -- Quote Link Id: Binary Int.
  index, quote_link_id = qse_qsecash_marketdata_xdp_v2_6.quote_link_id.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = qse_qsecash_marketdata_xdp_v2_6.source_seq_num.dissect(buffer, index, packet, parent)

  -- Price: Binary Int.
  index, price = qse_qsecash_marketdata_xdp_v2_6.price.dissect(buffer, index, packet, parent)

  -- Volume: Binary Int.
  index, volume = qse_qsecash_marketdata_xdp_v2_6.volume.dissect(buffer, index, packet, parent)

  -- Cumulative Quantity: Binary Int.
  index, cumulative_quantity = qse_qsecash_marketdata_xdp_v2_6.cumulative_quantity.dissect(buffer, index, packet, parent)

  -- Highest Price: Binary Int.
  index, highest_price = qse_qsecash_marketdata_xdp_v2_6.highest_price.dissect(buffer, index, packet, parent)

  -- Lowest Price: Binary Int.
  index, lowest_price = qse_qsecash_marketdata_xdp_v2_6.lowest_price.dissect(buffer, index, packet, parent)

  -- Variation Last Price: Binary Int.
  index, variation_last_price = qse_qsecash_marketdata_xdp_v2_6.variation_last_price.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = qse_qsecash_marketdata_xdp_v2_6.system_id.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Filler Binary Int 2: Binary Int.
  index, filler_binary_int_2 = qse_qsecash_marketdata_xdp_v2_6.filler_binary_int_2.dissect(buffer, index, packet, parent)

  -- Small Trade Indicator: ASCII Ch.
  index, small_trade_indicator = qse_qsecash_marketdata_xdp_v2_6.small_trade_indicator.dissect(buffer, index, packet, parent)

  -- Trad Cond 2: ASCII Ch.
  index, trad_cond_2 = qse_qsecash_marketdata_xdp_v2_6.trad_cond_2.dissect(buffer, index, packet, parent)

  -- Trad Cond 3: ASCII Ch.
  index, trad_cond_3 = qse_qsecash_marketdata_xdp_v2_6.trad_cond_3.dissect(buffer, index, packet, parent)

  -- Trade Origin: ASCII Ch.
  index, trade_origin = qse_qsecash_marketdata_xdp_v2_6.trade_origin.dissect(buffer, index, packet, parent)

  -- Tick Direction: ASCII Ch.
  index, tick_direction = qse_qsecash_marketdata_xdp_v2_6.tick_direction.dissect(buffer, index, packet, parent)

  -- Opening Trade Indicator: ASCII Ch.
  index, opening_trade_indicator = qse_qsecash_marketdata_xdp_v2_6.opening_trade_indicator.dissect(buffer, index, packet, parent)

  -- Variation Scale Code: Binary Int.
  index, variation_scale_code = qse_qsecash_marketdata_xdp_v2_6.variation_scale_code.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary Int.
  index, price_scale_code = qse_qsecash_marketdata_xdp_v2_6.price_scale_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Full Information Message
qse_qsecash_marketdata_xdp_v2_6.trade_full_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.trade_full_information_message, buffer(offset, 0))
    local index = qse_qsecash_marketdata_xdp_v2_6.trade_full_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = qse_qsecash_marketdata_xdp_v2_6.trade_full_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return qse_qsecash_marketdata_xdp_v2_6.trade_full_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancellation Message
qse_qsecash_marketdata_xdp_v2_6.trade_cancellation_message = {}

-- Size: Trade Cancellation Message
qse_qsecash_marketdata_xdp_v2_6.trade_cancellation_message.size =
  qse_qsecash_marketdata_xdp_v2_6.symbol_index.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_seq_num.size + 
  qse_qsecash_marketdata_xdp_v2_6.original_trade_id_number.size + 
  qse_qsecash_marketdata_xdp_v2_6.system_id.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.size + 
  qse_qsecash_marketdata_xdp_v2_6.filler_binary_int_2.size

-- Display: Trade Cancellation Message
qse_qsecash_marketdata_xdp_v2_6.trade_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancellation Message
qse_qsecash_marketdata_xdp_v2_6.trade_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = qse_qsecash_marketdata_xdp_v2_6.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = qse_qsecash_marketdata_xdp_v2_6.source_time.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = qse_qsecash_marketdata_xdp_v2_6.source_seq_num.dissect(buffer, index, packet, parent)

  -- Original Trade Id Number: Binary Int.
  index, original_trade_id_number = qse_qsecash_marketdata_xdp_v2_6.original_trade_id_number.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = qse_qsecash_marketdata_xdp_v2_6.system_id.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Filler Binary Int 2: Binary Int.
  index, filler_binary_int_2 = qse_qsecash_marketdata_xdp_v2_6.filler_binary_int_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancellation Message
qse_qsecash_marketdata_xdp_v2_6.trade_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.trade_cancellation_message, buffer(offset, 0))
    local index = qse_qsecash_marketdata_xdp_v2_6.trade_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = qse_qsecash_marketdata_xdp_v2_6.trade_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return qse_qsecash_marketdata_xdp_v2_6.trade_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Creation Message
qse_qsecash_marketdata_xdp_v2_6.trade_creation_message = {}

-- Size: Trade Creation Message
qse_qsecash_marketdata_xdp_v2_6.trade_creation_message.size =
  qse_qsecash_marketdata_xdp_v2_6.symbol_index.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time.size + 
  qse_qsecash_marketdata_xdp_v2_6.trade_id_number.size + 
  qse_qsecash_marketdata_xdp_v2_6.quote_link_id.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_seq_num.size + 
  qse_qsecash_marketdata_xdp_v2_6.price.size + 
  qse_qsecash_marketdata_xdp_v2_6.volume.size + 
  qse_qsecash_marketdata_xdp_v2_6.system_id.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.size + 
  qse_qsecash_marketdata_xdp_v2_6.small_trade_indicator.size + 
  qse_qsecash_marketdata_xdp_v2_6.trad_cond_2.size + 
  qse_qsecash_marketdata_xdp_v2_6.trad_cond_3.size + 
  qse_qsecash_marketdata_xdp_v2_6.trade_origin.size + 
  qse_qsecash_marketdata_xdp_v2_6.opening_trade_indicator.size + 
  qse_qsecash_marketdata_xdp_v2_6.price_scale_code.size

-- Display: Trade Creation Message
qse_qsecash_marketdata_xdp_v2_6.trade_creation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Creation Message
qse_qsecash_marketdata_xdp_v2_6.trade_creation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = qse_qsecash_marketdata_xdp_v2_6.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = qse_qsecash_marketdata_xdp_v2_6.source_time.dissect(buffer, index, packet, parent)

  -- Trade Id Number: Binary Int.
  index, trade_id_number = qse_qsecash_marketdata_xdp_v2_6.trade_id_number.dissect(buffer, index, packet, parent)

  -- Quote Link Id: Binary Int.
  index, quote_link_id = qse_qsecash_marketdata_xdp_v2_6.quote_link_id.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = qse_qsecash_marketdata_xdp_v2_6.source_seq_num.dissect(buffer, index, packet, parent)

  -- Price: Binary Int.
  index, price = qse_qsecash_marketdata_xdp_v2_6.price.dissect(buffer, index, packet, parent)

  -- Volume: Binary Int.
  index, volume = qse_qsecash_marketdata_xdp_v2_6.volume.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = qse_qsecash_marketdata_xdp_v2_6.system_id.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Small Trade Indicator: ASCII Ch.
  index, small_trade_indicator = qse_qsecash_marketdata_xdp_v2_6.small_trade_indicator.dissect(buffer, index, packet, parent)

  -- Trad Cond 2: ASCII Ch.
  index, trad_cond_2 = qse_qsecash_marketdata_xdp_v2_6.trad_cond_2.dissect(buffer, index, packet, parent)

  -- Trad Cond 3: ASCII Ch.
  index, trad_cond_3 = qse_qsecash_marketdata_xdp_v2_6.trad_cond_3.dissect(buffer, index, packet, parent)

  -- Trade Origin: ASCII Ch.
  index, trade_origin = qse_qsecash_marketdata_xdp_v2_6.trade_origin.dissect(buffer, index, packet, parent)

  -- Opening Trade Indicator: ASCII Ch.
  index, opening_trade_indicator = qse_qsecash_marketdata_xdp_v2_6.opening_trade_indicator.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary Int.
  index, price_scale_code = qse_qsecash_marketdata_xdp_v2_6.price_scale_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Creation Message
qse_qsecash_marketdata_xdp_v2_6.trade_creation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.trade_creation_message, buffer(offset, 0))
    local index = qse_qsecash_marketdata_xdp_v2_6.trade_creation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = qse_qsecash_marketdata_xdp_v2_6.trade_creation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return qse_qsecash_marketdata_xdp_v2_6.trade_creation_message.fields(buffer, offset, packet, parent)
  end
end

-- Referential Message
qse_qsecash_marketdata_xdp_v2_6.referential_message = {}

-- Size: Referential Message
qse_qsecash_marketdata_xdp_v2_6.referential_message.size =
  qse_qsecash_marketdata_xdp_v2_6.symbol_index.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_seq_num.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time.size + 
  qse_qsecash_marketdata_xdp_v2_6.last_adj_price.size + 
  qse_qsecash_marketdata_xdp_v2_6.system_id.size + 
  qse_qsecash_marketdata_xdp_v2_6.prev_volume_traded.size + 
  qse_qsecash_marketdata_xdp_v2_6.fix_price_tick.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.size + 
  qse_qsecash_marketdata_xdp_v2_6.stock_exchange_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.type_of_instrument.size + 
  qse_qsecash_marketdata_xdp_v2_6.event_date.size + 
  qse_qsecash_marketdata_xdp_v2_6.instrument_name.size + 
  qse_qsecash_marketdata_xdp_v2_6.period_indicator.size + 
  qse_qsecash_marketdata_xdp_v2_6.type_of_market_admission.size + 
  qse_qsecash_marketdata_xdp_v2_6.issuing_country_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.trading_currency.size + 
  qse_qsecash_marketdata_xdp_v2_6.instrument_group_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.instrument_category.size + 
  qse_qsecash_marketdata_xdp_v2_6.instrument_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.date_of_last_trade.size + 
  qse_qsecash_marketdata_xdp_v2_6.underlying_repo_isin_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.repo_expiry_date.size + 
  qse_qsecash_marketdata_xdp_v2_6.first_settlement_date.size + 
  qse_qsecash_marketdata_xdp_v2_6.type_of_derivatives.size + 
  qse_qsecash_marketdata_xdp_v2_6.bic_depositary.size + 
  qse_qsecash_marketdata_xdp_v2_6.icb.size + 
  qse_qsecash_marketdata_xdp_v2_6.mic.size + 
  qse_qsecash_marketdata_xdp_v2_6.underlying_wisin_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.depositary_list.size + 
  qse_qsecash_marketdata_xdp_v2_6.main_depositary.size + 
  qse_qsecash_marketdata_xdp_v2_6.type_of_corporate_event.size + 
  qse_qsecash_marketdata_xdp_v2_6.time_lag_euronext_utc.size + 
  qse_qsecash_marketdata_xdp_v2_6.time_lag_mi_fid_reg_utc.size + 
  qse_qsecash_marketdata_xdp_v2_6.cfi.size + 
  qse_qsecash_marketdata_xdp_v2_6.quantity_notation.size + 
  qse_qsecash_marketdata_xdp_v2_6.index_set_of_var_price_tick.size + 
  qse_qsecash_marketdata_xdp_v2_6.market_feed_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.mic_list.size + 
  qse_qsecash_marketdata_xdp_v2_6.industry_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.industry_text.size + 
  qse_qsecash_marketdata_xdp_v2_6.financial_market_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.us_indicators.size + 
  qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_2.size + 
  qse_qsecash_marketdata_xdp_v2_6.prev_day_capital_traded.size + 
  qse_qsecash_marketdata_xdp_v2_6.nom_mkt_price.size + 
  qse_qsecash_marketdata_xdp_v2_6.lot_size.size + 
  qse_qsecash_marketdata_xdp_v2_6.number_instrument_circ.size + 
  qse_qsecash_marketdata_xdp_v2_6.shares_out.size + 
  qse_qsecash_marketdata_xdp_v2_6.auth_shares.size + 
  qse_qsecash_marketdata_xdp_v2_6.heading_number.size + 
  qse_qsecash_marketdata_xdp_v2_6.section_number.size + 
  qse_qsecash_marketdata_xdp_v2_6.repo_indicator.size + 
  qse_qsecash_marketdata_xdp_v2_6.last_adj_price_scale_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.type_of_unit_exp.size + 
  qse_qsecash_marketdata_xdp_v2_6.market_indicator.size + 
  qse_qsecash_marketdata_xdp_v2_6.prev_day_capital_traded_scale_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.tax_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.nom_mkdt_price_scale_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.lot_size_scale_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.fix_price_tick_scale_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.mnemo.size + 
  qse_qsecash_marketdata_xdp_v2_6.trading_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_3.size + 
  qse_qsecash_marketdata_xdp_v2_6.strike_price.size + 
  qse_qsecash_marketdata_xdp_v2_6.strike_currency.size + 
  qse_qsecash_marketdata_xdp_v2_6.strike_scale_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.currency_coef.size + 
  qse_qsecash_marketdata_xdp_v2_6.currency_coef_scale_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.trading_currency_indicator.size + 
  qse_qsecash_marketdata_xdp_v2_6.strike_currency_indicator.size + 
  qse_qsecash_marketdata_xdp_v2_6.market_segment.size + 
  qse_qsecash_marketdata_xdp_v2_6.algo.size + 
  qse_qsecash_marketdata_xdp_v2_6.local_name.size + 
  qse_qsecash_marketdata_xdp_v2_6.small_trade.size + 
  qse_qsecash_marketdata_xdp_v2_6.filler_binary_int_12.size

-- Display: Referential Message
qse_qsecash_marketdata_xdp_v2_6.referential_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Referential Message
qse_qsecash_marketdata_xdp_v2_6.referential_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = qse_qsecash_marketdata_xdp_v2_6.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = qse_qsecash_marketdata_xdp_v2_6.source_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = qse_qsecash_marketdata_xdp_v2_6.source_time.dissect(buffer, index, packet, parent)

  -- Last Adj Price: Binary Int.
  index, last_adj_price = qse_qsecash_marketdata_xdp_v2_6.last_adj_price.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = qse_qsecash_marketdata_xdp_v2_6.system_id.dissect(buffer, index, packet, parent)

  -- Prev Volume Traded: Binary Int.
  index, prev_volume_traded = qse_qsecash_marketdata_xdp_v2_6.prev_volume_traded.dissect(buffer, index, packet, parent)

  -- Fix Price Tick: Binary Int.
  index, fix_price_tick = qse_qsecash_marketdata_xdp_v2_6.fix_price_tick.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Stock Exchange Code: Binary Int.
  index, stock_exchange_code = qse_qsecash_marketdata_xdp_v2_6.stock_exchange_code.dissect(buffer, index, packet, parent)

  -- Type Of Instrument: Binary Int.
  index, type_of_instrument = qse_qsecash_marketdata_xdp_v2_6.type_of_instrument.dissect(buffer, index, packet, parent)

  -- Event Date: ASCII Str.
  index, event_date = qse_qsecash_marketdata_xdp_v2_6.event_date.dissect(buffer, index, packet, parent)

  -- Instrument Name: ASCII Str.
  index, instrument_name = qse_qsecash_marketdata_xdp_v2_6.instrument_name.dissect(buffer, index, packet, parent)

  -- Period Indicator: ASCII Ch.
  index, period_indicator = qse_qsecash_marketdata_xdp_v2_6.period_indicator.dissect(buffer, index, packet, parent)

  -- Type Of Market Admission: ASCII Ch.
  index, type_of_market_admission = qse_qsecash_marketdata_xdp_v2_6.type_of_market_admission.dissect(buffer, index, packet, parent)

  -- Issuing Country Code: ASCII Str.
  index, issuing_country_code = qse_qsecash_marketdata_xdp_v2_6.issuing_country_code.dissect(buffer, index, packet, parent)

  -- Trading Currency: ASCII Str.
  index, trading_currency = qse_qsecash_marketdata_xdp_v2_6.trading_currency.dissect(buffer, index, packet, parent)

  -- Instrument Group Code: ASCII Str.
  index, instrument_group_code = qse_qsecash_marketdata_xdp_v2_6.instrument_group_code.dissect(buffer, index, packet, parent)

  -- Instrument Category: ASCII Ch.
  index, instrument_category = qse_qsecash_marketdata_xdp_v2_6.instrument_category.dissect(buffer, index, packet, parent)

  -- Instrument Code: ASCII Str.
  index, instrument_code = qse_qsecash_marketdata_xdp_v2_6.instrument_code.dissect(buffer, index, packet, parent)

  -- Date Of Last Trade: ASCII Str.
  index, date_of_last_trade = qse_qsecash_marketdata_xdp_v2_6.date_of_last_trade.dissect(buffer, index, packet, parent)

  -- Underlying Repo Isin Code: ASCII Str.
  index, underlying_repo_isin_code = qse_qsecash_marketdata_xdp_v2_6.underlying_repo_isin_code.dissect(buffer, index, packet, parent)

  -- Repo Expiry Date: ASCII Str.
  index, repo_expiry_date = qse_qsecash_marketdata_xdp_v2_6.repo_expiry_date.dissect(buffer, index, packet, parent)

  -- First Settlement Date: ASCII Str.
  index, first_settlement_date = qse_qsecash_marketdata_xdp_v2_6.first_settlement_date.dissect(buffer, index, packet, parent)

  -- Type Of Derivatives: ASCII Ch.
  index, type_of_derivatives = qse_qsecash_marketdata_xdp_v2_6.type_of_derivatives.dissect(buffer, index, packet, parent)

  -- Bic Depositary: ASCII Str.
  index, bic_depositary = qse_qsecash_marketdata_xdp_v2_6.bic_depositary.dissect(buffer, index, packet, parent)

  -- Icb: ASCII Str.
  index, icb = qse_qsecash_marketdata_xdp_v2_6.icb.dissect(buffer, index, packet, parent)

  -- Mic: ASCII Str.
  index, mic = qse_qsecash_marketdata_xdp_v2_6.mic.dissect(buffer, index, packet, parent)

  -- Underlying Wisin Code: ASCII Str.
  index, underlying_wisin_code = qse_qsecash_marketdata_xdp_v2_6.underlying_wisin_code.dissect(buffer, index, packet, parent)

  -- Depositary List: ASCII Str.
  index, depositary_list = qse_qsecash_marketdata_xdp_v2_6.depositary_list.dissect(buffer, index, packet, parent)

  -- Main Depositary: ASCII Str.
  index, main_depositary = qse_qsecash_marketdata_xdp_v2_6.main_depositary.dissect(buffer, index, packet, parent)

  -- Type Of Corporate Event: ASCII Str.
  index, type_of_corporate_event = qse_qsecash_marketdata_xdp_v2_6.type_of_corporate_event.dissect(buffer, index, packet, parent)

  -- Time Lag Euronext Utc: ASCII Str.
  index, time_lag_euronext_utc = qse_qsecash_marketdata_xdp_v2_6.time_lag_euronext_utc.dissect(buffer, index, packet, parent)

  -- Time Lag Mi Fid Reg Utc: ASCII Str.
  index, time_lag_mi_fid_reg_utc = qse_qsecash_marketdata_xdp_v2_6.time_lag_mi_fid_reg_utc.dissect(buffer, index, packet, parent)

  -- Cfi: ASCII Str.
  index, cfi = qse_qsecash_marketdata_xdp_v2_6.cfi.dissect(buffer, index, packet, parent)

  -- Quantity Notation: ASCII Str.
  index, quantity_notation = qse_qsecash_marketdata_xdp_v2_6.quantity_notation.dissect(buffer, index, packet, parent)

  -- Index Set Of Var Price Tick: ASCII Str.
  index, index_set_of_var_price_tick = qse_qsecash_marketdata_xdp_v2_6.index_set_of_var_price_tick.dissect(buffer, index, packet, parent)

  -- Market Feed Code: ASCII Str.
  index, market_feed_code = qse_qsecash_marketdata_xdp_v2_6.market_feed_code.dissect(buffer, index, packet, parent)

  -- Mic List: ASCII Str.
  index, mic_list = qse_qsecash_marketdata_xdp_v2_6.mic_list.dissect(buffer, index, packet, parent)

  -- Industry Code: ASCII Str.
  index, industry_code = qse_qsecash_marketdata_xdp_v2_6.industry_code.dissect(buffer, index, packet, parent)

  -- Industry Text: ASCII Str.
  index, industry_text = qse_qsecash_marketdata_xdp_v2_6.industry_text.dissect(buffer, index, packet, parent)

  -- Financial Market Code: ASCII Str.
  index, financial_market_code = qse_qsecash_marketdata_xdp_v2_6.financial_market_code.dissect(buffer, index, packet, parent)

  -- Us Indicators: ASCII Str.
  index, us_indicators = qse_qsecash_marketdata_xdp_v2_6.us_indicators.dissect(buffer, index, packet, parent)

  -- Filler Ascii Str 2: ASCII Str.
  index, filler_ascii_str_2 = qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_2.dissect(buffer, index, packet, parent)

  -- Prev Day Capital Traded: Binary Int.
  index, prev_day_capital_traded = qse_qsecash_marketdata_xdp_v2_6.prev_day_capital_traded.dissect(buffer, index, packet, parent)

  -- Nom Mkt Price: Binary Int.
  index, nom_mkt_price = qse_qsecash_marketdata_xdp_v2_6.nom_mkt_price.dissect(buffer, index, packet, parent)

  -- Lot Size: Binary Int.
  index, lot_size = qse_qsecash_marketdata_xdp_v2_6.lot_size.dissect(buffer, index, packet, parent)

  -- Number Instrument Circ: Binary Int.
  index, number_instrument_circ = qse_qsecash_marketdata_xdp_v2_6.number_instrument_circ.dissect(buffer, index, packet, parent)

  -- Shares Out: Binary Int.
  index, shares_out = qse_qsecash_marketdata_xdp_v2_6.shares_out.dissect(buffer, index, packet, parent)

  -- Auth Shares: Binary Int.
  index, auth_shares = qse_qsecash_marketdata_xdp_v2_6.auth_shares.dissect(buffer, index, packet, parent)

  -- Heading Number: Binary Int.
  index, heading_number = qse_qsecash_marketdata_xdp_v2_6.heading_number.dissect(buffer, index, packet, parent)

  -- Section Number: Binary Int.
  index, section_number = qse_qsecash_marketdata_xdp_v2_6.section_number.dissect(buffer, index, packet, parent)

  -- Repo Indicator: ASCII Ch.
  index, repo_indicator = qse_qsecash_marketdata_xdp_v2_6.repo_indicator.dissect(buffer, index, packet, parent)

  -- Last Adj Price Scale Code: Binary Int.
  index, last_adj_price_scale_code = qse_qsecash_marketdata_xdp_v2_6.last_adj_price_scale_code.dissect(buffer, index, packet, parent)

  -- Type Of Unit Exp: Binary Int.
  index, type_of_unit_exp = qse_qsecash_marketdata_xdp_v2_6.type_of_unit_exp.dissect(buffer, index, packet, parent)

  -- Market Indicator: Binary Int.
  index, market_indicator = qse_qsecash_marketdata_xdp_v2_6.market_indicator.dissect(buffer, index, packet, parent)

  -- Prev Day Capital Traded Scale Code: Binary Int.
  index, prev_day_capital_traded_scale_code = qse_qsecash_marketdata_xdp_v2_6.prev_day_capital_traded_scale_code.dissect(buffer, index, packet, parent)

  -- Tax Code: Binary Int.
  index, tax_code = qse_qsecash_marketdata_xdp_v2_6.tax_code.dissect(buffer, index, packet, parent)

  -- Nom Mkdt Price Scale Code: Binary Int.
  index, nom_mkdt_price_scale_code = qse_qsecash_marketdata_xdp_v2_6.nom_mkdt_price_scale_code.dissect(buffer, index, packet, parent)

  -- Lot Size Scale Code: Binary Int.
  index, lot_size_scale_code = qse_qsecash_marketdata_xdp_v2_6.lot_size_scale_code.dissect(buffer, index, packet, parent)

  -- Fix Price Tick Scale Code: Binary Int.
  index, fix_price_tick_scale_code = qse_qsecash_marketdata_xdp_v2_6.fix_price_tick_scale_code.dissect(buffer, index, packet, parent)

  -- Mnemo: ASCII Str.
  index, mnemo = qse_qsecash_marketdata_xdp_v2_6.mnemo.dissect(buffer, index, packet, parent)

  -- Trading Code: ASCII Str.
  index, trading_code = qse_qsecash_marketdata_xdp_v2_6.trading_code.dissect(buffer, index, packet, parent)

  -- Filler Ascii Str 3: ASCII Str.
  index, filler_ascii_str_3 = qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_3.dissect(buffer, index, packet, parent)

  -- Strike Price: Binary Int.
  index, strike_price = qse_qsecash_marketdata_xdp_v2_6.strike_price.dissect(buffer, index, packet, parent)

  -- Strike Currency: ASCII Str.
  index, strike_currency = qse_qsecash_marketdata_xdp_v2_6.strike_currency.dissect(buffer, index, packet, parent)

  -- Strike Scale Code: Binary Int.
  index, strike_scale_code = qse_qsecash_marketdata_xdp_v2_6.strike_scale_code.dissect(buffer, index, packet, parent)

  -- Currency Coef: Binary Int.
  index, currency_coef = qse_qsecash_marketdata_xdp_v2_6.currency_coef.dissect(buffer, index, packet, parent)

  -- Currency Coef Scale Code: Binary Int.
  index, currency_coef_scale_code = qse_qsecash_marketdata_xdp_v2_6.currency_coef_scale_code.dissect(buffer, index, packet, parent)

  -- Trading Currency Indicator: Binary Int.
  index, trading_currency_indicator = qse_qsecash_marketdata_xdp_v2_6.trading_currency_indicator.dissect(buffer, index, packet, parent)

  -- Strike Currency Indicator: Binary Int.
  index, strike_currency_indicator = qse_qsecash_marketdata_xdp_v2_6.strike_currency_indicator.dissect(buffer, index, packet, parent)

  -- Market Segment: ASCII Str.
  index, market_segment = qse_qsecash_marketdata_xdp_v2_6.market_segment.dissect(buffer, index, packet, parent)

  -- Algo: ASCII Str.
  index, algo = qse_qsecash_marketdata_xdp_v2_6.algo.dissect(buffer, index, packet, parent)

  -- Local Name: ASCII Str.
  index, local_name = qse_qsecash_marketdata_xdp_v2_6.local_name.dissect(buffer, index, packet, parent)

  -- Small Trade: Binary Int.
  index, small_trade = qse_qsecash_marketdata_xdp_v2_6.small_trade.dissect(buffer, index, packet, parent)

  -- Filler Binary Int 12: Binary Int.
  index, filler_binary_int_12 = qse_qsecash_marketdata_xdp_v2_6.filler_binary_int_12.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Referential Message
qse_qsecash_marketdata_xdp_v2_6.referential_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.referential_message, buffer(offset, 0))
    local index = qse_qsecash_marketdata_xdp_v2_6.referential_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = qse_qsecash_marketdata_xdp_v2_6.referential_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return qse_qsecash_marketdata_xdp_v2_6.referential_message.fields(buffer, offset, packet, parent)
  end
end

-- End Referential Message
qse_qsecash_marketdata_xdp_v2_6.end_referential_message = {}

-- Size: End Referential Message
qse_qsecash_marketdata_xdp_v2_6.end_referential_message.size =
  qse_qsecash_marketdata_xdp_v2_6.indicator.size + 
  qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_3.size

-- Display: End Referential Message
qse_qsecash_marketdata_xdp_v2_6.end_referential_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Referential Message
qse_qsecash_marketdata_xdp_v2_6.end_referential_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Indicator: ASCII Ch.
  index, indicator = qse_qsecash_marketdata_xdp_v2_6.indicator.dissect(buffer, index, packet, parent)

  -- Filler Ascii Str 3: ASCII Str.
  index, filler_ascii_str_3 = qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Referential Message
qse_qsecash_marketdata_xdp_v2_6.end_referential_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.end_referential_message, buffer(offset, 0))
    local index = qse_qsecash_marketdata_xdp_v2_6.end_referential_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = qse_qsecash_marketdata_xdp_v2_6.end_referential_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return qse_qsecash_marketdata_xdp_v2_6.end_referential_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Referential Message
qse_qsecash_marketdata_xdp_v2_6.start_referential_message = {}

-- Size: Start Referential Message
qse_qsecash_marketdata_xdp_v2_6.start_referential_message.size =
  qse_qsecash_marketdata_xdp_v2_6.indicator.size + 
  qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_3.size

-- Display: Start Referential Message
qse_qsecash_marketdata_xdp_v2_6.start_referential_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Referential Message
qse_qsecash_marketdata_xdp_v2_6.start_referential_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Indicator: ASCII Ch.
  index, indicator = qse_qsecash_marketdata_xdp_v2_6.indicator.dissect(buffer, index, packet, parent)

  -- Filler Ascii Str 3: ASCII Str.
  index, filler_ascii_str_3 = qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Referential Message
qse_qsecash_marketdata_xdp_v2_6.start_referential_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.start_referential_message, buffer(offset, 0))
    local index = qse_qsecash_marketdata_xdp_v2_6.start_referential_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = qse_qsecash_marketdata_xdp_v2_6.start_referential_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return qse_qsecash_marketdata_xdp_v2_6.start_referential_message.fields(buffer, offset, packet, parent)
  end
end

-- Global Market Activity Summary Message
qse_qsecash_marketdata_xdp_v2_6.global_market_activity_summary_message = {}

-- Size: Global Market Activity Summary Message
qse_qsecash_marketdata_xdp_v2_6.global_market_activity_summary_message.size =
  qse_qsecash_marketdata_xdp_v2_6.source_seq_num.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time.size + 
  qse_qsecash_marketdata_xdp_v2_6.system_id.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.size + 
  qse_qsecash_marketdata_xdp_v2_6.nb_trades.size + 
  qse_qsecash_marketdata_xdp_v2_6.qty_shares.size + 
  qse_qsecash_marketdata_xdp_v2_6.amount_traded.size + 
  qse_qsecash_marketdata_xdp_v2_6.price_scale_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_3.size

-- Display: Global Market Activity Summary Message
qse_qsecash_marketdata_xdp_v2_6.global_market_activity_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Global Market Activity Summary Message
qse_qsecash_marketdata_xdp_v2_6.global_market_activity_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Seq Num: Binary Int.
  index, source_seq_num = qse_qsecash_marketdata_xdp_v2_6.source_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = qse_qsecash_marketdata_xdp_v2_6.source_time.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = qse_qsecash_marketdata_xdp_v2_6.system_id.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Nb Trades: Binary Int.
  index, nb_trades = qse_qsecash_marketdata_xdp_v2_6.nb_trades.dissect(buffer, index, packet, parent)

  -- Qty Shares: Binary Int.
  index, qty_shares = qse_qsecash_marketdata_xdp_v2_6.qty_shares.dissect(buffer, index, packet, parent)

  -- Amount Traded: Binary Int.
  index, amount_traded = qse_qsecash_marketdata_xdp_v2_6.amount_traded.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary Int.
  index, price_scale_code = qse_qsecash_marketdata_xdp_v2_6.price_scale_code.dissect(buffer, index, packet, parent)

  -- Filler Ascii Str 3: ASCII Str.
  index, filler_ascii_str_3 = qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Global Market Activity Summary Message
qse_qsecash_marketdata_xdp_v2_6.global_market_activity_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.global_market_activity_summary_message, buffer(offset, 0))
    local index = qse_qsecash_marketdata_xdp_v2_6.global_market_activity_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = qse_qsecash_marketdata_xdp_v2_6.global_market_activity_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return qse_qsecash_marketdata_xdp_v2_6.global_market_activity_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Session Timetable Message
qse_qsecash_marketdata_xdp_v2_6.session_timetable_message = {}

-- Size: Session Timetable Message
qse_qsecash_marketdata_xdp_v2_6.session_timetable_message.size =
  qse_qsecash_marketdata_xdp_v2_6.source_seq_num.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time.size + 
  qse_qsecash_marketdata_xdp_v2_6.system_id.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.size + 
  qse_qsecash_marketdata_xdp_v2_6.instrument_group_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.session_type.size + 
  qse_qsecash_marketdata_xdp_v2_6.time_pre_opening_1.size + 
  qse_qsecash_marketdata_xdp_v2_6.time_opening_1.size + 
  qse_qsecash_marketdata_xdp_v2_6.time_closing_1.size + 
  qse_qsecash_marketdata_xdp_v2_6.time_pre_opening_2.size + 
  qse_qsecash_marketdata_xdp_v2_6.time_opening_2.size + 
  qse_qsecash_marketdata_xdp_v2_6.time_closing_2.size + 
  qse_qsecash_marketdata_xdp_v2_6.time_pre_opening_3.size + 
  qse_qsecash_marketdata_xdp_v2_6.time_opening_3.size + 
  qse_qsecash_marketdata_xdp_v2_6.time_closing_3.size + 
  qse_qsecash_marketdata_xdp_v2_6.eod_time.size + 
  qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_2.size

-- Display: Session Timetable Message
qse_qsecash_marketdata_xdp_v2_6.session_timetable_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Session Timetable Message
qse_qsecash_marketdata_xdp_v2_6.session_timetable_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Seq Num: Binary Int.
  index, source_seq_num = qse_qsecash_marketdata_xdp_v2_6.source_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = qse_qsecash_marketdata_xdp_v2_6.source_time.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = qse_qsecash_marketdata_xdp_v2_6.system_id.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Instrument Group Code: ASCII Str.
  index, instrument_group_code = qse_qsecash_marketdata_xdp_v2_6.instrument_group_code.dissect(buffer, index, packet, parent)

  -- Session Type: ASCII Ch.
  index, session_type = qse_qsecash_marketdata_xdp_v2_6.session_type.dissect(buffer, index, packet, parent)

  -- Time Pre Opening 1: ASCII Str.
  index, time_pre_opening_1 = qse_qsecash_marketdata_xdp_v2_6.time_pre_opening_1.dissect(buffer, index, packet, parent)

  -- Time Opening 1: ASCII Str.
  index, time_opening_1 = qse_qsecash_marketdata_xdp_v2_6.time_opening_1.dissect(buffer, index, packet, parent)

  -- Time Closing 1: ASCII Str.
  index, time_closing_1 = qse_qsecash_marketdata_xdp_v2_6.time_closing_1.dissect(buffer, index, packet, parent)

  -- Time Pre Opening 2: ASCII Str.
  index, time_pre_opening_2 = qse_qsecash_marketdata_xdp_v2_6.time_pre_opening_2.dissect(buffer, index, packet, parent)

  -- Time Opening 2: ASCII Str.
  index, time_opening_2 = qse_qsecash_marketdata_xdp_v2_6.time_opening_2.dissect(buffer, index, packet, parent)

  -- Time Closing 2: ASCII Str.
  index, time_closing_2 = qse_qsecash_marketdata_xdp_v2_6.time_closing_2.dissect(buffer, index, packet, parent)

  -- Time Pre Opening 3: ASCII Str.
  index, time_pre_opening_3 = qse_qsecash_marketdata_xdp_v2_6.time_pre_opening_3.dissect(buffer, index, packet, parent)

  -- Time Opening 3: ASCII Str.
  index, time_opening_3 = qse_qsecash_marketdata_xdp_v2_6.time_opening_3.dissect(buffer, index, packet, parent)

  -- Time Closing 3: ASCII Str.
  index, time_closing_3 = qse_qsecash_marketdata_xdp_v2_6.time_closing_3.dissect(buffer, index, packet, parent)

  -- Eod Time: ASCII Str.
  index, eod_time = qse_qsecash_marketdata_xdp_v2_6.eod_time.dissect(buffer, index, packet, parent)

  -- Filler Ascii Str 2: ASCII Str.
  index, filler_ascii_str_2 = qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Session Timetable Message
qse_qsecash_marketdata_xdp_v2_6.session_timetable_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.session_timetable_message, buffer(offset, 0))
    local index = qse_qsecash_marketdata_xdp_v2_6.session_timetable_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = qse_qsecash_marketdata_xdp_v2_6.session_timetable_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return qse_qsecash_marketdata_xdp_v2_6.session_timetable_message.fields(buffer, offset, packet, parent)
  end
end

-- Collars Message
qse_qsecash_marketdata_xdp_v2_6.collars_message = {}

-- Size: Collars Message
qse_qsecash_marketdata_xdp_v2_6.collars_message.size =
  qse_qsecash_marketdata_xdp_v2_6.symbol_index.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_seq_num.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time.size + 
  qse_qsecash_marketdata_xdp_v2_6.high_collar.size + 
  qse_qsecash_marketdata_xdp_v2_6.low_collar.size + 
  qse_qsecash_marketdata_xdp_v2_6.system_id.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.size + 
  qse_qsecash_marketdata_xdp_v2_6.high_scale_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.low_scale_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.collar_type.size + 
  qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_3.size

-- Display: Collars Message
qse_qsecash_marketdata_xdp_v2_6.collars_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Collars Message
qse_qsecash_marketdata_xdp_v2_6.collars_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = qse_qsecash_marketdata_xdp_v2_6.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = qse_qsecash_marketdata_xdp_v2_6.source_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = qse_qsecash_marketdata_xdp_v2_6.source_time.dissect(buffer, index, packet, parent)

  -- High Collar: Binary Int.
  index, high_collar = qse_qsecash_marketdata_xdp_v2_6.high_collar.dissect(buffer, index, packet, parent)

  -- Low Collar: Binary Int.
  index, low_collar = qse_qsecash_marketdata_xdp_v2_6.low_collar.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = qse_qsecash_marketdata_xdp_v2_6.system_id.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- High Scale Code: Binary Int.
  index, high_scale_code = qse_qsecash_marketdata_xdp_v2_6.high_scale_code.dissect(buffer, index, packet, parent)

  -- Low Scale Code: Binary Int.
  index, low_scale_code = qse_qsecash_marketdata_xdp_v2_6.low_scale_code.dissect(buffer, index, packet, parent)

  -- Collar Type: ASCII Ch.
  index, collar_type = qse_qsecash_marketdata_xdp_v2_6.collar_type.dissect(buffer, index, packet, parent)

  -- Filler Ascii Str 3: ASCII Str.
  index, filler_ascii_str_3 = qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Collars Message
qse_qsecash_marketdata_xdp_v2_6.collars_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.collars_message, buffer(offset, 0))
    local index = qse_qsecash_marketdata_xdp_v2_6.collars_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = qse_qsecash_marketdata_xdp_v2_6.collars_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return qse_qsecash_marketdata_xdp_v2_6.collars_message.fields(buffer, offset, packet, parent)
  end
end

-- Indicative Matching Price Message
qse_qsecash_marketdata_xdp_v2_6.indicative_matching_price_message = {}

-- Size: Indicative Matching Price Message
qse_qsecash_marketdata_xdp_v2_6.indicative_matching_price_message.size =
  qse_qsecash_marketdata_xdp_v2_6.symbol_index.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_seq_num.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time.size + 
  qse_qsecash_marketdata_xdp_v2_6.im_price.size + 
  qse_qsecash_marketdata_xdp_v2_6.variation.size + 
  qse_qsecash_marketdata_xdp_v2_6.system_id.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.size + 
  qse_qsecash_marketdata_xdp_v2_6.price_scale_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.variation_scale_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.im_volume.size

-- Display: Indicative Matching Price Message
qse_qsecash_marketdata_xdp_v2_6.indicative_matching_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indicative Matching Price Message
qse_qsecash_marketdata_xdp_v2_6.indicative_matching_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = qse_qsecash_marketdata_xdp_v2_6.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = qse_qsecash_marketdata_xdp_v2_6.source_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = qse_qsecash_marketdata_xdp_v2_6.source_time.dissect(buffer, index, packet, parent)

  -- Im Price: Binary Int.
  index, im_price = qse_qsecash_marketdata_xdp_v2_6.im_price.dissect(buffer, index, packet, parent)

  -- Variation: Binary Int.
  index, variation = qse_qsecash_marketdata_xdp_v2_6.variation.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = qse_qsecash_marketdata_xdp_v2_6.system_id.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary Int.
  index, price_scale_code = qse_qsecash_marketdata_xdp_v2_6.price_scale_code.dissect(buffer, index, packet, parent)

  -- Variation Scale Code: Binary Int.
  index, variation_scale_code = qse_qsecash_marketdata_xdp_v2_6.variation_scale_code.dissect(buffer, index, packet, parent)

  -- Im Volume: Binary Int.
  index, im_volume = qse_qsecash_marketdata_xdp_v2_6.im_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Indicative Matching Price Message
qse_qsecash_marketdata_xdp_v2_6.indicative_matching_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.indicative_matching_price_message, buffer(offset, 0))
    local index = qse_qsecash_marketdata_xdp_v2_6.indicative_matching_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = qse_qsecash_marketdata_xdp_v2_6.indicative_matching_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return qse_qsecash_marketdata_xdp_v2_6.indicative_matching_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Mail Message
qse_qsecash_marketdata_xdp_v2_6.mail_message = {}

-- Size: Mail Message
qse_qsecash_marketdata_xdp_v2_6.mail_message.size =
  qse_qsecash_marketdata_xdp_v2_6.source_seq_num.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time.size + 
  qse_qsecash_marketdata_xdp_v2_6.system_id.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.size + 
  qse_qsecash_marketdata_xdp_v2_6.e_mail_msg_number.size + 
  qse_qsecash_marketdata_xdp_v2_6.number_of_message.size + 
  qse_qsecash_marketdata_xdp_v2_6.sequence_number.size + 
  qse_qsecash_marketdata_xdp_v2_6.instrument_group_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_1.size + 
  qse_qsecash_marketdata_xdp_v2_6.priority_indicator.size + 
  qse_qsecash_marketdata_xdp_v2_6.type_of_message.size + 
  qse_qsecash_marketdata_xdp_v2_6.address_type.size + 
  qse_qsecash_marketdata_xdp_v2_6.title.size + 
  qse_qsecash_marketdata_xdp_v2_6.text.size + 
  qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_2.size

-- Display: Mail Message
qse_qsecash_marketdata_xdp_v2_6.mail_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mail Message
qse_qsecash_marketdata_xdp_v2_6.mail_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Seq Num: Binary Int.
  index, source_seq_num = qse_qsecash_marketdata_xdp_v2_6.source_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = qse_qsecash_marketdata_xdp_v2_6.source_time.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = qse_qsecash_marketdata_xdp_v2_6.system_id.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- E Mail Msg Number: Binary Int.
  index, e_mail_msg_number = qse_qsecash_marketdata_xdp_v2_6.e_mail_msg_number.dissect(buffer, index, packet, parent)

  -- Number Of Message: Binary Int.
  index, number_of_message = qse_qsecash_marketdata_xdp_v2_6.number_of_message.dissect(buffer, index, packet, parent)

  -- Sequence Number: Binary Int.
  index, sequence_number = qse_qsecash_marketdata_xdp_v2_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Instrument Group Code: ASCII Str.
  index, instrument_group_code = qse_qsecash_marketdata_xdp_v2_6.instrument_group_code.dissect(buffer, index, packet, parent)

  -- Filler Ascii Str 1: ASCII Str.
  index, filler_ascii_str_1 = qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_1.dissect(buffer, index, packet, parent)

  -- Priority Indicator: ASCII Ch.
  index, priority_indicator = qse_qsecash_marketdata_xdp_v2_6.priority_indicator.dissect(buffer, index, packet, parent)

  -- Type Of Message: ASCII Ch.
  index, type_of_message = qse_qsecash_marketdata_xdp_v2_6.type_of_message.dissect(buffer, index, packet, parent)

  -- Address Type: ASCII Str.
  index, address_type = qse_qsecash_marketdata_xdp_v2_6.address_type.dissect(buffer, index, packet, parent)

  -- Title: ASCII Str.
  index, title = qse_qsecash_marketdata_xdp_v2_6.title.dissect(buffer, index, packet, parent)

  -- Text: ASCII Str.
  index, text = qse_qsecash_marketdata_xdp_v2_6.text.dissect(buffer, index, packet, parent)

  -- Filler Ascii Str 2: ASCII Str.
  index, filler_ascii_str_2 = qse_qsecash_marketdata_xdp_v2_6.filler_ascii_str_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mail Message
qse_qsecash_marketdata_xdp_v2_6.mail_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.mail_message, buffer(offset, 0))
    local index = qse_qsecash_marketdata_xdp_v2_6.mail_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = qse_qsecash_marketdata_xdp_v2_6.mail_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return qse_qsecash_marketdata_xdp_v2_6.mail_message.fields(buffer, offset, packet, parent)
  end
end

-- Class State Change Message
qse_qsecash_marketdata_xdp_v2_6.class_state_change_message = {}

-- Size: Class State Change Message
qse_qsecash_marketdata_xdp_v2_6.class_state_change_message.size =
  qse_qsecash_marketdata_xdp_v2_6.source_seq_num.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time.size + 
  qse_qsecash_marketdata_xdp_v2_6.system_id.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.size + 
  qse_qsecash_marketdata_xdp_v2_6.instrument_group_code.size + 
  qse_qsecash_marketdata_xdp_v2_6.instrument_group_state.size + 
  qse_qsecash_marketdata_xdp_v2_6.session_type.size + 
  qse_qsecash_marketdata_xdp_v2_6.filler_binary_int_1.size + 
  qse_qsecash_marketdata_xdp_v2_6.class_state.size

-- Display: Class State Change Message
qse_qsecash_marketdata_xdp_v2_6.class_state_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Class State Change Message
qse_qsecash_marketdata_xdp_v2_6.class_state_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Seq Num: Binary Int.
  index, source_seq_num = qse_qsecash_marketdata_xdp_v2_6.source_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = qse_qsecash_marketdata_xdp_v2_6.source_time.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = qse_qsecash_marketdata_xdp_v2_6.system_id.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Instrument Group Code: ASCII Str.
  index, instrument_group_code = qse_qsecash_marketdata_xdp_v2_6.instrument_group_code.dissect(buffer, index, packet, parent)

  -- Instrument Group State: ASCII Ch.
  index, instrument_group_state = qse_qsecash_marketdata_xdp_v2_6.instrument_group_state.dissect(buffer, index, packet, parent)

  -- Session Type: ASCII Ch.
  index, session_type = qse_qsecash_marketdata_xdp_v2_6.session_type.dissect(buffer, index, packet, parent)

  -- Filler Binary Int 1: Binary Int.
  index, filler_binary_int_1 = qse_qsecash_marketdata_xdp_v2_6.filler_binary_int_1.dissect(buffer, index, packet, parent)

  -- Class State: ASCII Ch.
  index, class_state = qse_qsecash_marketdata_xdp_v2_6.class_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Class State Change Message
qse_qsecash_marketdata_xdp_v2_6.class_state_change_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.class_state_change_message, buffer(offset, 0))
    local index = qse_qsecash_marketdata_xdp_v2_6.class_state_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = qse_qsecash_marketdata_xdp_v2_6.class_state_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return qse_qsecash_marketdata_xdp_v2_6.class_state_change_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock State Change Message
qse_qsecash_marketdata_xdp_v2_6.stock_state_change_message = {}

-- Size: Stock State Change Message
qse_qsecash_marketdata_xdp_v2_6.stock_state_change_message.size =
  qse_qsecash_marketdata_xdp_v2_6.symbol_index.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_seq_num.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time.size + 
  qse_qsecash_marketdata_xdp_v2_6.system_id.size + 
  qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.size + 
  qse_qsecash_marketdata_xdp_v2_6.filler_binary_int_2.size + 
  qse_qsecash_marketdata_xdp_v2_6.start_date_halting.size + 
  qse_qsecash_marketdata_xdp_v2_6.start_time_halting.size + 
  qse_qsecash_marketdata_xdp_v2_6.prog_opening_time.size + 
  qse_qsecash_marketdata_xdp_v2_6.order_entry_rejection.size + 
  qse_qsecash_marketdata_xdp_v2_6.instrument_state.size + 
  qse_qsecash_marketdata_xdp_v2_6.instrument_trading_status.size + 
  qse_qsecash_marketdata_xdp_v2_6.halt_reason.size + 
  qse_qsecash_marketdata_xdp_v2_6.action_affecting_state.size + 
  qse_qsecash_marketdata_xdp_v2_6.instrument_state_tcs.size + 
  qse_qsecash_marketdata_xdp_v2_6.period_side.size + 
  qse_qsecash_marketdata_xdp_v2_6.filler_binary_int_1.size

-- Display: Stock State Change Message
qse_qsecash_marketdata_xdp_v2_6.stock_state_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock State Change Message
qse_qsecash_marketdata_xdp_v2_6.stock_state_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = qse_qsecash_marketdata_xdp_v2_6.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = qse_qsecash_marketdata_xdp_v2_6.source_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = qse_qsecash_marketdata_xdp_v2_6.source_time.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = qse_qsecash_marketdata_xdp_v2_6.system_id.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = qse_qsecash_marketdata_xdp_v2_6.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Filler Binary Int 2: Binary Int.
  index, filler_binary_int_2 = qse_qsecash_marketdata_xdp_v2_6.filler_binary_int_2.dissect(buffer, index, packet, parent)

  -- Start Date Halting: ASCII Str.
  index, start_date_halting = qse_qsecash_marketdata_xdp_v2_6.start_date_halting.dissect(buffer, index, packet, parent)

  -- Start Time Halting: ASCII Str.
  index, start_time_halting = qse_qsecash_marketdata_xdp_v2_6.start_time_halting.dissect(buffer, index, packet, parent)

  -- Prog Opening Time: ASCII Str.
  index, prog_opening_time = qse_qsecash_marketdata_xdp_v2_6.prog_opening_time.dissect(buffer, index, packet, parent)

  -- Order Entry Rejection: ASCII Ch.
  index, order_entry_rejection = qse_qsecash_marketdata_xdp_v2_6.order_entry_rejection.dissect(buffer, index, packet, parent)

  -- Instrument State: ASCII Ch.
  index, instrument_state = qse_qsecash_marketdata_xdp_v2_6.instrument_state.dissect(buffer, index, packet, parent)

  -- Instrument Trading Status: ASCII Ch.
  index, instrument_trading_status = qse_qsecash_marketdata_xdp_v2_6.instrument_trading_status.dissect(buffer, index, packet, parent)

  -- Halt Reason: ASCII Ch.
  index, halt_reason = qse_qsecash_marketdata_xdp_v2_6.halt_reason.dissect(buffer, index, packet, parent)

  -- Action Affecting State: ASCII Ch.
  index, action_affecting_state = qse_qsecash_marketdata_xdp_v2_6.action_affecting_state.dissect(buffer, index, packet, parent)

  -- Instrument State Tcs: ASCII Ch.
  index, instrument_state_tcs = qse_qsecash_marketdata_xdp_v2_6.instrument_state_tcs.dissect(buffer, index, packet, parent)

  -- Period Side: ASCII Ch.
  index, period_side = qse_qsecash_marketdata_xdp_v2_6.period_side.dissect(buffer, index, packet, parent)

  -- Filler Binary Int 1: Binary Int.
  index, filler_binary_int_1 = qse_qsecash_marketdata_xdp_v2_6.filler_binary_int_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock State Change Message
qse_qsecash_marketdata_xdp_v2_6.stock_state_change_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.stock_state_change_message, buffer(offset, 0))
    local index = qse_qsecash_marketdata_xdp_v2_6.stock_state_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = qse_qsecash_marketdata_xdp_v2_6.stock_state_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return qse_qsecash_marketdata_xdp_v2_6.stock_state_change_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
qse_qsecash_marketdata_xdp_v2_6.payload = {}

-- Dissect: Payload
qse_qsecash_marketdata_xdp_v2_6.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Stock State Change Message
  if message_type == 505 then
    return qse_qsecash_marketdata_xdp_v2_6.stock_state_change_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Class State Change Message
  if message_type == 516 then
    return qse_qsecash_marketdata_xdp_v2_6.class_state_change_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mail Message
  if message_type == 523 then
    return qse_qsecash_marketdata_xdp_v2_6.mail_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Indicative Matching Price Message
  if message_type == 530 then
    return qse_qsecash_marketdata_xdp_v2_6.indicative_matching_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Collars Message
  if message_type == 537 then
    return qse_qsecash_marketdata_xdp_v2_6.collars_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Session Timetable Message
  if message_type == 539 then
    return qse_qsecash_marketdata_xdp_v2_6.session_timetable_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Global Market Activity Summary Message
  if message_type == 545 then
    return qse_qsecash_marketdata_xdp_v2_6.global_market_activity_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Start Referential Message
  if message_type == 550 then
    return qse_qsecash_marketdata_xdp_v2_6.start_referential_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Referential Message
  if message_type == 551 then
    return qse_qsecash_marketdata_xdp_v2_6.end_referential_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Referential Message
  if message_type == 555 then
    return qse_qsecash_marketdata_xdp_v2_6.referential_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Creation Message
  if message_type == 220 then
    return qse_qsecash_marketdata_xdp_v2_6.trade_creation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancellation Message
  if message_type == 221 then
    return qse_qsecash_marketdata_xdp_v2_6.trade_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Full Information Message
  if message_type == 240 then
    return qse_qsecash_marketdata_xdp_v2_6.trade_full_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Update Message
  if message_type == 241 then
    return qse_qsecash_marketdata_xdp_v2_6.price_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if message_type == 245 then
    return qse_qsecash_marketdata_xdp_v2_6.auction_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Vwap Closing Price Message
  if message_type == 247 then
    return qse_qsecash_marketdata_xdp_v2_6.vwap_closing_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quotes Message
  if message_type == 140 then
    return qse_qsecash_marketdata_xdp_v2_6.quotes_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Update Market Sheet Message
  if message_type == 230 then
    return qse_qsecash_marketdata_xdp_v2_6.order_update_market_sheet_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Orderbook Retransmission Delimiter Message
  if message_type == 231 then
    return qse_qsecash_marketdata_xdp_v2_6.orderbook_retransmission_delimiter_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Real Time Index Message
  if message_type == 542 then
    return qse_qsecash_marketdata_xdp_v2_6.real_time_index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Index Summary Message
  if message_type == 543 then
    return qse_qsecash_marketdata_xdp_v2_6.index_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Index Composition Message
  if message_type == 544 then
    return qse_qsecash_marketdata_xdp_v2_6.index_composition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Start Refresh Message
  if message_type == 580 then
    return qse_qsecash_marketdata_xdp_v2_6.start_refresh_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Refresh Message
  if message_type == 581 then
    return qse_qsecash_marketdata_xdp_v2_6.end_refresh_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
qse_qsecash_marketdata_xdp_v2_6.message_header = {}

-- Size: Message Header
qse_qsecash_marketdata_xdp_v2_6.message_header.size =
  qse_qsecash_marketdata_xdp_v2_6.message_size.size + 
  qse_qsecash_marketdata_xdp_v2_6.message_type.size

-- Display: Message Header
qse_qsecash_marketdata_xdp_v2_6.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
qse_qsecash_marketdata_xdp_v2_6.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: Binary Int.
  index, message_size = qse_qsecash_marketdata_xdp_v2_6.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: Binary Int.
  index, message_type = qse_qsecash_marketdata_xdp_v2_6.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
qse_qsecash_marketdata_xdp_v2_6.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.message_header, buffer(offset, 0))
    local index = qse_qsecash_marketdata_xdp_v2_6.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = qse_qsecash_marketdata_xdp_v2_6.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return qse_qsecash_marketdata_xdp_v2_6.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
qse_qsecash_marketdata_xdp_v2_6.message = {}

-- Display: Message
qse_qsecash_marketdata_xdp_v2_6.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
qse_qsecash_marketdata_xdp_v2_6.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = qse_qsecash_marketdata_xdp_v2_6.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):uint()

  -- Payload: Runtime Type with 24 branches
  index = qse_qsecash_marketdata_xdp_v2_6.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
qse_qsecash_marketdata_xdp_v2_6.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.message, buffer(offset, 0))
    local current = qse_qsecash_marketdata_xdp_v2_6.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = qse_qsecash_marketdata_xdp_v2_6.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    qse_qsecash_marketdata_xdp_v2_6.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
qse_qsecash_marketdata_xdp_v2_6.packet_header = {}

-- Size: Packet Header
qse_qsecash_marketdata_xdp_v2_6.packet_header.size =
  qse_qsecash_marketdata_xdp_v2_6.packet_length.size + 
  qse_qsecash_marketdata_xdp_v2_6.packet_type.size + 
  qse_qsecash_marketdata_xdp_v2_6.packet_sequence_number.size + 
  qse_qsecash_marketdata_xdp_v2_6.send_time.size + 
  qse_qsecash_marketdata_xdp_v2_6.service_id.size + 
  qse_qsecash_marketdata_xdp_v2_6.delivery_flag.size + 
  qse_qsecash_marketdata_xdp_v2_6.number_msg_entries.size

-- Display: Packet Header
qse_qsecash_marketdata_xdp_v2_6.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
qse_qsecash_marketdata_xdp_v2_6.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: Binary Int.
  index, packet_length = qse_qsecash_marketdata_xdp_v2_6.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: Binary Int.
  index, packet_type = qse_qsecash_marketdata_xdp_v2_6.packet_type.dissect(buffer, index, packet, parent)

  -- Packet Sequence Number: Binary Int.
  index, packet_sequence_number = qse_qsecash_marketdata_xdp_v2_6.packet_sequence_number.dissect(buffer, index, packet, parent)

  -- Send Time: Binary Int.
  index, send_time = qse_qsecash_marketdata_xdp_v2_6.send_time.dissect(buffer, index, packet, parent)

  -- Service Id: Binary Int.
  index, service_id = qse_qsecash_marketdata_xdp_v2_6.service_id.dissect(buffer, index, packet, parent)

  -- Delivery Flag: Binary Int.
  index, delivery_flag = qse_qsecash_marketdata_xdp_v2_6.delivery_flag.dissect(buffer, index, packet, parent)

  -- Number Msg Entries: Binary Int.
  index, number_msg_entries = qse_qsecash_marketdata_xdp_v2_6.number_msg_entries.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
qse_qsecash_marketdata_xdp_v2_6.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_qse_qsecash_marketdata_xdp_v2_6.fields.packet_header, buffer(offset, 0))
    local index = qse_qsecash_marketdata_xdp_v2_6.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = qse_qsecash_marketdata_xdp_v2_6.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return qse_qsecash_marketdata_xdp_v2_6.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
qse_qsecash_marketdata_xdp_v2_6.packet = {}

-- Verify required size of Udp packet
qse_qsecash_marketdata_xdp_v2_6.packet.requiredsize = function(buffer)
  return buffer:len() >= qse_qsecash_marketdata_xdp_v2_6.packet_header.size
end

-- Dissect Packet
qse_qsecash_marketdata_xdp_v2_6.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 7 fields
  index, packet_header = qse_qsecash_marketdata_xdp_v2_6.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Delivery Flag
  local delivery_flag = buffer(index - 2, 1):uint()

  local message_conversion = delivery_flag == 17

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
    index, message = qse_qsecash_marketdata_xdp_v2_6.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_qse_qsecash_marketdata_xdp_v2_6.init()
end

-- Dissector for Qse QseCash MarketData Xdp 2.6
function omi_qse_qsecash_marketdata_xdp_v2_6.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_qse_qsecash_marketdata_xdp_v2_6.name

  -- Dissect protocol
  local protocol = parent:add(omi_qse_qsecash_marketdata_xdp_v2_6, buffer(), omi_qse_qsecash_marketdata_xdp_v2_6.description, "("..buffer:len().." Bytes)")
  return qse_qsecash_marketdata_xdp_v2_6.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Qse QseCash MarketData Xdp 2.6 (Udp)
local function omi_qse_qsecash_marketdata_xdp_v2_6_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not qse_qsecash_marketdata_xdp_v2_6.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_qse_qsecash_marketdata_xdp_v2_6
  omi_qse_qsecash_marketdata_xdp_v2_6.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Qse QseCash MarketData Xdp 2.6
omi_qse_qsecash_marketdata_xdp_v2_6:register_heuristic("udp", omi_qse_qsecash_marketdata_xdp_v2_6_udp_heuristic)

-- Register Qse QseCash MarketData Xdp 2.6 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_qse_qsecash_marketdata_xdp_v2_6)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Qatar Stock Exchange
--   Version: 2.6
--   Date: Monday, March 1, 2010
--   Specification: XDP for UTP Cash Version 2.6.pdf
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
