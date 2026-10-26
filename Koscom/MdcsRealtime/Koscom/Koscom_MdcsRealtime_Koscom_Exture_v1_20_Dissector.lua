-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Koscom MdcsRealtime Koscom Exture 1.20 Protocol
local omi_koscom_mdcsrealtime_koscom_exture_v1_20 = Proto("Omi.Koscom.MdcsRealtime.Koscom.Exture.v1.20", "Koscom MdcsRealtime Koscom Exture 1.20")

-- Protocol table
local koscom_mdcsrealtime_koscom_exture_v1_20 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Koscom MdcsRealtime Koscom Exture 1.20 Fields
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.appraised_value = ProtoField.new("Appraised Value", "koscom.mdcsrealtime.koscom.exture.v1.20.appraisedvalue", ftypes.UINT64, nil, nil, nil, "Appraised Value.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.ask_best_order = ProtoField.new("Ask Best Order", "koscom.mdcsrealtime.koscom.exture.v1.20.askbestorder", ftypes.UINT32, nil, nil, nil, "Ask best order.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.ask_quote_number = ProtoField.new("Ask Quote Number", "koscom.mdcsrealtime.koscom.exture.v1.20.askquotenumber", ftypes.UINT24, nil, nil, nil, "quote number for each issue.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.ask_trading_value_institution = ProtoField.new("Ask Trading Value Institution", "koscom.mdcsrealtime.koscom.exture.v1.20.asktradingvalueinstitution", ftypes.UINT64, nil, nil, nil, "Unit:Thousand KRW.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.ask_trading_value_investor = ProtoField.new("Ask Trading Value Investor", "koscom.mdcsrealtime.koscom.exture.v1.20.asktradingvalueinvestor", ftypes.UINT64, nil, nil, nil, "Ask Trading Value.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.ask_trading_volume_institution = ProtoField.new("Ask Trading Volume Institution", "koscom.mdcsrealtime.koscom.exture.v1.20.asktradingvolumeinstitution", ftypes.UINT64, nil, nil, nil, "Unit:Thousand KRW.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.ask_trading_volume_investor = ProtoField.new("Ask Trading Volume Investor", "koscom.mdcsrealtime.koscom.exture.v1.20.asktradingvolumeinvestor", ftypes.UINT64, nil, nil, nil, "Ask Trading Volume.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.ask_yield_institution = ProtoField.new("Ask Yield Institution", "koscom.mdcsrealtime.koscom.exture.v1.20.askyieldinstitution", ftypes.DOUBLE, nil, nil, nil, "9999V9999.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.ask_yield_investor = ProtoField.new("Ask Yield Investor", "koscom.mdcsrealtime.koscom.exture.v1.20.askyieldinvestor", ftypes.DOUBLE, nil, nil, nil, "99999V99999.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.available_lending_quantity = ProtoField.new("Available Lending Quantity", "koscom.mdcsrealtime.koscom.exture.v1.20.availablelendingquantity", ftypes.UINT64, nil, nil, nil, "Available stock-lending quantity (10 ASCII digits). Workbook field name: 대주가능수량.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.average_convexity = ProtoField.new("Average Convexity", "koscom.mdcsrealtime.koscom.exture.v1.20.averageconvexity", ftypes.DOUBLE, nil, nil, nil, "Average convexity (6 ASCII digits with 3 implied decimal places).")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.average_duration = ProtoField.new("Average Duration", "koscom.mdcsrealtime.koscom.exture.v1.20.averageduration", ftypes.DOUBLE, nil, nil, nil, "Average duration.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.average_duration_nullable = ProtoField.new("Average Duration Nullable", "koscom.mdcsrealtime.koscom.exture.v1.20.averagedurationnullable", ftypes.DOUBLE, nil, nil, nil, "Average duration (6 ASCII digits with 3 implied decimal places). Not calculated for MKF; set to '0'.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.average_forward_ytm = ProtoField.new("Average Forward Ytm", "koscom.mdcsrealtime.koscom.exture.v1.20.averageforwardytm", ftypes.DOUBLE, nil, nil, nil, "Average forward yield to maturity (6 ASCII digits with 3 implied decimal places). Unit: percent.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.average_forward_ytm_nullable = ProtoField.new("Average Forward Ytm Nullable", "koscom.mdcsrealtime.koscom.exture.v1.20.averageforwardytmnullable", ftypes.DOUBLE, nil, nil, nil, "Average forward YTM. Unit: percent. Not calculated; set to '0'.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.average_ytm = ProtoField.new("Average Ytm", "koscom.mdcsrealtime.koscom.exture.v1.20.averageytm", ftypes.DOUBLE, nil, nil, nil, "Average yield to maturity (6 ASCII digits with 3 implied decimal places). Unit: percent.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.based_fx = ProtoField.new("Based Fx", "koscom.mdcsrealtime.koscom.exture.v1.20.basedfx", ftypes.DOUBLE, nil, nil, nil, "9999V9999(KRW/USD, KRW/YEN, KRW/EURO, KRW/CNY, KRW/GBP, KRW/HKD, KRW/AUD, KRW/SGD, KRW/miscellaneous).")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.basis_price_after_action = ProtoField.new("Basis Price After Action", "koscom.mdcsrealtime.koscom.exture.v1.20.basispriceafteraction", ftypes.UINT32, nil, nil, nil, "Unit: KRW (in case that data type is not 01, then \"0\").")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.basis_price_before_action = ProtoField.new("Basis Price Before Action", "koscom.mdcsrealtime.koscom.exture.v1.20.basispricebeforeaction", ftypes.UINT32, nil, nil, nil, "Unit: KRW (in case that data type is not 01, then \"0\").")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.best_ask_order = ProtoField.new("Best Ask Order", "koscom.mdcsrealtime.koscom.exture.v1.20.bestaskorder", ftypes.UINT32, nil, nil, nil, "Best ask order.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.best_bid_order = ProtoField.new("Best Bid Order", "koscom.mdcsrealtime.koscom.exture.v1.20.bestbidorder", ftypes.UINT32, nil, nil, nil, "Best bid order.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.bid_best_order = ProtoField.new("Bid Best Order", "koscom.mdcsrealtime.koscom.exture.v1.20.bidbestorder", ftypes.UINT32, nil, nil, nil, "Bid best order.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.bid_quote_number = ProtoField.new("Bid Quote Number", "koscom.mdcsrealtime.koscom.exture.v1.20.bidquotenumber", ftypes.UINT24, nil, nil, nil, "quote number for each issue.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.bid_trading_value_institution = ProtoField.new("Bid Trading Value Institution", "koscom.mdcsrealtime.koscom.exture.v1.20.bidtradingvalueinstitution", ftypes.UINT64, nil, nil, nil, "Unit:Thousand KRW.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.bid_trading_value_investor = ProtoField.new("Bid Trading Value Investor", "koscom.mdcsrealtime.koscom.exture.v1.20.bidtradingvalueinvestor", ftypes.UINT64, nil, nil, nil, "Bid Trading Value.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.bid_trading_volume_institution = ProtoField.new("Bid Trading Volume Institution", "koscom.mdcsrealtime.koscom.exture.v1.20.bidtradingvolumeinstitution", ftypes.UINT64, nil, nil, nil, "Unit:Thousand KRW.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.bid_trading_volume_investor = ProtoField.new("Bid Trading Volume Investor", "koscom.mdcsrealtime.koscom.exture.v1.20.bidtradingvolumeinvestor", ftypes.UINT64, nil, nil, nil, "Bid Trading Volume.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.bid_yield_institution = ProtoField.new("Bid Yield Institution", "koscom.mdcsrealtime.koscom.exture.v1.20.bidyieldinstitution", ftypes.DOUBLE, nil, nil, nil, "9999V9999.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.bid_yield_investor = ProtoField.new("Bid Yield Investor", "koscom.mdcsrealtime.koscom.exture.v1.20.bidyieldinvestor", ftypes.DOUBLE, nil, nil, nil, "99999V99999.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.bidask_type = ProtoField.new("Bidask Type", "koscom.mdcsrealtime.koscom.exture.v1.20.bidasktype", ftypes.STRING, nil, nil, nil, "1: ask, 2:bid.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.bond_type_code = ProtoField.new("Bond Type Code", "koscom.mdcsrealtime.koscom.exture.v1.20.bondtypecode", ftypes.STRING, nil, nil, nil, "1:KTB 2:MB 3:Special Bond 4:MSB 5:Financial Bond 6:Corporate Bond.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.bond_type_name = ProtoField.new("Bond Type Name", "koscom.mdcsrealtime.koscom.exture.v1.20.bondtypename", ftypes.STRING, nil, nil, nil, "Traded Bond Type Name.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.branch_name = ProtoField.new("Branch Name", "koscom.mdcsrealtime.koscom.exture.v1.20.branchname", ftypes.STRING, nil, nil, nil, "SPACE.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.business_code = ProtoField.new("Business Code", "koscom.mdcsrealtime.koscom.exture.v1.20.businesscode", ftypes.STRING, nil, nil, nil, "Business code identifying the disclosure type. 001 = Loan transaction available quantity public disclosure. Workbook field name: 업무코드.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.call_re_investment_index = ProtoField.new("Call Re Investment Index", "koscom.mdcsrealtime.koscom.exture.v1.20.callreinvestmentindex", ftypes.DOUBLE, nil, nil, nil, "Call re-investment index (10 ASCII digits with 4 implied decimal places).")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.change_category = ProtoField.new("Change Category", "koscom.mdcsrealtime.koscom.exture.v1.20.changecategory", ftypes.STRING, nil, nil, nil, "1:Newly added, 2:Update a current announcemet, 3:Deleted.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.change_date = ProtoField.new("Change Date", "koscom.mdcsrealtime.koscom.exture.v1.20.changedate", ftypes.STRING, nil, nil, nil, "YYYYMMDD(in case that data type is not 01, then \"0\").")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.change_time = ProtoField.new("Change Time", "koscom.mdcsrealtime.koscom.exture.v1.20.changetime", ftypes.STRING, nil, nil, nil, "HHMMSSMM(in case that data type is not 01, then \"0\").")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.clean_price_index = ProtoField.new("Clean Price Index", "koscom.mdcsrealtime.koscom.exture.v1.20.cleanpriceindex", ftypes.DOUBLE, nil, nil, nil, "Clean price index (10 ASCII digits with 4 implied decimal places). Standard 10,000.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.closing_price = ProtoField.new("Closing Price", "koscom.mdcsrealtime.koscom.exture.v1.20.closingprice", ftypes.UINT32, nil, nil, nil, "Closing Price.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.compared_to_previous_day = ProtoField.new("Compared To Previous Day", "koscom.mdcsrealtime.koscom.exture.v1.20.comparedtopreviousday", ftypes.STRING, nil, nil, nil, "Compared to previous day.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.compared_to_previous_day_type = ProtoField.new("Compared To Previous Day Type", "koscom.mdcsrealtime.koscom.exture.v1.20.comparedtopreviousdaytype", ftypes.STRING, nil, nil, nil, "+: up -: down space: steadiness.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.comparison = ProtoField.new("Comparison", "koscom.mdcsrealtime.koscom.exture.v1.20.comparison", ftypes.DOUBLE, nil, nil, nil, "Magnitude of the index change against the previous day (9 ASCII digits with 2 implied decimal places).")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.composition_constituents_code = ProtoField.new("Composition Constituents Code", "koscom.mdcsrealtime.koscom.exture.v1.20.compositionconstituentscode", ftypes.STRING, nil, nil, nil, "ISIN Standard Code Overseas constituents '0' or can set by Space.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.composition_constituents_name = ProtoField.new("Composition Constituents Name", "koscom.mdcsrealtime.koscom.exture.v1.20.compositionconstituentsname", ftypes.STRING, nil, nil, nil, "Name of constitution.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.composition_constituents_number = ProtoField.new("Composition Constituents Number", "koscom.mdcsrealtime.koscom.exture.v1.20.compositionconstituentsnumber", ftypes.UINT16, nil, nil, nil, "Unit: constituents (including cash).")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.composition_issue_code = ProtoField.new("Composition Issue Code", "koscom.mdcsrealtime.koscom.exture.v1.20.compositionissuecode", ftypes.STRING, nil, nil, nil, "KRD010010001:KRW CASH listed futures: isin code, in case of non-listed, separated definition: futures in case of non-listed, separate definition CP added : KRZ + 9 digits FXFWD0000USD : FX Forward(USD.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.composition_issue_market_type = ProtoField.new("Composition Issue Market Type", "koscom.mdcsrealtime.koscom.exture.v1.20.compositionissuemarkettype", ftypes.STRING, nil, nil, nil, "0: KOSPI(Including cash,KSP200T00001,FKSP200T0001) 1:KOSDAQ 2: Others 3:Bond 4: Futures 2010.04.09 5: spot.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.composition_issue_name = ProtoField.new("Composition Issue Name", "koscom.mdcsrealtime.koscom.exture.v1.20.compositionissuename", ftypes.STRING, nil, nil, nil, "In case of foreign issue is issue name. For others, '0' or SPACE.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.composition_issue_number = ProtoField.new("Composition Issue Number", "koscom.mdcsrealtime.koscom.exture.v1.20.compositionissuenumber", ftypes.UINT16, nil, nil, nil, "Unit: issue (including cash).")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.composition_ratio = ProtoField.new("Composition Ratio", "koscom.mdcsrealtime.koscom.exture.v1.20.compositionratio", ftypes.DOUBLE, nil, nil, nil, "Composition ratio within Indices 99999V99 Unit:%.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.contract_category = ProtoField.new("Contract Category", "koscom.mdcsrealtime.koscom.exture.v1.20.contractcategory", ftypes.STRING, nil, nil, nil, "1:Bid 2:Ask 3: Trading.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.contract_date = ProtoField.new("Contract Date", "koscom.mdcsrealtime.koscom.exture.v1.20.contractdate", ftypes.STRING, nil, nil, nil, "1:Outstanding Negotiation, 2:T+0, 3:T+1, 4:T+2, ~ 32:T+30.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.cu_unit_sharenumber_of_contractkrw_cashusd_cashconverted_amountkrw = ProtoField.new("CU unit share/Number of contract/KRW Cash/USD Cash/Converted amount(KRW)", "koscom.mdcsrealtime.koscom.exture.v1.20.cuunitsharenumberofcontractkrwcashusdcashconvertedamountkrw", ftypes.UINT64, nil, nil, nil, "※1cu unit share/number of contract/krw cash/usd cash/warehouse warrant unit is defined by the composion issue code(7th field) - stock→unit:share (if the first field is \"-\"(minus signal), it means shor.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.data_process_category = ProtoField.new("Data Process Category", "koscom.mdcsrealtime.koscom.exture.v1.20.dataprocesscategory", ftypes.STRING, nil, nil, nil, "I:Normal D:Delete E:End.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.data_seq_number = ProtoField.new("Data Seq Number", "koscom.mdcsrealtime.koscom.exture.v1.20.dataseqnumber", ftypes.UINT32, nil, nil, nil, "Transmission seq. number.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.data_small_category = ProtoField.new("Data Small Category", "koscom.mdcsrealtime.koscom.exture.v1.20.datasmallcategory", ftypes.STRING, nil, nil, nil, "H1:Quotes /Trading H2:Quotes /Trading Change Detail.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.data_source_type = ProtoField.new("Data Source Type", "koscom.mdcsrealtime.koscom.exture.v1.20.datasourcetype", ftypes.STRING, nil, nil, nil, "SPACE set to FILLER.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.data_type = ProtoField.new("Data Type", "koscom.mdcsrealtime.koscom.exture.v1.20.datatype", ftypes.STRING, nil, nil, nil, "01: change of basis price and upper/lower limit price 02: temporary halt, 03: resumption after temporary halt.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.date = ProtoField.new("Date", "koscom.mdcsrealtime.koscom.exture.v1.20.date", ftypes.STRING, nil, nil, nil, "YYYMMDD:Last business day.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.day_before_previous_days_nontaxable_base_price_for_overseas_stocks = ProtoField.new("Day Before Previous Days Nontaxable Base Price For Overseas Stocks", "koscom.mdcsrealtime.koscom.exture.v1.20.daybeforepreviousdaysnontaxablebasepriceforoverseasstocks", ftypes.DOUBLE, nil, nil, nil, "9999999V99.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.disparate_ratio = ProtoField.new("Disparate Ratio", "koscom.mdcsrealtime.koscom.exture.v1.20.disparateratio", ftypes.DOUBLE, nil, nil, nil, "9(7)V9(2), Unit:%.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.disparate_ratio_sign = ProtoField.new("Disparate Ratio Sign", "koscom.mdcsrealtime.koscom.exture.v1.20.disparateratiosign", ftypes.STRING, nil, nil, nil, "SPACE:0, '+':>0, '-':<0.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.during_market_hours_final_iv = ProtoField.new("During Market Hours Final Iv", "koscom.mdcsrealtime.koscom.exture.v1.20.duringmarkethoursfinaliv", ftypes.DOUBLE, nil, nil, nil, "9(7)V9(2).")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.during_marketfinal_market_nav = ProtoField.new("During Marketfinal Market Nav", "koscom.mdcsrealtime.koscom.exture.v1.20.duringmarketfinalmarketnav", ftypes.DOUBLE, nil, nil, nil, "9(7)V9(2) Information Category 03S: Fund unit, 05S: TU unit.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.during_marketfinal_nav = ProtoField.new("During Marketfinal Nav", "koscom.mdcsrealtime.koscom.exture.v1.20.duringmarketfinalnav", ftypes.DOUBLE, nil, nil, nil, "9(7)V9(2) Information Category 03S: Fund unit, 05S: TU unit.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.end_keyword = ProtoField.new("End Keyword", "koscom.mdcsrealtime.koscom.exture.v1.20.endkeyword", ftypes.UINT8, nil, nil, nil, "End of text sentinel (0xFF). Workbook field name: 정보분배메세지종료키워드.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.etf_cu_quantity = ProtoField.new("Etf Cu Quantity", "koscom.mdcsrealtime.koscom.exture.v1.20.etfcuquantity", ftypes.UINT32, nil, nil, nil, "Unit: Securities.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.etf_flow_net_asset_total_amount = ProtoField.new("Etf Flow Net Asset Total Amount", "koscom.mdcsrealtime.koscom.exture.v1.20.etfflownetassettotalamount", ftypes.UINT64, nil, nil, nil, "ETF Flow Net Asset total amount.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.etf_foreign_final_net_asset_value = ProtoField.new("Etf Foreign Final Net Asset Value", "koscom.mdcsrealtime.koscom.exture.v1.20.etfforeignfinalnetassetvalue", ftypes.DOUBLE, nil, nil, nil, "9(7)V9(2).")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.etf_foreign_flow_net_asset_total_amount = ProtoField.new("Etf Foreign Flow Net Asset Total Amount", "koscom.mdcsrealtime.koscom.exture.v1.20.etfforeignflownetassettotalamount", ftypes.UINT64, nil, nil, nil, "ETF Foreign Flow Net Asset Total Amount.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.etf_foreign_net_asset_total = ProtoField.new("Etf Foreign Net Asset Total", "koscom.mdcsrealtime.koscom.exture.v1.20.etfforeignnetassettotal", ftypes.STRING, nil, nil, nil, "ETF Foreign Net Asset Total.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.etf_foreign_net_asset_value_amount = ProtoField.new("Etf Foreign Net Asset Value Amount", "koscom.mdcsrealtime.koscom.exture.v1.20.etfforeignnetassetvalueamount", ftypes.UINT64, nil, nil, nil, "Unit: KRW.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.etf_net_asset_value_amount = ProtoField.new("Etf Net Asset Value Amount", "koscom.mdcsrealtime.koscom.exture.v1.20.etfnetassetvalueamount", ftypes.DOUBLE, nil, nil, nil, "9(7)V9(2) Information Category 03S: Final NAV of the previous business day, Fund unit Information Category 05S: TU unit Information Category 01Q: Final NAV of the previous business day, Fund unit.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_1 = ProtoField.new("Filler 1", "koscom.mdcsrealtime.koscom.exture.v1.20.filler1", ftypes.STRING, nil, nil, nil, "Reserved filler. ASCII space.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_10 = ProtoField.new("Filler 10", "koscom.mdcsrealtime.koscom.exture.v1.20.filler10", ftypes.UINT64, nil, nil, nil, "SPACE 2026.08.10 changed.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_11 = ProtoField.new("Filler 11", "koscom.mdcsrealtime.koscom.exture.v1.20.filler11", ftypes.STRING, nil, nil, nil, "Reserved filler. ASCII spaces.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_19 = ProtoField.new("Filler 19", "koscom.mdcsrealtime.koscom.exture.v1.20.filler19", ftypes.STRING, nil, nil, nil, "Reserved filler. ASCII spaces.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_2 = ProtoField.new("Filler 2", "koscom.mdcsrealtime.koscom.exture.v1.20.filler2", ftypes.STRING, nil, nil, nil, "Reserved filler. ASCII spaces.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_28 = ProtoField.new("Filler 28", "koscom.mdcsrealtime.koscom.exture.v1.20.filler28", ftypes.STRING, nil, nil, nil, "Reserved filler. ASCII spaces.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_33 = ProtoField.new("Filler 33", "koscom.mdcsrealtime.koscom.exture.v1.20.filler33", ftypes.STRING, nil, nil, nil, "Reserved filler. ASCII spaces.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_38 = ProtoField.new("Filler 38", "koscom.mdcsrealtime.koscom.exture.v1.20.filler38", ftypes.STRING, nil, nil, nil, "Reserved filler. ASCII spaces.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_4 = ProtoField.new("Filler 4", "koscom.mdcsrealtime.koscom.exture.v1.20.filler4", ftypes.STRING, nil, nil, nil, "Reserved filler. ASCII spaces.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_40 = ProtoField.new("Filler 40", "koscom.mdcsrealtime.koscom.exture.v1.20.filler40", ftypes.STRING, nil, nil, nil, "Reserved filler. ASCII spaces.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_46 = ProtoField.new("Filler 46", "koscom.mdcsrealtime.koscom.exture.v1.20.filler46", ftypes.STRING, nil, nil, nil, "Reserved filler. ASCII spaces.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_5 = ProtoField.new("Filler 5", "koscom.mdcsrealtime.koscom.exture.v1.20.filler5", ftypes.STRING, nil, nil, nil, "Reserved filler. ASCII spaces.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_56 = ProtoField.new("Filler 56", "koscom.mdcsrealtime.koscom.exture.v1.20.filler56", ftypes.STRING, nil, nil, nil, "Reserved filler. ASCII spaces.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_6 = ProtoField.new("Filler 6", "koscom.mdcsrealtime.koscom.exture.v1.20.filler6", ftypes.STRING, nil, nil, nil, "Reserved filler. ASCII spaces.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_60 = ProtoField.new("Filler 60", "koscom.mdcsrealtime.koscom.exture.v1.20.filler60", ftypes.STRING, nil, nil, nil, "Reserved filler. ASCII spaces.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_7 = ProtoField.new("Filler 7", "koscom.mdcsrealtime.koscom.exture.v1.20.filler7", ftypes.STRING, nil, nil, nil, "Reserved filler. ASCII spaces.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_8 = ProtoField.new("Filler 8", "koscom.mdcsrealtime.koscom.exture.v1.20.filler8", ftypes.STRING, nil, nil, nil, "Reserved filler. ASCII spaces.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.futures_basis_price = ProtoField.new("Futures Basis Price", "koscom.mdcsrealtime.koscom.exture.v1.20.futuresbasisprice", ftypes.DOUBLE, nil, nil, nil, "Futures basis price (9 ASCII digits with 2 implied decimal places).")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.futures_basis_price_nullable = ProtoField.new("Futures Basis Price Nullable", "koscom.mdcsrealtime.koscom.exture.v1.20.futuresbasispricenullable", ftypes.DOUBLE, nil, nil, nil, "Futures basis price. Not calculated; set to '0'.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.fx_category = ProtoField.new("Fx Category", "koscom.mdcsrealtime.koscom.exture.v1.20.fxcategory", ftypes.STRING, nil, nil, nil, "1:KRW 2:USD 3:YEN 4:EURO 5:CNY 6:GBP 7:HKD 8:AUD 9:SGD 0:miscellaneous.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.high_price = ProtoField.new("High Price", "koscom.mdcsrealtime.koscom.exture.v1.20.highprice", ftypes.UINT32, nil, nil, nil, "High price.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.hours = ProtoField.new("Hours", "koscom.mdcsrealtime.koscom.exture.v1.20.hours", ftypes.STRING, nil, nil, nil, "HHMMSS:During Market hours JUNJJJ:Market Closure.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.index = ProtoField.new("Index", "koscom.mdcsrealtime.koscom.exture.v1.20.index", ftypes.DOUBLE, nil, nil, nil, "Current MKF Index value (9 ASCII digits with 2 implied decimal places).")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.index_id = ProtoField.new("Index Id", "koscom.mdcsrealtime.koscom.exture.v1.20.indexid", ftypes.STRING, nil, nil, nil, "MKF Bond Index identifier. Refer to the Code Table sheet.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.input_date = ProtoField.new("Input Date", "koscom.mdcsrealtime.koscom.exture.v1.20.inputdate", ftypes.STRING, nil, nil, nil, "YYYYMMDD.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.institution_code = ProtoField.new("Institution Code", "koscom.mdcsrealtime.koscom.exture.v1.20.institutioncode", ftypes.STRING, nil, nil, nil, "Refer to Code Table.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.intrinsic_volatility = ProtoField.new("Intrinsic Volatility", "koscom.mdcsrealtime.koscom.exture.v1.20.intrinsicvolatility", ftypes.DOUBLE, nil, nil, nil, "9(3)V9(2) \"0\" for Early Closed ELW.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.investor_category = ProtoField.new("Investor Category", "koscom.mdcsrealtime.koscom.exture.v1.20.investorcategory", ftypes.STRING, nil, nil, nil, "Refer to Code Table.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.isin = ProtoField.new("Isin", "koscom.mdcsrealtime.koscom.exture.v1.20.isin", ftypes.STRING, nil, nil, nil, "Standard Code(ISIN) ISIN ← ETN Symbol Code.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.isin_nullable = ProtoField.new("Isin Nullable", "koscom.mdcsrealtime.koscom.exture.v1.20.isinnullable", ftypes.STRING, nil, nil, nil, "Standard Code(ISIN) ISIN ← Issue code (in case that data type is not 01, then \"0\").")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.issue_code = ProtoField.new("Issue Code", "koscom.mdcsrealtime.koscom.exture.v1.20.issuecode", ftypes.STRING, nil, nil, nil, "Standard Code (ISIN) of the issue. Workbook field name: 종목코드.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.low_price = ProtoField.new("Low Price", "koscom.mdcsrealtime.koscom.exture.v1.20.lowprice", ftypes.UINT32, nil, nil, nil, "Low price.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.lower_limit_price_after_action = ProtoField.new("Lower Limit Price After Action", "koscom.mdcsrealtime.koscom.exture.v1.20.lowerlimitpriceafteraction", ftypes.UINT32, nil, nil, nil, "Unit: KRW (in case that data type is not 01, then \"0\").")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.lower_limit_price_before_action = ProtoField.new("Lower Limit Price Before Action", "koscom.mdcsrealtime.koscom.exture.v1.20.lowerlimitpricebeforeaction", ftypes.UINT32, nil, nil, nil, "Unit: KRW (in case that data type is not 01, then \"0\").")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.market_base_rate = ProtoField.new("Market Base Rate", "koscom.mdcsrealtime.koscom.exture.v1.20.marketbaserate", ftypes.DOUBLE, nil, nil, nil, "999V99999, FRN.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.market_data_type = ProtoField.new("Market Data Type", "koscom.mdcsrealtime.koscom.exture.v1.20.marketdatatype", ftypes.STRING, nil, nil, nil, "1:Profit rate, 2:Price.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.market_price_index = ProtoField.new("Market Price Index", "koscom.mdcsrealtime.koscom.exture.v1.20.marketpriceindex", ftypes.DOUBLE, nil, nil, nil, "Market price index (10 ASCII digits with 4 implied decimal places). Standard 10,000.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.name_of_counterparty = ProtoField.new("Name Of Counterparty", "koscom.mdcsrealtime.koscom.exture.v1.20.nameofcounterparty", ftypes.STRING, nil, nil, nil, "Name of counterparty.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.net_assets_amount = ProtoField.new("Net Assets Amount", "koscom.mdcsrealtime.koscom.exture.v1.20.netassetsamount", ftypes.UINT64, nil, nil, nil, "Unit:Won.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.number_of_freefloating_etf_shares = ProtoField.new("Number Of Freefloating Etf Shares", "koscom.mdcsrealtime.koscom.exture.v1.20.numberoffreefloatingetfshares", ftypes.UINT64, nil, nil, nil, "Information Category 03S: Fund unit, 05S: TU unit.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.office_consignment_companys_registration_number = ProtoField.new("Office Consignment Companys Registration Number", "koscom.mdcsrealtime.koscom.exture.v1.20.officeconsignmentcompanysregistrationnumber", ftypes.STRING, nil, nil, nil, "049: Korea Fund Partners ← Mirae Asset Fund Services 905: Shinhan Fund Partners ← Shinhanaitas 906: WOORI FUND SERVICES 2023.04.10 new 907: HANA FUND SERVICES 2024.09.09 new 909: KB FUND PARTNERS 2024.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.operator_abbreviated_name_english = ProtoField.new("Operator Abbreviated Name English", "koscom.mdcsrealtime.koscom.exture.v1.20.operatorabbreviatednameenglish", ftypes.STRING, nil, nil, nil, "Operator Abbreviated Name (English).")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.operator_abbreviated_name_korean = ProtoField.new("Operator Abbreviated Name Korean", "koscom.mdcsrealtime.koscom.exture.v1.20.operatorabbreviatednamekorean", ftypes.STRING, nil, nil, nil, "Operator Abbreviated Name (Korean).")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.operator_code = ProtoField.new("Operator Code", "koscom.mdcsrealtime.koscom.exture.v1.20.operatorcode", ftypes.STRING, nil, nil, nil, "Operator Code.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.original_price_compare_remaining_quantity_of_order = ProtoField.new("Original Price Compare Remaining Quantity Of Order", "koscom.mdcsrealtime.koscom.exture.v1.20.originalpricecompareremainingquantityoforder", ftypes.UINT64, nil, nil, nil, "Normal: 0, in case of correction/cancellation, original remaining quantity.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.original_quote_number = ProtoField.new("Original Quote Number", "koscom.mdcsrealtime.koscom.exture.v1.20.originalquotenumber", ftypes.STRING, nil, nil, nil, "Normal: 0, in case of correction/cancellation, relevant original quote is number.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.original_quote_price = ProtoField.new("Original Quote Price", "koscom.mdcsrealtime.koscom.exture.v1.20.originalquoteprice", ftypes.STRING, nil, nil, nil, "Normal: 0, in case of correction/cancellation, original price.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.original_sequence_number = ProtoField.new("Original Sequence Number", "koscom.mdcsrealtime.koscom.exture.v1.20.originalsequencenumber", ftypes.UINT32, nil, nil, nil, "In case of H1 data : 00000000 Original Sequence Number ← Previous ISIN.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.originally_registered_number = ProtoField.new("Originally Registered Number", "koscom.mdcsrealtime.koscom.exture.v1.20.originallyregisterednumber", ftypes.UINT32, nil, nil, nil, "0:Normal Originally Registered Number:Change/Cancel.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.otc_derivatives_type = ProtoField.new("Otc Derivatives Type", "koscom.mdcsrealtime.koscom.exture.v1.20.otcderivativestype", ftypes.STRING, nil, nil, nil, "0:funded 1:Unfunded.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.par_value_amount_cash_amount_converted_amount_krw = ProtoField.new("Par Value Amount Cash Amount Converted Amount Krw", "koscom.mdcsrealtime.koscom.exture.v1.20.parvalueamountcashamountconvertedamountkrw", ftypes.UINT64, nil, nil, nil, "in case of par value, composition issue code is bond, futures, swap,FX Forward cash amount set:in case cu unit set redemption, possible cash setting is displayed based o etf code, current stock index .")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.prerequisite_cost = ProtoField.new("Prerequisite Cost", "koscom.mdcsrealtime.koscom.exture.v1.20.prerequisitecost", ftypes.DOUBLE, nil, nil, nil, "9(8)V9(2) \"0\" for Standard ELW.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.pretax_unit_price = ProtoField.new("Pretax Unit Price", "koscom.mdcsrealtime.koscom.exture.v1.20.pretaxunitprice", ftypes.DOUBLE, nil, nil, nil, "999999V99(Unit:1 KRW, 1 USD, 1YEN, 1 EURO, 1CNY, 1GBP, 1HKD, 1AUD, 1SGD, miscellaneous).")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.pretax_yield = ProtoField.new("Pretax Yield", "koscom.mdcsrealtime.koscom.exture.v1.20.pretaxyield", ftypes.DOUBLE, nil, nil, nil, "999V99999.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.previous_days_cash_dividend_amount = ProtoField.new("Previous Days Cash Dividend Amount", "koscom.mdcsrealtime.koscom.exture.v1.20.previousdayscashdividendamount", ftypes.DOUBLE, nil, nil, nil, "9999999999V99 Information Category 03S: Fund unit, 05S: TU unit.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.previous_days_iv = ProtoField.new("Previous Days Iv", "koscom.mdcsrealtime.koscom.exture.v1.20.previousdaysiv", ftypes.DOUBLE, nil, nil, nil, "9(7)V9(2).")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.previous_days_nontaxable_base_price_before_dividend_for_overseas_stocks = ProtoField.new("Previous Days Nontaxable Base Price Before Dividend For Overseas Stocks", "koscom.mdcsrealtime.koscom.exture.v1.20.previousdaysnontaxablebasepricebeforedividendforoverseasstocks", ftypes.DOUBLE, nil, nil, nil, "9999999V99.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.previous_days_nontaxable_base_price_for_overseas_stocks = ProtoField.new("Previous Days Nontaxable Base Price For Overseas Stocks", "koscom.mdcsrealtime.koscom.exture.v1.20.previousdaysnontaxablebasepriceforoverseasstocks", ftypes.DOUBLE, nil, nil, nil, "9999999V99.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.previous_days_tax_base_nav = ProtoField.new("Previous Days Tax Base Nav", "koscom.mdcsrealtime.koscom.exture.v1.20.previousdaystaxbasenav", ftypes.DOUBLE, nil, nil, nil, "9999999V99 Information Category 03S: Fund unit, 05S: TU unit.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.previous_days_tax_base_nav_before_dividend = ProtoField.new("Previous Days Tax Base Nav Before Dividend", "koscom.mdcsrealtime.koscom.exture.v1.20.previousdaystaxbasenavbeforedividend", ftypes.DOUBLE, nil, nil, nil, "9999999V99 Information Category 03S: Fund unit, 05S: TU unit.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.previous_isin_of_replacement = ProtoField.new("Previous Isin Of Replacement", "koscom.mdcsrealtime.koscom.exture.v1.20.previousisinofreplacement", ftypes.UINT32, nil, nil, nil, "Except for the second price of replacement order : 00000000.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.previous_nav = ProtoField.new("Previous Nav", "koscom.mdcsrealtime.koscom.exture.v1.20.previousnav", ftypes.DOUBLE, nil, nil, nil, "9(7)V9(2) Information Category 03S: Fund unit, 05S: TU unit.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.price = ProtoField.new("Price", "koscom.mdcsrealtime.koscom.exture.v1.20.price", ftypes.UINT32, nil, nil, nil, "Normal: order price Correction: correction price.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.price_compare_remaining_quantity_of_order = ProtoField.new("Price Compare Remaining Quantity Of Order", "koscom.mdcsrealtime.koscom.exture.v1.20.pricecompareremainingquantityoforder", ftypes.UINT64, nil, nil, nil, "Normal: remaining quantity of order Correction: remaining quantity of correction.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.price_quotes_trading = ProtoField.new("Price Quotes Trading", "koscom.mdcsrealtime.koscom.exture.v1.20.pricequotestrading", ftypes.DOUBLE, nil, nil, nil, "99999V999 Unit: KRW.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.process_category = ProtoField.new("Process Category", "koscom.mdcsrealtime.koscom.exture.v1.20.processcategory", ftypes.STRING, nil, nil, nil, "1:Normal 2:Amended 3:Cancel.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.process_type = ProtoField.new("Process Type", "koscom.mdcsrealtime.koscom.exture.v1.20.processtype", ftypes.STRING, nil, nil, nil, "1: normal 2: correction 3: cancellation.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.profit_distribution_basis_date = ProtoField.new("Profit Distribution Basis Date", "koscom.mdcsrealtime.koscom.exture.v1.20.profitdistributionbasisdate", ftypes.STRING, nil, nil, nil, "only for bond etf. date when profit distribution occurs for the following etf. same value about the special date's duplicate etf code default : space or \"0\", yyyymmdd.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.profit_rate_quotes_trading = ProtoField.new("Profit Rate Quotes Trading", "koscom.mdcsrealtime.koscom.exture.v1.20.profitratequotestrading", ftypes.DOUBLE, nil, nil, nil, "999V99999.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.quantity = ProtoField.new("Quantity", "koscom.mdcsrealtime.koscom.exture.v1.20.quantity", ftypes.UINT64, nil, nil, nil, "Normal: order quantity Correction/cancellation: actual correction/cancellation quantity.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.quotation_category = ProtoField.new("Quotation Category", "koscom.mdcsrealtime.koscom.exture.v1.20.quotationcategory", ftypes.STRING, nil, nil, nil, "0:Weighted Avg Price,1:Quotation,2:No Trade.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.quote_number = ProtoField.new("Quote Number", "koscom.mdcsrealtime.koscom.exture.v1.20.quotenumber", ftypes.STRING, nil, nil, nil, "Quote number in case of normal process.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.quotes_amount = ProtoField.new("Quotes Amount", "koscom.mdcsrealtime.koscom.exture.v1.20.quotesamount", ftypes.STRING, nil, nil, nil, "KRW(Data transmitted only for Bid(1)/Ask(2) on 'Contract category' field).")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.quotes_offer_time = ProtoField.new("Quotes Offer Time", "koscom.mdcsrealtime.koscom.exture.v1.20.quotesoffertime", ftypes.STRING, nil, nil, nil, "Quotes generated time(HHMMSS).")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.reason = ProtoField.new("Reason", "koscom.mdcsrealtime.koscom.exture.v1.20.reason", ftypes.STRING, nil, nil, nil, "Reason.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.registered_number = ProtoField.new("Registered Number", "koscom.mdcsrealtime.koscom.exture.v1.20.registerednumber", ftypes.UINT32, nil, nil, nil, "Registered Number.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.registered_time = ProtoField.new("Registered Time", "koscom.mdcsrealtime.koscom.exture.v1.20.registeredtime", ftypes.STRING, nil, nil, nil, "HHMMSS.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.remaining_quantity_of_ask_best_order = ProtoField.new("Remaining Quantity Of Ask Best Order", "koscom.mdcsrealtime.koscom.exture.v1.20.remainingquantityofaskbestorder", ftypes.UINT64, nil, nil, nil, "Remaining quantity of ask best order.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.remaining_quantity_of_best_ask_order = ProtoField.new("Remaining Quantity Of Best Ask Order", "koscom.mdcsrealtime.koscom.exture.v1.20.remainingquantityofbestaskorder", ftypes.UINT64, nil, nil, nil, "Remaining quantity of best ask order.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.remaining_quantity_of_best_bid_order = ProtoField.new("Remaining Quantity Of Best Bid Order", "koscom.mdcsrealtime.koscom.exture.v1.20.remainingquantityofbestbidorder", ftypes.UINT64, nil, nil, nil, "Remaining quantity of Best bid order.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.remaining_quantity_of_bid_best_order = ProtoField.new("Remaining Quantity Of Bid Best Order", "koscom.mdcsrealtime.koscom.exture.v1.20.remainingquantityofbidbestorder", ftypes.UINT64, nil, nil, nil, "Remaining quantity of bid best order.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.replacement_type = ProtoField.new("Replacement Type", "koscom.mdcsrealtime.koscom.exture.v1.20.replacementtype", ftypes.STRING, nil, nil, nil, "0:ordinary order, 1:replacement order.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.risk_appraisal_amount = ProtoField.new("Risk Appraisal Amount", "koscom.mdcsrealtime.koscom.exture.v1.20.riskappraisalamount", ftypes.UINT64, nil, nil, nil, "단위:원.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.risk_appraisal_amount_rate = ProtoField.new("Risk Appraisal Amount Rate", "koscom.mdcsrealtime.koscom.exture.v1.20.riskappraisalamountrate", ftypes.DOUBLE, nil, nil, nil, "99999V99 Unit:%.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.securities_company_number = ProtoField.new("Securities Company Number", "koscom.mdcsrealtime.koscom.exture.v1.20.securitiescompanynumber", ftypes.UINT16, nil, nil, nil, "Refer to trading original type code.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.security_appraisal_amount = ProtoField.new("Security Appraisal Amount", "koscom.mdcsrealtime.koscom.exture.v1.20.securityappraisalamount", ftypes.UINT64, nil, nil, nil, "Unit:Won.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.security_rate = ProtoField.new("Security Rate", "koscom.mdcsrealtime.koscom.exture.v1.20.securityrate", ftypes.DOUBLE, nil, nil, nil, "99999V99 Unit:%.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.sensitivity_delta = ProtoField.new("Sensitivity Delta", "koscom.mdcsrealtime.koscom.exture.v1.20.sensitivitydelta", ftypes.DOUBLE, nil, nil, nil, "9V9(6).")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.sensitivity_delta_sign = ProtoField.new("Sensitivity Delta Sign", "koscom.mdcsrealtime.koscom.exture.v1.20.sensitivitydeltasign", ftypes.STRING, nil, nil, nil, "\"+\", \"-\", \" \".")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.sensitivity_gamma = ProtoField.new("Sensitivity Gamma", "koscom.mdcsrealtime.koscom.exture.v1.20.sensitivitygamma", ftypes.DOUBLE, nil, nil, nil, "9V9(6).")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.sensitivity_gamma_sign = ProtoField.new("Sensitivity Gamma Sign", "koscom.mdcsrealtime.koscom.exture.v1.20.sensitivitygammasign", ftypes.STRING, nil, nil, nil, "\"+\", \"-\", \" \".")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.sensitivity_rho = ProtoField.new("Sensitivity Rho", "koscom.mdcsrealtime.koscom.exture.v1.20.sensitivityrho", ftypes.DOUBLE, nil, nil, nil, "9(6)V9(6).")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.sensitivity_rho_sign = ProtoField.new("Sensitivity Rho Sign", "koscom.mdcsrealtime.koscom.exture.v1.20.sensitivityrhosign", ftypes.STRING, nil, nil, nil, "\"+\", \"-\", \" \".")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.sensitivity_theta = ProtoField.new("Sensitivity Theta", "koscom.mdcsrealtime.koscom.exture.v1.20.sensitivitytheta", ftypes.DOUBLE, nil, nil, nil, "9(6)V9(6).")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.sensitivity_theta_sign = ProtoField.new("Sensitivity Theta Sign", "koscom.mdcsrealtime.koscom.exture.v1.20.sensitivitythetasign", ftypes.STRING, nil, nil, nil, "\"+\", \"-\", \" \".")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.sensitivity_vega = ProtoField.new("Sensitivity Vega", "koscom.mdcsrealtime.koscom.exture.v1.20.sensitivityvega", ftypes.DOUBLE, nil, nil, nil, "9(6)V9(6).")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.sensitivity_vega_sign = ProtoField.new("Sensitivity Vega Sign", "koscom.mdcsrealtime.koscom.exture.v1.20.sensitivityvegasign", ftypes.STRING, nil, nil, nil, "\"+\", \"-\", \" \".")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.seq_number = ProtoField.new("Seq Number", "koscom.mdcsrealtime.koscom.exture.v1.20.seqnumber", ftypes.UINT32, nil, nil, nil, "1~99999999 Transmission Sequence Number to check number of orders.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.sequence_number = ProtoField.new("Sequence Number", "koscom.mdcsrealtime.koscom.exture.v1.20.sequencenumber", ftypes.UINT32, nil, nil, nil, "1~99999999 Records Checking Purpose.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.settlement_date_k_bond = ProtoField.new("Settlement Date K Bond", "koscom.mdcsrealtime.koscom.exture.v1.20.settlementdatekbond", ftypes.STRING, nil, nil, nil, "2:T+0(On one day), 3:T+1(Next day), 4:T+2, ~ 32:T+30.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.settlement_date_otc = ProtoField.new("Settlement Date Otc", "koscom.mdcsrealtime.koscom.exture.v1.20.settlementdateotc", ftypes.STRING, nil, nil, nil, "YYYYMMDD.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.sign = ProtoField.new("Sign", "koscom.mdcsrealtime.koscom.exture.v1.20.sign", ftypes.STRING, nil, nil, nil, "Sign of the index change against the previous day. '+' ascended, ' ' steadiness, '-' declined.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.standard_date = ProtoField.new("Standard Date", "koscom.mdcsrealtime.koscom.exture.v1.20.standarddate", ftypes.STRING, nil, nil, nil, "Standard date for the index calculation in YYYYMMDD format.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.standard_time = ProtoField.new("Standard Time", "koscom.mdcsrealtime.koscom.exture.v1.20.standardtime", ftypes.STRING, nil, nil, nil, "Standard time in HHMMSS. Range 09:00:00 to ~15:30. Cycle: 1 min.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.subcategory = ProtoField.new("Subcategory", "koscom.mdcsrealtime.koscom.exture.v1.20.subcategory", ftypes.STRING, nil, nil, nil, "51:Today's Trading History in OTC 52:Previous Day's Trading History in OTC 53:Omitted Info. in past OTC Trading History 54:Changed/Canceled Info. in past OTC Trading History.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.subscription_time = ProtoField.new("Subscription Time", "koscom.mdcsrealtime.koscom.exture.v1.20.subscriptiontime", ftypes.STRING, nil, nil, nil, "Subscription time.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.tax_base_nav_as_of_the_day_before_the_previous_day = ProtoField.new("Tax Base Nav As Of The Day Before The Previous Day", "koscom.mdcsrealtime.koscom.exture.v1.20.taxbasenavasofthedaybeforethepreviousday", ftypes.DOUBLE, nil, nil, nil, "9999999V99 Information Category 03S: Fund unit, 05S: TU unit.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.theoretical_warrant_price = ProtoField.new("Theoretical Warrant Price", "koscom.mdcsrealtime.koscom.exture.v1.20.theoreticalwarrantprice", ftypes.DOUBLE, nil, nil, nil, "9(8)9V9(2).")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.time = ProtoField.new("Time", "koscom.mdcsrealtime.koscom.exture.v1.20.time", ftypes.STRING, nil, nil, nil, "During market: HHMMSS (Time:min:Sec) 090000 ~ Market Closing: JUNJJJ.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.total_danger_exposure_amount = ProtoField.new("Total Danger Exposure Amount", "koscom.mdcsrealtime.koscom.exture.v1.20.totaldangerexposureamount", ftypes.UINT64, nil, nil, nil, "Unit:Won.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.total_profit_index = ProtoField.new("Total Profit Index", "koscom.mdcsrealtime.koscom.exture.v1.20.totalprofitindex", ftypes.DOUBLE, nil, nil, nil, "Total profit index (10 ASCII digits with 4 implied decimal places). Standard 10,000.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.total_remaining_quantity_of_ask = ProtoField.new("Total Remaining Quantity Of Ask", "koscom.mdcsrealtime.koscom.exture.v1.20.totalremainingquantityofask", ftypes.UINT64, nil, nil, nil, "Total remaining quantity of ask.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.total_remaining_quantity_of_bid = ProtoField.new("Total Remaining Quantity Of Bid", "koscom.mdcsrealtime.koscom.exture.v1.20.totalremainingquantityofbid", ftypes.UINT64, nil, nil, nil, "Total remaining quantity of bid.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.total_trading_accumulated_value = ProtoField.new("Total Trading Accumulated Value", "koscom.mdcsrealtime.koscom.exture.v1.20.totaltradingaccumulatedvalue", ftypes.UINT64, nil, nil, nil, "Total trading accumulated value.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.total_trading_accumulated_volume = ProtoField.new("Total Trading Accumulated Volume", "koscom.mdcsrealtime.koscom.exture.v1.20.totaltradingaccumulatedvolume", ftypes.UINT64, nil, nil, nil, "Total trading accumulated Volume.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.tr_code = ProtoField.new("Tr Code", "koscom.mdcsrealtime.koscom.exture.v1.20.trcode", ftypes.STRING, nil, nil, nil, "Five-character ASCII TR-CODE identifying the disseminated market data record. Formed by concatenating a 2-character Data Category (message family, e.g. \"IA\" Krx Index, \"B6\" Quote, \"C4\" Negotiated Trade, \"A7\" Market Operation TS) with a 3-character Information Category (market/product variant, typically 2-digit information code plus 1-character market code, e.g. \"01S\" = Equities/KOSPI, \"01F\" = Derivatives, \"000\" = All Market).")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.tracking_error = ProtoField.new("Tracking Error", "koscom.mdcsrealtime.koscom.exture.v1.20.trackingerror", ftypes.DOUBLE, nil, nil, nil, "9(7)V9(2), Unit:%.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.trading_category = ProtoField.new("Trading Category", "koscom.mdcsrealtime.koscom.exture.v1.20.tradingcategory", ftypes.STRING, nil, nil, nil, "2:Brokerage 4:Direct Participant.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.trading_date = ProtoField.new("Trading Date", "koscom.mdcsrealtime.koscom.exture.v1.20.tradingdate", ftypes.STRING, nil, nil, nil, "YYYYMMDD.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.trading_number = ProtoField.new("Trading Number", "koscom.mdcsrealtime.koscom.exture.v1.20.tradingnumber", ftypes.UINT24, nil, nil, nil, "Trading number for each issue.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.trading_price = ProtoField.new("Trading Price", "koscom.mdcsrealtime.koscom.exture.v1.20.tradingprice", ftypes.UINT32, nil, nil, nil, "Trading price.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.trading_price_compare_remaining_quantity_of_ask = ProtoField.new("Trading Price Compare Remaining Quantity Of Ask", "koscom.mdcsrealtime.koscom.exture.v1.20.tradingpricecompareremainingquantityofask", ftypes.UINT64, nil, nil, nil, "Trading price compare remaining quantity of ask.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.trading_price_compare_remaining_quantity_of_bid = ProtoField.new("Trading Price Compare Remaining Quantity Of Bid", "koscom.mdcsrealtime.koscom.exture.v1.20.tradingpricecompareremainingquantityofbid", ftypes.UINT64, nil, nil, nil, "Trading price compare remaining quantity of bid.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.trading_time = ProtoField.new("Trading Time", "koscom.mdcsrealtime.koscom.exture.v1.20.tradingtime", ftypes.STRING, nil, nil, nil, "Trading time.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.trading_type_category = ProtoField.new("Trading Type Category", "koscom.mdcsrealtime.koscom.exture.v1.20.tradingtypecategory", ftypes.STRING, nil, nil, nil, "1:Self-dealings 2:Cross Trading 3:Brokerage 9:Other.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.trading_value = ProtoField.new("Trading Value", "koscom.mdcsrealtime.koscom.exture.v1.20.tradingvalue", ftypes.UINT64, nil, nil, nil, "Accumulated trading value (12 ASCII digits). Unit: 1,000,000 KRW.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.trading_volume = ProtoField.new("Trading Volume", "koscom.mdcsrealtime.koscom.exture.v1.20.tradingvolume", ftypes.UINT64, nil, nil, nil, "Accumulated trading volume (12 ASCII digits). Unit: 1,000 shares.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.type = ProtoField.new("Type", "koscom.mdcsrealtime.koscom.exture.v1.20.type", ftypes.STRING, nil, nil, nil, "1:trading halt 2: lift after trading halt.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.upper_limit_price_after_action = ProtoField.new("Upper Limit Price After Action", "koscom.mdcsrealtime.koscom.exture.v1.20.upperlimitpriceafteraction", ftypes.UINT32, nil, nil, nil, "Unit: KRW (in case that data type is not 01, then \"0\").")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.upper_limit_price_before_action = ProtoField.new("Upper Limit Price Before Action", "koscom.mdcsrealtime.koscom.exture.v1.20.upperlimitpricebeforeaction", ftypes.UINT32, nil, nil, nil, "Unit: KRW (in case that data type is not 01, then \"0\").")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.volume = ProtoField.new("Volume", "koscom.mdcsrealtime.koscom.exture.v1.20.volume", ftypes.UINT64, nil, nil, nil, "Unit: 1 KRW, 1 USD, 1 YEN, 1 EURO, 1 CNY, 1 GBP, 1 HKD, 1 AUD, 1 SGD, miscellaneous.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.weighted_average_stock_price = ProtoField.new("Weighted Average Stock Price", "koscom.mdcsrealtime.koscom.exture.v1.20.weightedaveragestockprice", ftypes.UINT32, nil, nil, nil, "Weighted average stock price.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.zero_re_investment_index = ProtoField.new("Zero Re Investment Index", "koscom.mdcsrealtime.koscom.exture.v1.20.zeroreinvestmentindex", ftypes.DOUBLE, nil, nil, nil, "Zero re-investment index (10 ASCII digits with 4 implied decimal places).")

-- Koscom MdcsRealtime Koscom Exture 1.20 Framing
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.packet = ProtoField.new("Packet", "koscom.mdcsrealtime.koscom.exture.v1.20.packet", ftypes.STRING, nil, nil, nil, "Koscom MDCS Exture Udp Packet")

-- Koscom MdcsRealtime Koscom 1.20 Application Messages
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.domestic_etf_estimated_inav_message = ProtoField.new("Domestic Etf Estimated Inav Message", "koscom.mdcsrealtime.koscom.exture.v1.20.domesticetfestimatedinavmessage", ftypes.STRING, nil, nil, nil, "Domestic ETF Estimated iNAV. Carries previous-day and during-market/final estimated NAV.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.domestic_etf_inav_message = ProtoField.new("Domestic Etf Inav Message", "koscom.mdcsrealtime.koscom.exture.v1.20.domesticetfinavmessage", ftypes.STRING, nil, nil, nil, "Domestic ETF intraday NAV (1-second interval). Carries previous-day and during-market/final NAV per ETF ISIN.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.elw_investment_indicator_sensitivity_message = ProtoField.new("Elw Investment Indicator Sensitivity Message", "koscom.mdcsrealtime.koscom.exture.v1.20.elwinvestmentindicatorsensitivitymessage", ftypes.STRING, nil, nil, nil, "ELW Investment Indicator Sensitivity. Theoretical warrant price plus signed Delta/Gamma/Theta/Vega/Rho sensitivities, intrinsic volatility, and prerequisite cost.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.etf_risk_appraisement_message = ProtoField.new("Etf Risk Appraisement Message", "koscom.mdcsrealtime.koscom.exture.v1.20.etfriskappraisementmessage", ftypes.STRING, nil, nil, nil, "Synthetic ETF risk appraisement daily trading data.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.etf_tracking_error_message = ProtoField.new("Etf Tracking Error Message", "koscom.mdcsrealtime.koscom.exture.v1.20.etftrackingerrormessage", ftypes.STRING, nil, nil, nil, "ETF tracking error and signed disparate ratio per ETF.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.etn_disparate_ratio_message = ProtoField.new("Etn Disparate Ratio Message", "koscom.mdcsrealtime.koscom.exture.v1.20.etndisparateratiomessage", ftypes.STRING, nil, nil, nil, "ETN signed disparate ratio per ETN.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.etn_iiv_message = ProtoField.new("Etn Iiv Message", "koscom.mdcsrealtime.koscom.exture.v1.20.etniivmessage", ftypes.STRING, nil, nil, nil, "ETN intraday indicative value. Previous-day and during-market/final iIV per ETN.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.etp_operator_information_message = ProtoField.new("Etp Operator Information Message", "koscom.mdcsrealtime.koscom.exture.v1.20.etpoperatorinformationmessage", ftypes.STRING, nil, nil, nil, "ETP/BDC operator information. Office consignment company, operator code, and abbreviated names in Korean and English.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.etp_pdf_message = ProtoField.new("Etp Pdf Message", "koscom.mdcsrealtime.koscom.exture.v1.20.etppdfmessage", ftypes.STRING, nil, nil, nil, "ETP Portfolio Deposit File. One record per composition issue: unit share, market type, issue name, par value, appraised value, profit distribution basis date.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.etp_transfer_agent_batch_message = ProtoField.new("Etp Transfer Agent Batch Message", "koscom.mdcsrealtime.koscom.exture.v1.20.etptransferagentbatchmessage", ftypes.STRING, nil, nil, nil, "ETP/BDC transfer agent batch data.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.global_etf_inav_message = ProtoField.new("Global Etf Inav Message", "koscom.mdcsrealtime.koscom.exture.v1.20.globaletfinavmessage", ftypes.STRING, nil, nil, nil, "Global ETF intraday NAV per ETF ISIN.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.global_etf_tracking_error_message = ProtoField.new("Global Etf Tracking Error Message", "koscom.mdcsrealtime.koscom.exture.v1.20.globaletftrackingerrormessage", ftypes.STRING, nil, nil, nil, "Global ETF tracking error and signed disparate ratio.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.k_bond_message = ProtoField.new("K Bond Message", "koscom.mdcsrealtime.koscom.exture.v1.20.kbondmessage", ftypes.STRING, nil, nil, nil, "K-BOND dissemination. Quotes and trades with profit rate or price, contract category, settlement date, and replacement order details.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.k_otc_issue_closing_message = ProtoField.new("K Otc Issue Closing Message", "koscom.mdcsrealtime.koscom.exture.v1.20.kotcissueclosingmessage", ftypes.STRING, nil, nil, nil, "K-OTC Issue Closing. Reports closing price and the quotation category per ISIN.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.k_otc_market_action_message = ProtoField.new("K Otc Market Action Message", "koscom.mdcsrealtime.koscom.exture.v1.20.kotcmarketactionmessage", ftypes.STRING, nil, nil, nil, "K-OTC Market Action. Basis price and upper/lower limit price changes.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.k_otc_market_operation_message = ProtoField.new("K Otc Market Operation Message", "koscom.mdcsrealtime.koscom.exture.v1.20.kotcmarketoperationmessage", ftypes.STRING, nil, nil, nil, "K-OTC Market Operation. Trading halt / lift-after-halt events with reason code.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.k_otc_order_filled_message = ProtoField.new("K Otc Order Filled Message", "koscom.mdcsrealtime.koscom.exture.v1.20.kotcorderfilledmessage", ftypes.STRING, nil, nil, nil, "K-OTC Order Filled. Trade prints with running totals, high/low, weighted average price, and previous-day comparison.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.k_otc_quote_message = ProtoField.new("K Otc Quote Message", "koscom.mdcsrealtime.koscom.exture.v1.20.kotcquotemessage", ftypes.STRING, nil, nil, nil, "K-OTC Quote. Bid/ask quote with remaining quantity at the best price.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.kabi_bond_index_message = ProtoField.new("Kabi Bond Index Message", "koscom.mdcsrealtime.koscom.exture.v1.20.kabibondindexmessage", ftypes.STRING, nil, nil, nil, "KABI Bond Index real-time message. Same field layout as the Mkf Bond Index Message; KABI uses standard 100 rather than 10,000 for the various indices.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.kebi_bond_index_message = ProtoField.new("Kebi Bond Index Message", "koscom.mdcsrealtime.koscom.exture.v1.20.kebibondindexmessage", ftypes.STRING, nil, nil, nil, "KEBI Bond Index real-time message. Identical field layout to the Mkf Bond Index Message.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.kis_bond_index_message = ProtoField.new("Kis Bond Index Message", "koscom.mdcsrealtime.koscom.exture.v1.20.kisbondindexmessage", ftypes.STRING, nil, nil, nil, "KIS Bond Index real-time message. Identical field layout to the Mkf Bond Index Message.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.kis_index_message = ProtoField.new("Kis Index Message", "koscom.mdcsrealtime.koscom.exture.v1.20.kisindexmessage", ftypes.STRING, nil, nil, nil, "KIS equity index real-time message. Identical field layout to the Mkf Index Message.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.loan_transaction_available_quantity_message = ProtoField.new("Loan Transaction Available Quantity Message", "koscom.mdcsrealtime.koscom.exture.v1.20.loantransactionavailablequantitymessage", ftypes.STRING, nil, nil, nil, "Loan transaction available quantity public disclosure. Reports the available stock lending quantity for one issue (ISIN) in shares.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.mkf_bond_index_message = ProtoField.new("Mkf Bond Index Message", "koscom.mdcsrealtime.koscom.exture.v1.20.mkfbondindexmessage", ftypes.STRING, nil, nil, nil, "MKF Bond Index real-time message. Carries total profit / clean price / market price / call and zero re-investment indices, futures basis price, duration, convexity, and YTM for one bond index identifier.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.mkf_index_jpy_message = ProtoField.new("Mkf Index Jpy Message", "koscom.mdcsrealtime.koscom.exture.v1.20.mkfindexjpymessage", ftypes.STRING, nil, nil, nil, "MKF Index real-time message with the Japanese Yen exchange rate reflected. Identical field layout to the Mkf Index Message.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.mkf_index_message = ProtoField.new("Mkf Index Message", "koscom.mdcsrealtime.koscom.exture.v1.20.mkfindexmessage", ftypes.STRING, nil, nil, nil, "MKF Index real-time message. Reports current index value, sign and magnitude of change against the previous day, and accumulated trading volume and value for one MKF index identifier.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.nicepni_bond_index_message = ProtoField.new("Nicepni Bond Index Message", "koscom.mdcsrealtime.koscom.exture.v1.20.nicepnibondindexmessage", ftypes.STRING, nil, nil, nil, "NicePNI Bond Index real-time message. Identical field layout to the Mkf Bond Index Message.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.otc_bond_traded_info_message = ProtoField.new("Otc Bond Traded Info Message", "koscom.mdcsrealtime.koscom.exture.v1.20.otcbondtradedinfomessage", ftypes.STRING, nil, nil, nil, "OTC Bond Traded Information. Reports today's or prior-day trading history with volume, pretax unit price, yield, settlement date, and FX category.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.otc_bond_trades_per_institution_message = ProtoField.new("Otc Bond Trades Per Institution Message", "koscom.mdcsrealtime.koscom.exture.v1.20.otcbondtradesperinstitutionmessage", ftypes.STRING, nil, nil, nil, "OTC Bond trade aggregates per institution. Reports bid and ask yields and trading volumes/values per institution code and bond type.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.otc_bond_types_per_investor_message = ProtoField.new("Otc Bond Types Per Investor Message", "koscom.mdcsrealtime.koscom.exture.v1.20.otcbondtypesperinvestormessage", ftypes.STRING, nil, nil, nil, "OTC Bond trade aggregates per investor category. Bid/ask yields and trading volumes/values per ISIN and investor category.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.synthetic_etf_constituents_message = ProtoField.new("Synthetic Etf Constituents Message", "koscom.mdcsrealtime.koscom.exture.v1.20.syntheticetfconstituentsmessage", ftypes.STRING, nil, nil, nil, "Synthetic ETF basic index composition constituents.")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.wisefn_index_message = ProtoField.new("Wisefn Index Message", "koscom.mdcsrealtime.koscom.exture.v1.20.wisefnindexmessage", ftypes.STRING, nil, nil, nil, "WISEfn equity index real-time message. Identical field layout to the Mkf Index Message.")

-- Koscom MdcsRealtime Koscom Exture 1.20 Expert Info
koscom_mdcsrealtime_koscom_exture_v1_20.experts = {}
koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number = ProtoExpert.new("koscom.mdcsrealtime.koscom.exture.v1.20.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_koscom_mdcsrealtime_koscom_exture_v1_20.experts = { koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number }

-----------------------------------------------------------------------
-- Koscom MdcsRealtime Koscom Exture 1.20 Formatting
-----------------------------------------------------------------------

-- Text field character encoding (Wireshark ENC_ constant)
koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding = ENC_EUC_KR


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Koscom MdcsRealtime Koscom Exture 1.20 Element Dissection Options
show.application_messages = true
show.structs = true

-- Register Koscom MdcsRealtime Koscom Exture 1.20 Show Options
omi_koscom_mdcsrealtime_koscom_exture_v1_20.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_koscom_mdcsrealtime_koscom_exture_v1_20.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")

-- Handle changed preferences
function omi_koscom_mdcsrealtime_koscom_exture_v1_20.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_koscom_mdcsrealtime_koscom_exture_v1_20.prefs.show_application_messages then
    show.application_messages = omi_koscom_mdcsrealtime_koscom_exture_v1_20.prefs.show_application_messages
  end
  if show.structs ~= omi_koscom_mdcsrealtime_koscom_exture_v1_20.prefs.show_structs then
    show.structs = omi_koscom_mdcsrealtime_koscom_exture_v1_20.prefs.show_structs
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

-- is every character a digit
is_digits = function(str)
  if str:len() == 0 then
    return false
  end

  for index = 1, str:len() do
    local byte = str:byte(index)

    if byte < 0x30 or byte > 0x39 then
      return false
    end
  end

  return true
end

-- the number a digit run of implied decimal places spells
format_implied_decimal_text = function(str, places)
  local digits = trim_left_spaces(str)
  local sign = ""
  local first = digits:sub(1, 1)

  if first == "-" or first == "+" then
    sign = first
    digits = digits:sub(2)
  end

  if not is_digits(digits) then
    return nil
  end

  digits = trim_left_zeros(digits)

  while digits:len() <= places do
    digits = "0"..digits
  end

  return sign..digits:sub(1, digits:len() - places).."."..digits:sub(-places)
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
-- Koscom MdcsRealtime Koscom Exture 1.20 Fields
-----------------------------------------------------------------------

-- Appraised Value
koscom_mdcsrealtime_koscom_exture_v1_20.appraised_value = {}

-- Size: Appraised Value
koscom_mdcsrealtime_koscom_exture_v1_20.appraised_value.size = 18

-- Display: Appraised Value
koscom_mdcsrealtime_koscom_exture_v1_20.appraised_value.display = function(value)
  return "Appraised Value: "..value
end

-- Dissect: Appraised Value
koscom_mdcsrealtime_koscom_exture_v1_20.appraised_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.appraised_value.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.appraised_value, range, value, "Appraised Value: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Appraised Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.appraised_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.appraised_value, range, value, display)

  return offset + length, value
end

-- Ask Best Order
koscom_mdcsrealtime_koscom_exture_v1_20.ask_best_order = {}

-- Size: Ask Best Order
koscom_mdcsrealtime_koscom_exture_v1_20.ask_best_order.size = 9

-- Display: Ask Best Order
koscom_mdcsrealtime_koscom_exture_v1_20.ask_best_order.display = function(value)
  return "Ask Best Order: "..value
end

-- Dissect: Ask Best Order
koscom_mdcsrealtime_koscom_exture_v1_20.ask_best_order.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.ask_best_order.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.ask_best_order, range, value, "Ask Best Order: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Ask Best Order is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.ask_best_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.ask_best_order, range, value, display)

  return offset + length, value
end

-- Ask Quote Number
koscom_mdcsrealtime_koscom_exture_v1_20.ask_quote_number = {}

-- Size: Ask Quote Number
koscom_mdcsrealtime_koscom_exture_v1_20.ask_quote_number.size = 6

-- Display: Ask Quote Number
koscom_mdcsrealtime_koscom_exture_v1_20.ask_quote_number.display = function(value)
  return "Ask Quote Number: "..value
end

-- Dissect: Ask Quote Number
koscom_mdcsrealtime_koscom_exture_v1_20.ask_quote_number.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.ask_quote_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.ask_quote_number, range, value, "Ask Quote Number: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Ask Quote Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.ask_quote_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.ask_quote_number, range, value, display)

  return offset + length, value
end

-- Ask Trading Value Institution
koscom_mdcsrealtime_koscom_exture_v1_20.ask_trading_value_institution = {}

-- Size: Ask Trading Value Institution
koscom_mdcsrealtime_koscom_exture_v1_20.ask_trading_value_institution.size = 15

-- Display: Ask Trading Value Institution
koscom_mdcsrealtime_koscom_exture_v1_20.ask_trading_value_institution.display = function(value)
  return "Ask Trading Value Institution: "..value
end

-- Dissect: Ask Trading Value Institution
koscom_mdcsrealtime_koscom_exture_v1_20.ask_trading_value_institution.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.ask_trading_value_institution.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.ask_trading_value_institution, range, value, "Ask Trading Value Institution: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Ask Trading Value Institution is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.ask_trading_value_institution.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.ask_trading_value_institution, range, value, display)

  return offset + length, value
end

-- Ask Trading Value Investor
koscom_mdcsrealtime_koscom_exture_v1_20.ask_trading_value_investor = {}

-- Size: Ask Trading Value Investor
koscom_mdcsrealtime_koscom_exture_v1_20.ask_trading_value_investor.size = 20

-- Display: Ask Trading Value Investor
koscom_mdcsrealtime_koscom_exture_v1_20.ask_trading_value_investor.display = function(value)
  return "Ask Trading Value Investor: "..value
end

-- Dissect: Ask Trading Value Investor
koscom_mdcsrealtime_koscom_exture_v1_20.ask_trading_value_investor.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.ask_trading_value_investor.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.ask_trading_value_investor, range, value, "Ask Trading Value Investor: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Ask Trading Value Investor is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.ask_trading_value_investor.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.ask_trading_value_investor, range, value, display)

  return offset + length, value
end

-- Ask Trading Volume Institution
koscom_mdcsrealtime_koscom_exture_v1_20.ask_trading_volume_institution = {}

-- Size: Ask Trading Volume Institution
koscom_mdcsrealtime_koscom_exture_v1_20.ask_trading_volume_institution.size = 15

-- Display: Ask Trading Volume Institution
koscom_mdcsrealtime_koscom_exture_v1_20.ask_trading_volume_institution.display = function(value)
  return "Ask Trading Volume Institution: "..value
end

-- Dissect: Ask Trading Volume Institution
koscom_mdcsrealtime_koscom_exture_v1_20.ask_trading_volume_institution.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.ask_trading_volume_institution.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.ask_trading_volume_institution, range, value, "Ask Trading Volume Institution: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Ask Trading Volume Institution is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.ask_trading_volume_institution.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.ask_trading_volume_institution, range, value, display)

  return offset + length, value
end

-- Ask Trading Volume Investor
koscom_mdcsrealtime_koscom_exture_v1_20.ask_trading_volume_investor = {}

-- Size: Ask Trading Volume Investor
koscom_mdcsrealtime_koscom_exture_v1_20.ask_trading_volume_investor.size = 20

-- Display: Ask Trading Volume Investor
koscom_mdcsrealtime_koscom_exture_v1_20.ask_trading_volume_investor.display = function(value)
  return "Ask Trading Volume Investor: "..value
end

-- Dissect: Ask Trading Volume Investor
koscom_mdcsrealtime_koscom_exture_v1_20.ask_trading_volume_investor.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.ask_trading_volume_investor.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.ask_trading_volume_investor, range, value, "Ask Trading Volume Investor: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Ask Trading Volume Investor is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.ask_trading_volume_investor.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.ask_trading_volume_investor, range, value, display)

  return offset + length, value
end

-- Ask Yield Institution
koscom_mdcsrealtime_koscom_exture_v1_20.ask_yield_institution = {}

-- Size: Ask Yield Institution
koscom_mdcsrealtime_koscom_exture_v1_20.ask_yield_institution.size = 8

-- Display: Ask Yield Institution
koscom_mdcsrealtime_koscom_exture_v1_20.ask_yield_institution.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.ask_yield_institution.size):string(), 4)

  if text == nil then
    return "Ask Yield Institution: "..tostring(value)
  end

  return "Ask Yield Institution: "..text
end

-- Dissect: Ask Yield Institution
koscom_mdcsrealtime_koscom_exture_v1_20.ask_yield_institution.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.ask_yield_institution.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.ask_yield_institution, range, value, "Ask Yield Institution: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Ask Yield Institution is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.ask_yield_institution.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.ask_yield_institution, range, value, display)

  return offset + length, value
end

-- Ask Yield Investor
koscom_mdcsrealtime_koscom_exture_v1_20.ask_yield_investor = {}

-- Size: Ask Yield Investor
koscom_mdcsrealtime_koscom_exture_v1_20.ask_yield_investor.size = 10

-- Display: Ask Yield Investor
koscom_mdcsrealtime_koscom_exture_v1_20.ask_yield_investor.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.ask_yield_investor.size):string(), 5)

  if text == nil then
    return "Ask Yield Investor: "..tostring(value)
  end

  return "Ask Yield Investor: "..text
end

-- Dissect: Ask Yield Investor
koscom_mdcsrealtime_koscom_exture_v1_20.ask_yield_investor.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.ask_yield_investor.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.ask_yield_investor, range, value, "Ask Yield Investor: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Ask Yield Investor is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100000

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.ask_yield_investor.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.ask_yield_investor, range, value, display)

  return offset + length, value
end

-- Available Lending Quantity
koscom_mdcsrealtime_koscom_exture_v1_20.available_lending_quantity = {}

-- Size: Available Lending Quantity
koscom_mdcsrealtime_koscom_exture_v1_20.available_lending_quantity.size = 10

-- Display: Available Lending Quantity
koscom_mdcsrealtime_koscom_exture_v1_20.available_lending_quantity.display = function(value)
  return "Available Lending Quantity: "..value
end

-- Dissect: Available Lending Quantity
koscom_mdcsrealtime_koscom_exture_v1_20.available_lending_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.available_lending_quantity.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.available_lending_quantity, range, value, "Available Lending Quantity: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Available Lending Quantity is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.available_lending_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.available_lending_quantity, range, value, display)

  return offset + length, value
end

-- Average Convexity
koscom_mdcsrealtime_koscom_exture_v1_20.average_convexity = {}

-- Size: Average Convexity
koscom_mdcsrealtime_koscom_exture_v1_20.average_convexity.size = 6

-- Display: Average Convexity
koscom_mdcsrealtime_koscom_exture_v1_20.average_convexity.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.average_convexity.size):string(), 3)

  if text == nil then
    return "Average Convexity: "..tostring(value)
  end

  return "Average Convexity: "..text
end

-- Dissect: Average Convexity
koscom_mdcsrealtime_koscom_exture_v1_20.average_convexity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.average_convexity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.average_convexity, range, value, "Average Convexity: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Average Convexity is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.average_convexity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.average_convexity, range, value, display)

  return offset + length, value
end

-- Average Duration
koscom_mdcsrealtime_koscom_exture_v1_20.average_duration = {}

-- Size: Average Duration
koscom_mdcsrealtime_koscom_exture_v1_20.average_duration.size = 6

-- Display: Average Duration
koscom_mdcsrealtime_koscom_exture_v1_20.average_duration.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.average_duration.size):string(), 3)

  if text == nil then
    return "Average Duration: "..tostring(value)
  end

  return "Average Duration: "..text
end

-- Dissect: Average Duration
koscom_mdcsrealtime_koscom_exture_v1_20.average_duration.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.average_duration.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.average_duration, range, value, "Average Duration: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Average Duration is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.average_duration.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.average_duration, range, value, display)

  return offset + length, value
end

-- Average Duration Nullable
koscom_mdcsrealtime_koscom_exture_v1_20.average_duration_nullable = {}

-- Size: Average Duration Nullable
koscom_mdcsrealtime_koscom_exture_v1_20.average_duration_nullable.size = 6

-- Display: Average Duration Nullable
koscom_mdcsrealtime_koscom_exture_v1_20.average_duration_nullable.display = function(value, buffer, offset, packet, parent)
  -- Check if field has value
  if value == 0 then
    return "Average Duration Nullable: No Value"
  end

  local digits = buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.average_duration_nullable.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Average Duration Nullable: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 3 then
    digits = string.rep("0", 3 - #digits + 1)..digits
  end

  return "Average Duration Nullable: "..sign..digits:sub(1, #digits - 3)..".".. digits:sub(-3)
end

-- Dissect: Average Duration Nullable
koscom_mdcsrealtime_koscom_exture_v1_20.average_duration_nullable.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.average_duration_nullable.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.average_duration_nullable, range, value, "Average Duration Nullable: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Average Duration Nullable is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.average_duration_nullable.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.average_duration_nullable, range, value, display)

  return offset + length, value
end

-- Average Forward Ytm
koscom_mdcsrealtime_koscom_exture_v1_20.average_forward_ytm = {}

-- Size: Average Forward Ytm
koscom_mdcsrealtime_koscom_exture_v1_20.average_forward_ytm.size = 6

-- Display: Average Forward Ytm
koscom_mdcsrealtime_koscom_exture_v1_20.average_forward_ytm.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.average_forward_ytm.size):string(), 3)

  if text == nil then
    return "Average Forward Ytm: "..tostring(value)
  end

  return "Average Forward Ytm: "..text
end

-- Dissect: Average Forward Ytm
koscom_mdcsrealtime_koscom_exture_v1_20.average_forward_ytm.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.average_forward_ytm.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.average_forward_ytm, range, value, "Average Forward Ytm: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Average Forward Ytm is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.average_forward_ytm.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.average_forward_ytm, range, value, display)

  return offset + length, value
end

-- Average Forward Ytm Nullable
koscom_mdcsrealtime_koscom_exture_v1_20.average_forward_ytm_nullable = {}

-- Size: Average Forward Ytm Nullable
koscom_mdcsrealtime_koscom_exture_v1_20.average_forward_ytm_nullable.size = 6

-- Display: Average Forward Ytm Nullable
koscom_mdcsrealtime_koscom_exture_v1_20.average_forward_ytm_nullable.display = function(value, buffer, offset, packet, parent)
  -- Check if field has value
  if value == 0 then
    return "Average Forward Ytm Nullable: No Value"
  end

  local digits = buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.average_forward_ytm_nullable.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Average Forward Ytm Nullable: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 3 then
    digits = string.rep("0", 3 - #digits + 1)..digits
  end

  return "Average Forward Ytm Nullable: "..sign..digits:sub(1, #digits - 3)..".".. digits:sub(-3)
end

-- Dissect: Average Forward Ytm Nullable
koscom_mdcsrealtime_koscom_exture_v1_20.average_forward_ytm_nullable.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.average_forward_ytm_nullable.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.average_forward_ytm_nullable, range, value, "Average Forward Ytm Nullable: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Average Forward Ytm Nullable is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.average_forward_ytm_nullable.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.average_forward_ytm_nullable, range, value, display)

  return offset + length, value
end

-- Average Ytm
koscom_mdcsrealtime_koscom_exture_v1_20.average_ytm = {}

-- Size: Average Ytm
koscom_mdcsrealtime_koscom_exture_v1_20.average_ytm.size = 6

-- Display: Average Ytm
koscom_mdcsrealtime_koscom_exture_v1_20.average_ytm.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.average_ytm.size):string(), 3)

  if text == nil then
    return "Average Ytm: "..tostring(value)
  end

  return "Average Ytm: "..text
end

-- Dissect: Average Ytm
koscom_mdcsrealtime_koscom_exture_v1_20.average_ytm.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.average_ytm.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.average_ytm, range, value, "Average Ytm: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Average Ytm is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.average_ytm.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.average_ytm, range, value, display)

  return offset + length, value
end

-- Based Fx
koscom_mdcsrealtime_koscom_exture_v1_20.based_fx = {}

-- Size: Based Fx
koscom_mdcsrealtime_koscom_exture_v1_20.based_fx.size = 8

-- Display: Based Fx
koscom_mdcsrealtime_koscom_exture_v1_20.based_fx.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.based_fx.size):string(), 4)

  if text == nil then
    return "Based Fx: "..tostring(value)
  end

  return "Based Fx: "..text
end

-- Dissect: Based Fx
koscom_mdcsrealtime_koscom_exture_v1_20.based_fx.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.based_fx.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.based_fx, range, value, "Based Fx: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Based Fx is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.based_fx.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.based_fx, range, value, display)

  return offset + length, value
end

-- Basis Price After Action
koscom_mdcsrealtime_koscom_exture_v1_20.basis_price_after_action = {}

-- Size: Basis Price After Action
koscom_mdcsrealtime_koscom_exture_v1_20.basis_price_after_action.size = 9

-- Display: Basis Price After Action
koscom_mdcsrealtime_koscom_exture_v1_20.basis_price_after_action.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Basis Price After Action: No Value"
  end

  return "Basis Price After Action: "..value
end

-- Dissect: Basis Price After Action
koscom_mdcsrealtime_koscom_exture_v1_20.basis_price_after_action.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.basis_price_after_action.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.basis_price_after_action, range, value, "Basis Price After Action: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Basis Price After Action is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.basis_price_after_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.basis_price_after_action, range, value, display)

  return offset + length, value
end

-- Basis Price Before Action
koscom_mdcsrealtime_koscom_exture_v1_20.basis_price_before_action = {}

-- Size: Basis Price Before Action
koscom_mdcsrealtime_koscom_exture_v1_20.basis_price_before_action.size = 9

-- Display: Basis Price Before Action
koscom_mdcsrealtime_koscom_exture_v1_20.basis_price_before_action.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Basis Price Before Action: No Value"
  end

  return "Basis Price Before Action: "..value
end

-- Dissect: Basis Price Before Action
koscom_mdcsrealtime_koscom_exture_v1_20.basis_price_before_action.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.basis_price_before_action.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.basis_price_before_action, range, value, "Basis Price Before Action: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Basis Price Before Action is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.basis_price_before_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.basis_price_before_action, range, value, display)

  return offset + length, value
end

-- Best Ask Order
koscom_mdcsrealtime_koscom_exture_v1_20.best_ask_order = {}

-- Size: Best Ask Order
koscom_mdcsrealtime_koscom_exture_v1_20.best_ask_order.size = 9

-- Display: Best Ask Order
koscom_mdcsrealtime_koscom_exture_v1_20.best_ask_order.display = function(value)
  return "Best Ask Order: "..value
end

-- Dissect: Best Ask Order
koscom_mdcsrealtime_koscom_exture_v1_20.best_ask_order.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.best_ask_order.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.best_ask_order, range, value, "Best Ask Order: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Best Ask Order is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.best_ask_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.best_ask_order, range, value, display)

  return offset + length, value
end

-- Best Bid Order
koscom_mdcsrealtime_koscom_exture_v1_20.best_bid_order = {}

-- Size: Best Bid Order
koscom_mdcsrealtime_koscom_exture_v1_20.best_bid_order.size = 9

-- Display: Best Bid Order
koscom_mdcsrealtime_koscom_exture_v1_20.best_bid_order.display = function(value)
  return "Best Bid Order: "..value
end

-- Dissect: Best Bid Order
koscom_mdcsrealtime_koscom_exture_v1_20.best_bid_order.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.best_bid_order.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.best_bid_order, range, value, "Best Bid Order: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Best Bid Order is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.best_bid_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.best_bid_order, range, value, display)

  return offset + length, value
end

-- Bid Best Order
koscom_mdcsrealtime_koscom_exture_v1_20.bid_best_order = {}

-- Size: Bid Best Order
koscom_mdcsrealtime_koscom_exture_v1_20.bid_best_order.size = 9

-- Display: Bid Best Order
koscom_mdcsrealtime_koscom_exture_v1_20.bid_best_order.display = function(value)
  return "Bid Best Order: "..value
end

-- Dissect: Bid Best Order
koscom_mdcsrealtime_koscom_exture_v1_20.bid_best_order.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.bid_best_order.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.bid_best_order, range, value, "Bid Best Order: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Bid Best Order is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.bid_best_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.bid_best_order, range, value, display)

  return offset + length, value
end

-- Bid Quote Number
koscom_mdcsrealtime_koscom_exture_v1_20.bid_quote_number = {}

-- Size: Bid Quote Number
koscom_mdcsrealtime_koscom_exture_v1_20.bid_quote_number.size = 6

-- Display: Bid Quote Number
koscom_mdcsrealtime_koscom_exture_v1_20.bid_quote_number.display = function(value)
  return "Bid Quote Number: "..value
end

-- Dissect: Bid Quote Number
koscom_mdcsrealtime_koscom_exture_v1_20.bid_quote_number.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.bid_quote_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.bid_quote_number, range, value, "Bid Quote Number: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Bid Quote Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.bid_quote_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.bid_quote_number, range, value, display)

  return offset + length, value
end

-- Bid Trading Value Institution
koscom_mdcsrealtime_koscom_exture_v1_20.bid_trading_value_institution = {}

-- Size: Bid Trading Value Institution
koscom_mdcsrealtime_koscom_exture_v1_20.bid_trading_value_institution.size = 15

-- Display: Bid Trading Value Institution
koscom_mdcsrealtime_koscom_exture_v1_20.bid_trading_value_institution.display = function(value)
  return "Bid Trading Value Institution: "..value
end

-- Dissect: Bid Trading Value Institution
koscom_mdcsrealtime_koscom_exture_v1_20.bid_trading_value_institution.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.bid_trading_value_institution.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.bid_trading_value_institution, range, value, "Bid Trading Value Institution: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Bid Trading Value Institution is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.bid_trading_value_institution.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.bid_trading_value_institution, range, value, display)

  return offset + length, value
end

-- Bid Trading Value Investor
koscom_mdcsrealtime_koscom_exture_v1_20.bid_trading_value_investor = {}

-- Size: Bid Trading Value Investor
koscom_mdcsrealtime_koscom_exture_v1_20.bid_trading_value_investor.size = 20

-- Display: Bid Trading Value Investor
koscom_mdcsrealtime_koscom_exture_v1_20.bid_trading_value_investor.display = function(value)
  return "Bid Trading Value Investor: "..value
end

-- Dissect: Bid Trading Value Investor
koscom_mdcsrealtime_koscom_exture_v1_20.bid_trading_value_investor.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.bid_trading_value_investor.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.bid_trading_value_investor, range, value, "Bid Trading Value Investor: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Bid Trading Value Investor is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.bid_trading_value_investor.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.bid_trading_value_investor, range, value, display)

  return offset + length, value
end

-- Bid Trading Volume Institution
koscom_mdcsrealtime_koscom_exture_v1_20.bid_trading_volume_institution = {}

-- Size: Bid Trading Volume Institution
koscom_mdcsrealtime_koscom_exture_v1_20.bid_trading_volume_institution.size = 15

-- Display: Bid Trading Volume Institution
koscom_mdcsrealtime_koscom_exture_v1_20.bid_trading_volume_institution.display = function(value)
  return "Bid Trading Volume Institution: "..value
end

-- Dissect: Bid Trading Volume Institution
koscom_mdcsrealtime_koscom_exture_v1_20.bid_trading_volume_institution.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.bid_trading_volume_institution.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.bid_trading_volume_institution, range, value, "Bid Trading Volume Institution: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Bid Trading Volume Institution is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.bid_trading_volume_institution.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.bid_trading_volume_institution, range, value, display)

  return offset + length, value
end

-- Bid Trading Volume Investor
koscom_mdcsrealtime_koscom_exture_v1_20.bid_trading_volume_investor = {}

-- Size: Bid Trading Volume Investor
koscom_mdcsrealtime_koscom_exture_v1_20.bid_trading_volume_investor.size = 20

-- Display: Bid Trading Volume Investor
koscom_mdcsrealtime_koscom_exture_v1_20.bid_trading_volume_investor.display = function(value)
  return "Bid Trading Volume Investor: "..value
end

-- Dissect: Bid Trading Volume Investor
koscom_mdcsrealtime_koscom_exture_v1_20.bid_trading_volume_investor.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.bid_trading_volume_investor.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.bid_trading_volume_investor, range, value, "Bid Trading Volume Investor: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Bid Trading Volume Investor is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.bid_trading_volume_investor.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.bid_trading_volume_investor, range, value, display)

  return offset + length, value
end

-- Bid Yield Institution
koscom_mdcsrealtime_koscom_exture_v1_20.bid_yield_institution = {}

-- Size: Bid Yield Institution
koscom_mdcsrealtime_koscom_exture_v1_20.bid_yield_institution.size = 8

-- Display: Bid Yield Institution
koscom_mdcsrealtime_koscom_exture_v1_20.bid_yield_institution.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.bid_yield_institution.size):string(), 4)

  if text == nil then
    return "Bid Yield Institution: "..tostring(value)
  end

  return "Bid Yield Institution: "..text
end

-- Dissect: Bid Yield Institution
koscom_mdcsrealtime_koscom_exture_v1_20.bid_yield_institution.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.bid_yield_institution.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.bid_yield_institution, range, value, "Bid Yield Institution: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Bid Yield Institution is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.bid_yield_institution.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.bid_yield_institution, range, value, display)

  return offset + length, value
end

-- Bid Yield Investor
koscom_mdcsrealtime_koscom_exture_v1_20.bid_yield_investor = {}

-- Size: Bid Yield Investor
koscom_mdcsrealtime_koscom_exture_v1_20.bid_yield_investor.size = 10

-- Display: Bid Yield Investor
koscom_mdcsrealtime_koscom_exture_v1_20.bid_yield_investor.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.bid_yield_investor.size):string(), 5)

  if text == nil then
    return "Bid Yield Investor: "..tostring(value)
  end

  return "Bid Yield Investor: "..text
end

-- Dissect: Bid Yield Investor
koscom_mdcsrealtime_koscom_exture_v1_20.bid_yield_investor.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.bid_yield_investor.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.bid_yield_investor, range, value, "Bid Yield Investor: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Bid Yield Investor is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100000

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.bid_yield_investor.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.bid_yield_investor, range, value, display)

  return offset + length, value
end

-- Bidask Type
koscom_mdcsrealtime_koscom_exture_v1_20.bidask_type = {}

-- Size: Bidask Type
koscom_mdcsrealtime_koscom_exture_v1_20.bidask_type.size = 1

-- Display: Bidask Type
koscom_mdcsrealtime_koscom_exture_v1_20.bidask_type.labels = {
  ["1"] = "Bidask Type: Ask (1)",
  ["2"] = "Bidask Type: Bid (2)",
}

koscom_mdcsrealtime_koscom_exture_v1_20.bidask_type.display = function(value)
  return koscom_mdcsrealtime_koscom_exture_v1_20.bidask_type.labels[value] or "Bidask Type: Unknown("..value..")"
end

-- Dissect: Bidask Type
koscom_mdcsrealtime_koscom_exture_v1_20.bidask_type.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.bidask_type.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding)
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.bidask_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.bidask_type, range, value, display)

  return offset + length, value
end

-- Bond Type Code
koscom_mdcsrealtime_koscom_exture_v1_20.bond_type_code = {}

-- Size: Bond Type Code
koscom_mdcsrealtime_koscom_exture_v1_20.bond_type_code.size = 4

-- Display: Bond Type Code
koscom_mdcsrealtime_koscom_exture_v1_20.bond_type_code.display = function(value)
  return "Bond Type Code: "..value
end

-- Dissect: Bond Type Code
koscom_mdcsrealtime_koscom_exture_v1_20.bond_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.bond_type_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.bond_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.bond_type_code, range, value, display)

  return offset + length, value
end

-- Bond Type Name
koscom_mdcsrealtime_koscom_exture_v1_20.bond_type_name = {}

-- Size: Bond Type Name
koscom_mdcsrealtime_koscom_exture_v1_20.bond_type_name.size = 40

-- Display: Bond Type Name
koscom_mdcsrealtime_koscom_exture_v1_20.bond_type_name.display = function(value)
  return "Bond Type Name: "..value
end

-- Dissect: Bond Type Name
koscom_mdcsrealtime_koscom_exture_v1_20.bond_type_name.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.bond_type_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.bond_type_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.bond_type_name, range, value, display)

  return offset + length, value
end

-- Branch Name
koscom_mdcsrealtime_koscom_exture_v1_20.branch_name = {}

-- Size: Branch Name
koscom_mdcsrealtime_koscom_exture_v1_20.branch_name.size = 12

-- Display: Branch Name
koscom_mdcsrealtime_koscom_exture_v1_20.branch_name.display = function(value)
  return "Branch Name: "..value
end

-- Dissect: Branch Name
koscom_mdcsrealtime_koscom_exture_v1_20.branch_name.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.branch_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.branch_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.branch_name, range, value, display)

  return offset + length, value
end

-- Business Code
koscom_mdcsrealtime_koscom_exture_v1_20.business_code = {}

-- Size: Business Code
koscom_mdcsrealtime_koscom_exture_v1_20.business_code.size = 3

-- Display: Business Code
koscom_mdcsrealtime_koscom_exture_v1_20.business_code.display = function(value)
  return "Business Code: "..value
end

-- Dissect: Business Code
koscom_mdcsrealtime_koscom_exture_v1_20.business_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.business_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.business_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.business_code, range, value, display)

  return offset + length, value
end

-- Call Re Investment Index
koscom_mdcsrealtime_koscom_exture_v1_20.call_re_investment_index = {}

-- Size: Call Re Investment Index
koscom_mdcsrealtime_koscom_exture_v1_20.call_re_investment_index.size = 10

-- Display: Call Re Investment Index
koscom_mdcsrealtime_koscom_exture_v1_20.call_re_investment_index.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.call_re_investment_index.size):string(), 4)

  if text == nil then
    return "Call Re Investment Index: "..tostring(value)
  end

  return "Call Re Investment Index: "..text
end

-- Dissect: Call Re Investment Index
koscom_mdcsrealtime_koscom_exture_v1_20.call_re_investment_index.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.call_re_investment_index.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.call_re_investment_index, range, value, "Call Re Investment Index: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Call Re Investment Index is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.call_re_investment_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.call_re_investment_index, range, value, display)

  return offset + length, value
end

-- Change Category
koscom_mdcsrealtime_koscom_exture_v1_20.change_category = {}

-- Size: Change Category
koscom_mdcsrealtime_koscom_exture_v1_20.change_category.size = 1

-- Display: Change Category
koscom_mdcsrealtime_koscom_exture_v1_20.change_category.display = function(value)
  return "Change Category: "..value
end

-- Dissect: Change Category
koscom_mdcsrealtime_koscom_exture_v1_20.change_category.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.change_category.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding)
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.change_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.change_category, range, value, display)

  return offset + length, value
end

-- Change Date
koscom_mdcsrealtime_koscom_exture_v1_20.change_date = {}

-- Size: Change Date
koscom_mdcsrealtime_koscom_exture_v1_20.change_date.size = 8

-- Display: Change Date
koscom_mdcsrealtime_koscom_exture_v1_20.change_date.display = function(value)
  -- Check if field has value
  if tonumber(value) == 0 then
    return "Change Date: No Value"
  end

  if #value < 8 then
    return "Change Date: "..value
  end

  return "Change Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Change Date
koscom_mdcsrealtime_koscom_exture_v1_20.change_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.change_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.change_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.change_date, range, value, display)

  return offset + length, value
end

-- Change Time
koscom_mdcsrealtime_koscom_exture_v1_20.change_time = {}

-- Size: Change Time
koscom_mdcsrealtime_koscom_exture_v1_20.change_time.size = 8

-- Display: Change Time
koscom_mdcsrealtime_koscom_exture_v1_20.change_time.display = function(value)
  -- Check if field has value
  if tonumber(value) == 0 then
    return "Change Time: No Value"
  end

  if #value < 8 then
    return "Change Time: "..value
  end

  return "Change Time: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6).."."..value:sub(7, 8)
end

-- Dissect: Change Time
koscom_mdcsrealtime_koscom_exture_v1_20.change_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.change_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding)
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.change_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.change_time, range, value, display)

  return offset + length, value
end

-- Clean Price Index
koscom_mdcsrealtime_koscom_exture_v1_20.clean_price_index = {}

-- Size: Clean Price Index
koscom_mdcsrealtime_koscom_exture_v1_20.clean_price_index.size = 10

-- Display: Clean Price Index
koscom_mdcsrealtime_koscom_exture_v1_20.clean_price_index.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.clean_price_index.size):string(), 4)

  if text == nil then
    return "Clean Price Index: "..tostring(value)
  end

  return "Clean Price Index: "..text
end

-- Dissect: Clean Price Index
koscom_mdcsrealtime_koscom_exture_v1_20.clean_price_index.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.clean_price_index.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.clean_price_index, range, value, "Clean Price Index: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Clean Price Index is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.clean_price_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.clean_price_index, range, value, display)

  return offset + length, value
end

-- Closing Price
koscom_mdcsrealtime_koscom_exture_v1_20.closing_price = {}

-- Size: Closing Price
koscom_mdcsrealtime_koscom_exture_v1_20.closing_price.size = 9

-- Display: Closing Price
koscom_mdcsrealtime_koscom_exture_v1_20.closing_price.display = function(value)
  return "Closing Price: "..value
end

-- Dissect: Closing Price
koscom_mdcsrealtime_koscom_exture_v1_20.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.closing_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.closing_price, range, value, "Closing Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Closing Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Compared To Previous Day
koscom_mdcsrealtime_koscom_exture_v1_20.compared_to_previous_day = {}

-- Size: Compared To Previous Day
koscom_mdcsrealtime_koscom_exture_v1_20.compared_to_previous_day.size = 9

-- Display: Compared To Previous Day
koscom_mdcsrealtime_koscom_exture_v1_20.compared_to_previous_day.display = function(value)
  return "Compared To Previous Day: "..value
end

-- Dissect: Compared To Previous Day
koscom_mdcsrealtime_koscom_exture_v1_20.compared_to_previous_day.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.compared_to_previous_day.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.compared_to_previous_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.compared_to_previous_day, range, value, display)

  return offset + length, value
end

-- Compared To Previous Day Type
koscom_mdcsrealtime_koscom_exture_v1_20.compared_to_previous_day_type = {}

-- Size: Compared To Previous Day Type
koscom_mdcsrealtime_koscom_exture_v1_20.compared_to_previous_day_type.size = 1

-- Display: Compared To Previous Day Type
koscom_mdcsrealtime_koscom_exture_v1_20.compared_to_previous_day_type.display = function(value)
  if value == "+" then
    return "Compared To Previous Day Type: Up (+)"
  end
  if value == " " then
    return "Compared To Previous Day Type: Steadiness (<whitespace>)"
  end
  if value == "-" then
    return "Compared To Previous Day Type: Down (-)"
  end

  return "Compared To Previous Day Type: Unknown("..value..")"
end

-- Dissect: Compared To Previous Day Type
koscom_mdcsrealtime_koscom_exture_v1_20.compared_to_previous_day_type.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.compared_to_previous_day_type.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding)
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.compared_to_previous_day_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.compared_to_previous_day_type, range, value, display)

  return offset + length, value
end

-- Comparison
koscom_mdcsrealtime_koscom_exture_v1_20.comparison = {}

-- Size: Comparison
koscom_mdcsrealtime_koscom_exture_v1_20.comparison.size = 9

-- Display: Comparison
koscom_mdcsrealtime_koscom_exture_v1_20.comparison.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.comparison.size):string(), 2)

  if text == nil then
    return "Comparison: "..tostring(value)
  end

  return "Comparison: "..text
end

-- Dissect: Comparison
koscom_mdcsrealtime_koscom_exture_v1_20.comparison.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.comparison.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.comparison, range, value, "Comparison: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Comparison is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.comparison.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.comparison, range, value, display)

  return offset + length, value
end

-- Composition Constituents Code
koscom_mdcsrealtime_koscom_exture_v1_20.composition_constituents_code = {}

-- Size: Composition Constituents Code
koscom_mdcsrealtime_koscom_exture_v1_20.composition_constituents_code.size = 12

-- Display: Composition Constituents Code
koscom_mdcsrealtime_koscom_exture_v1_20.composition_constituents_code.display = function(value)
  return "Composition Constituents Code: "..value
end

-- Dissect: Composition Constituents Code
koscom_mdcsrealtime_koscom_exture_v1_20.composition_constituents_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.composition_constituents_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.composition_constituents_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.composition_constituents_code, range, value, display)

  return offset + length, value
end

-- Composition Constituents Name
koscom_mdcsrealtime_koscom_exture_v1_20.composition_constituents_name = {}

-- Size: Composition Constituents Name
koscom_mdcsrealtime_koscom_exture_v1_20.composition_constituents_name.size = 80

-- Display: Composition Constituents Name
koscom_mdcsrealtime_koscom_exture_v1_20.composition_constituents_name.display = function(value)
  return "Composition Constituents Name: "..value
end

-- Dissect: Composition Constituents Name
koscom_mdcsrealtime_koscom_exture_v1_20.composition_constituents_name.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.composition_constituents_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.composition_constituents_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.composition_constituents_name, range, value, display)

  return offset + length, value
end

-- Composition Constituents Number
koscom_mdcsrealtime_koscom_exture_v1_20.composition_constituents_number = {}

-- Size: Composition Constituents Number
koscom_mdcsrealtime_koscom_exture_v1_20.composition_constituents_number.size = 4

-- Display: Composition Constituents Number
koscom_mdcsrealtime_koscom_exture_v1_20.composition_constituents_number.display = function(value)
  return "Composition Constituents Number: "..value
end

-- Dissect: Composition Constituents Number
koscom_mdcsrealtime_koscom_exture_v1_20.composition_constituents_number.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.composition_constituents_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.composition_constituents_number, range, value, "Composition Constituents Number: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Composition Constituents Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.composition_constituents_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.composition_constituents_number, range, value, display)

  return offset + length, value
end

-- Composition Issue Code
koscom_mdcsrealtime_koscom_exture_v1_20.composition_issue_code = {}

-- Size: Composition Issue Code
koscom_mdcsrealtime_koscom_exture_v1_20.composition_issue_code.size = 12

-- Display: Composition Issue Code
koscom_mdcsrealtime_koscom_exture_v1_20.composition_issue_code.display = function(value)
  return "Composition Issue Code: "..value
end

-- Dissect: Composition Issue Code
koscom_mdcsrealtime_koscom_exture_v1_20.composition_issue_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.composition_issue_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.composition_issue_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.composition_issue_code, range, value, display)

  return offset + length, value
end

-- Composition Issue Market Type
koscom_mdcsrealtime_koscom_exture_v1_20.composition_issue_market_type = {}

-- Size: Composition Issue Market Type
koscom_mdcsrealtime_koscom_exture_v1_20.composition_issue_market_type.size = 1

-- Display: Composition Issue Market Type
koscom_mdcsrealtime_koscom_exture_v1_20.composition_issue_market_type.display = function(value)
  return "Composition Issue Market Type: "..value
end

-- Dissect: Composition Issue Market Type
koscom_mdcsrealtime_koscom_exture_v1_20.composition_issue_market_type.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.composition_issue_market_type.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding)
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.composition_issue_market_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.composition_issue_market_type, range, value, display)

  return offset + length, value
end

-- Composition Issue Name
koscom_mdcsrealtime_koscom_exture_v1_20.composition_issue_name = {}

-- Size: Composition Issue Name
koscom_mdcsrealtime_koscom_exture_v1_20.composition_issue_name.size = 40

-- Display: Composition Issue Name
koscom_mdcsrealtime_koscom_exture_v1_20.composition_issue_name.display = function(value)
  return "Composition Issue Name: "..value
end

-- Dissect: Composition Issue Name
koscom_mdcsrealtime_koscom_exture_v1_20.composition_issue_name.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.composition_issue_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.composition_issue_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.composition_issue_name, range, value, display)

  return offset + length, value
end

-- Composition Issue Number
koscom_mdcsrealtime_koscom_exture_v1_20.composition_issue_number = {}

-- Size: Composition Issue Number
koscom_mdcsrealtime_koscom_exture_v1_20.composition_issue_number.size = 4

-- Display: Composition Issue Number
koscom_mdcsrealtime_koscom_exture_v1_20.composition_issue_number.display = function(value)
  return "Composition Issue Number: "..value
end

-- Dissect: Composition Issue Number
koscom_mdcsrealtime_koscom_exture_v1_20.composition_issue_number.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.composition_issue_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.composition_issue_number, range, value, "Composition Issue Number: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Composition Issue Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.composition_issue_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.composition_issue_number, range, value, display)

  return offset + length, value
end

-- Composition Ratio
koscom_mdcsrealtime_koscom_exture_v1_20.composition_ratio = {}

-- Size: Composition Ratio
koscom_mdcsrealtime_koscom_exture_v1_20.composition_ratio.size = 7

-- Display: Composition Ratio
koscom_mdcsrealtime_koscom_exture_v1_20.composition_ratio.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.composition_ratio.size):string(), 2)

  if text == nil then
    return "Composition Ratio: "..tostring(value)
  end

  return "Composition Ratio: "..text
end

-- Dissect: Composition Ratio
koscom_mdcsrealtime_koscom_exture_v1_20.composition_ratio.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.composition_ratio.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.composition_ratio, range, value, "Composition Ratio: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Composition Ratio is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.composition_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.composition_ratio, range, value, display)

  return offset + length, value
end

-- Contract Category
koscom_mdcsrealtime_koscom_exture_v1_20.contract_category = {}

-- Size: Contract Category
koscom_mdcsrealtime_koscom_exture_v1_20.contract_category.size = 1

-- Display: Contract Category
koscom_mdcsrealtime_koscom_exture_v1_20.contract_category.display = function(value)
  return "Contract Category: "..value
end

-- Dissect: Contract Category
koscom_mdcsrealtime_koscom_exture_v1_20.contract_category.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.contract_category.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding)
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.contract_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.contract_category, range, value, display)

  return offset + length, value
end

-- Contract Date
koscom_mdcsrealtime_koscom_exture_v1_20.contract_date = {}

-- Size: Contract Date
koscom_mdcsrealtime_koscom_exture_v1_20.contract_date.size = 2

-- Display: Contract Date
koscom_mdcsrealtime_koscom_exture_v1_20.contract_date.display = function(value)
  return "Contract Date: "..value
end

-- Dissect: Contract Date
koscom_mdcsrealtime_koscom_exture_v1_20.contract_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.contract_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.contract_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.contract_date, range, value, display)

  return offset + length, value
end

-- CU unit share/Number of contract/KRW Cash/USD Cash/Converted amount(KRW)
koscom_mdcsrealtime_koscom_exture_v1_20.cu_unit_sharenumber_of_contractkrw_cashusd_cashconverted_amountkrw = {}

-- Size: CU unit share/Number of contract/KRW Cash/USD Cash/Converted amount(KRW)
koscom_mdcsrealtime_koscom_exture_v1_20.cu_unit_sharenumber_of_contractkrw_cashusd_cashconverted_amountkrw.size = 18

-- Display: CU unit share/Number of contract/KRW Cash/USD Cash/Converted amount(KRW)
koscom_mdcsrealtime_koscom_exture_v1_20.cu_unit_sharenumber_of_contractkrw_cashusd_cashconverted_amountkrw.display = function(value)
  return "CU unit share/Number of contract/KRW Cash/USD Cash/Converted amount(KRW): "..value
end

-- Dissect: CU unit share/Number of contract/KRW Cash/USD Cash/Converted amount(KRW)
koscom_mdcsrealtime_koscom_exture_v1_20.cu_unit_sharenumber_of_contractkrw_cashusd_cashconverted_amountkrw.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.cu_unit_sharenumber_of_contractkrw_cashusd_cashconverted_amountkrw.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.cu_unit_sharenumber_of_contractkrw_cashusd_cashconverted_amountkrw, range, value, "CU unit share/Number of contract/KRW Cash/USD Cash/Converted amount(KRW): Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "CU unit share/Number of contract/KRW Cash/USD Cash/Converted amount(KRW) is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.cu_unit_sharenumber_of_contractkrw_cashusd_cashconverted_amountkrw.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.cu_unit_sharenumber_of_contractkrw_cashusd_cashconverted_amountkrw, range, value, display)

  return offset + length, value
end

-- Data Process Category
koscom_mdcsrealtime_koscom_exture_v1_20.data_process_category = {}

-- Size: Data Process Category
koscom_mdcsrealtime_koscom_exture_v1_20.data_process_category.size = 1

-- Display: Data Process Category
koscom_mdcsrealtime_koscom_exture_v1_20.data_process_category.display = function(value)
  return "Data Process Category: "..value
end

-- Dissect: Data Process Category
koscom_mdcsrealtime_koscom_exture_v1_20.data_process_category.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.data_process_category.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding)
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.data_process_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.data_process_category, range, value, display)

  return offset + length, value
end

-- Data Seq Number
koscom_mdcsrealtime_koscom_exture_v1_20.data_seq_number = {}

-- Size: Data Seq Number
koscom_mdcsrealtime_koscom_exture_v1_20.data_seq_number.size = 8

-- Display: Data Seq Number
koscom_mdcsrealtime_koscom_exture_v1_20.data_seq_number.display = function(value)
  return "Data Seq Number: "..value
end

-- Dissect: Data Seq Number
koscom_mdcsrealtime_koscom_exture_v1_20.data_seq_number.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.data_seq_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.data_seq_number, range, value, "Data Seq Number: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Data Seq Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.data_seq_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.data_seq_number, range, value, display)

  return offset + length, value
end

-- Data Small Category
koscom_mdcsrealtime_koscom_exture_v1_20.data_small_category = {}

-- Size: Data Small Category
koscom_mdcsrealtime_koscom_exture_v1_20.data_small_category.size = 2

-- Display: Data Small Category
koscom_mdcsrealtime_koscom_exture_v1_20.data_small_category.display = function(value)
  return "Data Small Category: "..value
end

-- Dissect: Data Small Category
koscom_mdcsrealtime_koscom_exture_v1_20.data_small_category.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.data_small_category.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.data_small_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.data_small_category, range, value, display)

  return offset + length, value
end

-- Data Source Type
koscom_mdcsrealtime_koscom_exture_v1_20.data_source_type = {}

-- Size: Data Source Type
koscom_mdcsrealtime_koscom_exture_v1_20.data_source_type.size = 1

-- Display: Data Source Type
koscom_mdcsrealtime_koscom_exture_v1_20.data_source_type.display = function(value)
  return "Data Source Type: "..value
end

-- Dissect: Data Source Type
koscom_mdcsrealtime_koscom_exture_v1_20.data_source_type.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.data_source_type.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding)
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.data_source_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.data_source_type, range, value, display)

  return offset + length, value
end

-- Data Type
koscom_mdcsrealtime_koscom_exture_v1_20.data_type = {}

-- Size: Data Type
koscom_mdcsrealtime_koscom_exture_v1_20.data_type.size = 2

-- Display: Data Type
koscom_mdcsrealtime_koscom_exture_v1_20.data_type.display = function(value)
  return "Data Type: "..value
end

-- Dissect: Data Type
koscom_mdcsrealtime_koscom_exture_v1_20.data_type.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.data_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.data_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.data_type, range, value, display)

  return offset + length, value
end

-- Date
koscom_mdcsrealtime_koscom_exture_v1_20.date = {}

-- Size: Date
koscom_mdcsrealtime_koscom_exture_v1_20.date.size = 8

-- Display: Date
koscom_mdcsrealtime_koscom_exture_v1_20.date.display = function(value)
  if #value < 8 then
    return "Date: "..value
  end

  return "Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Date
koscom_mdcsrealtime_koscom_exture_v1_20.date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.date, range, value, display)

  return offset + length, value
end

-- Day Before Previous Days Nontaxable Base Price For Overseas Stocks
koscom_mdcsrealtime_koscom_exture_v1_20.day_before_previous_days_nontaxable_base_price_for_overseas_stocks = {}

-- Size: Day Before Previous Days Nontaxable Base Price For Overseas Stocks
koscom_mdcsrealtime_koscom_exture_v1_20.day_before_previous_days_nontaxable_base_price_for_overseas_stocks.size = 9

-- Display: Day Before Previous Days Nontaxable Base Price For Overseas Stocks
koscom_mdcsrealtime_koscom_exture_v1_20.day_before_previous_days_nontaxable_base_price_for_overseas_stocks.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.day_before_previous_days_nontaxable_base_price_for_overseas_stocks.size):string(), 2)

  if text == nil then
    return "Day Before Previous Days Nontaxable Base Price For Overseas Stocks: "..tostring(value)
  end

  return "Day Before Previous Days Nontaxable Base Price For Overseas Stocks: "..text
end

-- Dissect: Day Before Previous Days Nontaxable Base Price For Overseas Stocks
koscom_mdcsrealtime_koscom_exture_v1_20.day_before_previous_days_nontaxable_base_price_for_overseas_stocks.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.day_before_previous_days_nontaxable_base_price_for_overseas_stocks.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.day_before_previous_days_nontaxable_base_price_for_overseas_stocks, range, value, "Day Before Previous Days Nontaxable Base Price For Overseas Stocks: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Day Before Previous Days Nontaxable Base Price For Overseas Stocks is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.day_before_previous_days_nontaxable_base_price_for_overseas_stocks.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.day_before_previous_days_nontaxable_base_price_for_overseas_stocks, range, value, display)

  return offset + length, value
end

-- Disparate Ratio
koscom_mdcsrealtime_koscom_exture_v1_20.disparate_ratio = {}

-- Size: Disparate Ratio
koscom_mdcsrealtime_koscom_exture_v1_20.disparate_ratio.size = 9

-- Display: Disparate Ratio
koscom_mdcsrealtime_koscom_exture_v1_20.disparate_ratio.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.disparate_ratio.size):string(), 2)

  if text == nil then
    return "Disparate Ratio: "..tostring(value)
  end

  return "Disparate Ratio: "..text
end

-- Dissect: Disparate Ratio
koscom_mdcsrealtime_koscom_exture_v1_20.disparate_ratio.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.disparate_ratio.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.disparate_ratio, range, value, "Disparate Ratio: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Disparate Ratio is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.disparate_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.disparate_ratio, range, value, display)

  return offset + length, value
end

-- Disparate Ratio Sign
koscom_mdcsrealtime_koscom_exture_v1_20.disparate_ratio_sign = {}

-- Size: Disparate Ratio Sign
koscom_mdcsrealtime_koscom_exture_v1_20.disparate_ratio_sign.size = 1

-- Display: Disparate Ratio Sign
koscom_mdcsrealtime_koscom_exture_v1_20.disparate_ratio_sign.display = function(value)
  return "Disparate Ratio Sign: "..value
end

-- Dissect: Disparate Ratio Sign
koscom_mdcsrealtime_koscom_exture_v1_20.disparate_ratio_sign.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.disparate_ratio_sign.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding)
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.disparate_ratio_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.disparate_ratio_sign, range, value, display)

  return offset + length, value
end

-- During Market Hours Final Iv
koscom_mdcsrealtime_koscom_exture_v1_20.during_market_hours_final_iv = {}

-- Size: During Market Hours Final Iv
koscom_mdcsrealtime_koscom_exture_v1_20.during_market_hours_final_iv.size = 9

-- Display: During Market Hours Final Iv
koscom_mdcsrealtime_koscom_exture_v1_20.during_market_hours_final_iv.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.during_market_hours_final_iv.size):string(), 2)

  if text == nil then
    return "During Market Hours Final Iv: "..tostring(value)
  end

  return "During Market Hours Final Iv: "..text
end

-- Dissect: During Market Hours Final Iv
koscom_mdcsrealtime_koscom_exture_v1_20.during_market_hours_final_iv.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.during_market_hours_final_iv.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.during_market_hours_final_iv, range, value, "During Market Hours Final Iv: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "During Market Hours Final Iv is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.during_market_hours_final_iv.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.during_market_hours_final_iv, range, value, display)

  return offset + length, value
end

-- During Marketfinal Market Nav
koscom_mdcsrealtime_koscom_exture_v1_20.during_marketfinal_market_nav = {}

-- Size: During Marketfinal Market Nav
koscom_mdcsrealtime_koscom_exture_v1_20.during_marketfinal_market_nav.size = 9

-- Display: During Marketfinal Market Nav
koscom_mdcsrealtime_koscom_exture_v1_20.during_marketfinal_market_nav.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.during_marketfinal_market_nav.size):string(), 2)

  if text == nil then
    return "During Marketfinal Market Nav: "..tostring(value)
  end

  return "During Marketfinal Market Nav: "..text
end

-- Dissect: During Marketfinal Market Nav
koscom_mdcsrealtime_koscom_exture_v1_20.during_marketfinal_market_nav.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.during_marketfinal_market_nav.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.during_marketfinal_market_nav, range, value, "During Marketfinal Market Nav: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "During Marketfinal Market Nav is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.during_marketfinal_market_nav.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.during_marketfinal_market_nav, range, value, display)

  return offset + length, value
end

-- During Marketfinal Nav
koscom_mdcsrealtime_koscom_exture_v1_20.during_marketfinal_nav = {}

-- Size: During Marketfinal Nav
koscom_mdcsrealtime_koscom_exture_v1_20.during_marketfinal_nav.size = 9

-- Display: During Marketfinal Nav
koscom_mdcsrealtime_koscom_exture_v1_20.during_marketfinal_nav.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.during_marketfinal_nav.size):string(), 2)

  if text == nil then
    return "During Marketfinal Nav: "..tostring(value)
  end

  return "During Marketfinal Nav: "..text
end

-- Dissect: During Marketfinal Nav
koscom_mdcsrealtime_koscom_exture_v1_20.during_marketfinal_nav.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.during_marketfinal_nav.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.during_marketfinal_nav, range, value, "During Marketfinal Nav: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "During Marketfinal Nav is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.during_marketfinal_nav.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.during_marketfinal_nav, range, value, display)

  return offset + length, value
end

-- End Keyword
koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword = {}

-- Size: End Keyword
koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.size = 1

-- Display: End Keyword
koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.labels = {
  [255] = "End Keyword: End Of Message (255)",
}

koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.display = function(value)
  return koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.labels[value] or "End Keyword: Unknown("..value..")"
end

-- Dissect: End Keyword
koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.end_keyword, range, value, display)

  return offset + length, value
end

-- Etf Cu Quantity
koscom_mdcsrealtime_koscom_exture_v1_20.etf_cu_quantity = {}

-- Size: Etf Cu Quantity
koscom_mdcsrealtime_koscom_exture_v1_20.etf_cu_quantity.size = 8

-- Display: Etf Cu Quantity
koscom_mdcsrealtime_koscom_exture_v1_20.etf_cu_quantity.display = function(value)
  return "Etf Cu Quantity: "..value
end

-- Dissect: Etf Cu Quantity
koscom_mdcsrealtime_koscom_exture_v1_20.etf_cu_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.etf_cu_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.etf_cu_quantity, range, value, "Etf Cu Quantity: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Etf Cu Quantity is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.etf_cu_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.etf_cu_quantity, range, value, display)

  return offset + length, value
end

-- Etf Flow Net Asset Total Amount
koscom_mdcsrealtime_koscom_exture_v1_20.etf_flow_net_asset_total_amount = {}

-- Size: Etf Flow Net Asset Total Amount
koscom_mdcsrealtime_koscom_exture_v1_20.etf_flow_net_asset_total_amount.size = 15

-- Display: Etf Flow Net Asset Total Amount
koscom_mdcsrealtime_koscom_exture_v1_20.etf_flow_net_asset_total_amount.display = function(value)
  return "Etf Flow Net Asset Total Amount: "..value
end

-- Dissect: Etf Flow Net Asset Total Amount
koscom_mdcsrealtime_koscom_exture_v1_20.etf_flow_net_asset_total_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.etf_flow_net_asset_total_amount.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.etf_flow_net_asset_total_amount, range, value, "Etf Flow Net Asset Total Amount: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Etf Flow Net Asset Total Amount is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.etf_flow_net_asset_total_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.etf_flow_net_asset_total_amount, range, value, display)

  return offset + length, value
end

-- Etf Foreign Final Net Asset Value
koscom_mdcsrealtime_koscom_exture_v1_20.etf_foreign_final_net_asset_value = {}

-- Size: Etf Foreign Final Net Asset Value
koscom_mdcsrealtime_koscom_exture_v1_20.etf_foreign_final_net_asset_value.size = 9

-- Display: Etf Foreign Final Net Asset Value
koscom_mdcsrealtime_koscom_exture_v1_20.etf_foreign_final_net_asset_value.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.etf_foreign_final_net_asset_value.size):string(), 2)

  if text == nil then
    return "Etf Foreign Final Net Asset Value: "..tostring(value)
  end

  return "Etf Foreign Final Net Asset Value: "..text
end

-- Dissect: Etf Foreign Final Net Asset Value
koscom_mdcsrealtime_koscom_exture_v1_20.etf_foreign_final_net_asset_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.etf_foreign_final_net_asset_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.etf_foreign_final_net_asset_value, range, value, "Etf Foreign Final Net Asset Value: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Etf Foreign Final Net Asset Value is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.etf_foreign_final_net_asset_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.etf_foreign_final_net_asset_value, range, value, display)

  return offset + length, value
end

-- Etf Foreign Flow Net Asset Total Amount
koscom_mdcsrealtime_koscom_exture_v1_20.etf_foreign_flow_net_asset_total_amount = {}

-- Size: Etf Foreign Flow Net Asset Total Amount
koscom_mdcsrealtime_koscom_exture_v1_20.etf_foreign_flow_net_asset_total_amount.size = 15

-- Display: Etf Foreign Flow Net Asset Total Amount
koscom_mdcsrealtime_koscom_exture_v1_20.etf_foreign_flow_net_asset_total_amount.display = function(value)
  return "Etf Foreign Flow Net Asset Total Amount: "..value
end

-- Dissect: Etf Foreign Flow Net Asset Total Amount
koscom_mdcsrealtime_koscom_exture_v1_20.etf_foreign_flow_net_asset_total_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.etf_foreign_flow_net_asset_total_amount.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.etf_foreign_flow_net_asset_total_amount, range, value, "Etf Foreign Flow Net Asset Total Amount: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Etf Foreign Flow Net Asset Total Amount is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.etf_foreign_flow_net_asset_total_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.etf_foreign_flow_net_asset_total_amount, range, value, display)

  return offset + length, value
end

-- Etf Foreign Net Asset Total
koscom_mdcsrealtime_koscom_exture_v1_20.etf_foreign_net_asset_total = {}

-- Size: Etf Foreign Net Asset Total
koscom_mdcsrealtime_koscom_exture_v1_20.etf_foreign_net_asset_total.size = 15

-- Display: Etf Foreign Net Asset Total
koscom_mdcsrealtime_koscom_exture_v1_20.etf_foreign_net_asset_total.display = function(value)
  return "Etf Foreign Net Asset Total: "..value
end

-- Dissect: Etf Foreign Net Asset Total
koscom_mdcsrealtime_koscom_exture_v1_20.etf_foreign_net_asset_total.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.etf_foreign_net_asset_total.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.etf_foreign_net_asset_total.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.etf_foreign_net_asset_total, range, value, display)

  return offset + length, value
end

-- Etf Foreign Net Asset Value Amount
koscom_mdcsrealtime_koscom_exture_v1_20.etf_foreign_net_asset_value_amount = {}

-- Size: Etf Foreign Net Asset Value Amount
koscom_mdcsrealtime_koscom_exture_v1_20.etf_foreign_net_asset_value_amount.size = 15

-- Display: Etf Foreign Net Asset Value Amount
koscom_mdcsrealtime_koscom_exture_v1_20.etf_foreign_net_asset_value_amount.display = function(value)
  return "Etf Foreign Net Asset Value Amount: "..value
end

-- Dissect: Etf Foreign Net Asset Value Amount
koscom_mdcsrealtime_koscom_exture_v1_20.etf_foreign_net_asset_value_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.etf_foreign_net_asset_value_amount.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.etf_foreign_net_asset_value_amount, range, value, "Etf Foreign Net Asset Value Amount: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Etf Foreign Net Asset Value Amount is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.etf_foreign_net_asset_value_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.etf_foreign_net_asset_value_amount, range, value, display)

  return offset + length, value
end

-- Etf Net Asset Value Amount
koscom_mdcsrealtime_koscom_exture_v1_20.etf_net_asset_value_amount = {}

-- Size: Etf Net Asset Value Amount
koscom_mdcsrealtime_koscom_exture_v1_20.etf_net_asset_value_amount.size = 9

-- Display: Etf Net Asset Value Amount
koscom_mdcsrealtime_koscom_exture_v1_20.etf_net_asset_value_amount.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.etf_net_asset_value_amount.size):string(), 2)

  if text == nil then
    return "Etf Net Asset Value Amount: "..tostring(value)
  end

  return "Etf Net Asset Value Amount: "..text
end

-- Dissect: Etf Net Asset Value Amount
koscom_mdcsrealtime_koscom_exture_v1_20.etf_net_asset_value_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.etf_net_asset_value_amount.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.etf_net_asset_value_amount, range, value, "Etf Net Asset Value Amount: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Etf Net Asset Value Amount is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.etf_net_asset_value_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.etf_net_asset_value_amount, range, value, display)

  return offset + length, value
end

-- Filler 1
koscom_mdcsrealtime_koscom_exture_v1_20.filler_1 = {}

-- Size: Filler 1
koscom_mdcsrealtime_koscom_exture_v1_20.filler_1.size = 1

-- Display: Filler 1
koscom_mdcsrealtime_koscom_exture_v1_20.filler_1.display = function(value)
  return "Filler 1: "..value
end

-- Dissect: Filler 1
koscom_mdcsrealtime_koscom_exture_v1_20.filler_1.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.filler_1.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding)
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.filler_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_1, range, value, display)

  return offset + length, value
end

-- Filler 10
koscom_mdcsrealtime_koscom_exture_v1_20.filler_10 = {}

-- Size: Filler 10
koscom_mdcsrealtime_koscom_exture_v1_20.filler_10.size = 10

-- Display: Filler 10
koscom_mdcsrealtime_koscom_exture_v1_20.filler_10.display = function(value)
  return "Filler 10: "..value
end

-- Dissect: Filler 10
koscom_mdcsrealtime_koscom_exture_v1_20.filler_10.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.filler_10.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_10, range, value, "Filler 10: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Filler 10 is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.filler_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_10, range, value, display)

  return offset + length, value
end

-- Filler 11
koscom_mdcsrealtime_koscom_exture_v1_20.filler_11 = {}

-- Size: Filler 11
koscom_mdcsrealtime_koscom_exture_v1_20.filler_11.size = 11

-- Display: Filler 11
koscom_mdcsrealtime_koscom_exture_v1_20.filler_11.display = function(value)
  return "Filler 11: "..value
end

-- Dissect: Filler 11
koscom_mdcsrealtime_koscom_exture_v1_20.filler_11.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.filler_11.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.filler_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_11, range, value, display)

  return offset + length, value
end

-- Filler 19
koscom_mdcsrealtime_koscom_exture_v1_20.filler_19 = {}

-- Size: Filler 19
koscom_mdcsrealtime_koscom_exture_v1_20.filler_19.size = 19

-- Display: Filler 19
koscom_mdcsrealtime_koscom_exture_v1_20.filler_19.display = function(value)
  return "Filler 19: "..value
end

-- Dissect: Filler 19
koscom_mdcsrealtime_koscom_exture_v1_20.filler_19.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.filler_19.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.filler_19.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_19, range, value, display)

  return offset + length, value
end

-- Filler 2
koscom_mdcsrealtime_koscom_exture_v1_20.filler_2 = {}

-- Size: Filler 2
koscom_mdcsrealtime_koscom_exture_v1_20.filler_2.size = 2

-- Display: Filler 2
koscom_mdcsrealtime_koscom_exture_v1_20.filler_2.display = function(value)
  return "Filler 2: "..value
end

-- Dissect: Filler 2
koscom_mdcsrealtime_koscom_exture_v1_20.filler_2.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.filler_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.filler_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_2, range, value, display)

  return offset + length, value
end

-- Filler 28
koscom_mdcsrealtime_koscom_exture_v1_20.filler_28 = {}

-- Size: Filler 28
koscom_mdcsrealtime_koscom_exture_v1_20.filler_28.size = 28

-- Display: Filler 28
koscom_mdcsrealtime_koscom_exture_v1_20.filler_28.display = function(value)
  return "Filler 28: "..value
end

-- Dissect: Filler 28
koscom_mdcsrealtime_koscom_exture_v1_20.filler_28.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.filler_28.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.filler_28.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_28, range, value, display)

  return offset + length, value
end

-- Filler 33
koscom_mdcsrealtime_koscom_exture_v1_20.filler_33 = {}

-- Size: Filler 33
koscom_mdcsrealtime_koscom_exture_v1_20.filler_33.size = 33

-- Display: Filler 33
koscom_mdcsrealtime_koscom_exture_v1_20.filler_33.display = function(value)
  return "Filler 33: "..value
end

-- Dissect: Filler 33
koscom_mdcsrealtime_koscom_exture_v1_20.filler_33.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.filler_33.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.filler_33.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_33, range, value, display)

  return offset + length, value
end

-- Filler 38
koscom_mdcsrealtime_koscom_exture_v1_20.filler_38 = {}

-- Size: Filler 38
koscom_mdcsrealtime_koscom_exture_v1_20.filler_38.size = 38

-- Display: Filler 38
koscom_mdcsrealtime_koscom_exture_v1_20.filler_38.display = function(value)
  return "Filler 38: "..value
end

-- Dissect: Filler 38
koscom_mdcsrealtime_koscom_exture_v1_20.filler_38.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.filler_38.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.filler_38.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_38, range, value, display)

  return offset + length, value
end

-- Filler 4
koscom_mdcsrealtime_koscom_exture_v1_20.filler_4 = {}

-- Size: Filler 4
koscom_mdcsrealtime_koscom_exture_v1_20.filler_4.size = 4

-- Display: Filler 4
koscom_mdcsrealtime_koscom_exture_v1_20.filler_4.display = function(value)
  return "Filler 4: "..value
end

-- Dissect: Filler 4
koscom_mdcsrealtime_koscom_exture_v1_20.filler_4.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.filler_4.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.filler_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_4, range, value, display)

  return offset + length, value
end

-- Filler 40
koscom_mdcsrealtime_koscom_exture_v1_20.filler_40 = {}

-- Size: Filler 40
koscom_mdcsrealtime_koscom_exture_v1_20.filler_40.size = 40

-- Display: Filler 40
koscom_mdcsrealtime_koscom_exture_v1_20.filler_40.display = function(value)
  return "Filler 40: "..value
end

-- Dissect: Filler 40
koscom_mdcsrealtime_koscom_exture_v1_20.filler_40.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.filler_40.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.filler_40.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_40, range, value, display)

  return offset + length, value
end

-- Filler 46
koscom_mdcsrealtime_koscom_exture_v1_20.filler_46 = {}

-- Size: Filler 46
koscom_mdcsrealtime_koscom_exture_v1_20.filler_46.size = 46

-- Display: Filler 46
koscom_mdcsrealtime_koscom_exture_v1_20.filler_46.display = function(value)
  return "Filler 46: "..value
end

-- Dissect: Filler 46
koscom_mdcsrealtime_koscom_exture_v1_20.filler_46.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.filler_46.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.filler_46.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_46, range, value, display)

  return offset + length, value
end

-- Filler 5
koscom_mdcsrealtime_koscom_exture_v1_20.filler_5 = {}

-- Size: Filler 5
koscom_mdcsrealtime_koscom_exture_v1_20.filler_5.size = 5

-- Display: Filler 5
koscom_mdcsrealtime_koscom_exture_v1_20.filler_5.display = function(value)
  return "Filler 5: "..value
end

-- Dissect: Filler 5
koscom_mdcsrealtime_koscom_exture_v1_20.filler_5.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.filler_5.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.filler_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_5, range, value, display)

  return offset + length, value
end

-- Filler 56
koscom_mdcsrealtime_koscom_exture_v1_20.filler_56 = {}

-- Size: Filler 56
koscom_mdcsrealtime_koscom_exture_v1_20.filler_56.size = 56

-- Display: Filler 56
koscom_mdcsrealtime_koscom_exture_v1_20.filler_56.display = function(value)
  return "Filler 56: "..value
end

-- Dissect: Filler 56
koscom_mdcsrealtime_koscom_exture_v1_20.filler_56.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.filler_56.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.filler_56.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_56, range, value, display)

  return offset + length, value
end

-- Filler 6
koscom_mdcsrealtime_koscom_exture_v1_20.filler_6 = {}

-- Size: Filler 6
koscom_mdcsrealtime_koscom_exture_v1_20.filler_6.size = 6

-- Display: Filler 6
koscom_mdcsrealtime_koscom_exture_v1_20.filler_6.display = function(value)
  return "Filler 6: "..value
end

-- Dissect: Filler 6
koscom_mdcsrealtime_koscom_exture_v1_20.filler_6.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.filler_6.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.filler_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_6, range, value, display)

  return offset + length, value
end

-- Filler 60
koscom_mdcsrealtime_koscom_exture_v1_20.filler_60 = {}

-- Size: Filler 60
koscom_mdcsrealtime_koscom_exture_v1_20.filler_60.size = 60

-- Display: Filler 60
koscom_mdcsrealtime_koscom_exture_v1_20.filler_60.display = function(value)
  return "Filler 60: "..value
end

-- Dissect: Filler 60
koscom_mdcsrealtime_koscom_exture_v1_20.filler_60.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.filler_60.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.filler_60.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_60, range, value, display)

  return offset + length, value
end

-- Filler 7
koscom_mdcsrealtime_koscom_exture_v1_20.filler_7 = {}

-- Size: Filler 7
koscom_mdcsrealtime_koscom_exture_v1_20.filler_7.size = 7

-- Display: Filler 7
koscom_mdcsrealtime_koscom_exture_v1_20.filler_7.display = function(value)
  return "Filler 7: "..value
end

-- Dissect: Filler 7
koscom_mdcsrealtime_koscom_exture_v1_20.filler_7.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.filler_7.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.filler_7.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_7, range, value, display)

  return offset + length, value
end

-- Filler 8
koscom_mdcsrealtime_koscom_exture_v1_20.filler_8 = {}

-- Size: Filler 8
koscom_mdcsrealtime_koscom_exture_v1_20.filler_8.size = 8

-- Display: Filler 8
koscom_mdcsrealtime_koscom_exture_v1_20.filler_8.display = function(value)
  return "Filler 8: "..value
end

-- Dissect: Filler 8
koscom_mdcsrealtime_koscom_exture_v1_20.filler_8.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.filler_8.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.filler_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.filler_8, range, value, display)

  return offset + length, value
end

-- Futures Basis Price
koscom_mdcsrealtime_koscom_exture_v1_20.futures_basis_price = {}

-- Size: Futures Basis Price
koscom_mdcsrealtime_koscom_exture_v1_20.futures_basis_price.size = 9

-- Display: Futures Basis Price
koscom_mdcsrealtime_koscom_exture_v1_20.futures_basis_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.futures_basis_price.size):string(), 2)

  if text == nil then
    return "Futures Basis Price: "..tostring(value)
  end

  return "Futures Basis Price: "..text
end

-- Dissect: Futures Basis Price
koscom_mdcsrealtime_koscom_exture_v1_20.futures_basis_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.futures_basis_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.futures_basis_price, range, value, "Futures Basis Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Futures Basis Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.futures_basis_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.futures_basis_price, range, value, display)

  return offset + length, value
end

-- Futures Basis Price Nullable
koscom_mdcsrealtime_koscom_exture_v1_20.futures_basis_price_nullable = {}

-- Size: Futures Basis Price Nullable
koscom_mdcsrealtime_koscom_exture_v1_20.futures_basis_price_nullable.size = 9

-- Display: Futures Basis Price Nullable
koscom_mdcsrealtime_koscom_exture_v1_20.futures_basis_price_nullable.display = function(value, buffer, offset, packet, parent)
  -- Check if field has value
  if value == 0 then
    return "Futures Basis Price Nullable: No Value"
  end

  local digits = buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.futures_basis_price_nullable.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Futures Basis Price Nullable: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 2 then
    digits = string.rep("0", 2 - #digits + 1)..digits
  end

  return "Futures Basis Price Nullable: "..sign..digits:sub(1, #digits - 2)..".".. digits:sub(-2)
end

-- Dissect: Futures Basis Price Nullable
koscom_mdcsrealtime_koscom_exture_v1_20.futures_basis_price_nullable.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.futures_basis_price_nullable.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.futures_basis_price_nullable, range, value, "Futures Basis Price Nullable: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Futures Basis Price Nullable is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.futures_basis_price_nullable.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.futures_basis_price_nullable, range, value, display)

  return offset + length, value
end

-- Fx Category
koscom_mdcsrealtime_koscom_exture_v1_20.fx_category = {}

-- Size: Fx Category
koscom_mdcsrealtime_koscom_exture_v1_20.fx_category.size = 1

-- Display: Fx Category
koscom_mdcsrealtime_koscom_exture_v1_20.fx_category.display = function(value)
  return "Fx Category: "..value
end

-- Dissect: Fx Category
koscom_mdcsrealtime_koscom_exture_v1_20.fx_category.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.fx_category.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding)
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.fx_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.fx_category, range, value, display)

  return offset + length, value
end

-- High Price
koscom_mdcsrealtime_koscom_exture_v1_20.high_price = {}

-- Size: High Price
koscom_mdcsrealtime_koscom_exture_v1_20.high_price.size = 9

-- Display: High Price
koscom_mdcsrealtime_koscom_exture_v1_20.high_price.display = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
koscom_mdcsrealtime_koscom_exture_v1_20.high_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.high_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.high_price, range, value, "High Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "High Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.high_price, range, value, display)

  return offset + length, value
end

-- Hours
koscom_mdcsrealtime_koscom_exture_v1_20.hours = {}

-- Size: Hours
koscom_mdcsrealtime_koscom_exture_v1_20.hours.size = 6

-- Display: Hours
koscom_mdcsrealtime_koscom_exture_v1_20.hours.display = function(value)
  if #value < 6 then
    return "Hours: "..value
  end

  return "Hours: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Hours
koscom_mdcsrealtime_koscom_exture_v1_20.hours.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.hours.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding)
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.hours.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.hours, range, value, display)

  return offset + length, value
end

-- Index
koscom_mdcsrealtime_koscom_exture_v1_20.index = {}

-- Size: Index
koscom_mdcsrealtime_koscom_exture_v1_20.index.size = 9

-- Display: Index
koscom_mdcsrealtime_koscom_exture_v1_20.index.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.index.size):string(), 2)

  if text == nil then
    return "Index: "..tostring(value)
  end

  return "Index: "..text
end

-- Dissect: Index
koscom_mdcsrealtime_koscom_exture_v1_20.index.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.index.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.index, range, value, "Index: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Index is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.index.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.index, range, value, display)

  return offset + length, value
end

-- Index Id
koscom_mdcsrealtime_koscom_exture_v1_20.index_id = {}

-- Size: Index Id
koscom_mdcsrealtime_koscom_exture_v1_20.index_id.size = 6

-- Display: Index Id
koscom_mdcsrealtime_koscom_exture_v1_20.index_id.display = function(value)
  return "Index Id: "..value
end

-- Dissect: Index Id
koscom_mdcsrealtime_koscom_exture_v1_20.index_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.index_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.index_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.index_id, range, value, display)

  return offset + length, value
end

-- Input Date
koscom_mdcsrealtime_koscom_exture_v1_20.input_date = {}

-- Size: Input Date
koscom_mdcsrealtime_koscom_exture_v1_20.input_date.size = 8

-- Display: Input Date
koscom_mdcsrealtime_koscom_exture_v1_20.input_date.display = function(value)
  if #value < 8 then
    return "Input Date: "..value
  end

  return "Input Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Input Date
koscom_mdcsrealtime_koscom_exture_v1_20.input_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.input_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.input_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.input_date, range, value, display)

  return offset + length, value
end

-- Institution Code
koscom_mdcsrealtime_koscom_exture_v1_20.institution_code = {}

-- Size: Institution Code
koscom_mdcsrealtime_koscom_exture_v1_20.institution_code.size = 4

-- Display: Institution Code
koscom_mdcsrealtime_koscom_exture_v1_20.institution_code.display = function(value)
  return "Institution Code: "..value
end

-- Dissect: Institution Code
koscom_mdcsrealtime_koscom_exture_v1_20.institution_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.institution_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.institution_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.institution_code, range, value, display)

  return offset + length, value
end

-- Intrinsic Volatility
koscom_mdcsrealtime_koscom_exture_v1_20.intrinsic_volatility = {}

-- Size: Intrinsic Volatility
koscom_mdcsrealtime_koscom_exture_v1_20.intrinsic_volatility.size = 5

-- Display: Intrinsic Volatility
koscom_mdcsrealtime_koscom_exture_v1_20.intrinsic_volatility.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.intrinsic_volatility.size):string(), 2)

  if text == nil then
    return "Intrinsic Volatility: "..tostring(value)
  end

  return "Intrinsic Volatility: "..text
end

-- Dissect: Intrinsic Volatility
koscom_mdcsrealtime_koscom_exture_v1_20.intrinsic_volatility.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.intrinsic_volatility.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.intrinsic_volatility, range, value, "Intrinsic Volatility: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Intrinsic Volatility is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.intrinsic_volatility.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.intrinsic_volatility, range, value, display)

  return offset + length, value
end

-- Investor Category
koscom_mdcsrealtime_koscom_exture_v1_20.investor_category = {}

-- Size: Investor Category
koscom_mdcsrealtime_koscom_exture_v1_20.investor_category.size = 4

-- Display: Investor Category
koscom_mdcsrealtime_koscom_exture_v1_20.investor_category.display = function(value)
  return "Investor Category: "..value
end

-- Dissect: Investor Category
koscom_mdcsrealtime_koscom_exture_v1_20.investor_category.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.investor_category.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.investor_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.investor_category, range, value, display)

  return offset + length, value
end

-- Isin
koscom_mdcsrealtime_koscom_exture_v1_20.isin = {}

-- Size: Isin
koscom_mdcsrealtime_koscom_exture_v1_20.isin.size = 12

-- Display: Isin
koscom_mdcsrealtime_koscom_exture_v1_20.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
koscom_mdcsrealtime_koscom_exture_v1_20.isin.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.isin, range, value, display)

  return offset + length, value
end

-- Isin Nullable
koscom_mdcsrealtime_koscom_exture_v1_20.isin_nullable = {}

-- Size: Isin Nullable
koscom_mdcsrealtime_koscom_exture_v1_20.isin_nullable.size = 12

-- Display: Isin Nullable
koscom_mdcsrealtime_koscom_exture_v1_20.isin_nullable.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Isin Nullable: No Value"
  end

  return "Isin Nullable: "..value
end

-- Dissect: Isin Nullable
koscom_mdcsrealtime_koscom_exture_v1_20.isin_nullable.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.isin_nullable.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.isin_nullable.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.isin_nullable, range, value, display)

  return offset + length, value
end

-- Issue Code
koscom_mdcsrealtime_koscom_exture_v1_20.issue_code = {}

-- Size: Issue Code
koscom_mdcsrealtime_koscom_exture_v1_20.issue_code.size = 12

-- Display: Issue Code
koscom_mdcsrealtime_koscom_exture_v1_20.issue_code.display = function(value)
  return "Issue Code: "..value
end

-- Dissect: Issue Code
koscom_mdcsrealtime_koscom_exture_v1_20.issue_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.issue_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.issue_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.issue_code, range, value, display)

  return offset + length, value
end

-- Low Price
koscom_mdcsrealtime_koscom_exture_v1_20.low_price = {}

-- Size: Low Price
koscom_mdcsrealtime_koscom_exture_v1_20.low_price.size = 9

-- Display: Low Price
koscom_mdcsrealtime_koscom_exture_v1_20.low_price.display = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
koscom_mdcsrealtime_koscom_exture_v1_20.low_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.low_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.low_price, range, value, "Low Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Low Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.low_price, range, value, display)

  return offset + length, value
end

-- Lower Limit Price After Action
koscom_mdcsrealtime_koscom_exture_v1_20.lower_limit_price_after_action = {}

-- Size: Lower Limit Price After Action
koscom_mdcsrealtime_koscom_exture_v1_20.lower_limit_price_after_action.size = 9

-- Display: Lower Limit Price After Action
koscom_mdcsrealtime_koscom_exture_v1_20.lower_limit_price_after_action.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Lower Limit Price After Action: No Value"
  end

  return "Lower Limit Price After Action: "..value
end

-- Dissect: Lower Limit Price After Action
koscom_mdcsrealtime_koscom_exture_v1_20.lower_limit_price_after_action.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.lower_limit_price_after_action.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.lower_limit_price_after_action, range, value, "Lower Limit Price After Action: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Lower Limit Price After Action is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.lower_limit_price_after_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.lower_limit_price_after_action, range, value, display)

  return offset + length, value
end

-- Lower Limit Price Before Action
koscom_mdcsrealtime_koscom_exture_v1_20.lower_limit_price_before_action = {}

-- Size: Lower Limit Price Before Action
koscom_mdcsrealtime_koscom_exture_v1_20.lower_limit_price_before_action.size = 9

-- Display: Lower Limit Price Before Action
koscom_mdcsrealtime_koscom_exture_v1_20.lower_limit_price_before_action.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Lower Limit Price Before Action: No Value"
  end

  return "Lower Limit Price Before Action: "..value
end

-- Dissect: Lower Limit Price Before Action
koscom_mdcsrealtime_koscom_exture_v1_20.lower_limit_price_before_action.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.lower_limit_price_before_action.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.lower_limit_price_before_action, range, value, "Lower Limit Price Before Action: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Lower Limit Price Before Action is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.lower_limit_price_before_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.lower_limit_price_before_action, range, value, display)

  return offset + length, value
end

-- Market Base Rate
koscom_mdcsrealtime_koscom_exture_v1_20.market_base_rate = {}

-- Size: Market Base Rate
koscom_mdcsrealtime_koscom_exture_v1_20.market_base_rate.size = 8

-- Display: Market Base Rate
koscom_mdcsrealtime_koscom_exture_v1_20.market_base_rate.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.market_base_rate.size):string(), 5)

  if text == nil then
    return "Market Base Rate: "..tostring(value)
  end

  return "Market Base Rate: "..text
end

-- Dissect: Market Base Rate
koscom_mdcsrealtime_koscom_exture_v1_20.market_base_rate.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.market_base_rate.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.market_base_rate, range, value, "Market Base Rate: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Market Base Rate is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100000

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.market_base_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.market_base_rate, range, value, display)

  return offset + length, value
end

-- Market Data Type
koscom_mdcsrealtime_koscom_exture_v1_20.market_data_type = {}

-- Size: Market Data Type
koscom_mdcsrealtime_koscom_exture_v1_20.market_data_type.size = 1

-- Display: Market Data Type
koscom_mdcsrealtime_koscom_exture_v1_20.market_data_type.display = function(value)
  return "Market Data Type: "..value
end

-- Dissect: Market Data Type
koscom_mdcsrealtime_koscom_exture_v1_20.market_data_type.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.market_data_type.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding)
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.market_data_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.market_data_type, range, value, display)

  return offset + length, value
end

-- Market Price Index
koscom_mdcsrealtime_koscom_exture_v1_20.market_price_index = {}

-- Size: Market Price Index
koscom_mdcsrealtime_koscom_exture_v1_20.market_price_index.size = 10

-- Display: Market Price Index
koscom_mdcsrealtime_koscom_exture_v1_20.market_price_index.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.market_price_index.size):string(), 4)

  if text == nil then
    return "Market Price Index: "..tostring(value)
  end

  return "Market Price Index: "..text
end

-- Dissect: Market Price Index
koscom_mdcsrealtime_koscom_exture_v1_20.market_price_index.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.market_price_index.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.market_price_index, range, value, "Market Price Index: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Market Price Index is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.market_price_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.market_price_index, range, value, display)

  return offset + length, value
end

-- Name Of Counterparty
koscom_mdcsrealtime_koscom_exture_v1_20.name_of_counterparty = {}

-- Size: Name Of Counterparty
koscom_mdcsrealtime_koscom_exture_v1_20.name_of_counterparty.size = 50

-- Display: Name Of Counterparty
koscom_mdcsrealtime_koscom_exture_v1_20.name_of_counterparty.display = function(value)
  return "Name Of Counterparty: "..value
end

-- Dissect: Name Of Counterparty
koscom_mdcsrealtime_koscom_exture_v1_20.name_of_counterparty.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.name_of_counterparty.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.name_of_counterparty.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.name_of_counterparty, range, value, display)

  return offset + length, value
end

-- Net Assets Amount
koscom_mdcsrealtime_koscom_exture_v1_20.net_assets_amount = {}

-- Size: Net Assets Amount
koscom_mdcsrealtime_koscom_exture_v1_20.net_assets_amount.size = 15

-- Display: Net Assets Amount
koscom_mdcsrealtime_koscom_exture_v1_20.net_assets_amount.display = function(value)
  return "Net Assets Amount: "..value
end

-- Dissect: Net Assets Amount
koscom_mdcsrealtime_koscom_exture_v1_20.net_assets_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.net_assets_amount.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.net_assets_amount, range, value, "Net Assets Amount: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Net Assets Amount is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.net_assets_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.net_assets_amount, range, value, display)

  return offset + length, value
end

-- Number Of Freefloating Etf Shares
koscom_mdcsrealtime_koscom_exture_v1_20.number_of_freefloating_etf_shares = {}

-- Size: Number Of Freefloating Etf Shares
koscom_mdcsrealtime_koscom_exture_v1_20.number_of_freefloating_etf_shares.size = 16

-- Display: Number Of Freefloating Etf Shares
koscom_mdcsrealtime_koscom_exture_v1_20.number_of_freefloating_etf_shares.display = function(value)
  return "Number Of Freefloating Etf Shares: "..value
end

-- Dissect: Number Of Freefloating Etf Shares
koscom_mdcsrealtime_koscom_exture_v1_20.number_of_freefloating_etf_shares.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.number_of_freefloating_etf_shares.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.number_of_freefloating_etf_shares, range, value, "Number Of Freefloating Etf Shares: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Number Of Freefloating Etf Shares is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.number_of_freefloating_etf_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.number_of_freefloating_etf_shares, range, value, display)

  return offset + length, value
end

-- Office Consignment Companys Registration Number
koscom_mdcsrealtime_koscom_exture_v1_20.office_consignment_companys_registration_number = {}

-- Size: Office Consignment Companys Registration Number
koscom_mdcsrealtime_koscom_exture_v1_20.office_consignment_companys_registration_number.size = 3

-- Display: Office Consignment Companys Registration Number
koscom_mdcsrealtime_koscom_exture_v1_20.office_consignment_companys_registration_number.display = function(value)
  return "Office Consignment Companys Registration Number: "..value
end

-- Dissect: Office Consignment Companys Registration Number
koscom_mdcsrealtime_koscom_exture_v1_20.office_consignment_companys_registration_number.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.office_consignment_companys_registration_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.office_consignment_companys_registration_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.office_consignment_companys_registration_number, range, value, display)

  return offset + length, value
end

-- Operator Abbreviated Name English
koscom_mdcsrealtime_koscom_exture_v1_20.operator_abbreviated_name_english = {}

-- Size: Operator Abbreviated Name English
koscom_mdcsrealtime_koscom_exture_v1_20.operator_abbreviated_name_english.size = 40

-- Display: Operator Abbreviated Name English
koscom_mdcsrealtime_koscom_exture_v1_20.operator_abbreviated_name_english.display = function(value)
  return "Operator Abbreviated Name English: "..value
end

-- Dissect: Operator Abbreviated Name English
koscom_mdcsrealtime_koscom_exture_v1_20.operator_abbreviated_name_english.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.operator_abbreviated_name_english.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.operator_abbreviated_name_english.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.operator_abbreviated_name_english, range, value, display)

  return offset + length, value
end

-- Operator Abbreviated Name Korean
koscom_mdcsrealtime_koscom_exture_v1_20.operator_abbreviated_name_korean = {}

-- Size: Operator Abbreviated Name Korean
koscom_mdcsrealtime_koscom_exture_v1_20.operator_abbreviated_name_korean.size = 50

-- Display: Operator Abbreviated Name Korean
koscom_mdcsrealtime_koscom_exture_v1_20.operator_abbreviated_name_korean.display = function(value)
  return "Operator Abbreviated Name Korean: "..value
end

-- Dissect: Operator Abbreviated Name Korean
koscom_mdcsrealtime_koscom_exture_v1_20.operator_abbreviated_name_korean.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.operator_abbreviated_name_korean.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.operator_abbreviated_name_korean.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.operator_abbreviated_name_korean, range, value, display)

  return offset + length, value
end

-- Operator Code
koscom_mdcsrealtime_koscom_exture_v1_20.operator_code = {}

-- Size: Operator Code
koscom_mdcsrealtime_koscom_exture_v1_20.operator_code.size = 6

-- Display: Operator Code
koscom_mdcsrealtime_koscom_exture_v1_20.operator_code.display = function(value)
  return "Operator Code: "..value
end

-- Dissect: Operator Code
koscom_mdcsrealtime_koscom_exture_v1_20.operator_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.operator_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.operator_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.operator_code, range, value, display)

  return offset + length, value
end

-- Original Price Compare Remaining Quantity Of Order
koscom_mdcsrealtime_koscom_exture_v1_20.original_price_compare_remaining_quantity_of_order = {}

-- Size: Original Price Compare Remaining Quantity Of Order
koscom_mdcsrealtime_koscom_exture_v1_20.original_price_compare_remaining_quantity_of_order.size = 10

-- Display: Original Price Compare Remaining Quantity Of Order
koscom_mdcsrealtime_koscom_exture_v1_20.original_price_compare_remaining_quantity_of_order.display = function(value)
  return "Original Price Compare Remaining Quantity Of Order: "..value
end

-- Dissect: Original Price Compare Remaining Quantity Of Order
koscom_mdcsrealtime_koscom_exture_v1_20.original_price_compare_remaining_quantity_of_order.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.original_price_compare_remaining_quantity_of_order.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.original_price_compare_remaining_quantity_of_order, range, value, "Original Price Compare Remaining Quantity Of Order: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Original Price Compare Remaining Quantity Of Order is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.original_price_compare_remaining_quantity_of_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.original_price_compare_remaining_quantity_of_order, range, value, display)

  return offset + length, value
end

-- Original Quote Number
koscom_mdcsrealtime_koscom_exture_v1_20.original_quote_number = {}

-- Size: Original Quote Number
koscom_mdcsrealtime_koscom_exture_v1_20.original_quote_number.size = 6

-- Display: Original Quote Number
koscom_mdcsrealtime_koscom_exture_v1_20.original_quote_number.display = function(value)
  return "Original Quote Number: "..value
end

-- Dissect: Original Quote Number
koscom_mdcsrealtime_koscom_exture_v1_20.original_quote_number.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.original_quote_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.original_quote_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.original_quote_number, range, value, display)

  return offset + length, value
end

-- Original Quote Price
koscom_mdcsrealtime_koscom_exture_v1_20.original_quote_price = {}

-- Size: Original Quote Price
koscom_mdcsrealtime_koscom_exture_v1_20.original_quote_price.size = 9

-- Display: Original Quote Price
koscom_mdcsrealtime_koscom_exture_v1_20.original_quote_price.display = function(value)
  return "Original Quote Price: "..value
end

-- Dissect: Original Quote Price
koscom_mdcsrealtime_koscom_exture_v1_20.original_quote_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.original_quote_price.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.original_quote_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.original_quote_price, range, value, display)

  return offset + length, value
end

-- Original Sequence Number
koscom_mdcsrealtime_koscom_exture_v1_20.original_sequence_number = {}

-- Size: Original Sequence Number
koscom_mdcsrealtime_koscom_exture_v1_20.original_sequence_number.size = 8

-- Display: Original Sequence Number
koscom_mdcsrealtime_koscom_exture_v1_20.original_sequence_number.display = function(value)
  return "Original Sequence Number: "..value
end

-- Dissect: Original Sequence Number
koscom_mdcsrealtime_koscom_exture_v1_20.original_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.original_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.original_sequence_number, range, value, "Original Sequence Number: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Original Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.original_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.original_sequence_number, range, value, display)

  return offset + length, value
end

-- Originally Registered Number
koscom_mdcsrealtime_koscom_exture_v1_20.originally_registered_number = {}

-- Size: Originally Registered Number
koscom_mdcsrealtime_koscom_exture_v1_20.originally_registered_number.size = 8

-- Display: Originally Registered Number
koscom_mdcsrealtime_koscom_exture_v1_20.originally_registered_number.display = function(value)
  return "Originally Registered Number: "..value
end

-- Dissect: Originally Registered Number
koscom_mdcsrealtime_koscom_exture_v1_20.originally_registered_number.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.originally_registered_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.originally_registered_number, range, value, "Originally Registered Number: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Originally Registered Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.originally_registered_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.originally_registered_number, range, value, display)

  return offset + length, value
end

-- Otc Derivatives Type
koscom_mdcsrealtime_koscom_exture_v1_20.otc_derivatives_type = {}

-- Size: Otc Derivatives Type
koscom_mdcsrealtime_koscom_exture_v1_20.otc_derivatives_type.size = 1

-- Display: Otc Derivatives Type
koscom_mdcsrealtime_koscom_exture_v1_20.otc_derivatives_type.display = function(value)
  return "Otc Derivatives Type: "..value
end

-- Dissect: Otc Derivatives Type
koscom_mdcsrealtime_koscom_exture_v1_20.otc_derivatives_type.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.otc_derivatives_type.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding)
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.otc_derivatives_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.otc_derivatives_type, range, value, display)

  return offset + length, value
end

-- Par Value Amount Cash Amount Converted Amount Krw
koscom_mdcsrealtime_koscom_exture_v1_20.par_value_amount_cash_amount_converted_amount_krw = {}

-- Size: Par Value Amount Cash Amount Converted Amount Krw
koscom_mdcsrealtime_koscom_exture_v1_20.par_value_amount_cash_amount_converted_amount_krw.size = 18

-- Display: Par Value Amount Cash Amount Converted Amount Krw
koscom_mdcsrealtime_koscom_exture_v1_20.par_value_amount_cash_amount_converted_amount_krw.display = function(value)
  return "Par Value Amount Cash Amount Converted Amount Krw: "..value
end

-- Dissect: Par Value Amount Cash Amount Converted Amount Krw
koscom_mdcsrealtime_koscom_exture_v1_20.par_value_amount_cash_amount_converted_amount_krw.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.par_value_amount_cash_amount_converted_amount_krw.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.par_value_amount_cash_amount_converted_amount_krw, range, value, "Par Value Amount Cash Amount Converted Amount Krw: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Par Value Amount Cash Amount Converted Amount Krw is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.par_value_amount_cash_amount_converted_amount_krw.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.par_value_amount_cash_amount_converted_amount_krw, range, value, display)

  return offset + length, value
end

-- Prerequisite Cost
koscom_mdcsrealtime_koscom_exture_v1_20.prerequisite_cost = {}

-- Size: Prerequisite Cost
koscom_mdcsrealtime_koscom_exture_v1_20.prerequisite_cost.size = 10

-- Display: Prerequisite Cost
koscom_mdcsrealtime_koscom_exture_v1_20.prerequisite_cost.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.prerequisite_cost.size):string(), 2)

  if text == nil then
    return "Prerequisite Cost: "..tostring(value)
  end

  return "Prerequisite Cost: "..text
end

-- Dissect: Prerequisite Cost
koscom_mdcsrealtime_koscom_exture_v1_20.prerequisite_cost.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.prerequisite_cost.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.prerequisite_cost, range, value, "Prerequisite Cost: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Prerequisite Cost is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.prerequisite_cost.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.prerequisite_cost, range, value, display)

  return offset + length, value
end

-- Pretax Unit Price
koscom_mdcsrealtime_koscom_exture_v1_20.pretax_unit_price = {}

-- Size: Pretax Unit Price
koscom_mdcsrealtime_koscom_exture_v1_20.pretax_unit_price.size = 8

-- Display: Pretax Unit Price
koscom_mdcsrealtime_koscom_exture_v1_20.pretax_unit_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.pretax_unit_price.size):string(), 2)

  if text == nil then
    return "Pretax Unit Price: "..tostring(value)
  end

  return "Pretax Unit Price: "..text
end

-- Dissect: Pretax Unit Price
koscom_mdcsrealtime_koscom_exture_v1_20.pretax_unit_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.pretax_unit_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.pretax_unit_price, range, value, "Pretax Unit Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Pretax Unit Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.pretax_unit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.pretax_unit_price, range, value, display)

  return offset + length, value
end

-- Pretax Yield
koscom_mdcsrealtime_koscom_exture_v1_20.pretax_yield = {}

-- Size: Pretax Yield
koscom_mdcsrealtime_koscom_exture_v1_20.pretax_yield.size = 8

-- Display: Pretax Yield
koscom_mdcsrealtime_koscom_exture_v1_20.pretax_yield.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.pretax_yield.size):string(), 5)

  if text == nil then
    return "Pretax Yield: "..tostring(value)
  end

  return "Pretax Yield: "..text
end

-- Dissect: Pretax Yield
koscom_mdcsrealtime_koscom_exture_v1_20.pretax_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.pretax_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.pretax_yield, range, value, "Pretax Yield: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Pretax Yield is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100000

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.pretax_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.pretax_yield, range, value, display)

  return offset + length, value
end

-- Previous Days Cash Dividend Amount
koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_cash_dividend_amount = {}

-- Size: Previous Days Cash Dividend Amount
koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_cash_dividend_amount.size = 12

-- Display: Previous Days Cash Dividend Amount
koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_cash_dividend_amount.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_cash_dividend_amount.size):string(), 2)

  if text == nil then
    return "Previous Days Cash Dividend Amount: "..tostring(value)
  end

  return "Previous Days Cash Dividend Amount: "..text
end

-- Dissect: Previous Days Cash Dividend Amount
koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_cash_dividend_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_cash_dividend_amount.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.previous_days_cash_dividend_amount, range, value, "Previous Days Cash Dividend Amount: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Previous Days Cash Dividend Amount is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_cash_dividend_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.previous_days_cash_dividend_amount, range, value, display)

  return offset + length, value
end

-- Previous Days Iv
koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_iv = {}

-- Size: Previous Days Iv
koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_iv.size = 9

-- Display: Previous Days Iv
koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_iv.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_iv.size):string(), 2)

  if text == nil then
    return "Previous Days Iv: "..tostring(value)
  end

  return "Previous Days Iv: "..text
end

-- Dissect: Previous Days Iv
koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_iv.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_iv.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.previous_days_iv, range, value, "Previous Days Iv: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Previous Days Iv is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_iv.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.previous_days_iv, range, value, display)

  return offset + length, value
end

-- Previous Days Nontaxable Base Price Before Dividend For Overseas Stocks
koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_nontaxable_base_price_before_dividend_for_overseas_stocks = {}

-- Size: Previous Days Nontaxable Base Price Before Dividend For Overseas Stocks
koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_nontaxable_base_price_before_dividend_for_overseas_stocks.size = 9

-- Display: Previous Days Nontaxable Base Price Before Dividend For Overseas Stocks
koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_nontaxable_base_price_before_dividend_for_overseas_stocks.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_nontaxable_base_price_before_dividend_for_overseas_stocks.size):string(), 2)

  if text == nil then
    return "Previous Days Nontaxable Base Price Before Dividend For Overseas Stocks: "..tostring(value)
  end

  return "Previous Days Nontaxable Base Price Before Dividend For Overseas Stocks: "..text
end

-- Dissect: Previous Days Nontaxable Base Price Before Dividend For Overseas Stocks
koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_nontaxable_base_price_before_dividend_for_overseas_stocks.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_nontaxable_base_price_before_dividend_for_overseas_stocks.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.previous_days_nontaxable_base_price_before_dividend_for_overseas_stocks, range, value, "Previous Days Nontaxable Base Price Before Dividend For Overseas Stocks: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Previous Days Nontaxable Base Price Before Dividend For Overseas Stocks is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_nontaxable_base_price_before_dividend_for_overseas_stocks.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.previous_days_nontaxable_base_price_before_dividend_for_overseas_stocks, range, value, display)

  return offset + length, value
end

-- Previous Days Nontaxable Base Price For Overseas Stocks
koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_nontaxable_base_price_for_overseas_stocks = {}

-- Size: Previous Days Nontaxable Base Price For Overseas Stocks
koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_nontaxable_base_price_for_overseas_stocks.size = 9

-- Display: Previous Days Nontaxable Base Price For Overseas Stocks
koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_nontaxable_base_price_for_overseas_stocks.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_nontaxable_base_price_for_overseas_stocks.size):string(), 2)

  if text == nil then
    return "Previous Days Nontaxable Base Price For Overseas Stocks: "..tostring(value)
  end

  return "Previous Days Nontaxable Base Price For Overseas Stocks: "..text
end

-- Dissect: Previous Days Nontaxable Base Price For Overseas Stocks
koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_nontaxable_base_price_for_overseas_stocks.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_nontaxable_base_price_for_overseas_stocks.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.previous_days_nontaxable_base_price_for_overseas_stocks, range, value, "Previous Days Nontaxable Base Price For Overseas Stocks: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Previous Days Nontaxable Base Price For Overseas Stocks is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_nontaxable_base_price_for_overseas_stocks.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.previous_days_nontaxable_base_price_for_overseas_stocks, range, value, display)

  return offset + length, value
end

-- Previous Days Tax Base Nav
koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_tax_base_nav = {}

-- Size: Previous Days Tax Base Nav
koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_tax_base_nav.size = 9

-- Display: Previous Days Tax Base Nav
koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_tax_base_nav.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_tax_base_nav.size):string(), 2)

  if text == nil then
    return "Previous Days Tax Base Nav: "..tostring(value)
  end

  return "Previous Days Tax Base Nav: "..text
end

-- Dissect: Previous Days Tax Base Nav
koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_tax_base_nav.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_tax_base_nav.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.previous_days_tax_base_nav, range, value, "Previous Days Tax Base Nav: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Previous Days Tax Base Nav is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_tax_base_nav.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.previous_days_tax_base_nav, range, value, display)

  return offset + length, value
end

-- Previous Days Tax Base Nav Before Dividend
koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_tax_base_nav_before_dividend = {}

-- Size: Previous Days Tax Base Nav Before Dividend
koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_tax_base_nav_before_dividend.size = 9

-- Display: Previous Days Tax Base Nav Before Dividend
koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_tax_base_nav_before_dividend.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_tax_base_nav_before_dividend.size):string(), 2)

  if text == nil then
    return "Previous Days Tax Base Nav Before Dividend: "..tostring(value)
  end

  return "Previous Days Tax Base Nav Before Dividend: "..text
end

-- Dissect: Previous Days Tax Base Nav Before Dividend
koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_tax_base_nav_before_dividend.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_tax_base_nav_before_dividend.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.previous_days_tax_base_nav_before_dividend, range, value, "Previous Days Tax Base Nav Before Dividend: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Previous Days Tax Base Nav Before Dividend is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_tax_base_nav_before_dividend.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.previous_days_tax_base_nav_before_dividend, range, value, display)

  return offset + length, value
end

-- Previous Isin Of Replacement
koscom_mdcsrealtime_koscom_exture_v1_20.previous_isin_of_replacement = {}

-- Size: Previous Isin Of Replacement
koscom_mdcsrealtime_koscom_exture_v1_20.previous_isin_of_replacement.size = 8

-- Display: Previous Isin Of Replacement
koscom_mdcsrealtime_koscom_exture_v1_20.previous_isin_of_replacement.display = function(value)
  return "Previous Isin Of Replacement: "..value
end

-- Dissect: Previous Isin Of Replacement
koscom_mdcsrealtime_koscom_exture_v1_20.previous_isin_of_replacement.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.previous_isin_of_replacement.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.previous_isin_of_replacement, range, value, "Previous Isin Of Replacement: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Previous Isin Of Replacement is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.previous_isin_of_replacement.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.previous_isin_of_replacement, range, value, display)

  return offset + length, value
end

-- Previous Nav
koscom_mdcsrealtime_koscom_exture_v1_20.previous_nav = {}

-- Size: Previous Nav
koscom_mdcsrealtime_koscom_exture_v1_20.previous_nav.size = 9

-- Display: Previous Nav
koscom_mdcsrealtime_koscom_exture_v1_20.previous_nav.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.previous_nav.size):string(), 2)

  if text == nil then
    return "Previous Nav: "..tostring(value)
  end

  return "Previous Nav: "..text
end

-- Dissect: Previous Nav
koscom_mdcsrealtime_koscom_exture_v1_20.previous_nav.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.previous_nav.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.previous_nav, range, value, "Previous Nav: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Previous Nav is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.previous_nav.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.previous_nav, range, value, display)

  return offset + length, value
end

-- Price
koscom_mdcsrealtime_koscom_exture_v1_20.price = {}

-- Size: Price
koscom_mdcsrealtime_koscom_exture_v1_20.price.size = 9

-- Display: Price
koscom_mdcsrealtime_koscom_exture_v1_20.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
koscom_mdcsrealtime_koscom_exture_v1_20.price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.price, range, value, "Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.price, range, value, display)

  return offset + length, value
end

-- Price Compare Remaining Quantity Of Order
koscom_mdcsrealtime_koscom_exture_v1_20.price_compare_remaining_quantity_of_order = {}

-- Size: Price Compare Remaining Quantity Of Order
koscom_mdcsrealtime_koscom_exture_v1_20.price_compare_remaining_quantity_of_order.size = 10

-- Display: Price Compare Remaining Quantity Of Order
koscom_mdcsrealtime_koscom_exture_v1_20.price_compare_remaining_quantity_of_order.display = function(value)
  return "Price Compare Remaining Quantity Of Order: "..value
end

-- Dissect: Price Compare Remaining Quantity Of Order
koscom_mdcsrealtime_koscom_exture_v1_20.price_compare_remaining_quantity_of_order.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.price_compare_remaining_quantity_of_order.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.price_compare_remaining_quantity_of_order, range, value, "Price Compare Remaining Quantity Of Order: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Price Compare Remaining Quantity Of Order is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.price_compare_remaining_quantity_of_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.price_compare_remaining_quantity_of_order, range, value, display)

  return offset + length, value
end

-- Price Quotes Trading
koscom_mdcsrealtime_koscom_exture_v1_20.price_quotes_trading = {}

-- Size: Price Quotes Trading
koscom_mdcsrealtime_koscom_exture_v1_20.price_quotes_trading.size = 8

-- Display: Price Quotes Trading
koscom_mdcsrealtime_koscom_exture_v1_20.price_quotes_trading.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.price_quotes_trading.size):string(), 3)

  if text == nil then
    return "Price Quotes Trading: "..tostring(value)
  end

  return "Price Quotes Trading: "..text
end

-- Dissect: Price Quotes Trading
koscom_mdcsrealtime_koscom_exture_v1_20.price_quotes_trading.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.price_quotes_trading.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.price_quotes_trading, range, value, "Price Quotes Trading: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Price Quotes Trading is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.price_quotes_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.price_quotes_trading, range, value, display)

  return offset + length, value
end

-- Process Category
koscom_mdcsrealtime_koscom_exture_v1_20.process_category = {}

-- Size: Process Category
koscom_mdcsrealtime_koscom_exture_v1_20.process_category.size = 1

-- Display: Process Category
koscom_mdcsrealtime_koscom_exture_v1_20.process_category.display = function(value)
  return "Process Category: "..value
end

-- Dissect: Process Category
koscom_mdcsrealtime_koscom_exture_v1_20.process_category.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.process_category.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding)
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.process_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.process_category, range, value, display)

  return offset + length, value
end

-- Process Type
koscom_mdcsrealtime_koscom_exture_v1_20.process_type = {}

-- Size: Process Type
koscom_mdcsrealtime_koscom_exture_v1_20.process_type.size = 1

-- Display: Process Type
koscom_mdcsrealtime_koscom_exture_v1_20.process_type.labels = {
  ["1"] = "Process Type: Normal (1)",
  ["2"] = "Process Type: Correction (2)",
  ["3"] = "Process Type: Cancellation (3)",
}

koscom_mdcsrealtime_koscom_exture_v1_20.process_type.display = function(value)
  return koscom_mdcsrealtime_koscom_exture_v1_20.process_type.labels[value] or "Process Type: Unknown("..value..")"
end

-- Dissect: Process Type
koscom_mdcsrealtime_koscom_exture_v1_20.process_type.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.process_type.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding)
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.process_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.process_type, range, value, display)

  return offset + length, value
end

-- Profit Distribution Basis Date
koscom_mdcsrealtime_koscom_exture_v1_20.profit_distribution_basis_date = {}

-- Size: Profit Distribution Basis Date
koscom_mdcsrealtime_koscom_exture_v1_20.profit_distribution_basis_date.size = 8

-- Display: Profit Distribution Basis Date
koscom_mdcsrealtime_koscom_exture_v1_20.profit_distribution_basis_date.display = function(value)
  if #value < 8 then
    return "Profit Distribution Basis Date: "..value
  end

  return "Profit Distribution Basis Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Profit Distribution Basis Date
koscom_mdcsrealtime_koscom_exture_v1_20.profit_distribution_basis_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.profit_distribution_basis_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.profit_distribution_basis_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.profit_distribution_basis_date, range, value, display)

  return offset + length, value
end

-- Profit Rate Quotes Trading
koscom_mdcsrealtime_koscom_exture_v1_20.profit_rate_quotes_trading = {}

-- Size: Profit Rate Quotes Trading
koscom_mdcsrealtime_koscom_exture_v1_20.profit_rate_quotes_trading.size = 8

-- Display: Profit Rate Quotes Trading
koscom_mdcsrealtime_koscom_exture_v1_20.profit_rate_quotes_trading.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.profit_rate_quotes_trading.size):string(), 5)

  if text == nil then
    return "Profit Rate Quotes Trading: "..tostring(value)
  end

  return "Profit Rate Quotes Trading: "..text
end

-- Dissect: Profit Rate Quotes Trading
koscom_mdcsrealtime_koscom_exture_v1_20.profit_rate_quotes_trading.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.profit_rate_quotes_trading.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.profit_rate_quotes_trading, range, value, "Profit Rate Quotes Trading: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Profit Rate Quotes Trading is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100000

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.profit_rate_quotes_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.profit_rate_quotes_trading, range, value, display)

  return offset + length, value
end

-- Quantity
koscom_mdcsrealtime_koscom_exture_v1_20.quantity = {}

-- Size: Quantity
koscom_mdcsrealtime_koscom_exture_v1_20.quantity.size = 10

-- Display: Quantity
koscom_mdcsrealtime_koscom_exture_v1_20.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
koscom_mdcsrealtime_koscom_exture_v1_20.quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.quantity.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.quantity, range, value, "Quantity: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Quantity is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.quantity, range, value, display)

  return offset + length, value
end

-- Quotation Category
koscom_mdcsrealtime_koscom_exture_v1_20.quotation_category = {}

-- Size: Quotation Category
koscom_mdcsrealtime_koscom_exture_v1_20.quotation_category.size = 1

-- Display: Quotation Category
koscom_mdcsrealtime_koscom_exture_v1_20.quotation_category.labels = {
  ["0"] = "Quotation Category: Weighted Average Price (0)",
  ["1"] = "Quotation Category: Quotation (1)",
  ["2"] = "Quotation Category: No Trade (2)",
}

koscom_mdcsrealtime_koscom_exture_v1_20.quotation_category.display = function(value)
  return koscom_mdcsrealtime_koscom_exture_v1_20.quotation_category.labels[value] or "Quotation Category: Unknown("..value..")"
end

-- Dissect: Quotation Category
koscom_mdcsrealtime_koscom_exture_v1_20.quotation_category.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.quotation_category.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding)
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.quotation_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.quotation_category, range, value, display)

  return offset + length, value
end

-- Quote Number
koscom_mdcsrealtime_koscom_exture_v1_20.quote_number = {}

-- Size: Quote Number
koscom_mdcsrealtime_koscom_exture_v1_20.quote_number.size = 6

-- Display: Quote Number
koscom_mdcsrealtime_koscom_exture_v1_20.quote_number.display = function(value)
  return "Quote Number: "..value
end

-- Dissect: Quote Number
koscom_mdcsrealtime_koscom_exture_v1_20.quote_number.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.quote_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.quote_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.quote_number, range, value, display)

  return offset + length, value
end

-- Quotes Amount
koscom_mdcsrealtime_koscom_exture_v1_20.quotes_amount = {}

-- Size: Quotes Amount
koscom_mdcsrealtime_koscom_exture_v1_20.quotes_amount.size = 16

-- Display: Quotes Amount
koscom_mdcsrealtime_koscom_exture_v1_20.quotes_amount.display = function(value)
  return "Quotes Amount: "..value
end

-- Dissect: Quotes Amount
koscom_mdcsrealtime_koscom_exture_v1_20.quotes_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.quotes_amount.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.quotes_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.quotes_amount, range, value, display)

  return offset + length, value
end

-- Quotes Offer Time
koscom_mdcsrealtime_koscom_exture_v1_20.quotes_offer_time = {}

-- Size: Quotes Offer Time
koscom_mdcsrealtime_koscom_exture_v1_20.quotes_offer_time.size = 6

-- Display: Quotes Offer Time
koscom_mdcsrealtime_koscom_exture_v1_20.quotes_offer_time.display = function(value)
  if #value < 6 then
    return "Quotes Offer Time: "..value
  end

  return "Quotes Offer Time: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Quotes Offer Time
koscom_mdcsrealtime_koscom_exture_v1_20.quotes_offer_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.quotes_offer_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding)
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.quotes_offer_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.quotes_offer_time, range, value, display)

  return offset + length, value
end

-- Reason
koscom_mdcsrealtime_koscom_exture_v1_20.reason = {}

-- Size: Reason
koscom_mdcsrealtime_koscom_exture_v1_20.reason.size = 2

-- Display: Reason
koscom_mdcsrealtime_koscom_exture_v1_20.reason.display = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
koscom_mdcsrealtime_koscom_exture_v1_20.reason.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.reason, range, value, display)

  return offset + length, value
end

-- Registered Number
koscom_mdcsrealtime_koscom_exture_v1_20.registered_number = {}

-- Size: Registered Number
koscom_mdcsrealtime_koscom_exture_v1_20.registered_number.size = 8

-- Display: Registered Number
koscom_mdcsrealtime_koscom_exture_v1_20.registered_number.display = function(value)
  return "Registered Number: "..value
end

-- Dissect: Registered Number
koscom_mdcsrealtime_koscom_exture_v1_20.registered_number.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.registered_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.registered_number, range, value, "Registered Number: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Registered Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.registered_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.registered_number, range, value, display)

  return offset + length, value
end

-- Registered Time
koscom_mdcsrealtime_koscom_exture_v1_20.registered_time = {}

-- Size: Registered Time
koscom_mdcsrealtime_koscom_exture_v1_20.registered_time.size = 6

-- Display: Registered Time
koscom_mdcsrealtime_koscom_exture_v1_20.registered_time.display = function(value)
  if #value < 6 then
    return "Registered Time: "..value
  end

  return "Registered Time: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Registered Time
koscom_mdcsrealtime_koscom_exture_v1_20.registered_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.registered_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding)
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.registered_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.registered_time, range, value, display)

  return offset + length, value
end

-- Remaining Quantity Of Ask Best Order
koscom_mdcsrealtime_koscom_exture_v1_20.remaining_quantity_of_ask_best_order = {}

-- Size: Remaining Quantity Of Ask Best Order
koscom_mdcsrealtime_koscom_exture_v1_20.remaining_quantity_of_ask_best_order.size = 10

-- Display: Remaining Quantity Of Ask Best Order
koscom_mdcsrealtime_koscom_exture_v1_20.remaining_quantity_of_ask_best_order.display = function(value)
  return "Remaining Quantity Of Ask Best Order: "..value
end

-- Dissect: Remaining Quantity Of Ask Best Order
koscom_mdcsrealtime_koscom_exture_v1_20.remaining_quantity_of_ask_best_order.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.remaining_quantity_of_ask_best_order.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.remaining_quantity_of_ask_best_order, range, value, "Remaining Quantity Of Ask Best Order: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Remaining Quantity Of Ask Best Order is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.remaining_quantity_of_ask_best_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.remaining_quantity_of_ask_best_order, range, value, display)

  return offset + length, value
end

-- Remaining Quantity Of Best Ask Order
koscom_mdcsrealtime_koscom_exture_v1_20.remaining_quantity_of_best_ask_order = {}

-- Size: Remaining Quantity Of Best Ask Order
koscom_mdcsrealtime_koscom_exture_v1_20.remaining_quantity_of_best_ask_order.size = 10

-- Display: Remaining Quantity Of Best Ask Order
koscom_mdcsrealtime_koscom_exture_v1_20.remaining_quantity_of_best_ask_order.display = function(value)
  return "Remaining Quantity Of Best Ask Order: "..value
end

-- Dissect: Remaining Quantity Of Best Ask Order
koscom_mdcsrealtime_koscom_exture_v1_20.remaining_quantity_of_best_ask_order.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.remaining_quantity_of_best_ask_order.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.remaining_quantity_of_best_ask_order, range, value, "Remaining Quantity Of Best Ask Order: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Remaining Quantity Of Best Ask Order is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.remaining_quantity_of_best_ask_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.remaining_quantity_of_best_ask_order, range, value, display)

  return offset + length, value
end

-- Remaining Quantity Of Best Bid Order
koscom_mdcsrealtime_koscom_exture_v1_20.remaining_quantity_of_best_bid_order = {}

-- Size: Remaining Quantity Of Best Bid Order
koscom_mdcsrealtime_koscom_exture_v1_20.remaining_quantity_of_best_bid_order.size = 10

-- Display: Remaining Quantity Of Best Bid Order
koscom_mdcsrealtime_koscom_exture_v1_20.remaining_quantity_of_best_bid_order.display = function(value)
  return "Remaining Quantity Of Best Bid Order: "..value
end

-- Dissect: Remaining Quantity Of Best Bid Order
koscom_mdcsrealtime_koscom_exture_v1_20.remaining_quantity_of_best_bid_order.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.remaining_quantity_of_best_bid_order.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.remaining_quantity_of_best_bid_order, range, value, "Remaining Quantity Of Best Bid Order: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Remaining Quantity Of Best Bid Order is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.remaining_quantity_of_best_bid_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.remaining_quantity_of_best_bid_order, range, value, display)

  return offset + length, value
end

-- Remaining Quantity Of Bid Best Order
koscom_mdcsrealtime_koscom_exture_v1_20.remaining_quantity_of_bid_best_order = {}

-- Size: Remaining Quantity Of Bid Best Order
koscom_mdcsrealtime_koscom_exture_v1_20.remaining_quantity_of_bid_best_order.size = 10

-- Display: Remaining Quantity Of Bid Best Order
koscom_mdcsrealtime_koscom_exture_v1_20.remaining_quantity_of_bid_best_order.display = function(value)
  return "Remaining Quantity Of Bid Best Order: "..value
end

-- Dissect: Remaining Quantity Of Bid Best Order
koscom_mdcsrealtime_koscom_exture_v1_20.remaining_quantity_of_bid_best_order.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.remaining_quantity_of_bid_best_order.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.remaining_quantity_of_bid_best_order, range, value, "Remaining Quantity Of Bid Best Order: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Remaining Quantity Of Bid Best Order is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.remaining_quantity_of_bid_best_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.remaining_quantity_of_bid_best_order, range, value, display)

  return offset + length, value
end

-- Replacement Type
koscom_mdcsrealtime_koscom_exture_v1_20.replacement_type = {}

-- Size: Replacement Type
koscom_mdcsrealtime_koscom_exture_v1_20.replacement_type.size = 1

-- Display: Replacement Type
koscom_mdcsrealtime_koscom_exture_v1_20.replacement_type.display = function(value)
  return "Replacement Type: "..value
end

-- Dissect: Replacement Type
koscom_mdcsrealtime_koscom_exture_v1_20.replacement_type.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.replacement_type.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding)
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.replacement_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.replacement_type, range, value, display)

  return offset + length, value
end

-- Risk Appraisal Amount
koscom_mdcsrealtime_koscom_exture_v1_20.risk_appraisal_amount = {}

-- Size: Risk Appraisal Amount
koscom_mdcsrealtime_koscom_exture_v1_20.risk_appraisal_amount.size = 15

-- Display: Risk Appraisal Amount
koscom_mdcsrealtime_koscom_exture_v1_20.risk_appraisal_amount.display = function(value)
  return "Risk Appraisal Amount: "..value
end

-- Dissect: Risk Appraisal Amount
koscom_mdcsrealtime_koscom_exture_v1_20.risk_appraisal_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.risk_appraisal_amount.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.risk_appraisal_amount, range, value, "Risk Appraisal Amount: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Risk Appraisal Amount is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.risk_appraisal_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.risk_appraisal_amount, range, value, display)

  return offset + length, value
end

-- Risk Appraisal Amount Rate
koscom_mdcsrealtime_koscom_exture_v1_20.risk_appraisal_amount_rate = {}

-- Size: Risk Appraisal Amount Rate
koscom_mdcsrealtime_koscom_exture_v1_20.risk_appraisal_amount_rate.size = 7

-- Display: Risk Appraisal Amount Rate
koscom_mdcsrealtime_koscom_exture_v1_20.risk_appraisal_amount_rate.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.risk_appraisal_amount_rate.size):string(), 2)

  if text == nil then
    return "Risk Appraisal Amount Rate: "..tostring(value)
  end

  return "Risk Appraisal Amount Rate: "..text
end

-- Dissect: Risk Appraisal Amount Rate
koscom_mdcsrealtime_koscom_exture_v1_20.risk_appraisal_amount_rate.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.risk_appraisal_amount_rate.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.risk_appraisal_amount_rate, range, value, "Risk Appraisal Amount Rate: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Risk Appraisal Amount Rate is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.risk_appraisal_amount_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.risk_appraisal_amount_rate, range, value, display)

  return offset + length, value
end

-- Securities Company Number
koscom_mdcsrealtime_koscom_exture_v1_20.securities_company_number = {}

-- Size: Securities Company Number
koscom_mdcsrealtime_koscom_exture_v1_20.securities_company_number.size = 3

-- Display: Securities Company Number
koscom_mdcsrealtime_koscom_exture_v1_20.securities_company_number.display = function(value)
  return "Securities Company Number: "..value
end

-- Dissect: Securities Company Number
koscom_mdcsrealtime_koscom_exture_v1_20.securities_company_number.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.securities_company_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.securities_company_number, range, value, "Securities Company Number: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Securities Company Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.securities_company_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.securities_company_number, range, value, display)

  return offset + length, value
end

-- Security Appraisal Amount
koscom_mdcsrealtime_koscom_exture_v1_20.security_appraisal_amount = {}

-- Size: Security Appraisal Amount
koscom_mdcsrealtime_koscom_exture_v1_20.security_appraisal_amount.size = 15

-- Display: Security Appraisal Amount
koscom_mdcsrealtime_koscom_exture_v1_20.security_appraisal_amount.display = function(value)
  return "Security Appraisal Amount: "..value
end

-- Dissect: Security Appraisal Amount
koscom_mdcsrealtime_koscom_exture_v1_20.security_appraisal_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.security_appraisal_amount.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.security_appraisal_amount, range, value, "Security Appraisal Amount: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Security Appraisal Amount is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.security_appraisal_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.security_appraisal_amount, range, value, display)

  return offset + length, value
end

-- Security Rate
koscom_mdcsrealtime_koscom_exture_v1_20.security_rate = {}

-- Size: Security Rate
koscom_mdcsrealtime_koscom_exture_v1_20.security_rate.size = 7

-- Display: Security Rate
koscom_mdcsrealtime_koscom_exture_v1_20.security_rate.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.security_rate.size):string(), 2)

  if text == nil then
    return "Security Rate: "..tostring(value)
  end

  return "Security Rate: "..text
end

-- Dissect: Security Rate
koscom_mdcsrealtime_koscom_exture_v1_20.security_rate.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.security_rate.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.security_rate, range, value, "Security Rate: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Security Rate is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.security_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.security_rate, range, value, display)

  return offset + length, value
end

-- Sensitivity Delta
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_delta = {}

-- Size: Sensitivity Delta
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_delta.size = 7

-- Display: Sensitivity Delta
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_delta.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_delta.size):string(), 6)

  if text == nil then
    return "Sensitivity Delta: "..tostring(value)
  end

  return "Sensitivity Delta: "..text
end

-- Dissect: Sensitivity Delta
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_delta.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_delta.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.sensitivity_delta, range, value, "Sensitivity Delta: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Sensitivity Delta is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000000

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_delta.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.sensitivity_delta, range, value, display)

  return offset + length, value
end

-- Sensitivity Delta Sign
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_delta_sign = {}

-- Size: Sensitivity Delta Sign
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_delta_sign.size = 1

-- Display: Sensitivity Delta Sign
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_delta_sign.display = function(value)
  return "Sensitivity Delta Sign: "..value
end

-- Dissect: Sensitivity Delta Sign
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_delta_sign.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_delta_sign.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding)
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_delta_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.sensitivity_delta_sign, range, value, display)

  return offset + length, value
end

-- Sensitivity Gamma
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_gamma = {}

-- Size: Sensitivity Gamma
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_gamma.size = 7

-- Display: Sensitivity Gamma
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_gamma.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_gamma.size):string(), 6)

  if text == nil then
    return "Sensitivity Gamma: "..tostring(value)
  end

  return "Sensitivity Gamma: "..text
end

-- Dissect: Sensitivity Gamma
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_gamma.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_gamma.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.sensitivity_gamma, range, value, "Sensitivity Gamma: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Sensitivity Gamma is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000000

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_gamma.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.sensitivity_gamma, range, value, display)

  return offset + length, value
end

-- Sensitivity Gamma Sign
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_gamma_sign = {}

-- Size: Sensitivity Gamma Sign
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_gamma_sign.size = 1

-- Display: Sensitivity Gamma Sign
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_gamma_sign.display = function(value)
  return "Sensitivity Gamma Sign: "..value
end

-- Dissect: Sensitivity Gamma Sign
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_gamma_sign.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_gamma_sign.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding)
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_gamma_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.sensitivity_gamma_sign, range, value, display)

  return offset + length, value
end

-- Sensitivity Rho
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_rho = {}

-- Size: Sensitivity Rho
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_rho.size = 12

-- Display: Sensitivity Rho
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_rho.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_rho.size):string(), 6)

  if text == nil then
    return "Sensitivity Rho: "..tostring(value)
  end

  return "Sensitivity Rho: "..text
end

-- Dissect: Sensitivity Rho
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_rho.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_rho.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.sensitivity_rho, range, value, "Sensitivity Rho: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Sensitivity Rho is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000000

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_rho.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.sensitivity_rho, range, value, display)

  return offset + length, value
end

-- Sensitivity Rho Sign
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_rho_sign = {}

-- Size: Sensitivity Rho Sign
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_rho_sign.size = 1

-- Display: Sensitivity Rho Sign
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_rho_sign.display = function(value)
  return "Sensitivity Rho Sign: "..value
end

-- Dissect: Sensitivity Rho Sign
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_rho_sign.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_rho_sign.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding)
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_rho_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.sensitivity_rho_sign, range, value, display)

  return offset + length, value
end

-- Sensitivity Theta
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_theta = {}

-- Size: Sensitivity Theta
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_theta.size = 12

-- Display: Sensitivity Theta
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_theta.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_theta.size):string(), 6)

  if text == nil then
    return "Sensitivity Theta: "..tostring(value)
  end

  return "Sensitivity Theta: "..text
end

-- Dissect: Sensitivity Theta
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_theta.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_theta.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.sensitivity_theta, range, value, "Sensitivity Theta: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Sensitivity Theta is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000000

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_theta.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.sensitivity_theta, range, value, display)

  return offset + length, value
end

-- Sensitivity Theta Sign
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_theta_sign = {}

-- Size: Sensitivity Theta Sign
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_theta_sign.size = 1

-- Display: Sensitivity Theta Sign
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_theta_sign.display = function(value)
  return "Sensitivity Theta Sign: "..value
end

-- Dissect: Sensitivity Theta Sign
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_theta_sign.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_theta_sign.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding)
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_theta_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.sensitivity_theta_sign, range, value, display)

  return offset + length, value
end

-- Sensitivity Vega
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_vega = {}

-- Size: Sensitivity Vega
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_vega.size = 12

-- Display: Sensitivity Vega
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_vega.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_vega.size):string(), 6)

  if text == nil then
    return "Sensitivity Vega: "..tostring(value)
  end

  return "Sensitivity Vega: "..text
end

-- Dissect: Sensitivity Vega
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_vega.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_vega.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.sensitivity_vega, range, value, "Sensitivity Vega: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Sensitivity Vega is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000000

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_vega.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.sensitivity_vega, range, value, display)

  return offset + length, value
end

-- Sensitivity Vega Sign
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_vega_sign = {}

-- Size: Sensitivity Vega Sign
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_vega_sign.size = 1

-- Display: Sensitivity Vega Sign
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_vega_sign.display = function(value)
  return "Sensitivity Vega Sign: "..value
end

-- Dissect: Sensitivity Vega Sign
koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_vega_sign.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_vega_sign.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding)
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_vega_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.sensitivity_vega_sign, range, value, display)

  return offset + length, value
end

-- Seq Number
koscom_mdcsrealtime_koscom_exture_v1_20.seq_number = {}

-- Size: Seq Number
koscom_mdcsrealtime_koscom_exture_v1_20.seq_number.size = 8

-- Display: Seq Number
koscom_mdcsrealtime_koscom_exture_v1_20.seq_number.display = function(value)
  return "Seq Number: "..value
end

-- Dissect: Seq Number
koscom_mdcsrealtime_koscom_exture_v1_20.seq_number.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.seq_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.seq_number, range, value, "Seq Number: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Seq Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.seq_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.seq_number, range, value, display)

  return offset + length, value
end

-- Sequence Number
koscom_mdcsrealtime_koscom_exture_v1_20.sequence_number = {}

-- Size: Sequence Number
koscom_mdcsrealtime_koscom_exture_v1_20.sequence_number.size = 8

-- Display: Sequence Number
koscom_mdcsrealtime_koscom_exture_v1_20.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
koscom_mdcsrealtime_koscom_exture_v1_20.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.sequence_number, range, value, "Sequence Number: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Settlement Date K Bond
koscom_mdcsrealtime_koscom_exture_v1_20.settlement_date_k_bond = {}

-- Size: Settlement Date K Bond
koscom_mdcsrealtime_koscom_exture_v1_20.settlement_date_k_bond.size = 2

-- Display: Settlement Date K Bond
koscom_mdcsrealtime_koscom_exture_v1_20.settlement_date_k_bond.display = function(value)
  return "Settlement Date K Bond: "..value
end

-- Dissect: Settlement Date K Bond
koscom_mdcsrealtime_koscom_exture_v1_20.settlement_date_k_bond.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.settlement_date_k_bond.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.settlement_date_k_bond.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.settlement_date_k_bond, range, value, display)

  return offset + length, value
end

-- Settlement Date Otc
koscom_mdcsrealtime_koscom_exture_v1_20.settlement_date_otc = {}

-- Size: Settlement Date Otc
koscom_mdcsrealtime_koscom_exture_v1_20.settlement_date_otc.size = 8

-- Display: Settlement Date Otc
koscom_mdcsrealtime_koscom_exture_v1_20.settlement_date_otc.display = function(value)
  if #value < 8 then
    return "Settlement Date Otc: "..value
  end

  return "Settlement Date Otc: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Settlement Date Otc
koscom_mdcsrealtime_koscom_exture_v1_20.settlement_date_otc.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.settlement_date_otc.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.settlement_date_otc.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.settlement_date_otc, range, value, display)

  return offset + length, value
end

-- Sign
koscom_mdcsrealtime_koscom_exture_v1_20.sign = {}

-- Size: Sign
koscom_mdcsrealtime_koscom_exture_v1_20.sign.size = 1

-- Display: Sign
koscom_mdcsrealtime_koscom_exture_v1_20.sign.display = function(value)
  if value == "+" then
    return "Sign: Ascended (+)"
  end
  if value == " " then
    return "Sign: Steadiness (<whitespace>)"
  end
  if value == "-" then
    return "Sign: Declined (-)"
  end

  return "Sign: Unknown("..value..")"
end

-- Dissect: Sign
koscom_mdcsrealtime_koscom_exture_v1_20.sign.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.sign.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding)
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.sign, range, value, display)

  return offset + length, value
end

-- Standard Date
koscom_mdcsrealtime_koscom_exture_v1_20.standard_date = {}

-- Size: Standard Date
koscom_mdcsrealtime_koscom_exture_v1_20.standard_date.size = 8

-- Display: Standard Date
koscom_mdcsrealtime_koscom_exture_v1_20.standard_date.display = function(value)
  if #value < 8 then
    return "Standard Date: "..value
  end

  return "Standard Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Standard Date
koscom_mdcsrealtime_koscom_exture_v1_20.standard_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.standard_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.standard_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.standard_date, range, value, display)

  return offset + length, value
end

-- Standard Time
koscom_mdcsrealtime_koscom_exture_v1_20.standard_time = {}

-- Size: Standard Time
koscom_mdcsrealtime_koscom_exture_v1_20.standard_time.size = 6

-- Display: Standard Time
koscom_mdcsrealtime_koscom_exture_v1_20.standard_time.display = function(value)
  if #value < 6 then
    return "Standard Time: "..value
  end

  return "Standard Time: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Standard Time
koscom_mdcsrealtime_koscom_exture_v1_20.standard_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.standard_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding)
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.standard_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.standard_time, range, value, display)

  return offset + length, value
end

-- Subcategory
koscom_mdcsrealtime_koscom_exture_v1_20.subcategory = {}

-- Size: Subcategory
koscom_mdcsrealtime_koscom_exture_v1_20.subcategory.size = 2

-- Display: Subcategory
koscom_mdcsrealtime_koscom_exture_v1_20.subcategory.display = function(value)
  return "Subcategory: "..value
end

-- Dissect: Subcategory
koscom_mdcsrealtime_koscom_exture_v1_20.subcategory.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.subcategory.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.subcategory.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.subcategory, range, value, display)

  return offset + length, value
end

-- Subscription Time
koscom_mdcsrealtime_koscom_exture_v1_20.subscription_time = {}

-- Size: Subscription Time
koscom_mdcsrealtime_koscom_exture_v1_20.subscription_time.size = 6

-- Display: Subscription Time
koscom_mdcsrealtime_koscom_exture_v1_20.subscription_time.display = function(value)
  return "Subscription Time: "..value
end

-- Dissect: Subscription Time
koscom_mdcsrealtime_koscom_exture_v1_20.subscription_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.subscription_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.subscription_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.subscription_time, range, value, display)

  return offset + length, value
end

-- Tax Base Nav As Of The Day Before The Previous Day
koscom_mdcsrealtime_koscom_exture_v1_20.tax_base_nav_as_of_the_day_before_the_previous_day = {}

-- Size: Tax Base Nav As Of The Day Before The Previous Day
koscom_mdcsrealtime_koscom_exture_v1_20.tax_base_nav_as_of_the_day_before_the_previous_day.size = 9

-- Display: Tax Base Nav As Of The Day Before The Previous Day
koscom_mdcsrealtime_koscom_exture_v1_20.tax_base_nav_as_of_the_day_before_the_previous_day.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.tax_base_nav_as_of_the_day_before_the_previous_day.size):string(), 2)

  if text == nil then
    return "Tax Base Nav As Of The Day Before The Previous Day: "..tostring(value)
  end

  return "Tax Base Nav As Of The Day Before The Previous Day: "..text
end

-- Dissect: Tax Base Nav As Of The Day Before The Previous Day
koscom_mdcsrealtime_koscom_exture_v1_20.tax_base_nav_as_of_the_day_before_the_previous_day.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.tax_base_nav_as_of_the_day_before_the_previous_day.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.tax_base_nav_as_of_the_day_before_the_previous_day, range, value, "Tax Base Nav As Of The Day Before The Previous Day: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Tax Base Nav As Of The Day Before The Previous Day is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.tax_base_nav_as_of_the_day_before_the_previous_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.tax_base_nav_as_of_the_day_before_the_previous_day, range, value, display)

  return offset + length, value
end

-- Theoretical Warrant Price
koscom_mdcsrealtime_koscom_exture_v1_20.theoretical_warrant_price = {}

-- Size: Theoretical Warrant Price
koscom_mdcsrealtime_koscom_exture_v1_20.theoretical_warrant_price.size = 10

-- Display: Theoretical Warrant Price
koscom_mdcsrealtime_koscom_exture_v1_20.theoretical_warrant_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.theoretical_warrant_price.size):string(), 2)

  if text == nil then
    return "Theoretical Warrant Price: "..tostring(value)
  end

  return "Theoretical Warrant Price: "..text
end

-- Dissect: Theoretical Warrant Price
koscom_mdcsrealtime_koscom_exture_v1_20.theoretical_warrant_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.theoretical_warrant_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.theoretical_warrant_price, range, value, "Theoretical Warrant Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Theoretical Warrant Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.theoretical_warrant_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.theoretical_warrant_price, range, value, display)

  return offset + length, value
end

-- Time
koscom_mdcsrealtime_koscom_exture_v1_20.time = {}

-- Size: Time
koscom_mdcsrealtime_koscom_exture_v1_20.time.size = 6

-- Display: Time
koscom_mdcsrealtime_koscom_exture_v1_20.time.display = function(value)
  if #value < 6 then
    return "Time: "..value
  end

  return "Time: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Time
koscom_mdcsrealtime_koscom_exture_v1_20.time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding)
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.time, range, value, display)

  return offset + length, value
end

-- Total Danger Exposure Amount
koscom_mdcsrealtime_koscom_exture_v1_20.total_danger_exposure_amount = {}

-- Size: Total Danger Exposure Amount
koscom_mdcsrealtime_koscom_exture_v1_20.total_danger_exposure_amount.size = 15

-- Display: Total Danger Exposure Amount
koscom_mdcsrealtime_koscom_exture_v1_20.total_danger_exposure_amount.display = function(value)
  return "Total Danger Exposure Amount: "..value
end

-- Dissect: Total Danger Exposure Amount
koscom_mdcsrealtime_koscom_exture_v1_20.total_danger_exposure_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.total_danger_exposure_amount.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.total_danger_exposure_amount, range, value, "Total Danger Exposure Amount: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Total Danger Exposure Amount is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.total_danger_exposure_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.total_danger_exposure_amount, range, value, display)

  return offset + length, value
end

-- Total Profit Index
koscom_mdcsrealtime_koscom_exture_v1_20.total_profit_index = {}

-- Size: Total Profit Index
koscom_mdcsrealtime_koscom_exture_v1_20.total_profit_index.size = 10

-- Display: Total Profit Index
koscom_mdcsrealtime_koscom_exture_v1_20.total_profit_index.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.total_profit_index.size):string(), 4)

  if text == nil then
    return "Total Profit Index: "..tostring(value)
  end

  return "Total Profit Index: "..text
end

-- Dissect: Total Profit Index
koscom_mdcsrealtime_koscom_exture_v1_20.total_profit_index.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.total_profit_index.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.total_profit_index, range, value, "Total Profit Index: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Total Profit Index is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.total_profit_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.total_profit_index, range, value, display)

  return offset + length, value
end

-- Total Remaining Quantity Of Ask
koscom_mdcsrealtime_koscom_exture_v1_20.total_remaining_quantity_of_ask = {}

-- Size: Total Remaining Quantity Of Ask
koscom_mdcsrealtime_koscom_exture_v1_20.total_remaining_quantity_of_ask.size = 10

-- Display: Total Remaining Quantity Of Ask
koscom_mdcsrealtime_koscom_exture_v1_20.total_remaining_quantity_of_ask.display = function(value)
  return "Total Remaining Quantity Of Ask: "..value
end

-- Dissect: Total Remaining Quantity Of Ask
koscom_mdcsrealtime_koscom_exture_v1_20.total_remaining_quantity_of_ask.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.total_remaining_quantity_of_ask.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.total_remaining_quantity_of_ask, range, value, "Total Remaining Quantity Of Ask: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Total Remaining Quantity Of Ask is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.total_remaining_quantity_of_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.total_remaining_quantity_of_ask, range, value, display)

  return offset + length, value
end

-- Total Remaining Quantity Of Bid
koscom_mdcsrealtime_koscom_exture_v1_20.total_remaining_quantity_of_bid = {}

-- Size: Total Remaining Quantity Of Bid
koscom_mdcsrealtime_koscom_exture_v1_20.total_remaining_quantity_of_bid.size = 10

-- Display: Total Remaining Quantity Of Bid
koscom_mdcsrealtime_koscom_exture_v1_20.total_remaining_quantity_of_bid.display = function(value)
  return "Total Remaining Quantity Of Bid: "..value
end

-- Dissect: Total Remaining Quantity Of Bid
koscom_mdcsrealtime_koscom_exture_v1_20.total_remaining_quantity_of_bid.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.total_remaining_quantity_of_bid.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.total_remaining_quantity_of_bid, range, value, "Total Remaining Quantity Of Bid: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Total Remaining Quantity Of Bid is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.total_remaining_quantity_of_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.total_remaining_quantity_of_bid, range, value, display)

  return offset + length, value
end

-- Total Trading Accumulated Value
koscom_mdcsrealtime_koscom_exture_v1_20.total_trading_accumulated_value = {}

-- Size: Total Trading Accumulated Value
koscom_mdcsrealtime_koscom_exture_v1_20.total_trading_accumulated_value.size = 14

-- Display: Total Trading Accumulated Value
koscom_mdcsrealtime_koscom_exture_v1_20.total_trading_accumulated_value.display = function(value)
  return "Total Trading Accumulated Value: "..value
end

-- Dissect: Total Trading Accumulated Value
koscom_mdcsrealtime_koscom_exture_v1_20.total_trading_accumulated_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.total_trading_accumulated_value.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.total_trading_accumulated_value, range, value, "Total Trading Accumulated Value: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Total Trading Accumulated Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.total_trading_accumulated_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.total_trading_accumulated_value, range, value, display)

  return offset + length, value
end

-- Total Trading Accumulated Volume
koscom_mdcsrealtime_koscom_exture_v1_20.total_trading_accumulated_volume = {}

-- Size: Total Trading Accumulated Volume
koscom_mdcsrealtime_koscom_exture_v1_20.total_trading_accumulated_volume.size = 12

-- Display: Total Trading Accumulated Volume
koscom_mdcsrealtime_koscom_exture_v1_20.total_trading_accumulated_volume.display = function(value)
  return "Total Trading Accumulated Volume: "..value
end

-- Dissect: Total Trading Accumulated Volume
koscom_mdcsrealtime_koscom_exture_v1_20.total_trading_accumulated_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.total_trading_accumulated_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.total_trading_accumulated_volume, range, value, "Total Trading Accumulated Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Total Trading Accumulated Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.total_trading_accumulated_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.total_trading_accumulated_volume, range, value, display)

  return offset + length, value
end

-- Tr Code
koscom_mdcsrealtime_koscom_exture_v1_20.tr_code = {}

-- Size: Tr Code
koscom_mdcsrealtime_koscom_exture_v1_20.tr_code.size = 5

-- Display: Tr Code
koscom_mdcsrealtime_koscom_exture_v1_20.tr_code.labels = {
  ["A6013"] = "Tr Code: K Otc Issue Closing Message (A6013)",
  ["A7013"] = "Tr Code: K Otc Market Operation Message (A7013)",
  ["G5013"] = "Tr Code: K Otc Market Action Message (G5013)",
  ["A2013"] = "Tr Code: K Otc Quote Message (A2013)",
  ["A3013"] = "Tr Code: K Otc Order Filled Message (A3013)",
  ["J6077"] = "Tr Code: Otc Bond Traded Info Message (J6077)",
  ["J7077"] = "Tr Code: Otc Bond Trades Per Institution Message (J7077)",
  ["C1077"] = "Tr Code: Otc Bond Types Per Investor Message (C1077)",
  ["L9077"] = "Tr Code: K Bond Message (L9077)",
  ["E2000"] = "Tr Code: Mkf Index Message (E2000)",
  ["O9000"] = "Tr Code: Mkf Index Jpy Message (O9000)",
  ["P3000"] = "Tr Code: Wisefn Index Message (P3000)",
  ["BP000"] = "Tr Code: Kis Index Message (BP000)",
  ["K0000"] = "Tr Code: Mkf Bond Index Message (K0000)",
  ["L6000"] = "Tr Code: Kis Bond Index Message (L6000)",
  ["K6000"] = "Tr Code: Kebi Bond Index Message (K6000)",
  ["Q6000"] = "Tr Code: Kabi Bond Index Message (Q6000)",
  ["CE000"] = "Tr Code: Nicepni Bond Index Message (CE000)",
  ["BV03S"] = "Tr Code: Domestic Etf Inav Message (BV03S)",
  ["BW03S"] = "Tr Code: Domestic Etf Estimated Inav Message (BW03S)",
  ["L503S"] = "Tr Code: Global Etf Inav Message (L503S)",
  ["P603S"] = "Tr Code: Etf Tracking Error Message (P603S)",
  ["P703S"] = "Tr Code: Global Etf Tracking Error Message (P703S)",
  ["F803S"] = "Tr Code: Etp Pdf Message (F803S)",
  ["M803S"] = "Tr Code: Etp Operator Information Message (M803S)",
  ["M805S"] = "Tr Code: Etp Operator Information Message (M805S)",
  ["M801Q"] = "Tr Code: Etp Operator Information Message (M801Q)",
  ["N803S"] = "Tr Code: Etp Transfer Agent Batch Message (N803S)",
  ["N805S"] = "Tr Code: Etp Transfer Agent Batch Message (N805S)",
  ["N801Q"] = "Tr Code: Etp Transfer Agent Batch Message (N801Q)",
  ["Q403S"] = "Tr Code: Etf Risk Appraisement Message (Q403S)",
  ["Q503S"] = "Tr Code: Synthetic Etf Constituents Message (Q503S)",
  ["C702S"] = "Tr Code: Elw Investment Indicator Sensitivity Message (C702S)",
  ["S304S"] = "Tr Code: Etn Iiv Message (S304S)",
  ["X404S"] = "Tr Code: Etn Disparate Ratio Message (X404S)",
  ["CC000"] = "Tr Code: Loan Transaction Available Quantity Message (CC000)",
}

koscom_mdcsrealtime_koscom_exture_v1_20.tr_code.display = function(value)
  return koscom_mdcsrealtime_koscom_exture_v1_20.tr_code.labels[value] or "Tr Code: Unknown("..value..")"
end

-- Dissect: Tr Code
koscom_mdcsrealtime_koscom_exture_v1_20.tr_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.tr_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.tr_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.tr_code, range, value, display)

  return offset + length, value
end

-- Tracking Error
koscom_mdcsrealtime_koscom_exture_v1_20.tracking_error = {}

-- Size: Tracking Error
koscom_mdcsrealtime_koscom_exture_v1_20.tracking_error.size = 9

-- Display: Tracking Error
koscom_mdcsrealtime_koscom_exture_v1_20.tracking_error.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.tracking_error.size):string(), 2)

  if text == nil then
    return "Tracking Error: "..tostring(value)
  end

  return "Tracking Error: "..text
end

-- Dissect: Tracking Error
koscom_mdcsrealtime_koscom_exture_v1_20.tracking_error.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.tracking_error.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.tracking_error, range, value, "Tracking Error: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Tracking Error is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.tracking_error.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.tracking_error, range, value, display)

  return offset + length, value
end

-- Trading Category
koscom_mdcsrealtime_koscom_exture_v1_20.trading_category = {}

-- Size: Trading Category
koscom_mdcsrealtime_koscom_exture_v1_20.trading_category.size = 1

-- Display: Trading Category
koscom_mdcsrealtime_koscom_exture_v1_20.trading_category.display = function(value)
  return "Trading Category: "..value
end

-- Dissect: Trading Category
koscom_mdcsrealtime_koscom_exture_v1_20.trading_category.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.trading_category.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding)
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.trading_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.trading_category, range, value, display)

  return offset + length, value
end

-- Trading Date
koscom_mdcsrealtime_koscom_exture_v1_20.trading_date = {}

-- Size: Trading Date
koscom_mdcsrealtime_koscom_exture_v1_20.trading_date.size = 8

-- Display: Trading Date
koscom_mdcsrealtime_koscom_exture_v1_20.trading_date.display = function(value)
  if #value < 8 then
    return "Trading Date: "..value
  end

  return "Trading Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Trading Date
koscom_mdcsrealtime_koscom_exture_v1_20.trading_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.trading_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.trading_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.trading_date, range, value, display)

  return offset + length, value
end

-- Trading Number
koscom_mdcsrealtime_koscom_exture_v1_20.trading_number = {}

-- Size: Trading Number
koscom_mdcsrealtime_koscom_exture_v1_20.trading_number.size = 6

-- Display: Trading Number
koscom_mdcsrealtime_koscom_exture_v1_20.trading_number.display = function(value)
  return "Trading Number: "..value
end

-- Dissect: Trading Number
koscom_mdcsrealtime_koscom_exture_v1_20.trading_number.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.trading_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.trading_number, range, value, "Trading Number: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Trading Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.trading_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.trading_number, range, value, display)

  return offset + length, value
end

-- Trading Price
koscom_mdcsrealtime_koscom_exture_v1_20.trading_price = {}

-- Size: Trading Price
koscom_mdcsrealtime_koscom_exture_v1_20.trading_price.size = 9

-- Display: Trading Price
koscom_mdcsrealtime_koscom_exture_v1_20.trading_price.display = function(value)
  return "Trading Price: "..value
end

-- Dissect: Trading Price
koscom_mdcsrealtime_koscom_exture_v1_20.trading_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.trading_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.trading_price, range, value, "Trading Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Trading Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.trading_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.trading_price, range, value, display)

  return offset + length, value
end

-- Trading Price Compare Remaining Quantity Of Ask
koscom_mdcsrealtime_koscom_exture_v1_20.trading_price_compare_remaining_quantity_of_ask = {}

-- Size: Trading Price Compare Remaining Quantity Of Ask
koscom_mdcsrealtime_koscom_exture_v1_20.trading_price_compare_remaining_quantity_of_ask.size = 10

-- Display: Trading Price Compare Remaining Quantity Of Ask
koscom_mdcsrealtime_koscom_exture_v1_20.trading_price_compare_remaining_quantity_of_ask.display = function(value)
  return "Trading Price Compare Remaining Quantity Of Ask: "..value
end

-- Dissect: Trading Price Compare Remaining Quantity Of Ask
koscom_mdcsrealtime_koscom_exture_v1_20.trading_price_compare_remaining_quantity_of_ask.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.trading_price_compare_remaining_quantity_of_ask.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.trading_price_compare_remaining_quantity_of_ask, range, value, "Trading Price Compare Remaining Quantity Of Ask: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Trading Price Compare Remaining Quantity Of Ask is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.trading_price_compare_remaining_quantity_of_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.trading_price_compare_remaining_quantity_of_ask, range, value, display)

  return offset + length, value
end

-- Trading Price Compare Remaining Quantity Of Bid
koscom_mdcsrealtime_koscom_exture_v1_20.trading_price_compare_remaining_quantity_of_bid = {}

-- Size: Trading Price Compare Remaining Quantity Of Bid
koscom_mdcsrealtime_koscom_exture_v1_20.trading_price_compare_remaining_quantity_of_bid.size = 10

-- Display: Trading Price Compare Remaining Quantity Of Bid
koscom_mdcsrealtime_koscom_exture_v1_20.trading_price_compare_remaining_quantity_of_bid.display = function(value)
  return "Trading Price Compare Remaining Quantity Of Bid: "..value
end

-- Dissect: Trading Price Compare Remaining Quantity Of Bid
koscom_mdcsrealtime_koscom_exture_v1_20.trading_price_compare_remaining_quantity_of_bid.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.trading_price_compare_remaining_quantity_of_bid.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.trading_price_compare_remaining_quantity_of_bid, range, value, "Trading Price Compare Remaining Quantity Of Bid: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Trading Price Compare Remaining Quantity Of Bid is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.trading_price_compare_remaining_quantity_of_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.trading_price_compare_remaining_quantity_of_bid, range, value, display)

  return offset + length, value
end

-- Trading Time
koscom_mdcsrealtime_koscom_exture_v1_20.trading_time = {}

-- Size: Trading Time
koscom_mdcsrealtime_koscom_exture_v1_20.trading_time.size = 6

-- Display: Trading Time
koscom_mdcsrealtime_koscom_exture_v1_20.trading_time.display = function(value)
  return "Trading Time: "..value
end

-- Dissect: Trading Time
koscom_mdcsrealtime_koscom_exture_v1_20.trading_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.trading_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding))
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.trading_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.trading_time, range, value, display)

  return offset + length, value
end

-- Trading Type Category
koscom_mdcsrealtime_koscom_exture_v1_20.trading_type_category = {}

-- Size: Trading Type Category
koscom_mdcsrealtime_koscom_exture_v1_20.trading_type_category.size = 1

-- Display: Trading Type Category
koscom_mdcsrealtime_koscom_exture_v1_20.trading_type_category.display = function(value)
  return "Trading Type Category: "..value
end

-- Dissect: Trading Type Category
koscom_mdcsrealtime_koscom_exture_v1_20.trading_type_category.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.trading_type_category.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding)
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.trading_type_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.trading_type_category, range, value, display)

  return offset + length, value
end

-- Trading Value
koscom_mdcsrealtime_koscom_exture_v1_20.trading_value = {}

-- Size: Trading Value
koscom_mdcsrealtime_koscom_exture_v1_20.trading_value.size = 12

-- Display: Trading Value
koscom_mdcsrealtime_koscom_exture_v1_20.trading_value.display = function(value)
  return "Trading Value: "..value
end

-- Dissect: Trading Value
koscom_mdcsrealtime_koscom_exture_v1_20.trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.trading_value.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.trading_value, range, value, "Trading Value: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Trading Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.trading_value, range, value, display)

  return offset + length, value
end

-- Trading Volume
koscom_mdcsrealtime_koscom_exture_v1_20.trading_volume = {}

-- Size: Trading Volume
koscom_mdcsrealtime_koscom_exture_v1_20.trading_volume.size = 12

-- Display: Trading Volume
koscom_mdcsrealtime_koscom_exture_v1_20.trading_volume.display = function(value)
  return "Trading Volume: "..value
end

-- Dissect: Trading Volume
koscom_mdcsrealtime_koscom_exture_v1_20.trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.trading_volume, range, value, "Trading Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.trading_volume, range, value, display)

  return offset + length, value
end

-- Type
koscom_mdcsrealtime_koscom_exture_v1_20.type = {}

-- Size: Type
koscom_mdcsrealtime_koscom_exture_v1_20.type.size = 1

-- Display: Type
koscom_mdcsrealtime_koscom_exture_v1_20.type.labels = {
  ["1"] = "Type: Trading Halt (1)",
  ["2"] = "Type: Lift After Trading Halt (2)",
}

koscom_mdcsrealtime_koscom_exture_v1_20.type.display = function(value)
  return koscom_mdcsrealtime_koscom_exture_v1_20.type.labels[value] or "Type: Unknown("..value..")"
end

-- Dissect: Type
koscom_mdcsrealtime_koscom_exture_v1_20.type.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.type.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_koscom_exture_v1_20.text_encoding)
  local display = koscom_mdcsrealtime_koscom_exture_v1_20.type.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.type, range, value, display)

  return offset + length, value
end

-- Upper Limit Price After Action
koscom_mdcsrealtime_koscom_exture_v1_20.upper_limit_price_after_action = {}

-- Size: Upper Limit Price After Action
koscom_mdcsrealtime_koscom_exture_v1_20.upper_limit_price_after_action.size = 9

-- Display: Upper Limit Price After Action
koscom_mdcsrealtime_koscom_exture_v1_20.upper_limit_price_after_action.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Upper Limit Price After Action: No Value"
  end

  return "Upper Limit Price After Action: "..value
end

-- Dissect: Upper Limit Price After Action
koscom_mdcsrealtime_koscom_exture_v1_20.upper_limit_price_after_action.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.upper_limit_price_after_action.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.upper_limit_price_after_action, range, value, "Upper Limit Price After Action: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Upper Limit Price After Action is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.upper_limit_price_after_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.upper_limit_price_after_action, range, value, display)

  return offset + length, value
end

-- Upper Limit Price Before Action
koscom_mdcsrealtime_koscom_exture_v1_20.upper_limit_price_before_action = {}

-- Size: Upper Limit Price Before Action
koscom_mdcsrealtime_koscom_exture_v1_20.upper_limit_price_before_action.size = 9

-- Display: Upper Limit Price Before Action
koscom_mdcsrealtime_koscom_exture_v1_20.upper_limit_price_before_action.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Upper Limit Price Before Action: No Value"
  end

  return "Upper Limit Price Before Action: "..value
end

-- Dissect: Upper Limit Price Before Action
koscom_mdcsrealtime_koscom_exture_v1_20.upper_limit_price_before_action.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.upper_limit_price_before_action.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.upper_limit_price_before_action, range, value, "Upper Limit Price Before Action: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Upper Limit Price Before Action is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.upper_limit_price_before_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.upper_limit_price_before_action, range, value, display)

  return offset + length, value
end

-- Volume
koscom_mdcsrealtime_koscom_exture_v1_20.volume = {}

-- Size: Volume
koscom_mdcsrealtime_koscom_exture_v1_20.volume.size = 16

-- Display: Volume
koscom_mdcsrealtime_koscom_exture_v1_20.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
koscom_mdcsrealtime_koscom_exture_v1_20.volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.volume, range, value, "Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.volume, range, value, display)

  return offset + length, value
end

-- Weighted Average Stock Price
koscom_mdcsrealtime_koscom_exture_v1_20.weighted_average_stock_price = {}

-- Size: Weighted Average Stock Price
koscom_mdcsrealtime_koscom_exture_v1_20.weighted_average_stock_price.size = 9

-- Display: Weighted Average Stock Price
koscom_mdcsrealtime_koscom_exture_v1_20.weighted_average_stock_price.display = function(value)
  return "Weighted Average Stock Price: "..value
end

-- Dissect: Weighted Average Stock Price
koscom_mdcsrealtime_koscom_exture_v1_20.weighted_average_stock_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.weighted_average_stock_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.weighted_average_stock_price, range, value, "Weighted Average Stock Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Weighted Average Stock Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.weighted_average_stock_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.weighted_average_stock_price, range, value, display)

  return offset + length, value
end

-- Zero Re Investment Index
koscom_mdcsrealtime_koscom_exture_v1_20.zero_re_investment_index = {}

-- Size: Zero Re Investment Index
koscom_mdcsrealtime_koscom_exture_v1_20.zero_re_investment_index.size = 10

-- Display: Zero Re Investment Index
koscom_mdcsrealtime_koscom_exture_v1_20.zero_re_investment_index.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, koscom_mdcsrealtime_koscom_exture_v1_20.zero_re_investment_index.size):string(), 4)

  if text == nil then
    return "Zero Re Investment Index: "..tostring(value)
  end

  return "Zero Re Investment Index: "..text
end

-- Dissect: Zero Re Investment Index
koscom_mdcsrealtime_koscom_exture_v1_20.zero_re_investment_index.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_koscom_exture_v1_20.zero_re_investment_index.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.zero_re_investment_index, range, value, "Zero Re Investment Index: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_koscom_exture_v1_20.experts.not_a_number, "Zero Re Investment Index is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = koscom_mdcsrealtime_koscom_exture_v1_20.zero_re_investment_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.zero_re_investment_index, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Koscom MdcsRealtime Koscom Exture 1.20
-----------------------------------------------------------------------

-- Loan Transaction Available Quantity Message
koscom_mdcsrealtime_koscom_exture_v1_20.loan_transaction_available_quantity_message = {}

-- Size: Loan Transaction Available Quantity Message
koscom_mdcsrealtime_koscom_exture_v1_20.loan_transaction_available_quantity_message.size =
  koscom_mdcsrealtime_koscom_exture_v1_20.issue_code.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.business_code.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.available_lending_quantity.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_19.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.size

-- Display: Loan Transaction Available Quantity Message
koscom_mdcsrealtime_koscom_exture_v1_20.loan_transaction_available_quantity_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Loan Transaction Available Quantity Message
koscom_mdcsrealtime_koscom_exture_v1_20.loan_transaction_available_quantity_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Issue Code: String
  index, issue_code = koscom_mdcsrealtime_koscom_exture_v1_20.issue_code.dissect(buffer, index, packet, parent)

  -- Business Code: String
  index, business_code = koscom_mdcsrealtime_koscom_exture_v1_20.business_code.dissect(buffer, index, packet, parent)

  -- Available Lending Quantity: Long
  index, available_lending_quantity = koscom_mdcsrealtime_koscom_exture_v1_20.available_lending_quantity.dissect(buffer, index, packet, parent)

  -- Filler 19: String
  index, filler_19 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_19.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Loan Transaction Available Quantity Message
koscom_mdcsrealtime_koscom_exture_v1_20.loan_transaction_available_quantity_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.loan_transaction_available_quantity_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_koscom_exture_v1_20.loan_transaction_available_quantity_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_koscom_exture_v1_20.loan_transaction_available_quantity_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_koscom_exture_v1_20.loan_transaction_available_quantity_message.fields(buffer, offset, packet, parent)
  end
end

-- Etn Disparate Ratio Message
koscom_mdcsrealtime_koscom_exture_v1_20.etn_disparate_ratio_message = {}

-- Size: Etn Disparate Ratio Message
koscom_mdcsrealtime_koscom_exture_v1_20.etn_disparate_ratio_message.size =
  koscom_mdcsrealtime_koscom_exture_v1_20.isin.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.seq_number.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.date.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.disparate_ratio_sign.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.disparate_ratio.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_56.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.size

-- Display: Etn Disparate Ratio Message
koscom_mdcsrealtime_koscom_exture_v1_20.etn_disparate_ratio_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Etn Disparate Ratio Message
koscom_mdcsrealtime_koscom_exture_v1_20.etn_disparate_ratio_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin: String
  index, isin = koscom_mdcsrealtime_koscom_exture_v1_20.isin.dissect(buffer, index, packet, parent)

  -- Seq Number: Long
  index, seq_number = koscom_mdcsrealtime_koscom_exture_v1_20.seq_number.dissect(buffer, index, packet, parent)

  -- Date: String
  index, date = koscom_mdcsrealtime_koscom_exture_v1_20.date.dissect(buffer, index, packet, parent)

  -- Disparate Ratio Sign: String
  index, disparate_ratio_sign = koscom_mdcsrealtime_koscom_exture_v1_20.disparate_ratio_sign.dissect(buffer, index, packet, parent)

  -- Disparate Ratio: Double
  index, disparate_ratio = koscom_mdcsrealtime_koscom_exture_v1_20.disparate_ratio.dissect(buffer, index, packet, parent)

  -- Filler 56: String
  index, filler_56 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_56.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Etn Disparate Ratio Message
koscom_mdcsrealtime_koscom_exture_v1_20.etn_disparate_ratio_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.etn_disparate_ratio_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_koscom_exture_v1_20.etn_disparate_ratio_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_koscom_exture_v1_20.etn_disparate_ratio_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_koscom_exture_v1_20.etn_disparate_ratio_message.fields(buffer, offset, packet, parent)
  end
end

-- Etn Iiv Message
koscom_mdcsrealtime_koscom_exture_v1_20.etn_iiv_message = {}

-- Size: Etn Iiv Message
koscom_mdcsrealtime_koscom_exture_v1_20.etn_iiv_message.size =
  koscom_mdcsrealtime_koscom_exture_v1_20.isin.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.hours.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_iv.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.during_market_hours_final_iv.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_28.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.size

-- Display: Etn Iiv Message
koscom_mdcsrealtime_koscom_exture_v1_20.etn_iiv_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Etn Iiv Message
koscom_mdcsrealtime_koscom_exture_v1_20.etn_iiv_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin: String
  index, isin = koscom_mdcsrealtime_koscom_exture_v1_20.isin.dissect(buffer, index, packet, parent)

  -- Hours: String
  index, hours = koscom_mdcsrealtime_koscom_exture_v1_20.hours.dissect(buffer, index, packet, parent)

  -- Previous Days Iv: Double
  index, previous_days_iv = koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_iv.dissect(buffer, index, packet, parent)

  -- During Market Hours Final Iv: Double
  index, during_market_hours_final_iv = koscom_mdcsrealtime_koscom_exture_v1_20.during_market_hours_final_iv.dissect(buffer, index, packet, parent)

  -- Filler 28: String
  index, filler_28 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_28.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Etn Iiv Message
koscom_mdcsrealtime_koscom_exture_v1_20.etn_iiv_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.etn_iiv_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_koscom_exture_v1_20.etn_iiv_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_koscom_exture_v1_20.etn_iiv_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_koscom_exture_v1_20.etn_iiv_message.fields(buffer, offset, packet, parent)
  end
end

-- Elw Investment Indicator Sensitivity Message
koscom_mdcsrealtime_koscom_exture_v1_20.elw_investment_indicator_sensitivity_message = {}

-- Size: Elw Investment Indicator Sensitivity Message
koscom_mdcsrealtime_koscom_exture_v1_20.elw_investment_indicator_sensitivity_message.size =
  koscom_mdcsrealtime_koscom_exture_v1_20.isin.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.time.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.theoretical_warrant_price.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_delta_sign.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_delta.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_gamma_sign.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_gamma.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_theta_sign.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_theta.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_vega_sign.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_vega.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_rho_sign.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_rho.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.intrinsic_volatility.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.prerequisite_cost.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_6.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.size

-- Display: Elw Investment Indicator Sensitivity Message
koscom_mdcsrealtime_koscom_exture_v1_20.elw_investment_indicator_sensitivity_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Elw Investment Indicator Sensitivity Message
koscom_mdcsrealtime_koscom_exture_v1_20.elw_investment_indicator_sensitivity_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin: String
  index, isin = koscom_mdcsrealtime_koscom_exture_v1_20.isin.dissect(buffer, index, packet, parent)

  -- Time: String
  index, time = koscom_mdcsrealtime_koscom_exture_v1_20.time.dissect(buffer, index, packet, parent)

  -- Theoretical Warrant Price: Double
  index, theoretical_warrant_price = koscom_mdcsrealtime_koscom_exture_v1_20.theoretical_warrant_price.dissect(buffer, index, packet, parent)

  -- Sensitivity Delta Sign: String
  index, sensitivity_delta_sign = koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_delta_sign.dissect(buffer, index, packet, parent)

  -- Sensitivity Delta: Double
  index, sensitivity_delta = koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_delta.dissect(buffer, index, packet, parent)

  -- Sensitivity Gamma Sign: String
  index, sensitivity_gamma_sign = koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_gamma_sign.dissect(buffer, index, packet, parent)

  -- Sensitivity Gamma: Double
  index, sensitivity_gamma = koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_gamma.dissect(buffer, index, packet, parent)

  -- Sensitivity Theta Sign: String
  index, sensitivity_theta_sign = koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_theta_sign.dissect(buffer, index, packet, parent)

  -- Sensitivity Theta: Double
  index, sensitivity_theta = koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_theta.dissect(buffer, index, packet, parent)

  -- Sensitivity Vega Sign: String
  index, sensitivity_vega_sign = koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_vega_sign.dissect(buffer, index, packet, parent)

  -- Sensitivity Vega: Double
  index, sensitivity_vega = koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_vega.dissect(buffer, index, packet, parent)

  -- Sensitivity Rho Sign: String
  index, sensitivity_rho_sign = koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_rho_sign.dissect(buffer, index, packet, parent)

  -- Sensitivity Rho: Double
  index, sensitivity_rho = koscom_mdcsrealtime_koscom_exture_v1_20.sensitivity_rho.dissect(buffer, index, packet, parent)

  -- Intrinsic Volatility: Double
  index, intrinsic_volatility = koscom_mdcsrealtime_koscom_exture_v1_20.intrinsic_volatility.dissect(buffer, index, packet, parent)

  -- Prerequisite Cost: Double
  index, prerequisite_cost = koscom_mdcsrealtime_koscom_exture_v1_20.prerequisite_cost.dissect(buffer, index, packet, parent)

  -- Filler 6: String
  index, filler_6 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_6.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Elw Investment Indicator Sensitivity Message
koscom_mdcsrealtime_koscom_exture_v1_20.elw_investment_indicator_sensitivity_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.elw_investment_indicator_sensitivity_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_koscom_exture_v1_20.elw_investment_indicator_sensitivity_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_koscom_exture_v1_20.elw_investment_indicator_sensitivity_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_koscom_exture_v1_20.elw_investment_indicator_sensitivity_message.fields(buffer, offset, packet, parent)
  end
end

-- Synthetic Etf Constituents Message
koscom_mdcsrealtime_koscom_exture_v1_20.synthetic_etf_constituents_message = {}

-- Size: Synthetic Etf Constituents Message
koscom_mdcsrealtime_koscom_exture_v1_20.synthetic_etf_constituents_message.size =
  koscom_mdcsrealtime_koscom_exture_v1_20.isin.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.data_seq_number.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.date.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.office_consignment_companys_registration_number.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.composition_constituents_number.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.composition_constituents_code.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.composition_constituents_name.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.composition_ratio.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_60.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.size

-- Display: Synthetic Etf Constituents Message
koscom_mdcsrealtime_koscom_exture_v1_20.synthetic_etf_constituents_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Synthetic Etf Constituents Message
koscom_mdcsrealtime_koscom_exture_v1_20.synthetic_etf_constituents_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin: String
  index, isin = koscom_mdcsrealtime_koscom_exture_v1_20.isin.dissect(buffer, index, packet, parent)

  -- Data Seq Number: Long
  index, data_seq_number = koscom_mdcsrealtime_koscom_exture_v1_20.data_seq_number.dissect(buffer, index, packet, parent)

  -- Date: String
  index, date = koscom_mdcsrealtime_koscom_exture_v1_20.date.dissect(buffer, index, packet, parent)

  -- Office Consignment Companys Registration Number: String
  index, office_consignment_companys_registration_number = koscom_mdcsrealtime_koscom_exture_v1_20.office_consignment_companys_registration_number.dissect(buffer, index, packet, parent)

  -- Composition Constituents Number: Long
  index, composition_constituents_number = koscom_mdcsrealtime_koscom_exture_v1_20.composition_constituents_number.dissect(buffer, index, packet, parent)

  -- Composition Constituents Code: String
  index, composition_constituents_code = koscom_mdcsrealtime_koscom_exture_v1_20.composition_constituents_code.dissect(buffer, index, packet, parent)

  -- Composition Constituents Name: String
  index, composition_constituents_name = koscom_mdcsrealtime_koscom_exture_v1_20.composition_constituents_name.dissect(buffer, index, packet, parent)

  -- Composition Ratio: Double
  index, composition_ratio = koscom_mdcsrealtime_koscom_exture_v1_20.composition_ratio.dissect(buffer, index, packet, parent)

  -- Filler 60: String
  index, filler_60 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_60.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Synthetic Etf Constituents Message
koscom_mdcsrealtime_koscom_exture_v1_20.synthetic_etf_constituents_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.synthetic_etf_constituents_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_koscom_exture_v1_20.synthetic_etf_constituents_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_koscom_exture_v1_20.synthetic_etf_constituents_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_koscom_exture_v1_20.synthetic_etf_constituents_message.fields(buffer, offset, packet, parent)
  end
end

-- Etf Risk Appraisement Message
koscom_mdcsrealtime_koscom_exture_v1_20.etf_risk_appraisement_message = {}

-- Size: Etf Risk Appraisement Message
koscom_mdcsrealtime_koscom_exture_v1_20.etf_risk_appraisement_message.size =
  koscom_mdcsrealtime_koscom_exture_v1_20.isin.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.data_seq_number.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.date.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.office_consignment_companys_registration_number.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.name_of_counterparty.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.otc_derivatives_type.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.net_assets_amount.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.total_danger_exposure_amount.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.security_appraisal_amount.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.security_rate.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.risk_appraisal_amount.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.risk_appraisal_amount_rate.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_38.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.size

-- Display: Etf Risk Appraisement Message
koscom_mdcsrealtime_koscom_exture_v1_20.etf_risk_appraisement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Etf Risk Appraisement Message
koscom_mdcsrealtime_koscom_exture_v1_20.etf_risk_appraisement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin: String
  index, isin = koscom_mdcsrealtime_koscom_exture_v1_20.isin.dissect(buffer, index, packet, parent)

  -- Data Seq Number: Long
  index, data_seq_number = koscom_mdcsrealtime_koscom_exture_v1_20.data_seq_number.dissect(buffer, index, packet, parent)

  -- Date: String
  index, date = koscom_mdcsrealtime_koscom_exture_v1_20.date.dissect(buffer, index, packet, parent)

  -- Office Consignment Companys Registration Number: String
  index, office_consignment_companys_registration_number = koscom_mdcsrealtime_koscom_exture_v1_20.office_consignment_companys_registration_number.dissect(buffer, index, packet, parent)

  -- Name Of Counterparty: String
  index, name_of_counterparty = koscom_mdcsrealtime_koscom_exture_v1_20.name_of_counterparty.dissect(buffer, index, packet, parent)

  -- Otc Derivatives Type: String
  index, otc_derivatives_type = koscom_mdcsrealtime_koscom_exture_v1_20.otc_derivatives_type.dissect(buffer, index, packet, parent)

  -- Net Assets Amount: Long
  index, net_assets_amount = koscom_mdcsrealtime_koscom_exture_v1_20.net_assets_amount.dissect(buffer, index, packet, parent)

  -- Total Danger Exposure Amount: Long
  index, total_danger_exposure_amount = koscom_mdcsrealtime_koscom_exture_v1_20.total_danger_exposure_amount.dissect(buffer, index, packet, parent)

  -- Security Appraisal Amount: Long
  index, security_appraisal_amount = koscom_mdcsrealtime_koscom_exture_v1_20.security_appraisal_amount.dissect(buffer, index, packet, parent)

  -- Security Rate: Double
  index, security_rate = koscom_mdcsrealtime_koscom_exture_v1_20.security_rate.dissect(buffer, index, packet, parent)

  -- Risk Appraisal Amount: Long
  index, risk_appraisal_amount = koscom_mdcsrealtime_koscom_exture_v1_20.risk_appraisal_amount.dissect(buffer, index, packet, parent)

  -- Risk Appraisal Amount Rate: Double
  index, risk_appraisal_amount_rate = koscom_mdcsrealtime_koscom_exture_v1_20.risk_appraisal_amount_rate.dissect(buffer, index, packet, parent)

  -- Filler 38: String
  index, filler_38 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_38.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Etf Risk Appraisement Message
koscom_mdcsrealtime_koscom_exture_v1_20.etf_risk_appraisement_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.etf_risk_appraisement_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_koscom_exture_v1_20.etf_risk_appraisement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_koscom_exture_v1_20.etf_risk_appraisement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_koscom_exture_v1_20.etf_risk_appraisement_message.fields(buffer, offset, packet, parent)
  end
end

-- Etp Transfer Agent Batch Message
koscom_mdcsrealtime_koscom_exture_v1_20.etp_transfer_agent_batch_message = {}

-- Size: Etp Transfer Agent Batch Message
koscom_mdcsrealtime_koscom_exture_v1_20.etp_transfer_agent_batch_message.size =
  koscom_mdcsrealtime_koscom_exture_v1_20.isin.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.data_seq_number.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_10.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.etf_flow_net_asset_total_amount.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.etf_foreign_net_asset_value_amount.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.etf_net_asset_value_amount.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.etf_foreign_flow_net_asset_total_amount.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.etf_foreign_net_asset_total.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.etf_foreign_final_net_asset_value.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.etf_cu_quantity.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_tax_base_nav.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_tax_base_nav_before_dividend.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_cash_dividend_amount.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.tax_base_nav_as_of_the_day_before_the_previous_day.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_nontaxable_base_price_for_overseas_stocks.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_nontaxable_base_price_before_dividend_for_overseas_stocks.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.day_before_previous_days_nontaxable_base_price_for_overseas_stocks.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.number_of_freefloating_etf_shares.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_46.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.size

-- Display: Etp Transfer Agent Batch Message
koscom_mdcsrealtime_koscom_exture_v1_20.etp_transfer_agent_batch_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Etp Transfer Agent Batch Message
koscom_mdcsrealtime_koscom_exture_v1_20.etp_transfer_agent_batch_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin: String
  index, isin = koscom_mdcsrealtime_koscom_exture_v1_20.isin.dissect(buffer, index, packet, parent)

  -- Data Seq Number: Long
  index, data_seq_number = koscom_mdcsrealtime_koscom_exture_v1_20.data_seq_number.dissect(buffer, index, packet, parent)

  -- Filler 10: Long
  index, filler_10 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_10.dissect(buffer, index, packet, parent)

  -- Etf Flow Net Asset Total Amount: Long
  index, etf_flow_net_asset_total_amount = koscom_mdcsrealtime_koscom_exture_v1_20.etf_flow_net_asset_total_amount.dissect(buffer, index, packet, parent)

  -- Etf Foreign Net Asset Value Amount: Long
  index, etf_foreign_net_asset_value_amount = koscom_mdcsrealtime_koscom_exture_v1_20.etf_foreign_net_asset_value_amount.dissect(buffer, index, packet, parent)

  -- Etf Net Asset Value Amount: Double
  index, etf_net_asset_value_amount = koscom_mdcsrealtime_koscom_exture_v1_20.etf_net_asset_value_amount.dissect(buffer, index, packet, parent)

  -- Etf Foreign Flow Net Asset Total Amount: Long
  index, etf_foreign_flow_net_asset_total_amount = koscom_mdcsrealtime_koscom_exture_v1_20.etf_foreign_flow_net_asset_total_amount.dissect(buffer, index, packet, parent)

  -- Etf Foreign Net Asset Total: String
  index, etf_foreign_net_asset_total = koscom_mdcsrealtime_koscom_exture_v1_20.etf_foreign_net_asset_total.dissect(buffer, index, packet, parent)

  -- Etf Foreign Final Net Asset Value: Double
  index, etf_foreign_final_net_asset_value = koscom_mdcsrealtime_koscom_exture_v1_20.etf_foreign_final_net_asset_value.dissect(buffer, index, packet, parent)

  -- Etf Cu Quantity: Long
  index, etf_cu_quantity = koscom_mdcsrealtime_koscom_exture_v1_20.etf_cu_quantity.dissect(buffer, index, packet, parent)

  -- Previous Days Tax Base Nav: Double
  index, previous_days_tax_base_nav = koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_tax_base_nav.dissect(buffer, index, packet, parent)

  -- Previous Days Tax Base Nav Before Dividend: Double
  index, previous_days_tax_base_nav_before_dividend = koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_tax_base_nav_before_dividend.dissect(buffer, index, packet, parent)

  -- Previous Days Cash Dividend Amount: Double
  index, previous_days_cash_dividend_amount = koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_cash_dividend_amount.dissect(buffer, index, packet, parent)

  -- Tax Base Nav As Of The Day Before The Previous Day: Double
  index, tax_base_nav_as_of_the_day_before_the_previous_day = koscom_mdcsrealtime_koscom_exture_v1_20.tax_base_nav_as_of_the_day_before_the_previous_day.dissect(buffer, index, packet, parent)

  -- Previous Days Nontaxable Base Price For Overseas Stocks: Double
  index, previous_days_nontaxable_base_price_for_overseas_stocks = koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_nontaxable_base_price_for_overseas_stocks.dissect(buffer, index, packet, parent)

  -- Previous Days Nontaxable Base Price Before Dividend For Overseas Stocks: Double
  index, previous_days_nontaxable_base_price_before_dividend_for_overseas_stocks = koscom_mdcsrealtime_koscom_exture_v1_20.previous_days_nontaxable_base_price_before_dividend_for_overseas_stocks.dissect(buffer, index, packet, parent)

  -- Day Before Previous Days Nontaxable Base Price For Overseas Stocks: Double
  index, day_before_previous_days_nontaxable_base_price_for_overseas_stocks = koscom_mdcsrealtime_koscom_exture_v1_20.day_before_previous_days_nontaxable_base_price_for_overseas_stocks.dissect(buffer, index, packet, parent)

  -- Number Of Freefloating Etf Shares: Long
  index, number_of_freefloating_etf_shares = koscom_mdcsrealtime_koscom_exture_v1_20.number_of_freefloating_etf_shares.dissect(buffer, index, packet, parent)

  -- Filler 46: String
  index, filler_46 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_46.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Etp Transfer Agent Batch Message
koscom_mdcsrealtime_koscom_exture_v1_20.etp_transfer_agent_batch_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.etp_transfer_agent_batch_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_koscom_exture_v1_20.etp_transfer_agent_batch_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_koscom_exture_v1_20.etp_transfer_agent_batch_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_koscom_exture_v1_20.etp_transfer_agent_batch_message.fields(buffer, offset, packet, parent)
  end
end

-- Etp Operator Information Message
koscom_mdcsrealtime_koscom_exture_v1_20.etp_operator_information_message = {}

-- Size: Etp Operator Information Message
koscom_mdcsrealtime_koscom_exture_v1_20.etp_operator_information_message.size =
  koscom_mdcsrealtime_koscom_exture_v1_20.isin.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.seq_number.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.office_consignment_companys_registration_number.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.operator_code.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.operator_abbreviated_name_korean.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.operator_abbreviated_name_english.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_5.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.size

-- Display: Etp Operator Information Message
koscom_mdcsrealtime_koscom_exture_v1_20.etp_operator_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Etp Operator Information Message
koscom_mdcsrealtime_koscom_exture_v1_20.etp_operator_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin: String
  index, isin = koscom_mdcsrealtime_koscom_exture_v1_20.isin.dissect(buffer, index, packet, parent)

  -- Seq Number: Long
  index, seq_number = koscom_mdcsrealtime_koscom_exture_v1_20.seq_number.dissect(buffer, index, packet, parent)

  -- Office Consignment Companys Registration Number: String
  index, office_consignment_companys_registration_number = koscom_mdcsrealtime_koscom_exture_v1_20.office_consignment_companys_registration_number.dissect(buffer, index, packet, parent)

  -- Operator Code: String
  index, operator_code = koscom_mdcsrealtime_koscom_exture_v1_20.operator_code.dissect(buffer, index, packet, parent)

  -- Operator Abbreviated Name Korean: String
  index, operator_abbreviated_name_korean = koscom_mdcsrealtime_koscom_exture_v1_20.operator_abbreviated_name_korean.dissect(buffer, index, packet, parent)

  -- Operator Abbreviated Name English: String
  index, operator_abbreviated_name_english = koscom_mdcsrealtime_koscom_exture_v1_20.operator_abbreviated_name_english.dissect(buffer, index, packet, parent)

  -- Filler 5: String
  index, filler_5 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_5.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Etp Operator Information Message
koscom_mdcsrealtime_koscom_exture_v1_20.etp_operator_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.etp_operator_information_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_koscom_exture_v1_20.etp_operator_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_koscom_exture_v1_20.etp_operator_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_koscom_exture_v1_20.etp_operator_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Etp Pdf Message
koscom_mdcsrealtime_koscom_exture_v1_20.etp_pdf_message = {}

-- Size: Etp Pdf Message
koscom_mdcsrealtime_koscom_exture_v1_20.etp_pdf_message.size =
  koscom_mdcsrealtime_koscom_exture_v1_20.isin.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.data_seq_number.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.date.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.office_consignment_companys_registration_number.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.composition_issue_number.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.composition_issue_code.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.cu_unit_sharenumber_of_contractkrw_cashusd_cashconverted_amountkrw.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.composition_issue_market_type.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.composition_issue_name.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.par_value_amount_cash_amount_converted_amount_krw.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.profit_distribution_basis_date.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.appraised_value.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_4.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.size

-- Display: Etp Pdf Message
koscom_mdcsrealtime_koscom_exture_v1_20.etp_pdf_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Etp Pdf Message
koscom_mdcsrealtime_koscom_exture_v1_20.etp_pdf_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin: String
  index, isin = koscom_mdcsrealtime_koscom_exture_v1_20.isin.dissect(buffer, index, packet, parent)

  -- Data Seq Number: Long
  index, data_seq_number = koscom_mdcsrealtime_koscom_exture_v1_20.data_seq_number.dissect(buffer, index, packet, parent)

  -- Date: String
  index, date = koscom_mdcsrealtime_koscom_exture_v1_20.date.dissect(buffer, index, packet, parent)

  -- Office Consignment Companys Registration Number: String
  index, office_consignment_companys_registration_number = koscom_mdcsrealtime_koscom_exture_v1_20.office_consignment_companys_registration_number.dissect(buffer, index, packet, parent)

  -- Composition Issue Number: Long
  index, composition_issue_number = koscom_mdcsrealtime_koscom_exture_v1_20.composition_issue_number.dissect(buffer, index, packet, parent)

  -- Composition Issue Code: String
  index, composition_issue_code = koscom_mdcsrealtime_koscom_exture_v1_20.composition_issue_code.dissect(buffer, index, packet, parent)

  -- CU unit share/Number of contract/KRW Cash/USD Cash/Converted amount(KRW): Double
  index, cu_unit_sharenumber_of_contractkrw_cashusd_cashconverted_amountkrw = koscom_mdcsrealtime_koscom_exture_v1_20.cu_unit_sharenumber_of_contractkrw_cashusd_cashconverted_amountkrw.dissect(buffer, index, packet, parent)

  -- Composition Issue Market Type: String
  index, composition_issue_market_type = koscom_mdcsrealtime_koscom_exture_v1_20.composition_issue_market_type.dissect(buffer, index, packet, parent)

  -- Composition Issue Name: String
  index, composition_issue_name = koscom_mdcsrealtime_koscom_exture_v1_20.composition_issue_name.dissect(buffer, index, packet, parent)

  -- Par Value Amount Cash Amount Converted Amount Krw: Long
  index, par_value_amount_cash_amount_converted_amount_krw = koscom_mdcsrealtime_koscom_exture_v1_20.par_value_amount_cash_amount_converted_amount_krw.dissect(buffer, index, packet, parent)

  -- Profit Distribution Basis Date: String
  index, profit_distribution_basis_date = koscom_mdcsrealtime_koscom_exture_v1_20.profit_distribution_basis_date.dissect(buffer, index, packet, parent)

  -- Appraised Value: Long
  index, appraised_value = koscom_mdcsrealtime_koscom_exture_v1_20.appraised_value.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_4.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Etp Pdf Message
koscom_mdcsrealtime_koscom_exture_v1_20.etp_pdf_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.etp_pdf_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_koscom_exture_v1_20.etp_pdf_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_koscom_exture_v1_20.etp_pdf_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_koscom_exture_v1_20.etp_pdf_message.fields(buffer, offset, packet, parent)
  end
end

-- Global Etf Tracking Error Message
koscom_mdcsrealtime_koscom_exture_v1_20.global_etf_tracking_error_message = {}

-- Size: Global Etf Tracking Error Message
koscom_mdcsrealtime_koscom_exture_v1_20.global_etf_tracking_error_message.size =
  koscom_mdcsrealtime_koscom_exture_v1_20.isin.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.seq_number.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.date.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.tracking_error.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.disparate_ratio_sign.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.disparate_ratio.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_7.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.size

-- Display: Global Etf Tracking Error Message
koscom_mdcsrealtime_koscom_exture_v1_20.global_etf_tracking_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Global Etf Tracking Error Message
koscom_mdcsrealtime_koscom_exture_v1_20.global_etf_tracking_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin: String
  index, isin = koscom_mdcsrealtime_koscom_exture_v1_20.isin.dissect(buffer, index, packet, parent)

  -- Seq Number: Long
  index, seq_number = koscom_mdcsrealtime_koscom_exture_v1_20.seq_number.dissect(buffer, index, packet, parent)

  -- Date: String
  index, date = koscom_mdcsrealtime_koscom_exture_v1_20.date.dissect(buffer, index, packet, parent)

  -- Tracking Error: Double
  index, tracking_error = koscom_mdcsrealtime_koscom_exture_v1_20.tracking_error.dissect(buffer, index, packet, parent)

  -- Disparate Ratio Sign: String
  index, disparate_ratio_sign = koscom_mdcsrealtime_koscom_exture_v1_20.disparate_ratio_sign.dissect(buffer, index, packet, parent)

  -- Disparate Ratio: Double
  index, disparate_ratio = koscom_mdcsrealtime_koscom_exture_v1_20.disparate_ratio.dissect(buffer, index, packet, parent)

  -- Filler 7: String
  index, filler_7 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_7.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Global Etf Tracking Error Message
koscom_mdcsrealtime_koscom_exture_v1_20.global_etf_tracking_error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.global_etf_tracking_error_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_koscom_exture_v1_20.global_etf_tracking_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_koscom_exture_v1_20.global_etf_tracking_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_koscom_exture_v1_20.global_etf_tracking_error_message.fields(buffer, offset, packet, parent)
  end
end

-- Etf Tracking Error Message
koscom_mdcsrealtime_koscom_exture_v1_20.etf_tracking_error_message = {}

-- Size: Etf Tracking Error Message
koscom_mdcsrealtime_koscom_exture_v1_20.etf_tracking_error_message.size =
  koscom_mdcsrealtime_koscom_exture_v1_20.isin.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.seq_number.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.date.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.tracking_error.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.disparate_ratio_sign.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.disparate_ratio.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_7.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.size

-- Display: Etf Tracking Error Message
koscom_mdcsrealtime_koscom_exture_v1_20.etf_tracking_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Etf Tracking Error Message
koscom_mdcsrealtime_koscom_exture_v1_20.etf_tracking_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin: String
  index, isin = koscom_mdcsrealtime_koscom_exture_v1_20.isin.dissect(buffer, index, packet, parent)

  -- Seq Number: Long
  index, seq_number = koscom_mdcsrealtime_koscom_exture_v1_20.seq_number.dissect(buffer, index, packet, parent)

  -- Date: String
  index, date = koscom_mdcsrealtime_koscom_exture_v1_20.date.dissect(buffer, index, packet, parent)

  -- Tracking Error: Double
  index, tracking_error = koscom_mdcsrealtime_koscom_exture_v1_20.tracking_error.dissect(buffer, index, packet, parent)

  -- Disparate Ratio Sign: String
  index, disparate_ratio_sign = koscom_mdcsrealtime_koscom_exture_v1_20.disparate_ratio_sign.dissect(buffer, index, packet, parent)

  -- Disparate Ratio: Double
  index, disparate_ratio = koscom_mdcsrealtime_koscom_exture_v1_20.disparate_ratio.dissect(buffer, index, packet, parent)

  -- Filler 7: String
  index, filler_7 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_7.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Etf Tracking Error Message
koscom_mdcsrealtime_koscom_exture_v1_20.etf_tracking_error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.etf_tracking_error_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_koscom_exture_v1_20.etf_tracking_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_koscom_exture_v1_20.etf_tracking_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_koscom_exture_v1_20.etf_tracking_error_message.fields(buffer, offset, packet, parent)
  end
end

-- Global Etf Inav Message
koscom_mdcsrealtime_koscom_exture_v1_20.global_etf_inav_message = {}

-- Size: Global Etf Inav Message
koscom_mdcsrealtime_koscom_exture_v1_20.global_etf_inav_message.size =
  koscom_mdcsrealtime_koscom_exture_v1_20.isin.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.time.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.previous_nav.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.during_marketfinal_nav.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_28.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.size

-- Display: Global Etf Inav Message
koscom_mdcsrealtime_koscom_exture_v1_20.global_etf_inav_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Global Etf Inav Message
koscom_mdcsrealtime_koscom_exture_v1_20.global_etf_inav_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin: String
  index, isin = koscom_mdcsrealtime_koscom_exture_v1_20.isin.dissect(buffer, index, packet, parent)

  -- Time: String
  index, time = koscom_mdcsrealtime_koscom_exture_v1_20.time.dissect(buffer, index, packet, parent)

  -- Previous Nav: Double
  index, previous_nav = koscom_mdcsrealtime_koscom_exture_v1_20.previous_nav.dissect(buffer, index, packet, parent)

  -- During Marketfinal Nav: Double
  index, during_marketfinal_nav = koscom_mdcsrealtime_koscom_exture_v1_20.during_marketfinal_nav.dissect(buffer, index, packet, parent)

  -- Filler 28: String
  index, filler_28 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_28.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Global Etf Inav Message
koscom_mdcsrealtime_koscom_exture_v1_20.global_etf_inav_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.global_etf_inav_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_koscom_exture_v1_20.global_etf_inav_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_koscom_exture_v1_20.global_etf_inav_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_koscom_exture_v1_20.global_etf_inav_message.fields(buffer, offset, packet, parent)
  end
end

-- Domestic Etf Estimated Inav Message
koscom_mdcsrealtime_koscom_exture_v1_20.domestic_etf_estimated_inav_message = {}

-- Size: Domestic Etf Estimated Inav Message
koscom_mdcsrealtime_koscom_exture_v1_20.domestic_etf_estimated_inav_message.size =
  koscom_mdcsrealtime_koscom_exture_v1_20.isin.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.time.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.previous_nav.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.during_marketfinal_market_nav.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_8.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.size

-- Display: Domestic Etf Estimated Inav Message
koscom_mdcsrealtime_koscom_exture_v1_20.domestic_etf_estimated_inav_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Domestic Etf Estimated Inav Message
koscom_mdcsrealtime_koscom_exture_v1_20.domestic_etf_estimated_inav_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin: String
  index, isin = koscom_mdcsrealtime_koscom_exture_v1_20.isin.dissect(buffer, index, packet, parent)

  -- Time: String
  index, time = koscom_mdcsrealtime_koscom_exture_v1_20.time.dissect(buffer, index, packet, parent)

  -- Previous Nav: Double
  index, previous_nav = koscom_mdcsrealtime_koscom_exture_v1_20.previous_nav.dissect(buffer, index, packet, parent)

  -- During Marketfinal Market Nav: Double
  index, during_marketfinal_market_nav = koscom_mdcsrealtime_koscom_exture_v1_20.during_marketfinal_market_nav.dissect(buffer, index, packet, parent)

  -- Filler 8: String
  index, filler_8 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_8.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Domestic Etf Estimated Inav Message
koscom_mdcsrealtime_koscom_exture_v1_20.domestic_etf_estimated_inav_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.domestic_etf_estimated_inav_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_koscom_exture_v1_20.domestic_etf_estimated_inav_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_koscom_exture_v1_20.domestic_etf_estimated_inav_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_koscom_exture_v1_20.domestic_etf_estimated_inav_message.fields(buffer, offset, packet, parent)
  end
end

-- Domestic Etf Inav Message
koscom_mdcsrealtime_koscom_exture_v1_20.domestic_etf_inav_message = {}

-- Size: Domestic Etf Inav Message
koscom_mdcsrealtime_koscom_exture_v1_20.domestic_etf_inav_message.size =
  koscom_mdcsrealtime_koscom_exture_v1_20.isin.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.time.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.previous_nav.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.during_marketfinal_nav.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_28.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.size

-- Display: Domestic Etf Inav Message
koscom_mdcsrealtime_koscom_exture_v1_20.domestic_etf_inav_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Domestic Etf Inav Message
koscom_mdcsrealtime_koscom_exture_v1_20.domestic_etf_inav_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin: String
  index, isin = koscom_mdcsrealtime_koscom_exture_v1_20.isin.dissect(buffer, index, packet, parent)

  -- Time: String
  index, time = koscom_mdcsrealtime_koscom_exture_v1_20.time.dissect(buffer, index, packet, parent)

  -- Previous Nav: Double
  index, previous_nav = koscom_mdcsrealtime_koscom_exture_v1_20.previous_nav.dissect(buffer, index, packet, parent)

  -- During Marketfinal Nav: Double
  index, during_marketfinal_nav = koscom_mdcsrealtime_koscom_exture_v1_20.during_marketfinal_nav.dissect(buffer, index, packet, parent)

  -- Filler 28: String
  index, filler_28 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_28.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Domestic Etf Inav Message
koscom_mdcsrealtime_koscom_exture_v1_20.domestic_etf_inav_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.domestic_etf_inav_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_koscom_exture_v1_20.domestic_etf_inav_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_koscom_exture_v1_20.domestic_etf_inav_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_koscom_exture_v1_20.domestic_etf_inav_message.fields(buffer, offset, packet, parent)
  end
end

-- Nicepni Bond Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.nicepni_bond_index_message = {}

-- Size: Nicepni Bond Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.nicepni_bond_index_message.size =
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_4.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.index_id.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.standard_date.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.standard_time.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.total_profit_index.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.clean_price_index.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.market_price_index.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.call_re_investment_index.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.zero_re_investment_index.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.futures_basis_price.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.average_duration_nullable.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.average_convexity.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.average_ytm.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.average_forward_ytm.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_1.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.size

-- Display: Nicepni Bond Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.nicepni_bond_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Nicepni Bond Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.nicepni_bond_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Filler 4: String
  index, filler_4 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_4.dissect(buffer, index, packet, parent)

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_koscom_exture_v1_20.index_id.dissect(buffer, index, packet, parent)

  -- Standard Date: String
  index, standard_date = koscom_mdcsrealtime_koscom_exture_v1_20.standard_date.dissect(buffer, index, packet, parent)

  -- Standard Time: String
  index, standard_time = koscom_mdcsrealtime_koscom_exture_v1_20.standard_time.dissect(buffer, index, packet, parent)

  -- Total Profit Index: Double
  index, total_profit_index = koscom_mdcsrealtime_koscom_exture_v1_20.total_profit_index.dissect(buffer, index, packet, parent)

  -- Clean Price Index: Double
  index, clean_price_index = koscom_mdcsrealtime_koscom_exture_v1_20.clean_price_index.dissect(buffer, index, packet, parent)

  -- Market Price Index: Double
  index, market_price_index = koscom_mdcsrealtime_koscom_exture_v1_20.market_price_index.dissect(buffer, index, packet, parent)

  -- Call Re Investment Index: Double
  index, call_re_investment_index = koscom_mdcsrealtime_koscom_exture_v1_20.call_re_investment_index.dissect(buffer, index, packet, parent)

  -- Zero Re Investment Index: Double
  index, zero_re_investment_index = koscom_mdcsrealtime_koscom_exture_v1_20.zero_re_investment_index.dissect(buffer, index, packet, parent)

  -- Futures Basis Price: Double
  index, futures_basis_price = koscom_mdcsrealtime_koscom_exture_v1_20.futures_basis_price.dissect(buffer, index, packet, parent)

  -- Average Duration Nullable: Double
  index, average_duration_nullable = koscom_mdcsrealtime_koscom_exture_v1_20.average_duration_nullable.dissect(buffer, index, packet, parent)

  -- Average Convexity: Double
  index, average_convexity = koscom_mdcsrealtime_koscom_exture_v1_20.average_convexity.dissect(buffer, index, packet, parent)

  -- Average Ytm: Double
  index, average_ytm = koscom_mdcsrealtime_koscom_exture_v1_20.average_ytm.dissect(buffer, index, packet, parent)

  -- Average Forward Ytm: Double
  index, average_forward_ytm = koscom_mdcsrealtime_koscom_exture_v1_20.average_forward_ytm.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_1.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Nicepni Bond Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.nicepni_bond_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.nicepni_bond_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_koscom_exture_v1_20.nicepni_bond_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_koscom_exture_v1_20.nicepni_bond_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_koscom_exture_v1_20.nicepni_bond_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Kabi Bond Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.kabi_bond_index_message = {}

-- Size: Kabi Bond Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.kabi_bond_index_message.size =
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_4.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.index_id.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.standard_date.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.standard_time.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.total_profit_index.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.clean_price_index.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.market_price_index.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.call_re_investment_index.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.zero_re_investment_index.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.futures_basis_price_nullable.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.average_duration.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.average_convexity.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.average_ytm.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.average_forward_ytm_nullable.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_1.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.size

-- Display: Kabi Bond Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.kabi_bond_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Kabi Bond Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.kabi_bond_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Filler 4: String
  index, filler_4 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_4.dissect(buffer, index, packet, parent)

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_koscom_exture_v1_20.index_id.dissect(buffer, index, packet, parent)

  -- Standard Date: String
  index, standard_date = koscom_mdcsrealtime_koscom_exture_v1_20.standard_date.dissect(buffer, index, packet, parent)

  -- Standard Time: String
  index, standard_time = koscom_mdcsrealtime_koscom_exture_v1_20.standard_time.dissect(buffer, index, packet, parent)

  -- Total Profit Index: Double
  index, total_profit_index = koscom_mdcsrealtime_koscom_exture_v1_20.total_profit_index.dissect(buffer, index, packet, parent)

  -- Clean Price Index: Double
  index, clean_price_index = koscom_mdcsrealtime_koscom_exture_v1_20.clean_price_index.dissect(buffer, index, packet, parent)

  -- Market Price Index: Double
  index, market_price_index = koscom_mdcsrealtime_koscom_exture_v1_20.market_price_index.dissect(buffer, index, packet, parent)

  -- Call Re Investment Index: Double
  index, call_re_investment_index = koscom_mdcsrealtime_koscom_exture_v1_20.call_re_investment_index.dissect(buffer, index, packet, parent)

  -- Zero Re Investment Index: Double
  index, zero_re_investment_index = koscom_mdcsrealtime_koscom_exture_v1_20.zero_re_investment_index.dissect(buffer, index, packet, parent)

  -- Futures Basis Price Nullable: Double
  index, futures_basis_price_nullable = koscom_mdcsrealtime_koscom_exture_v1_20.futures_basis_price_nullable.dissect(buffer, index, packet, parent)

  -- Average Duration: Double
  index, average_duration = koscom_mdcsrealtime_koscom_exture_v1_20.average_duration.dissect(buffer, index, packet, parent)

  -- Average Convexity: Double
  index, average_convexity = koscom_mdcsrealtime_koscom_exture_v1_20.average_convexity.dissect(buffer, index, packet, parent)

  -- Average Ytm: Double
  index, average_ytm = koscom_mdcsrealtime_koscom_exture_v1_20.average_ytm.dissect(buffer, index, packet, parent)

  -- Average Forward Ytm Nullable: Double
  index, average_forward_ytm_nullable = koscom_mdcsrealtime_koscom_exture_v1_20.average_forward_ytm_nullable.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_1.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Kabi Bond Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.kabi_bond_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.kabi_bond_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_koscom_exture_v1_20.kabi_bond_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_koscom_exture_v1_20.kabi_bond_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_koscom_exture_v1_20.kabi_bond_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Kebi Bond Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.kebi_bond_index_message = {}

-- Size: Kebi Bond Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.kebi_bond_index_message.size =
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_4.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.index_id.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.standard_date.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.standard_time.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.total_profit_index.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.clean_price_index.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.market_price_index.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.call_re_investment_index.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.zero_re_investment_index.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.futures_basis_price.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.average_duration_nullable.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.average_convexity.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.average_ytm.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.average_forward_ytm.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_1.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.size

-- Display: Kebi Bond Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.kebi_bond_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Kebi Bond Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.kebi_bond_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Filler 4: String
  index, filler_4 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_4.dissect(buffer, index, packet, parent)

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_koscom_exture_v1_20.index_id.dissect(buffer, index, packet, parent)

  -- Standard Date: String
  index, standard_date = koscom_mdcsrealtime_koscom_exture_v1_20.standard_date.dissect(buffer, index, packet, parent)

  -- Standard Time: String
  index, standard_time = koscom_mdcsrealtime_koscom_exture_v1_20.standard_time.dissect(buffer, index, packet, parent)

  -- Total Profit Index: Double
  index, total_profit_index = koscom_mdcsrealtime_koscom_exture_v1_20.total_profit_index.dissect(buffer, index, packet, parent)

  -- Clean Price Index: Double
  index, clean_price_index = koscom_mdcsrealtime_koscom_exture_v1_20.clean_price_index.dissect(buffer, index, packet, parent)

  -- Market Price Index: Double
  index, market_price_index = koscom_mdcsrealtime_koscom_exture_v1_20.market_price_index.dissect(buffer, index, packet, parent)

  -- Call Re Investment Index: Double
  index, call_re_investment_index = koscom_mdcsrealtime_koscom_exture_v1_20.call_re_investment_index.dissect(buffer, index, packet, parent)

  -- Zero Re Investment Index: Double
  index, zero_re_investment_index = koscom_mdcsrealtime_koscom_exture_v1_20.zero_re_investment_index.dissect(buffer, index, packet, parent)

  -- Futures Basis Price: Double
  index, futures_basis_price = koscom_mdcsrealtime_koscom_exture_v1_20.futures_basis_price.dissect(buffer, index, packet, parent)

  -- Average Duration Nullable: Double
  index, average_duration_nullable = koscom_mdcsrealtime_koscom_exture_v1_20.average_duration_nullable.dissect(buffer, index, packet, parent)

  -- Average Convexity: Double
  index, average_convexity = koscom_mdcsrealtime_koscom_exture_v1_20.average_convexity.dissect(buffer, index, packet, parent)

  -- Average Ytm: Double
  index, average_ytm = koscom_mdcsrealtime_koscom_exture_v1_20.average_ytm.dissect(buffer, index, packet, parent)

  -- Average Forward Ytm: Double
  index, average_forward_ytm = koscom_mdcsrealtime_koscom_exture_v1_20.average_forward_ytm.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_1.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Kebi Bond Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.kebi_bond_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.kebi_bond_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_koscom_exture_v1_20.kebi_bond_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_koscom_exture_v1_20.kebi_bond_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_koscom_exture_v1_20.kebi_bond_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Kis Bond Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.kis_bond_index_message = {}

-- Size: Kis Bond Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.kis_bond_index_message.size =
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_4.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.index_id.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.standard_date.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.standard_time.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.total_profit_index.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.clean_price_index.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.market_price_index.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.call_re_investment_index.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.zero_re_investment_index.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.futures_basis_price.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.average_duration.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.average_convexity.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.average_ytm.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.average_forward_ytm.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_1.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.size

-- Display: Kis Bond Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.kis_bond_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Kis Bond Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.kis_bond_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Filler 4: String
  index, filler_4 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_4.dissect(buffer, index, packet, parent)

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_koscom_exture_v1_20.index_id.dissect(buffer, index, packet, parent)

  -- Standard Date: String
  index, standard_date = koscom_mdcsrealtime_koscom_exture_v1_20.standard_date.dissect(buffer, index, packet, parent)

  -- Standard Time: String
  index, standard_time = koscom_mdcsrealtime_koscom_exture_v1_20.standard_time.dissect(buffer, index, packet, parent)

  -- Total Profit Index: Double
  index, total_profit_index = koscom_mdcsrealtime_koscom_exture_v1_20.total_profit_index.dissect(buffer, index, packet, parent)

  -- Clean Price Index: Double
  index, clean_price_index = koscom_mdcsrealtime_koscom_exture_v1_20.clean_price_index.dissect(buffer, index, packet, parent)

  -- Market Price Index: Double
  index, market_price_index = koscom_mdcsrealtime_koscom_exture_v1_20.market_price_index.dissect(buffer, index, packet, parent)

  -- Call Re Investment Index: Double
  index, call_re_investment_index = koscom_mdcsrealtime_koscom_exture_v1_20.call_re_investment_index.dissect(buffer, index, packet, parent)

  -- Zero Re Investment Index: Double
  index, zero_re_investment_index = koscom_mdcsrealtime_koscom_exture_v1_20.zero_re_investment_index.dissect(buffer, index, packet, parent)

  -- Futures Basis Price: Double
  index, futures_basis_price = koscom_mdcsrealtime_koscom_exture_v1_20.futures_basis_price.dissect(buffer, index, packet, parent)

  -- Average Duration: Double
  index, average_duration = koscom_mdcsrealtime_koscom_exture_v1_20.average_duration.dissect(buffer, index, packet, parent)

  -- Average Convexity: Double
  index, average_convexity = koscom_mdcsrealtime_koscom_exture_v1_20.average_convexity.dissect(buffer, index, packet, parent)

  -- Average Ytm: Double
  index, average_ytm = koscom_mdcsrealtime_koscom_exture_v1_20.average_ytm.dissect(buffer, index, packet, parent)

  -- Average Forward Ytm: Double
  index, average_forward_ytm = koscom_mdcsrealtime_koscom_exture_v1_20.average_forward_ytm.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_1.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Kis Bond Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.kis_bond_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.kis_bond_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_koscom_exture_v1_20.kis_bond_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_koscom_exture_v1_20.kis_bond_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_koscom_exture_v1_20.kis_bond_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Mkf Bond Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.mkf_bond_index_message = {}

-- Size: Mkf Bond Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.mkf_bond_index_message.size =
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_4.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.index_id.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.standard_date.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.standard_time.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.total_profit_index.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.clean_price_index.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.market_price_index.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.call_re_investment_index.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.zero_re_investment_index.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.futures_basis_price.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.average_duration_nullable.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.average_convexity.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.average_ytm.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.average_forward_ytm.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_1.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.size

-- Display: Mkf Bond Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.mkf_bond_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mkf Bond Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.mkf_bond_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Filler 4: String
  index, filler_4 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_4.dissect(buffer, index, packet, parent)

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_koscom_exture_v1_20.index_id.dissect(buffer, index, packet, parent)

  -- Standard Date: String
  index, standard_date = koscom_mdcsrealtime_koscom_exture_v1_20.standard_date.dissect(buffer, index, packet, parent)

  -- Standard Time: String
  index, standard_time = koscom_mdcsrealtime_koscom_exture_v1_20.standard_time.dissect(buffer, index, packet, parent)

  -- Total Profit Index: Double
  index, total_profit_index = koscom_mdcsrealtime_koscom_exture_v1_20.total_profit_index.dissect(buffer, index, packet, parent)

  -- Clean Price Index: Double
  index, clean_price_index = koscom_mdcsrealtime_koscom_exture_v1_20.clean_price_index.dissect(buffer, index, packet, parent)

  -- Market Price Index: Double
  index, market_price_index = koscom_mdcsrealtime_koscom_exture_v1_20.market_price_index.dissect(buffer, index, packet, parent)

  -- Call Re Investment Index: Double
  index, call_re_investment_index = koscom_mdcsrealtime_koscom_exture_v1_20.call_re_investment_index.dissect(buffer, index, packet, parent)

  -- Zero Re Investment Index: Double
  index, zero_re_investment_index = koscom_mdcsrealtime_koscom_exture_v1_20.zero_re_investment_index.dissect(buffer, index, packet, parent)

  -- Futures Basis Price: Double
  index, futures_basis_price = koscom_mdcsrealtime_koscom_exture_v1_20.futures_basis_price.dissect(buffer, index, packet, parent)

  -- Average Duration Nullable: Double
  index, average_duration_nullable = koscom_mdcsrealtime_koscom_exture_v1_20.average_duration_nullable.dissect(buffer, index, packet, parent)

  -- Average Convexity: Double
  index, average_convexity = koscom_mdcsrealtime_koscom_exture_v1_20.average_convexity.dissect(buffer, index, packet, parent)

  -- Average Ytm: Double
  index, average_ytm = koscom_mdcsrealtime_koscom_exture_v1_20.average_ytm.dissect(buffer, index, packet, parent)

  -- Average Forward Ytm: Double
  index, average_forward_ytm = koscom_mdcsrealtime_koscom_exture_v1_20.average_forward_ytm.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_1.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mkf Bond Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.mkf_bond_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.mkf_bond_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_koscom_exture_v1_20.mkf_bond_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_koscom_exture_v1_20.mkf_bond_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_koscom_exture_v1_20.mkf_bond_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Kis Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.kis_index_message = {}

-- Size: Kis Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.kis_index_message.size =
  koscom_mdcsrealtime_koscom_exture_v1_20.index_id.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.isin.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.time.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.index.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.sign.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.comparison.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.trading_volume.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.trading_value.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_4.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.size

-- Display: Kis Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.kis_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Kis Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.kis_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_koscom_exture_v1_20.index_id.dissect(buffer, index, packet, parent)

  -- Isin: String
  index, isin = koscom_mdcsrealtime_koscom_exture_v1_20.isin.dissect(buffer, index, packet, parent)

  -- Time: String
  index, time = koscom_mdcsrealtime_koscom_exture_v1_20.time.dissect(buffer, index, packet, parent)

  -- Index: Double
  index, index = koscom_mdcsrealtime_koscom_exture_v1_20.index.dissect(buffer, index, packet, parent)

  -- Sign: String
  index, sign = koscom_mdcsrealtime_koscom_exture_v1_20.sign.dissect(buffer, index, packet, parent)

  -- Comparison: Double
  index, comparison = koscom_mdcsrealtime_koscom_exture_v1_20.comparison.dissect(buffer, index, packet, parent)

  -- Trading Volume: Long
  index, trading_volume = koscom_mdcsrealtime_koscom_exture_v1_20.trading_volume.dissect(buffer, index, packet, parent)

  -- Trading Value: Long
  index, trading_value = koscom_mdcsrealtime_koscom_exture_v1_20.trading_value.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_4.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Kis Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.kis_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.kis_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_koscom_exture_v1_20.kis_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_koscom_exture_v1_20.kis_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_koscom_exture_v1_20.kis_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Wisefn Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.wisefn_index_message = {}

-- Size: Wisefn Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.wisefn_index_message.size =
  koscom_mdcsrealtime_koscom_exture_v1_20.index_id.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.isin.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.time.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.index.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.sign.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.comparison.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.trading_volume.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.trading_value.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_4.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.size

-- Display: Wisefn Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.wisefn_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Wisefn Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.wisefn_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_koscom_exture_v1_20.index_id.dissect(buffer, index, packet, parent)

  -- Isin: String
  index, isin = koscom_mdcsrealtime_koscom_exture_v1_20.isin.dissect(buffer, index, packet, parent)

  -- Time: String
  index, time = koscom_mdcsrealtime_koscom_exture_v1_20.time.dissect(buffer, index, packet, parent)

  -- Index: Double
  index, index = koscom_mdcsrealtime_koscom_exture_v1_20.index.dissect(buffer, index, packet, parent)

  -- Sign: String
  index, sign = koscom_mdcsrealtime_koscom_exture_v1_20.sign.dissect(buffer, index, packet, parent)

  -- Comparison: Double
  index, comparison = koscom_mdcsrealtime_koscom_exture_v1_20.comparison.dissect(buffer, index, packet, parent)

  -- Trading Volume: Long
  index, trading_volume = koscom_mdcsrealtime_koscom_exture_v1_20.trading_volume.dissect(buffer, index, packet, parent)

  -- Trading Value: Long
  index, trading_value = koscom_mdcsrealtime_koscom_exture_v1_20.trading_value.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_4.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Wisefn Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.wisefn_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.wisefn_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_koscom_exture_v1_20.wisefn_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_koscom_exture_v1_20.wisefn_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_koscom_exture_v1_20.wisefn_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Mkf Index Jpy Message
koscom_mdcsrealtime_koscom_exture_v1_20.mkf_index_jpy_message = {}

-- Size: Mkf Index Jpy Message
koscom_mdcsrealtime_koscom_exture_v1_20.mkf_index_jpy_message.size =
  koscom_mdcsrealtime_koscom_exture_v1_20.index_id.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.isin.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.time.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.index.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.sign.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.comparison.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.trading_volume.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.trading_value.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_4.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.size

-- Display: Mkf Index Jpy Message
koscom_mdcsrealtime_koscom_exture_v1_20.mkf_index_jpy_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mkf Index Jpy Message
koscom_mdcsrealtime_koscom_exture_v1_20.mkf_index_jpy_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_koscom_exture_v1_20.index_id.dissect(buffer, index, packet, parent)

  -- Isin: String
  index, isin = koscom_mdcsrealtime_koscom_exture_v1_20.isin.dissect(buffer, index, packet, parent)

  -- Time: String
  index, time = koscom_mdcsrealtime_koscom_exture_v1_20.time.dissect(buffer, index, packet, parent)

  -- Index: Double
  index, index = koscom_mdcsrealtime_koscom_exture_v1_20.index.dissect(buffer, index, packet, parent)

  -- Sign: String
  index, sign = koscom_mdcsrealtime_koscom_exture_v1_20.sign.dissect(buffer, index, packet, parent)

  -- Comparison: Double
  index, comparison = koscom_mdcsrealtime_koscom_exture_v1_20.comparison.dissect(buffer, index, packet, parent)

  -- Trading Volume: Long
  index, trading_volume = koscom_mdcsrealtime_koscom_exture_v1_20.trading_volume.dissect(buffer, index, packet, parent)

  -- Trading Value: Long
  index, trading_value = koscom_mdcsrealtime_koscom_exture_v1_20.trading_value.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_4.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mkf Index Jpy Message
koscom_mdcsrealtime_koscom_exture_v1_20.mkf_index_jpy_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.mkf_index_jpy_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_koscom_exture_v1_20.mkf_index_jpy_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_koscom_exture_v1_20.mkf_index_jpy_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_koscom_exture_v1_20.mkf_index_jpy_message.fields(buffer, offset, packet, parent)
  end
end

-- Mkf Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.mkf_index_message = {}

-- Size: Mkf Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.mkf_index_message.size =
  koscom_mdcsrealtime_koscom_exture_v1_20.index_id.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.isin.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.time.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.index.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.sign.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.comparison.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.trading_volume.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.trading_value.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_4.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.size

-- Display: Mkf Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.mkf_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mkf Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.mkf_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_koscom_exture_v1_20.index_id.dissect(buffer, index, packet, parent)

  -- Isin: String
  index, isin = koscom_mdcsrealtime_koscom_exture_v1_20.isin.dissect(buffer, index, packet, parent)

  -- Time: String
  index, time = koscom_mdcsrealtime_koscom_exture_v1_20.time.dissect(buffer, index, packet, parent)

  -- Index: Double
  index, index = koscom_mdcsrealtime_koscom_exture_v1_20.index.dissect(buffer, index, packet, parent)

  -- Sign: String
  index, sign = koscom_mdcsrealtime_koscom_exture_v1_20.sign.dissect(buffer, index, packet, parent)

  -- Comparison: Double
  index, comparison = koscom_mdcsrealtime_koscom_exture_v1_20.comparison.dissect(buffer, index, packet, parent)

  -- Trading Volume: Long
  index, trading_volume = koscom_mdcsrealtime_koscom_exture_v1_20.trading_volume.dissect(buffer, index, packet, parent)

  -- Trading Value: Long
  index, trading_value = koscom_mdcsrealtime_koscom_exture_v1_20.trading_value.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_4.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mkf Index Message
koscom_mdcsrealtime_koscom_exture_v1_20.mkf_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.mkf_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_koscom_exture_v1_20.mkf_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_koscom_exture_v1_20.mkf_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_koscom_exture_v1_20.mkf_index_message.fields(buffer, offset, packet, parent)
  end
end

-- K Bond Message
koscom_mdcsrealtime_koscom_exture_v1_20.k_bond_message = {}

-- Size: K Bond Message
koscom_mdcsrealtime_koscom_exture_v1_20.k_bond_message.size =
  koscom_mdcsrealtime_koscom_exture_v1_20.isin.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.data_small_category.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.data_source_type.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.sequence_number.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.original_sequence_number.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.replacement_type.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.previous_isin_of_replacement.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.input_date.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.quotes_offer_time.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.bond_type_name.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.change_category.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.market_data_type.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.profit_rate_quotes_trading.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.price_quotes_trading.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.contract_category.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.quotes_amount.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.contract_date.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.settlement_date_k_bond.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_11.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.size

-- Display: K Bond Message
koscom_mdcsrealtime_koscom_exture_v1_20.k_bond_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: K Bond Message
koscom_mdcsrealtime_koscom_exture_v1_20.k_bond_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin: String
  index, isin = koscom_mdcsrealtime_koscom_exture_v1_20.isin.dissect(buffer, index, packet, parent)

  -- Data Small Category: String
  index, data_small_category = koscom_mdcsrealtime_koscom_exture_v1_20.data_small_category.dissect(buffer, index, packet, parent)

  -- Data Source Type: String
  index, data_source_type = koscom_mdcsrealtime_koscom_exture_v1_20.data_source_type.dissect(buffer, index, packet, parent)

  -- Sequence Number: Long
  index, sequence_number = koscom_mdcsrealtime_koscom_exture_v1_20.sequence_number.dissect(buffer, index, packet, parent)

  -- Original Sequence Number: Long
  index, original_sequence_number = koscom_mdcsrealtime_koscom_exture_v1_20.original_sequence_number.dissect(buffer, index, packet, parent)

  -- Replacement Type: String
  index, replacement_type = koscom_mdcsrealtime_koscom_exture_v1_20.replacement_type.dissect(buffer, index, packet, parent)

  -- Previous Isin Of Replacement: Long
  index, previous_isin_of_replacement = koscom_mdcsrealtime_koscom_exture_v1_20.previous_isin_of_replacement.dissect(buffer, index, packet, parent)

  -- Input Date: String
  index, input_date = koscom_mdcsrealtime_koscom_exture_v1_20.input_date.dissect(buffer, index, packet, parent)

  -- Quotes Offer Time: String
  index, quotes_offer_time = koscom_mdcsrealtime_koscom_exture_v1_20.quotes_offer_time.dissect(buffer, index, packet, parent)

  -- Bond Type Name: String
  index, bond_type_name = koscom_mdcsrealtime_koscom_exture_v1_20.bond_type_name.dissect(buffer, index, packet, parent)

  -- Change Category: String
  index, change_category = koscom_mdcsrealtime_koscom_exture_v1_20.change_category.dissect(buffer, index, packet, parent)

  -- Market Data Type: String
  index, market_data_type = koscom_mdcsrealtime_koscom_exture_v1_20.market_data_type.dissect(buffer, index, packet, parent)

  -- Profit Rate Quotes Trading: Double
  index, profit_rate_quotes_trading = koscom_mdcsrealtime_koscom_exture_v1_20.profit_rate_quotes_trading.dissect(buffer, index, packet, parent)

  -- Price Quotes Trading: Double
  index, price_quotes_trading = koscom_mdcsrealtime_koscom_exture_v1_20.price_quotes_trading.dissect(buffer, index, packet, parent)

  -- Contract Category: String
  index, contract_category = koscom_mdcsrealtime_koscom_exture_v1_20.contract_category.dissect(buffer, index, packet, parent)

  -- Quotes Amount: String
  index, quotes_amount = koscom_mdcsrealtime_koscom_exture_v1_20.quotes_amount.dissect(buffer, index, packet, parent)

  -- Contract Date: String
  index, contract_date = koscom_mdcsrealtime_koscom_exture_v1_20.contract_date.dissect(buffer, index, packet, parent)

  -- Settlement Date K Bond: String
  index, settlement_date_k_bond = koscom_mdcsrealtime_koscom_exture_v1_20.settlement_date_k_bond.dissect(buffer, index, packet, parent)

  -- Filler 11: String
  index, filler_11 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_11.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: K Bond Message
koscom_mdcsrealtime_koscom_exture_v1_20.k_bond_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.k_bond_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_koscom_exture_v1_20.k_bond_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_koscom_exture_v1_20.k_bond_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_koscom_exture_v1_20.k_bond_message.fields(buffer, offset, packet, parent)
  end
end

-- Otc Bond Types Per Investor Message
koscom_mdcsrealtime_koscom_exture_v1_20.otc_bond_types_per_investor_message = {}

-- Size: Otc Bond Types Per Investor Message
koscom_mdcsrealtime_koscom_exture_v1_20.otc_bond_types_per_investor_message.size =
  koscom_mdcsrealtime_koscom_exture_v1_20.isin.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.sequence_number.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.trading_date.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.investor_category.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.ask_yield_investor.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.bid_yield_investor.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.ask_trading_volume_investor.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.bid_trading_volume_investor.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.ask_trading_value_investor.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.bid_trading_value_investor.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_2.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.size

-- Display: Otc Bond Types Per Investor Message
koscom_mdcsrealtime_koscom_exture_v1_20.otc_bond_types_per_investor_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Otc Bond Types Per Investor Message
koscom_mdcsrealtime_koscom_exture_v1_20.otc_bond_types_per_investor_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin: String
  index, isin = koscom_mdcsrealtime_koscom_exture_v1_20.isin.dissect(buffer, index, packet, parent)

  -- Sequence Number: Long
  index, sequence_number = koscom_mdcsrealtime_koscom_exture_v1_20.sequence_number.dissect(buffer, index, packet, parent)

  -- Trading Date: String
  index, trading_date = koscom_mdcsrealtime_koscom_exture_v1_20.trading_date.dissect(buffer, index, packet, parent)

  -- Investor Category: String
  index, investor_category = koscom_mdcsrealtime_koscom_exture_v1_20.investor_category.dissect(buffer, index, packet, parent)

  -- Ask Yield Investor: Double
  index, ask_yield_investor = koscom_mdcsrealtime_koscom_exture_v1_20.ask_yield_investor.dissect(buffer, index, packet, parent)

  -- Bid Yield Investor: Double
  index, bid_yield_investor = koscom_mdcsrealtime_koscom_exture_v1_20.bid_yield_investor.dissect(buffer, index, packet, parent)

  -- Ask Trading Volume Investor: Long
  index, ask_trading_volume_investor = koscom_mdcsrealtime_koscom_exture_v1_20.ask_trading_volume_investor.dissect(buffer, index, packet, parent)

  -- Bid Trading Volume Investor: Long
  index, bid_trading_volume_investor = koscom_mdcsrealtime_koscom_exture_v1_20.bid_trading_volume_investor.dissect(buffer, index, packet, parent)

  -- Ask Trading Value Investor: Long
  index, ask_trading_value_investor = koscom_mdcsrealtime_koscom_exture_v1_20.ask_trading_value_investor.dissect(buffer, index, packet, parent)

  -- Bid Trading Value Investor: Long
  index, bid_trading_value_investor = koscom_mdcsrealtime_koscom_exture_v1_20.bid_trading_value_investor.dissect(buffer, index, packet, parent)

  -- Filler 2: String
  index, filler_2 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_2.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Otc Bond Types Per Investor Message
koscom_mdcsrealtime_koscom_exture_v1_20.otc_bond_types_per_investor_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.otc_bond_types_per_investor_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_koscom_exture_v1_20.otc_bond_types_per_investor_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_koscom_exture_v1_20.otc_bond_types_per_investor_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_koscom_exture_v1_20.otc_bond_types_per_investor_message.fields(buffer, offset, packet, parent)
  end
end

-- Otc Bond Trades Per Institution Message
koscom_mdcsrealtime_koscom_exture_v1_20.otc_bond_trades_per_institution_message = {}

-- Size: Otc Bond Trades Per Institution Message
koscom_mdcsrealtime_koscom_exture_v1_20.otc_bond_trades_per_institution_message.size =
  koscom_mdcsrealtime_koscom_exture_v1_20.data_process_category.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.date.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.institution_code.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.bond_type_code.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.ask_yield_institution.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.ask_trading_volume_institution.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.ask_trading_value_institution.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.bid_yield_institution.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.bid_trading_volume_institution.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.bid_trading_value_institution.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_11.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.size

-- Display: Otc Bond Trades Per Institution Message
koscom_mdcsrealtime_koscom_exture_v1_20.otc_bond_trades_per_institution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Otc Bond Trades Per Institution Message
koscom_mdcsrealtime_koscom_exture_v1_20.otc_bond_trades_per_institution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Data Process Category: String
  index, data_process_category = koscom_mdcsrealtime_koscom_exture_v1_20.data_process_category.dissect(buffer, index, packet, parent)

  -- Date: String
  index, date = koscom_mdcsrealtime_koscom_exture_v1_20.date.dissect(buffer, index, packet, parent)

  -- Institution Code: String
  index, institution_code = koscom_mdcsrealtime_koscom_exture_v1_20.institution_code.dissect(buffer, index, packet, parent)

  -- Bond Type Code: String
  index, bond_type_code = koscom_mdcsrealtime_koscom_exture_v1_20.bond_type_code.dissect(buffer, index, packet, parent)

  -- Ask Yield Institution: Double
  index, ask_yield_institution = koscom_mdcsrealtime_koscom_exture_v1_20.ask_yield_institution.dissect(buffer, index, packet, parent)

  -- Ask Trading Volume Institution: Long
  index, ask_trading_volume_institution = koscom_mdcsrealtime_koscom_exture_v1_20.ask_trading_volume_institution.dissect(buffer, index, packet, parent)

  -- Ask Trading Value Institution: Long
  index, ask_trading_value_institution = koscom_mdcsrealtime_koscom_exture_v1_20.ask_trading_value_institution.dissect(buffer, index, packet, parent)

  -- Bid Yield Institution: Double
  index, bid_yield_institution = koscom_mdcsrealtime_koscom_exture_v1_20.bid_yield_institution.dissect(buffer, index, packet, parent)

  -- Bid Trading Volume Institution: Long
  index, bid_trading_volume_institution = koscom_mdcsrealtime_koscom_exture_v1_20.bid_trading_volume_institution.dissect(buffer, index, packet, parent)

  -- Bid Trading Value Institution: Long
  index, bid_trading_value_institution = koscom_mdcsrealtime_koscom_exture_v1_20.bid_trading_value_institution.dissect(buffer, index, packet, parent)

  -- Filler 11: String
  index, filler_11 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_11.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Otc Bond Trades Per Institution Message
koscom_mdcsrealtime_koscom_exture_v1_20.otc_bond_trades_per_institution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.otc_bond_trades_per_institution_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_koscom_exture_v1_20.otc_bond_trades_per_institution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_koscom_exture_v1_20.otc_bond_trades_per_institution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_koscom_exture_v1_20.otc_bond_trades_per_institution_message.fields(buffer, offset, packet, parent)
  end
end

-- Otc Bond Traded Info Message
koscom_mdcsrealtime_koscom_exture_v1_20.otc_bond_traded_info_message = {}

-- Size: Otc Bond Traded Info Message
koscom_mdcsrealtime_koscom_exture_v1_20.otc_bond_traded_info_message.size =
  koscom_mdcsrealtime_koscom_exture_v1_20.isin.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.subcategory.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.trading_date.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.registered_time.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.process_category.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.registered_number.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.originally_registered_number.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.trading_type_category.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.volume.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.pretax_unit_price.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.pretax_yield.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.settlement_date_otc.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.market_base_rate.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.fx_category.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.based_fx.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.trading_category.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.size

-- Display: Otc Bond Traded Info Message
koscom_mdcsrealtime_koscom_exture_v1_20.otc_bond_traded_info_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Otc Bond Traded Info Message
koscom_mdcsrealtime_koscom_exture_v1_20.otc_bond_traded_info_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin: String
  index, isin = koscom_mdcsrealtime_koscom_exture_v1_20.isin.dissect(buffer, index, packet, parent)

  -- Subcategory: String
  index, subcategory = koscom_mdcsrealtime_koscom_exture_v1_20.subcategory.dissect(buffer, index, packet, parent)

  -- Trading Date: String
  index, trading_date = koscom_mdcsrealtime_koscom_exture_v1_20.trading_date.dissect(buffer, index, packet, parent)

  -- Registered Time: String
  index, registered_time = koscom_mdcsrealtime_koscom_exture_v1_20.registered_time.dissect(buffer, index, packet, parent)

  -- Process Category: String
  index, process_category = koscom_mdcsrealtime_koscom_exture_v1_20.process_category.dissect(buffer, index, packet, parent)

  -- Registered Number: Long
  index, registered_number = koscom_mdcsrealtime_koscom_exture_v1_20.registered_number.dissect(buffer, index, packet, parent)

  -- Originally Registered Number: Long
  index, originally_registered_number = koscom_mdcsrealtime_koscom_exture_v1_20.originally_registered_number.dissect(buffer, index, packet, parent)

  -- Trading Type Category: String
  index, trading_type_category = koscom_mdcsrealtime_koscom_exture_v1_20.trading_type_category.dissect(buffer, index, packet, parent)

  -- Volume: Long
  index, volume = koscom_mdcsrealtime_koscom_exture_v1_20.volume.dissect(buffer, index, packet, parent)

  -- Pretax Unit Price: Double
  index, pretax_unit_price = koscom_mdcsrealtime_koscom_exture_v1_20.pretax_unit_price.dissect(buffer, index, packet, parent)

  -- Pretax Yield: Double
  index, pretax_yield = koscom_mdcsrealtime_koscom_exture_v1_20.pretax_yield.dissect(buffer, index, packet, parent)

  -- Settlement Date Otc: String
  index, settlement_date_otc = koscom_mdcsrealtime_koscom_exture_v1_20.settlement_date_otc.dissect(buffer, index, packet, parent)

  -- Market Base Rate: Double
  index, market_base_rate = koscom_mdcsrealtime_koscom_exture_v1_20.market_base_rate.dissect(buffer, index, packet, parent)

  -- Fx Category: String
  index, fx_category = koscom_mdcsrealtime_koscom_exture_v1_20.fx_category.dissect(buffer, index, packet, parent)

  -- Based Fx: Double
  index, based_fx = koscom_mdcsrealtime_koscom_exture_v1_20.based_fx.dissect(buffer, index, packet, parent)

  -- Trading Category: String
  index, trading_category = koscom_mdcsrealtime_koscom_exture_v1_20.trading_category.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Otc Bond Traded Info Message
koscom_mdcsrealtime_koscom_exture_v1_20.otc_bond_traded_info_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.otc_bond_traded_info_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_koscom_exture_v1_20.otc_bond_traded_info_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_koscom_exture_v1_20.otc_bond_traded_info_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_koscom_exture_v1_20.otc_bond_traded_info_message.fields(buffer, offset, packet, parent)
  end
end

-- K Otc Order Filled Message
koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_order_filled_message = {}

-- Size: K Otc Order Filled Message
koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_order_filled_message.size =
  koscom_mdcsrealtime_koscom_exture_v1_20.isin.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.data_seq_number.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.trading_number.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.trading_price.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.trading_volume.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.trading_time.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.ask_quote_number.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.bid_quote_number.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.high_price.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.low_price.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.weighted_average_stock_price.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.total_trading_accumulated_volume.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.total_trading_accumulated_value.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.total_remaining_quantity_of_ask.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.total_remaining_quantity_of_bid.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.best_ask_order.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.remaining_quantity_of_best_ask_order.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.best_bid_order.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.remaining_quantity_of_best_bid_order.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.compared_to_previous_day_type.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.compared_to_previous_day.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.trading_price_compare_remaining_quantity_of_ask.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.trading_price_compare_remaining_quantity_of_bid.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_40.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.size

-- Display: K Otc Order Filled Message
koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_order_filled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: K Otc Order Filled Message
koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_order_filled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin: String
  index, isin = koscom_mdcsrealtime_koscom_exture_v1_20.isin.dissect(buffer, index, packet, parent)

  -- Data Seq Number: Long
  index, data_seq_number = koscom_mdcsrealtime_koscom_exture_v1_20.data_seq_number.dissect(buffer, index, packet, parent)

  -- Trading Number: Long
  index, trading_number = koscom_mdcsrealtime_koscom_exture_v1_20.trading_number.dissect(buffer, index, packet, parent)

  -- Trading Price: Long
  index, trading_price = koscom_mdcsrealtime_koscom_exture_v1_20.trading_price.dissect(buffer, index, packet, parent)

  -- Trading Volume: Long
  index, trading_volume = koscom_mdcsrealtime_koscom_exture_v1_20.trading_volume.dissect(buffer, index, packet, parent)

  -- Trading Time: String
  index, trading_time = koscom_mdcsrealtime_koscom_exture_v1_20.trading_time.dissect(buffer, index, packet, parent)

  -- Ask Quote Number: Long
  index, ask_quote_number = koscom_mdcsrealtime_koscom_exture_v1_20.ask_quote_number.dissect(buffer, index, packet, parent)

  -- Bid Quote Number: Long
  index, bid_quote_number = koscom_mdcsrealtime_koscom_exture_v1_20.bid_quote_number.dissect(buffer, index, packet, parent)

  -- High Price: Long
  index, high_price = koscom_mdcsrealtime_koscom_exture_v1_20.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: Long
  index, low_price = koscom_mdcsrealtime_koscom_exture_v1_20.low_price.dissect(buffer, index, packet, parent)

  -- Weighted Average Stock Price: Long
  index, weighted_average_stock_price = koscom_mdcsrealtime_koscom_exture_v1_20.weighted_average_stock_price.dissect(buffer, index, packet, parent)

  -- Total Trading Accumulated Volume: Long
  index, total_trading_accumulated_volume = koscom_mdcsrealtime_koscom_exture_v1_20.total_trading_accumulated_volume.dissect(buffer, index, packet, parent)

  -- Total Trading Accumulated Value: Long
  index, total_trading_accumulated_value = koscom_mdcsrealtime_koscom_exture_v1_20.total_trading_accumulated_value.dissect(buffer, index, packet, parent)

  -- Total Remaining Quantity Of Ask: Long
  index, total_remaining_quantity_of_ask = koscom_mdcsrealtime_koscom_exture_v1_20.total_remaining_quantity_of_ask.dissect(buffer, index, packet, parent)

  -- Total Remaining Quantity Of Bid: Long
  index, total_remaining_quantity_of_bid = koscom_mdcsrealtime_koscom_exture_v1_20.total_remaining_quantity_of_bid.dissect(buffer, index, packet, parent)

  -- Best Ask Order: Long
  index, best_ask_order = koscom_mdcsrealtime_koscom_exture_v1_20.best_ask_order.dissect(buffer, index, packet, parent)

  -- Remaining Quantity Of Best Ask Order: Long
  index, remaining_quantity_of_best_ask_order = koscom_mdcsrealtime_koscom_exture_v1_20.remaining_quantity_of_best_ask_order.dissect(buffer, index, packet, parent)

  -- Best Bid Order: Long
  index, best_bid_order = koscom_mdcsrealtime_koscom_exture_v1_20.best_bid_order.dissect(buffer, index, packet, parent)

  -- Remaining Quantity Of Best Bid Order: Long
  index, remaining_quantity_of_best_bid_order = koscom_mdcsrealtime_koscom_exture_v1_20.remaining_quantity_of_best_bid_order.dissect(buffer, index, packet, parent)

  -- Compared To Previous Day Type: String
  index, compared_to_previous_day_type = koscom_mdcsrealtime_koscom_exture_v1_20.compared_to_previous_day_type.dissect(buffer, index, packet, parent)

  -- Compared To Previous Day: String
  index, compared_to_previous_day = koscom_mdcsrealtime_koscom_exture_v1_20.compared_to_previous_day.dissect(buffer, index, packet, parent)

  -- Trading Price Compare Remaining Quantity Of Ask: Long
  index, trading_price_compare_remaining_quantity_of_ask = koscom_mdcsrealtime_koscom_exture_v1_20.trading_price_compare_remaining_quantity_of_ask.dissect(buffer, index, packet, parent)

  -- Trading Price Compare Remaining Quantity Of Bid: Long
  index, trading_price_compare_remaining_quantity_of_bid = koscom_mdcsrealtime_koscom_exture_v1_20.trading_price_compare_remaining_quantity_of_bid.dissect(buffer, index, packet, parent)

  -- Filler 40: String
  index, filler_40 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_40.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: K Otc Order Filled Message
koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_order_filled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.k_otc_order_filled_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_order_filled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_order_filled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_order_filled_message.fields(buffer, offset, packet, parent)
  end
end

-- K Otc Quote Message
koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_quote_message = {}

-- Size: K Otc Quote Message
koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_quote_message.size =
  koscom_mdcsrealtime_koscom_exture_v1_20.isin.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.data_seq_number.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.process_type.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.quote_number.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.original_quote_number.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.original_quote_price.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.bidask_type.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.price.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.quantity.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.subscription_time.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.total_remaining_quantity_of_ask.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.total_remaining_quantity_of_bid.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.ask_best_order.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.remaining_quantity_of_ask_best_order.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.bid_best_order.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.remaining_quantity_of_bid_best_order.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.price_compare_remaining_quantity_of_order.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.original_price_compare_remaining_quantity_of_order.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.securities_company_number.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.branch_name.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_33.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.size

-- Display: K Otc Quote Message
koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: K Otc Quote Message
koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin: String
  index, isin = koscom_mdcsrealtime_koscom_exture_v1_20.isin.dissect(buffer, index, packet, parent)

  -- Data Seq Number: Long
  index, data_seq_number = koscom_mdcsrealtime_koscom_exture_v1_20.data_seq_number.dissect(buffer, index, packet, parent)

  -- Process Type: String
  index, process_type = koscom_mdcsrealtime_koscom_exture_v1_20.process_type.dissect(buffer, index, packet, parent)

  -- Quote Number: String
  index, quote_number = koscom_mdcsrealtime_koscom_exture_v1_20.quote_number.dissect(buffer, index, packet, parent)

  -- Original Quote Number: String
  index, original_quote_number = koscom_mdcsrealtime_koscom_exture_v1_20.original_quote_number.dissect(buffer, index, packet, parent)

  -- Original Quote Price: String
  index, original_quote_price = koscom_mdcsrealtime_koscom_exture_v1_20.original_quote_price.dissect(buffer, index, packet, parent)

  -- Bidask Type: String
  index, bidask_type = koscom_mdcsrealtime_koscom_exture_v1_20.bidask_type.dissect(buffer, index, packet, parent)

  -- Price: Long
  index, price = koscom_mdcsrealtime_koscom_exture_v1_20.price.dissect(buffer, index, packet, parent)

  -- Quantity: Long
  index, quantity = koscom_mdcsrealtime_koscom_exture_v1_20.quantity.dissect(buffer, index, packet, parent)

  -- Subscription Time: String
  index, subscription_time = koscom_mdcsrealtime_koscom_exture_v1_20.subscription_time.dissect(buffer, index, packet, parent)

  -- Total Remaining Quantity Of Ask: Long
  index, total_remaining_quantity_of_ask = koscom_mdcsrealtime_koscom_exture_v1_20.total_remaining_quantity_of_ask.dissect(buffer, index, packet, parent)

  -- Total Remaining Quantity Of Bid: Long
  index, total_remaining_quantity_of_bid = koscom_mdcsrealtime_koscom_exture_v1_20.total_remaining_quantity_of_bid.dissect(buffer, index, packet, parent)

  -- Ask Best Order: Long
  index, ask_best_order = koscom_mdcsrealtime_koscom_exture_v1_20.ask_best_order.dissect(buffer, index, packet, parent)

  -- Remaining Quantity Of Ask Best Order: Long
  index, remaining_quantity_of_ask_best_order = koscom_mdcsrealtime_koscom_exture_v1_20.remaining_quantity_of_ask_best_order.dissect(buffer, index, packet, parent)

  -- Bid Best Order: Long
  index, bid_best_order = koscom_mdcsrealtime_koscom_exture_v1_20.bid_best_order.dissect(buffer, index, packet, parent)

  -- Remaining Quantity Of Bid Best Order: Long
  index, remaining_quantity_of_bid_best_order = koscom_mdcsrealtime_koscom_exture_v1_20.remaining_quantity_of_bid_best_order.dissect(buffer, index, packet, parent)

  -- Price Compare Remaining Quantity Of Order: Long
  index, price_compare_remaining_quantity_of_order = koscom_mdcsrealtime_koscom_exture_v1_20.price_compare_remaining_quantity_of_order.dissect(buffer, index, packet, parent)

  -- Original Price Compare Remaining Quantity Of Order: Long
  index, original_price_compare_remaining_quantity_of_order = koscom_mdcsrealtime_koscom_exture_v1_20.original_price_compare_remaining_quantity_of_order.dissect(buffer, index, packet, parent)

  -- Securities Company Number: Long
  index, securities_company_number = koscom_mdcsrealtime_koscom_exture_v1_20.securities_company_number.dissect(buffer, index, packet, parent)

  -- Branch Name: String
  index, branch_name = koscom_mdcsrealtime_koscom_exture_v1_20.branch_name.dissect(buffer, index, packet, parent)

  -- Filler 33: String
  index, filler_33 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_33.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: K Otc Quote Message
koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.k_otc_quote_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- K Otc Market Action Message
koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_market_action_message = {}

-- Size: K Otc Market Action Message
koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_market_action_message.size =
  koscom_mdcsrealtime_koscom_exture_v1_20.isin_nullable.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.data_type.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.change_date.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.change_time.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.basis_price_before_action.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.upper_limit_price_before_action.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.lower_limit_price_before_action.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.basis_price_after_action.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.upper_limit_price_after_action.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.lower_limit_price_after_action.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_10.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.size

-- Display: K Otc Market Action Message
koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_market_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: K Otc Market Action Message
koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_market_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin Nullable: String
  index, isin_nullable = koscom_mdcsrealtime_koscom_exture_v1_20.isin_nullable.dissect(buffer, index, packet, parent)

  -- Data Type: String
  index, data_type = koscom_mdcsrealtime_koscom_exture_v1_20.data_type.dissect(buffer, index, packet, parent)

  -- Change Date: String
  index, change_date = koscom_mdcsrealtime_koscom_exture_v1_20.change_date.dissect(buffer, index, packet, parent)

  -- Change Time: String
  index, change_time = koscom_mdcsrealtime_koscom_exture_v1_20.change_time.dissect(buffer, index, packet, parent)

  -- Basis Price Before Action: Long
  index, basis_price_before_action = koscom_mdcsrealtime_koscom_exture_v1_20.basis_price_before_action.dissect(buffer, index, packet, parent)

  -- Upper Limit Price Before Action: Long
  index, upper_limit_price_before_action = koscom_mdcsrealtime_koscom_exture_v1_20.upper_limit_price_before_action.dissect(buffer, index, packet, parent)

  -- Lower Limit Price Before Action: Long
  index, lower_limit_price_before_action = koscom_mdcsrealtime_koscom_exture_v1_20.lower_limit_price_before_action.dissect(buffer, index, packet, parent)

  -- Basis Price After Action: Long
  index, basis_price_after_action = koscom_mdcsrealtime_koscom_exture_v1_20.basis_price_after_action.dissect(buffer, index, packet, parent)

  -- Upper Limit Price After Action: Long
  index, upper_limit_price_after_action = koscom_mdcsrealtime_koscom_exture_v1_20.upper_limit_price_after_action.dissect(buffer, index, packet, parent)

  -- Lower Limit Price After Action: Long
  index, lower_limit_price_after_action = koscom_mdcsrealtime_koscom_exture_v1_20.lower_limit_price_after_action.dissect(buffer, index, packet, parent)

  -- Filler 10: Long
  index, filler_10 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_10.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: K Otc Market Action Message
koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_market_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.k_otc_market_action_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_market_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_market_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_market_action_message.fields(buffer, offset, packet, parent)
  end
end

-- K Otc Market Operation Message
koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_market_operation_message = {}

-- Size: K Otc Market Operation Message
koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_market_operation_message.size =
  koscom_mdcsrealtime_koscom_exture_v1_20.isin.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.data_seq_number.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.type.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.reason.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_1.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.size

-- Display: K Otc Market Operation Message
koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_market_operation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: K Otc Market Operation Message
koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_market_operation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin: String
  index, isin = koscom_mdcsrealtime_koscom_exture_v1_20.isin.dissect(buffer, index, packet, parent)

  -- Data Seq Number: Long
  index, data_seq_number = koscom_mdcsrealtime_koscom_exture_v1_20.data_seq_number.dissect(buffer, index, packet, parent)

  -- Type: String
  index, type = koscom_mdcsrealtime_koscom_exture_v1_20.type.dissect(buffer, index, packet, parent)

  -- Reason: String
  index, reason = koscom_mdcsrealtime_koscom_exture_v1_20.reason.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_1.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: K Otc Market Operation Message
koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_market_operation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.k_otc_market_operation_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_market_operation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_market_operation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_market_operation_message.fields(buffer, offset, packet, parent)
  end
end

-- K Otc Issue Closing Message
koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_issue_closing_message = {}

-- Size: K Otc Issue Closing Message
koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_issue_closing_message.size =
  koscom_mdcsrealtime_koscom_exture_v1_20.isin.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.data_seq_number.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.closing_price.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.quotation_category.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.filler_4.size + 
  koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.size

-- Display: K Otc Issue Closing Message
koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_issue_closing_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: K Otc Issue Closing Message
koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_issue_closing_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin: String
  index, isin = koscom_mdcsrealtime_koscom_exture_v1_20.isin.dissect(buffer, index, packet, parent)

  -- Data Seq Number: Long
  index, data_seq_number = koscom_mdcsrealtime_koscom_exture_v1_20.data_seq_number.dissect(buffer, index, packet, parent)

  -- Closing Price: Long
  index, closing_price = koscom_mdcsrealtime_koscom_exture_v1_20.closing_price.dissect(buffer, index, packet, parent)

  -- Quotation Category: String
  index, quotation_category = koscom_mdcsrealtime_koscom_exture_v1_20.quotation_category.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = koscom_mdcsrealtime_koscom_exture_v1_20.filler_4.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_koscom_exture_v1_20.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: K Otc Issue Closing Message
koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_issue_closing_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20.fields.k_otc_issue_closing_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_issue_closing_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_issue_closing_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_issue_closing_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
koscom_mdcsrealtime_koscom_exture_v1_20.payload = {}

-- Dispatch: Payload
koscom_mdcsrealtime_koscom_exture_v1_20.payload.dispatch = {
  ["A6013"] = koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_issue_closing_message.dissect,
  ["A7013"] = koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_market_operation_message.dissect,
  ["G5013"] = koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_market_action_message.dissect,
  ["A2013"] = koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_quote_message.dissect,
  ["A3013"] = koscom_mdcsrealtime_koscom_exture_v1_20.k_otc_order_filled_message.dissect,
  ["J6077"] = koscom_mdcsrealtime_koscom_exture_v1_20.otc_bond_traded_info_message.dissect,
  ["J7077"] = koscom_mdcsrealtime_koscom_exture_v1_20.otc_bond_trades_per_institution_message.dissect,
  ["C1077"] = koscom_mdcsrealtime_koscom_exture_v1_20.otc_bond_types_per_investor_message.dissect,
  ["L9077"] = koscom_mdcsrealtime_koscom_exture_v1_20.k_bond_message.dissect,
  ["E2000"] = koscom_mdcsrealtime_koscom_exture_v1_20.mkf_index_message.dissect,
  ["O9000"] = koscom_mdcsrealtime_koscom_exture_v1_20.mkf_index_jpy_message.dissect,
  ["P3000"] = koscom_mdcsrealtime_koscom_exture_v1_20.wisefn_index_message.dissect,
  ["BP000"] = koscom_mdcsrealtime_koscom_exture_v1_20.kis_index_message.dissect,
  ["K0000"] = koscom_mdcsrealtime_koscom_exture_v1_20.mkf_bond_index_message.dissect,
  ["L6000"] = koscom_mdcsrealtime_koscom_exture_v1_20.kis_bond_index_message.dissect,
  ["K6000"] = koscom_mdcsrealtime_koscom_exture_v1_20.kebi_bond_index_message.dissect,
  ["Q6000"] = koscom_mdcsrealtime_koscom_exture_v1_20.kabi_bond_index_message.dissect,
  ["CE000"] = koscom_mdcsrealtime_koscom_exture_v1_20.nicepni_bond_index_message.dissect,
  ["BV03S"] = koscom_mdcsrealtime_koscom_exture_v1_20.domestic_etf_inav_message.dissect,
  ["BW03S"] = koscom_mdcsrealtime_koscom_exture_v1_20.domestic_etf_estimated_inav_message.dissect,
  ["L503S"] = koscom_mdcsrealtime_koscom_exture_v1_20.global_etf_inav_message.dissect,
  ["P603S"] = koscom_mdcsrealtime_koscom_exture_v1_20.etf_tracking_error_message.dissect,
  ["P703S"] = koscom_mdcsrealtime_koscom_exture_v1_20.global_etf_tracking_error_message.dissect,
  ["F803S"] = koscom_mdcsrealtime_koscom_exture_v1_20.etp_pdf_message.dissect,
  ["M803S"] = koscom_mdcsrealtime_koscom_exture_v1_20.etp_operator_information_message.dissect,
  ["M805S"] = koscom_mdcsrealtime_koscom_exture_v1_20.etp_operator_information_message.dissect,
  ["M801Q"] = koscom_mdcsrealtime_koscom_exture_v1_20.etp_operator_information_message.dissect,
  ["N803S"] = koscom_mdcsrealtime_koscom_exture_v1_20.etp_transfer_agent_batch_message.dissect,
  ["N805S"] = koscom_mdcsrealtime_koscom_exture_v1_20.etp_transfer_agent_batch_message.dissect,
  ["N801Q"] = koscom_mdcsrealtime_koscom_exture_v1_20.etp_transfer_agent_batch_message.dissect,
  ["Q403S"] = koscom_mdcsrealtime_koscom_exture_v1_20.etf_risk_appraisement_message.dissect,
  ["Q503S"] = koscom_mdcsrealtime_koscom_exture_v1_20.synthetic_etf_constituents_message.dissect,
  ["C702S"] = koscom_mdcsrealtime_koscom_exture_v1_20.elw_investment_indicator_sensitivity_message.dissect,
  ["S304S"] = koscom_mdcsrealtime_koscom_exture_v1_20.etn_iiv_message.dissect,
  ["X404S"] = koscom_mdcsrealtime_koscom_exture_v1_20.etn_disparate_ratio_message.dissect,
  ["CC000"] = koscom_mdcsrealtime_koscom_exture_v1_20.loan_transaction_available_quantity_message.dissect,
}

-- Dissect: Payload
koscom_mdcsrealtime_koscom_exture_v1_20.payload.dissect = function(buffer, offset, packet, parent, tr_code)
  local dissect = koscom_mdcsrealtime_koscom_exture_v1_20.payload.dispatch[tr_code]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Packet
koscom_mdcsrealtime_koscom_exture_v1_20.packet = {}

-- Verify required size of Udp packet
koscom_mdcsrealtime_koscom_exture_v1_20.packet.requiredsize = function(buffer)
  return buffer:len() >= koscom_mdcsrealtime_koscom_exture_v1_20.tr_code.size
end

-- Dissect Packet
koscom_mdcsrealtime_koscom_exture_v1_20.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Tr Code: String
    index, tr_code = koscom_mdcsrealtime_koscom_exture_v1_20.tr_code.dissect(buffer, index, packet, parent)

    -- Payload: Runtime Type with 32 branches
    index = koscom_mdcsrealtime_koscom_exture_v1_20.payload.dissect(buffer, index, packet, parent, tr_code)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_koscom_mdcsrealtime_koscom_exture_v1_20.init()
end

-- Dissector for Koscom MdcsRealtime Koscom Exture 1.20
function omi_koscom_mdcsrealtime_koscom_exture_v1_20.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_koscom_mdcsrealtime_koscom_exture_v1_20.name

  -- Dissect protocol
  local protocol = parent:add(omi_koscom_mdcsrealtime_koscom_exture_v1_20, buffer(), omi_koscom_mdcsrealtime_koscom_exture_v1_20.description, "("..buffer:len().." Bytes)")
  return koscom_mdcsrealtime_koscom_exture_v1_20.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Koscom MdcsRealtime Koscom Exture 1.20 (Udp)
local function omi_koscom_mdcsrealtime_koscom_exture_v1_20_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not koscom_mdcsrealtime_koscom_exture_v1_20.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_koscom_mdcsrealtime_koscom_exture_v1_20
  omi_koscom_mdcsrealtime_koscom_exture_v1_20.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Koscom MdcsRealtime Koscom Exture 1.20
omi_koscom_mdcsrealtime_koscom_exture_v1_20:register_heuristic("udp", omi_koscom_mdcsrealtime_koscom_exture_v1_20_udp_heuristic)

-- Register Koscom MdcsRealtime Koscom Exture 1.20 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_koscom_mdcsrealtime_koscom_exture_v1_20)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Koscom Co., Ltd.
--   Version: 1.20
--   Date: Thursday, May 26, 2022
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
