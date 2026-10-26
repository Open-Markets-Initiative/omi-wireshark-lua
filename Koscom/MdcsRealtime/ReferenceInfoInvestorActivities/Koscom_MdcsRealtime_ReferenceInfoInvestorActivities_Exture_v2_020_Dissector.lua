-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Koscom MdcsRealtime ReferenceInfoInvestorActivities Exture 2.020 Protocol
local omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020 = Proto("Omi.Koscom.MdcsRealtime.ReferenceInfoInvestorActivities.Exture.v2.020", "Koscom MdcsRealtime ReferenceInfoInvestorActivities Exture 2.020")

-- Protocol table
local koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Koscom MdcsRealtime ReferenceInfoInvestorActivities Exture 2.020 Fields
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.a_designated_number_for_an_issue = ProtoField.new("A Designated Number For An Issue", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.adesignatednumberforanissue", ftypes.UINT24, nil, nil, nil, "A designated number for each issue on a daily basis - Market(Information Product) : KOSPI(Securities A, Securities C), KOSDAQ(Securities B), KONEX(Securities B), Derivatives(DRV A), Spot Gold(Commodit.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.accumulated_ask_trading_value = ProtoField.new("Accumulated Ask Trading Value", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.accumulatedasktradingvalue", ftypes.DOUBLE, nil, nil, nil, "Accumulated Ask Trading Value.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.accumulated_ask_trading_volume = ProtoField.new("Accumulated Ask Trading Volume", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.accumulatedasktradingvolume", ftypes.UINT64, nil, nil, nil, "Accumulated Ask Trading Volume.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.accumulated_bid_trading_value = ProtoField.new("Accumulated Bid Trading Value", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.accumulatedbidtradingvalue", ftypes.DOUBLE, nil, nil, nil, "Accumulated Bid Trading Volume.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.accumulated_bid_trading_volume = ProtoField.new("Accumulated Bid Trading Volume", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.accumulatedbidtradingvolume", ftypes.UINT64, nil, nil, nil, "Accumulated Bid Trading Volume.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.accumulated_cash = ProtoField.new("Accumulated Cash", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.accumulatedcash", ftypes.DOUBLE, nil, nil, nil, "Accumulated cash position (26 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.accumulated_trading_value = ProtoField.new("Accumulated Trading Value", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.accumulatedtradingvalue", ftypes.UINT64, nil, nil, nil, "Accumulated trading value of the index constituents (12 ASCII digits). Unit: Million KRW.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.accumulated_trading_volume = ProtoField.new("Accumulated Trading Volume", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.accumulatedtradingvolume", ftypes.UINT64, nil, nil, nil, "Accumulated trading volume of the index constituents (12 ASCII digits). Unit: 1,000 shares.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.ask_treasury_stock_declaration_id = ProtoField.new("Ask Treasury Stock Declaration Id", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.asktreasurystockdeclarationid", ftypes.STRING, nil, nil, nil, "Ask_Treasury Stock Declaration ID 0: N/A N: Treasury Stock_direct_general S: Treasury Stock_direct_stock options 1 - 99999 Treasury Stock_Trust(report sequence number).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.average_convexity = ProtoField.new("Average Convexity", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.averageconvexity", ftypes.DOUBLE, nil, nil, nil, "Average convexity across the index constituents (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.average_coupon_price = ProtoField.new("Average Coupon Price", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.averagecouponprice", ftypes.DOUBLE, nil, nil, nil, "Average coupon price (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.average_current_yield = ProtoField.new("Average Current Yield", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.averagecurrentyield", ftypes.DOUBLE, nil, nil, nil, "Average current yield (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.average_duration = ProtoField.new("Average Duration", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.averageduration", ftypes.DOUBLE, nil, nil, nil, "Average duration across the index constituents (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.average_forward_ytm = ProtoField.new("Average Forward Ytm", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.averageforwardytm", ftypes.DOUBLE, nil, nil, nil, "Average forward yield to maturity (7 ASCII digits with 3 implied decimal places). Unit: percent.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.average_remaining_maturity_price = ProtoField.new("Average Remaining Maturity Price", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.averageremainingmaturityprice", ftypes.DOUBLE, nil, nil, nil, "Average remaining maturity (16 ASCII digits with 6 implied decimal places). Unit: year.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.average_spread = ProtoField.new("Average Spread", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.averagespread", ftypes.DOUBLE, nil, nil, nil, "Magnitude of the average spread (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.average_spread_sign = ProtoField.new("Average Spread Sign", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.averagespreadsign", ftypes.STRING, nil, nil, nil, "Sign of the average spread. '+' ascended, ' ' unchanged, '-' declined.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.average_yld = ProtoField.new("Average Yld", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.averageyld", ftypes.DOUBLE, nil, nil, nil, "Average yield across the index constituents (16 ASCII digits with 6 implied decimal places). Unit: percent.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.average_ytm = ProtoField.new("Average Ytm", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.averageytm", ftypes.DOUBLE, nil, nil, nil, "Average yield to maturity (7 ASCII digits with 3 implied decimal places). Unit: percent.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.base_date = ProtoField.new("Base Date", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.basedate", ftypes.STRING, nil, nil, nil, "Base date for the index calculation in YYYYMMDD format.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.base_time = ProtoField.new("Base Time", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.basetime", ftypes.STRING, nil, nil, nil, "Base time for the index calculation in HHMMSS format.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.basis_price = ProtoField.new("Basis Price", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.basisprice", ftypes.DOUBLE, nil, nil, nil, "Basis price of the constituent (10 ASCII digits with 2 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.bid_treasury_stock_declaration_id = ProtoField.new("Bid Treasury Stock Declaration Id", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.bidtreasurystockdeclarationid", ftypes.STRING, nil, nil, nil, "Bid_Treasury Stock Declaration ID 0: N/A N: Treasury Stock_direct_general S: Treasury Stock_direct_stock options 1 - 99999 Treasury Stock_Trust(report sequence number).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.bond_index_id = ProtoField.new("Bond Index Id", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.bondindexid", ftypes.STRING, nil, nil, nil, "Bond index identifier. Examples: BGG01T (KTB Index), BGG03T (KTB 10Y Index).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.business_date = ProtoField.new("Business Date", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.businessdate", ftypes.STRING, nil, nil, nil, "Business date for the index calculation in YYYYMMDD format.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.buyin_type_code = ProtoField.new("Buyin Type Code", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.buyintypecode", ftypes.STRING, nil, nil, nil, "Buy-in Type Code 1: Regular Buy-in 2: Same day Buy-in.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.buyin_volume = ProtoField.new("Buyin Volume", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.buyinvolume", ftypes.UINT64, nil, nil, nil, "Buy-in Volume.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.calculating_date = ProtoField.new("Calculating Date", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.calculatingdate", ftypes.STRING, nil, nil, nil, "Calculation date in YYYYMMDD format.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.calculating_time = ProtoField.new("Calculating Time", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.calculatingtime", ftypes.STRING, nil, nil, nil, "Calculation time in HHMMSS plus two trailing spaces.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.calculation_time = ProtoField.new("Calculation Time", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.calculationtime", ftypes.STRING, nil, nil, nil, "Calculation Time (HHMMSS).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.call_re_investment_index_weight = ProtoField.new("Call Re Investment Index Weight", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.callreinvestmentindexweight", ftypes.DOUBLE, nil, nil, nil, "Weighted call re-investment index value (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.call_reinvestment_index_krx = ProtoField.new("Call Re-Investment Index Krx", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.callreinvestmentindexkrx", ftypes.DOUBLE, nil, nil, nil, "Call re-investment index value (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.call_reinvestment_index_ktb = ProtoField.new("Call Re-Investment Index Ktb", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.callreinvestmentindexktb", ftypes.DOUBLE, nil, nil, nil, "Call re-investment index (11 ASCII digits with 4 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.cash_inflow = ProtoField.new("Cash Inflow", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.cashinflow", ftypes.DOUBLE, nil, nil, nil, "Cash inflow during the calculation period (26 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.clean_price = ProtoField.new("Clean Price", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.cleanprice", ftypes.DOUBLE, nil, nil, nil, "Clean price of the constituent (10 ASCII digits with 2 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.clean_price_index_krx = ProtoField.new("Clean Price Index Krx", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.cleanpriceindexkrx", ftypes.DOUBLE, nil, nil, nil, "Clean price index value (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.clean_price_index_ktb = ProtoField.new("Clean Price Index Ktb", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.cleanpriceindexktb", ftypes.DOUBLE, nil, nil, nil, "Clean price index (11 ASCII digits with 4 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.clean_price_index_weight = ProtoField.new("Clean Price Index Weight", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.cleanpriceindexweight", ftypes.DOUBLE, nil, nil, nil, "Weighted clean price index value (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.convexity = ProtoField.new("Convexity", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.convexity", ftypes.DOUBLE, nil, nil, nil, "Bond index average convexity (7 ASCII digits with 3 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.covered_short_selling_trading_value = ProtoField.new("Covered Short Selling Trading Value", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.coveredshortsellingtradingvalue", ftypes.DOUBLE, nil, nil, nil, "Covered Short Selling_Trading Value.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.covered_short_selling_trading_volume = ProtoField.new("Covered Short Selling Trading Volume", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.coveredshortsellingtradingvolume", ftypes.UINT64, nil, nil, nil, "Covered Short Selling_Trading Volume.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.currency_code = ProtoField.new("Currency Code", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.currencycode", ftypes.STRING, nil, nil, nil, "ISO 4217 currency code of the index value.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.current_time = ProtoField.new("Current Time", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.currenttime", ftypes.STRING, nil, nil, nil, "Current time in HHMM format, transmitted at one-minute intervals.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.duration = ProtoField.new("Duration", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.duration", ftypes.DOUBLE, nil, nil, nil, "Bond index average duration (7 ASCII digits with 3 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.end_keyword = ProtoField.new("End Keyword", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.endkeyword", ftypes.UINT8, nil, nil, nil, "End of text sentinel (0xFF).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.filler_3 = ProtoField.new("Filler 3", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.filler3", ftypes.STRING, nil, nil, nil, "Reserved filler. ASCII spaces.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.filler_4 = ProtoField.new("Filler 4", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.filler4", ftypes.STRING, nil, nil, nil, "Reserved filler. Always 4 ASCII space characters.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.futures_basis_price = ProtoField.new("Futures Basis Price", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.futuresbasisprice", ftypes.DOUBLE, nil, nil, nil, "Futures basis price (10 ASCII digits with 2 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.group_code = ProtoField.new("Group Code", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.groupcode", ftypes.STRING, nil, nil, nil, "Bond Prime Index Group Code. JA000 group identifier; check the TR-CODE for the specific group.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.index = ProtoField.new("Index", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.index", ftypes.DOUBLE, nil, nil, nil, "Current index value (9 ASCII digits with 2 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.index_change_against_the_previous_day = ProtoField.new("Index Change Against The Previous Day", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.indexchangeagainstthepreviousday", ftypes.DOUBLE, nil, nil, nil, "Magnitude of the index change against the previous day (9 ASCII digits with 2 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.index_change_sign_against_the_previous_day = ProtoField.new("Index Change Sign Against The Previous Day", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.indexchangesignagainstthepreviousday", ftypes.STRING, nil, nil, nil, "Sign of the index change against the previous day. '+' ascended, ' ' unchanged, '-' declined.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.index_constituent = ProtoField.new("Index Constituent", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.indexconstituent", ftypes.STRING, nil, nil, nil, "Flag identifying whether the security is included in the index. '0' securities are included in the ETF but not in the Index; '1' securities are included in the Index.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.index_id = ProtoField.new("Index Id", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.indexid", ftypes.STRING, nil, nil, nil, "Index ID comprising of 6 digits.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.index_market_capitalization = ProtoField.new("Index Market Capitalization", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.indexmarketcapitalization", ftypes.UINT64, nil, nil, nil, "Total market capitalization of the index constituents (20 ASCII digits). Unit: KRW.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.index_number_of_securities = ProtoField.new("Index Number Of Securities", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.indexnumberofsecurities", ftypes.UINT32, nil, nil, nil, "Number of constituent securities included in the index (8 ASCII digits).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.investor_code = ProtoField.new("Investor Code", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.investorcode", ftypes.STRING, nil, nil, nil, "Investor Code 1000: Financial Investors 2000: Insurance Company 3000: Asset Management Company and Investment Trust Company 3100: Private Equity Fund 4000: Banks 5000: Other Financial Institutions 600.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.isin_code = ProtoField.new("Isin Code", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.isincode", ftypes.STRING, nil, nil, nil, "ISIN Code.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.issued_amount = ProtoField.new("Issued Amount", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.issuedamount", ftypes.UINT64, nil, nil, nil, "Total issued amount across constituents (20 ASCII digits). Unit: KRW.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.issued_amount_weight = ProtoField.new("Issued Amount Weight", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.issuedamountweight", ftypes.DOUBLE, nil, nil, nil, "Weighted issued amount (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.market_capitalization_weight = ProtoField.new("Market Capitalization Weight", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.marketcapitalizationweight", ftypes.DOUBLE, nil, nil, nil, "Weighted market capitalization (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.market_price_index_krx = ProtoField.new("Market Price Index Krx", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.marketpriceindexkrx", ftypes.DOUBLE, nil, nil, nil, "Market price index value (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.market_price_index_ktb = ProtoField.new("Market Price Index Ktb", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.marketpriceindexktb", ftypes.DOUBLE, nil, nil, nil, "Market price index (11 ASCII digits with 4 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.market_price_index_weight = ProtoField.new("Market Price Index Weight", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.marketpriceindexweight", ftypes.DOUBLE, nil, nil, nil, "Weighted market price index value (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.maturity_code = ProtoField.new("Maturity Code", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.maturitycode", ftypes.STRING, nil, nil, nil, "Bond Prime Index Maturity Code. JA000 maturity identifier; check the TR-CODE for the specific maturity bucket.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.messagesequencenumber", ftypes.UINT32, nil, nil, nil, "A message sequence number given by Market data team - Market data: seq number is given by instruments and boards (※ only for high-bandwidth service) - Batch Data: seq number is given by Information Ca.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.reinvest_call_cash = ProtoField.new("Reinvest Call Cash", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.reinvestcallcash", ftypes.DOUBLE, nil, nil, nil, "Reinvested call cash during the calculation period (26 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.security_group_id = ProtoField.new("Security Group Id", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.securitygroupid", ftypes.STRING, nil, nil, nil, "Security Group ID (Equities, Investment firms, ETF, ELW, Futures, Options etc.).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.session_id = ProtoField.new("Session Id", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.sessionid", ftypes.STRING, nil, nil, nil, "A Session is a subordinate concept of a Board and each session follows different trading methods and rules.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.total_earnings_index = ProtoField.new("Total Earnings Index", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.totalearningsindex", ftypes.DOUBLE, nil, nil, nil, "Total earnings index value (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.total_earnings_index_weight = ProtoField.new("Total Earnings Index Weight", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.totalearningsindexweight", ftypes.DOUBLE, nil, nil, nil, "Weighted total earnings index value (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.total_profit_index = ProtoField.new("Total Profit Index", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.totalprofitindex", ftypes.DOUBLE, nil, nil, nil, "Total profit index (11 ASCII digits with 4 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.tr_code = ProtoField.new("Tr Code", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.trcode", ftypes.STRING, nil, nil, nil, "Five-character ASCII TR-CODE identifying the disseminated market data record. Formed by concatenating a 2-character Data Category (message family, e.g. \"IA\" Krx Index, \"B6\" Quote, \"C4\" Negotiated Trade, \"A7\" Market Operation TS) with a 3-character Information Category (market/product variant, typically 2-digit information code plus 1-character market code, e.g. \"01S\" = Equities/KOSPI, \"01F\" = Derivatives, \"000\" = All Market).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.trading_price = ProtoField.new("Trading Price", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.tradingprice", ftypes.DOUBLE, nil, nil, nil, "The price at which a security is currently selling in the market.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.trading_volume = ProtoField.new("Trading Volume", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.tradingvolume", ftypes.UINT64, nil, nil, nil, "Trading volume.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.transmission_date = ProtoField.new("Transmission Date", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.transmissiondate", ftypes.STRING, nil, nil, nil, "Transmission Date.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.transmission_time = ProtoField.new("Transmission Time", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.transmissiontime", ftypes.STRING, nil, nil, nil, "Transmission time in HHMMSSMM format (8 ASCII digits).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.uptick_rule_applied_covered_short_selling_trading_value = ProtoField.new("Uptick Rule Applied Covered Short Selling Trading Value", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.uptickruleappliedcoveredshortsellingtradingvalue", ftypes.DOUBLE, nil, nil, nil, "Uptick Rule Applied Covered Short Selling Trading Value.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.uptick_rule_applied_covered_short_selling_trading_volume = ProtoField.new("Uptick Rule Applied Covered Short Selling Trading Volume", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.uptickruleappliedcoveredshortsellingtradingvolume", ftypes.UINT64, nil, nil, nil, "Uptick Rule Applied Covered Short Selling Trading Volume.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.uptick_rule_unapplied_covered_short_selling_trading_value = ProtoField.new("Uptick Rule Unapplied Covered Short Selling Trading Value", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.uptickruleunappliedcoveredshortsellingtradingvalue", ftypes.DOUBLE, nil, nil, nil, "Uptick Rule Unapplied Covered Short Selling Trading Value.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.uptick_rule_unapplied_covered_short_selling_trading_volume = ProtoField.new("Uptick Rule Unapplied Covered Short Selling Trading Volume", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.uptickruleunappliedcoveredshortsellingtradingvolume", ftypes.UINT64, nil, nil, nil, "Uptick Rule Unapplied Covered Short Selling Trading Volume.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.weight_of_call_re_investment_index_value_for_integrity_index_weight = ProtoField.new("Weight Of Call Re Investment Index Value For Integrity Index Weight", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.weightofcallreinvestmentindexvalueforintegrityindexweight", ftypes.DOUBLE, nil, nil, nil, "Integrity-index weight for the call re-investment index value (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.weight_of_clean_index_value_for_integrity_index_weight = ProtoField.new("Weight Of Clean Index Value For Integrity Index Weight", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.weightofcleanindexvalueforintegrityindexweight", ftypes.DOUBLE, nil, nil, nil, "Integrity-index weight for the clean index value (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.weight_of_sum_index_value_for_integrity_index_weight = ProtoField.new("Weight Of Sum Index Value For Integrity Index Weight", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.weightofsumindexvalueforintegrityindexweight", ftypes.DOUBLE, nil, nil, nil, "Integrity-index weight for the sum index value (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.weight_of_zero_re_investment_index_value_for_integrity_index_weight = ProtoField.new("Weight Of Zero Re Investment Index Value For Integrity Index Weight", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.weightofzeroreinvestmentindexvalueforintegrityindexweight", ftypes.DOUBLE, nil, nil, nil, "Integrity-index weight for the zero re-investment index value (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.zero_re_investment_index_weight = ProtoField.new("Zero Re Investment Index Weight", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.zeroreinvestmentindexweight", ftypes.DOUBLE, nil, nil, nil, "Weighted zero re-investment index value (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.zero_reinvestment_index_krx = ProtoField.new("Zero Re-Investment Index Krx", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.zeroreinvestmentindexkrx", ftypes.DOUBLE, nil, nil, nil, "Zero re-investment index value (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.zero_reinvestment_index_ktb = ProtoField.new("Zero Re-Investment Index Ktb", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.zeroreinvestmentindexktb", ftypes.DOUBLE, nil, nil, nil, "Zero re-investment index (11 ASCII digits with 4 implied decimal places).")

-- Koscom MdcsRealtime ReferenceInfoInvestorActivities Exture 2.020 Framing
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.packet = ProtoField.new("Packet", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.packet", ftypes.STRING, nil, nil, nil, "Koscom MDCS Exture Udp Packet")

-- Koscom MdcsRealtime ReferenceInfoInvestorActivities 2.020 Application Messages
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.bond_index_krx_message = ProtoField.new("Bond Index Krx Message", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.bondindexkrxmessage", ftypes.STRING, nil, nil, nil, "KRX Aggregate Bond Index (AA- or higher) end-of-day index data. Reports clean-price, total-earnings, market-price, and re-investment indices, their weighted variants, integrity-index weights, average duration, convexity, yield, coupon, remaining maturity, spread, market capitalization, and accumulated cash flows for one Bond Index ID.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.bond_ktb_index_message = ProtoField.new("Bond Ktb Index Message", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.bondktbindexmessage", ftypes.STRING, nil, nil, nil, "Bond KTB Index intraday calculation. Reports total profit, clean price, market price, call and zero re-investment indices, futures basis price, duration, convexity, and YTM for one KTB-based Bond Index ID.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.bond_ktb_index_term_structure_message = ProtoField.new("Bond Ktb Index Term Structure Message", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.bondktbindextermstructuremessage", ftypes.STRING, nil, nil, nil, "Bond KTB Index TermStructure. One record per ISIN constituent of a KTB Index showing its basis price, clean price, YTM, and the Index Constituent flag.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.bond_prime_index_message = ProtoField.new("Bond Prime Index Message", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.bondprimeindexmessage", ftypes.STRING, nil, nil, nil, "Bond Prime Index intraday calculation. Reports clean and total-earnings index values plus their weighted variants and average duration / convexity / yield for one Group Code and Maturity Code pair.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.global_index_message = ProtoField.new("Global Index Message", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.globalindexmessage", ftypes.STRING, nil, nil, nil, "Global Index real-time message. Reports the current value of a foreign index referenced by KRX (e.g. Korea-Taiwan IT Premier, Korea-China Index) in the index's native currency.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.krx_estimated_index_message = ProtoField.new("Krx Estimated Index Message", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.krxestimatedindexmessage", ftypes.STRING, nil, nil, nil, "Krx Estimated Index real-time message. Reports the estimated index value during the pre-opening simultaneous-trading window or during regular session estimation. Identical field layout to the Krx Index Message.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.krx_index_message = ProtoField.new("Krx Index Message", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.krxindexmessage", ftypes.STRING, nil, nil, nil, "Krx Index real-time message. Reports current index value, change against previous day, accumulated trading volume, and accumulated trading value for one index. The Index ID field identifies which index group (KRX Index Group 1/2/3, Sector A/B, Gold Spot, or Equity Derivatives) this record belongs to.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.polling_data_message = ProtoField.new("Polling Data Message", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.pollingdatamessage", ftypes.STRING, nil, nil, nil, "Polling data transmitted at one-minute intervals on every market data feed. Carries Current Time as a heartbeat.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.securities_buy_in_volume_message = ProtoField.new("Securities Buy In Volume Message", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.securitiesbuyinvolumemessage", ftypes.STRING, nil, nil, nil, "Buy-in Volume reference.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.securities_investor_activities_per_commodities_message = ProtoField.new("Securities Investor Activities Per Commodities Message", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.securitiesinvestoractivitiespercommoditiesmessage", ftypes.STRING, nil, nil, nil, "Investor Activities per Commodities.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.securities_investor_activities_per_industry_message = ProtoField.new("Securities Investor Activities Per Industry Message", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.securitiesinvestoractivitiesperindustrymessage", ftypes.STRING, nil, nil, nil, "Investor Activities per Industry. Aggregated bid/ask volumes and values per investor category and industry.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.securities_investor_activities_per_issue_eod_message = ProtoField.new("Securities Investor Activities Per Issue Eod Message", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.securitiesinvestoractivitiesperissueeodmessage", ftypes.STRING, nil, nil, nil, "Investor Activities per Issue EOD. Aggregated bid/ask volumes and values per investor category and ISIN at end-of-day.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.securities_short_selling_message = ProtoField.new("Securities Short Selling Message", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.securitiesshortsellingmessage", ftypes.STRING, nil, nil, nil, "Short Selling activity per issue.")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.securities_treasury_stocks_traded_message = ProtoField.new("Securities Treasury Stocks Traded Message", "koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.securitiestreasurystockstradedmessage", ftypes.STRING, nil, nil, nil, "Treasury Stocks Traded Information. Real-time treasury-stock trade dissemination per issue.")

-- Koscom MdcsRealtime ReferenceInfoInvestorActivities Exture 2.020 Expert Info
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts = {}
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number = ProtoExpert.new("koscom.mdcsrealtime.referenceinfoinvestoractivities.exture.v2.020.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts = { koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number }

-----------------------------------------------------------------------
-- Koscom MdcsRealtime ReferenceInfoInvestorActivities Exture 2.020 Formatting
-----------------------------------------------------------------------

-- Text field character encoding (Wireshark ENC_ constant)
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.text_encoding = ENC_EUC_KR


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Koscom MdcsRealtime ReferenceInfoInvestorActivities Exture 2.020 Element Dissection Options
show.application_messages = true
show.structs = true

-- Register Koscom MdcsRealtime ReferenceInfoInvestorActivities Exture 2.020 Show Options
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")

-- Handle changed preferences
function omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.prefs.show_application_messages then
    show.application_messages = omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.prefs.show_application_messages
  end
  if show.structs ~= omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.prefs.show_structs then
    show.structs = omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.prefs.show_structs
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

-- trim leading spaces
trim_left_spaces = function(str)
  local start = 1

  while start <= str:len() and str:byte(start) == 0x20 do
    start = start + 1
  end

  return str:sub(start)
end

-- trim leading zeros
trim_left_zeros = function(str)
  local start = 1

  while start < str:len() and str:byte(start) == 0x30 do
    start = start + 1
  end

  return str:sub(start)
end

-- the number a decimal writing its own point spells
format_decimal_text = function(str)
  local text = trim_left_spaces(str)

  if text == "" then
    return nil
  end

  local sign = ""
  local first = text:sub(1, 1)

  if first == "-" or first == "+" then
    sign = first
    text = text:sub(2)
  end

  text = trim_left_zeros(text)

  if text:sub(1, 1) == "." then
    text = "0"..text
  end

  return sign..text
end

-- ascii digits as an unsigned 64 bit value, nil when the run is no number
ascii_to_uint64 = function(str)
  local digits = str:match("^%s*(%d+)%s*$")

  if digits == nil then
    return nil
  end

  local value = UInt64.new(digits)

  -- UInt64.new stops at its maximum rather than failing, so an overrun would
  -- read as that maximum. Nineteen digits always fit, so only a longer run is
  -- read back and compared against the digits it came from
  if #digits > 19 then
    local significant = digits:match("^0*(%d+)$")

    if tostring(value) ~= significant then
      return nil
    end
  end

  return value
end


-----------------------------------------------------------------------
-- Koscom MdcsRealtime ReferenceInfoInvestorActivities Exture 2.020 Fields
-----------------------------------------------------------------------

-- A Designated Number For An Issue
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.a_designated_number_for_an_issue = {}

-- Size: A Designated Number For An Issue
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.a_designated_number_for_an_issue.size = 6

-- Display: A Designated Number For An Issue
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.a_designated_number_for_an_issue.display = function(value)
  return "A Designated Number For An Issue: "..value
end

-- Dissect: A Designated Number For An Issue
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.a_designated_number_for_an_issue.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.a_designated_number_for_an_issue.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.a_designated_number_for_an_issue, range, value, "A Designated Number For An Issue: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "A Designated Number For An Issue is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.a_designated_number_for_an_issue.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.a_designated_number_for_an_issue, range, value, display)

  return offset + length, value
end

-- Accumulated Ask Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_ask_trading_value = {}

-- Size: Accumulated Ask Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_ask_trading_value.size = 22

-- Display: Accumulated Ask Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_ask_trading_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_ask_trading_value.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Accumulated Ask Trading Value: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Accumulated Ask Trading Value: "..text.." (expected 3 places)"
  end

  return "Accumulated Ask Trading Value: "..text
end

-- Dissect: Accumulated Ask Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_ask_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_ask_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.accumulated_ask_trading_value, range, value, "Accumulated Ask Trading Value: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Accumulated Ask Trading Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_ask_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.accumulated_ask_trading_value, range, value, display)

  return offset + length, value
end

-- Accumulated Ask Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_ask_trading_volume = {}

-- Size: Accumulated Ask Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_ask_trading_volume.size = 12

-- Display: Accumulated Ask Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_ask_trading_volume.display = function(value)
  return "Accumulated Ask Trading Volume: "..value
end

-- Dissect: Accumulated Ask Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_ask_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_ask_trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.accumulated_ask_trading_volume, range, value, "Accumulated Ask Trading Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Accumulated Ask Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_ask_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.accumulated_ask_trading_volume, range, value, display)

  return offset + length, value
end

-- Accumulated Bid Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_bid_trading_value = {}

-- Size: Accumulated Bid Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_bid_trading_value.size = 22

-- Display: Accumulated Bid Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_bid_trading_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_bid_trading_value.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Accumulated Bid Trading Value: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Accumulated Bid Trading Value: "..text.." (expected 3 places)"
  end

  return "Accumulated Bid Trading Value: "..text
end

-- Dissect: Accumulated Bid Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_bid_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_bid_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.accumulated_bid_trading_value, range, value, "Accumulated Bid Trading Value: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Accumulated Bid Trading Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_bid_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.accumulated_bid_trading_value, range, value, display)

  return offset + length, value
end

-- Accumulated Bid Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_bid_trading_volume = {}

-- Size: Accumulated Bid Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_bid_trading_volume.size = 12

-- Display: Accumulated Bid Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_bid_trading_volume.display = function(value)
  return "Accumulated Bid Trading Volume: "..value
end

-- Dissect: Accumulated Bid Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_bid_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_bid_trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.accumulated_bid_trading_volume, range, value, "Accumulated Bid Trading Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Accumulated Bid Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_bid_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.accumulated_bid_trading_volume, range, value, display)

  return offset + length, value
end

-- Accumulated Cash
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_cash = {}

-- Size: Accumulated Cash
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_cash.size = 26

-- Display: Accumulated Cash
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_cash.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_cash.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Accumulated Cash: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Accumulated Cash: "..text.." (expected 6 places)"
  end

  return "Accumulated Cash: "..text
end

-- Dissect: Accumulated Cash
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_cash.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_cash.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.accumulated_cash, range, value, "Accumulated Cash: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Accumulated Cash is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_cash.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.accumulated_cash, range, value, display)

  return offset + length, value
end

-- Accumulated Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_trading_value = {}

-- Size: Accumulated Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_trading_value.size = 12

-- Display: Accumulated Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_trading_value.display = function(value)
  return "Accumulated Trading Value: "..value
end

-- Dissect: Accumulated Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_trading_value.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.accumulated_trading_value, range, value, "Accumulated Trading Value: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Accumulated Trading Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.accumulated_trading_value, range, value, display)

  return offset + length, value
end

-- Accumulated Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_trading_volume = {}

-- Size: Accumulated Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_trading_volume.size = 12

-- Display: Accumulated Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_trading_volume.display = function(value)
  return "Accumulated Trading Volume: "..value
end

-- Dissect: Accumulated Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.accumulated_trading_volume, range, value, "Accumulated Trading Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Accumulated Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.accumulated_trading_volume, range, value, display)

  return offset + length, value
end

-- Ask Treasury Stock Declaration Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.ask_treasury_stock_declaration_id = {}

-- Size: Ask Treasury Stock Declaration Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.ask_treasury_stock_declaration_id.size = 5

-- Display: Ask Treasury Stock Declaration Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.ask_treasury_stock_declaration_id.display = function(value)
  return "Ask Treasury Stock Declaration Id: "..value
end

-- Dissect: Ask Treasury Stock Declaration Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.ask_treasury_stock_declaration_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.ask_treasury_stock_declaration_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.ask_treasury_stock_declaration_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.ask_treasury_stock_declaration_id, range, value, display)

  return offset + length, value
end

-- Average Convexity
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_convexity = {}

-- Size: Average Convexity
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_convexity.size = 16

-- Display: Average Convexity
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_convexity.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_convexity.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Average Convexity: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Average Convexity: "..text.." (expected 6 places)"
  end

  return "Average Convexity: "..text
end

-- Dissect: Average Convexity
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_convexity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_convexity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.average_convexity, range, value, "Average Convexity: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Average Convexity is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_convexity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.average_convexity, range, value, display)

  return offset + length, value
end

-- Average Coupon Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_coupon_price = {}

-- Size: Average Coupon Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_coupon_price.size = 16

-- Display: Average Coupon Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_coupon_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_coupon_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Average Coupon Price: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Average Coupon Price: "..text.." (expected 6 places)"
  end

  return "Average Coupon Price: "..text
end

-- Dissect: Average Coupon Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_coupon_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_coupon_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.average_coupon_price, range, value, "Average Coupon Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Average Coupon Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_coupon_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.average_coupon_price, range, value, display)

  return offset + length, value
end

-- Average Current Yield
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_current_yield = {}

-- Size: Average Current Yield
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_current_yield.size = 16

-- Display: Average Current Yield
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_current_yield.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_current_yield.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Average Current Yield: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Average Current Yield: "..text.." (expected 6 places)"
  end

  return "Average Current Yield: "..text
end

-- Dissect: Average Current Yield
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_current_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_current_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.average_current_yield, range, value, "Average Current Yield: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Average Current Yield is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_current_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.average_current_yield, range, value, display)

  return offset + length, value
end

-- Average Duration
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_duration = {}

-- Size: Average Duration
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_duration.size = 16

-- Display: Average Duration
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_duration.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_duration.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Average Duration: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Average Duration: "..text.." (expected 6 places)"
  end

  return "Average Duration: "..text
end

-- Dissect: Average Duration
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_duration.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_duration.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.average_duration, range, value, "Average Duration: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Average Duration is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_duration.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.average_duration, range, value, display)

  return offset + length, value
end

-- Average Forward Ytm
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_forward_ytm = {}

-- Size: Average Forward Ytm
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_forward_ytm.size = 7

-- Display: Average Forward Ytm
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_forward_ytm.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_forward_ytm.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Average Forward Ytm: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Average Forward Ytm: "..text.." (expected 3 places)"
  end

  return "Average Forward Ytm: "..text
end

-- Dissect: Average Forward Ytm
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_forward_ytm.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_forward_ytm.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.average_forward_ytm, range, value, "Average Forward Ytm: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Average Forward Ytm is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_forward_ytm.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.average_forward_ytm, range, value, display)

  return offset + length, value
end

-- Average Remaining Maturity Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_remaining_maturity_price = {}

-- Size: Average Remaining Maturity Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_remaining_maturity_price.size = 16

-- Display: Average Remaining Maturity Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_remaining_maturity_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_remaining_maturity_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Average Remaining Maturity Price: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Average Remaining Maturity Price: "..text.." (expected 6 places)"
  end

  return "Average Remaining Maturity Price: "..text
end

-- Dissect: Average Remaining Maturity Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_remaining_maturity_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_remaining_maturity_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.average_remaining_maturity_price, range, value, "Average Remaining Maturity Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Average Remaining Maturity Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_remaining_maturity_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.average_remaining_maturity_price, range, value, display)

  return offset + length, value
end

-- Average Spread
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_spread = {}

-- Size: Average Spread
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_spread.size = 16

-- Display: Average Spread
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_spread.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_spread.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Average Spread: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Average Spread: "..text.." (expected 6 places)"
  end

  return "Average Spread: "..text
end

-- Dissect: Average Spread
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_spread.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_spread.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.average_spread, range, value, "Average Spread: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Average Spread is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_spread.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.average_spread, range, value, display)

  return offset + length, value
end

-- Average Spread Sign
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_spread_sign = {}

-- Size: Average Spread Sign
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_spread_sign.size = 1

-- Display: Average Spread Sign
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_spread_sign.display = function(value)
  if value == "+" then
    return "Average Spread Sign: Ascended (+)"
  end
  if value == " " then
    return "Average Spread Sign: Unchanged (<whitespace>)"
  end
  if value == "-" then
    return "Average Spread Sign: Declined (-)"
  end

  return "Average Spread Sign: Unknown("..value..")"
end

-- Dissect: Average Spread Sign
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_spread_sign.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_spread_sign.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_spread_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.average_spread_sign, range, value, display)

  return offset + length, value
end

-- Average Yld
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_yld = {}

-- Size: Average Yld
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_yld.size = 16

-- Display: Average Yld
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_yld.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_yld.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Average Yld: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Average Yld: "..text.." (expected 6 places)"
  end

  return "Average Yld: "..text
end

-- Dissect: Average Yld
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_yld.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_yld.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.average_yld, range, value, "Average Yld: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Average Yld is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_yld.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.average_yld, range, value, display)

  return offset + length, value
end

-- Average Ytm
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_ytm = {}

-- Size: Average Ytm
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_ytm.size = 7

-- Display: Average Ytm
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_ytm.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_ytm.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Average Ytm: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Average Ytm: "..text.." (expected 3 places)"
  end

  return "Average Ytm: "..text
end

-- Dissect: Average Ytm
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_ytm.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_ytm.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.average_ytm, range, value, "Average Ytm: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Average Ytm is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_ytm.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.average_ytm, range, value, display)

  return offset + length, value
end

-- Base Date
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.base_date = {}

-- Size: Base Date
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.base_date.size = 8

-- Display: Base Date
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.base_date.display = function(value)
  if #value < 8 then
    return "Base Date: "..value
  end

  return "Base Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Base Date
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.base_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.base_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.base_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.base_date, range, value, display)

  return offset + length, value
end

-- Base Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.base_time = {}

-- Size: Base Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.base_time.size = 6

-- Display: Base Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.base_time.display = function(value)
  if #value < 6 then
    return "Base Time: "..value
  end

  return "Base Time: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Base Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.base_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.base_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.base_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.base_time, range, value, display)

  return offset + length, value
end

-- Basis Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.basis_price = {}

-- Size: Basis Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.basis_price.size = 10

-- Display: Basis Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.basis_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.basis_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Basis Price: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 2 then
    return "Basis Price: "..text.." (expected 2 places)"
  end

  return "Basis Price: "..text
end

-- Dissect: Basis Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.basis_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.basis_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.basis_price, range, value, "Basis Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Basis Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.basis_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.basis_price, range, value, display)

  return offset + length, value
end

-- Bid Treasury Stock Declaration Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bid_treasury_stock_declaration_id = {}

-- Size: Bid Treasury Stock Declaration Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bid_treasury_stock_declaration_id.size = 5

-- Display: Bid Treasury Stock Declaration Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bid_treasury_stock_declaration_id.display = function(value)
  return "Bid Treasury Stock Declaration Id: "..value
end

-- Dissect: Bid Treasury Stock Declaration Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bid_treasury_stock_declaration_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bid_treasury_stock_declaration_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bid_treasury_stock_declaration_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.bid_treasury_stock_declaration_id, range, value, display)

  return offset + length, value
end

-- Bond Index Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_index_id = {}

-- Size: Bond Index Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_index_id.size = 6

-- Display: Bond Index Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_index_id.display = function(value)
  return "Bond Index Id: "..value
end

-- Dissect: Bond Index Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_index_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_index_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_index_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.bond_index_id, range, value, display)

  return offset + length, value
end

-- Business Date
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.business_date = {}

-- Size: Business Date
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.business_date.size = 8

-- Display: Business Date
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.business_date.display = function(value)
  if #value < 8 then
    return "Business Date: "..value
  end

  return "Business Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Business Date
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.business_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.business_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.business_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.business_date, range, value, display)

  return offset + length, value
end

-- Buyin Type Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.buyin_type_code = {}

-- Size: Buyin Type Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.buyin_type_code.size = 1

-- Display: Buyin Type Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.buyin_type_code.display = function(value)
  return "Buyin Type Code: "..value
end

-- Dissect: Buyin Type Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.buyin_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.buyin_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.buyin_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.buyin_type_code, range, value, display)

  return offset + length, value
end

-- Buyin Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.buyin_volume = {}

-- Size: Buyin Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.buyin_volume.size = 15

-- Display: Buyin Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.buyin_volume.display = function(value)
  return "Buyin Volume: "..value
end

-- Dissect: Buyin Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.buyin_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.buyin_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.buyin_volume, range, value, "Buyin Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Buyin Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.buyin_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.buyin_volume, range, value, display)

  return offset + length, value
end

-- Calculating Date
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.calculating_date = {}

-- Size: Calculating Date
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.calculating_date.size = 8

-- Display: Calculating Date
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.calculating_date.display = function(value)
  if #value < 8 then
    return "Calculating Date: "..value
  end

  return "Calculating Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Calculating Date
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.calculating_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.calculating_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.calculating_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.calculating_date, range, value, display)

  return offset + length, value
end

-- Calculating Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.calculating_time = {}

-- Size: Calculating Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.calculating_time.size = 8

-- Display: Calculating Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.calculating_time.display = function(value)
  if #value < 6 then
    return "Calculating Time: "..value
  end

  return "Calculating Time: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Calculating Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.calculating_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.calculating_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.calculating_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.calculating_time, range, value, display)

  return offset + length, value
end

-- Calculation Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.calculation_time = {}

-- Size: Calculation Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.calculation_time.size = 6

-- Display: Calculation Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.calculation_time.display = function(value)
  if #value < 6 then
    return "Calculation Time: "..value
  end

  return "Calculation Time: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Calculation Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.calculation_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.calculation_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.calculation_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.calculation_time, range, value, display)

  return offset + length, value
end

-- Call Re Investment Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.call_re_investment_index_weight = {}

-- Size: Call Re Investment Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.call_re_investment_index_weight.size = 16

-- Display: Call Re Investment Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.call_re_investment_index_weight.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.call_re_investment_index_weight.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Call Re Investment Index Weight: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Call Re Investment Index Weight: "..text.." (expected 6 places)"
  end

  return "Call Re Investment Index Weight: "..text
end

-- Dissect: Call Re Investment Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.call_re_investment_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.call_re_investment_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.call_re_investment_index_weight, range, value, "Call Re Investment Index Weight: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Call Re Investment Index Weight is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.call_re_investment_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.call_re_investment_index_weight, range, value, display)

  return offset + length, value
end

-- Call Re-Investment Index Krx
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.call_reinvestment_index_krx = {}

-- Size: Call Re-Investment Index Krx
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.call_reinvestment_index_krx.size = 16

-- Display: Call Re-Investment Index Krx
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.call_reinvestment_index_krx.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.call_reinvestment_index_krx.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Call Re-Investment Index Krx: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Call Re-Investment Index Krx: "..text.." (expected 6 places)"
  end

  return "Call Re-Investment Index Krx: "..text
end

-- Dissect: Call Re-Investment Index Krx
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.call_reinvestment_index_krx.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.call_reinvestment_index_krx.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.call_reinvestment_index_krx, range, value, "Call Re-Investment Index Krx: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Call Re-Investment Index Krx is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.call_reinvestment_index_krx.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.call_reinvestment_index_krx, range, value, display)

  return offset + length, value
end

-- Call Re-Investment Index Ktb
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.call_reinvestment_index_ktb = {}

-- Size: Call Re-Investment Index Ktb
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.call_reinvestment_index_ktb.size = 11

-- Display: Call Re-Investment Index Ktb
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.call_reinvestment_index_ktb.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.call_reinvestment_index_ktb.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Call Re-Investment Index Ktb: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 4 then
    return "Call Re-Investment Index Ktb: "..text.." (expected 4 places)"
  end

  return "Call Re-Investment Index Ktb: "..text
end

-- Dissect: Call Re-Investment Index Ktb
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.call_reinvestment_index_ktb.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.call_reinvestment_index_ktb.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.call_reinvestment_index_ktb, range, value, "Call Re-Investment Index Ktb: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Call Re-Investment Index Ktb is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.call_reinvestment_index_ktb.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.call_reinvestment_index_ktb, range, value, display)

  return offset + length, value
end

-- Cash Inflow
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.cash_inflow = {}

-- Size: Cash Inflow
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.cash_inflow.size = 26

-- Display: Cash Inflow
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.cash_inflow.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.cash_inflow.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Cash Inflow: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Cash Inflow: "..text.." (expected 6 places)"
  end

  return "Cash Inflow: "..text
end

-- Dissect: Cash Inflow
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.cash_inflow.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.cash_inflow.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.cash_inflow, range, value, "Cash Inflow: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Cash Inflow is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.cash_inflow.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.cash_inflow, range, value, display)

  return offset + length, value
end

-- Clean Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price = {}

-- Size: Clean Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price.size = 10

-- Display: Clean Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Clean Price: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 2 then
    return "Clean Price: "..text.." (expected 2 places)"
  end

  return "Clean Price: "..text
end

-- Dissect: Clean Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.clean_price, range, value, "Clean Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Clean Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.clean_price, range, value, display)

  return offset + length, value
end

-- Clean Price Index Krx
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price_index_krx = {}

-- Size: Clean Price Index Krx
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price_index_krx.size = 16

-- Display: Clean Price Index Krx
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price_index_krx.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price_index_krx.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Clean Price Index Krx: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Clean Price Index Krx: "..text.." (expected 6 places)"
  end

  return "Clean Price Index Krx: "..text
end

-- Dissect: Clean Price Index Krx
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price_index_krx.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price_index_krx.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.clean_price_index_krx, range, value, "Clean Price Index Krx: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Clean Price Index Krx is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price_index_krx.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.clean_price_index_krx, range, value, display)

  return offset + length, value
end

-- Clean Price Index Ktb
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price_index_ktb = {}

-- Size: Clean Price Index Ktb
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price_index_ktb.size = 11

-- Display: Clean Price Index Ktb
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price_index_ktb.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price_index_ktb.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Clean Price Index Ktb: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 4 then
    return "Clean Price Index Ktb: "..text.." (expected 4 places)"
  end

  return "Clean Price Index Ktb: "..text
end

-- Dissect: Clean Price Index Ktb
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price_index_ktb.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price_index_ktb.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.clean_price_index_ktb, range, value, "Clean Price Index Ktb: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Clean Price Index Ktb is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price_index_ktb.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.clean_price_index_ktb, range, value, display)

  return offset + length, value
end

-- Clean Price Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price_index_weight = {}

-- Size: Clean Price Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price_index_weight.size = 16

-- Display: Clean Price Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price_index_weight.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price_index_weight.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Clean Price Index Weight: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Clean Price Index Weight: "..text.." (expected 6 places)"
  end

  return "Clean Price Index Weight: "..text
end

-- Dissect: Clean Price Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.clean_price_index_weight, range, value, "Clean Price Index Weight: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Clean Price Index Weight is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.clean_price_index_weight, range, value, display)

  return offset + length, value
end

-- Convexity
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.convexity = {}

-- Size: Convexity
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.convexity.size = 7

-- Display: Convexity
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.convexity.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.convexity.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Convexity: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Convexity: "..text.." (expected 3 places)"
  end

  return "Convexity: "..text
end

-- Dissect: Convexity
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.convexity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.convexity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.convexity, range, value, "Convexity: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Convexity is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.convexity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.convexity, range, value, display)

  return offset + length, value
end

-- Covered Short Selling Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.covered_short_selling_trading_value = {}

-- Size: Covered Short Selling Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.covered_short_selling_trading_value.size = 22

-- Display: Covered Short Selling Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.covered_short_selling_trading_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.covered_short_selling_trading_value.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Covered Short Selling Trading Value: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Covered Short Selling Trading Value: "..text.." (expected 3 places)"
  end

  return "Covered Short Selling Trading Value: "..text
end

-- Dissect: Covered Short Selling Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.covered_short_selling_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.covered_short_selling_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.covered_short_selling_trading_value, range, value, "Covered Short Selling Trading Value: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Covered Short Selling Trading Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.covered_short_selling_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.covered_short_selling_trading_value, range, value, display)

  return offset + length, value
end

-- Covered Short Selling Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.covered_short_selling_trading_volume = {}

-- Size: Covered Short Selling Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.covered_short_selling_trading_volume.size = 12

-- Display: Covered Short Selling Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.covered_short_selling_trading_volume.display = function(value)
  return "Covered Short Selling Trading Volume: "..value
end

-- Dissect: Covered Short Selling Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.covered_short_selling_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.covered_short_selling_trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.covered_short_selling_trading_volume, range, value, "Covered Short Selling Trading Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Covered Short Selling Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.covered_short_selling_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.covered_short_selling_trading_volume, range, value, display)

  return offset + length, value
end

-- Currency Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.currency_code = {}

-- Size: Currency Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.currency_code.size = 3

-- Display: Currency Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.currency_code.labels = {
  ["KRW"] = "Currency Code: Korean Won (KRW)",
  ["JPY"] = "Currency Code: Japanese Yen (JPY)",
  ["USD"] = "Currency Code: Us Dollar (USD)",
  ["HKD"] = "Currency Code: Hong Kong Dollar (HKD)",
  ["TWD"] = "Currency Code: Taiwan Dollar (TWD)",
  ["CNY"] = "Currency Code: Chinese Yuan (CNY)",
  ["EUR"] = "Currency Code: Euro (EUR)",
  ["GBP"] = "Currency Code: British Pound (GBP)",
}

koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.currency_code.display = function(value)
  return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.currency_code.labels[value] or "Currency Code: Unknown("..value..")"
end

-- Dissect: Currency Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.currency_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.currency_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.currency_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.currency_code, range, value, display)

  return offset + length, value
end

-- Current Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.current_time = {}

-- Size: Current Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.current_time.size = 4

-- Display: Current Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.current_time.display = function(value)
  if #value < 4 then
    return "Current Time: "..value
  end

  local hour = value:sub(1, 2)
  local minute = value:sub(3, 4)

  if minute:match("^%s*$") then
    return "Current Time: "..hour
  end

  return "Current Time: "..hour..":"..minute
end

-- Dissect: Current Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.current_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.current_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.current_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.current_time, range, value, display)

  return offset + length, value
end

-- Duration
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.duration = {}

-- Size: Duration
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.duration.size = 7

-- Display: Duration
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.duration.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.duration.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Duration: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Duration: "..text.." (expected 3 places)"
  end

  return "Duration: "..text
end

-- Dissect: Duration
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.duration.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.duration.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.duration, range, value, "Duration: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Duration is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.duration.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.duration, range, value, display)

  return offset + length, value
end

-- End Keyword
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword = {}

-- Size: End Keyword
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.size = 1

-- Display: End Keyword
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.labels = {
  [255] = "End Keyword: End Of Message (255)",
}

koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.display = function(value)
  return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.labels[value] or "End Keyword: Unknown("..value..")"
end

-- Dissect: End Keyword
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.end_keyword, range, value, display)

  return offset + length, value
end

-- Filler 3
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.filler_3 = {}

-- Size: Filler 3
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.filler_3.size = 3

-- Display: Filler 3
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.filler_3.display = function(value)
  return "Filler 3: "..value
end

-- Dissect: Filler 3
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.filler_3.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.filler_3.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.filler_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.filler_3, range, value, display)

  return offset + length, value
end

-- Filler 4
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.filler_4 = {}

-- Size: Filler 4
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.filler_4.size = 4

-- Display: Filler 4
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.filler_4.display = function(value)
  return "Filler 4: "..value
end

-- Dissect: Filler 4
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.filler_4.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.filler_4.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.filler_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.filler_4, range, value, display)

  return offset + length, value
end

-- Futures Basis Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.futures_basis_price = {}

-- Size: Futures Basis Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.futures_basis_price.size = 10

-- Display: Futures Basis Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.futures_basis_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.futures_basis_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Futures Basis Price: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 2 then
    return "Futures Basis Price: "..text.." (expected 2 places)"
  end

  return "Futures Basis Price: "..text
end

-- Dissect: Futures Basis Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.futures_basis_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.futures_basis_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.futures_basis_price, range, value, "Futures Basis Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Futures Basis Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.futures_basis_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.futures_basis_price, range, value, display)

  return offset + length, value
end

-- Group Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.group_code = {}

-- Size: Group Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.group_code.size = 5

-- Display: Group Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.group_code.display = function(value)
  return "Group Code: "..value
end

-- Dissect: Group Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.group_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.group_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.group_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.group_code, range, value, display)

  return offset + length, value
end

-- Index
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index = {}

-- Size: Index
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index.size = 9

-- Display: Index
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Index: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 2 then
    return "Index: "..text.." (expected 2 places)"
  end

  return "Index: "..text
end

-- Dissect: Index
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.index, range, value, "Index: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Index is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.index, range, value, display)

  return offset + length, value
end

-- Index Change Against The Previous Day
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_change_against_the_previous_day = {}

-- Size: Index Change Against The Previous Day
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_change_against_the_previous_day.size = 9

-- Display: Index Change Against The Previous Day
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_change_against_the_previous_day.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_change_against_the_previous_day.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Index Change Against The Previous Day: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 2 then
    return "Index Change Against The Previous Day: "..text.." (expected 2 places)"
  end

  return "Index Change Against The Previous Day: "..text
end

-- Dissect: Index Change Against The Previous Day
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_change_against_the_previous_day.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_change_against_the_previous_day.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.index_change_against_the_previous_day, range, value, "Index Change Against The Previous Day: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Index Change Against The Previous Day is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_change_against_the_previous_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.index_change_against_the_previous_day, range, value, display)

  return offset + length, value
end

-- Index Change Sign Against The Previous Day
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_change_sign_against_the_previous_day = {}

-- Size: Index Change Sign Against The Previous Day
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_change_sign_against_the_previous_day.size = 1

-- Display: Index Change Sign Against The Previous Day
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_change_sign_against_the_previous_day.display = function(value)
  if value == "+" then
    return "Index Change Sign Against The Previous Day: Ascended (+)"
  end
  if value == " " then
    return "Index Change Sign Against The Previous Day: Unchanged (<whitespace>)"
  end
  if value == "-" then
    return "Index Change Sign Against The Previous Day: Declined (-)"
  end

  return "Index Change Sign Against The Previous Day: Unknown("..value..")"
end

-- Dissect: Index Change Sign Against The Previous Day
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_change_sign_against_the_previous_day.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_change_sign_against_the_previous_day.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_change_sign_against_the_previous_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.index_change_sign_against_the_previous_day, range, value, display)

  return offset + length, value
end

-- Index Constituent
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_constituent = {}

-- Size: Index Constituent
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_constituent.size = 1

-- Display: Index Constituent
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_constituent.labels = {
  ["0"] = "Index Constituent: Included In Etf Not In Index (0)",
  ["1"] = "Index Constituent: Included In Index (1)",
}

koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_constituent.display = function(value)
  return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_constituent.labels[value] or "Index Constituent: Unknown("..value..")"
end

-- Dissect: Index Constituent
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_constituent.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_constituent.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_constituent.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.index_constituent, range, value, display)

  return offset + length, value
end

-- Index Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_id = {}

-- Size: Index Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_id.size = 6

-- Display: Index Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_id.display = function(value)
  return "Index Id: "..value
end

-- Dissect: Index Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.index_id, range, value, display)

  return offset + length, value
end

-- Index Market Capitalization
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_market_capitalization = {}

-- Size: Index Market Capitalization
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_market_capitalization.size = 20

-- Display: Index Market Capitalization
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_market_capitalization.display = function(value)
  return "Index Market Capitalization: "..value
end

-- Dissect: Index Market Capitalization
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_market_capitalization.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_market_capitalization.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.index_market_capitalization, range, value, "Index Market Capitalization: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Index Market Capitalization is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_market_capitalization.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.index_market_capitalization, range, value, display)

  return offset + length, value
end

-- Index Number Of Securities
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_number_of_securities = {}

-- Size: Index Number Of Securities
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_number_of_securities.size = 8

-- Display: Index Number Of Securities
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_number_of_securities.display = function(value)
  return "Index Number Of Securities: "..value
end

-- Dissect: Index Number Of Securities
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_number_of_securities.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_number_of_securities.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.index_number_of_securities, range, value, "Index Number Of Securities: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Index Number Of Securities is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_number_of_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.index_number_of_securities, range, value, display)

  return offset + length, value
end

-- Investor Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.investor_code = {}

-- Size: Investor Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.investor_code.size = 4

-- Display: Investor Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.investor_code.display = function(value)
  return "Investor Code: "..value
end

-- Dissect: Investor Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.investor_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.investor_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.investor_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.investor_code, range, value, display)

  return offset + length, value
end

-- Isin Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.isin_code = {}

-- Size: Isin Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.isin_code.size = 12

-- Display: Isin Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.isin_code.display = function(value)
  return "Isin Code: "..value
end

-- Dissect: Isin Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.isin_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.isin_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.isin_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.isin_code, range, value, display)

  return offset + length, value
end

-- Issued Amount
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.issued_amount = {}

-- Size: Issued Amount
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.issued_amount.size = 20

-- Display: Issued Amount
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.issued_amount.display = function(value)
  return "Issued Amount: "..value
end

-- Dissect: Issued Amount
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.issued_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.issued_amount.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.issued_amount, range, value, "Issued Amount: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Issued Amount is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.issued_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.issued_amount, range, value, display)

  return offset + length, value
end

-- Issued Amount Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.issued_amount_weight = {}

-- Size: Issued Amount Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.issued_amount_weight.size = 16

-- Display: Issued Amount Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.issued_amount_weight.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.issued_amount_weight.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Issued Amount Weight: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Issued Amount Weight: "..text.." (expected 6 places)"
  end

  return "Issued Amount Weight: "..text
end

-- Dissect: Issued Amount Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.issued_amount_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.issued_amount_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.issued_amount_weight, range, value, "Issued Amount Weight: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Issued Amount Weight is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.issued_amount_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.issued_amount_weight, range, value, display)

  return offset + length, value
end

-- Market Capitalization Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_capitalization_weight = {}

-- Size: Market Capitalization Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_capitalization_weight.size = 16

-- Display: Market Capitalization Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_capitalization_weight.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_capitalization_weight.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Market Capitalization Weight: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Market Capitalization Weight: "..text.." (expected 6 places)"
  end

  return "Market Capitalization Weight: "..text
end

-- Dissect: Market Capitalization Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_capitalization_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_capitalization_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.market_capitalization_weight, range, value, "Market Capitalization Weight: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Market Capitalization Weight is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_capitalization_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.market_capitalization_weight, range, value, display)

  return offset + length, value
end

-- Market Price Index Krx
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_price_index_krx = {}

-- Size: Market Price Index Krx
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_price_index_krx.size = 16

-- Display: Market Price Index Krx
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_price_index_krx.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_price_index_krx.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Market Price Index Krx: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Market Price Index Krx: "..text.." (expected 6 places)"
  end

  return "Market Price Index Krx: "..text
end

-- Dissect: Market Price Index Krx
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_price_index_krx.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_price_index_krx.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.market_price_index_krx, range, value, "Market Price Index Krx: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Market Price Index Krx is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_price_index_krx.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.market_price_index_krx, range, value, display)

  return offset + length, value
end

-- Market Price Index Ktb
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_price_index_ktb = {}

-- Size: Market Price Index Ktb
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_price_index_ktb.size = 11

-- Display: Market Price Index Ktb
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_price_index_ktb.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_price_index_ktb.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Market Price Index Ktb: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 4 then
    return "Market Price Index Ktb: "..text.." (expected 4 places)"
  end

  return "Market Price Index Ktb: "..text
end

-- Dissect: Market Price Index Ktb
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_price_index_ktb.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_price_index_ktb.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.market_price_index_ktb, range, value, "Market Price Index Ktb: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Market Price Index Ktb is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_price_index_ktb.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.market_price_index_ktb, range, value, display)

  return offset + length, value
end

-- Market Price Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_price_index_weight = {}

-- Size: Market Price Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_price_index_weight.size = 16

-- Display: Market Price Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_price_index_weight.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_price_index_weight.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Market Price Index Weight: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Market Price Index Weight: "..text.." (expected 6 places)"
  end

  return "Market Price Index Weight: "..text
end

-- Dissect: Market Price Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_price_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_price_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.market_price_index_weight, range, value, "Market Price Index Weight: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Market Price Index Weight is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_price_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.market_price_index_weight, range, value, display)

  return offset + length, value
end

-- Maturity Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.maturity_code = {}

-- Size: Maturity Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.maturity_code.size = 3

-- Display: Maturity Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.maturity_code.display = function(value)
  return "Maturity Code: "..value
end

-- Dissect: Maturity Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.maturity_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.maturity_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.maturity_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.maturity_code, range, value, display)

  return offset + length, value
end

-- Message Sequence Number
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.message_sequence_number = {}

-- Size: Message Sequence Number
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.message_sequence_number.size = 8

-- Display: Message Sequence Number
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.message_sequence_number.display = function(value)
  -- Check if field has value
  if value == nil or value:match("^%s*$") ~= nil then
    return "Message Sequence Number: No Value"
  end

  return "Message Sequence Number: "..value
end

-- Dissect: Message Sequence Number
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.message_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.message_sequence_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.message_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.message_sequence_number, range, value, display)

  return offset + length, value
end

-- Reinvest Call Cash
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.reinvest_call_cash = {}

-- Size: Reinvest Call Cash
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.reinvest_call_cash.size = 26

-- Display: Reinvest Call Cash
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.reinvest_call_cash.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.reinvest_call_cash.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Reinvest Call Cash: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Reinvest Call Cash: "..text.." (expected 6 places)"
  end

  return "Reinvest Call Cash: "..text
end

-- Dissect: Reinvest Call Cash
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.reinvest_call_cash.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.reinvest_call_cash.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.reinvest_call_cash, range, value, "Reinvest Call Cash: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Reinvest Call Cash is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.reinvest_call_cash.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.reinvest_call_cash, range, value, display)

  return offset + length, value
end

-- Security Group Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.security_group_id = {}

-- Size: Security Group Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.security_group_id.size = 2

-- Display: Security Group Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.security_group_id.display = function(value)
  return "Security Group Id: "..value
end

-- Dissect: Security Group Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.security_group_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.security_group_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.security_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.security_group_id, range, value, display)

  return offset + length, value
end

-- Session Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.session_id = {}

-- Size: Session Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.session_id.size = 2

-- Display: Session Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.session_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.session_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.session_id, range, value, display)

  return offset + length, value
end

-- Total Earnings Index
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.total_earnings_index = {}

-- Size: Total Earnings Index
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.total_earnings_index.size = 16

-- Display: Total Earnings Index
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.total_earnings_index.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.total_earnings_index.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Total Earnings Index: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Total Earnings Index: "..text.." (expected 6 places)"
  end

  return "Total Earnings Index: "..text
end

-- Dissect: Total Earnings Index
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.total_earnings_index.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.total_earnings_index.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.total_earnings_index, range, value, "Total Earnings Index: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Total Earnings Index is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.total_earnings_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.total_earnings_index, range, value, display)

  return offset + length, value
end

-- Total Earnings Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.total_earnings_index_weight = {}

-- Size: Total Earnings Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.total_earnings_index_weight.size = 16

-- Display: Total Earnings Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.total_earnings_index_weight.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.total_earnings_index_weight.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Total Earnings Index Weight: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Total Earnings Index Weight: "..text.." (expected 6 places)"
  end

  return "Total Earnings Index Weight: "..text
end

-- Dissect: Total Earnings Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.total_earnings_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.total_earnings_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.total_earnings_index_weight, range, value, "Total Earnings Index Weight: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Total Earnings Index Weight is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.total_earnings_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.total_earnings_index_weight, range, value, display)

  return offset + length, value
end

-- Total Profit Index
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.total_profit_index = {}

-- Size: Total Profit Index
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.total_profit_index.size = 11

-- Display: Total Profit Index
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.total_profit_index.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.total_profit_index.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Total Profit Index: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 4 then
    return "Total Profit Index: "..text.." (expected 4 places)"
  end

  return "Total Profit Index: "..text
end

-- Dissect: Total Profit Index
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.total_profit_index.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.total_profit_index.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.total_profit_index, range, value, "Total Profit Index: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Total Profit Index is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.total_profit_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.total_profit_index, range, value, display)

  return offset + length, value
end

-- Tr Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.tr_code = {}

-- Size: Tr Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.tr_code.size = 5

-- Display: Tr Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.tr_code.labels = {
  ["I2000"] = "Tr Code: Polling Data Message (I2000)",
  ["IA000"] = "Tr Code: Krx Index Message (IA000)",
  ["IB000"] = "Tr Code: Krx Estimated Index Message (IB000)",
  ["J2000"] = "Tr Code: Global Index Message (J2000)",
  ["J4000"] = "Tr Code: Bond Prime Index Message (J4000)",
  ["K1000"] = "Tr Code: Bond Ktb Index Message (K1000)",
  ["K8000"] = "Tr Code: Bond Ktb Index Term Structure Message (K8000)",
  ["IG000"] = "Tr Code: Bond Index Krx Message (IG000)",
  ["C001S"] = "Tr Code: Securities Investor Activities Per Industry Message (C001S)",
  ["C001Q"] = "Tr Code: Securities Investor Activities Per Industry Message (C001Q)",
  ["C001X"] = "Tr Code: Securities Investor Activities Per Industry Message (C001X)",
  ["C101S"] = "Tr Code: Securities Investor Activities Per Issue Eod Message (C101S)",
  ["C102S"] = "Tr Code: Securities Investor Activities Per Issue Eod Message (C102S)",
  ["C103S"] = "Tr Code: Securities Investor Activities Per Issue Eod Message (C103S)",
  ["C104S"] = "Tr Code: Securities Investor Activities Per Issue Eod Message (C104S)",
  ["C105S"] = "Tr Code: Securities Investor Activities Per Issue Eod Message (C105S)",
  ["C101Q"] = "Tr Code: Securities Investor Activities Per Issue Eod Message (C101Q)",
  ["C101X"] = "Tr Code: Securities Investor Activities Per Issue Eod Message (C101X)",
  ["C101G"] = "Tr Code: Securities Investor Activities Per Issue Eod Message (C101G)",
  ["IC02S"] = "Tr Code: Securities Investor Activities Per Commodities Message (IC02S)",
  ["IC03S"] = "Tr Code: Securities Investor Activities Per Commodities Message (IC03S)",
  ["IC04S"] = "Tr Code: Securities Investor Activities Per Commodities Message (IC04S)",
  ["IC05S"] = "Tr Code: Securities Investor Activities Per Commodities Message (IC05S)",
  ["IC01G"] = "Tr Code: Securities Investor Activities Per Commodities Message (IC01G)",
  ["I801S"] = "Tr Code: Securities Short Selling Message (I801S)",
  ["I803S"] = "Tr Code: Securities Short Selling Message (I803S)",
  ["I804S"] = "Tr Code: Securities Short Selling Message (I804S)",
  ["I805S"] = "Tr Code: Securities Short Selling Message (I805S)",
  ["I801Q"] = "Tr Code: Securities Short Selling Message (I801Q)",
  ["B001S"] = "Tr Code: Securities Treasury Stocks Traded Message (B001S)",
  ["B001Q"] = "Tr Code: Securities Treasury Stocks Traded Message (B001Q)",
  ["B001X"] = "Tr Code: Securities Treasury Stocks Traded Message (B001X)",
  ["O401S"] = "Tr Code: Securities Buy In Volume Message (O401S)",
  ["O402S"] = "Tr Code: Securities Buy In Volume Message (O402S)",
  ["O403S"] = "Tr Code: Securities Buy In Volume Message (O403S)",
  ["O404S"] = "Tr Code: Securities Buy In Volume Message (O404S)",
  ["O401Q"] = "Tr Code: Securities Buy In Volume Message (O401Q)",
  ["O401X"] = "Tr Code: Securities Buy In Volume Message (O401X)",
}

koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.tr_code.display = function(value)
  return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.tr_code.labels[value] or "Tr Code: Unknown("..value..")"
end

-- Dissect: Tr Code
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.tr_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.tr_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.tr_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.tr_code, range, value, display)

  return offset + length, value
end

-- Trading Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.trading_price = {}

-- Size: Trading Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.trading_price.size = 11

-- Display: Trading Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.trading_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.trading_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Trading Price: No Value"
  end

  return "Trading Price: "..text
end

-- Dissect: Trading Price
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.trading_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.trading_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.trading_price, range, value, "Trading Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Trading Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.trading_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.trading_price, range, value, display)

  return offset + length, value
end

-- Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.trading_volume = {}

-- Size: Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.trading_volume.size = 10

-- Display: Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.trading_volume.display = function(value)
  return "Trading Volume: "..value
end

-- Dissect: Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.trading_volume, range, value, "Trading Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.trading_volume, range, value, display)

  return offset + length, value
end

-- Transmission Date
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.transmission_date = {}

-- Size: Transmission Date
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.transmission_date.size = 8

-- Display: Transmission Date
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.transmission_date.display = function(value)
  return "Transmission Date: "..value
end

-- Dissect: Transmission Date
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.transmission_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.transmission_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.transmission_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.transmission_date, range, value, display)

  return offset + length, value
end

-- Transmission Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.transmission_time = {}

-- Size: Transmission Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.transmission_time.size = 8

-- Display: Transmission Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.transmission_time.display = function(value)
  if #value < 8 then
    return "Transmission Time: "..value
  end

  return "Transmission Time: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6).."."..value:sub(7, 8)
end

-- Dissect: Transmission Time
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.transmission_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.transmission_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.transmission_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.transmission_time, range, value, display)

  return offset + length, value
end

-- Uptick Rule Applied Covered Short Selling Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.uptick_rule_applied_covered_short_selling_trading_value = {}

-- Size: Uptick Rule Applied Covered Short Selling Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.uptick_rule_applied_covered_short_selling_trading_value.size = 22

-- Display: Uptick Rule Applied Covered Short Selling Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.uptick_rule_applied_covered_short_selling_trading_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.uptick_rule_applied_covered_short_selling_trading_value.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Uptick Rule Applied Covered Short Selling Trading Value: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Uptick Rule Applied Covered Short Selling Trading Value: "..text.." (expected 3 places)"
  end

  return "Uptick Rule Applied Covered Short Selling Trading Value: "..text
end

-- Dissect: Uptick Rule Applied Covered Short Selling Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.uptick_rule_applied_covered_short_selling_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.uptick_rule_applied_covered_short_selling_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.uptick_rule_applied_covered_short_selling_trading_value, range, value, "Uptick Rule Applied Covered Short Selling Trading Value: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Uptick Rule Applied Covered Short Selling Trading Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.uptick_rule_applied_covered_short_selling_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.uptick_rule_applied_covered_short_selling_trading_value, range, value, display)

  return offset + length, value
end

-- Uptick Rule Applied Covered Short Selling Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.uptick_rule_applied_covered_short_selling_trading_volume = {}

-- Size: Uptick Rule Applied Covered Short Selling Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.uptick_rule_applied_covered_short_selling_trading_volume.size = 12

-- Display: Uptick Rule Applied Covered Short Selling Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.uptick_rule_applied_covered_short_selling_trading_volume.display = function(value)
  return "Uptick Rule Applied Covered Short Selling Trading Volume: "..value
end

-- Dissect: Uptick Rule Applied Covered Short Selling Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.uptick_rule_applied_covered_short_selling_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.uptick_rule_applied_covered_short_selling_trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.uptick_rule_applied_covered_short_selling_trading_volume, range, value, "Uptick Rule Applied Covered Short Selling Trading Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Uptick Rule Applied Covered Short Selling Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.uptick_rule_applied_covered_short_selling_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.uptick_rule_applied_covered_short_selling_trading_volume, range, value, display)

  return offset + length, value
end

-- Uptick Rule Unapplied Covered Short Selling Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.uptick_rule_unapplied_covered_short_selling_trading_value = {}

-- Size: Uptick Rule Unapplied Covered Short Selling Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.uptick_rule_unapplied_covered_short_selling_trading_value.size = 22

-- Display: Uptick Rule Unapplied Covered Short Selling Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.uptick_rule_unapplied_covered_short_selling_trading_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.uptick_rule_unapplied_covered_short_selling_trading_value.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Uptick Rule Unapplied Covered Short Selling Trading Value: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Uptick Rule Unapplied Covered Short Selling Trading Value: "..text.." (expected 3 places)"
  end

  return "Uptick Rule Unapplied Covered Short Selling Trading Value: "..text
end

-- Dissect: Uptick Rule Unapplied Covered Short Selling Trading Value
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.uptick_rule_unapplied_covered_short_selling_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.uptick_rule_unapplied_covered_short_selling_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.uptick_rule_unapplied_covered_short_selling_trading_value, range, value, "Uptick Rule Unapplied Covered Short Selling Trading Value: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Uptick Rule Unapplied Covered Short Selling Trading Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.uptick_rule_unapplied_covered_short_selling_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.uptick_rule_unapplied_covered_short_selling_trading_value, range, value, display)

  return offset + length, value
end

-- Uptick Rule Unapplied Covered Short Selling Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.uptick_rule_unapplied_covered_short_selling_trading_volume = {}

-- Size: Uptick Rule Unapplied Covered Short Selling Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.uptick_rule_unapplied_covered_short_selling_trading_volume.size = 12

-- Display: Uptick Rule Unapplied Covered Short Selling Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.uptick_rule_unapplied_covered_short_selling_trading_volume.display = function(value)
  return "Uptick Rule Unapplied Covered Short Selling Trading Volume: "..value
end

-- Dissect: Uptick Rule Unapplied Covered Short Selling Trading Volume
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.uptick_rule_unapplied_covered_short_selling_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.uptick_rule_unapplied_covered_short_selling_trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.uptick_rule_unapplied_covered_short_selling_trading_volume, range, value, "Uptick Rule Unapplied Covered Short Selling Trading Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Uptick Rule Unapplied Covered Short Selling Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.uptick_rule_unapplied_covered_short_selling_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.uptick_rule_unapplied_covered_short_selling_trading_volume, range, value, display)

  return offset + length, value
end

-- Weight Of Call Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_call_re_investment_index_value_for_integrity_index_weight = {}

-- Size: Weight Of Call Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_call_re_investment_index_value_for_integrity_index_weight.size = 16

-- Display: Weight Of Call Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_call_re_investment_index_value_for_integrity_index_weight.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_call_re_investment_index_value_for_integrity_index_weight.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Weight Of Call Re Investment Index Value For Integrity Index Weight: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Weight Of Call Re Investment Index Value For Integrity Index Weight: "..text.." (expected 6 places)"
  end

  return "Weight Of Call Re Investment Index Value For Integrity Index Weight: "..text
end

-- Dissect: Weight Of Call Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_call_re_investment_index_value_for_integrity_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_call_re_investment_index_value_for_integrity_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.weight_of_call_re_investment_index_value_for_integrity_index_weight, range, value, "Weight Of Call Re Investment Index Value For Integrity Index Weight: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Weight Of Call Re Investment Index Value For Integrity Index Weight is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_call_re_investment_index_value_for_integrity_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.weight_of_call_re_investment_index_value_for_integrity_index_weight, range, value, display)

  return offset + length, value
end

-- Weight Of Clean Index Value For Integrity Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_clean_index_value_for_integrity_index_weight = {}

-- Size: Weight Of Clean Index Value For Integrity Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_clean_index_value_for_integrity_index_weight.size = 16

-- Display: Weight Of Clean Index Value For Integrity Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_clean_index_value_for_integrity_index_weight.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_clean_index_value_for_integrity_index_weight.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Weight Of Clean Index Value For Integrity Index Weight: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Weight Of Clean Index Value For Integrity Index Weight: "..text.." (expected 6 places)"
  end

  return "Weight Of Clean Index Value For Integrity Index Weight: "..text
end

-- Dissect: Weight Of Clean Index Value For Integrity Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_clean_index_value_for_integrity_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_clean_index_value_for_integrity_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.weight_of_clean_index_value_for_integrity_index_weight, range, value, "Weight Of Clean Index Value For Integrity Index Weight: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Weight Of Clean Index Value For Integrity Index Weight is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_clean_index_value_for_integrity_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.weight_of_clean_index_value_for_integrity_index_weight, range, value, display)

  return offset + length, value
end

-- Weight Of Sum Index Value For Integrity Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_sum_index_value_for_integrity_index_weight = {}

-- Size: Weight Of Sum Index Value For Integrity Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_sum_index_value_for_integrity_index_weight.size = 16

-- Display: Weight Of Sum Index Value For Integrity Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_sum_index_value_for_integrity_index_weight.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_sum_index_value_for_integrity_index_weight.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Weight Of Sum Index Value For Integrity Index Weight: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Weight Of Sum Index Value For Integrity Index Weight: "..text.." (expected 6 places)"
  end

  return "Weight Of Sum Index Value For Integrity Index Weight: "..text
end

-- Dissect: Weight Of Sum Index Value For Integrity Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_sum_index_value_for_integrity_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_sum_index_value_for_integrity_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.weight_of_sum_index_value_for_integrity_index_weight, range, value, "Weight Of Sum Index Value For Integrity Index Weight: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Weight Of Sum Index Value For Integrity Index Weight is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_sum_index_value_for_integrity_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.weight_of_sum_index_value_for_integrity_index_weight, range, value, display)

  return offset + length, value
end

-- Weight Of Zero Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_zero_re_investment_index_value_for_integrity_index_weight = {}

-- Size: Weight Of Zero Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_zero_re_investment_index_value_for_integrity_index_weight.size = 16

-- Display: Weight Of Zero Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_zero_re_investment_index_value_for_integrity_index_weight.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_zero_re_investment_index_value_for_integrity_index_weight.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Weight Of Zero Re Investment Index Value For Integrity Index Weight: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Weight Of Zero Re Investment Index Value For Integrity Index Weight: "..text.." (expected 6 places)"
  end

  return "Weight Of Zero Re Investment Index Value For Integrity Index Weight: "..text
end

-- Dissect: Weight Of Zero Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_zero_re_investment_index_value_for_integrity_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_zero_re_investment_index_value_for_integrity_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.weight_of_zero_re_investment_index_value_for_integrity_index_weight, range, value, "Weight Of Zero Re Investment Index Value For Integrity Index Weight: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Weight Of Zero Re Investment Index Value For Integrity Index Weight is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_zero_re_investment_index_value_for_integrity_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.weight_of_zero_re_investment_index_value_for_integrity_index_weight, range, value, display)

  return offset + length, value
end

-- Zero Re Investment Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.zero_re_investment_index_weight = {}

-- Size: Zero Re Investment Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.zero_re_investment_index_weight.size = 16

-- Display: Zero Re Investment Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.zero_re_investment_index_weight.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.zero_re_investment_index_weight.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Zero Re Investment Index Weight: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Zero Re Investment Index Weight: "..text.." (expected 6 places)"
  end

  return "Zero Re Investment Index Weight: "..text
end

-- Dissect: Zero Re Investment Index Weight
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.zero_re_investment_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.zero_re_investment_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.zero_re_investment_index_weight, range, value, "Zero Re Investment Index Weight: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Zero Re Investment Index Weight is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.zero_re_investment_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.zero_re_investment_index_weight, range, value, display)

  return offset + length, value
end

-- Zero Re-Investment Index Krx
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.zero_reinvestment_index_krx = {}

-- Size: Zero Re-Investment Index Krx
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.zero_reinvestment_index_krx.size = 16

-- Display: Zero Re-Investment Index Krx
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.zero_reinvestment_index_krx.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.zero_reinvestment_index_krx.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Zero Re-Investment Index Krx: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Zero Re-Investment Index Krx: "..text.." (expected 6 places)"
  end

  return "Zero Re-Investment Index Krx: "..text
end

-- Dissect: Zero Re-Investment Index Krx
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.zero_reinvestment_index_krx.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.zero_reinvestment_index_krx.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.zero_reinvestment_index_krx, range, value, "Zero Re-Investment Index Krx: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Zero Re-Investment Index Krx is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.zero_reinvestment_index_krx.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.zero_reinvestment_index_krx, range, value, display)

  return offset + length, value
end

-- Zero Re-Investment Index Ktb
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.zero_reinvestment_index_ktb = {}

-- Size: Zero Re-Investment Index Ktb
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.zero_reinvestment_index_ktb.size = 11

-- Display: Zero Re-Investment Index Ktb
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.zero_reinvestment_index_ktb.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.zero_reinvestment_index_ktb.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Zero Re-Investment Index Ktb: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 4 then
    return "Zero Re-Investment Index Ktb: "..text.." (expected 4 places)"
  end

  return "Zero Re-Investment Index Ktb: "..text
end

-- Dissect: Zero Re-Investment Index Ktb
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.zero_reinvestment_index_ktb.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.zero_reinvestment_index_ktb.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.zero_reinvestment_index_ktb, range, value, "Zero Re-Investment Index Ktb: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.experts.not_a_number, "Zero Re-Investment Index Ktb is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.zero_reinvestment_index_ktb.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.zero_reinvestment_index_ktb, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Koscom MdcsRealtime ReferenceInfoInvestorActivities Exture 2.020
-----------------------------------------------------------------------

-- Securities Buy In Volume Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_buy_in_volume_message = {}

-- Size: Securities Buy In Volume Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_buy_in_volume_message.size =
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.message_sequence_number.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.transmission_date.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.buyin_type_code.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.security_group_id.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.buyin_volume.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.size

-- Display: Securities Buy In Volume Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_buy_in_volume_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Securities Buy In Volume Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_buy_in_volume_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- Transmission Date: String
  index, transmission_date = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.transmission_date.dissect(buffer, index, packet, parent)

  -- Buyin Type Code: String
  index, buyin_type_code = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.buyin_type_code.dissect(buffer, index, packet, parent)

  -- Security Group Id: String
  index, security_group_id = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.security_group_id.dissect(buffer, index, packet, parent)

  -- Buyin Volume: Long
  index, buyin_volume = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.buyin_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Securities Buy In Volume Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_buy_in_volume_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.securities_buy_in_volume_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_buy_in_volume_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_buy_in_volume_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_buy_in_volume_message.fields(buffer, offset, packet, parent)
  end
end

-- Securities Treasury Stocks Traded Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_treasury_stocks_traded_message = {}

-- Size: Securities Treasury Stocks Traded Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_treasury_stocks_traded_message.size =
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.session_id.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.trading_price.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.trading_volume.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bid_treasury_stock_declaration_id.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.ask_treasury_stock_declaration_id.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.size

-- Display: Securities Treasury Stocks Traded Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_treasury_stocks_traded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Securities Treasury Stocks Traded Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_treasury_stocks_traded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Trading Price: Double
  index, trading_price = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.trading_price.dissect(buffer, index, packet, parent)

  -- Trading Volume: Long
  index, trading_volume = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.trading_volume.dissect(buffer, index, packet, parent)

  -- Bid Treasury Stock Declaration Id: String
  index, bid_treasury_stock_declaration_id = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bid_treasury_stock_declaration_id.dissect(buffer, index, packet, parent)

  -- Ask Treasury Stock Declaration Id: String
  index, ask_treasury_stock_declaration_id = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.ask_treasury_stock_declaration_id.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Securities Treasury Stocks Traded Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_treasury_stocks_traded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.securities_treasury_stocks_traded_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_treasury_stocks_traded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_treasury_stocks_traded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_treasury_stocks_traded_message.fields(buffer, offset, packet, parent)
  end
end

-- Securities Short Selling Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_short_selling_message = {}

-- Size: Securities Short Selling Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_short_selling_message.size =
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.covered_short_selling_trading_volume.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.covered_short_selling_trading_value.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.uptick_rule_applied_covered_short_selling_trading_volume.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.uptick_rule_applied_covered_short_selling_trading_value.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.uptick_rule_unapplied_covered_short_selling_trading_volume.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.uptick_rule_unapplied_covered_short_selling_trading_value.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.size

-- Display: Securities Short Selling Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_short_selling_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Securities Short Selling Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_short_selling_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- Covered Short Selling Trading Volume: Long
  index, covered_short_selling_trading_volume = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.covered_short_selling_trading_volume.dissect(buffer, index, packet, parent)

  -- Covered Short Selling Trading Value: FLOAT128
  index, covered_short_selling_trading_value = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.covered_short_selling_trading_value.dissect(buffer, index, packet, parent)

  -- Uptick Rule Applied Covered Short Selling Trading Volume: Long
  index, uptick_rule_applied_covered_short_selling_trading_volume = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.uptick_rule_applied_covered_short_selling_trading_volume.dissect(buffer, index, packet, parent)

  -- Uptick Rule Applied Covered Short Selling Trading Value: FLOAT128
  index, uptick_rule_applied_covered_short_selling_trading_value = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.uptick_rule_applied_covered_short_selling_trading_value.dissect(buffer, index, packet, parent)

  -- Uptick Rule Unapplied Covered Short Selling Trading Volume: Long
  index, uptick_rule_unapplied_covered_short_selling_trading_volume = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.uptick_rule_unapplied_covered_short_selling_trading_volume.dissect(buffer, index, packet, parent)

  -- Uptick Rule Unapplied Covered Short Selling Trading Value: FLOAT128
  index, uptick_rule_unapplied_covered_short_selling_trading_value = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.uptick_rule_unapplied_covered_short_selling_trading_value.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Securities Short Selling Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_short_selling_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.securities_short_selling_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_short_selling_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_short_selling_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_short_selling_message.fields(buffer, offset, packet, parent)
  end
end

-- Securities Investor Activities Per Commodities Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_commodities_message = {}

-- Size: Securities Investor Activities Per Commodities Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_commodities_message.size =
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.calculation_time.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.investor_code.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_ask_trading_volume.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_ask_trading_value.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_bid_trading_volume.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_bid_trading_value.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.size

-- Display: Securities Investor Activities Per Commodities Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_commodities_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Securities Investor Activities Per Commodities Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_commodities_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Calculation Time: String
  index, calculation_time = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.calculation_time.dissect(buffer, index, packet, parent)

  -- Investor Code: String
  index, investor_code = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.investor_code.dissect(buffer, index, packet, parent)

  -- Accumulated Ask Trading Volume: Long
  index, accumulated_ask_trading_volume = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_ask_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Ask Trading Value: FLOAT128
  index, accumulated_ask_trading_value = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_ask_trading_value.dissect(buffer, index, packet, parent)

  -- Accumulated Bid Trading Volume: Long
  index, accumulated_bid_trading_volume = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_bid_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Bid Trading Value: FLOAT128
  index, accumulated_bid_trading_value = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_bid_trading_value.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Securities Investor Activities Per Commodities Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_commodities_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.securities_investor_activities_per_commodities_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_commodities_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_commodities_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_commodities_message.fields(buffer, offset, packet, parent)
  end
end

-- Securities Investor Activities Per Issue Eod Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_issue_eod_message = {}

-- Size: Securities Investor Activities Per Issue Eod Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_issue_eod_message.size =
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.investor_code.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_ask_trading_volume.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_ask_trading_value.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_bid_trading_volume.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_bid_trading_value.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.size

-- Display: Securities Investor Activities Per Issue Eod Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_issue_eod_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Securities Investor Activities Per Issue Eod Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_issue_eod_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Investor Code: String
  index, investor_code = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.investor_code.dissect(buffer, index, packet, parent)

  -- Accumulated Ask Trading Volume: Long
  index, accumulated_ask_trading_volume = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_ask_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Ask Trading Value: FLOAT128
  index, accumulated_ask_trading_value = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_ask_trading_value.dissect(buffer, index, packet, parent)

  -- Accumulated Bid Trading Volume: Long
  index, accumulated_bid_trading_volume = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_bid_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Bid Trading Value: FLOAT128
  index, accumulated_bid_trading_value = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_bid_trading_value.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Securities Investor Activities Per Issue Eod Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_issue_eod_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.securities_investor_activities_per_issue_eod_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_issue_eod_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_issue_eod_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_issue_eod_message.fields(buffer, offset, packet, parent)
  end
end

-- Securities Investor Activities Per Industry Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_industry_message = {}

-- Size: Securities Investor Activities Per Industry Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_industry_message.size =
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.calculation_time.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.investor_code.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_id.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_ask_trading_volume.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_ask_trading_value.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_bid_trading_volume.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_bid_trading_value.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.filler_3.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.size

-- Display: Securities Investor Activities Per Industry Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_industry_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Securities Investor Activities Per Industry Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_industry_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Calculation Time: String
  index, calculation_time = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.calculation_time.dissect(buffer, index, packet, parent)

  -- Investor Code: String
  index, investor_code = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.investor_code.dissect(buffer, index, packet, parent)

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- Accumulated Ask Trading Volume: Long
  index, accumulated_ask_trading_volume = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_ask_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Ask Trading Value: FLOAT128
  index, accumulated_ask_trading_value = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_ask_trading_value.dissect(buffer, index, packet, parent)

  -- Accumulated Bid Trading Volume: Long
  index, accumulated_bid_trading_volume = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_bid_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Bid Trading Value: FLOAT128
  index, accumulated_bid_trading_value = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_bid_trading_value.dissect(buffer, index, packet, parent)

  -- Filler 3: String
  index, filler_3 = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.filler_3.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Securities Investor Activities Per Industry Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_industry_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.securities_investor_activities_per_industry_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_industry_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_industry_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_industry_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Index Krx Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_index_krx_message = {}

-- Size: Bond Index Krx Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_index_krx_message.size =
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.message_sequence_number.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.calculating_date.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_id.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price_index_krx.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.total_earnings_index.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_price_index_krx.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.zero_reinvestment_index_krx.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.call_reinvestment_index_krx.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price_index_weight.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.total_earnings_index_weight.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_price_index_weight.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.zero_re_investment_index_weight.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.call_re_investment_index_weight.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_clean_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_sum_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_zero_re_investment_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_call_re_investment_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_duration.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_convexity.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_yld.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_coupon_price.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_remaining_maturity_price.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_current_yield.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_spread_sign.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_spread.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_number_of_securities.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.issued_amount.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.issued_amount_weight.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_market_capitalization.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_capitalization_weight.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_cash.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.cash_inflow.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.reinvest_call_cash.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.size

-- Display: Bond Index Krx Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_index_krx_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Index Krx Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_index_krx_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Calculating Date: String
  index, calculating_date = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.calculating_date.dissect(buffer, index, packet, parent)

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_id.dissect(buffer, index, packet, parent)

  -- Clean Price Index Krx: FLOAT128
  index, clean_price_index_krx = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price_index_krx.dissect(buffer, index, packet, parent)

  -- Total Earnings Index: FLOAT128
  index, total_earnings_index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.total_earnings_index.dissect(buffer, index, packet, parent)

  -- Market Price Index Krx: FLOAT128
  index, market_price_index_krx = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_price_index_krx.dissect(buffer, index, packet, parent)

  -- Zero Re-Investment Index Krx: FLOAT128
  index, zero_reinvestment_index_krx = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.zero_reinvestment_index_krx.dissect(buffer, index, packet, parent)

  -- Call Re-Investment Index Krx: FLOAT128
  index, call_reinvestment_index_krx = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.call_reinvestment_index_krx.dissect(buffer, index, packet, parent)

  -- Clean Price Index Weight: FLOAT128
  index, clean_price_index_weight = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price_index_weight.dissect(buffer, index, packet, parent)

  -- Total Earnings Index Weight: FLOAT128
  index, total_earnings_index_weight = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.total_earnings_index_weight.dissect(buffer, index, packet, parent)

  -- Market Price Index Weight: FLOAT128
  index, market_price_index_weight = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_price_index_weight.dissect(buffer, index, packet, parent)

  -- Zero Re Investment Index Weight: FLOAT128
  index, zero_re_investment_index_weight = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.zero_re_investment_index_weight.dissect(buffer, index, packet, parent)

  -- Call Re Investment Index Weight: FLOAT128
  index, call_re_investment_index_weight = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.call_re_investment_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Clean Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_clean_index_value_for_integrity_index_weight = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_clean_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Sum Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_sum_index_value_for_integrity_index_weight = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_sum_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Zero Re Investment Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_zero_re_investment_index_value_for_integrity_index_weight = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_zero_re_investment_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Call Re Investment Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_call_re_investment_index_value_for_integrity_index_weight = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_call_re_investment_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Average Duration: FLOAT128
  index, average_duration = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_duration.dissect(buffer, index, packet, parent)

  -- Average Convexity: FLOAT128
  index, average_convexity = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_convexity.dissect(buffer, index, packet, parent)

  -- Average Yld: FLOAT128
  index, average_yld = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_yld.dissect(buffer, index, packet, parent)

  -- Average Coupon Price: FLOAT128
  index, average_coupon_price = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_coupon_price.dissect(buffer, index, packet, parent)

  -- Average Remaining Maturity Price: FLOAT128
  index, average_remaining_maturity_price = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_remaining_maturity_price.dissect(buffer, index, packet, parent)

  -- Average Current Yield: FLOAT128
  index, average_current_yield = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_current_yield.dissect(buffer, index, packet, parent)

  -- Average Spread Sign: String
  index, average_spread_sign = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_spread_sign.dissect(buffer, index, packet, parent)

  -- Average Spread: FLOAT128
  index, average_spread = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_spread.dissect(buffer, index, packet, parent)

  -- Index Number Of Securities: Int
  index, index_number_of_securities = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_number_of_securities.dissect(buffer, index, packet, parent)

  -- Issued Amount: Long
  index, issued_amount = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.issued_amount.dissect(buffer, index, packet, parent)

  -- Issued Amount Weight: FLOAT128
  index, issued_amount_weight = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.issued_amount_weight.dissect(buffer, index, packet, parent)

  -- Index Market Capitalization: Long
  index, index_market_capitalization = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_market_capitalization.dissect(buffer, index, packet, parent)

  -- Market Capitalization Weight: FLOAT128
  index, market_capitalization_weight = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_capitalization_weight.dissect(buffer, index, packet, parent)

  -- Accumulated Cash: FLOAT128
  index, accumulated_cash = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_cash.dissect(buffer, index, packet, parent)

  -- Cash Inflow: FLOAT128
  index, cash_inflow = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.cash_inflow.dissect(buffer, index, packet, parent)

  -- Reinvest Call Cash: FLOAT128
  index, reinvest_call_cash = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.reinvest_call_cash.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Index Krx Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_index_krx_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.bond_index_krx_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_index_krx_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_index_krx_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_index_krx_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_ktb_index_term_structure_message = {}

-- Size: Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_ktb_index_term_structure_message.size =
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_index_id.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.base_date.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.base_time.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.basis_price.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_ytm.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_constituent.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.size

-- Display: Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_ktb_index_term_structure_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_ktb_index_term_structure_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bond Index Id: String
  index, bond_index_id = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_index_id.dissect(buffer, index, packet, parent)

  -- Base Date: String
  index, base_date = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.base_date.dissect(buffer, index, packet, parent)

  -- Base Time: String
  index, base_time = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.base_time.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- Basis Price: Double
  index, basis_price = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.basis_price.dissect(buffer, index, packet, parent)

  -- Clean Price: Double
  index, clean_price = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price.dissect(buffer, index, packet, parent)

  -- Average Ytm: Double
  index, average_ytm = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_ytm.dissect(buffer, index, packet, parent)

  -- Index Constituent: String
  index, index_constituent = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_constituent.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_ktb_index_term_structure_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.bond_ktb_index_term_structure_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_ktb_index_term_structure_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_ktb_index_term_structure_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_ktb_index_term_structure_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Ktb Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_ktb_index_message = {}

-- Size: Bond Ktb Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_ktb_index_message.size =
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_index_id.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.base_date.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.base_time.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.total_profit_index.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price_index_ktb.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_price_index_ktb.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.call_reinvestment_index_ktb.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.zero_reinvestment_index_ktb.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.futures_basis_price.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.duration.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.convexity.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_ytm.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_forward_ytm.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.size

-- Display: Bond Ktb Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_ktb_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Ktb Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_ktb_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bond Index Id: String
  index, bond_index_id = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_index_id.dissect(buffer, index, packet, parent)

  -- Base Date: String
  index, base_date = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.base_date.dissect(buffer, index, packet, parent)

  -- Base Time: String
  index, base_time = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.base_time.dissect(buffer, index, packet, parent)

  -- Total Profit Index: Double
  index, total_profit_index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.total_profit_index.dissect(buffer, index, packet, parent)

  -- Clean Price Index Ktb: Double
  index, clean_price_index_ktb = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price_index_ktb.dissect(buffer, index, packet, parent)

  -- Market Price Index Ktb: Double
  index, market_price_index_ktb = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.market_price_index_ktb.dissect(buffer, index, packet, parent)

  -- Call Re-Investment Index Ktb: Double
  index, call_reinvestment_index_ktb = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.call_reinvestment_index_ktb.dissect(buffer, index, packet, parent)

  -- Zero Re-Investment Index Ktb: Double
  index, zero_reinvestment_index_ktb = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.zero_reinvestment_index_ktb.dissect(buffer, index, packet, parent)

  -- Futures Basis Price: Double
  index, futures_basis_price = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.futures_basis_price.dissect(buffer, index, packet, parent)

  -- Duration: Double
  index, duration = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.duration.dissect(buffer, index, packet, parent)

  -- Convexity: Double
  index, convexity = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.convexity.dissect(buffer, index, packet, parent)

  -- Average Ytm: Double
  index, average_ytm = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_ytm.dissect(buffer, index, packet, parent)

  -- Average Forward Ytm: Double
  index, average_forward_ytm = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_forward_ytm.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Ktb Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_ktb_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.bond_ktb_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_ktb_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_ktb_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_ktb_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Prime Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_prime_index_message = {}

-- Size: Bond Prime Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_prime_index_message.size =
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.calculating_date.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.calculating_time.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.group_code.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.maturity_code.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price_index_krx.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.total_earnings_index.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price_index_weight.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.total_earnings_index_weight.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_clean_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_sum_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_duration.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_convexity.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_yld.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.transmission_time.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.size

-- Display: Bond Prime Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_prime_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Prime Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_prime_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Calculating Date: String
  index, calculating_date = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.calculating_date.dissect(buffer, index, packet, parent)

  -- Calculating Time: String
  index, calculating_time = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.calculating_time.dissect(buffer, index, packet, parent)

  -- Group Code: String
  index, group_code = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.group_code.dissect(buffer, index, packet, parent)

  -- Maturity Code: String
  index, maturity_code = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.maturity_code.dissect(buffer, index, packet, parent)

  -- Clean Price Index Krx: FLOAT128
  index, clean_price_index_krx = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price_index_krx.dissect(buffer, index, packet, parent)

  -- Total Earnings Index: FLOAT128
  index, total_earnings_index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.total_earnings_index.dissect(buffer, index, packet, parent)

  -- Clean Price Index Weight: FLOAT128
  index, clean_price_index_weight = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.clean_price_index_weight.dissect(buffer, index, packet, parent)

  -- Total Earnings Index Weight: FLOAT128
  index, total_earnings_index_weight = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.total_earnings_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Clean Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_clean_index_value_for_integrity_index_weight = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_clean_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Sum Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_sum_index_value_for_integrity_index_weight = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.weight_of_sum_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Average Duration: FLOAT128
  index, average_duration = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_duration.dissect(buffer, index, packet, parent)

  -- Average Convexity: FLOAT128
  index, average_convexity = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_convexity.dissect(buffer, index, packet, parent)

  -- Average Yld: FLOAT128
  index, average_yld = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.average_yld.dissect(buffer, index, packet, parent)

  -- Transmission Time: String
  index, transmission_time = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.transmission_time.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Prime Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_prime_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.bond_prime_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_prime_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_prime_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_prime_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Global Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.global_index_message = {}

-- Size: Global Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.global_index_message.size =
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_id.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.business_date.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.calculation_time.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_change_sign_against_the_previous_day.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_change_against_the_previous_day.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.currency_code.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.filler_4.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.size

-- Display: Global Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.global_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Global Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.global_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- Business Date: String
  index, business_date = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.business_date.dissect(buffer, index, packet, parent)

  -- Calculation Time: String
  index, calculation_time = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.calculation_time.dissect(buffer, index, packet, parent)

  -- Index: Double
  index, index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index.dissect(buffer, index, packet, parent)

  -- Index Change Sign Against The Previous Day: String
  index, index_change_sign_against_the_previous_day = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_change_sign_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Index Change Against The Previous Day: Double
  index, index_change_against_the_previous_day = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_change_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Currency Code: String
  index, currency_code = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.currency_code.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.filler_4.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Global Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.global_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.global_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.global_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.global_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.global_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Krx Estimated Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.krx_estimated_index_message = {}

-- Size: Krx Estimated Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.krx_estimated_index_message.size =
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_id.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.calculation_time.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_change_sign_against_the_previous_day.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_change_against_the_previous_day.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_trading_value.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.filler_4.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.size

-- Display: Krx Estimated Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.krx_estimated_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Krx Estimated Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.krx_estimated_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- Calculation Time: String
  index, calculation_time = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.calculation_time.dissect(buffer, index, packet, parent)

  -- Index: Double
  index, index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index.dissect(buffer, index, packet, parent)

  -- Index Change Sign Against The Previous Day: String
  index, index_change_sign_against_the_previous_day = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_change_sign_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Index Change Against The Previous Day: Double
  index, index_change_against_the_previous_day = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_change_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: Long
  index, accumulated_trading_value = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.filler_4.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Krx Estimated Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.krx_estimated_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.krx_estimated_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.krx_estimated_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.krx_estimated_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.krx_estimated_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Krx Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.krx_index_message = {}

-- Size: Krx Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.krx_index_message.size =
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_id.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.calculation_time.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_change_sign_against_the_previous_day.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_change_against_the_previous_day.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_trading_value.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.filler_4.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.size

-- Display: Krx Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.krx_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Krx Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.krx_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- Calculation Time: String
  index, calculation_time = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.calculation_time.dissect(buffer, index, packet, parent)

  -- Index: Double
  index, index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index.dissect(buffer, index, packet, parent)

  -- Index Change Sign Against The Previous Day: String
  index, index_change_sign_against_the_previous_day = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_change_sign_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Index Change Against The Previous Day: Double
  index, index_change_against_the_previous_day = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.index_change_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: Long
  index, accumulated_trading_value = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.filler_4.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Krx Index Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.krx_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.krx_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.krx_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.krx_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.krx_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Polling Data Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.polling_data_message = {}

-- Size: Polling Data Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.polling_data_message.size =
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.current_time.size + 
  koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.size

-- Display: Polling Data Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.polling_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Polling Data Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.polling_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Time: String
  index, current_time = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.current_time.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Polling Data Message
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.polling_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.fields.polling_data_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.polling_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.polling_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.polling_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.payload = {}

-- Dispatch: Payload
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.payload.dispatch = {
  ["I2000"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.polling_data_message.dissect,
  ["IA000"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.krx_index_message.dissect,
  ["IB000"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.krx_estimated_index_message.dissect,
  ["J2000"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.global_index_message.dissect,
  ["J4000"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_prime_index_message.dissect,
  ["K1000"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_ktb_index_message.dissect,
  ["K8000"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_ktb_index_term_structure_message.dissect,
  ["IG000"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.bond_index_krx_message.dissect,
  ["C001S"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_industry_message.dissect,
  ["C001Q"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_industry_message.dissect,
  ["C001X"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_industry_message.dissect,
  ["C101S"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_issue_eod_message.dissect,
  ["C102S"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_issue_eod_message.dissect,
  ["C103S"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_issue_eod_message.dissect,
  ["C104S"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_issue_eod_message.dissect,
  ["C105S"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_issue_eod_message.dissect,
  ["C101Q"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_issue_eod_message.dissect,
  ["C101X"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_issue_eod_message.dissect,
  ["C101G"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_issue_eod_message.dissect,
  ["IC02S"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_commodities_message.dissect,
  ["IC03S"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_commodities_message.dissect,
  ["IC04S"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_commodities_message.dissect,
  ["IC05S"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_commodities_message.dissect,
  ["IC01G"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_investor_activities_per_commodities_message.dissect,
  ["I801S"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_short_selling_message.dissect,
  ["I803S"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_short_selling_message.dissect,
  ["I804S"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_short_selling_message.dissect,
  ["I805S"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_short_selling_message.dissect,
  ["I801Q"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_short_selling_message.dissect,
  ["B001S"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_treasury_stocks_traded_message.dissect,
  ["B001Q"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_treasury_stocks_traded_message.dissect,
  ["B001X"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_treasury_stocks_traded_message.dissect,
  ["O401S"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_buy_in_volume_message.dissect,
  ["O402S"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_buy_in_volume_message.dissect,
  ["O403S"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_buy_in_volume_message.dissect,
  ["O404S"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_buy_in_volume_message.dissect,
  ["O401Q"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_buy_in_volume_message.dissect,
  ["O401X"] = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.securities_buy_in_volume_message.dissect,
}

-- Dissect: Payload
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.payload.dissect = function(buffer, offset, packet, parent, tr_code)
  local dissect = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.payload.dispatch[tr_code]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Packet
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.packet = {}

-- Verify required size of Udp packet
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.packet.requiredsize = function(buffer)
  return buffer:len() >= koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.tr_code.size
end

-- Dissect Packet
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Tr Code: String
    index, tr_code = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.tr_code.dissect(buffer, index, packet, parent)

    -- Payload: Runtime Type with 14 branches
    index = koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.payload.dissect(buffer, index, packet, parent, tr_code)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.init()
end

-- Dissector for Koscom MdcsRealtime ReferenceInfoInvestorActivities Exture 2.020
function omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.name

  -- Dissect protocol
  local protocol = parent:add(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020, buffer(), omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.description, "("..buffer:len().." Bytes)")
  return koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.packet.fingerprint = function(buffer)
  if buffer:len() < 5 then
    return false
  end

  local tr_code = buffer(0, 5):string(koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.text_encoding)

  -- Polling Data Message
  if tr_code == "I2000" then
    return true
  end

  -- Krx Index Message
  if tr_code == "IA000" then
    return true
  end

  -- Krx Estimated Index Message
  if tr_code == "IB000" then
    return true
  end

  -- Global Index Message
  if tr_code == "J2000" then
    return true
  end

  -- Bond Prime Index Message
  if tr_code == "J4000" then
    return true
  end

  -- Bond Ktb Index Message
  if tr_code == "K1000" then
    return true
  end

  -- Bond Ktb Index Term Structure Message
  if tr_code == "K8000" then
    return true
  end

  -- Bond Index Krx Message
  if tr_code == "IG000" then
    return true
  end

  -- Securities Investor Activities Per Industry Message
  if tr_code == "C001S" then
    return true
  end

  -- Securities Investor Activities Per Industry Message
  if tr_code == "C001Q" then
    return true
  end

  -- Securities Investor Activities Per Industry Message
  if tr_code == "C001X" then
    return true
  end

  -- Securities Investor Activities Per Issue Eod Message
  if tr_code == "C101S" then
    return true
  end

  -- Securities Investor Activities Per Issue Eod Message
  if tr_code == "C102S" then
    return true
  end

  -- Securities Investor Activities Per Issue Eod Message
  if tr_code == "C103S" then
    return true
  end

  -- Securities Investor Activities Per Issue Eod Message
  if tr_code == "C104S" then
    return true
  end

  -- Securities Investor Activities Per Issue Eod Message
  if tr_code == "C105S" then
    return true
  end

  -- Securities Investor Activities Per Issue Eod Message
  if tr_code == "C101Q" then
    return true
  end

  -- Securities Investor Activities Per Issue Eod Message
  if tr_code == "C101X" then
    return true
  end

  -- Securities Investor Activities Per Issue Eod Message
  if tr_code == "C101G" then
    return true
  end

  -- Securities Investor Activities Per Commodities Message
  if tr_code == "IC02S" then
    return true
  end

  -- Securities Investor Activities Per Commodities Message
  if tr_code == "IC03S" then
    return true
  end

  -- Securities Investor Activities Per Commodities Message
  if tr_code == "IC04S" then
    return true
  end

  -- Securities Investor Activities Per Commodities Message
  if tr_code == "IC05S" then
    return true
  end

  -- Securities Investor Activities Per Commodities Message
  if tr_code == "IC01G" then
    return true
  end

  -- Securities Short Selling Message
  if tr_code == "I801S" then
    return true
  end

  -- Securities Short Selling Message
  if tr_code == "I803S" then
    return true
  end

  -- Securities Short Selling Message
  if tr_code == "I804S" then
    return true
  end

  -- Securities Short Selling Message
  if tr_code == "I805S" then
    return true
  end

  -- Securities Short Selling Message
  if tr_code == "I801Q" then
    return true
  end

  -- Securities Treasury Stocks Traded Message
  if tr_code == "B001S" then
    return true
  end

  -- Securities Treasury Stocks Traded Message
  if tr_code == "B001Q" then
    return true
  end

  -- Securities Treasury Stocks Traded Message
  if tr_code == "B001X" then
    return true
  end

  -- Securities Buy In Volume Message
  if tr_code == "O401S" then
    return true
  end

  -- Securities Buy In Volume Message
  if tr_code == "O402S" then
    return true
  end

  -- Securities Buy In Volume Message
  if tr_code == "O403S" then
    return true
  end

  -- Securities Buy In Volume Message
  if tr_code == "O404S" then
    return true
  end

  -- Securities Buy In Volume Message
  if tr_code == "O401Q" then
    return true
  end

  -- Securities Buy In Volume Message
  if tr_code == "O401X" then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Koscom MdcsRealtime ReferenceInfoInvestorActivities Exture 2.020 (Udp)
local function omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020
  omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Koscom MdcsRealtime ReferenceInfoInvestorActivities Exture 2.020
omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020:register_heuristic("udp", omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020_udp_heuristic)

-- Register Koscom MdcsRealtime ReferenceInfoInvestorActivities Exture 2.020 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_koscom_mdcsrealtime_referenceinfoinvestoractivities_exture_v2_020)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Koscom Co., Ltd.
--   Version: 2.020
--   Date: Wednesday, September 23, 2026
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
