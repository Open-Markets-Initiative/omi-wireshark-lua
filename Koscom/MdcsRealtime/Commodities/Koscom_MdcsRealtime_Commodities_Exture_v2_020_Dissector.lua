-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Koscom MdcsRealtime Commodities Exture 2.020 Protocol
local omi_koscom_mdcsrealtime_commodities_exture_v2_020 = Proto("Omi.Koscom.MdcsRealtime.Commodities.Exture.v2.020", "Koscom MdcsRealtime Commodities Exture 2.020")

-- Protocol table
local koscom_mdcsrealtime_commodities_exture_v2_020 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Koscom MdcsRealtime Commodities Exture 2.020 Fields
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.a_designated_number_for_an_issue = ProtoField.new("A Designated Number For An Issue", "koscom.mdcsrealtime.commodities.exture.v2.020.adesignatednumberforanissue", ftypes.UINT24, nil, nil, nil, "A designated number for each issue on a daily basis - Market(Information Product) : KOSPI(Securities A, Securities C), KOSDAQ(Securities B), KONEX(Securities B), Derivatives(DRV A), Spot Gold(Commodit.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.a_representative_issue_to_calculate_base_price = ProtoField.new("A Representative Issue To Calculate Base Price", "koscom.mdcsrealtime.commodities.exture.v2.020.arepresentativeissuetocalculatebaseprice", ftypes.STRING, nil, nil, nil, "A Representative Issue to Calculate Base Price.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.abbreviated_issue_code = ProtoField.new("Abbreviated Issue Code", "koscom.mdcsrealtime.commodities.exture.v2.020.abbreviatedissuecode", ftypes.STRING, nil, nil, nil, "Abbreviated Issue Code.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.abbreviated_issue_name = ProtoField.new("Abbreviated Issue Name", "koscom.mdcsrealtime.commodities.exture.v2.020.abbreviatedissuename", ftypes.STRING, nil, nil, nil, "Abbreviated issue Name.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.abbreviated_issue_name_in_en = ProtoField.new("Abbreviated Issue Name In En", "koscom.mdcsrealtime.commodities.exture.v2.020.abbreviatedissuenameinen", ftypes.STRING, nil, nil, nil, "Abbreviated issue Name in EN.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.accumulated_cash = ProtoField.new("Accumulated Cash", "koscom.mdcsrealtime.commodities.exture.v2.020.accumulatedcash", ftypes.DOUBLE, nil, nil, nil, "Accumulated cash position (26 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.accumulated_trading_value = ProtoField.new("Accumulated Trading Value", "koscom.mdcsrealtime.commodities.exture.v2.020.accumulatedtradingvalue", ftypes.DOUBLE, nil, nil, nil, "Accumulated trading value Trading value=trading amount*trading price.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.accumulated_trading_volume = ProtoField.new("Accumulated Trading Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.accumulatedtradingvolume", ftypes.UINT64, nil, nil, nil, "Accumulated Trading Volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.an_issue_of_which_base_price_is_settled_with_a_todays_single_price = ProtoField.new("An Issue Of Which Base Price Is Settled With A Todays Single Price", "koscom.mdcsrealtime.commodities.exture.v2.020.anissueofwhichbasepriceissettledwithatodayssingleprice", ftypes.STRING, nil, nil, nil, "Y/N to an Issue of which base price is settled with a today's single price.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.appraisal_ratio_of_substitute_price = ProtoField.new("Appraisal Ratio Of Substitute Price", "koscom.mdcsrealtime.commodities.exture.v2.020.appraisalratioofsubstituteprice", ftypes.DOUBLE, nil, nil, nil, "Appraisal ratio of substitute price.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_1_price = ProtoField.new("Ask Level 1 Price", "koscom.mdcsrealtime.commodities.exture.v2.020.asklevel1price", ftypes.DOUBLE, nil, nil, nil, "The best ask.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_1_volume = ProtoField.new("Ask Level 1 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.asklevel1volume", ftypes.UINT64, nil, nil, nil, "The best ask volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_10_price = ProtoField.new("Ask Level 10 Price", "koscom.mdcsrealtime.commodities.exture.v2.020.asklevel10price", ftypes.DOUBLE, nil, nil, nil, "The tenth highest ask price.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_10_volume = ProtoField.new("Ask Level 10 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.asklevel10volume", ftypes.UINT64, nil, nil, nil, "The tenth highest ask volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_2_price = ProtoField.new("Ask Level 2 Price", "koscom.mdcsrealtime.commodities.exture.v2.020.asklevel2price", ftypes.DOUBLE, nil, nil, nil, "The second highest ask price.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_2_volume = ProtoField.new("Ask Level 2 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.asklevel2volume", ftypes.UINT64, nil, nil, nil, "The second highest ask volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_3_price = ProtoField.new("Ask Level 3 Price", "koscom.mdcsrealtime.commodities.exture.v2.020.asklevel3price", ftypes.DOUBLE, nil, nil, nil, "The third highest ask price.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_3_volume = ProtoField.new("Ask Level 3 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.asklevel3volume", ftypes.UINT64, nil, nil, nil, "The third highest ask volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_4_price = ProtoField.new("Ask Level 4 Price", "koscom.mdcsrealtime.commodities.exture.v2.020.asklevel4price", ftypes.DOUBLE, nil, nil, nil, "The fourth highest ask price.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_4_volume = ProtoField.new("Ask Level 4 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.asklevel4volume", ftypes.UINT64, nil, nil, nil, "The fourth highest ask volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_5_price = ProtoField.new("Ask Level 5 Price", "koscom.mdcsrealtime.commodities.exture.v2.020.asklevel5price", ftypes.DOUBLE, nil, nil, nil, "The fifth highest ask price.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_5_volume = ProtoField.new("Ask Level 5 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.asklevel5volume", ftypes.UINT64, nil, nil, nil, "The fifth highest ask volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_6_price = ProtoField.new("Ask Level 6 Price", "koscom.mdcsrealtime.commodities.exture.v2.020.asklevel6price", ftypes.DOUBLE, nil, nil, nil, "The sixth highest ask price.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_6_volume = ProtoField.new("Ask Level 6 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.asklevel6volume", ftypes.UINT64, nil, nil, nil, "The sixth highest ask volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_7_price = ProtoField.new("Ask Level 7 Price", "koscom.mdcsrealtime.commodities.exture.v2.020.asklevel7price", ftypes.DOUBLE, nil, nil, nil, "The seventh highest ask price.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_7_volume = ProtoField.new("Ask Level 7 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.asklevel7volume", ftypes.UINT64, nil, nil, nil, "The seventh highest ask volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_8_price = ProtoField.new("Ask Level 8 Price", "koscom.mdcsrealtime.commodities.exture.v2.020.asklevel8price", ftypes.DOUBLE, nil, nil, nil, "The eighth highest ask price.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_8_volume = ProtoField.new("Ask Level 8 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.asklevel8volume", ftypes.UINT64, nil, nil, nil, "The eighth highest ask volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_9_price = ProtoField.new("Ask Level 9 Price", "koscom.mdcsrealtime.commodities.exture.v2.020.asklevel9price", ftypes.DOUBLE, nil, nil, nil, "The ninth highest ask price.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_9_volume = ProtoField.new("Ask Level 9 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.asklevel9volume", ftypes.UINT64, nil, nil, nil, "The ninth highest ask volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_quote = ProtoField.new("Ask Quote", "koscom.mdcsrealtime.commodities.exture.v2.020.askquote", ftypes.STRING, nil, nil, nil, "999999V999 ex) : \" 1209855\".")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.auction_bid_volume = ProtoField.new("Auction Bid Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.auctionbidvolume", ftypes.UINT64, nil, nil, nil, "Auction_Bid Volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.auction_price = ProtoField.new("Auction Price", "koscom.mdcsrealtime.commodities.exture.v2.020.auctionprice", ftypes.DOUBLE, nil, nil, nil, "Auction Price.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.auction_volume = ProtoField.new("Auction Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.auctionvolume", ftypes.UINT64, nil, nil, nil, "Auction Volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.average_convexity = ProtoField.new("Average Convexity", "koscom.mdcsrealtime.commodities.exture.v2.020.averageconvexity", ftypes.DOUBLE, nil, nil, nil, "Average convexity across the index constituents (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.average_coupon_price = ProtoField.new("Average Coupon Price", "koscom.mdcsrealtime.commodities.exture.v2.020.averagecouponprice", ftypes.DOUBLE, nil, nil, nil, "Average coupon price (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.average_current_yield = ProtoField.new("Average Current Yield", "koscom.mdcsrealtime.commodities.exture.v2.020.averagecurrentyield", ftypes.DOUBLE, nil, nil, nil, "Average current yield (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.average_duration = ProtoField.new("Average Duration", "koscom.mdcsrealtime.commodities.exture.v2.020.averageduration", ftypes.DOUBLE, nil, nil, nil, "Average duration across the index constituents (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.average_forward_ytm = ProtoField.new("Average Forward Ytm", "koscom.mdcsrealtime.commodities.exture.v2.020.averageforwardytm", ftypes.DOUBLE, nil, nil, nil, "Average forward yield to maturity (7 ASCII digits with 3 implied decimal places). Unit: percent.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.average_remaining_maturity_price = ProtoField.new("Average Remaining Maturity Price", "koscom.mdcsrealtime.commodities.exture.v2.020.averageremainingmaturityprice", ftypes.DOUBLE, nil, nil, nil, "Average remaining maturity (16 ASCII digits with 6 implied decimal places). Unit: year.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.average_spread = ProtoField.new("Average Spread", "koscom.mdcsrealtime.commodities.exture.v2.020.averagespread", ftypes.DOUBLE, nil, nil, nil, "Magnitude of the average spread (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.average_spread_sign = ProtoField.new("Average Spread Sign", "koscom.mdcsrealtime.commodities.exture.v2.020.averagespreadsign", ftypes.STRING, nil, nil, nil, "Sign of the average spread. '+' ascended, ' ' unchanged, '-' declined.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.average_yld = ProtoField.new("Average Yld", "koscom.mdcsrealtime.commodities.exture.v2.020.averageyld", ftypes.DOUBLE, nil, nil, nil, "Average yield across the index constituents (16 ASCII digits with 6 implied decimal places). Unit: percent.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.average_ytm = ProtoField.new("Average Ytm", "koscom.mdcsrealtime.commodities.exture.v2.020.averageytm", ftypes.DOUBLE, nil, nil, nil, "Average yield to maturity (7 ASCII digits with 3 implied decimal places). Unit: percent.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.base_date = ProtoField.new("Base Date", "koscom.mdcsrealtime.commodities.exture.v2.020.basedate", ftypes.STRING, nil, nil, nil, "Base date for the index calculation in YYYYMMDD format.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.base_price = ProtoField.new("Base Price", "koscom.mdcsrealtime.commodities.exture.v2.020.baseprice", ftypes.DOUBLE, nil, nil, nil, "A base price of a day. A base price to calculate a upper/lower price.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.base_time = ProtoField.new("Base Time", "koscom.mdcsrealtime.commodities.exture.v2.020.basetime", ftypes.STRING, nil, nil, nil, "Base time for the index calculation in HHMMSS format.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.basis_price = ProtoField.new("Basis Price", "koscom.mdcsrealtime.commodities.exture.v2.020.basisprice", ftypes.DOUBLE, nil, nil, nil, "Basis price of the constituent (10 ASCII digits with 2 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_1_price = ProtoField.new("Bid Level 1 Price", "koscom.mdcsrealtime.commodities.exture.v2.020.bidlevel1price", ftypes.DOUBLE, nil, nil, nil, "The best bid.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_1_volume = ProtoField.new("Bid Level 1 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.bidlevel1volume", ftypes.UINT64, nil, nil, nil, "The best bid volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_10_price = ProtoField.new("Bid Level 10 Price", "koscom.mdcsrealtime.commodities.exture.v2.020.bidlevel10price", ftypes.DOUBLE, nil, nil, nil, "The tenth lowest bid price.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_10_volume = ProtoField.new("Bid Level 10 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.bidlevel10volume", ftypes.UINT64, nil, nil, nil, "The tenth lowest bid volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_2_price = ProtoField.new("Bid Level 2 Price", "koscom.mdcsrealtime.commodities.exture.v2.020.bidlevel2price", ftypes.DOUBLE, nil, nil, nil, "The second lowest bid price.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_2_volume = ProtoField.new("Bid Level 2 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.bidlevel2volume", ftypes.UINT64, nil, nil, nil, "The second lowest bid volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_3_price = ProtoField.new("Bid Level 3 Price", "koscom.mdcsrealtime.commodities.exture.v2.020.bidlevel3price", ftypes.DOUBLE, nil, nil, nil, "The third lowest bid price.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_3_volume = ProtoField.new("Bid Level 3 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.bidlevel3volume", ftypes.UINT64, nil, nil, nil, "The third lowest bid volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_4_price = ProtoField.new("Bid Level 4 Price", "koscom.mdcsrealtime.commodities.exture.v2.020.bidlevel4price", ftypes.DOUBLE, nil, nil, nil, "The fourth lowest bid price.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_4_volume = ProtoField.new("Bid Level 4 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.bidlevel4volume", ftypes.UINT64, nil, nil, nil, "The fourth lowest bid volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_5_price = ProtoField.new("Bid Level 5 Price", "koscom.mdcsrealtime.commodities.exture.v2.020.bidlevel5price", ftypes.DOUBLE, nil, nil, nil, "The fifth lowest bid price.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_5_volume = ProtoField.new("Bid Level 5 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.bidlevel5volume", ftypes.UINT64, nil, nil, nil, "The fifth lowest bid volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_6_price = ProtoField.new("Bid Level 6 Price", "koscom.mdcsrealtime.commodities.exture.v2.020.bidlevel6price", ftypes.DOUBLE, nil, nil, nil, "The sixth lowest bid price.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_6_volume = ProtoField.new("Bid Level 6 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.bidlevel6volume", ftypes.UINT64, nil, nil, nil, "The sixth lowest bid volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_7_price = ProtoField.new("Bid Level 7 Price", "koscom.mdcsrealtime.commodities.exture.v2.020.bidlevel7price", ftypes.DOUBLE, nil, nil, nil, "The seventh lowest bid price.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_7_volume = ProtoField.new("Bid Level 7 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.bidlevel7volume", ftypes.UINT64, nil, nil, nil, "The seventh lowest bid volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_8_price = ProtoField.new("Bid Level 8 Price", "koscom.mdcsrealtime.commodities.exture.v2.020.bidlevel8price", ftypes.DOUBLE, nil, nil, nil, "The eighth lowest bid price.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_8_volume = ProtoField.new("Bid Level 8 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.bidlevel8volume", ftypes.UINT64, nil, nil, nil, "The eighth lowest bid volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_9_price = ProtoField.new("Bid Level 9 Price", "koscom.mdcsrealtime.commodities.exture.v2.020.bidlevel9price", ftypes.DOUBLE, nil, nil, nil, "The ninth lowest bid price.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_9_volume = ProtoField.new("Bid Level 9 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.bidlevel9volume", ftypes.UINT64, nil, nil, nil, "The ninth lowest bid volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_quote = ProtoField.new("Bid Quote", "koscom.mdcsrealtime.commodities.exture.v2.020.bidquote", ftypes.STRING, nil, nil, nil, "999999V999 ex) : \" 1209855\".")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bidtocover_ratio = ProtoField.new("Bidtocover Ratio", "koscom.mdcsrealtime.commodities.exture.v2.020.bidtocoverratio", ftypes.DOUBLE, nil, nil, nil, "Bid-to-cover Ratio.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.block_trading_lower_limit_price = ProtoField.new("Block Trading Lower Limit Price", "koscom.mdcsrealtime.commodities.exture.v2.020.blocktradinglowerlimitprice", ftypes.DOUBLE, nil, nil, nil, "Lower Limit Price of Block Trading After hours.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.block_trading_upper_limit_price = ProtoField.new("Block Trading Upper Limit Price", "koscom.mdcsrealtime.commodities.exture.v2.020.blocktradingupperlimitprice", ftypes.DOUBLE, nil, nil, nil, "Upper Limit Price of Block Trading After hours.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.board_event_group_code = ProtoField.new("Board Event Group Code", "koscom.mdcsrealtime.commodities.exture.v2.020.boardeventgroupcode", ftypes.UINT24, nil, nil, nil, "Board Event Group Code (Bitwise operation) ▦▦ Code ▦▦ 1: A regular Issue (Not an issue on the last trading day) 2: An issue on the Last trading day 4: A regular issue (Not a discrete-time traded issue.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.board_event_id = ProtoField.new("Board Event Id", "koscom.mdcsrealtime.commodities.exture.v2.020.boardeventid", ftypes.STRING, nil, nil, nil, "An ID indicates an event that occurs on a Board in a designated time.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.board_id = ProtoField.new("Board Id", "koscom.mdcsrealtime.commodities.exture.v2.020.boardid", ftypes.STRING, nil, nil, nil, "The Board ID refers to each Board in which an issue is traded under different trading schedules and rules. Individual issue can be traded on more than two Boards under each Board's schedule and with d.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bond_index_id = ProtoField.new("Bond Index Id", "koscom.mdcsrealtime.commodities.exture.v2.020.bondindexid", ftypes.STRING, nil, nil, nil, "Bond index identifier. Examples: BGG01T (KTB Index), BGG03T (KTB 10Y Index).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.business_date = ProtoField.new("Business Date", "koscom.mdcsrealtime.commodities.exture.v2.020.businessdate", ftypes.STRING, nil, nil, nil, "Business Date.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.calculating_date = ProtoField.new("Calculating Date", "koscom.mdcsrealtime.commodities.exture.v2.020.calculatingdate", ftypes.STRING, nil, nil, nil, "Calculation date in YYYYMMDD format.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.calculating_time = ProtoField.new("Calculating Time", "koscom.mdcsrealtime.commodities.exture.v2.020.calculatingtime", ftypes.STRING, nil, nil, nil, "Calculation time in HHMMSS plus two trailing spaces.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.calculation_time = ProtoField.new("Calculation Time", "koscom.mdcsrealtime.commodities.exture.v2.020.calculationtime", ftypes.STRING, nil, nil, nil, "Index calculation time. During market hours: HHMMSS (time:min:sec). End of the regular session: final calculation timestamp.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.call_re_investment_index_weight = ProtoField.new("Call Re Investment Index Weight", "koscom.mdcsrealtime.commodities.exture.v2.020.callreinvestmentindexweight", ftypes.DOUBLE, nil, nil, nil, "Weighted call re-investment index value (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.call_reinvestment_index_krx = ProtoField.new("Call Re-Investment Index Krx", "koscom.mdcsrealtime.commodities.exture.v2.020.callreinvestmentindexkrx", ftypes.DOUBLE, nil, nil, nil, "Call re-investment index value (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.call_reinvestment_index_ktb = ProtoField.new("Call Re-Investment Index Ktb", "koscom.mdcsrealtime.commodities.exture.v2.020.callreinvestmentindexktb", ftypes.DOUBLE, nil, nil, nil, "Call re-investment index (11 ASCII digits with 4 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.cash_inflow = ProtoField.new("Cash Inflow", "koscom.mdcsrealtime.commodities.exture.v2.020.cashinflow", ftypes.DOUBLE, nil, nil, nil, "Cash inflow during the calculation period (26 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.change_from_previous_day = ProtoField.new("Change From Previous Day", "koscom.mdcsrealtime.commodities.exture.v2.020.changefrompreviousday", ftypes.STRING, nil, nil, nil, "999999V99 ex) : \" 1471\".")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.change_from_previous_day_sign = ProtoField.new("Change From Previous Day Sign", "koscom.mdcsrealtime.commodities.exture.v2.020.changefrompreviousdaysign", ftypes.STRING, nil, nil, nil, "+' : up ' ' : steady '-' : down.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.clean_price = ProtoField.new("Clean Price", "koscom.mdcsrealtime.commodities.exture.v2.020.cleanprice", ftypes.DOUBLE, nil, nil, nil, "Clean price of the constituent (10 ASCII digits with 2 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.clean_price_index_krx = ProtoField.new("Clean Price Index Krx", "koscom.mdcsrealtime.commodities.exture.v2.020.cleanpriceindexkrx", ftypes.DOUBLE, nil, nil, nil, "Clean price index value (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.clean_price_index_ktb = ProtoField.new("Clean Price Index Ktb", "koscom.mdcsrealtime.commodities.exture.v2.020.cleanpriceindexktb", ftypes.DOUBLE, nil, nil, nil, "Clean price index (11 ASCII digits with 4 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.clean_price_index_weight = ProtoField.new("Clean Price Index Weight", "koscom.mdcsrealtime.commodities.exture.v2.020.cleanpriceindexweight", ftypes.DOUBLE, nil, nil, nil, "Weighted clean price index value (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.closing_price = ProtoField.new("Closing Price", "koscom.mdcsrealtime.commodities.exture.v2.020.closingprice", ftypes.DOUBLE, nil, nil, nil, "Closing price on the day's regular session.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.closing_price_base_price_of_buy_in = ProtoField.new("Closing Price Base Price Of Buy In", "koscom.mdcsrealtime.commodities.exture.v2.020.closingpricebasepriceofbuyin", ftypes.DOUBLE, nil, nil, nil, "Closing Price_Base Price of Buy-In.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.closing_price_lower_limit_of_buy_in = ProtoField.new("Closing Price Lower Limit Of Buy In", "koscom.mdcsrealtime.commodities.exture.v2.020.closingpricelowerlimitofbuyin", ftypes.DOUBLE, nil, nil, nil, "Closing Price_Lower Limit of Buy-In.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.closing_price_type_code = ProtoField.new("Closing Price Type Code", "koscom.mdcsrealtime.commodities.exture.v2.020.closingpricetypecode", ftypes.STRING, nil, nil, nil, "1: Closing price 2: Quotation 3: No Trades 4: Quotation of an Issue of which base price is settled with a today's single price.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.closing_price_upper_limit_of_buy_in = ProtoField.new("Closing Price Upper Limit Of Buy In", "koscom.mdcsrealtime.commodities.exture.v2.020.closingpriceupperlimitofbuyin", ftypes.DOUBLE, nil, nil, nil, "Closing Price_Upper Limit of Buy-In.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.closing_price_weighted_stock_price_average = ProtoField.new("Closing Price Weighted Stock Price Average", "koscom.mdcsrealtime.commodities.exture.v2.020.closingpriceweightedstockpriceaverage", ftypes.DOUBLE, nil, nil, nil, "- Weighted Average is calculated by adding up an issue's aggregated market value, which is part of a certain index or markets, and dividing it with the total shares listed. - Weighted Stock Price Aver.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.conversion_basic_exchange_rate = ProtoField.new("Conversion Basic Exchange Rate", "koscom.mdcsrealtime.commodities.exture.v2.020.conversionbasicexchangerate", ftypes.STRING, nil, nil, nil, "Provided only in case of \"USDKRW\" - GOLDKRWGR ex) : \" 1209855\".")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.convexity = ProtoField.new("Convexity", "koscom.mdcsrealtime.commodities.exture.v2.020.convexity", ftypes.DOUBLE, nil, nil, nil, "Bond index average convexity (7 ASCII digits with 3 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.currency_code = ProtoField.new("Currency Code", "koscom.mdcsrealtime.commodities.exture.v2.020.currencycode", ftypes.STRING, nil, nil, nil, "Provided only in case of \"USDKRW\" - GOLDKRWGR.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.current_price = ProtoField.new("Current Price", "koscom.mdcsrealtime.commodities.exture.v2.020.currentprice", ftypes.DOUBLE, nil, nil, nil, "The last traded price at the current page.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.current_time = ProtoField.new("Current Time", "koscom.mdcsrealtime.commodities.exture.v2.020.currenttime", ftypes.STRING, nil, nil, nil, "Current time in HHMM format, transmitted at one-minute intervals.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.data_type = ProtoField.new("Data Type", "koscom.mdcsrealtime.commodities.exture.v2.020.datatype", ftypes.STRING, nil, nil, nil, "1 : Real-Time 2 : Closing price.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.delisting_date = ProtoField.new("Delisting Date", "koscom.mdcsrealtime.commodities.exture.v2.020.delistingdate", ftypes.STRING, nil, nil, nil, "Delisting date for Issues (Spot: the next of a last trading date, Derv: the last payment date).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.duration = ProtoField.new("Duration", "koscom.mdcsrealtime.commodities.exture.v2.020.duration", ftypes.DOUBLE, nil, nil, nil, "Bond index average duration (7 ASCII digits with 3 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.end_keyword = ProtoField.new("End Keyword", "koscom.mdcsrealtime.commodities.exture.v2.020.endkeyword", ftypes.UINT8, nil, nil, nil, "End of text sentinel (0xFF).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.english_issue_name = ProtoField.new("English Issue Name", "koscom.mdcsrealtime.commodities.exture.v2.020.englishissuename", ftypes.STRING, nil, nil, nil, "English Issue Name.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.estimated_trading_price = ProtoField.new("Estimated Trading Price", "koscom.mdcsrealtime.commodities.exture.v2.020.estimatedtradingprice", ftypes.DOUBLE, nil, nil, nil, "An estimated trading price before the single price trade session.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.estimated_trading_volume = ProtoField.new("Estimated Trading Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.estimatedtradingvolume", ftypes.UINT64, nil, nil, nil, "An estimated trading volume before the single price trade session.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.expected_time_of_expanding_price_limit_range = ProtoField.new("Expected Time Of Expanding Price Limit Range", "koscom.mdcsrealtime.commodities.exture.v2.020.expectedtimeofexpandingpricelimitrange", ftypes.STRING, nil, nil, nil, "Expected Time of Expanding Price Limit Range.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.filler_11 = ProtoField.new("Filler 11", "koscom.mdcsrealtime.commodities.exture.v2.020.filler11", ftypes.DOUBLE, nil, nil, nil, "Upper Limit Price on the Single Price Trade in the Off-Hours Session.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.filler_4 = ProtoField.new("Filler 4", "koscom.mdcsrealtime.commodities.exture.v2.020.filler4", ftypes.STRING, nil, nil, nil, "Reserved filler. Always 4 ASCII space characters.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.final_ask_bid_type_code = ProtoField.new("Final Ask Bid Type Code", "koscom.mdcsrealtime.commodities.exture.v2.020.finalaskbidtypecode", ftypes.STRING, nil, nil, nil, "Ask/Bid Type Code space: order filled with single price 0: N/A 1: ASK 2: BID.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.fluctuating_rate = ProtoField.new("Fluctuating Rate", "koscom.mdcsrealtime.commodities.exture.v2.020.fluctuatingrate", ftypes.STRING, nil, nil, nil, "+999999V99 ex1) +1% = \" +100\" ex2) : -1% = \" -100\" ex3) : 0% = \" 0\".")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.futures_basis_price = ProtoField.new("Futures Basis Price", "koscom.mdcsrealtime.commodities.exture.v2.020.futuresbasisprice", ftypes.DOUBLE, nil, nil, nil, "Futures basis price (10 ASCII digits with 2 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.group_code = ProtoField.new("Group Code", "koscom.mdcsrealtime.commodities.exture.v2.020.groupcode", ftypes.STRING, nil, nil, nil, "Bond Prime Index Group Code. JA000 group identifier; check the TR-CODE for the specific group.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.high_price = ProtoField.new("High Price", "koscom.mdcsrealtime.commodities.exture.v2.020.highprice", ftypes.STRING, nil, nil, nil, "999999V999 ex) : \" 1209855\".")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.index = ProtoField.new("Index", "koscom.mdcsrealtime.commodities.exture.v2.020.index", ftypes.DOUBLE, nil, nil, nil, "Current index value (9 ASCII digits with 2 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.index_change_against_the_previous_day = ProtoField.new("Index Change Against The Previous Day", "koscom.mdcsrealtime.commodities.exture.v2.020.indexchangeagainstthepreviousday", ftypes.DOUBLE, nil, nil, nil, "Magnitude of the index change against the previous day (9 ASCII digits with 2 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.index_change_sign_against_the_previous_day = ProtoField.new("Index Change Sign Against The Previous Day", "koscom.mdcsrealtime.commodities.exture.v2.020.indexchangesignagainstthepreviousday", ftypes.STRING, nil, nil, nil, "Sign of the index change against the previous day. '+' ascended, ' ' unchanged, '-' declined.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.index_constituent = ProtoField.new("Index Constituent", "koscom.mdcsrealtime.commodities.exture.v2.020.indexconstituent", ftypes.STRING, nil, nil, nil, "Flag identifying whether the security is included in the index. '0' securities are included in the ETF but not in the Index; '1' securities are included in the Index.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.index_id = ProtoField.new("Index Id", "koscom.mdcsrealtime.commodities.exture.v2.020.indexid", ftypes.STRING, nil, nil, nil, "Index identifier. Refer to Code Table sheet \"Index List by Contracts (Real-Time)\".")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.index_market_capitalization = ProtoField.new("Index Market Capitalization", "koscom.mdcsrealtime.commodities.exture.v2.020.indexmarketcapitalization", ftypes.UINT64, nil, nil, nil, "Total market capitalization of the index constituents (20 ASCII digits). Unit: KRW.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.index_number_of_securities = ProtoField.new("Index Number Of Securities", "koscom.mdcsrealtime.commodities.exture.v2.020.indexnumberofsecurities", ftypes.UINT32, nil, nil, nil, "Number of constituent securities included in the index (8 ASCII digits).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.isin_code = ProtoField.new("Isin Code", "koscom.mdcsrealtime.commodities.exture.v2.020.isincode", ftypes.STRING, nil, nil, nil, "ISIN Code.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.isin_code_of_a_common_stock = ProtoField.new("Isin Code Of A Common Stock", "koscom.mdcsrealtime.commodities.exture.v2.020.isincodeofacommonstock", ftypes.STRING, nil, nil, nil, "ISIN code of a Common Stock.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.issue_name = ProtoField.new("Issue Name", "koscom.mdcsrealtime.commodities.exture.v2.020.issuename", ftypes.STRING, nil, nil, nil, "Issue Name.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.issued_amount = ProtoField.new("Issued Amount", "koscom.mdcsrealtime.commodities.exture.v2.020.issuedamount", ftypes.UINT64, nil, nil, nil, "Total issued amount across constituents (20 ASCII digits). Unit: KRW.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.issued_amount_weight = ProtoField.new("Issued Amount Weight", "koscom.mdcsrealtime.commodities.exture.v2.020.issuedamountweight", ftypes.DOUBLE, nil, nil, nil, "Weighted issued amount (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.job_code_symbol = ProtoField.new("Job Code Symbol", "koscom.mdcsrealtime.commodities.exture.v2.020.jobcodesymbol", ftypes.STRING, nil, nil, nil, "\"GOLDUSDOZ \" or \"GOLDKRWGR \".")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.listing_date = ProtoField.new("Listing Date", "koscom.mdcsrealtime.commodities.exture.v2.020.listingdate", ftypes.STRING, nil, nil, nil, "Listing Date of derivatives(CLASS) or issues.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.low_price = ProtoField.new("Low Price", "koscom.mdcsrealtime.commodities.exture.v2.020.lowprice", ftypes.STRING, nil, nil, nil, "999999V999 ex) : \" 1209855\".")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lower_limit_of_base_price = ProtoField.new("Lower Limit Of Base Price", "koscom.mdcsrealtime.commodities.exture.v2.020.lowerlimitofbaseprice", ftypes.DOUBLE, nil, nil, nil, "Lower Price of Base Price.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lower_limit_price = ProtoField.new("Lower Limit Price", "koscom.mdcsrealtime.commodities.exture.v2.020.lowerlimitprice", ftypes.DOUBLE, nil, nil, nil, "A price subtracting the price limit from the base price.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_ask_level_1_volume = ProtoField.new("Lp Ask Level 1 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.lpasklevel1volume", ftypes.UINT64, nil, nil, nil, "LP_The best ask volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_ask_level_10_volume = ProtoField.new("Lp Ask Level 10 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.lpasklevel10volume", ftypes.UINT64, nil, nil, nil, "LP_The tenth highest ask volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_ask_level_2_volume = ProtoField.new("Lp Ask Level 2 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.lpasklevel2volume", ftypes.UINT64, nil, nil, nil, "LP_The second highest ask volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_ask_level_3_volume = ProtoField.new("Lp Ask Level 3 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.lpasklevel3volume", ftypes.UINT64, nil, nil, nil, "LP_The third highest ask volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_ask_level_4_volume = ProtoField.new("Lp Ask Level 4 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.lpasklevel4volume", ftypes.UINT64, nil, nil, nil, "LP_The fourth highest ask volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_ask_level_5_volume = ProtoField.new("Lp Ask Level 5 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.lpasklevel5volume", ftypes.UINT64, nil, nil, nil, "LP_The fifth highest ask volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_ask_level_6_volume = ProtoField.new("Lp Ask Level 6 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.lpasklevel6volume", ftypes.UINT64, nil, nil, nil, "LP_The sixth highest ask volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_ask_level_7_volume = ProtoField.new("Lp Ask Level 7 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.lpasklevel7volume", ftypes.UINT64, nil, nil, nil, "LP_The seventh highest ask volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_ask_level_8_volume = ProtoField.new("Lp Ask Level 8 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.lpasklevel8volume", ftypes.UINT64, nil, nil, nil, "LP_The eighth highest ask volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_ask_level_9_volume = ProtoField.new("Lp Ask Level 9 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.lpasklevel9volume", ftypes.UINT64, nil, nil, nil, "LP_The ninth highest ask volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_bid_level_1_volume = ProtoField.new("Lp Bid Level 1 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.lpbidlevel1volume", ftypes.UINT64, nil, nil, nil, "LP_The best bid volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_bid_level_10_volume = ProtoField.new("Lp Bid Level 10 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.lpbidlevel10volume", ftypes.UINT64, nil, nil, nil, "LP_The tenth lowest bid volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_bid_level_2_volume = ProtoField.new("Lp Bid Level 2 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.lpbidlevel2volume", ftypes.UINT64, nil, nil, nil, "LP_The second lowest bid volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_bid_level_3_volume = ProtoField.new("Lp Bid Level 3 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.lpbidlevel3volume", ftypes.UINT64, nil, nil, nil, "LP_The third lowest bid volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_bid_level_4_volume = ProtoField.new("Lp Bid Level 4 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.lpbidlevel4volume", ftypes.UINT64, nil, nil, nil, "LP_The fourth lowest bid volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_bid_level_5_volume = ProtoField.new("Lp Bid Level 5 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.lpbidlevel5volume", ftypes.UINT64, nil, nil, nil, "LP_The fifth lowest bid volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_bid_level_6_volume = ProtoField.new("Lp Bid Level 6 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.lpbidlevel6volume", ftypes.UINT64, nil, nil, nil, "LP_The sixth lowest bid volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_bid_level_7_volume = ProtoField.new("Lp Bid Level 7 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.lpbidlevel7volume", ftypes.UINT64, nil, nil, nil, "LP_The seventh lowest bid volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_bid_level_8_volume = ProtoField.new("Lp Bid Level 8 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.lpbidlevel8volume", ftypes.UINT64, nil, nil, nil, "LP_The eighth lowest bid volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_bid_level_9_volume = ProtoField.new("Lp Bid Level 9 Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.lpbidlevel9volume", ftypes.UINT64, nil, nil, nil, "LP_The ninth lowest bid volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_holding_quantity = ProtoField.new("Lp Holding Quantity", "koscom.mdcsrealtime.commodities.exture.v2.020.lpholdingquantity", ftypes.UINT64, nil, nil, nil, "LP holding quantity per each account.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.market_capitalization_weight = ProtoField.new("Market Capitalization Weight", "koscom.mdcsrealtime.commodities.exture.v2.020.marketcapitalizationweight", ftypes.DOUBLE, nil, nil, nil, "Weighted market capitalization (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.market_id = ProtoField.new("Market Id", "koscom.mdcsrealtime.commodities.exture.v2.020.marketid", ftypes.STRING, nil, nil, nil, "Market ID (KOSPI, KOSDAQ, Index Derivatives, Equities Derivatives, Bonds Derivatives etc.).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.market_operation_product_id = ProtoField.new("Market Operation Product Id", "koscom.mdcsrealtime.commodities.exture.v2.020.marketoperationproductid", ftypes.STRING, nil, nil, nil, "The ID refers to a group of products that are traded with the same trading schedule control.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.market_price_index_krx = ProtoField.new("Market Price Index Krx", "koscom.mdcsrealtime.commodities.exture.v2.020.marketpriceindexkrx", ftypes.DOUBLE, nil, nil, nil, "Market price index value (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.market_price_index_ktb = ProtoField.new("Market Price Index Ktb", "koscom.mdcsrealtime.commodities.exture.v2.020.marketpriceindexktb", ftypes.DOUBLE, nil, nil, nil, "Market price index (11 ASCII digits with 4 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.market_price_index_weight = ProtoField.new("Market Price Index Weight", "koscom.mdcsrealtime.commodities.exture.v2.020.marketpriceindexweight", ftypes.DOUBLE, nil, nil, nil, "Weighted market price index value (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.maturity_code = ProtoField.new("Maturity Code", "koscom.mdcsrealtime.commodities.exture.v2.020.maturitycode", ftypes.STRING, nil, nil, nil, "Bond Prime Index Maturity Code. JA000 maturity identifier; check the TR-CODE for the specific maturity bucket.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "koscom.mdcsrealtime.commodities.exture.v2.020.messagesequencenumber", ftypes.UINT32, nil, nil, nil, "A message sequence number given by Market data team - Market data: seq number is given by instruments and boards (※ only for high-bandwidth service) - Batch Data: seq number is given by Information Ca.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.negotiated_block_trade_trading_value = ProtoField.new("Negotiated Block Trade Trading Value", "koscom.mdcsrealtime.commodities.exture.v2.020.negotiatedblocktradetradingvalue", ftypes.DOUBLE, nil, nil, nil, "Negotiated Block Trade_Trading Value.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.negotiated_block_trade_trading_volume = ProtoField.new("Negotiated Block Trade Trading Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.negotiatedblocktradetradingvolume", ftypes.UINT64, nil, nil, nil, "Negotiated Block Trade_Trading Volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.negotiated_trade_accumulated_trading_value = ProtoField.new("Negotiated Trade Accumulated Trading Value", "koscom.mdcsrealtime.commodities.exture.v2.020.negotiatedtradeaccumulatedtradingvalue", ftypes.DOUBLE, nil, nil, nil, "Negotiated Trade_Accumulated Trading value.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.negotiated_trade_accumulated_trading_volume = ProtoField.new("Negotiated Trade Accumulated Trading Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.negotiatedtradeaccumulatedtradingvolume", ftypes.UINT64, nil, nil, nil, "Negotiated Trade_Accumulated Trading volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.number_of_bidders = ProtoField.new("Number Of Bidders", "koscom.mdcsrealtime.commodities.exture.v2.020.numberofbidders", ftypes.UINT64, nil, nil, nil, "Number of Bidders.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.opening_price = ProtoField.new("Opening Price", "koscom.mdcsrealtime.commodities.exture.v2.020.openingprice", ftypes.STRING, nil, nil, nil, "999999V999 ex) : \" 1209855\".")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.previous_price = ProtoField.new("Previous Price", "koscom.mdcsrealtime.commodities.exture.v2.020.previousprice", ftypes.DOUBLE, nil, nil, nil, "A trading price made right before the final trading price as of now but with a differenct value. E.g.) 10 am: 90 KRW, 10:10 a.m: 100 KRW, 10:20 a.m (now): 100 -> the previous price is 90 KRW.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.price_limit_range_expansion_for_base_issue_type_code = ProtoField.new("Price Limit Range Expansion For Base Issue Type Code", "koscom.mdcsrealtime.commodities.exture.v2.020.pricelimitrangeexpansionforbaseissuetypecode", ftypes.STRING, nil, nil, nil, "A code to expand price limit range for Base Issue D: descending U: Up X: N/A.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.processing_time_of_trading_system = ProtoField.new("Processing Time Of Trading System", "koscom.mdcsrealtime.commodities.exture.v2.020.processingtimeoftradingsystem", ftypes.STRING, nil, nil, nil, "HHMMSSuuuuuu.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.product_id = ProtoField.new("Product Id", "koscom.mdcsrealtime.commodities.exture.v2.020.productid", ftypes.STRING, nil, nil, nil, "Product ID.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.random_end_trigger_code = ProtoField.new("Random End Trigger Code", "koscom.mdcsrealtime.commodities.exture.v2.020.randomendtriggercode", ftypes.STRING, nil, nil, nil, "1: Trigger of Random End in the opening single price session 2: Removal of Random End in the opening single price session 3: Trigger of Random End in the closing single price session 4: Removal of Ran.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.reinvest_call_cash = ProtoField.new("Reinvest Call Cash", "koscom.mdcsrealtime.commodities.exture.v2.020.reinvestcallcash", ftypes.DOUBLE, nil, nil, nil, "Reinvested call cash during the calculation period (26 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.second_filler_11 = ProtoField.new("Second Filler 11", "koscom.mdcsrealtime.commodities.exture.v2.020.secondfiller11", ftypes.DOUBLE, nil, nil, nil, "Upper Limit Price on the Single Price Trade in the Off-Hours Session.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.security_group_id = ProtoField.new("Security Group Id", "koscom.mdcsrealtime.commodities.exture.v2.020.securitygroupid", ftypes.STRING, nil, nil, nil, "Security Group ID (Equities, Investment firms, ETF, ELW, Futures, Options etc.).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.session_id = ProtoField.new("Session Id", "koscom.mdcsrealtime.commodities.exture.v2.020.sessionid", ftypes.STRING, nil, nil, nil, "A Session is a subordinate concept of a Board and each session follows different trading methods and rules.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.session_start_end_code = ProtoField.new("Session Start End Code", "koscom.mdcsrealtime.commodities.exture.v2.020.sessionstartendcode", ftypes.STRING, nil, nil, nil, "A code refers to the start/end of session. Board will end when the last session ends. BS: Board Start BE: Board End SS: Session Start SE: Session End SH: Session Halt SR: Session Resumption.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.start_time_of_a_board_event = ProtoField.new("Start Time Of A Board Event", "koscom.mdcsrealtime.commodities.exture.v2.020.starttimeofaboardevent", ftypes.STRING, nil, nil, nil, "The time when a Board Event occurs.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.step_applied = ProtoField.new("Step Applied", "koscom.mdcsrealtime.commodities.exture.v2.020.stepapplied", ftypes.UINT8, nil, nil, nil, "Managing steps to be applied.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.substitute_price_of_securities = ProtoField.new("Substitute Price Of Securities", "koscom.mdcsrealtime.commodities.exture.v2.020.substitutepriceofsecurities", ftypes.DOUBLE, nil, nil, nil, "Substitute price of securities as a consignment guarantee money.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.todays_high = ProtoField.new("Todays High", "koscom.mdcsrealtime.commodities.exture.v2.020.todayshigh", ftypes.DOUBLE, nil, nil, nil, "The highest price at which an issue traded during the course of the trading day. Also, the record high of a year refers to the highest price of a year.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.todays_low = ProtoField.new("Todays Low", "koscom.mdcsrealtime.commodities.exture.v2.020.todayslow", ftypes.DOUBLE, nil, nil, nil, "The lowest price or index at which an issue traded during the course of a day, week, month or year.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.total_accumulated_trading_value = ProtoField.new("Total Accumulated Trading Value", "koscom.mdcsrealtime.commodities.exture.v2.020.totalaccumulatedtradingvalue", ftypes.DOUBLE, nil, nil, nil, "Total Accumulated Trading Value.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.total_accumulated_trading_volume = ProtoField.new("Total Accumulated Trading Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.totalaccumulatedtradingvolume", ftypes.UINT64, nil, nil, nil, "Total Accumulated Trading volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.total_ask_volume = ProtoField.new("Total Ask Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.totalaskvolume", ftypes.UINT64, nil, nil, nil, "Total ask volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.total_bid_volume = ProtoField.new("Total Bid Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.totalbidvolume", ftypes.UINT64, nil, nil, nil, "Total bid volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.total_earnings_index = ProtoField.new("Total Earnings Index", "koscom.mdcsrealtime.commodities.exture.v2.020.totalearningsindex", ftypes.DOUBLE, nil, nil, nil, "Total earnings index value (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.total_earnings_index_weight = ProtoField.new("Total Earnings Index Weight", "koscom.mdcsrealtime.commodities.exture.v2.020.totalearningsindexweight", ftypes.DOUBLE, nil, nil, nil, "Weighted total earnings index value (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.total_number_of_instruments_of_the_contract = ProtoField.new("Total Number Of Instruments Of The Contract", "koscom.mdcsrealtime.commodities.exture.v2.020.totalnumberofinstrumentsofthecontract", ftypes.UINT24, nil, nil, nil, "- Total number of instruments per each Information Category.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.total_profit_index = ProtoField.new("Total Profit Index", "koscom.mdcsrealtime.commodities.exture.v2.020.totalprofitindex", ftypes.DOUBLE, nil, nil, nil, "Total profit index (11 ASCII digits with 4 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.tr_code = ProtoField.new("Tr Code", "koscom.mdcsrealtime.commodities.exture.v2.020.trcode", ftypes.STRING, nil, nil, nil, "Five-character ASCII TR-CODE identifying the disseminated market data record. Formed by concatenating a 2-character Data Category (message family, e.g. \"IA\" Krx Index, \"B6\" Quote, \"C4\" Negotiated Trade, \"A7\" Market Operation TS) with a 3-character Information Category (market/product variant, typically 2-digit information code plus 1-character market code, e.g. \"01S\" = Equities/KOSPI, \"01F\" = Derivatives, \"000\" = All Market).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.trading_date = ProtoField.new("Trading Date", "koscom.mdcsrealtime.commodities.exture.v2.020.tradingdate", ftypes.STRING, nil, nil, nil, "YYYYMMDD.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.trading_halt = ProtoField.new("Trading Halt", "koscom.mdcsrealtime.commodities.exture.v2.020.tradinghalt", ftypes.STRING, nil, nil, nil, "Y/N to Trading Halt.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.trading_halt_reason_code = ProtoField.new("Trading Halt Reason Code", "koscom.mdcsrealtime.commodities.exture.v2.020.tradinghaltreasoncode", ftypes.STRING, nil, nil, nil, "Trading Halt Reason Code 1XX~301: KOSPI 6XX: KOSDAQ + KONEX 7XX: KONEX BXX: Bond RXX: REPO.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.trading_halt_type_code = ProtoField.new("Trading Halt Type Code", "koscom.mdcsrealtime.commodities.exture.v2.020.tradinghalttypecode", ftypes.STRING, nil, nil, nil, "1: Treasury Stock 2: Warrant 3: Right 4: Underlying Asset ELW 5: Issue ELW 6: Listed Company 7: Underlying Asset Applied Market 8: Index(not using) 9: Issue ETN D: Issue (New securities).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.trading_price = ProtoField.new("Trading Price", "koscom.mdcsrealtime.commodities.exture.v2.020.tradingprice", ftypes.DOUBLE, nil, nil, nil, "The price at which a security is currently selling in the market.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.trading_time = ProtoField.new("Trading Time", "koscom.mdcsrealtime.commodities.exture.v2.020.tradingtime", ftypes.STRING, nil, nil, nil, "HHMMSS.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.trading_volume = ProtoField.new("Trading Volume", "koscom.mdcsrealtime.commodities.exture.v2.020.tradingvolume", ftypes.UINT64, nil, nil, nil, "Trading volume.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.transmission_time = ProtoField.new("Transmission Time", "koscom.mdcsrealtime.commodities.exture.v2.020.transmissiontime", ftypes.STRING, nil, nil, nil, "Transmission time in HHMMSSMM format (8 ASCII digits).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.unit_of_volume_in_main_board = ProtoField.new("Unit Of Volume In Main Board", "koscom.mdcsrealtime.commodities.exture.v2.020.unitofvolumeinmainboard", ftypes.UINT64, nil, nil, nil, "Unit of Volume in Main Board.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.upper_limit_of_base_price = ProtoField.new("Upper Limit Of Base Price", "koscom.mdcsrealtime.commodities.exture.v2.020.upperlimitofbaseprice", ftypes.DOUBLE, nil, nil, nil, "Upper Price of Base Price.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.upper_limit_price = ProtoField.new("Upper Limit Price", "koscom.mdcsrealtime.commodities.exture.v2.020.upperlimitprice", ftypes.DOUBLE, nil, nil, nil, "A price adding up the price limit to the base price.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.volume_in_the_bid_invitation = ProtoField.new("Volume In The Bid Invitation", "koscom.mdcsrealtime.commodities.exture.v2.020.volumeinthebidinvitation", ftypes.UINT64, nil, nil, nil, "Volume in the Bid Invitation.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.weight_of_call_re_investment_index_value_for_integrity_index_weight = ProtoField.new("Weight Of Call Re Investment Index Value For Integrity Index Weight", "koscom.mdcsrealtime.commodities.exture.v2.020.weightofcallreinvestmentindexvalueforintegrityindexweight", ftypes.DOUBLE, nil, nil, nil, "Integrity-index weight for the call re-investment index value (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.weight_of_clean_index_value_for_integrity_index_weight = ProtoField.new("Weight Of Clean Index Value For Integrity Index Weight", "koscom.mdcsrealtime.commodities.exture.v2.020.weightofcleanindexvalueforintegrityindexweight", ftypes.DOUBLE, nil, nil, nil, "Integrity-index weight for the clean index value (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.weight_of_sum_index_value_for_integrity_index_weight = ProtoField.new("Weight Of Sum Index Value For Integrity Index Weight", "koscom.mdcsrealtime.commodities.exture.v2.020.weightofsumindexvalueforintegrityindexweight", ftypes.DOUBLE, nil, nil, nil, "Integrity-index weight for the sum index value (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.weight_of_zero_re_investment_index_value_for_integrity_index_weight = ProtoField.new("Weight Of Zero Re Investment Index Value For Integrity Index Weight", "koscom.mdcsrealtime.commodities.exture.v2.020.weightofzeroreinvestmentindexvalueforintegrityindexweight", ftypes.DOUBLE, nil, nil, nil, "Integrity-index weight for the zero re-investment index value (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.yesterdays_closing_price = ProtoField.new("Yesterdays Closing Price", "koscom.mdcsrealtime.commodities.exture.v2.020.yesterdaysclosingprice", ftypes.DOUBLE, nil, nil, nil, "Yesterday's Closing Price.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.yesterdays_closing_price_type_code = ProtoField.new("Yesterdays Closing Price Type Code", "koscom.mdcsrealtime.commodities.exture.v2.020.yesterdaysclosingpricetypecode", ftypes.STRING, nil, nil, nil, "1: Regular closing price 2: Quotation 3: No Trades 4: Quotation of an Issue of which base price is settled with a today's single price.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.zero_re_investment_index_weight = ProtoField.new("Zero Re Investment Index Weight", "koscom.mdcsrealtime.commodities.exture.v2.020.zeroreinvestmentindexweight", ftypes.DOUBLE, nil, nil, nil, "Weighted zero re-investment index value (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.zero_reinvestment_index_krx = ProtoField.new("Zero Re-Investment Index Krx", "koscom.mdcsrealtime.commodities.exture.v2.020.zeroreinvestmentindexkrx", ftypes.DOUBLE, nil, nil, nil, "Zero re-investment index value (16 ASCII digits with 6 implied decimal places).")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.zero_reinvestment_index_ktb = ProtoField.new("Zero Re-Investment Index Ktb", "koscom.mdcsrealtime.commodities.exture.v2.020.zeroreinvestmentindexktb", ftypes.DOUBLE, nil, nil, nil, "Zero re-investment index (11 ASCII digits with 4 implied decimal places).")

-- Koscom MdcsRealtime Commodities Exture 2.020 Framing
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.packet = ProtoField.new("Packet", "koscom.mdcsrealtime.commodities.exture.v2.020.packet", ftypes.STRING, nil, nil, nil, "Koscom MDCS Exture Udp Packet")

-- Koscom MdcsRealtime Commodities 2.020 Application Messages
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bond_index_krx_message = ProtoField.new("Bond Index Krx Message", "koscom.mdcsrealtime.commodities.exture.v2.020.bondindexkrxmessage", ftypes.STRING, nil, nil, nil, "KRX Aggregate Bond Index (AA- or higher) end-of-day index data. Reports clean-price, total-earnings, market-price, and re-investment indices, their weighted variants, integrity-index weights, average duration, convexity, yield, coupon, remaining maturity, spread, market capitalization, and accumulated cash flows for one Bond Index ID.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bond_ktb_index_message = ProtoField.new("Bond Ktb Index Message", "koscom.mdcsrealtime.commodities.exture.v2.020.bondktbindexmessage", ftypes.STRING, nil, nil, nil, "Bond KTB Index intraday calculation. Reports total profit, clean price, market price, call and zero re-investment indices, futures basis price, duration, convexity, and YTM for one KTB-based Bond Index ID.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bond_ktb_index_term_structure_message = ProtoField.new("Bond Ktb Index Term Structure Message", "koscom.mdcsrealtime.commodities.exture.v2.020.bondktbindextermstructuremessage", ftypes.STRING, nil, nil, nil, "Bond KTB Index TermStructure. One record per ISIN constituent of a KTB Index showing its basis price, clean price, YTM, and the Index Constituent flag.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bond_prime_index_message = ProtoField.new("Bond Prime Index Message", "koscom.mdcsrealtime.commodities.exture.v2.020.bondprimeindexmessage", ftypes.STRING, nil, nil, nil, "Bond Prime Index intraday calculation. Reports clean and total-earnings index values plus their weighted variants and average duration / convexity / yield for one Group Code and Maturity Code pair.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.emissions_auction_results_message = ProtoField.new("Emissions Auction Results Message", "koscom.mdcsrealtime.commodities.exture.v2.020.emissionsauctionresultsmessage", ftypes.STRING, nil, nil, nil, "Emissions Auction Results per Issue.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.emissions_batch_data_message = ProtoField.new("Emissions Batch Data Message", "koscom.mdcsrealtime.commodities.exture.v2.020.emissionsbatchdatamessage", ftypes.STRING, nil, nil, nil, "Emissions Batch Data. Per-issue reference data dumped at start-of-day.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.emissions_determination_of_base_price_message = ProtoField.new("Emissions Determination Of Base Price Message", "koscom.mdcsrealtime.commodities.exture.v2.020.emissionsdeterminationofbasepricemessage", ftypes.STRING, nil, nil, nil, "Emissions Determination of Base Price. Per-issue base price assignment.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.emissions_issue_closing_message = ProtoField.new("Emissions Issue Closing Message", "koscom.mdcsrealtime.commodities.exture.v2.020.emissionsissueclosingmessage", ftypes.STRING, nil, nil, nil, "Emissions Issue Closing.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.emissions_market_operation_schedule_message = ProtoField.new("Emissions Market Operation Schedule Message", "koscom.mdcsrealtime.commodities.exture.v2.020.emissionsmarketoperationschedulemessage", ftypes.STRING, nil, nil, nil, "Emissions Market Operation Schedule.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.emissions_market_operation_ts_message = ProtoField.new("Emissions Market Operation Ts Message", "koscom.mdcsrealtime.commodities.exture.v2.020.emissionsmarketoperationtsmessage", ftypes.STRING, nil, nil, nil, "Emissions Market Operation TS.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.emissions_market_operation_ts_plus_quote_message = ProtoField.new("Emissions Market Operation Ts Plus Quote Message", "koscom.mdcsrealtime.commodities.exture.v2.020.emissionsmarketoperationtsplusquotemessage", ftypes.STRING, nil, nil, nil, "Emissions Market Operation TS plus Quote. Session-state event followed by full quote state.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.emissions_negotiated_trade_message = ProtoField.new("Emissions Negotiated Trade Message", "koscom.mdcsrealtime.commodities.exture.v2.020.emissionsnegotiatedtrademessage", ftypes.STRING, nil, nil, nil, "Emissions Negotiated Trade Data.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.emissions_order_filled_message = ProtoField.new("Emissions Order Filled Message", "koscom.mdcsrealtime.commodities.exture.v2.020.emissionsorderfilledmessage", ftypes.STRING, nil, nil, nil, "Emissions Order Filled. Real-time trade prints with running totals.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.emissions_order_filled_plus_quote_message = ProtoField.new("Emissions Order Filled Plus Quote Message", "koscom.mdcsrealtime.commodities.exture.v2.020.emissionsorderfilledplusquotemessage", ftypes.STRING, nil, nil, nil, "Emissions Order Filled plus Quote. Trade print followed by full quote state.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.emissions_quote_message = ProtoField.new("Emissions Quote Message", "koscom.mdcsrealtime.commodities.exture.v2.020.emissionsquotemessage", ftypes.STRING, nil, nil, nil, "Emissions Quote. Multi-level bid/ask quotes for Emissions.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.emissions_snapshot_message = ProtoField.new("Emissions Snapshot Message", "koscom.mdcsrealtime.commodities.exture.v2.020.emissionssnapshotmessage", ftypes.STRING, nil, nil, nil, "Emissions Market Data Snapshot. Periodic full state snapshot.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.external_gold_spot_closing_price_message = ProtoField.new("External Gold Spot Closing Price Message", "koscom.mdcsrealtime.commodities.exture.v2.020.externalgoldspotclosingpricemessage", ftypes.STRING, nil, nil, nil, "External Gold Spot (Closing Price) (IFMSRID0036) — Commodities A CMD variant. NESTED-BRANCH NOTE: TR-CODE M200G is shared with the Real-time variant (IFMSRID0035); the Data Type field (field 3) discriminates between Closing Price and Real-time. The loader will need an inner Branch on Data Type once the nested-Branch shape is settled. Real-time variant deferred.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.global_index_message = ProtoField.new("Global Index Message", "koscom.mdcsrealtime.commodities.exture.v2.020.globalindexmessage", ftypes.STRING, nil, nil, nil, "Global Index real-time message. Reports the current value of a foreign index referenced by KRX (e.g. Korea-Taiwan IT Premier, Korea-China Index) in the index's native currency.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.krx_estimated_index_message = ProtoField.new("Krx Estimated Index Message", "koscom.mdcsrealtime.commodities.exture.v2.020.krxestimatedindexmessage", ftypes.STRING, nil, nil, nil, "Krx Estimated Index real-time message. Reports the estimated index value during the pre-opening simultaneous-trading window or during regular session estimation. Identical field layout to the Krx Index Message.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.krx_index_message = ProtoField.new("Krx Index Message", "koscom.mdcsrealtime.commodities.exture.v2.020.krxindexmessage", ftypes.STRING, nil, nil, nil, "Krx Index real-time message. Reports current index value, change against previous day, accumulated trading volume, and accumulated trading value for one index. The Index ID field identifies which index group (KRX Index Group 1/2/3, Sector A/B, Gold Spot, or Equity Derivatives) this record belongs to.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.polling_data_message = ProtoField.new("Polling Data Message", "koscom.mdcsrealtime.commodities.exture.v2.020.pollingdatamessage", ftypes.STRING, nil, nil, nil, "Polling data transmitted at one-minute intervals on every market data feed. Carries Current Time as a heartbeat.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.spot_gold_batch_data_message = ProtoField.new("Spot Gold Batch Data Message", "koscom.mdcsrealtime.commodities.exture.v2.020.spotgoldbatchdatamessage", ftypes.STRING, nil, nil, nil, "Spot Gold Batch Data. Per-issue reference data dumped at start-of-day.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.spot_gold_issue_closing_message = ProtoField.new("Spot Gold Issue Closing Message", "koscom.mdcsrealtime.commodities.exture.v2.020.spotgoldissueclosingmessage", ftypes.STRING, nil, nil, nil, "Spot Gold Issue Closing.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.spot_gold_market_operation_schedule_message = ProtoField.new("Spot Gold Market Operation Schedule Message", "koscom.mdcsrealtime.commodities.exture.v2.020.spotgoldmarketoperationschedulemessage", ftypes.STRING, nil, nil, nil, "Spot Gold Market Operation Schedule.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.spot_gold_market_operation_ts_message = ProtoField.new("Spot Gold Market Operation Ts Message", "koscom.mdcsrealtime.commodities.exture.v2.020.spotgoldmarketoperationtsmessage", ftypes.STRING, nil, nil, nil, "Spot Gold Market Operation TS.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.spot_gold_market_operation_ts_plus_quote_message = ProtoField.new("Spot Gold Market Operation Ts Plus Quote Message", "koscom.mdcsrealtime.commodities.exture.v2.020.spotgoldmarketoperationtsplusquotemessage", ftypes.STRING, nil, nil, nil, "Spot Gold Market Operation TS plus Quote. Session-state event followed by full quote state.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.spot_gold_negotiated_trade_message = ProtoField.new("Spot Gold Negotiated Trade Message", "koscom.mdcsrealtime.commodities.exture.v2.020.spotgoldnegotiatedtrademessage", ftypes.STRING, nil, nil, nil, "Spot Gold Negotiated Trade Data.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.spot_gold_order_filled_message = ProtoField.new("Spot Gold Order Filled Message", "koscom.mdcsrealtime.commodities.exture.v2.020.spotgoldorderfilledmessage", ftypes.STRING, nil, nil, nil, "Spot Gold Order Filled. Real-time trade prints with running totals.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.spot_gold_order_filled_plus_quote_message = ProtoField.new("Spot Gold Order Filled Plus Quote Message", "koscom.mdcsrealtime.commodities.exture.v2.020.spotgoldorderfilledplusquotemessage", ftypes.STRING, nil, nil, nil, "Spot Gold Order Filled plus Quote. Trade print followed by full quote state.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.spot_gold_quote_message = ProtoField.new("Spot Gold Quote Message", "koscom.mdcsrealtime.commodities.exture.v2.020.spotgoldquotemessage", ftypes.STRING, nil, nil, nil, "Spot Gold Quote. Multi-level bid/ask quotes for Spot Gold.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.spot_gold_random_end_message = ProtoField.new("Spot Gold Random End Message", "koscom.mdcsrealtime.commodities.exture.v2.020.spotgoldrandomendmessage", ftypes.STRING, nil, nil, nil, "Spot Gold Random End. Reports random extension of the call auction window when conditional random-end is triggered.")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.spot_gold_snapshot_message = ProtoField.new("Spot Gold Snapshot Message", "koscom.mdcsrealtime.commodities.exture.v2.020.spotgoldsnapshotmessage", ftypes.STRING, nil, nil, nil, "Spot Gold Market Data Snapshot. Periodic full state snapshot.")

-- Koscom MdcsRealtime Commodities Exture 2.020 Expert Info
koscom_mdcsrealtime_commodities_exture_v2_020.experts = {}
koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number = ProtoExpert.new("koscom.mdcsrealtime.commodities.exture.v2.020.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_koscom_mdcsrealtime_commodities_exture_v2_020.experts = { koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number }

-----------------------------------------------------------------------
-- Koscom MdcsRealtime Commodities Exture 2.020 Formatting
-----------------------------------------------------------------------

-- Text field character encoding (Wireshark ENC_ constant)
koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding = ENC_EUC_KR


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Koscom MdcsRealtime Commodities Exture 2.020 Element Dissection Options
show.application_messages = true
show.structs = true

-- Register Koscom MdcsRealtime Commodities Exture 2.020 Show Options
omi_koscom_mdcsrealtime_commodities_exture_v2_020.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_koscom_mdcsrealtime_commodities_exture_v2_020.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")

-- Handle changed preferences
function omi_koscom_mdcsrealtime_commodities_exture_v2_020.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_koscom_mdcsrealtime_commodities_exture_v2_020.prefs.show_application_messages then
    show.application_messages = omi_koscom_mdcsrealtime_commodities_exture_v2_020.prefs.show_application_messages
  end
  if show.structs ~= omi_koscom_mdcsrealtime_commodities_exture_v2_020.prefs.show_structs then
    show.structs = omi_koscom_mdcsrealtime_commodities_exture_v2_020.prefs.show_structs
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
-- Koscom MdcsRealtime Commodities Exture 2.020 Fields
-----------------------------------------------------------------------

-- A Designated Number For An Issue
koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue = {}

-- Size: A Designated Number For An Issue
koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.size = 6

-- Display: A Designated Number For An Issue
koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.display = function(value)
  return "A Designated Number For An Issue: "..value
end

-- Dissect: A Designated Number For An Issue
koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.a_designated_number_for_an_issue, range, value, "A Designated Number For An Issue: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "A Designated Number For An Issue is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.a_designated_number_for_an_issue, range, value, display)

  return offset + length, value
end

-- A Representative Issue To Calculate Base Price
koscom_mdcsrealtime_commodities_exture_v2_020.a_representative_issue_to_calculate_base_price = {}

-- Size: A Representative Issue To Calculate Base Price
koscom_mdcsrealtime_commodities_exture_v2_020.a_representative_issue_to_calculate_base_price.size = 12

-- Display: A Representative Issue To Calculate Base Price
koscom_mdcsrealtime_commodities_exture_v2_020.a_representative_issue_to_calculate_base_price.display = function(value)
  return "A Representative Issue To Calculate Base Price: "..value
end

-- Dissect: A Representative Issue To Calculate Base Price
koscom_mdcsrealtime_commodities_exture_v2_020.a_representative_issue_to_calculate_base_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.a_representative_issue_to_calculate_base_price.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.a_representative_issue_to_calculate_base_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.a_representative_issue_to_calculate_base_price, range, value, display)

  return offset + length, value
end

-- Abbreviated Issue Code
koscom_mdcsrealtime_commodities_exture_v2_020.abbreviated_issue_code = {}

-- Size: Abbreviated Issue Code
koscom_mdcsrealtime_commodities_exture_v2_020.abbreviated_issue_code.size = 9

-- Display: Abbreviated Issue Code
koscom_mdcsrealtime_commodities_exture_v2_020.abbreviated_issue_code.display = function(value)
  return "Abbreviated Issue Code: "..value
end

-- Dissect: Abbreviated Issue Code
koscom_mdcsrealtime_commodities_exture_v2_020.abbreviated_issue_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.abbreviated_issue_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.abbreviated_issue_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.abbreviated_issue_code, range, value, display)

  return offset + length, value
end

-- Abbreviated Issue Name
koscom_mdcsrealtime_commodities_exture_v2_020.abbreviated_issue_name = {}

-- Size: Abbreviated Issue Name
koscom_mdcsrealtime_commodities_exture_v2_020.abbreviated_issue_name.size = 40

-- Display: Abbreviated Issue Name
koscom_mdcsrealtime_commodities_exture_v2_020.abbreviated_issue_name.display = function(value)
  return "Abbreviated Issue Name: "..value
end

-- Dissect: Abbreviated Issue Name
koscom_mdcsrealtime_commodities_exture_v2_020.abbreviated_issue_name.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.abbreviated_issue_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.abbreviated_issue_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.abbreviated_issue_name, range, value, display)

  return offset + length, value
end

-- Abbreviated Issue Name In En
koscom_mdcsrealtime_commodities_exture_v2_020.abbreviated_issue_name_in_en = {}

-- Size: Abbreviated Issue Name In En
koscom_mdcsrealtime_commodities_exture_v2_020.abbreviated_issue_name_in_en.size = 40

-- Display: Abbreviated Issue Name In En
koscom_mdcsrealtime_commodities_exture_v2_020.abbreviated_issue_name_in_en.display = function(value)
  return "Abbreviated Issue Name In En: "..value
end

-- Dissect: Abbreviated Issue Name In En
koscom_mdcsrealtime_commodities_exture_v2_020.abbreviated_issue_name_in_en.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.abbreviated_issue_name_in_en.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.abbreviated_issue_name_in_en.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.abbreviated_issue_name_in_en, range, value, display)

  return offset + length, value
end

-- Accumulated Cash
koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_cash = {}

-- Size: Accumulated Cash
koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_cash.size = 26

-- Display: Accumulated Cash
koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_cash.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_cash.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_cash.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_cash.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.accumulated_cash, range, value, "Accumulated Cash: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Accumulated Cash is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_cash.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.accumulated_cash, range, value, display)

  return offset + length, value
end

-- Accumulated Trading Value
koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_value = {}

-- Size: Accumulated Trading Value
koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_value.size = 22

-- Display: Accumulated Trading Value
koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_value.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Accumulated Trading Value: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Accumulated Trading Value: "..text.." (expected 3 places)"
  end

  return "Accumulated Trading Value: "..text
end

-- Dissect: Accumulated Trading Value
koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.accumulated_trading_value, range, value, "Accumulated Trading Value: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Accumulated Trading Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.accumulated_trading_value, range, value, display)

  return offset + length, value
end

-- Accumulated Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_volume = {}

-- Size: Accumulated Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_volume.size = 12

-- Display: Accumulated Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_volume.display = function(value)
  return "Accumulated Trading Volume: "..value
end

-- Dissect: Accumulated Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.accumulated_trading_volume, range, value, "Accumulated Trading Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Accumulated Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.accumulated_trading_volume, range, value, display)

  return offset + length, value
end

-- An Issue Of Which Base Price Is Settled With A Todays Single Price
koscom_mdcsrealtime_commodities_exture_v2_020.an_issue_of_which_base_price_is_settled_with_a_todays_single_price = {}

-- Size: An Issue Of Which Base Price Is Settled With A Todays Single Price
koscom_mdcsrealtime_commodities_exture_v2_020.an_issue_of_which_base_price_is_settled_with_a_todays_single_price.size = 1

-- Display: An Issue Of Which Base Price Is Settled With A Todays Single Price
koscom_mdcsrealtime_commodities_exture_v2_020.an_issue_of_which_base_price_is_settled_with_a_todays_single_price.display = function(value)
  return "An Issue Of Which Base Price Is Settled With A Todays Single Price: "..value
end

-- Dissect: An Issue Of Which Base Price Is Settled With A Todays Single Price
koscom_mdcsrealtime_commodities_exture_v2_020.an_issue_of_which_base_price_is_settled_with_a_todays_single_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.an_issue_of_which_base_price_is_settled_with_a_todays_single_price.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.an_issue_of_which_base_price_is_settled_with_a_todays_single_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.an_issue_of_which_base_price_is_settled_with_a_todays_single_price, range, value, display)

  return offset + length, value
end

-- Appraisal Ratio Of Substitute Price
koscom_mdcsrealtime_commodities_exture_v2_020.appraisal_ratio_of_substitute_price = {}

-- Size: Appraisal Ratio Of Substitute Price
koscom_mdcsrealtime_commodities_exture_v2_020.appraisal_ratio_of_substitute_price.size = 13

-- Display: Appraisal Ratio Of Substitute Price
koscom_mdcsrealtime_commodities_exture_v2_020.appraisal_ratio_of_substitute_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.appraisal_ratio_of_substitute_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Appraisal Ratio Of Substitute Price: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Appraisal Ratio Of Substitute Price: "..text.." (expected 6 places)"
  end

  return "Appraisal Ratio Of Substitute Price: "..text
end

-- Dissect: Appraisal Ratio Of Substitute Price
koscom_mdcsrealtime_commodities_exture_v2_020.appraisal_ratio_of_substitute_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.appraisal_ratio_of_substitute_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.appraisal_ratio_of_substitute_price, range, value, "Appraisal Ratio Of Substitute Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Appraisal Ratio Of Substitute Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.appraisal_ratio_of_substitute_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.appraisal_ratio_of_substitute_price, range, value, display)

  return offset + length, value
end

-- Ask Level 1 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_price = {}

-- Size: Ask Level 1 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_price.size = 11

-- Display: Ask Level 1 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Ask Level 1 Price: No Value"
  end

  return "Ask Level 1 Price: "..text
end

-- Dissect: Ask Level 1 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_1_price, range, value, "Ask Level 1 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Ask Level 1 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_1_price, range, value, display)

  return offset + length, value
end

-- Ask Level 1 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_volume = {}

-- Size: Ask Level 1 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_volume.size = 12

-- Display: Ask Level 1 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_volume.display = function(value)
  return "Ask Level 1 Volume: "..value
end

-- Dissect: Ask Level 1 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_1_volume, range, value, "Ask Level 1 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Ask Level 1 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_1_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 10 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_10_price = {}

-- Size: Ask Level 10 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_10_price.size = 11

-- Display: Ask Level 10 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_10_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_10_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Ask Level 10 Price: No Value"
  end

  return "Ask Level 10 Price: "..text
end

-- Dissect: Ask Level 10 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_10_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_10_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_10_price, range, value, "Ask Level 10 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Ask Level 10 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_10_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_10_price, range, value, display)

  return offset + length, value
end

-- Ask Level 10 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_10_volume = {}

-- Size: Ask Level 10 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_10_volume.size = 12

-- Display: Ask Level 10 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_10_volume.display = function(value)
  return "Ask Level 10 Volume: "..value
end

-- Dissect: Ask Level 10 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_10_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_10_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_10_volume, range, value, "Ask Level 10 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Ask Level 10 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_10_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_10_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 2 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_price = {}

-- Size: Ask Level 2 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_price.size = 11

-- Display: Ask Level 2 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Ask Level 2 Price: No Value"
  end

  return "Ask Level 2 Price: "..text
end

-- Dissect: Ask Level 2 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_2_price, range, value, "Ask Level 2 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Ask Level 2 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_2_price, range, value, display)

  return offset + length, value
end

-- Ask Level 2 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_volume = {}

-- Size: Ask Level 2 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_volume.size = 12

-- Display: Ask Level 2 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_volume.display = function(value)
  return "Ask Level 2 Volume: "..value
end

-- Dissect: Ask Level 2 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_2_volume, range, value, "Ask Level 2 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Ask Level 2 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_2_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 3 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_price = {}

-- Size: Ask Level 3 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_price.size = 11

-- Display: Ask Level 3 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Ask Level 3 Price: No Value"
  end

  return "Ask Level 3 Price: "..text
end

-- Dissect: Ask Level 3 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_3_price, range, value, "Ask Level 3 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Ask Level 3 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_3_price, range, value, display)

  return offset + length, value
end

-- Ask Level 3 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_volume = {}

-- Size: Ask Level 3 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_volume.size = 12

-- Display: Ask Level 3 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_volume.display = function(value)
  return "Ask Level 3 Volume: "..value
end

-- Dissect: Ask Level 3 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_3_volume, range, value, "Ask Level 3 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Ask Level 3 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_3_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 4 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_price = {}

-- Size: Ask Level 4 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_price.size = 11

-- Display: Ask Level 4 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Ask Level 4 Price: No Value"
  end

  return "Ask Level 4 Price: "..text
end

-- Dissect: Ask Level 4 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_4_price, range, value, "Ask Level 4 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Ask Level 4 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_4_price, range, value, display)

  return offset + length, value
end

-- Ask Level 4 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_volume = {}

-- Size: Ask Level 4 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_volume.size = 12

-- Display: Ask Level 4 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_volume.display = function(value)
  return "Ask Level 4 Volume: "..value
end

-- Dissect: Ask Level 4 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_4_volume, range, value, "Ask Level 4 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Ask Level 4 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_4_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 5 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_price = {}

-- Size: Ask Level 5 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_price.size = 11

-- Display: Ask Level 5 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Ask Level 5 Price: No Value"
  end

  return "Ask Level 5 Price: "..text
end

-- Dissect: Ask Level 5 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_5_price, range, value, "Ask Level 5 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Ask Level 5 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_5_price, range, value, display)

  return offset + length, value
end

-- Ask Level 5 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_volume = {}

-- Size: Ask Level 5 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_volume.size = 12

-- Display: Ask Level 5 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_volume.display = function(value)
  return "Ask Level 5 Volume: "..value
end

-- Dissect: Ask Level 5 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_5_volume, range, value, "Ask Level 5 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Ask Level 5 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_5_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 6 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_6_price = {}

-- Size: Ask Level 6 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_6_price.size = 11

-- Display: Ask Level 6 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_6_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_6_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Ask Level 6 Price: No Value"
  end

  return "Ask Level 6 Price: "..text
end

-- Dissect: Ask Level 6 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_6_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_6_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_6_price, range, value, "Ask Level 6 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Ask Level 6 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_6_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_6_price, range, value, display)

  return offset + length, value
end

-- Ask Level 6 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_6_volume = {}

-- Size: Ask Level 6 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_6_volume.size = 12

-- Display: Ask Level 6 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_6_volume.display = function(value)
  return "Ask Level 6 Volume: "..value
end

-- Dissect: Ask Level 6 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_6_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_6_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_6_volume, range, value, "Ask Level 6 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Ask Level 6 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_6_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_6_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 7 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_7_price = {}

-- Size: Ask Level 7 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_7_price.size = 11

-- Display: Ask Level 7 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_7_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_7_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Ask Level 7 Price: No Value"
  end

  return "Ask Level 7 Price: "..text
end

-- Dissect: Ask Level 7 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_7_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_7_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_7_price, range, value, "Ask Level 7 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Ask Level 7 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_7_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_7_price, range, value, display)

  return offset + length, value
end

-- Ask Level 7 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_7_volume = {}

-- Size: Ask Level 7 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_7_volume.size = 12

-- Display: Ask Level 7 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_7_volume.display = function(value)
  return "Ask Level 7 Volume: "..value
end

-- Dissect: Ask Level 7 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_7_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_7_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_7_volume, range, value, "Ask Level 7 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Ask Level 7 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_7_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_7_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 8 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_8_price = {}

-- Size: Ask Level 8 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_8_price.size = 11

-- Display: Ask Level 8 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_8_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_8_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Ask Level 8 Price: No Value"
  end

  return "Ask Level 8 Price: "..text
end

-- Dissect: Ask Level 8 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_8_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_8_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_8_price, range, value, "Ask Level 8 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Ask Level 8 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_8_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_8_price, range, value, display)

  return offset + length, value
end

-- Ask Level 8 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_8_volume = {}

-- Size: Ask Level 8 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_8_volume.size = 12

-- Display: Ask Level 8 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_8_volume.display = function(value)
  return "Ask Level 8 Volume: "..value
end

-- Dissect: Ask Level 8 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_8_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_8_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_8_volume, range, value, "Ask Level 8 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Ask Level 8 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_8_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_8_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 9 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_9_price = {}

-- Size: Ask Level 9 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_9_price.size = 11

-- Display: Ask Level 9 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_9_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_9_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Ask Level 9 Price: No Value"
  end

  return "Ask Level 9 Price: "..text
end

-- Dissect: Ask Level 9 Price
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_9_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_9_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_9_price, range, value, "Ask Level 9 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Ask Level 9 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_9_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_9_price, range, value, display)

  return offset + length, value
end

-- Ask Level 9 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_9_volume = {}

-- Size: Ask Level 9 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_9_volume.size = 12

-- Display: Ask Level 9 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_9_volume.display = function(value)
  return "Ask Level 9 Volume: "..value
end

-- Dissect: Ask Level 9 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_9_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_9_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_9_volume, range, value, "Ask Level 9 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Ask Level 9 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_9_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_level_9_volume, range, value, display)

  return offset + length, value
end

-- Ask Quote
koscom_mdcsrealtime_commodities_exture_v2_020.ask_quote = {}

-- Size: Ask Quote
koscom_mdcsrealtime_commodities_exture_v2_020.ask_quote.size = 9

-- Display: Ask Quote
koscom_mdcsrealtime_commodities_exture_v2_020.ask_quote.display = function(value)
  return "Ask Quote: "..value
end

-- Dissect: Ask Quote
koscom_mdcsrealtime_commodities_exture_v2_020.ask_quote.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.ask_quote.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.ask_quote.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.ask_quote, range, value, display)

  return offset + length, value
end

-- Auction Bid Volume
koscom_mdcsrealtime_commodities_exture_v2_020.auction_bid_volume = {}

-- Size: Auction Bid Volume
koscom_mdcsrealtime_commodities_exture_v2_020.auction_bid_volume.size = 12

-- Display: Auction Bid Volume
koscom_mdcsrealtime_commodities_exture_v2_020.auction_bid_volume.display = function(value)
  return "Auction Bid Volume: "..value
end

-- Dissect: Auction Bid Volume
koscom_mdcsrealtime_commodities_exture_v2_020.auction_bid_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.auction_bid_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.auction_bid_volume, range, value, "Auction Bid Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Auction Bid Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.auction_bid_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.auction_bid_volume, range, value, display)

  return offset + length, value
end

-- Auction Price
koscom_mdcsrealtime_commodities_exture_v2_020.auction_price = {}

-- Size: Auction Price
koscom_mdcsrealtime_commodities_exture_v2_020.auction_price.size = 11

-- Display: Auction Price
koscom_mdcsrealtime_commodities_exture_v2_020.auction_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.auction_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Auction Price: No Value"
  end

  return "Auction Price: "..text
end

-- Dissect: Auction Price
koscom_mdcsrealtime_commodities_exture_v2_020.auction_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.auction_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.auction_price, range, value, "Auction Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Auction Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.auction_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.auction_price, range, value, display)

  return offset + length, value
end

-- Auction Volume
koscom_mdcsrealtime_commodities_exture_v2_020.auction_volume = {}

-- Size: Auction Volume
koscom_mdcsrealtime_commodities_exture_v2_020.auction_volume.size = 12

-- Display: Auction Volume
koscom_mdcsrealtime_commodities_exture_v2_020.auction_volume.display = function(value)
  return "Auction Volume: "..value
end

-- Dissect: Auction Volume
koscom_mdcsrealtime_commodities_exture_v2_020.auction_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.auction_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.auction_volume, range, value, "Auction Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Auction Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.auction_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.auction_volume, range, value, display)

  return offset + length, value
end

-- Average Convexity
koscom_mdcsrealtime_commodities_exture_v2_020.average_convexity = {}

-- Size: Average Convexity
koscom_mdcsrealtime_commodities_exture_v2_020.average_convexity.size = 16

-- Display: Average Convexity
koscom_mdcsrealtime_commodities_exture_v2_020.average_convexity.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.average_convexity.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.average_convexity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.average_convexity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.average_convexity, range, value, "Average Convexity: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Average Convexity is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.average_convexity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.average_convexity, range, value, display)

  return offset + length, value
end

-- Average Coupon Price
koscom_mdcsrealtime_commodities_exture_v2_020.average_coupon_price = {}

-- Size: Average Coupon Price
koscom_mdcsrealtime_commodities_exture_v2_020.average_coupon_price.size = 16

-- Display: Average Coupon Price
koscom_mdcsrealtime_commodities_exture_v2_020.average_coupon_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.average_coupon_price.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.average_coupon_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.average_coupon_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.average_coupon_price, range, value, "Average Coupon Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Average Coupon Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.average_coupon_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.average_coupon_price, range, value, display)

  return offset + length, value
end

-- Average Current Yield
koscom_mdcsrealtime_commodities_exture_v2_020.average_current_yield = {}

-- Size: Average Current Yield
koscom_mdcsrealtime_commodities_exture_v2_020.average_current_yield.size = 16

-- Display: Average Current Yield
koscom_mdcsrealtime_commodities_exture_v2_020.average_current_yield.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.average_current_yield.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.average_current_yield.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.average_current_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.average_current_yield, range, value, "Average Current Yield: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Average Current Yield is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.average_current_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.average_current_yield, range, value, display)

  return offset + length, value
end

-- Average Duration
koscom_mdcsrealtime_commodities_exture_v2_020.average_duration = {}

-- Size: Average Duration
koscom_mdcsrealtime_commodities_exture_v2_020.average_duration.size = 16

-- Display: Average Duration
koscom_mdcsrealtime_commodities_exture_v2_020.average_duration.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.average_duration.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.average_duration.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.average_duration.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.average_duration, range, value, "Average Duration: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Average Duration is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.average_duration.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.average_duration, range, value, display)

  return offset + length, value
end

-- Average Forward Ytm
koscom_mdcsrealtime_commodities_exture_v2_020.average_forward_ytm = {}

-- Size: Average Forward Ytm
koscom_mdcsrealtime_commodities_exture_v2_020.average_forward_ytm.size = 7

-- Display: Average Forward Ytm
koscom_mdcsrealtime_commodities_exture_v2_020.average_forward_ytm.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.average_forward_ytm.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.average_forward_ytm.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.average_forward_ytm.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.average_forward_ytm, range, value, "Average Forward Ytm: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Average Forward Ytm is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.average_forward_ytm.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.average_forward_ytm, range, value, display)

  return offset + length, value
end

-- Average Remaining Maturity Price
koscom_mdcsrealtime_commodities_exture_v2_020.average_remaining_maturity_price = {}

-- Size: Average Remaining Maturity Price
koscom_mdcsrealtime_commodities_exture_v2_020.average_remaining_maturity_price.size = 16

-- Display: Average Remaining Maturity Price
koscom_mdcsrealtime_commodities_exture_v2_020.average_remaining_maturity_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.average_remaining_maturity_price.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.average_remaining_maturity_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.average_remaining_maturity_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.average_remaining_maturity_price, range, value, "Average Remaining Maturity Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Average Remaining Maturity Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.average_remaining_maturity_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.average_remaining_maturity_price, range, value, display)

  return offset + length, value
end

-- Average Spread
koscom_mdcsrealtime_commodities_exture_v2_020.average_spread = {}

-- Size: Average Spread
koscom_mdcsrealtime_commodities_exture_v2_020.average_spread.size = 16

-- Display: Average Spread
koscom_mdcsrealtime_commodities_exture_v2_020.average_spread.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.average_spread.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.average_spread.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.average_spread.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.average_spread, range, value, "Average Spread: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Average Spread is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.average_spread.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.average_spread, range, value, display)

  return offset + length, value
end

-- Average Spread Sign
koscom_mdcsrealtime_commodities_exture_v2_020.average_spread_sign = {}

-- Size: Average Spread Sign
koscom_mdcsrealtime_commodities_exture_v2_020.average_spread_sign.size = 1

-- Display: Average Spread Sign
koscom_mdcsrealtime_commodities_exture_v2_020.average_spread_sign.display = function(value)
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
koscom_mdcsrealtime_commodities_exture_v2_020.average_spread_sign.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.average_spread_sign.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.average_spread_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.average_spread_sign, range, value, display)

  return offset + length, value
end

-- Average Yld
koscom_mdcsrealtime_commodities_exture_v2_020.average_yld = {}

-- Size: Average Yld
koscom_mdcsrealtime_commodities_exture_v2_020.average_yld.size = 16

-- Display: Average Yld
koscom_mdcsrealtime_commodities_exture_v2_020.average_yld.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.average_yld.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.average_yld.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.average_yld.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.average_yld, range, value, "Average Yld: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Average Yld is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.average_yld.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.average_yld, range, value, display)

  return offset + length, value
end

-- Average Ytm
koscom_mdcsrealtime_commodities_exture_v2_020.average_ytm = {}

-- Size: Average Ytm
koscom_mdcsrealtime_commodities_exture_v2_020.average_ytm.size = 7

-- Display: Average Ytm
koscom_mdcsrealtime_commodities_exture_v2_020.average_ytm.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.average_ytm.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.average_ytm.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.average_ytm.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.average_ytm, range, value, "Average Ytm: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Average Ytm is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.average_ytm.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.average_ytm, range, value, display)

  return offset + length, value
end

-- Base Date
koscom_mdcsrealtime_commodities_exture_v2_020.base_date = {}

-- Size: Base Date
koscom_mdcsrealtime_commodities_exture_v2_020.base_date.size = 8

-- Display: Base Date
koscom_mdcsrealtime_commodities_exture_v2_020.base_date.display = function(value)
  if #value < 8 then
    return "Base Date: "..value
  end

  return "Base Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Base Date
koscom_mdcsrealtime_commodities_exture_v2_020.base_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.base_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.base_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.base_date, range, value, display)

  return offset + length, value
end

-- Base Price
koscom_mdcsrealtime_commodities_exture_v2_020.base_price = {}

-- Size: Base Price
koscom_mdcsrealtime_commodities_exture_v2_020.base_price.size = 11

-- Display: Base Price
koscom_mdcsrealtime_commodities_exture_v2_020.base_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.base_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Base Price: No Value"
  end

  return "Base Price: "..text
end

-- Dissect: Base Price
koscom_mdcsrealtime_commodities_exture_v2_020.base_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.base_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.base_price, range, value, "Base Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Base Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.base_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.base_price, range, value, display)

  return offset + length, value
end

-- Base Time
koscom_mdcsrealtime_commodities_exture_v2_020.base_time = {}

-- Size: Base Time
koscom_mdcsrealtime_commodities_exture_v2_020.base_time.size = 6

-- Display: Base Time
koscom_mdcsrealtime_commodities_exture_v2_020.base_time.display = function(value)
  if #value < 6 then
    return "Base Time: "..value
  end

  return "Base Time: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Base Time
koscom_mdcsrealtime_commodities_exture_v2_020.base_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.base_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.base_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.base_time, range, value, display)

  return offset + length, value
end

-- Basis Price
koscom_mdcsrealtime_commodities_exture_v2_020.basis_price = {}

-- Size: Basis Price
koscom_mdcsrealtime_commodities_exture_v2_020.basis_price.size = 10

-- Display: Basis Price
koscom_mdcsrealtime_commodities_exture_v2_020.basis_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.basis_price.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.basis_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.basis_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.basis_price, range, value, "Basis Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Basis Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.basis_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.basis_price, range, value, display)

  return offset + length, value
end

-- Bid Level 1 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_price = {}

-- Size: Bid Level 1 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_price.size = 11

-- Display: Bid Level 1 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Bid Level 1 Price: No Value"
  end

  return "Bid Level 1 Price: "..text
end

-- Dissect: Bid Level 1 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_1_price, range, value, "Bid Level 1 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Bid Level 1 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_1_price, range, value, display)

  return offset + length, value
end

-- Bid Level 1 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_volume = {}

-- Size: Bid Level 1 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_volume.size = 12

-- Display: Bid Level 1 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_volume.display = function(value)
  return "Bid Level 1 Volume: "..value
end

-- Dissect: Bid Level 1 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_1_volume, range, value, "Bid Level 1 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Bid Level 1 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_1_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 10 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_10_price = {}

-- Size: Bid Level 10 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_10_price.size = 11

-- Display: Bid Level 10 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_10_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_10_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Bid Level 10 Price: No Value"
  end

  return "Bid Level 10 Price: "..text
end

-- Dissect: Bid Level 10 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_10_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_10_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_10_price, range, value, "Bid Level 10 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Bid Level 10 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_10_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_10_price, range, value, display)

  return offset + length, value
end

-- Bid Level 10 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_10_volume = {}

-- Size: Bid Level 10 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_10_volume.size = 12

-- Display: Bid Level 10 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_10_volume.display = function(value)
  return "Bid Level 10 Volume: "..value
end

-- Dissect: Bid Level 10 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_10_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_10_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_10_volume, range, value, "Bid Level 10 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Bid Level 10 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_10_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_10_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 2 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_price = {}

-- Size: Bid Level 2 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_price.size = 11

-- Display: Bid Level 2 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Bid Level 2 Price: No Value"
  end

  return "Bid Level 2 Price: "..text
end

-- Dissect: Bid Level 2 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_2_price, range, value, "Bid Level 2 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Bid Level 2 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_2_price, range, value, display)

  return offset + length, value
end

-- Bid Level 2 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_volume = {}

-- Size: Bid Level 2 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_volume.size = 12

-- Display: Bid Level 2 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_volume.display = function(value)
  return "Bid Level 2 Volume: "..value
end

-- Dissect: Bid Level 2 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_2_volume, range, value, "Bid Level 2 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Bid Level 2 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_2_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 3 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_price = {}

-- Size: Bid Level 3 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_price.size = 11

-- Display: Bid Level 3 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Bid Level 3 Price: No Value"
  end

  return "Bid Level 3 Price: "..text
end

-- Dissect: Bid Level 3 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_3_price, range, value, "Bid Level 3 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Bid Level 3 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_3_price, range, value, display)

  return offset + length, value
end

-- Bid Level 3 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_volume = {}

-- Size: Bid Level 3 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_volume.size = 12

-- Display: Bid Level 3 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_volume.display = function(value)
  return "Bid Level 3 Volume: "..value
end

-- Dissect: Bid Level 3 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_3_volume, range, value, "Bid Level 3 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Bid Level 3 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_3_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 4 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_price = {}

-- Size: Bid Level 4 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_price.size = 11

-- Display: Bid Level 4 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Bid Level 4 Price: No Value"
  end

  return "Bid Level 4 Price: "..text
end

-- Dissect: Bid Level 4 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_4_price, range, value, "Bid Level 4 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Bid Level 4 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_4_price, range, value, display)

  return offset + length, value
end

-- Bid Level 4 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_volume = {}

-- Size: Bid Level 4 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_volume.size = 12

-- Display: Bid Level 4 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_volume.display = function(value)
  return "Bid Level 4 Volume: "..value
end

-- Dissect: Bid Level 4 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_4_volume, range, value, "Bid Level 4 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Bid Level 4 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_4_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 5 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_price = {}

-- Size: Bid Level 5 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_price.size = 11

-- Display: Bid Level 5 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Bid Level 5 Price: No Value"
  end

  return "Bid Level 5 Price: "..text
end

-- Dissect: Bid Level 5 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_5_price, range, value, "Bid Level 5 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Bid Level 5 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_5_price, range, value, display)

  return offset + length, value
end

-- Bid Level 5 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_volume = {}

-- Size: Bid Level 5 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_volume.size = 12

-- Display: Bid Level 5 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_volume.display = function(value)
  return "Bid Level 5 Volume: "..value
end

-- Dissect: Bid Level 5 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_5_volume, range, value, "Bid Level 5 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Bid Level 5 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_5_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 6 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_6_price = {}

-- Size: Bid Level 6 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_6_price.size = 11

-- Display: Bid Level 6 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_6_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_6_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Bid Level 6 Price: No Value"
  end

  return "Bid Level 6 Price: "..text
end

-- Dissect: Bid Level 6 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_6_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_6_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_6_price, range, value, "Bid Level 6 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Bid Level 6 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_6_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_6_price, range, value, display)

  return offset + length, value
end

-- Bid Level 6 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_6_volume = {}

-- Size: Bid Level 6 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_6_volume.size = 12

-- Display: Bid Level 6 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_6_volume.display = function(value)
  return "Bid Level 6 Volume: "..value
end

-- Dissect: Bid Level 6 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_6_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_6_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_6_volume, range, value, "Bid Level 6 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Bid Level 6 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_6_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_6_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 7 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_7_price = {}

-- Size: Bid Level 7 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_7_price.size = 11

-- Display: Bid Level 7 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_7_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_7_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Bid Level 7 Price: No Value"
  end

  return "Bid Level 7 Price: "..text
end

-- Dissect: Bid Level 7 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_7_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_7_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_7_price, range, value, "Bid Level 7 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Bid Level 7 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_7_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_7_price, range, value, display)

  return offset + length, value
end

-- Bid Level 7 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_7_volume = {}

-- Size: Bid Level 7 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_7_volume.size = 12

-- Display: Bid Level 7 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_7_volume.display = function(value)
  return "Bid Level 7 Volume: "..value
end

-- Dissect: Bid Level 7 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_7_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_7_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_7_volume, range, value, "Bid Level 7 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Bid Level 7 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_7_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_7_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 8 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_8_price = {}

-- Size: Bid Level 8 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_8_price.size = 11

-- Display: Bid Level 8 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_8_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_8_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Bid Level 8 Price: No Value"
  end

  return "Bid Level 8 Price: "..text
end

-- Dissect: Bid Level 8 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_8_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_8_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_8_price, range, value, "Bid Level 8 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Bid Level 8 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_8_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_8_price, range, value, display)

  return offset + length, value
end

-- Bid Level 8 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_8_volume = {}

-- Size: Bid Level 8 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_8_volume.size = 12

-- Display: Bid Level 8 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_8_volume.display = function(value)
  return "Bid Level 8 Volume: "..value
end

-- Dissect: Bid Level 8 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_8_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_8_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_8_volume, range, value, "Bid Level 8 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Bid Level 8 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_8_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_8_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 9 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_9_price = {}

-- Size: Bid Level 9 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_9_price.size = 11

-- Display: Bid Level 9 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_9_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_9_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Bid Level 9 Price: No Value"
  end

  return "Bid Level 9 Price: "..text
end

-- Dissect: Bid Level 9 Price
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_9_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_9_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_9_price, range, value, "Bid Level 9 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Bid Level 9 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_9_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_9_price, range, value, display)

  return offset + length, value
end

-- Bid Level 9 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_9_volume = {}

-- Size: Bid Level 9 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_9_volume.size = 12

-- Display: Bid Level 9 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_9_volume.display = function(value)
  return "Bid Level 9 Volume: "..value
end

-- Dissect: Bid Level 9 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_9_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_9_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_9_volume, range, value, "Bid Level 9 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Bid Level 9 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_9_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_level_9_volume, range, value, display)

  return offset + length, value
end

-- Bid Quote
koscom_mdcsrealtime_commodities_exture_v2_020.bid_quote = {}

-- Size: Bid Quote
koscom_mdcsrealtime_commodities_exture_v2_020.bid_quote.size = 9

-- Display: Bid Quote
koscom_mdcsrealtime_commodities_exture_v2_020.bid_quote.display = function(value)
  return "Bid Quote: "..value
end

-- Dissect: Bid Quote
koscom_mdcsrealtime_commodities_exture_v2_020.bid_quote.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.bid_quote.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.bid_quote.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bid_quote, range, value, display)

  return offset + length, value
end

-- Bidtocover Ratio
koscom_mdcsrealtime_commodities_exture_v2_020.bidtocover_ratio = {}

-- Size: Bidtocover Ratio
koscom_mdcsrealtime_commodities_exture_v2_020.bidtocover_ratio.size = 11

-- Display: Bidtocover Ratio
koscom_mdcsrealtime_commodities_exture_v2_020.bidtocover_ratio.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.bidtocover_ratio.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Bidtocover Ratio: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 2 then
    return "Bidtocover Ratio: "..text.." (expected 2 places)"
  end

  return "Bidtocover Ratio: "..text
end

-- Dissect: Bidtocover Ratio
koscom_mdcsrealtime_commodities_exture_v2_020.bidtocover_ratio.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.bidtocover_ratio.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bidtocover_ratio, range, value, "Bidtocover Ratio: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Bidtocover Ratio is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.bidtocover_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bidtocover_ratio, range, value, display)

  return offset + length, value
end

-- Block Trading Lower Limit Price
koscom_mdcsrealtime_commodities_exture_v2_020.block_trading_lower_limit_price = {}

-- Size: Block Trading Lower Limit Price
koscom_mdcsrealtime_commodities_exture_v2_020.block_trading_lower_limit_price.size = 11

-- Display: Block Trading Lower Limit Price
koscom_mdcsrealtime_commodities_exture_v2_020.block_trading_lower_limit_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.block_trading_lower_limit_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Block Trading Lower Limit Price: No Value"
  end

  return "Block Trading Lower Limit Price: "..text
end

-- Dissect: Block Trading Lower Limit Price
koscom_mdcsrealtime_commodities_exture_v2_020.block_trading_lower_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.block_trading_lower_limit_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.block_trading_lower_limit_price, range, value, "Block Trading Lower Limit Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Block Trading Lower Limit Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.block_trading_lower_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.block_trading_lower_limit_price, range, value, display)

  return offset + length, value
end

-- Block Trading Upper Limit Price
koscom_mdcsrealtime_commodities_exture_v2_020.block_trading_upper_limit_price = {}

-- Size: Block Trading Upper Limit Price
koscom_mdcsrealtime_commodities_exture_v2_020.block_trading_upper_limit_price.size = 11

-- Display: Block Trading Upper Limit Price
koscom_mdcsrealtime_commodities_exture_v2_020.block_trading_upper_limit_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.block_trading_upper_limit_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Block Trading Upper Limit Price: No Value"
  end

  return "Block Trading Upper Limit Price: "..text
end

-- Dissect: Block Trading Upper Limit Price
koscom_mdcsrealtime_commodities_exture_v2_020.block_trading_upper_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.block_trading_upper_limit_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.block_trading_upper_limit_price, range, value, "Block Trading Upper Limit Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Block Trading Upper Limit Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.block_trading_upper_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.block_trading_upper_limit_price, range, value, display)

  return offset + length, value
end

-- Board Event Group Code
koscom_mdcsrealtime_commodities_exture_v2_020.board_event_group_code = {}

-- Size: Board Event Group Code
koscom_mdcsrealtime_commodities_exture_v2_020.board_event_group_code.size = 5

-- Display: Board Event Group Code
koscom_mdcsrealtime_commodities_exture_v2_020.board_event_group_code.display = function(value)
  return "Board Event Group Code: "..value
end

-- Dissect: Board Event Group Code
koscom_mdcsrealtime_commodities_exture_v2_020.board_event_group_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.board_event_group_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.board_event_group_code, range, value, "Board Event Group Code: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Board Event Group Code is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.board_event_group_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.board_event_group_code, range, value, display)

  return offset + length, value
end

-- Board Event Id
koscom_mdcsrealtime_commodities_exture_v2_020.board_event_id = {}

-- Size: Board Event Id
koscom_mdcsrealtime_commodities_exture_v2_020.board_event_id.size = 3

-- Display: Board Event Id
koscom_mdcsrealtime_commodities_exture_v2_020.board_event_id.display = function(value)
  return "Board Event Id: "..value
end

-- Dissect: Board Event Id
koscom_mdcsrealtime_commodities_exture_v2_020.board_event_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.board_event_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.board_event_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.board_event_id, range, value, display)

  return offset + length, value
end

-- Board Id
koscom_mdcsrealtime_commodities_exture_v2_020.board_id = {}

-- Size: Board Id
koscom_mdcsrealtime_commodities_exture_v2_020.board_id.size = 2

-- Display: Board Id
koscom_mdcsrealtime_commodities_exture_v2_020.board_id.display = function(value)
  return "Board Id: "..value
end

-- Dissect: Board Id
koscom_mdcsrealtime_commodities_exture_v2_020.board_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.board_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.board_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.board_id, range, value, display)

  return offset + length, value
end

-- Bond Index Id
koscom_mdcsrealtime_commodities_exture_v2_020.bond_index_id = {}

-- Size: Bond Index Id
koscom_mdcsrealtime_commodities_exture_v2_020.bond_index_id.size = 6

-- Display: Bond Index Id
koscom_mdcsrealtime_commodities_exture_v2_020.bond_index_id.display = function(value)
  return "Bond Index Id: "..value
end

-- Dissect: Bond Index Id
koscom_mdcsrealtime_commodities_exture_v2_020.bond_index_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.bond_index_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.bond_index_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bond_index_id, range, value, display)

  return offset + length, value
end

-- Business Date
koscom_mdcsrealtime_commodities_exture_v2_020.business_date = {}

-- Size: Business Date
koscom_mdcsrealtime_commodities_exture_v2_020.business_date.size = 8

-- Display: Business Date
koscom_mdcsrealtime_commodities_exture_v2_020.business_date.display = function(value)
  return "Business Date: "..value
end

-- Dissect: Business Date
koscom_mdcsrealtime_commodities_exture_v2_020.business_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.business_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.business_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.business_date, range, value, display)

  return offset + length, value
end

-- Calculating Date
koscom_mdcsrealtime_commodities_exture_v2_020.calculating_date = {}

-- Size: Calculating Date
koscom_mdcsrealtime_commodities_exture_v2_020.calculating_date.size = 8

-- Display: Calculating Date
koscom_mdcsrealtime_commodities_exture_v2_020.calculating_date.display = function(value)
  if #value < 8 then
    return "Calculating Date: "..value
  end

  return "Calculating Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Calculating Date
koscom_mdcsrealtime_commodities_exture_v2_020.calculating_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.calculating_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.calculating_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.calculating_date, range, value, display)

  return offset + length, value
end

-- Calculating Time
koscom_mdcsrealtime_commodities_exture_v2_020.calculating_time = {}

-- Size: Calculating Time
koscom_mdcsrealtime_commodities_exture_v2_020.calculating_time.size = 8

-- Display: Calculating Time
koscom_mdcsrealtime_commodities_exture_v2_020.calculating_time.display = function(value)
  if #value < 6 then
    return "Calculating Time: "..value
  end

  return "Calculating Time: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Calculating Time
koscom_mdcsrealtime_commodities_exture_v2_020.calculating_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.calculating_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.calculating_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.calculating_time, range, value, display)

  return offset + length, value
end

-- Calculation Time
koscom_mdcsrealtime_commodities_exture_v2_020.calculation_time = {}

-- Size: Calculation Time
koscom_mdcsrealtime_commodities_exture_v2_020.calculation_time.size = 6

-- Display: Calculation Time
koscom_mdcsrealtime_commodities_exture_v2_020.calculation_time.display = function(value)
  if #value < 6 then
    return "Calculation Time: "..value
  end

  return "Calculation Time: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Calculation Time
koscom_mdcsrealtime_commodities_exture_v2_020.calculation_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.calculation_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.calculation_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.calculation_time, range, value, display)

  return offset + length, value
end

-- Call Re Investment Index Weight
koscom_mdcsrealtime_commodities_exture_v2_020.call_re_investment_index_weight = {}

-- Size: Call Re Investment Index Weight
koscom_mdcsrealtime_commodities_exture_v2_020.call_re_investment_index_weight.size = 16

-- Display: Call Re Investment Index Weight
koscom_mdcsrealtime_commodities_exture_v2_020.call_re_investment_index_weight.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.call_re_investment_index_weight.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.call_re_investment_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.call_re_investment_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.call_re_investment_index_weight, range, value, "Call Re Investment Index Weight: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Call Re Investment Index Weight is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.call_re_investment_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.call_re_investment_index_weight, range, value, display)

  return offset + length, value
end

-- Call Re-Investment Index Krx
koscom_mdcsrealtime_commodities_exture_v2_020.call_reinvestment_index_krx = {}

-- Size: Call Re-Investment Index Krx
koscom_mdcsrealtime_commodities_exture_v2_020.call_reinvestment_index_krx.size = 16

-- Display: Call Re-Investment Index Krx
koscom_mdcsrealtime_commodities_exture_v2_020.call_reinvestment_index_krx.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.call_reinvestment_index_krx.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.call_reinvestment_index_krx.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.call_reinvestment_index_krx.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.call_reinvestment_index_krx, range, value, "Call Re-Investment Index Krx: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Call Re-Investment Index Krx is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.call_reinvestment_index_krx.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.call_reinvestment_index_krx, range, value, display)

  return offset + length, value
end

-- Call Re-Investment Index Ktb
koscom_mdcsrealtime_commodities_exture_v2_020.call_reinvestment_index_ktb = {}

-- Size: Call Re-Investment Index Ktb
koscom_mdcsrealtime_commodities_exture_v2_020.call_reinvestment_index_ktb.size = 11

-- Display: Call Re-Investment Index Ktb
koscom_mdcsrealtime_commodities_exture_v2_020.call_reinvestment_index_ktb.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.call_reinvestment_index_ktb.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.call_reinvestment_index_ktb.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.call_reinvestment_index_ktb.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.call_reinvestment_index_ktb, range, value, "Call Re-Investment Index Ktb: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Call Re-Investment Index Ktb is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.call_reinvestment_index_ktb.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.call_reinvestment_index_ktb, range, value, display)

  return offset + length, value
end

-- Cash Inflow
koscom_mdcsrealtime_commodities_exture_v2_020.cash_inflow = {}

-- Size: Cash Inflow
koscom_mdcsrealtime_commodities_exture_v2_020.cash_inflow.size = 26

-- Display: Cash Inflow
koscom_mdcsrealtime_commodities_exture_v2_020.cash_inflow.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.cash_inflow.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.cash_inflow.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.cash_inflow.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.cash_inflow, range, value, "Cash Inflow: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Cash Inflow is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.cash_inflow.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.cash_inflow, range, value, display)

  return offset + length, value
end

-- Change From Previous Day
koscom_mdcsrealtime_commodities_exture_v2_020.change_from_previous_day = {}

-- Size: Change From Previous Day
koscom_mdcsrealtime_commodities_exture_v2_020.change_from_previous_day.size = 9

-- Display: Change From Previous Day
koscom_mdcsrealtime_commodities_exture_v2_020.change_from_previous_day.display = function(value)
  return "Change From Previous Day: "..value
end

-- Dissect: Change From Previous Day
koscom_mdcsrealtime_commodities_exture_v2_020.change_from_previous_day.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.change_from_previous_day.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.change_from_previous_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.change_from_previous_day, range, value, display)

  return offset + length, value
end

-- Change From Previous Day Sign
koscom_mdcsrealtime_commodities_exture_v2_020.change_from_previous_day_sign = {}

-- Size: Change From Previous Day Sign
koscom_mdcsrealtime_commodities_exture_v2_020.change_from_previous_day_sign.size = 1

-- Display: Change From Previous Day Sign
koscom_mdcsrealtime_commodities_exture_v2_020.change_from_previous_day_sign.display = function(value)
  return "Change From Previous Day Sign: "..value
end

-- Dissect: Change From Previous Day Sign
koscom_mdcsrealtime_commodities_exture_v2_020.change_from_previous_day_sign.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.change_from_previous_day_sign.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.change_from_previous_day_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.change_from_previous_day_sign, range, value, display)

  return offset + length, value
end

-- Clean Price
koscom_mdcsrealtime_commodities_exture_v2_020.clean_price = {}

-- Size: Clean Price
koscom_mdcsrealtime_commodities_exture_v2_020.clean_price.size = 10

-- Display: Clean Price
koscom_mdcsrealtime_commodities_exture_v2_020.clean_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.clean_price.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.clean_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.clean_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.clean_price, range, value, "Clean Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Clean Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.clean_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.clean_price, range, value, display)

  return offset + length, value
end

-- Clean Price Index Krx
koscom_mdcsrealtime_commodities_exture_v2_020.clean_price_index_krx = {}

-- Size: Clean Price Index Krx
koscom_mdcsrealtime_commodities_exture_v2_020.clean_price_index_krx.size = 16

-- Display: Clean Price Index Krx
koscom_mdcsrealtime_commodities_exture_v2_020.clean_price_index_krx.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.clean_price_index_krx.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.clean_price_index_krx.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.clean_price_index_krx.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.clean_price_index_krx, range, value, "Clean Price Index Krx: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Clean Price Index Krx is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.clean_price_index_krx.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.clean_price_index_krx, range, value, display)

  return offset + length, value
end

-- Clean Price Index Ktb
koscom_mdcsrealtime_commodities_exture_v2_020.clean_price_index_ktb = {}

-- Size: Clean Price Index Ktb
koscom_mdcsrealtime_commodities_exture_v2_020.clean_price_index_ktb.size = 11

-- Display: Clean Price Index Ktb
koscom_mdcsrealtime_commodities_exture_v2_020.clean_price_index_ktb.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.clean_price_index_ktb.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.clean_price_index_ktb.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.clean_price_index_ktb.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.clean_price_index_ktb, range, value, "Clean Price Index Ktb: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Clean Price Index Ktb is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.clean_price_index_ktb.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.clean_price_index_ktb, range, value, display)

  return offset + length, value
end

-- Clean Price Index Weight
koscom_mdcsrealtime_commodities_exture_v2_020.clean_price_index_weight = {}

-- Size: Clean Price Index Weight
koscom_mdcsrealtime_commodities_exture_v2_020.clean_price_index_weight.size = 16

-- Display: Clean Price Index Weight
koscom_mdcsrealtime_commodities_exture_v2_020.clean_price_index_weight.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.clean_price_index_weight.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.clean_price_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.clean_price_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.clean_price_index_weight, range, value, "Clean Price Index Weight: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Clean Price Index Weight is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.clean_price_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.clean_price_index_weight, range, value, display)

  return offset + length, value
end

-- Closing Price
koscom_mdcsrealtime_commodities_exture_v2_020.closing_price = {}

-- Size: Closing Price
koscom_mdcsrealtime_commodities_exture_v2_020.closing_price.size = 11

-- Display: Closing Price
koscom_mdcsrealtime_commodities_exture_v2_020.closing_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.closing_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Closing Price: No Value"
  end

  return "Closing Price: "..text
end

-- Dissect: Closing Price
koscom_mdcsrealtime_commodities_exture_v2_020.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.closing_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.closing_price, range, value, "Closing Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Closing Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Closing Price Base Price Of Buy In
koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_base_price_of_buy_in = {}

-- Size: Closing Price Base Price Of Buy In
koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_base_price_of_buy_in.size = 11

-- Display: Closing Price Base Price Of Buy In
koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_base_price_of_buy_in.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_base_price_of_buy_in.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Closing Price Base Price Of Buy In: No Value"
  end

  return "Closing Price Base Price Of Buy In: "..text
end

-- Dissect: Closing Price Base Price Of Buy In
koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_base_price_of_buy_in.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_base_price_of_buy_in.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.closing_price_base_price_of_buy_in, range, value, "Closing Price Base Price Of Buy In: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Closing Price Base Price Of Buy In is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_base_price_of_buy_in.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.closing_price_base_price_of_buy_in, range, value, display)

  return offset + length, value
end

-- Closing Price Lower Limit Of Buy In
koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_lower_limit_of_buy_in = {}

-- Size: Closing Price Lower Limit Of Buy In
koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_lower_limit_of_buy_in.size = 11

-- Display: Closing Price Lower Limit Of Buy In
koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_lower_limit_of_buy_in.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_lower_limit_of_buy_in.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Closing Price Lower Limit Of Buy In: No Value"
  end

  return "Closing Price Lower Limit Of Buy In: "..text
end

-- Dissect: Closing Price Lower Limit Of Buy In
koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_lower_limit_of_buy_in.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_lower_limit_of_buy_in.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.closing_price_lower_limit_of_buy_in, range, value, "Closing Price Lower Limit Of Buy In: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Closing Price Lower Limit Of Buy In is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_lower_limit_of_buy_in.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.closing_price_lower_limit_of_buy_in, range, value, display)

  return offset + length, value
end

-- Closing Price Type Code
koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_type_code = {}

-- Size: Closing Price Type Code
koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_type_code.size = 1

-- Display: Closing Price Type Code
koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_type_code.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Closing Price Type Code: No Value"
  end

  return "Closing Price Type Code: "..value
end

-- Dissect: Closing Price Type Code
koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_type_code.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding)
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.closing_price_type_code, range, value, display)

  return offset + length, value
end

-- Closing Price Upper Limit Of Buy In
koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_upper_limit_of_buy_in = {}

-- Size: Closing Price Upper Limit Of Buy In
koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_upper_limit_of_buy_in.size = 11

-- Display: Closing Price Upper Limit Of Buy In
koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_upper_limit_of_buy_in.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_upper_limit_of_buy_in.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Closing Price Upper Limit Of Buy In: No Value"
  end

  return "Closing Price Upper Limit Of Buy In: "..text
end

-- Dissect: Closing Price Upper Limit Of Buy In
koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_upper_limit_of_buy_in.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_upper_limit_of_buy_in.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.closing_price_upper_limit_of_buy_in, range, value, "Closing Price Upper Limit Of Buy In: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Closing Price Upper Limit Of Buy In is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_upper_limit_of_buy_in.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.closing_price_upper_limit_of_buy_in, range, value, display)

  return offset + length, value
end

-- Closing Price Weighted Stock Price Average
koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_weighted_stock_price_average = {}

-- Size: Closing Price Weighted Stock Price Average
koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_weighted_stock_price_average.size = 11

-- Display: Closing Price Weighted Stock Price Average
koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_weighted_stock_price_average.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_weighted_stock_price_average.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Closing Price Weighted Stock Price Average: No Value"
  end

  return "Closing Price Weighted Stock Price Average: "..text
end

-- Dissect: Closing Price Weighted Stock Price Average
koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_weighted_stock_price_average.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_weighted_stock_price_average.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.closing_price_weighted_stock_price_average, range, value, "Closing Price Weighted Stock Price Average: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Closing Price Weighted Stock Price Average is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_weighted_stock_price_average.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.closing_price_weighted_stock_price_average, range, value, display)

  return offset + length, value
end

-- Conversion Basic Exchange Rate
koscom_mdcsrealtime_commodities_exture_v2_020.conversion_basic_exchange_rate = {}

-- Size: Conversion Basic Exchange Rate
koscom_mdcsrealtime_commodities_exture_v2_020.conversion_basic_exchange_rate.size = 9

-- Display: Conversion Basic Exchange Rate
koscom_mdcsrealtime_commodities_exture_v2_020.conversion_basic_exchange_rate.display = function(value)
  return "Conversion Basic Exchange Rate: "..value
end

-- Dissect: Conversion Basic Exchange Rate
koscom_mdcsrealtime_commodities_exture_v2_020.conversion_basic_exchange_rate.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.conversion_basic_exchange_rate.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.conversion_basic_exchange_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.conversion_basic_exchange_rate, range, value, display)

  return offset + length, value
end

-- Convexity
koscom_mdcsrealtime_commodities_exture_v2_020.convexity = {}

-- Size: Convexity
koscom_mdcsrealtime_commodities_exture_v2_020.convexity.size = 7

-- Display: Convexity
koscom_mdcsrealtime_commodities_exture_v2_020.convexity.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.convexity.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.convexity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.convexity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.convexity, range, value, "Convexity: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Convexity is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.convexity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.convexity, range, value, display)

  return offset + length, value
end

-- Currency Code
koscom_mdcsrealtime_commodities_exture_v2_020.currency_code = {}

-- Size: Currency Code
koscom_mdcsrealtime_commodities_exture_v2_020.currency_code.size = 6

-- Display: Currency Code
koscom_mdcsrealtime_commodities_exture_v2_020.currency_code.labels = {
  ["KRW"] = "Currency Code: Korean Won (KRW)",
  ["JPY"] = "Currency Code: Japanese Yen (JPY)",
  ["USD"] = "Currency Code: Us Dollar (USD)",
  ["HKD"] = "Currency Code: Hong Kong Dollar (HKD)",
  ["TWD"] = "Currency Code: Taiwan Dollar (TWD)",
  ["CNY"] = "Currency Code: Chinese Yuan (CNY)",
  ["EUR"] = "Currency Code: Euro (EUR)",
  ["GBP"] = "Currency Code: British Pound (GBP)",
}

koscom_mdcsrealtime_commodities_exture_v2_020.currency_code.display = function(value)
  return koscom_mdcsrealtime_commodities_exture_v2_020.currency_code.labels[value] or "Currency Code: Unknown("..value..")"
end

-- Dissect: Currency Code
koscom_mdcsrealtime_commodities_exture_v2_020.currency_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.currency_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.currency_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.currency_code, range, value, display)

  return offset + length, value
end

-- Current Price
koscom_mdcsrealtime_commodities_exture_v2_020.current_price = {}

-- Size: Current Price
koscom_mdcsrealtime_commodities_exture_v2_020.current_price.size = 11

-- Display: Current Price
koscom_mdcsrealtime_commodities_exture_v2_020.current_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.current_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Current Price: No Value"
  end

  return "Current Price: "..text
end

-- Dissect: Current Price
koscom_mdcsrealtime_commodities_exture_v2_020.current_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.current_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.current_price, range, value, "Current Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Current Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.current_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.current_price, range, value, display)

  return offset + length, value
end

-- Current Time
koscom_mdcsrealtime_commodities_exture_v2_020.current_time = {}

-- Size: Current Time
koscom_mdcsrealtime_commodities_exture_v2_020.current_time.size = 4

-- Display: Current Time
koscom_mdcsrealtime_commodities_exture_v2_020.current_time.display = function(value)
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
koscom_mdcsrealtime_commodities_exture_v2_020.current_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.current_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.current_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.current_time, range, value, display)

  return offset + length, value
end

-- Data Type
koscom_mdcsrealtime_commodities_exture_v2_020.data_type = {}

-- Size: Data Type
koscom_mdcsrealtime_commodities_exture_v2_020.data_type.size = 1

-- Display: Data Type
koscom_mdcsrealtime_commodities_exture_v2_020.data_type.display = function(value)
  return "Data Type: "..value
end

-- Dissect: Data Type
koscom_mdcsrealtime_commodities_exture_v2_020.data_type.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.data_type.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.data_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.data_type, range, value, display)

  return offset + length, value
end

-- Delisting Date
koscom_mdcsrealtime_commodities_exture_v2_020.delisting_date = {}

-- Size: Delisting Date
koscom_mdcsrealtime_commodities_exture_v2_020.delisting_date.size = 8

-- Display: Delisting Date
koscom_mdcsrealtime_commodities_exture_v2_020.delisting_date.display = function(value)
  return "Delisting Date: "..value
end

-- Dissect: Delisting Date
koscom_mdcsrealtime_commodities_exture_v2_020.delisting_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.delisting_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.delisting_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.delisting_date, range, value, display)

  return offset + length, value
end

-- Duration
koscom_mdcsrealtime_commodities_exture_v2_020.duration = {}

-- Size: Duration
koscom_mdcsrealtime_commodities_exture_v2_020.duration.size = 7

-- Display: Duration
koscom_mdcsrealtime_commodities_exture_v2_020.duration.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.duration.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.duration.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.duration.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.duration, range, value, "Duration: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Duration is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.duration.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.duration, range, value, display)

  return offset + length, value
end

-- End Keyword
koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword = {}

-- Size: End Keyword
koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.size = 1

-- Display: End Keyword
koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.labels = {
  [255] = "End Keyword: End Of Message (255)",
}

koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.display = function(value)
  return koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.labels[value] or "End Keyword: Unknown("..value..")"
end

-- Dissect: End Keyword
koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.end_keyword, range, value, display)

  return offset + length, value
end

-- English Issue Name
koscom_mdcsrealtime_commodities_exture_v2_020.english_issue_name = {}

-- Size: English Issue Name
koscom_mdcsrealtime_commodities_exture_v2_020.english_issue_name.size = 80

-- Display: English Issue Name
koscom_mdcsrealtime_commodities_exture_v2_020.english_issue_name.display = function(value)
  return "English Issue Name: "..value
end

-- Dissect: English Issue Name
koscom_mdcsrealtime_commodities_exture_v2_020.english_issue_name.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.english_issue_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.english_issue_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.english_issue_name, range, value, display)

  return offset + length, value
end

-- Estimated Trading Price
koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_price = {}

-- Size: Estimated Trading Price
koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_price.size = 11

-- Display: Estimated Trading Price
koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Estimated Trading Price: No Value"
  end

  return "Estimated Trading Price: "..text
end

-- Dissect: Estimated Trading Price
koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.estimated_trading_price, range, value, "Estimated Trading Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Estimated Trading Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.estimated_trading_price, range, value, display)

  return offset + length, value
end

-- Estimated Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_volume = {}

-- Size: Estimated Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_volume.size = 12

-- Display: Estimated Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_volume.display = function(value)
  return "Estimated Trading Volume: "..value
end

-- Dissect: Estimated Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.estimated_trading_volume, range, value, "Estimated Trading Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Estimated Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.estimated_trading_volume, range, value, display)

  return offset + length, value
end

-- Expected Time Of Expanding Price Limit Range
koscom_mdcsrealtime_commodities_exture_v2_020.expected_time_of_expanding_price_limit_range = {}

-- Size: Expected Time Of Expanding Price Limit Range
koscom_mdcsrealtime_commodities_exture_v2_020.expected_time_of_expanding_price_limit_range.size = 9

-- Display: Expected Time Of Expanding Price Limit Range
koscom_mdcsrealtime_commodities_exture_v2_020.expected_time_of_expanding_price_limit_range.display = function(value)
  return "Expected Time Of Expanding Price Limit Range: "..value
end

-- Dissect: Expected Time Of Expanding Price Limit Range
koscom_mdcsrealtime_commodities_exture_v2_020.expected_time_of_expanding_price_limit_range.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.expected_time_of_expanding_price_limit_range.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.expected_time_of_expanding_price_limit_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.expected_time_of_expanding_price_limit_range, range, value, display)

  return offset + length, value
end

-- Filler 11
koscom_mdcsrealtime_commodities_exture_v2_020.filler_11 = {}

-- Size: Filler 11
koscom_mdcsrealtime_commodities_exture_v2_020.filler_11.size = 11

-- Display: Filler 11
koscom_mdcsrealtime_commodities_exture_v2_020.filler_11.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.filler_11.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Filler 11: No Value"
  end

  return "Filler 11: "..text
end

-- Dissect: Filler 11
koscom_mdcsrealtime_commodities_exture_v2_020.filler_11.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.filler_11.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.filler_11, range, value, "Filler 11: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Filler 11 is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.filler_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.filler_11, range, value, display)

  return offset + length, value
end

-- Filler 4
koscom_mdcsrealtime_commodities_exture_v2_020.filler_4 = {}

-- Size: Filler 4
koscom_mdcsrealtime_commodities_exture_v2_020.filler_4.size = 4

-- Display: Filler 4
koscom_mdcsrealtime_commodities_exture_v2_020.filler_4.display = function(value)
  return "Filler 4: "..value
end

-- Dissect: Filler 4
koscom_mdcsrealtime_commodities_exture_v2_020.filler_4.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.filler_4.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.filler_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.filler_4, range, value, display)

  return offset + length, value
end

-- Final Ask Bid Type Code
koscom_mdcsrealtime_commodities_exture_v2_020.final_ask_bid_type_code = {}

-- Size: Final Ask Bid Type Code
koscom_mdcsrealtime_commodities_exture_v2_020.final_ask_bid_type_code.size = 1

-- Display: Final Ask Bid Type Code
koscom_mdcsrealtime_commodities_exture_v2_020.final_ask_bid_type_code.display = function(value)
  if value == " " then
    return "Final Ask Bid Type Code: Single Price (<whitespace>)"
  end
  if value == "0" then
    return "Final Ask Bid Type Code: Not Applicable (0)"
  end
  if value == "1" then
    return "Final Ask Bid Type Code: Ask (1)"
  end
  if value == "2" then
    return "Final Ask Bid Type Code: Bid (2)"
  end

  return "Final Ask Bid Type Code: Unknown("..value..")"
end

-- Dissect: Final Ask Bid Type Code
koscom_mdcsrealtime_commodities_exture_v2_020.final_ask_bid_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.final_ask_bid_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.final_ask_bid_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.final_ask_bid_type_code, range, value, display)

  return offset + length, value
end

-- Fluctuating Rate
koscom_mdcsrealtime_commodities_exture_v2_020.fluctuating_rate = {}

-- Size: Fluctuating Rate
koscom_mdcsrealtime_commodities_exture_v2_020.fluctuating_rate.size = 9

-- Display: Fluctuating Rate
koscom_mdcsrealtime_commodities_exture_v2_020.fluctuating_rate.display = function(value)
  return "Fluctuating Rate: "..value
end

-- Dissect: Fluctuating Rate
koscom_mdcsrealtime_commodities_exture_v2_020.fluctuating_rate.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.fluctuating_rate.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.fluctuating_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.fluctuating_rate, range, value, display)

  return offset + length, value
end

-- Futures Basis Price
koscom_mdcsrealtime_commodities_exture_v2_020.futures_basis_price = {}

-- Size: Futures Basis Price
koscom_mdcsrealtime_commodities_exture_v2_020.futures_basis_price.size = 10

-- Display: Futures Basis Price
koscom_mdcsrealtime_commodities_exture_v2_020.futures_basis_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.futures_basis_price.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.futures_basis_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.futures_basis_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.futures_basis_price, range, value, "Futures Basis Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Futures Basis Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.futures_basis_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.futures_basis_price, range, value, display)

  return offset + length, value
end

-- Group Code
koscom_mdcsrealtime_commodities_exture_v2_020.group_code = {}

-- Size: Group Code
koscom_mdcsrealtime_commodities_exture_v2_020.group_code.size = 5

-- Display: Group Code
koscom_mdcsrealtime_commodities_exture_v2_020.group_code.display = function(value)
  return "Group Code: "..value
end

-- Dissect: Group Code
koscom_mdcsrealtime_commodities_exture_v2_020.group_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.group_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.group_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.group_code, range, value, display)

  return offset + length, value
end

-- High Price
koscom_mdcsrealtime_commodities_exture_v2_020.high_price = {}

-- Size: High Price
koscom_mdcsrealtime_commodities_exture_v2_020.high_price.size = 9

-- Display: High Price
koscom_mdcsrealtime_commodities_exture_v2_020.high_price.display = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
koscom_mdcsrealtime_commodities_exture_v2_020.high_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.high_price.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.high_price, range, value, display)

  return offset + length, value
end

-- Index
koscom_mdcsrealtime_commodities_exture_v2_020.index = {}

-- Size: Index
koscom_mdcsrealtime_commodities_exture_v2_020.index.size = 9

-- Display: Index
koscom_mdcsrealtime_commodities_exture_v2_020.index.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.index.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.index.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.index.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.index, range, value, "Index: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Index is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.index.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.index, range, value, display)

  return offset + length, value
end

-- Index Change Against The Previous Day
koscom_mdcsrealtime_commodities_exture_v2_020.index_change_against_the_previous_day = {}

-- Size: Index Change Against The Previous Day
koscom_mdcsrealtime_commodities_exture_v2_020.index_change_against_the_previous_day.size = 9

-- Display: Index Change Against The Previous Day
koscom_mdcsrealtime_commodities_exture_v2_020.index_change_against_the_previous_day.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.index_change_against_the_previous_day.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.index_change_against_the_previous_day.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.index_change_against_the_previous_day.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.index_change_against_the_previous_day, range, value, "Index Change Against The Previous Day: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Index Change Against The Previous Day is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.index_change_against_the_previous_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.index_change_against_the_previous_day, range, value, display)

  return offset + length, value
end

-- Index Change Sign Against The Previous Day
koscom_mdcsrealtime_commodities_exture_v2_020.index_change_sign_against_the_previous_day = {}

-- Size: Index Change Sign Against The Previous Day
koscom_mdcsrealtime_commodities_exture_v2_020.index_change_sign_against_the_previous_day.size = 1

-- Display: Index Change Sign Against The Previous Day
koscom_mdcsrealtime_commodities_exture_v2_020.index_change_sign_against_the_previous_day.display = function(value)
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
koscom_mdcsrealtime_commodities_exture_v2_020.index_change_sign_against_the_previous_day.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.index_change_sign_against_the_previous_day.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.index_change_sign_against_the_previous_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.index_change_sign_against_the_previous_day, range, value, display)

  return offset + length, value
end

-- Index Constituent
koscom_mdcsrealtime_commodities_exture_v2_020.index_constituent = {}

-- Size: Index Constituent
koscom_mdcsrealtime_commodities_exture_v2_020.index_constituent.size = 1

-- Display: Index Constituent
koscom_mdcsrealtime_commodities_exture_v2_020.index_constituent.labels = {
  ["0"] = "Index Constituent: Included In Etf Not In Index (0)",
  ["1"] = "Index Constituent: Included In Index (1)",
}

koscom_mdcsrealtime_commodities_exture_v2_020.index_constituent.display = function(value)
  return koscom_mdcsrealtime_commodities_exture_v2_020.index_constituent.labels[value] or "Index Constituent: Unknown("..value..")"
end

-- Dissect: Index Constituent
koscom_mdcsrealtime_commodities_exture_v2_020.index_constituent.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.index_constituent.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.index_constituent.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.index_constituent, range, value, display)

  return offset + length, value
end

-- Index Id
koscom_mdcsrealtime_commodities_exture_v2_020.index_id = {}

-- Size: Index Id
koscom_mdcsrealtime_commodities_exture_v2_020.index_id.size = 6

-- Display: Index Id
koscom_mdcsrealtime_commodities_exture_v2_020.index_id.display = function(value)
  return "Index Id: "..value
end

-- Dissect: Index Id
koscom_mdcsrealtime_commodities_exture_v2_020.index_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.index_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.index_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.index_id, range, value, display)

  return offset + length, value
end

-- Index Market Capitalization
koscom_mdcsrealtime_commodities_exture_v2_020.index_market_capitalization = {}

-- Size: Index Market Capitalization
koscom_mdcsrealtime_commodities_exture_v2_020.index_market_capitalization.size = 20

-- Display: Index Market Capitalization
koscom_mdcsrealtime_commodities_exture_v2_020.index_market_capitalization.display = function(value)
  return "Index Market Capitalization: "..value
end

-- Dissect: Index Market Capitalization
koscom_mdcsrealtime_commodities_exture_v2_020.index_market_capitalization.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.index_market_capitalization.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.index_market_capitalization, range, value, "Index Market Capitalization: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Index Market Capitalization is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.index_market_capitalization.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.index_market_capitalization, range, value, display)

  return offset + length, value
end

-- Index Number Of Securities
koscom_mdcsrealtime_commodities_exture_v2_020.index_number_of_securities = {}

-- Size: Index Number Of Securities
koscom_mdcsrealtime_commodities_exture_v2_020.index_number_of_securities.size = 8

-- Display: Index Number Of Securities
koscom_mdcsrealtime_commodities_exture_v2_020.index_number_of_securities.display = function(value)
  return "Index Number Of Securities: "..value
end

-- Dissect: Index Number Of Securities
koscom_mdcsrealtime_commodities_exture_v2_020.index_number_of_securities.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.index_number_of_securities.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.index_number_of_securities, range, value, "Index Number Of Securities: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Index Number Of Securities is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.index_number_of_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.index_number_of_securities, range, value, display)

  return offset + length, value
end

-- Isin Code
koscom_mdcsrealtime_commodities_exture_v2_020.isin_code = {}

-- Size: Isin Code
koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.size = 12

-- Display: Isin Code
koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.display = function(value)
  return "Isin Code: "..value
end

-- Dissect: Isin Code
koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.isin_code, range, value, display)

  return offset + length, value
end

-- Isin Code Of A Common Stock
koscom_mdcsrealtime_commodities_exture_v2_020.isin_code_of_a_common_stock = {}

-- Size: Isin Code Of A Common Stock
koscom_mdcsrealtime_commodities_exture_v2_020.isin_code_of_a_common_stock.size = 12

-- Display: Isin Code Of A Common Stock
koscom_mdcsrealtime_commodities_exture_v2_020.isin_code_of_a_common_stock.display = function(value)
  return "Isin Code Of A Common Stock: "..value
end

-- Dissect: Isin Code Of A Common Stock
koscom_mdcsrealtime_commodities_exture_v2_020.isin_code_of_a_common_stock.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.isin_code_of_a_common_stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.isin_code_of_a_common_stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.isin_code_of_a_common_stock, range, value, display)

  return offset + length, value
end

-- Issue Name
koscom_mdcsrealtime_commodities_exture_v2_020.issue_name = {}

-- Size: Issue Name
koscom_mdcsrealtime_commodities_exture_v2_020.issue_name.size = 80

-- Display: Issue Name
koscom_mdcsrealtime_commodities_exture_v2_020.issue_name.display = function(value)
  return "Issue Name: "..value
end

-- Dissect: Issue Name
koscom_mdcsrealtime_commodities_exture_v2_020.issue_name.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.issue_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.issue_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.issue_name, range, value, display)

  return offset + length, value
end

-- Issued Amount
koscom_mdcsrealtime_commodities_exture_v2_020.issued_amount = {}

-- Size: Issued Amount
koscom_mdcsrealtime_commodities_exture_v2_020.issued_amount.size = 20

-- Display: Issued Amount
koscom_mdcsrealtime_commodities_exture_v2_020.issued_amount.display = function(value)
  return "Issued Amount: "..value
end

-- Dissect: Issued Amount
koscom_mdcsrealtime_commodities_exture_v2_020.issued_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.issued_amount.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.issued_amount, range, value, "Issued Amount: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Issued Amount is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.issued_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.issued_amount, range, value, display)

  return offset + length, value
end

-- Issued Amount Weight
koscom_mdcsrealtime_commodities_exture_v2_020.issued_amount_weight = {}

-- Size: Issued Amount Weight
koscom_mdcsrealtime_commodities_exture_v2_020.issued_amount_weight.size = 16

-- Display: Issued Amount Weight
koscom_mdcsrealtime_commodities_exture_v2_020.issued_amount_weight.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.issued_amount_weight.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.issued_amount_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.issued_amount_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.issued_amount_weight, range, value, "Issued Amount Weight: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Issued Amount Weight is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.issued_amount_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.issued_amount_weight, range, value, display)

  return offset + length, value
end

-- Job Code Symbol
koscom_mdcsrealtime_commodities_exture_v2_020.job_code_symbol = {}

-- Size: Job Code Symbol
koscom_mdcsrealtime_commodities_exture_v2_020.job_code_symbol.size = 16

-- Display: Job Code Symbol
koscom_mdcsrealtime_commodities_exture_v2_020.job_code_symbol.display = function(value)
  return "Job Code Symbol: "..value
end

-- Dissect: Job Code Symbol
koscom_mdcsrealtime_commodities_exture_v2_020.job_code_symbol.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.job_code_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.job_code_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.job_code_symbol, range, value, display)

  return offset + length, value
end

-- Listing Date
koscom_mdcsrealtime_commodities_exture_v2_020.listing_date = {}

-- Size: Listing Date
koscom_mdcsrealtime_commodities_exture_v2_020.listing_date.size = 8

-- Display: Listing Date
koscom_mdcsrealtime_commodities_exture_v2_020.listing_date.display = function(value)
  return "Listing Date: "..value
end

-- Dissect: Listing Date
koscom_mdcsrealtime_commodities_exture_v2_020.listing_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.listing_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.listing_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.listing_date, range, value, display)

  return offset + length, value
end

-- Low Price
koscom_mdcsrealtime_commodities_exture_v2_020.low_price = {}

-- Size: Low Price
koscom_mdcsrealtime_commodities_exture_v2_020.low_price.size = 9

-- Display: Low Price
koscom_mdcsrealtime_commodities_exture_v2_020.low_price.display = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
koscom_mdcsrealtime_commodities_exture_v2_020.low_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.low_price.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.low_price, range, value, display)

  return offset + length, value
end

-- Lower Limit Of Base Price
koscom_mdcsrealtime_commodities_exture_v2_020.lower_limit_of_base_price = {}

-- Size: Lower Limit Of Base Price
koscom_mdcsrealtime_commodities_exture_v2_020.lower_limit_of_base_price.size = 11

-- Display: Lower Limit Of Base Price
koscom_mdcsrealtime_commodities_exture_v2_020.lower_limit_of_base_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.lower_limit_of_base_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Lower Limit Of Base Price: No Value"
  end

  return "Lower Limit Of Base Price: "..text
end

-- Dissect: Lower Limit Of Base Price
koscom_mdcsrealtime_commodities_exture_v2_020.lower_limit_of_base_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.lower_limit_of_base_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lower_limit_of_base_price, range, value, "Lower Limit Of Base Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Lower Limit Of Base Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.lower_limit_of_base_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lower_limit_of_base_price, range, value, display)

  return offset + length, value
end

-- Lower Limit Price
koscom_mdcsrealtime_commodities_exture_v2_020.lower_limit_price = {}

-- Size: Lower Limit Price
koscom_mdcsrealtime_commodities_exture_v2_020.lower_limit_price.size = 11

-- Display: Lower Limit Price
koscom_mdcsrealtime_commodities_exture_v2_020.lower_limit_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.lower_limit_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Lower Limit Price: No Value"
  end

  return "Lower Limit Price: "..text
end

-- Dissect: Lower Limit Price
koscom_mdcsrealtime_commodities_exture_v2_020.lower_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.lower_limit_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lower_limit_price, range, value, "Lower Limit Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Lower Limit Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.lower_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lower_limit_price, range, value, display)

  return offset + length, value
end

-- Lp Ask Level 1 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_1_volume = {}

-- Size: Lp Ask Level 1 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_1_volume.size = 12

-- Display: Lp Ask Level 1 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_1_volume.display = function(value)
  return "Lp Ask Level 1 Volume: "..value
end

-- Dissect: Lp Ask Level 1 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_1_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_1_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_ask_level_1_volume, range, value, "Lp Ask Level 1 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Lp Ask Level 1 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_1_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_ask_level_1_volume, range, value, display)

  return offset + length, value
end

-- Lp Ask Level 10 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_10_volume = {}

-- Size: Lp Ask Level 10 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_10_volume.size = 12

-- Display: Lp Ask Level 10 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_10_volume.display = function(value)
  return "Lp Ask Level 10 Volume: "..value
end

-- Dissect: Lp Ask Level 10 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_10_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_10_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_ask_level_10_volume, range, value, "Lp Ask Level 10 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Lp Ask Level 10 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_10_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_ask_level_10_volume, range, value, display)

  return offset + length, value
end

-- Lp Ask Level 2 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_2_volume = {}

-- Size: Lp Ask Level 2 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_2_volume.size = 12

-- Display: Lp Ask Level 2 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_2_volume.display = function(value)
  return "Lp Ask Level 2 Volume: "..value
end

-- Dissect: Lp Ask Level 2 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_2_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_2_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_ask_level_2_volume, range, value, "Lp Ask Level 2 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Lp Ask Level 2 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_2_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_ask_level_2_volume, range, value, display)

  return offset + length, value
end

-- Lp Ask Level 3 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_3_volume = {}

-- Size: Lp Ask Level 3 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_3_volume.size = 12

-- Display: Lp Ask Level 3 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_3_volume.display = function(value)
  return "Lp Ask Level 3 Volume: "..value
end

-- Dissect: Lp Ask Level 3 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_3_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_3_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_ask_level_3_volume, range, value, "Lp Ask Level 3 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Lp Ask Level 3 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_3_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_ask_level_3_volume, range, value, display)

  return offset + length, value
end

-- Lp Ask Level 4 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_4_volume = {}

-- Size: Lp Ask Level 4 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_4_volume.size = 12

-- Display: Lp Ask Level 4 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_4_volume.display = function(value)
  return "Lp Ask Level 4 Volume: "..value
end

-- Dissect: Lp Ask Level 4 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_4_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_4_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_ask_level_4_volume, range, value, "Lp Ask Level 4 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Lp Ask Level 4 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_4_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_ask_level_4_volume, range, value, display)

  return offset + length, value
end

-- Lp Ask Level 5 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_5_volume = {}

-- Size: Lp Ask Level 5 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_5_volume.size = 12

-- Display: Lp Ask Level 5 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_5_volume.display = function(value)
  return "Lp Ask Level 5 Volume: "..value
end

-- Dissect: Lp Ask Level 5 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_5_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_5_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_ask_level_5_volume, range, value, "Lp Ask Level 5 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Lp Ask Level 5 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_5_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_ask_level_5_volume, range, value, display)

  return offset + length, value
end

-- Lp Ask Level 6 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_6_volume = {}

-- Size: Lp Ask Level 6 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_6_volume.size = 12

-- Display: Lp Ask Level 6 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_6_volume.display = function(value)
  return "Lp Ask Level 6 Volume: "..value
end

-- Dissect: Lp Ask Level 6 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_6_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_6_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_ask_level_6_volume, range, value, "Lp Ask Level 6 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Lp Ask Level 6 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_6_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_ask_level_6_volume, range, value, display)

  return offset + length, value
end

-- Lp Ask Level 7 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_7_volume = {}

-- Size: Lp Ask Level 7 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_7_volume.size = 12

-- Display: Lp Ask Level 7 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_7_volume.display = function(value)
  return "Lp Ask Level 7 Volume: "..value
end

-- Dissect: Lp Ask Level 7 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_7_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_7_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_ask_level_7_volume, range, value, "Lp Ask Level 7 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Lp Ask Level 7 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_7_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_ask_level_7_volume, range, value, display)

  return offset + length, value
end

-- Lp Ask Level 8 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_8_volume = {}

-- Size: Lp Ask Level 8 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_8_volume.size = 12

-- Display: Lp Ask Level 8 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_8_volume.display = function(value)
  return "Lp Ask Level 8 Volume: "..value
end

-- Dissect: Lp Ask Level 8 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_8_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_8_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_ask_level_8_volume, range, value, "Lp Ask Level 8 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Lp Ask Level 8 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_8_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_ask_level_8_volume, range, value, display)

  return offset + length, value
end

-- Lp Ask Level 9 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_9_volume = {}

-- Size: Lp Ask Level 9 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_9_volume.size = 12

-- Display: Lp Ask Level 9 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_9_volume.display = function(value)
  return "Lp Ask Level 9 Volume: "..value
end

-- Dissect: Lp Ask Level 9 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_9_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_9_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_ask_level_9_volume, range, value, "Lp Ask Level 9 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Lp Ask Level 9 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_9_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_ask_level_9_volume, range, value, display)

  return offset + length, value
end

-- Lp Bid Level 1 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_1_volume = {}

-- Size: Lp Bid Level 1 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_1_volume.size = 12

-- Display: Lp Bid Level 1 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_1_volume.display = function(value)
  return "Lp Bid Level 1 Volume: "..value
end

-- Dissect: Lp Bid Level 1 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_1_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_1_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_bid_level_1_volume, range, value, "Lp Bid Level 1 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Lp Bid Level 1 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_1_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_bid_level_1_volume, range, value, display)

  return offset + length, value
end

-- Lp Bid Level 10 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_10_volume = {}

-- Size: Lp Bid Level 10 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_10_volume.size = 12

-- Display: Lp Bid Level 10 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_10_volume.display = function(value)
  return "Lp Bid Level 10 Volume: "..value
end

-- Dissect: Lp Bid Level 10 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_10_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_10_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_bid_level_10_volume, range, value, "Lp Bid Level 10 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Lp Bid Level 10 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_10_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_bid_level_10_volume, range, value, display)

  return offset + length, value
end

-- Lp Bid Level 2 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_2_volume = {}

-- Size: Lp Bid Level 2 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_2_volume.size = 12

-- Display: Lp Bid Level 2 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_2_volume.display = function(value)
  return "Lp Bid Level 2 Volume: "..value
end

-- Dissect: Lp Bid Level 2 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_2_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_2_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_bid_level_2_volume, range, value, "Lp Bid Level 2 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Lp Bid Level 2 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_2_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_bid_level_2_volume, range, value, display)

  return offset + length, value
end

-- Lp Bid Level 3 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_3_volume = {}

-- Size: Lp Bid Level 3 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_3_volume.size = 12

-- Display: Lp Bid Level 3 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_3_volume.display = function(value)
  return "Lp Bid Level 3 Volume: "..value
end

-- Dissect: Lp Bid Level 3 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_3_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_3_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_bid_level_3_volume, range, value, "Lp Bid Level 3 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Lp Bid Level 3 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_3_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_bid_level_3_volume, range, value, display)

  return offset + length, value
end

-- Lp Bid Level 4 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_4_volume = {}

-- Size: Lp Bid Level 4 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_4_volume.size = 12

-- Display: Lp Bid Level 4 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_4_volume.display = function(value)
  return "Lp Bid Level 4 Volume: "..value
end

-- Dissect: Lp Bid Level 4 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_4_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_4_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_bid_level_4_volume, range, value, "Lp Bid Level 4 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Lp Bid Level 4 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_4_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_bid_level_4_volume, range, value, display)

  return offset + length, value
end

-- Lp Bid Level 5 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_5_volume = {}

-- Size: Lp Bid Level 5 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_5_volume.size = 12

-- Display: Lp Bid Level 5 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_5_volume.display = function(value)
  return "Lp Bid Level 5 Volume: "..value
end

-- Dissect: Lp Bid Level 5 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_5_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_5_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_bid_level_5_volume, range, value, "Lp Bid Level 5 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Lp Bid Level 5 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_5_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_bid_level_5_volume, range, value, display)

  return offset + length, value
end

-- Lp Bid Level 6 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_6_volume = {}

-- Size: Lp Bid Level 6 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_6_volume.size = 12

-- Display: Lp Bid Level 6 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_6_volume.display = function(value)
  return "Lp Bid Level 6 Volume: "..value
end

-- Dissect: Lp Bid Level 6 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_6_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_6_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_bid_level_6_volume, range, value, "Lp Bid Level 6 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Lp Bid Level 6 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_6_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_bid_level_6_volume, range, value, display)

  return offset + length, value
end

-- Lp Bid Level 7 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_7_volume = {}

-- Size: Lp Bid Level 7 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_7_volume.size = 12

-- Display: Lp Bid Level 7 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_7_volume.display = function(value)
  return "Lp Bid Level 7 Volume: "..value
end

-- Dissect: Lp Bid Level 7 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_7_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_7_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_bid_level_7_volume, range, value, "Lp Bid Level 7 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Lp Bid Level 7 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_7_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_bid_level_7_volume, range, value, display)

  return offset + length, value
end

-- Lp Bid Level 8 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_8_volume = {}

-- Size: Lp Bid Level 8 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_8_volume.size = 12

-- Display: Lp Bid Level 8 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_8_volume.display = function(value)
  return "Lp Bid Level 8 Volume: "..value
end

-- Dissect: Lp Bid Level 8 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_8_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_8_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_bid_level_8_volume, range, value, "Lp Bid Level 8 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Lp Bid Level 8 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_8_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_bid_level_8_volume, range, value, display)

  return offset + length, value
end

-- Lp Bid Level 9 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_9_volume = {}

-- Size: Lp Bid Level 9 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_9_volume.size = 12

-- Display: Lp Bid Level 9 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_9_volume.display = function(value)
  return "Lp Bid Level 9 Volume: "..value
end

-- Dissect: Lp Bid Level 9 Volume
koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_9_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_9_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_bid_level_9_volume, range, value, "Lp Bid Level 9 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Lp Bid Level 9 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_9_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_bid_level_9_volume, range, value, display)

  return offset + length, value
end

-- Lp Holding Quantity
koscom_mdcsrealtime_commodities_exture_v2_020.lp_holding_quantity = {}

-- Size: Lp Holding Quantity
koscom_mdcsrealtime_commodities_exture_v2_020.lp_holding_quantity.size = 15

-- Display: Lp Holding Quantity
koscom_mdcsrealtime_commodities_exture_v2_020.lp_holding_quantity.display = function(value)
  return "Lp Holding Quantity: "..value
end

-- Dissect: Lp Holding Quantity
koscom_mdcsrealtime_commodities_exture_v2_020.lp_holding_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.lp_holding_quantity.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_holding_quantity, range, value, "Lp Holding Quantity: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Lp Holding Quantity is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.lp_holding_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.lp_holding_quantity, range, value, display)

  return offset + length, value
end

-- Market Capitalization Weight
koscom_mdcsrealtime_commodities_exture_v2_020.market_capitalization_weight = {}

-- Size: Market Capitalization Weight
koscom_mdcsrealtime_commodities_exture_v2_020.market_capitalization_weight.size = 16

-- Display: Market Capitalization Weight
koscom_mdcsrealtime_commodities_exture_v2_020.market_capitalization_weight.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.market_capitalization_weight.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.market_capitalization_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.market_capitalization_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.market_capitalization_weight, range, value, "Market Capitalization Weight: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Market Capitalization Weight is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.market_capitalization_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.market_capitalization_weight, range, value, display)

  return offset + length, value
end

-- Market Id
koscom_mdcsrealtime_commodities_exture_v2_020.market_id = {}

-- Size: Market Id
koscom_mdcsrealtime_commodities_exture_v2_020.market_id.size = 3

-- Display: Market Id
koscom_mdcsrealtime_commodities_exture_v2_020.market_id.display = function(value)
  return "Market Id: "..value
end

-- Dissect: Market Id
koscom_mdcsrealtime_commodities_exture_v2_020.market_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.market_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.market_id, range, value, display)

  return offset + length, value
end

-- Market Operation Product Id
koscom_mdcsrealtime_commodities_exture_v2_020.market_operation_product_id = {}

-- Size: Market Operation Product Id
koscom_mdcsrealtime_commodities_exture_v2_020.market_operation_product_id.size = 3

-- Display: Market Operation Product Id
koscom_mdcsrealtime_commodities_exture_v2_020.market_operation_product_id.display = function(value)
  return "Market Operation Product Id: "..value
end

-- Dissect: Market Operation Product Id
koscom_mdcsrealtime_commodities_exture_v2_020.market_operation_product_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.market_operation_product_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.market_operation_product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.market_operation_product_id, range, value, display)

  return offset + length, value
end

-- Market Price Index Krx
koscom_mdcsrealtime_commodities_exture_v2_020.market_price_index_krx = {}

-- Size: Market Price Index Krx
koscom_mdcsrealtime_commodities_exture_v2_020.market_price_index_krx.size = 16

-- Display: Market Price Index Krx
koscom_mdcsrealtime_commodities_exture_v2_020.market_price_index_krx.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.market_price_index_krx.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.market_price_index_krx.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.market_price_index_krx.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.market_price_index_krx, range, value, "Market Price Index Krx: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Market Price Index Krx is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.market_price_index_krx.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.market_price_index_krx, range, value, display)

  return offset + length, value
end

-- Market Price Index Ktb
koscom_mdcsrealtime_commodities_exture_v2_020.market_price_index_ktb = {}

-- Size: Market Price Index Ktb
koscom_mdcsrealtime_commodities_exture_v2_020.market_price_index_ktb.size = 11

-- Display: Market Price Index Ktb
koscom_mdcsrealtime_commodities_exture_v2_020.market_price_index_ktb.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.market_price_index_ktb.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.market_price_index_ktb.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.market_price_index_ktb.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.market_price_index_ktb, range, value, "Market Price Index Ktb: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Market Price Index Ktb is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.market_price_index_ktb.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.market_price_index_ktb, range, value, display)

  return offset + length, value
end

-- Market Price Index Weight
koscom_mdcsrealtime_commodities_exture_v2_020.market_price_index_weight = {}

-- Size: Market Price Index Weight
koscom_mdcsrealtime_commodities_exture_v2_020.market_price_index_weight.size = 16

-- Display: Market Price Index Weight
koscom_mdcsrealtime_commodities_exture_v2_020.market_price_index_weight.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.market_price_index_weight.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.market_price_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.market_price_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.market_price_index_weight, range, value, "Market Price Index Weight: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Market Price Index Weight is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.market_price_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.market_price_index_weight, range, value, display)

  return offset + length, value
end

-- Maturity Code
koscom_mdcsrealtime_commodities_exture_v2_020.maturity_code = {}

-- Size: Maturity Code
koscom_mdcsrealtime_commodities_exture_v2_020.maturity_code.size = 3

-- Display: Maturity Code
koscom_mdcsrealtime_commodities_exture_v2_020.maturity_code.display = function(value)
  return "Maturity Code: "..value
end

-- Dissect: Maturity Code
koscom_mdcsrealtime_commodities_exture_v2_020.maturity_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.maturity_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.maturity_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.maturity_code, range, value, display)

  return offset + length, value
end

-- Message Sequence Number
koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number = {}

-- Size: Message Sequence Number
koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.size = 8

-- Display: Message Sequence Number
koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.display = function(value)
  -- Check if field has value
  if value == nil or value:match("^%s*$") ~= nil then
    return "Message Sequence Number: No Value"
  end

  return "Message Sequence Number: "..value
end

-- Dissect: Message Sequence Number
koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.message_sequence_number, range, value, display)

  return offset + length, value
end

-- Negotiated Block Trade Trading Value
koscom_mdcsrealtime_commodities_exture_v2_020.negotiated_block_trade_trading_value = {}

-- Size: Negotiated Block Trade Trading Value
koscom_mdcsrealtime_commodities_exture_v2_020.negotiated_block_trade_trading_value.size = 22

-- Display: Negotiated Block Trade Trading Value
koscom_mdcsrealtime_commodities_exture_v2_020.negotiated_block_trade_trading_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.negotiated_block_trade_trading_value.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Negotiated Block Trade Trading Value: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Negotiated Block Trade Trading Value: "..text.." (expected 3 places)"
  end

  return "Negotiated Block Trade Trading Value: "..text
end

-- Dissect: Negotiated Block Trade Trading Value
koscom_mdcsrealtime_commodities_exture_v2_020.negotiated_block_trade_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.negotiated_block_trade_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.negotiated_block_trade_trading_value, range, value, "Negotiated Block Trade Trading Value: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Negotiated Block Trade Trading Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.negotiated_block_trade_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.negotiated_block_trade_trading_value, range, value, display)

  return offset + length, value
end

-- Negotiated Block Trade Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_020.negotiated_block_trade_trading_volume = {}

-- Size: Negotiated Block Trade Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_020.negotiated_block_trade_trading_volume.size = 12

-- Display: Negotiated Block Trade Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_020.negotiated_block_trade_trading_volume.display = function(value)
  return "Negotiated Block Trade Trading Volume: "..value
end

-- Dissect: Negotiated Block Trade Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_020.negotiated_block_trade_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.negotiated_block_trade_trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.negotiated_block_trade_trading_volume, range, value, "Negotiated Block Trade Trading Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Negotiated Block Trade Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.negotiated_block_trade_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.negotiated_block_trade_trading_volume, range, value, display)

  return offset + length, value
end

-- Negotiated Trade Accumulated Trading Value
koscom_mdcsrealtime_commodities_exture_v2_020.negotiated_trade_accumulated_trading_value = {}

-- Size: Negotiated Trade Accumulated Trading Value
koscom_mdcsrealtime_commodities_exture_v2_020.negotiated_trade_accumulated_trading_value.size = 22

-- Display: Negotiated Trade Accumulated Trading Value
koscom_mdcsrealtime_commodities_exture_v2_020.negotiated_trade_accumulated_trading_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.negotiated_trade_accumulated_trading_value.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Negotiated Trade Accumulated Trading Value: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Negotiated Trade Accumulated Trading Value: "..text.." (expected 3 places)"
  end

  return "Negotiated Trade Accumulated Trading Value: "..text
end

-- Dissect: Negotiated Trade Accumulated Trading Value
koscom_mdcsrealtime_commodities_exture_v2_020.negotiated_trade_accumulated_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.negotiated_trade_accumulated_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.negotiated_trade_accumulated_trading_value, range, value, "Negotiated Trade Accumulated Trading Value: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Negotiated Trade Accumulated Trading Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.negotiated_trade_accumulated_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.negotiated_trade_accumulated_trading_value, range, value, display)

  return offset + length, value
end

-- Negotiated Trade Accumulated Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_020.negotiated_trade_accumulated_trading_volume = {}

-- Size: Negotiated Trade Accumulated Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_020.negotiated_trade_accumulated_trading_volume.size = 15

-- Display: Negotiated Trade Accumulated Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_020.negotiated_trade_accumulated_trading_volume.display = function(value)
  return "Negotiated Trade Accumulated Trading Volume: "..value
end

-- Dissect: Negotiated Trade Accumulated Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_020.negotiated_trade_accumulated_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.negotiated_trade_accumulated_trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.negotiated_trade_accumulated_trading_volume, range, value, "Negotiated Trade Accumulated Trading Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Negotiated Trade Accumulated Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.negotiated_trade_accumulated_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.negotiated_trade_accumulated_trading_volume, range, value, display)

  return offset + length, value
end

-- Number Of Bidders
koscom_mdcsrealtime_commodities_exture_v2_020.number_of_bidders = {}

-- Size: Number Of Bidders
koscom_mdcsrealtime_commodities_exture_v2_020.number_of_bidders.size = 13

-- Display: Number Of Bidders
koscom_mdcsrealtime_commodities_exture_v2_020.number_of_bidders.display = function(value)
  return "Number Of Bidders: "..value
end

-- Dissect: Number Of Bidders
koscom_mdcsrealtime_commodities_exture_v2_020.number_of_bidders.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.number_of_bidders.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.number_of_bidders, range, value, "Number Of Bidders: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Number Of Bidders is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.number_of_bidders.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.number_of_bidders, range, value, display)

  return offset + length, value
end

-- Opening Price
koscom_mdcsrealtime_commodities_exture_v2_020.opening_price = {}

-- Size: Opening Price
koscom_mdcsrealtime_commodities_exture_v2_020.opening_price.size = 9

-- Display: Opening Price
koscom_mdcsrealtime_commodities_exture_v2_020.opening_price.display = function(value)
  return "Opening Price: "..value
end

-- Dissect: Opening Price
koscom_mdcsrealtime_commodities_exture_v2_020.opening_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.opening_price.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.opening_price, range, value, display)

  return offset + length, value
end

-- Previous Price
koscom_mdcsrealtime_commodities_exture_v2_020.previous_price = {}

-- Size: Previous Price
koscom_mdcsrealtime_commodities_exture_v2_020.previous_price.size = 11

-- Display: Previous Price
koscom_mdcsrealtime_commodities_exture_v2_020.previous_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.previous_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Previous Price: No Value"
  end

  return "Previous Price: "..text
end

-- Dissect: Previous Price
koscom_mdcsrealtime_commodities_exture_v2_020.previous_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.previous_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.previous_price, range, value, "Previous Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Previous Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.previous_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.previous_price, range, value, display)

  return offset + length, value
end

-- Price Limit Range Expansion For Base Issue Type Code
koscom_mdcsrealtime_commodities_exture_v2_020.price_limit_range_expansion_for_base_issue_type_code = {}

-- Size: Price Limit Range Expansion For Base Issue Type Code
koscom_mdcsrealtime_commodities_exture_v2_020.price_limit_range_expansion_for_base_issue_type_code.size = 1

-- Display: Price Limit Range Expansion For Base Issue Type Code
koscom_mdcsrealtime_commodities_exture_v2_020.price_limit_range_expansion_for_base_issue_type_code.display = function(value)
  return "Price Limit Range Expansion For Base Issue Type Code: "..value
end

-- Dissect: Price Limit Range Expansion For Base Issue Type Code
koscom_mdcsrealtime_commodities_exture_v2_020.price_limit_range_expansion_for_base_issue_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.price_limit_range_expansion_for_base_issue_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.price_limit_range_expansion_for_base_issue_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.price_limit_range_expansion_for_base_issue_type_code, range, value, display)

  return offset + length, value
end

-- Processing Time Of Trading System
koscom_mdcsrealtime_commodities_exture_v2_020.processing_time_of_trading_system = {}

-- Size: Processing Time Of Trading System
koscom_mdcsrealtime_commodities_exture_v2_020.processing_time_of_trading_system.size = 12

-- Display: Processing Time Of Trading System
koscom_mdcsrealtime_commodities_exture_v2_020.processing_time_of_trading_system.display = function(value)
  if #value < 12 then
    return "Processing Time Of Trading System: "..value
  end

  return "Processing Time Of Trading System: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6).."."..value:sub(7, 12)
end

-- Dissect: Processing Time Of Trading System
koscom_mdcsrealtime_commodities_exture_v2_020.processing_time_of_trading_system.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.processing_time_of_trading_system.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.processing_time_of_trading_system.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.processing_time_of_trading_system, range, value, display)

  return offset + length, value
end

-- Product Id
koscom_mdcsrealtime_commodities_exture_v2_020.product_id = {}

-- Size: Product Id
koscom_mdcsrealtime_commodities_exture_v2_020.product_id.size = 11

-- Display: Product Id
koscom_mdcsrealtime_commodities_exture_v2_020.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
koscom_mdcsrealtime_commodities_exture_v2_020.product_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.product_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.product_id, range, value, display)

  return offset + length, value
end

-- Random End Trigger Code
koscom_mdcsrealtime_commodities_exture_v2_020.random_end_trigger_code = {}

-- Size: Random End Trigger Code
koscom_mdcsrealtime_commodities_exture_v2_020.random_end_trigger_code.size = 1

-- Display: Random End Trigger Code
koscom_mdcsrealtime_commodities_exture_v2_020.random_end_trigger_code.display = function(value)
  return "Random End Trigger Code: "..value
end

-- Dissect: Random End Trigger Code
koscom_mdcsrealtime_commodities_exture_v2_020.random_end_trigger_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.random_end_trigger_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.random_end_trigger_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.random_end_trigger_code, range, value, display)

  return offset + length, value
end

-- Reinvest Call Cash
koscom_mdcsrealtime_commodities_exture_v2_020.reinvest_call_cash = {}

-- Size: Reinvest Call Cash
koscom_mdcsrealtime_commodities_exture_v2_020.reinvest_call_cash.size = 26

-- Display: Reinvest Call Cash
koscom_mdcsrealtime_commodities_exture_v2_020.reinvest_call_cash.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.reinvest_call_cash.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.reinvest_call_cash.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.reinvest_call_cash.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.reinvest_call_cash, range, value, "Reinvest Call Cash: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Reinvest Call Cash is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.reinvest_call_cash.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.reinvest_call_cash, range, value, display)

  return offset + length, value
end

-- Second Filler 11
koscom_mdcsrealtime_commodities_exture_v2_020.second_filler_11 = {}

-- Size: Second Filler 11
koscom_mdcsrealtime_commodities_exture_v2_020.second_filler_11.size = 11

-- Display: Second Filler 11
koscom_mdcsrealtime_commodities_exture_v2_020.second_filler_11.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.second_filler_11.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Second Filler 11: No Value"
  end

  return "Second Filler 11: "..text
end

-- Dissect: Second Filler 11
koscom_mdcsrealtime_commodities_exture_v2_020.second_filler_11.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.second_filler_11.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.second_filler_11, range, value, "Second Filler 11: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Second Filler 11 is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.second_filler_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.second_filler_11, range, value, display)

  return offset + length, value
end

-- Security Group Id
koscom_mdcsrealtime_commodities_exture_v2_020.security_group_id = {}

-- Size: Security Group Id
koscom_mdcsrealtime_commodities_exture_v2_020.security_group_id.size = 2

-- Display: Security Group Id
koscom_mdcsrealtime_commodities_exture_v2_020.security_group_id.display = function(value)
  return "Security Group Id: "..value
end

-- Dissect: Security Group Id
koscom_mdcsrealtime_commodities_exture_v2_020.security_group_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.security_group_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.security_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.security_group_id, range, value, display)

  return offset + length, value
end

-- Session Id
koscom_mdcsrealtime_commodities_exture_v2_020.session_id = {}

-- Size: Session Id
koscom_mdcsrealtime_commodities_exture_v2_020.session_id.size = 2

-- Display: Session Id
koscom_mdcsrealtime_commodities_exture_v2_020.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
koscom_mdcsrealtime_commodities_exture_v2_020.session_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.session_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.session_id, range, value, display)

  return offset + length, value
end

-- Session Start End Code
koscom_mdcsrealtime_commodities_exture_v2_020.session_start_end_code = {}

-- Size: Session Start End Code
koscom_mdcsrealtime_commodities_exture_v2_020.session_start_end_code.size = 2

-- Display: Session Start End Code
koscom_mdcsrealtime_commodities_exture_v2_020.session_start_end_code.display = function(value)
  return "Session Start End Code: "..value
end

-- Dissect: Session Start End Code
koscom_mdcsrealtime_commodities_exture_v2_020.session_start_end_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.session_start_end_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.session_start_end_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.session_start_end_code, range, value, display)

  return offset + length, value
end

-- Start Time Of A Board Event
koscom_mdcsrealtime_commodities_exture_v2_020.start_time_of_a_board_event = {}

-- Size: Start Time Of A Board Event
koscom_mdcsrealtime_commodities_exture_v2_020.start_time_of_a_board_event.size = 9

-- Display: Start Time Of A Board Event
koscom_mdcsrealtime_commodities_exture_v2_020.start_time_of_a_board_event.display = function(value)
  return "Start Time Of A Board Event: "..value
end

-- Dissect: Start Time Of A Board Event
koscom_mdcsrealtime_commodities_exture_v2_020.start_time_of_a_board_event.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.start_time_of_a_board_event.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.start_time_of_a_board_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.start_time_of_a_board_event, range, value, display)

  return offset + length, value
end

-- Step Applied
koscom_mdcsrealtime_commodities_exture_v2_020.step_applied = {}

-- Size: Step Applied
koscom_mdcsrealtime_commodities_exture_v2_020.step_applied.size = 2

-- Display: Step Applied
koscom_mdcsrealtime_commodities_exture_v2_020.step_applied.display = function(value)
  return "Step Applied: "..value
end

-- Dissect: Step Applied
koscom_mdcsrealtime_commodities_exture_v2_020.step_applied.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.step_applied.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.step_applied, range, value, "Step Applied: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Step Applied is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.step_applied.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.step_applied, range, value, display)

  return offset + length, value
end

-- Substitute Price Of Securities
koscom_mdcsrealtime_commodities_exture_v2_020.substitute_price_of_securities = {}

-- Size: Substitute Price Of Securities
koscom_mdcsrealtime_commodities_exture_v2_020.substitute_price_of_securities.size = 11

-- Display: Substitute Price Of Securities
koscom_mdcsrealtime_commodities_exture_v2_020.substitute_price_of_securities.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.substitute_price_of_securities.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Substitute Price Of Securities: No Value"
  end

  return "Substitute Price Of Securities: "..text
end

-- Dissect: Substitute Price Of Securities
koscom_mdcsrealtime_commodities_exture_v2_020.substitute_price_of_securities.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.substitute_price_of_securities.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.substitute_price_of_securities, range, value, "Substitute Price Of Securities: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Substitute Price Of Securities is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.substitute_price_of_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.substitute_price_of_securities, range, value, display)

  return offset + length, value
end

-- Todays High
koscom_mdcsrealtime_commodities_exture_v2_020.todays_high = {}

-- Size: Todays High
koscom_mdcsrealtime_commodities_exture_v2_020.todays_high.size = 11

-- Display: Todays High
koscom_mdcsrealtime_commodities_exture_v2_020.todays_high.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.todays_high.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Todays High: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Todays High: "..text.." (expected 3 places)"
  end

  return "Todays High: "..text
end

-- Dissect: Todays High
koscom_mdcsrealtime_commodities_exture_v2_020.todays_high.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.todays_high.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.todays_high, range, value, "Todays High: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Todays High is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.todays_high.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.todays_high, range, value, display)

  return offset + length, value
end

-- Todays Low
koscom_mdcsrealtime_commodities_exture_v2_020.todays_low = {}

-- Size: Todays Low
koscom_mdcsrealtime_commodities_exture_v2_020.todays_low.size = 11

-- Display: Todays Low
koscom_mdcsrealtime_commodities_exture_v2_020.todays_low.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.todays_low.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Todays Low: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Todays Low: "..text.." (expected 3 places)"
  end

  return "Todays Low: "..text
end

-- Dissect: Todays Low
koscom_mdcsrealtime_commodities_exture_v2_020.todays_low.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.todays_low.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.todays_low, range, value, "Todays Low: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Todays Low is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.todays_low.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.todays_low, range, value, display)

  return offset + length, value
end

-- Total Accumulated Trading Value
koscom_mdcsrealtime_commodities_exture_v2_020.total_accumulated_trading_value = {}

-- Size: Total Accumulated Trading Value
koscom_mdcsrealtime_commodities_exture_v2_020.total_accumulated_trading_value.size = 22

-- Display: Total Accumulated Trading Value
koscom_mdcsrealtime_commodities_exture_v2_020.total_accumulated_trading_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.total_accumulated_trading_value.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Total Accumulated Trading Value: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Total Accumulated Trading Value: "..text.." (expected 3 places)"
  end

  return "Total Accumulated Trading Value: "..text
end

-- Dissect: Total Accumulated Trading Value
koscom_mdcsrealtime_commodities_exture_v2_020.total_accumulated_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.total_accumulated_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.total_accumulated_trading_value, range, value, "Total Accumulated Trading Value: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Total Accumulated Trading Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.total_accumulated_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.total_accumulated_trading_value, range, value, display)

  return offset + length, value
end

-- Total Accumulated Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_020.total_accumulated_trading_volume = {}

-- Size: Total Accumulated Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_020.total_accumulated_trading_volume.size = 15

-- Display: Total Accumulated Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_020.total_accumulated_trading_volume.display = function(value)
  return "Total Accumulated Trading Volume: "..value
end

-- Dissect: Total Accumulated Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_020.total_accumulated_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.total_accumulated_trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.total_accumulated_trading_volume, range, value, "Total Accumulated Trading Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Total Accumulated Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.total_accumulated_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.total_accumulated_trading_volume, range, value, display)

  return offset + length, value
end

-- Total Ask Volume
koscom_mdcsrealtime_commodities_exture_v2_020.total_ask_volume = {}

-- Size: Total Ask Volume
koscom_mdcsrealtime_commodities_exture_v2_020.total_ask_volume.size = 12

-- Display: Total Ask Volume
koscom_mdcsrealtime_commodities_exture_v2_020.total_ask_volume.display = function(value)
  return "Total Ask Volume: "..value
end

-- Dissect: Total Ask Volume
koscom_mdcsrealtime_commodities_exture_v2_020.total_ask_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.total_ask_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.total_ask_volume, range, value, "Total Ask Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Total Ask Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.total_ask_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.total_ask_volume, range, value, display)

  return offset + length, value
end

-- Total Bid Volume
koscom_mdcsrealtime_commodities_exture_v2_020.total_bid_volume = {}

-- Size: Total Bid Volume
koscom_mdcsrealtime_commodities_exture_v2_020.total_bid_volume.size = 12

-- Display: Total Bid Volume
koscom_mdcsrealtime_commodities_exture_v2_020.total_bid_volume.display = function(value)
  return "Total Bid Volume: "..value
end

-- Dissect: Total Bid Volume
koscom_mdcsrealtime_commodities_exture_v2_020.total_bid_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.total_bid_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.total_bid_volume, range, value, "Total Bid Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Total Bid Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.total_bid_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.total_bid_volume, range, value, display)

  return offset + length, value
end

-- Total Earnings Index
koscom_mdcsrealtime_commodities_exture_v2_020.total_earnings_index = {}

-- Size: Total Earnings Index
koscom_mdcsrealtime_commodities_exture_v2_020.total_earnings_index.size = 16

-- Display: Total Earnings Index
koscom_mdcsrealtime_commodities_exture_v2_020.total_earnings_index.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.total_earnings_index.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.total_earnings_index.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.total_earnings_index.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.total_earnings_index, range, value, "Total Earnings Index: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Total Earnings Index is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.total_earnings_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.total_earnings_index, range, value, display)

  return offset + length, value
end

-- Total Earnings Index Weight
koscom_mdcsrealtime_commodities_exture_v2_020.total_earnings_index_weight = {}

-- Size: Total Earnings Index Weight
koscom_mdcsrealtime_commodities_exture_v2_020.total_earnings_index_weight.size = 16

-- Display: Total Earnings Index Weight
koscom_mdcsrealtime_commodities_exture_v2_020.total_earnings_index_weight.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.total_earnings_index_weight.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.total_earnings_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.total_earnings_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.total_earnings_index_weight, range, value, "Total Earnings Index Weight: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Total Earnings Index Weight is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.total_earnings_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.total_earnings_index_weight, range, value, display)

  return offset + length, value
end

-- Total Number Of Instruments Of The Contract
koscom_mdcsrealtime_commodities_exture_v2_020.total_number_of_instruments_of_the_contract = {}

-- Size: Total Number Of Instruments Of The Contract
koscom_mdcsrealtime_commodities_exture_v2_020.total_number_of_instruments_of_the_contract.size = 6

-- Display: Total Number Of Instruments Of The Contract
koscom_mdcsrealtime_commodities_exture_v2_020.total_number_of_instruments_of_the_contract.display = function(value)
  return "Total Number Of Instruments Of The Contract: "..value
end

-- Dissect: Total Number Of Instruments Of The Contract
koscom_mdcsrealtime_commodities_exture_v2_020.total_number_of_instruments_of_the_contract.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.total_number_of_instruments_of_the_contract.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.total_number_of_instruments_of_the_contract, range, value, "Total Number Of Instruments Of The Contract: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Total Number Of Instruments Of The Contract is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.total_number_of_instruments_of_the_contract.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.total_number_of_instruments_of_the_contract, range, value, display)

  return offset + length, value
end

-- Total Profit Index
koscom_mdcsrealtime_commodities_exture_v2_020.total_profit_index = {}

-- Size: Total Profit Index
koscom_mdcsrealtime_commodities_exture_v2_020.total_profit_index.size = 11

-- Display: Total Profit Index
koscom_mdcsrealtime_commodities_exture_v2_020.total_profit_index.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.total_profit_index.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.total_profit_index.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.total_profit_index.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.total_profit_index, range, value, "Total Profit Index: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Total Profit Index is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.total_profit_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.total_profit_index, range, value, display)

  return offset + length, value
end

-- Tr Code
koscom_mdcsrealtime_commodities_exture_v2_020.tr_code = {}

-- Size: Tr Code
koscom_mdcsrealtime_commodities_exture_v2_020.tr_code.size = 5

-- Display: Tr Code
koscom_mdcsrealtime_commodities_exture_v2_020.tr_code.labels = {
  ["I2000"] = "Tr Code: Polling Data Message (I2000)",
  ["IA000"] = "Tr Code: Krx Index Message (IA000)",
  ["IB000"] = "Tr Code: Krx Estimated Index Message (IB000)",
  ["J2000"] = "Tr Code: Global Index Message (J2000)",
  ["J4000"] = "Tr Code: Bond Prime Index Message (J4000)",
  ["K1000"] = "Tr Code: Bond Ktb Index Message (K1000)",
  ["K8000"] = "Tr Code: Bond Ktb Index Term Structure Message (K8000)",
  ["IG000"] = "Tr Code: Bond Index Krx Message (IG000)",
  ["B601G"] = "Tr Code: Spot Gold Quote Message (B601G)",
  ["A301G"] = "Tr Code: Spot Gold Order Filled Message (A301G)",
  ["G701G"] = "Tr Code: Spot Gold Order Filled Plus Quote Message (G701G)",
  ["R101G"] = "Tr Code: Spot Gold Market Operation Ts Plus Quote Message (R101G)",
  ["B201G"] = "Tr Code: Spot Gold Snapshot Message (B201G)",
  ["C401G"] = "Tr Code: Spot Gold Negotiated Trade Message (C401G)",
  ["B601E"] = "Tr Code: Emissions Quote Message (B601E)",
  ["A301E"] = "Tr Code: Emissions Order Filled Message (A301E)",
  ["G701E"] = "Tr Code: Emissions Order Filled Plus Quote Message (G701E)",
  ["R101E"] = "Tr Code: Emissions Market Operation Ts Plus Quote Message (R101E)",
  ["B201E"] = "Tr Code: Emissions Snapshot Message (B201E)",
  ["C401E"] = "Tr Code: Emissions Negotiated Trade Message (C401E)",
  ["A401E"] = "Tr Code: Emissions Determination Of Base Price Message (A401E)",
  ["AC01E"] = "Tr Code: Emissions Auction Results Message (AC01E)",
  ["A001G"] = "Tr Code: Spot Gold Batch Data Message (A001G)",
  ["A001E"] = "Tr Code: Emissions Batch Data Message (A001E)",
  ["M200G"] = "Tr Code: External Gold Spot Closing Price Message (M200G)",
  ["A701G"] = "Tr Code: Spot Gold Market Operation Ts Message (A701G)",
  ["A601G"] = "Tr Code: Spot Gold Issue Closing Message (A601G)",
  ["M401G"] = "Tr Code: Spot Gold Market Operation Schedule Message (M401G)",
  ["A701E"] = "Tr Code: Emissions Market Operation Ts Message (A701E)",
  ["A601E"] = "Tr Code: Emissions Issue Closing Message (A601E)",
  ["M401E"] = "Tr Code: Emissions Market Operation Schedule Message (M401E)",
  ["A501X"] = "Tr Code: Spot Gold Random End Message (A501X)",
  ["A501G"] = "Tr Code: Spot Gold Random End Message (A501G)",
}

koscom_mdcsrealtime_commodities_exture_v2_020.tr_code.display = function(value)
  return koscom_mdcsrealtime_commodities_exture_v2_020.tr_code.labels[value] or "Tr Code: Unknown("..value..")"
end

-- Dissect: Tr Code
koscom_mdcsrealtime_commodities_exture_v2_020.tr_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.tr_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.tr_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.tr_code, range, value, display)

  return offset + length, value
end

-- Trading Date
koscom_mdcsrealtime_commodities_exture_v2_020.trading_date = {}

-- Size: Trading Date
koscom_mdcsrealtime_commodities_exture_v2_020.trading_date.size = 8

-- Display: Trading Date
koscom_mdcsrealtime_commodities_exture_v2_020.trading_date.display = function(value)
  if #value < 8 then
    return "Trading Date: "..value
  end

  return "Trading Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Trading Date
koscom_mdcsrealtime_commodities_exture_v2_020.trading_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.trading_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.trading_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.trading_date, range, value, display)

  return offset + length, value
end

-- Trading Halt
koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt = {}

-- Size: Trading Halt
koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt.size = 1

-- Display: Trading Halt
koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt.display = function(value)
  return "Trading Halt: "..value
end

-- Dissect: Trading Halt
koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.trading_halt, range, value, display)

  return offset + length, value
end

-- Trading Halt Reason Code
koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt_reason_code = {}

-- Size: Trading Halt Reason Code
koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt_reason_code.size = 3

-- Display: Trading Halt Reason Code
koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt_reason_code.display = function(value)
  return "Trading Halt Reason Code: "..value
end

-- Dissect: Trading Halt Reason Code
koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt_reason_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.trading_halt_reason_code, range, value, display)

  return offset + length, value
end

-- Trading Halt Type Code
koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt_type_code = {}

-- Size: Trading Halt Type Code
koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt_type_code.size = 1

-- Display: Trading Halt Type Code
koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt_type_code.display = function(value)
  return "Trading Halt Type Code: "..value
end

-- Dissect: Trading Halt Type Code
koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.trading_halt_type_code, range, value, display)

  return offset + length, value
end

-- Trading Price
koscom_mdcsrealtime_commodities_exture_v2_020.trading_price = {}

-- Size: Trading Price
koscom_mdcsrealtime_commodities_exture_v2_020.trading_price.size = 11

-- Display: Trading Price
koscom_mdcsrealtime_commodities_exture_v2_020.trading_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.trading_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Trading Price: No Value"
  end

  return "Trading Price: "..text
end

-- Dissect: Trading Price
koscom_mdcsrealtime_commodities_exture_v2_020.trading_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.trading_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.trading_price, range, value, "Trading Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Trading Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.trading_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.trading_price, range, value, display)

  return offset + length, value
end

-- Trading Time
koscom_mdcsrealtime_commodities_exture_v2_020.trading_time = {}

-- Size: Trading Time
koscom_mdcsrealtime_commodities_exture_v2_020.trading_time.size = 6

-- Display: Trading Time
koscom_mdcsrealtime_commodities_exture_v2_020.trading_time.display = function(value)
  if #value < 6 then
    return "Trading Time: "..value
  end

  return "Trading Time: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Trading Time
koscom_mdcsrealtime_commodities_exture_v2_020.trading_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.trading_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.trading_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.trading_time, range, value, display)

  return offset + length, value
end

-- Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_020.trading_volume = {}

-- Size: Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_020.trading_volume.size = 10

-- Display: Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_020.trading_volume.display = function(value)
  return "Trading Volume: "..value
end

-- Dissect: Trading Volume
koscom_mdcsrealtime_commodities_exture_v2_020.trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.trading_volume, range, value, "Trading Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.trading_volume, range, value, display)

  return offset + length, value
end

-- Transmission Time
koscom_mdcsrealtime_commodities_exture_v2_020.transmission_time = {}

-- Size: Transmission Time
koscom_mdcsrealtime_commodities_exture_v2_020.transmission_time.size = 8

-- Display: Transmission Time
koscom_mdcsrealtime_commodities_exture_v2_020.transmission_time.display = function(value)
  if #value < 8 then
    return "Transmission Time: "..value
  end

  return "Transmission Time: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6).."."..value:sub(7, 8)
end

-- Dissect: Transmission Time
koscom_mdcsrealtime_commodities_exture_v2_020.transmission_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.transmission_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.transmission_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.transmission_time, range, value, display)

  return offset + length, value
end

-- Unit Of Volume In Main Board
koscom_mdcsrealtime_commodities_exture_v2_020.unit_of_volume_in_main_board = {}

-- Size: Unit Of Volume In Main Board
koscom_mdcsrealtime_commodities_exture_v2_020.unit_of_volume_in_main_board.size = 11

-- Display: Unit Of Volume In Main Board
koscom_mdcsrealtime_commodities_exture_v2_020.unit_of_volume_in_main_board.display = function(value)
  return "Unit Of Volume In Main Board: "..value
end

-- Dissect: Unit Of Volume In Main Board
koscom_mdcsrealtime_commodities_exture_v2_020.unit_of_volume_in_main_board.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.unit_of_volume_in_main_board.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.unit_of_volume_in_main_board, range, value, "Unit Of Volume In Main Board: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Unit Of Volume In Main Board is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.unit_of_volume_in_main_board.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.unit_of_volume_in_main_board, range, value, display)

  return offset + length, value
end

-- Upper Limit Of Base Price
koscom_mdcsrealtime_commodities_exture_v2_020.upper_limit_of_base_price = {}

-- Size: Upper Limit Of Base Price
koscom_mdcsrealtime_commodities_exture_v2_020.upper_limit_of_base_price.size = 11

-- Display: Upper Limit Of Base Price
koscom_mdcsrealtime_commodities_exture_v2_020.upper_limit_of_base_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.upper_limit_of_base_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Upper Limit Of Base Price: No Value"
  end

  return "Upper Limit Of Base Price: "..text
end

-- Dissect: Upper Limit Of Base Price
koscom_mdcsrealtime_commodities_exture_v2_020.upper_limit_of_base_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.upper_limit_of_base_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.upper_limit_of_base_price, range, value, "Upper Limit Of Base Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Upper Limit Of Base Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.upper_limit_of_base_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.upper_limit_of_base_price, range, value, display)

  return offset + length, value
end

-- Upper Limit Price
koscom_mdcsrealtime_commodities_exture_v2_020.upper_limit_price = {}

-- Size: Upper Limit Price
koscom_mdcsrealtime_commodities_exture_v2_020.upper_limit_price.size = 11

-- Display: Upper Limit Price
koscom_mdcsrealtime_commodities_exture_v2_020.upper_limit_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.upper_limit_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Upper Limit Price: No Value"
  end

  return "Upper Limit Price: "..text
end

-- Dissect: Upper Limit Price
koscom_mdcsrealtime_commodities_exture_v2_020.upper_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.upper_limit_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.upper_limit_price, range, value, "Upper Limit Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Upper Limit Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.upper_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.upper_limit_price, range, value, display)

  return offset + length, value
end

-- Volume In The Bid Invitation
koscom_mdcsrealtime_commodities_exture_v2_020.volume_in_the_bid_invitation = {}

-- Size: Volume In The Bid Invitation
koscom_mdcsrealtime_commodities_exture_v2_020.volume_in_the_bid_invitation.size = 12

-- Display: Volume In The Bid Invitation
koscom_mdcsrealtime_commodities_exture_v2_020.volume_in_the_bid_invitation.display = function(value)
  return "Volume In The Bid Invitation: "..value
end

-- Dissect: Volume In The Bid Invitation
koscom_mdcsrealtime_commodities_exture_v2_020.volume_in_the_bid_invitation.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.volume_in_the_bid_invitation.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.volume_in_the_bid_invitation, range, value, "Volume In The Bid Invitation: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Volume In The Bid Invitation is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.volume_in_the_bid_invitation.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.volume_in_the_bid_invitation, range, value, display)

  return offset + length, value
end

-- Weight Of Call Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_call_re_investment_index_value_for_integrity_index_weight = {}

-- Size: Weight Of Call Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_call_re_investment_index_value_for_integrity_index_weight.size = 16

-- Display: Weight Of Call Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_call_re_investment_index_value_for_integrity_index_weight.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_call_re_investment_index_value_for_integrity_index_weight.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_call_re_investment_index_value_for_integrity_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_call_re_investment_index_value_for_integrity_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.weight_of_call_re_investment_index_value_for_integrity_index_weight, range, value, "Weight Of Call Re Investment Index Value For Integrity Index Weight: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Weight Of Call Re Investment Index Value For Integrity Index Weight is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_call_re_investment_index_value_for_integrity_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.weight_of_call_re_investment_index_value_for_integrity_index_weight, range, value, display)

  return offset + length, value
end

-- Weight Of Clean Index Value For Integrity Index Weight
koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_clean_index_value_for_integrity_index_weight = {}

-- Size: Weight Of Clean Index Value For Integrity Index Weight
koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_clean_index_value_for_integrity_index_weight.size = 16

-- Display: Weight Of Clean Index Value For Integrity Index Weight
koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_clean_index_value_for_integrity_index_weight.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_clean_index_value_for_integrity_index_weight.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_clean_index_value_for_integrity_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_clean_index_value_for_integrity_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.weight_of_clean_index_value_for_integrity_index_weight, range, value, "Weight Of Clean Index Value For Integrity Index Weight: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Weight Of Clean Index Value For Integrity Index Weight is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_clean_index_value_for_integrity_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.weight_of_clean_index_value_for_integrity_index_weight, range, value, display)

  return offset + length, value
end

-- Weight Of Sum Index Value For Integrity Index Weight
koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_sum_index_value_for_integrity_index_weight = {}

-- Size: Weight Of Sum Index Value For Integrity Index Weight
koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_sum_index_value_for_integrity_index_weight.size = 16

-- Display: Weight Of Sum Index Value For Integrity Index Weight
koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_sum_index_value_for_integrity_index_weight.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_sum_index_value_for_integrity_index_weight.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_sum_index_value_for_integrity_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_sum_index_value_for_integrity_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.weight_of_sum_index_value_for_integrity_index_weight, range, value, "Weight Of Sum Index Value For Integrity Index Weight: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Weight Of Sum Index Value For Integrity Index Weight is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_sum_index_value_for_integrity_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.weight_of_sum_index_value_for_integrity_index_weight, range, value, display)

  return offset + length, value
end

-- Weight Of Zero Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_zero_re_investment_index_value_for_integrity_index_weight = {}

-- Size: Weight Of Zero Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_zero_re_investment_index_value_for_integrity_index_weight.size = 16

-- Display: Weight Of Zero Re Investment Index Value For Integrity Index Weight
koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_zero_re_investment_index_value_for_integrity_index_weight.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_zero_re_investment_index_value_for_integrity_index_weight.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_zero_re_investment_index_value_for_integrity_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_zero_re_investment_index_value_for_integrity_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.weight_of_zero_re_investment_index_value_for_integrity_index_weight, range, value, "Weight Of Zero Re Investment Index Value For Integrity Index Weight: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Weight Of Zero Re Investment Index Value For Integrity Index Weight is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_zero_re_investment_index_value_for_integrity_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.weight_of_zero_re_investment_index_value_for_integrity_index_weight, range, value, display)

  return offset + length, value
end

-- Yesterdays Closing Price
koscom_mdcsrealtime_commodities_exture_v2_020.yesterdays_closing_price = {}

-- Size: Yesterdays Closing Price
koscom_mdcsrealtime_commodities_exture_v2_020.yesterdays_closing_price.size = 11

-- Display: Yesterdays Closing Price
koscom_mdcsrealtime_commodities_exture_v2_020.yesterdays_closing_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.yesterdays_closing_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Yesterdays Closing Price: No Value"
  end

  return "Yesterdays Closing Price: "..text
end

-- Dissect: Yesterdays Closing Price
koscom_mdcsrealtime_commodities_exture_v2_020.yesterdays_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.yesterdays_closing_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.yesterdays_closing_price, range, value, "Yesterdays Closing Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Yesterdays Closing Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.yesterdays_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.yesterdays_closing_price, range, value, display)

  return offset + length, value
end

-- Yesterdays Closing Price Type Code
koscom_mdcsrealtime_commodities_exture_v2_020.yesterdays_closing_price_type_code = {}

-- Size: Yesterdays Closing Price Type Code
koscom_mdcsrealtime_commodities_exture_v2_020.yesterdays_closing_price_type_code.size = 1

-- Display: Yesterdays Closing Price Type Code
koscom_mdcsrealtime_commodities_exture_v2_020.yesterdays_closing_price_type_code.display = function(value)
  return "Yesterdays Closing Price Type Code: "..value
end

-- Dissect: Yesterdays Closing Price Type Code
koscom_mdcsrealtime_commodities_exture_v2_020.yesterdays_closing_price_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.yesterdays_closing_price_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_commodities_exture_v2_020.yesterdays_closing_price_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.yesterdays_closing_price_type_code, range, value, display)

  return offset + length, value
end

-- Zero Re Investment Index Weight
koscom_mdcsrealtime_commodities_exture_v2_020.zero_re_investment_index_weight = {}

-- Size: Zero Re Investment Index Weight
koscom_mdcsrealtime_commodities_exture_v2_020.zero_re_investment_index_weight.size = 16

-- Display: Zero Re Investment Index Weight
koscom_mdcsrealtime_commodities_exture_v2_020.zero_re_investment_index_weight.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.zero_re_investment_index_weight.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.zero_re_investment_index_weight.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.zero_re_investment_index_weight.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.zero_re_investment_index_weight, range, value, "Zero Re Investment Index Weight: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Zero Re Investment Index Weight is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.zero_re_investment_index_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.zero_re_investment_index_weight, range, value, display)

  return offset + length, value
end

-- Zero Re-Investment Index Krx
koscom_mdcsrealtime_commodities_exture_v2_020.zero_reinvestment_index_krx = {}

-- Size: Zero Re-Investment Index Krx
koscom_mdcsrealtime_commodities_exture_v2_020.zero_reinvestment_index_krx.size = 16

-- Display: Zero Re-Investment Index Krx
koscom_mdcsrealtime_commodities_exture_v2_020.zero_reinvestment_index_krx.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.zero_reinvestment_index_krx.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.zero_reinvestment_index_krx.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.zero_reinvestment_index_krx.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.zero_reinvestment_index_krx, range, value, "Zero Re-Investment Index Krx: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Zero Re-Investment Index Krx is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.zero_reinvestment_index_krx.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.zero_reinvestment_index_krx, range, value, display)

  return offset + length, value
end

-- Zero Re-Investment Index Ktb
koscom_mdcsrealtime_commodities_exture_v2_020.zero_reinvestment_index_ktb = {}

-- Size: Zero Re-Investment Index Ktb
koscom_mdcsrealtime_commodities_exture_v2_020.zero_reinvestment_index_ktb.size = 11

-- Display: Zero Re-Investment Index Ktb
koscom_mdcsrealtime_commodities_exture_v2_020.zero_reinvestment_index_ktb.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_commodities_exture_v2_020.zero_reinvestment_index_ktb.size):string()
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
koscom_mdcsrealtime_commodities_exture_v2_020.zero_reinvestment_index_ktb.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_commodities_exture_v2_020.zero_reinvestment_index_ktb.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.zero_reinvestment_index_ktb, range, value, "Zero Re-Investment Index Ktb: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_commodities_exture_v2_020.experts.not_a_number, "Zero Re-Investment Index Ktb is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_commodities_exture_v2_020.zero_reinvestment_index_ktb.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.zero_reinvestment_index_ktb, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Koscom MdcsRealtime Commodities Exture 2.020
-----------------------------------------------------------------------

-- Spot Gold Random End Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_random_end_message = {}

-- Size: Spot Gold Random End Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_random_end_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.random_end_trigger_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.size

-- Display: Spot Gold Random End Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_random_end_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spot Gold Random End Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_random_end_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Random End Trigger Code: String
  index, random_end_trigger_code = koscom_mdcsrealtime_commodities_exture_v2_020.random_end_trigger_code.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spot Gold Random End Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_random_end_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.spot_gold_random_end_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_random_end_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_random_end_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_random_end_message.fields(buffer, offset, packet, parent)
  end
end

-- Emissions Market Operation Schedule Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_market_operation_schedule_message = {}

-- Size: Emissions Market Operation Schedule Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_market_operation_schedule_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_020.market_operation_product_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.board_event_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.start_time_of_a_board_event.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.board_event_group_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.session_start_end_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.session_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.isin_code_of_a_common_stock.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.product_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt_reason_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt_type_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.step_applied.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.price_limit_range_expansion_for_base_issue_type_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.expected_time_of_expanding_price_limit_range.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.size

-- Display: Emissions Market Operation Schedule Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_market_operation_schedule_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Emissions Market Operation Schedule Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_market_operation_schedule_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Operation Product Id: String
  index, market_operation_product_id = koscom_mdcsrealtime_commodities_exture_v2_020.market_operation_product_id.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Board Event Id: String
  index, board_event_id = koscom_mdcsrealtime_commodities_exture_v2_020.board_event_id.dissect(buffer, index, packet, parent)

  -- Start Time Of A Board Event: String
  index, start_time_of_a_board_event = koscom_mdcsrealtime_commodities_exture_v2_020.start_time_of_a_board_event.dissect(buffer, index, packet, parent)

  -- Board Event Group Code: Int
  index, board_event_group_code = koscom_mdcsrealtime_commodities_exture_v2_020.board_event_group_code.dissect(buffer, index, packet, parent)

  -- Session Start End Code: String
  index, session_start_end_code = koscom_mdcsrealtime_commodities_exture_v2_020.session_start_end_code.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_commodities_exture_v2_020.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- Isin Code Of A Common Stock: String
  index, isin_code_of_a_common_stock = koscom_mdcsrealtime_commodities_exture_v2_020.isin_code_of_a_common_stock.dissect(buffer, index, packet, parent)

  -- Product Id: String
  index, product_id = koscom_mdcsrealtime_commodities_exture_v2_020.product_id.dissect(buffer, index, packet, parent)

  -- Trading Halt Reason Code: String
  index, trading_halt_reason_code = koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt_reason_code.dissect(buffer, index, packet, parent)

  -- Trading Halt Type Code: String
  index, trading_halt_type_code = koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt_type_code.dissect(buffer, index, packet, parent)

  -- Step Applied: Int
  index, step_applied = koscom_mdcsrealtime_commodities_exture_v2_020.step_applied.dissect(buffer, index, packet, parent)

  -- Price Limit Range Expansion For Base Issue Type Code: String
  index, price_limit_range_expansion_for_base_issue_type_code = koscom_mdcsrealtime_commodities_exture_v2_020.price_limit_range_expansion_for_base_issue_type_code.dissect(buffer, index, packet, parent)

  -- Expected Time Of Expanding Price Limit Range: String
  index, expected_time_of_expanding_price_limit_range = koscom_mdcsrealtime_commodities_exture_v2_020.expected_time_of_expanding_price_limit_range.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Emissions Market Operation Schedule Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_market_operation_schedule_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.emissions_market_operation_schedule_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_market_operation_schedule_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_market_operation_schedule_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_020.emissions_market_operation_schedule_message.fields(buffer, offset, packet, parent)
  end
end

-- Emissions Issue Closing Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_issue_closing_message = {}

-- Size: Emissions Issue Closing Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_issue_closing_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.closing_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_type_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.filler_11.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.second_filler_11.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_weighted_stock_price_average.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_base_price_of_buy_in.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_upper_limit_of_buy_in.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_lower_limit_of_buy_in.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.size

-- Display: Emissions Issue Closing Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_issue_closing_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Emissions Issue Closing Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_issue_closing_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Closing Price: Double
  index, closing_price = koscom_mdcsrealtime_commodities_exture_v2_020.closing_price.dissect(buffer, index, packet, parent)

  -- Closing Price Type Code: String
  index, closing_price_type_code = koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_type_code.dissect(buffer, index, packet, parent)

  -- Filler 11: Double
  index, filler_11 = koscom_mdcsrealtime_commodities_exture_v2_020.filler_11.dissect(buffer, index, packet, parent)

  -- Second Filler 11: Double
  index, second_filler_11 = koscom_mdcsrealtime_commodities_exture_v2_020.second_filler_11.dissect(buffer, index, packet, parent)

  -- Closing Price Weighted Stock Price Average: Double
  index, closing_price_weighted_stock_price_average = koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_weighted_stock_price_average.dissect(buffer, index, packet, parent)

  -- Closing Price Base Price Of Buy In: Double
  index, closing_price_base_price_of_buy_in = koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_base_price_of_buy_in.dissect(buffer, index, packet, parent)

  -- Closing Price Upper Limit Of Buy In: Double
  index, closing_price_upper_limit_of_buy_in = koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_upper_limit_of_buy_in.dissect(buffer, index, packet, parent)

  -- Closing Price Lower Limit Of Buy In: Double
  index, closing_price_lower_limit_of_buy_in = koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_lower_limit_of_buy_in.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Emissions Issue Closing Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_issue_closing_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.emissions_issue_closing_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_issue_closing_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_issue_closing_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_020.emissions_issue_closing_message.fields(buffer, offset, packet, parent)
  end
end

-- Emissions Market Operation Ts Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_market_operation_ts_message = {}

-- Size: Emissions Market Operation Ts Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_market_operation_ts_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.session_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.board_event_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.start_time_of_a_board_event.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.board_event_group_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt_reason_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.size

-- Display: Emissions Market Operation Ts Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_market_operation_ts_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Emissions Market Operation Ts Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_market_operation_ts_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_commodities_exture_v2_020.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_commodities_exture_v2_020.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Board Event Id: String
  index, board_event_id = koscom_mdcsrealtime_commodities_exture_v2_020.board_event_id.dissect(buffer, index, packet, parent)

  -- Start Time Of A Board Event: String
  index, start_time_of_a_board_event = koscom_mdcsrealtime_commodities_exture_v2_020.start_time_of_a_board_event.dissect(buffer, index, packet, parent)

  -- Board Event Group Code: Int
  index, board_event_group_code = koscom_mdcsrealtime_commodities_exture_v2_020.board_event_group_code.dissect(buffer, index, packet, parent)

  -- Trading Halt Reason Code: String
  index, trading_halt_reason_code = koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt_reason_code.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Emissions Market Operation Ts Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_market_operation_ts_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.emissions_market_operation_ts_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_market_operation_ts_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_market_operation_ts_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_020.emissions_market_operation_ts_message.fields(buffer, offset, packet, parent)
  end
end

-- Spot Gold Market Operation Schedule Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_market_operation_schedule_message = {}

-- Size: Spot Gold Market Operation Schedule Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_market_operation_schedule_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_020.market_operation_product_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.board_event_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.start_time_of_a_board_event.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.board_event_group_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.session_start_end_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.session_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.isin_code_of_a_common_stock.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.product_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt_reason_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt_type_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.step_applied.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.price_limit_range_expansion_for_base_issue_type_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.expected_time_of_expanding_price_limit_range.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.size

-- Display: Spot Gold Market Operation Schedule Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_market_operation_schedule_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spot Gold Market Operation Schedule Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_market_operation_schedule_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Operation Product Id: String
  index, market_operation_product_id = koscom_mdcsrealtime_commodities_exture_v2_020.market_operation_product_id.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Board Event Id: String
  index, board_event_id = koscom_mdcsrealtime_commodities_exture_v2_020.board_event_id.dissect(buffer, index, packet, parent)

  -- Start Time Of A Board Event: String
  index, start_time_of_a_board_event = koscom_mdcsrealtime_commodities_exture_v2_020.start_time_of_a_board_event.dissect(buffer, index, packet, parent)

  -- Board Event Group Code: Int
  index, board_event_group_code = koscom_mdcsrealtime_commodities_exture_v2_020.board_event_group_code.dissect(buffer, index, packet, parent)

  -- Session Start End Code: String
  index, session_start_end_code = koscom_mdcsrealtime_commodities_exture_v2_020.session_start_end_code.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_commodities_exture_v2_020.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- Isin Code Of A Common Stock: String
  index, isin_code_of_a_common_stock = koscom_mdcsrealtime_commodities_exture_v2_020.isin_code_of_a_common_stock.dissect(buffer, index, packet, parent)

  -- Product Id: String
  index, product_id = koscom_mdcsrealtime_commodities_exture_v2_020.product_id.dissect(buffer, index, packet, parent)

  -- Trading Halt Reason Code: String
  index, trading_halt_reason_code = koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt_reason_code.dissect(buffer, index, packet, parent)

  -- Trading Halt Type Code: String
  index, trading_halt_type_code = koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt_type_code.dissect(buffer, index, packet, parent)

  -- Step Applied: Int
  index, step_applied = koscom_mdcsrealtime_commodities_exture_v2_020.step_applied.dissect(buffer, index, packet, parent)

  -- Price Limit Range Expansion For Base Issue Type Code: String
  index, price_limit_range_expansion_for_base_issue_type_code = koscom_mdcsrealtime_commodities_exture_v2_020.price_limit_range_expansion_for_base_issue_type_code.dissect(buffer, index, packet, parent)

  -- Expected Time Of Expanding Price Limit Range: String
  index, expected_time_of_expanding_price_limit_range = koscom_mdcsrealtime_commodities_exture_v2_020.expected_time_of_expanding_price_limit_range.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spot Gold Market Operation Schedule Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_market_operation_schedule_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.spot_gold_market_operation_schedule_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_market_operation_schedule_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_market_operation_schedule_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_market_operation_schedule_message.fields(buffer, offset, packet, parent)
  end
end

-- Spot Gold Issue Closing Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_issue_closing_message = {}

-- Size: Spot Gold Issue Closing Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_issue_closing_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.closing_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_type_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.filler_11.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.second_filler_11.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_weighted_stock_price_average.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_base_price_of_buy_in.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_upper_limit_of_buy_in.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_lower_limit_of_buy_in.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.size

-- Display: Spot Gold Issue Closing Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_issue_closing_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spot Gold Issue Closing Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_issue_closing_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Closing Price: Double
  index, closing_price = koscom_mdcsrealtime_commodities_exture_v2_020.closing_price.dissect(buffer, index, packet, parent)

  -- Closing Price Type Code: String
  index, closing_price_type_code = koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_type_code.dissect(buffer, index, packet, parent)

  -- Filler 11: Double
  index, filler_11 = koscom_mdcsrealtime_commodities_exture_v2_020.filler_11.dissect(buffer, index, packet, parent)

  -- Second Filler 11: Double
  index, second_filler_11 = koscom_mdcsrealtime_commodities_exture_v2_020.second_filler_11.dissect(buffer, index, packet, parent)

  -- Closing Price Weighted Stock Price Average: Double
  index, closing_price_weighted_stock_price_average = koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_weighted_stock_price_average.dissect(buffer, index, packet, parent)

  -- Closing Price Base Price Of Buy In: Double
  index, closing_price_base_price_of_buy_in = koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_base_price_of_buy_in.dissect(buffer, index, packet, parent)

  -- Closing Price Upper Limit Of Buy In: Double
  index, closing_price_upper_limit_of_buy_in = koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_upper_limit_of_buy_in.dissect(buffer, index, packet, parent)

  -- Closing Price Lower Limit Of Buy In: Double
  index, closing_price_lower_limit_of_buy_in = koscom_mdcsrealtime_commodities_exture_v2_020.closing_price_lower_limit_of_buy_in.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spot Gold Issue Closing Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_issue_closing_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.spot_gold_issue_closing_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_issue_closing_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_issue_closing_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_issue_closing_message.fields(buffer, offset, packet, parent)
  end
end

-- Spot Gold Market Operation Ts Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_market_operation_ts_message = {}

-- Size: Spot Gold Market Operation Ts Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_market_operation_ts_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.session_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.board_event_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.start_time_of_a_board_event.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.board_event_group_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt_reason_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.size

-- Display: Spot Gold Market Operation Ts Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_market_operation_ts_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spot Gold Market Operation Ts Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_market_operation_ts_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_commodities_exture_v2_020.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_commodities_exture_v2_020.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Board Event Id: String
  index, board_event_id = koscom_mdcsrealtime_commodities_exture_v2_020.board_event_id.dissect(buffer, index, packet, parent)

  -- Start Time Of A Board Event: String
  index, start_time_of_a_board_event = koscom_mdcsrealtime_commodities_exture_v2_020.start_time_of_a_board_event.dissect(buffer, index, packet, parent)

  -- Board Event Group Code: Int
  index, board_event_group_code = koscom_mdcsrealtime_commodities_exture_v2_020.board_event_group_code.dissect(buffer, index, packet, parent)

  -- Trading Halt Reason Code: String
  index, trading_halt_reason_code = koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt_reason_code.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spot Gold Market Operation Ts Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_market_operation_ts_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.spot_gold_market_operation_ts_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_market_operation_ts_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_market_operation_ts_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_market_operation_ts_message.fields(buffer, offset, packet, parent)
  end
end

-- External Gold Spot Closing Price Message
koscom_mdcsrealtime_commodities_exture_v2_020.external_gold_spot_closing_price_message = {}

-- Size: External Gold Spot Closing Price Message
koscom_mdcsrealtime_commodities_exture_v2_020.external_gold_spot_closing_price_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_020.data_type.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.job_code_symbol.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.trading_date.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.trading_time.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.opening_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.high_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.low_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.closing_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.change_from_previous_day_sign.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.change_from_previous_day.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.fluctuating_rate.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_quote.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_quote.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.currency_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.conversion_basic_exchange_rate.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.size

-- Display: External Gold Spot Closing Price Message
koscom_mdcsrealtime_commodities_exture_v2_020.external_gold_spot_closing_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: External Gold Spot Closing Price Message
koscom_mdcsrealtime_commodities_exture_v2_020.external_gold_spot_closing_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Data Type: String
  index, data_type = koscom_mdcsrealtime_commodities_exture_v2_020.data_type.dissect(buffer, index, packet, parent)

  -- Job Code Symbol: String
  index, job_code_symbol = koscom_mdcsrealtime_commodities_exture_v2_020.job_code_symbol.dissect(buffer, index, packet, parent)

  -- Trading Date: String
  index, trading_date = koscom_mdcsrealtime_commodities_exture_v2_020.trading_date.dissect(buffer, index, packet, parent)

  -- Trading Time: String
  index, trading_time = koscom_mdcsrealtime_commodities_exture_v2_020.trading_time.dissect(buffer, index, packet, parent)

  -- Opening Price: String
  index, opening_price = koscom_mdcsrealtime_commodities_exture_v2_020.opening_price.dissect(buffer, index, packet, parent)

  -- High Price: String
  index, high_price = koscom_mdcsrealtime_commodities_exture_v2_020.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: String
  index, low_price = koscom_mdcsrealtime_commodities_exture_v2_020.low_price.dissect(buffer, index, packet, parent)

  -- Closing Price: Double
  index, closing_price = koscom_mdcsrealtime_commodities_exture_v2_020.closing_price.dissect(buffer, index, packet, parent)

  -- Change From Previous Day Sign: String
  index, change_from_previous_day_sign = koscom_mdcsrealtime_commodities_exture_v2_020.change_from_previous_day_sign.dissect(buffer, index, packet, parent)

  -- Change From Previous Day: String
  index, change_from_previous_day = koscom_mdcsrealtime_commodities_exture_v2_020.change_from_previous_day.dissect(buffer, index, packet, parent)

  -- Fluctuating Rate: String
  index, fluctuating_rate = koscom_mdcsrealtime_commodities_exture_v2_020.fluctuating_rate.dissect(buffer, index, packet, parent)

  -- Bid Quote: String
  index, bid_quote = koscom_mdcsrealtime_commodities_exture_v2_020.bid_quote.dissect(buffer, index, packet, parent)

  -- Ask Quote: String
  index, ask_quote = koscom_mdcsrealtime_commodities_exture_v2_020.ask_quote.dissect(buffer, index, packet, parent)

  -- Currency Code: String
  index, currency_code = koscom_mdcsrealtime_commodities_exture_v2_020.currency_code.dissect(buffer, index, packet, parent)

  -- Conversion Basic Exchange Rate: String
  index, conversion_basic_exchange_rate = koscom_mdcsrealtime_commodities_exture_v2_020.conversion_basic_exchange_rate.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: External Gold Spot Closing Price Message
koscom_mdcsrealtime_commodities_exture_v2_020.external_gold_spot_closing_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.external_gold_spot_closing_price_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_020.external_gold_spot_closing_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_020.external_gold_spot_closing_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_020.external_gold_spot_closing_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Emissions Batch Data Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_batch_data_message = {}

-- Size: Emissions Batch Data Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_batch_data_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.total_number_of_instruments_of_the_contract.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.business_date.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.abbreviated_issue_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.issue_name.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.abbreviated_issue_name.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.english_issue_name.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.abbreviated_issue_name_in_en.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.market_operation_product_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.security_group_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.listing_date.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.delisting_date.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.market_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.upper_limit_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lower_limit_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.base_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.random_end_trigger_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.unit_of_volume_in_main_board.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.yesterdays_closing_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.yesterdays_closing_price_type_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.substitute_price_of_securities.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.appraisal_ratio_of_substitute_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.a_representative_issue_to_calculate_base_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.an_issue_of_which_base_price_is_settled_with_a_todays_single_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.size

-- Display: Emissions Batch Data Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_batch_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Emissions Batch Data Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_batch_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Total Number Of Instruments Of The Contract: Int
  index, total_number_of_instruments_of_the_contract = koscom_mdcsrealtime_commodities_exture_v2_020.total_number_of_instruments_of_the_contract.dissect(buffer, index, packet, parent)

  -- Business Date: String
  index, business_date = koscom_mdcsrealtime_commodities_exture_v2_020.business_date.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Code: String
  index, abbreviated_issue_code = koscom_mdcsrealtime_commodities_exture_v2_020.abbreviated_issue_code.dissect(buffer, index, packet, parent)

  -- Issue Name: String
  index, issue_name = koscom_mdcsrealtime_commodities_exture_v2_020.issue_name.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Name: String
  index, abbreviated_issue_name = koscom_mdcsrealtime_commodities_exture_v2_020.abbreviated_issue_name.dissect(buffer, index, packet, parent)

  -- English Issue Name: String
  index, english_issue_name = koscom_mdcsrealtime_commodities_exture_v2_020.english_issue_name.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Name In En: String
  index, abbreviated_issue_name_in_en = koscom_mdcsrealtime_commodities_exture_v2_020.abbreviated_issue_name_in_en.dissect(buffer, index, packet, parent)

  -- Market Operation Product Id: String
  index, market_operation_product_id = koscom_mdcsrealtime_commodities_exture_v2_020.market_operation_product_id.dissect(buffer, index, packet, parent)

  -- Security Group Id: String
  index, security_group_id = koscom_mdcsrealtime_commodities_exture_v2_020.security_group_id.dissect(buffer, index, packet, parent)

  -- Listing Date: String
  index, listing_date = koscom_mdcsrealtime_commodities_exture_v2_020.listing_date.dissect(buffer, index, packet, parent)

  -- Delisting Date: String
  index, delisting_date = koscom_mdcsrealtime_commodities_exture_v2_020.delisting_date.dissect(buffer, index, packet, parent)

  -- Market Id: String
  index, market_id = koscom_mdcsrealtime_commodities_exture_v2_020.market_id.dissect(buffer, index, packet, parent)

  -- Upper Limit Price: Double
  index, upper_limit_price = koscom_mdcsrealtime_commodities_exture_v2_020.upper_limit_price.dissect(buffer, index, packet, parent)

  -- Lower Limit Price: Double
  index, lower_limit_price = koscom_mdcsrealtime_commodities_exture_v2_020.lower_limit_price.dissect(buffer, index, packet, parent)

  -- Base Price: Double
  index, base_price = koscom_mdcsrealtime_commodities_exture_v2_020.base_price.dissect(buffer, index, packet, parent)

  -- Random End Trigger Code: String
  index, random_end_trigger_code = koscom_mdcsrealtime_commodities_exture_v2_020.random_end_trigger_code.dissect(buffer, index, packet, parent)

  -- Trading Halt: String
  index, trading_halt = koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt.dissect(buffer, index, packet, parent)

  -- Unit Of Volume In Main Board: Long
  index, unit_of_volume_in_main_board = koscom_mdcsrealtime_commodities_exture_v2_020.unit_of_volume_in_main_board.dissect(buffer, index, packet, parent)

  -- Yesterdays Closing Price: Double
  index, yesterdays_closing_price = koscom_mdcsrealtime_commodities_exture_v2_020.yesterdays_closing_price.dissect(buffer, index, packet, parent)

  -- Yesterdays Closing Price Type Code: String
  index, yesterdays_closing_price_type_code = koscom_mdcsrealtime_commodities_exture_v2_020.yesterdays_closing_price_type_code.dissect(buffer, index, packet, parent)

  -- Substitute Price Of Securities: Double
  index, substitute_price_of_securities = koscom_mdcsrealtime_commodities_exture_v2_020.substitute_price_of_securities.dissect(buffer, index, packet, parent)

  -- Appraisal Ratio Of Substitute Price: Double
  index, appraisal_ratio_of_substitute_price = koscom_mdcsrealtime_commodities_exture_v2_020.appraisal_ratio_of_substitute_price.dissect(buffer, index, packet, parent)

  -- A Representative Issue To Calculate Base Price: String
  index, a_representative_issue_to_calculate_base_price = koscom_mdcsrealtime_commodities_exture_v2_020.a_representative_issue_to_calculate_base_price.dissect(buffer, index, packet, parent)

  -- An Issue Of Which Base Price Is Settled With A Todays Single Price: String
  index, an_issue_of_which_base_price_is_settled_with_a_todays_single_price = koscom_mdcsrealtime_commodities_exture_v2_020.an_issue_of_which_base_price_is_settled_with_a_todays_single_price.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Emissions Batch Data Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_batch_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.emissions_batch_data_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_batch_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_batch_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_020.emissions_batch_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Spot Gold Batch Data Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_batch_data_message = {}

-- Size: Spot Gold Batch Data Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_batch_data_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.total_number_of_instruments_of_the_contract.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.business_date.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.abbreviated_issue_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.issue_name.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.abbreviated_issue_name.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.english_issue_name.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.abbreviated_issue_name_in_en.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.market_operation_product_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.security_group_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.listing_date.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.delisting_date.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.market_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.upper_limit_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lower_limit_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.base_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.random_end_trigger_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.unit_of_volume_in_main_board.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.yesterdays_closing_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.yesterdays_closing_price_type_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.substitute_price_of_securities.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.appraisal_ratio_of_substitute_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.a_representative_issue_to_calculate_base_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.size

-- Display: Spot Gold Batch Data Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_batch_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spot Gold Batch Data Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_batch_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Total Number Of Instruments Of The Contract: Int
  index, total_number_of_instruments_of_the_contract = koscom_mdcsrealtime_commodities_exture_v2_020.total_number_of_instruments_of_the_contract.dissect(buffer, index, packet, parent)

  -- Business Date: String
  index, business_date = koscom_mdcsrealtime_commodities_exture_v2_020.business_date.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Code: String
  index, abbreviated_issue_code = koscom_mdcsrealtime_commodities_exture_v2_020.abbreviated_issue_code.dissect(buffer, index, packet, parent)

  -- Issue Name: String
  index, issue_name = koscom_mdcsrealtime_commodities_exture_v2_020.issue_name.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Name: String
  index, abbreviated_issue_name = koscom_mdcsrealtime_commodities_exture_v2_020.abbreviated_issue_name.dissect(buffer, index, packet, parent)

  -- English Issue Name: String
  index, english_issue_name = koscom_mdcsrealtime_commodities_exture_v2_020.english_issue_name.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Name In En: String
  index, abbreviated_issue_name_in_en = koscom_mdcsrealtime_commodities_exture_v2_020.abbreviated_issue_name_in_en.dissect(buffer, index, packet, parent)

  -- Market Operation Product Id: String
  index, market_operation_product_id = koscom_mdcsrealtime_commodities_exture_v2_020.market_operation_product_id.dissect(buffer, index, packet, parent)

  -- Security Group Id: String
  index, security_group_id = koscom_mdcsrealtime_commodities_exture_v2_020.security_group_id.dissect(buffer, index, packet, parent)

  -- Listing Date: String
  index, listing_date = koscom_mdcsrealtime_commodities_exture_v2_020.listing_date.dissect(buffer, index, packet, parent)

  -- Delisting Date: String
  index, delisting_date = koscom_mdcsrealtime_commodities_exture_v2_020.delisting_date.dissect(buffer, index, packet, parent)

  -- Market Id: String
  index, market_id = koscom_mdcsrealtime_commodities_exture_v2_020.market_id.dissect(buffer, index, packet, parent)

  -- Upper Limit Price: Double
  index, upper_limit_price = koscom_mdcsrealtime_commodities_exture_v2_020.upper_limit_price.dissect(buffer, index, packet, parent)

  -- Lower Limit Price: Double
  index, lower_limit_price = koscom_mdcsrealtime_commodities_exture_v2_020.lower_limit_price.dissect(buffer, index, packet, parent)

  -- Base Price: Double
  index, base_price = koscom_mdcsrealtime_commodities_exture_v2_020.base_price.dissect(buffer, index, packet, parent)

  -- Random End Trigger Code: String
  index, random_end_trigger_code = koscom_mdcsrealtime_commodities_exture_v2_020.random_end_trigger_code.dissect(buffer, index, packet, parent)

  -- Trading Halt: String
  index, trading_halt = koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt.dissect(buffer, index, packet, parent)

  -- Unit Of Volume In Main Board: Long
  index, unit_of_volume_in_main_board = koscom_mdcsrealtime_commodities_exture_v2_020.unit_of_volume_in_main_board.dissect(buffer, index, packet, parent)

  -- Yesterdays Closing Price: Double
  index, yesterdays_closing_price = koscom_mdcsrealtime_commodities_exture_v2_020.yesterdays_closing_price.dissect(buffer, index, packet, parent)

  -- Yesterdays Closing Price Type Code: String
  index, yesterdays_closing_price_type_code = koscom_mdcsrealtime_commodities_exture_v2_020.yesterdays_closing_price_type_code.dissect(buffer, index, packet, parent)

  -- Substitute Price Of Securities: Double
  index, substitute_price_of_securities = koscom_mdcsrealtime_commodities_exture_v2_020.substitute_price_of_securities.dissect(buffer, index, packet, parent)

  -- Appraisal Ratio Of Substitute Price: Double
  index, appraisal_ratio_of_substitute_price = koscom_mdcsrealtime_commodities_exture_v2_020.appraisal_ratio_of_substitute_price.dissect(buffer, index, packet, parent)

  -- A Representative Issue To Calculate Base Price: String
  index, a_representative_issue_to_calculate_base_price = koscom_mdcsrealtime_commodities_exture_v2_020.a_representative_issue_to_calculate_base_price.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spot Gold Batch Data Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_batch_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.spot_gold_batch_data_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_batch_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_batch_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_batch_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Emissions Auction Results Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_auction_results_message = {}

-- Size: Emissions Auction Results Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_auction_results_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.auction_bid_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.auction_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.auction_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.volume_in_the_bid_invitation.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.number_of_bidders.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bidtocover_ratio.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.size

-- Display: Emissions Auction Results Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_auction_results_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Emissions Auction Results Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_auction_results_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Auction Bid Volume: Long
  index, auction_bid_volume = koscom_mdcsrealtime_commodities_exture_v2_020.auction_bid_volume.dissect(buffer, index, packet, parent)

  -- Auction Price: Double
  index, auction_price = koscom_mdcsrealtime_commodities_exture_v2_020.auction_price.dissect(buffer, index, packet, parent)

  -- Auction Volume: Long
  index, auction_volume = koscom_mdcsrealtime_commodities_exture_v2_020.auction_volume.dissect(buffer, index, packet, parent)

  -- Volume In The Bid Invitation: Long
  index, volume_in_the_bid_invitation = koscom_mdcsrealtime_commodities_exture_v2_020.volume_in_the_bid_invitation.dissect(buffer, index, packet, parent)

  -- Number Of Bidders: Long
  index, number_of_bidders = koscom_mdcsrealtime_commodities_exture_v2_020.number_of_bidders.dissect(buffer, index, packet, parent)

  -- Bidtocover Ratio: Double
  index, bidtocover_ratio = koscom_mdcsrealtime_commodities_exture_v2_020.bidtocover_ratio.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Emissions Auction Results Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_auction_results_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.emissions_auction_results_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_auction_results_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_auction_results_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_020.emissions_auction_results_message.fields(buffer, offset, packet, parent)
  end
end

-- Emissions Determination Of Base Price Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_determination_of_base_price_message = {}

-- Size: Emissions Determination Of Base Price Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_determination_of_base_price_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.base_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.upper_limit_of_base_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lower_limit_of_base_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.block_trading_upper_limit_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.block_trading_lower_limit_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.size

-- Display: Emissions Determination Of Base Price Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_determination_of_base_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Emissions Determination Of Base Price Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_determination_of_base_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Base Price: Double
  index, base_price = koscom_mdcsrealtime_commodities_exture_v2_020.base_price.dissect(buffer, index, packet, parent)

  -- Upper Limit Of Base Price: Double
  index, upper_limit_of_base_price = koscom_mdcsrealtime_commodities_exture_v2_020.upper_limit_of_base_price.dissect(buffer, index, packet, parent)

  -- Lower Limit Of Base Price: Double
  index, lower_limit_of_base_price = koscom_mdcsrealtime_commodities_exture_v2_020.lower_limit_of_base_price.dissect(buffer, index, packet, parent)

  -- Block Trading Upper Limit Price: Double
  index, block_trading_upper_limit_price = koscom_mdcsrealtime_commodities_exture_v2_020.block_trading_upper_limit_price.dissect(buffer, index, packet, parent)

  -- Block Trading Lower Limit Price: Double
  index, block_trading_lower_limit_price = koscom_mdcsrealtime_commodities_exture_v2_020.block_trading_lower_limit_price.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Emissions Determination Of Base Price Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_determination_of_base_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.emissions_determination_of_base_price_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_determination_of_base_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_determination_of_base_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_020.emissions_determination_of_base_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Emissions Negotiated Trade Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_negotiated_trade_message = {}

-- Size: Emissions Negotiated Trade Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_negotiated_trade_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.trading_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_value.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.size

-- Display: Emissions Negotiated Trade Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_negotiated_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Emissions Negotiated Trade Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_negotiated_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Trading Price: Double
  index, trading_price = koscom_mdcsrealtime_commodities_exture_v2_020.trading_price.dissect(buffer, index, packet, parent)

  -- Trading Volume: Long
  index, trading_volume = koscom_mdcsrealtime_commodities_exture_v2_020.trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Emissions Negotiated Trade Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_negotiated_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.emissions_negotiated_trade_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_negotiated_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_negotiated_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_020.emissions_negotiated_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Emissions Snapshot Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_snapshot_message = {}

-- Size: Emissions Snapshot Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_snapshot_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.session_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.current_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.opening_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.todays_high.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.todays_low.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_value.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.negotiated_block_trade_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.negotiated_block_trade_trading_value.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.total_ask_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.total_bid_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.size

-- Display: Emissions Snapshot Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Emissions Snapshot Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_commodities_exture_v2_020.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Current Price: Double
  index, current_price = koscom_mdcsrealtime_commodities_exture_v2_020.current_price.dissect(buffer, index, packet, parent)

  -- Opening Price: String
  index, opening_price = koscom_mdcsrealtime_commodities_exture_v2_020.opening_price.dissect(buffer, index, packet, parent)

  -- Todays High: Double
  index, todays_high = koscom_mdcsrealtime_commodities_exture_v2_020.todays_high.dissect(buffer, index, packet, parent)

  -- Todays Low: Double
  index, todays_low = koscom_mdcsrealtime_commodities_exture_v2_020.todays_low.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Negotiated Block Trade Trading Volume: Long
  index, negotiated_block_trade_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_020.negotiated_block_trade_trading_volume.dissect(buffer, index, packet, parent)

  -- Negotiated Block Trade Trading Value: FLOAT128
  index, negotiated_block_trade_trading_value = koscom_mdcsrealtime_commodities_exture_v2_020.negotiated_block_trade_trading_value.dissect(buffer, index, packet, parent)

  -- Trading Halt: String
  index, trading_halt = koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Long
  index, ask_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Long
  index, bid_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Long
  index, ask_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Long
  index, bid_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Long
  index, ask_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Long
  index, bid_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Long
  index, ask_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Long
  index, bid_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Long
  index, ask_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Long
  index, bid_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Total Ask Volume: Long
  index, total_ask_volume = koscom_mdcsrealtime_commodities_exture_v2_020.total_ask_volume.dissect(buffer, index, packet, parent)

  -- Total Bid Volume: Long
  index, total_bid_volume = koscom_mdcsrealtime_commodities_exture_v2_020.total_bid_volume.dissect(buffer, index, packet, parent)

  -- Estimated Trading Price: Double
  index, estimated_trading_price = koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_price.dissect(buffer, index, packet, parent)

  -- Estimated Trading Volume: Long
  index, estimated_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Emissions Snapshot Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.emissions_snapshot_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_020.emissions_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Emissions Market Operation Ts Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_market_operation_ts_plus_quote_message = {}

-- Size: Emissions Market Operation Ts Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_market_operation_ts_plus_quote_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.session_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.board_event_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.start_time_of_a_board_event.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.board_event_group_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt_reason_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.total_ask_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.total_bid_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.size

-- Display: Emissions Market Operation Ts Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_market_operation_ts_plus_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Emissions Market Operation Ts Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_market_operation_ts_plus_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_commodities_exture_v2_020.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_commodities_exture_v2_020.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Board Event Id: String
  index, board_event_id = koscom_mdcsrealtime_commodities_exture_v2_020.board_event_id.dissect(buffer, index, packet, parent)

  -- Start Time Of A Board Event: String
  index, start_time_of_a_board_event = koscom_mdcsrealtime_commodities_exture_v2_020.start_time_of_a_board_event.dissect(buffer, index, packet, parent)

  -- Board Event Group Code: Int
  index, board_event_group_code = koscom_mdcsrealtime_commodities_exture_v2_020.board_event_group_code.dissect(buffer, index, packet, parent)

  -- Trading Halt Reason Code: String
  index, trading_halt_reason_code = koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt_reason_code.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Long
  index, ask_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Long
  index, bid_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Long
  index, ask_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Long
  index, bid_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Long
  index, ask_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Long
  index, bid_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Long
  index, ask_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Long
  index, bid_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Long
  index, ask_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Long
  index, bid_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Total Ask Volume: Long
  index, total_ask_volume = koscom_mdcsrealtime_commodities_exture_v2_020.total_ask_volume.dissect(buffer, index, packet, parent)

  -- Total Bid Volume: Long
  index, total_bid_volume = koscom_mdcsrealtime_commodities_exture_v2_020.total_bid_volume.dissect(buffer, index, packet, parent)

  -- Estimated Trading Price: Double
  index, estimated_trading_price = koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_price.dissect(buffer, index, packet, parent)

  -- Estimated Trading Volume: Long
  index, estimated_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Emissions Market Operation Ts Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_market_operation_ts_plus_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.emissions_market_operation_ts_plus_quote_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_market_operation_ts_plus_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_market_operation_ts_plus_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_020.emissions_market_operation_ts_plus_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Emissions Order Filled Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_order_filled_plus_quote_message = {}

-- Size: Emissions Order Filled Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_order_filled_plus_quote_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.session_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.trading_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.opening_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.todays_high.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.todays_low.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.previous_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_value.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.final_ask_bid_type_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.total_ask_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.total_bid_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.size

-- Display: Emissions Order Filled Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_order_filled_plus_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Emissions Order Filled Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_order_filled_plus_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_commodities_exture_v2_020.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_commodities_exture_v2_020.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Trading Price: Double
  index, trading_price = koscom_mdcsrealtime_commodities_exture_v2_020.trading_price.dissect(buffer, index, packet, parent)

  -- Trading Volume: Long
  index, trading_volume = koscom_mdcsrealtime_commodities_exture_v2_020.trading_volume.dissect(buffer, index, packet, parent)

  -- Opening Price: String
  index, opening_price = koscom_mdcsrealtime_commodities_exture_v2_020.opening_price.dissect(buffer, index, packet, parent)

  -- Todays High: Double
  index, todays_high = koscom_mdcsrealtime_commodities_exture_v2_020.todays_high.dissect(buffer, index, packet, parent)

  -- Todays Low: Double
  index, todays_low = koscom_mdcsrealtime_commodities_exture_v2_020.todays_low.dissect(buffer, index, packet, parent)

  -- Previous Price: Double
  index, previous_price = koscom_mdcsrealtime_commodities_exture_v2_020.previous_price.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Final Ask Bid Type Code: String
  index, final_ask_bid_type_code = koscom_mdcsrealtime_commodities_exture_v2_020.final_ask_bid_type_code.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Long
  index, ask_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Long
  index, bid_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Long
  index, ask_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Long
  index, bid_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Long
  index, ask_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Long
  index, bid_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Long
  index, ask_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Long
  index, bid_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Long
  index, ask_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Long
  index, bid_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Total Ask Volume: Long
  index, total_ask_volume = koscom_mdcsrealtime_commodities_exture_v2_020.total_ask_volume.dissect(buffer, index, packet, parent)

  -- Total Bid Volume: Long
  index, total_bid_volume = koscom_mdcsrealtime_commodities_exture_v2_020.total_bid_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Emissions Order Filled Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_order_filled_plus_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.emissions_order_filled_plus_quote_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_order_filled_plus_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_order_filled_plus_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_020.emissions_order_filled_plus_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Emissions Order Filled Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_order_filled_message = {}

-- Size: Emissions Order Filled Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_order_filled_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.session_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.trading_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.opening_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.todays_high.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.todays_low.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.previous_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_value.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.final_ask_bid_type_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.size

-- Display: Emissions Order Filled Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_order_filled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Emissions Order Filled Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_order_filled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_commodities_exture_v2_020.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_commodities_exture_v2_020.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Trading Price: Double
  index, trading_price = koscom_mdcsrealtime_commodities_exture_v2_020.trading_price.dissect(buffer, index, packet, parent)

  -- Trading Volume: Long
  index, trading_volume = koscom_mdcsrealtime_commodities_exture_v2_020.trading_volume.dissect(buffer, index, packet, parent)

  -- Opening Price: String
  index, opening_price = koscom_mdcsrealtime_commodities_exture_v2_020.opening_price.dissect(buffer, index, packet, parent)

  -- Todays High: Double
  index, todays_high = koscom_mdcsrealtime_commodities_exture_v2_020.todays_high.dissect(buffer, index, packet, parent)

  -- Todays Low: Double
  index, todays_low = koscom_mdcsrealtime_commodities_exture_v2_020.todays_low.dissect(buffer, index, packet, parent)

  -- Previous Price: Double
  index, previous_price = koscom_mdcsrealtime_commodities_exture_v2_020.previous_price.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Final Ask Bid Type Code: String
  index, final_ask_bid_type_code = koscom_mdcsrealtime_commodities_exture_v2_020.final_ask_bid_type_code.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Emissions Order Filled Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_order_filled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.emissions_order_filled_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_order_filled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_order_filled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_020.emissions_order_filled_message.fields(buffer, offset, packet, parent)
  end
end

-- Emissions Quote Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_quote_message = {}

-- Size: Emissions Quote Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_quote_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.session_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.total_ask_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.total_bid_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.size

-- Display: Emissions Quote Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Emissions Quote Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_commodities_exture_v2_020.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_commodities_exture_v2_020.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Long
  index, ask_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Long
  index, bid_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Long
  index, ask_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Long
  index, bid_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Long
  index, ask_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Long
  index, bid_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Long
  index, ask_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Long
  index, bid_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Long
  index, ask_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Long
  index, bid_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Total Ask Volume: Long
  index, total_ask_volume = koscom_mdcsrealtime_commodities_exture_v2_020.total_ask_volume.dissect(buffer, index, packet, parent)

  -- Total Bid Volume: Long
  index, total_bid_volume = koscom_mdcsrealtime_commodities_exture_v2_020.total_bid_volume.dissect(buffer, index, packet, parent)

  -- Estimated Trading Price: Double
  index, estimated_trading_price = koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_price.dissect(buffer, index, packet, parent)

  -- Estimated Trading Volume: Long
  index, estimated_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Emissions Quote Message
koscom_mdcsrealtime_commodities_exture_v2_020.emissions_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.emissions_quote_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_020.emissions_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Spot Gold Negotiated Trade Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_negotiated_trade_message = {}

-- Size: Spot Gold Negotiated Trade Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_negotiated_trade_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.negotiated_trade_accumulated_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.negotiated_trade_accumulated_trading_value.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.total_accumulated_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.total_accumulated_trading_value.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.size

-- Display: Spot Gold Negotiated Trade Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_negotiated_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spot Gold Negotiated Trade Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_negotiated_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Negotiated Trade Accumulated Trading Volume: Long
  index, negotiated_trade_accumulated_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_020.negotiated_trade_accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Negotiated Trade Accumulated Trading Value: FLOAT128
  index, negotiated_trade_accumulated_trading_value = koscom_mdcsrealtime_commodities_exture_v2_020.negotiated_trade_accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Total Accumulated Trading Volume: Long
  index, total_accumulated_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_020.total_accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Total Accumulated Trading Value: FLOAT128
  index, total_accumulated_trading_value = koscom_mdcsrealtime_commodities_exture_v2_020.total_accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spot Gold Negotiated Trade Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_negotiated_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.spot_gold_negotiated_trade_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_negotiated_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_negotiated_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_negotiated_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Spot Gold Snapshot Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_snapshot_message = {}

-- Size: Spot Gold Snapshot Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_snapshot_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.session_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.current_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.opening_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.todays_high.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.todays_low.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_value.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_6_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_6_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_6_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_6_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_6_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_6_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_7_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_7_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_7_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_7_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_7_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_7_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_8_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_8_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_8_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_8_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_8_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_8_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_9_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_9_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_9_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_9_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_9_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_9_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_10_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_10_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_10_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_10_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_10_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_10_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.total_ask_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.total_bid_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.size

-- Display: Spot Gold Snapshot Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spot Gold Snapshot Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_commodities_exture_v2_020.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Current Price: Double
  index, current_price = koscom_mdcsrealtime_commodities_exture_v2_020.current_price.dissect(buffer, index, packet, parent)

  -- Opening Price: String
  index, opening_price = koscom_mdcsrealtime_commodities_exture_v2_020.opening_price.dissect(buffer, index, packet, parent)

  -- Todays High: Double
  index, todays_high = koscom_mdcsrealtime_commodities_exture_v2_020.todays_high.dissect(buffer, index, packet, parent)

  -- Todays Low: Double
  index, todays_low = koscom_mdcsrealtime_commodities_exture_v2_020.todays_low.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Trading Halt: String
  index, trading_halt = koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Long
  index, ask_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Long
  index, bid_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 1 Volume: Long
  index, lp_ask_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 1 Volume: Long
  index, lp_bid_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Long
  index, ask_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Long
  index, bid_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 2 Volume: Long
  index, lp_ask_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 2 Volume: Long
  index, lp_bid_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Long
  index, ask_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Long
  index, bid_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 3 Volume: Long
  index, lp_ask_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 3 Volume: Long
  index, lp_bid_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Long
  index, ask_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Long
  index, bid_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 4 Volume: Long
  index, lp_ask_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 4 Volume: Long
  index, lp_bid_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Long
  index, ask_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Long
  index, bid_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 5 Volume: Long
  index, lp_ask_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 5 Volume: Long
  index, lp_bid_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Price: Double
  index, ask_level_6_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_6_price.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Price: Double
  index, bid_level_6_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_6_price.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Volume: Long
  index, ask_level_6_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_6_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Volume: Long
  index, bid_level_6_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_6_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 6 Volume: Long
  index, lp_ask_level_6_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_6_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 6 Volume: Long
  index, lp_bid_level_6_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_6_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Price: Double
  index, ask_level_7_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_7_price.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Price: Double
  index, bid_level_7_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_7_price.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Volume: Long
  index, ask_level_7_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_7_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Volume: Long
  index, bid_level_7_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_7_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 7 Volume: Long
  index, lp_ask_level_7_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_7_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 7 Volume: Long
  index, lp_bid_level_7_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_7_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Price: Double
  index, ask_level_8_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_8_price.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Price: Double
  index, bid_level_8_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_8_price.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Volume: Long
  index, ask_level_8_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_8_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Volume: Long
  index, bid_level_8_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_8_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 8 Volume: Long
  index, lp_ask_level_8_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_8_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 8 Volume: Long
  index, lp_bid_level_8_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_8_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Price: Double
  index, ask_level_9_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_9_price.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Price: Double
  index, bid_level_9_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_9_price.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Volume: Long
  index, ask_level_9_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_9_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Volume: Long
  index, bid_level_9_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_9_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 9 Volume: Long
  index, lp_ask_level_9_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_9_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 9 Volume: Long
  index, lp_bid_level_9_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_9_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Price: Double
  index, ask_level_10_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_10_price.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Price: Double
  index, bid_level_10_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_10_price.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Volume: Long
  index, ask_level_10_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_10_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Volume: Long
  index, bid_level_10_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_10_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 10 Volume: Long
  index, lp_ask_level_10_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_10_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 10 Volume: Long
  index, lp_bid_level_10_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_10_volume.dissect(buffer, index, packet, parent)

  -- Total Ask Volume: Long
  index, total_ask_volume = koscom_mdcsrealtime_commodities_exture_v2_020.total_ask_volume.dissect(buffer, index, packet, parent)

  -- Total Bid Volume: Long
  index, total_bid_volume = koscom_mdcsrealtime_commodities_exture_v2_020.total_bid_volume.dissect(buffer, index, packet, parent)

  -- Estimated Trading Price: Double
  index, estimated_trading_price = koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_price.dissect(buffer, index, packet, parent)

  -- Estimated Trading Volume: Long
  index, estimated_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spot Gold Snapshot Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.spot_gold_snapshot_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Spot Gold Market Operation Ts Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_market_operation_ts_plus_quote_message = {}

-- Size: Spot Gold Market Operation Ts Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_market_operation_ts_plus_quote_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.session_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.board_event_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.start_time_of_a_board_event.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.board_event_group_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt_reason_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_6_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_6_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_6_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_6_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_6_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_6_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_7_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_7_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_7_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_7_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_7_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_7_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_8_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_8_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_8_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_8_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_8_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_8_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_9_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_9_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_9_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_9_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_9_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_9_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_10_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_10_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_10_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_10_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_10_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_10_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.total_ask_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.total_bid_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.size

-- Display: Spot Gold Market Operation Ts Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_market_operation_ts_plus_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spot Gold Market Operation Ts Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_market_operation_ts_plus_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_commodities_exture_v2_020.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_commodities_exture_v2_020.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Board Event Id: String
  index, board_event_id = koscom_mdcsrealtime_commodities_exture_v2_020.board_event_id.dissect(buffer, index, packet, parent)

  -- Start Time Of A Board Event: String
  index, start_time_of_a_board_event = koscom_mdcsrealtime_commodities_exture_v2_020.start_time_of_a_board_event.dissect(buffer, index, packet, parent)

  -- Board Event Group Code: Int
  index, board_event_group_code = koscom_mdcsrealtime_commodities_exture_v2_020.board_event_group_code.dissect(buffer, index, packet, parent)

  -- Trading Halt Reason Code: String
  index, trading_halt_reason_code = koscom_mdcsrealtime_commodities_exture_v2_020.trading_halt_reason_code.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Long
  index, ask_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Long
  index, bid_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 1 Volume: Long
  index, lp_ask_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 1 Volume: Long
  index, lp_bid_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Long
  index, ask_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Long
  index, bid_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 2 Volume: Long
  index, lp_ask_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 2 Volume: Long
  index, lp_bid_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Long
  index, ask_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Long
  index, bid_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 3 Volume: Long
  index, lp_ask_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 3 Volume: Long
  index, lp_bid_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Long
  index, ask_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Long
  index, bid_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 4 Volume: Long
  index, lp_ask_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 4 Volume: Long
  index, lp_bid_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Long
  index, ask_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Long
  index, bid_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 5 Volume: Long
  index, lp_ask_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 5 Volume: Long
  index, lp_bid_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Price: Double
  index, ask_level_6_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_6_price.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Price: Double
  index, bid_level_6_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_6_price.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Volume: Long
  index, ask_level_6_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_6_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Volume: Long
  index, bid_level_6_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_6_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 6 Volume: Long
  index, lp_ask_level_6_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_6_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 6 Volume: Long
  index, lp_bid_level_6_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_6_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Price: Double
  index, ask_level_7_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_7_price.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Price: Double
  index, bid_level_7_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_7_price.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Volume: Long
  index, ask_level_7_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_7_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Volume: Long
  index, bid_level_7_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_7_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 7 Volume: Long
  index, lp_ask_level_7_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_7_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 7 Volume: Long
  index, lp_bid_level_7_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_7_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Price: Double
  index, ask_level_8_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_8_price.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Price: Double
  index, bid_level_8_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_8_price.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Volume: Long
  index, ask_level_8_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_8_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Volume: Long
  index, bid_level_8_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_8_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 8 Volume: Long
  index, lp_ask_level_8_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_8_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 8 Volume: Long
  index, lp_bid_level_8_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_8_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Price: Double
  index, ask_level_9_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_9_price.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Price: Double
  index, bid_level_9_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_9_price.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Volume: Long
  index, ask_level_9_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_9_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Volume: Long
  index, bid_level_9_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_9_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 9 Volume: Long
  index, lp_ask_level_9_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_9_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 9 Volume: Long
  index, lp_bid_level_9_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_9_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Price: Double
  index, ask_level_10_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_10_price.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Price: Double
  index, bid_level_10_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_10_price.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Volume: Long
  index, ask_level_10_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_10_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Volume: Long
  index, bid_level_10_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_10_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 10 Volume: Long
  index, lp_ask_level_10_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_10_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 10 Volume: Long
  index, lp_bid_level_10_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_10_volume.dissect(buffer, index, packet, parent)

  -- Total Ask Volume: Long
  index, total_ask_volume = koscom_mdcsrealtime_commodities_exture_v2_020.total_ask_volume.dissect(buffer, index, packet, parent)

  -- Total Bid Volume: Long
  index, total_bid_volume = koscom_mdcsrealtime_commodities_exture_v2_020.total_bid_volume.dissect(buffer, index, packet, parent)

  -- Estimated Trading Price: Double
  index, estimated_trading_price = koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_price.dissect(buffer, index, packet, parent)

  -- Estimated Trading Volume: Long
  index, estimated_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spot Gold Market Operation Ts Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_market_operation_ts_plus_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.spot_gold_market_operation_ts_plus_quote_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_market_operation_ts_plus_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_market_operation_ts_plus_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_market_operation_ts_plus_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Spot Gold Order Filled Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_order_filled_plus_quote_message = {}

-- Size: Spot Gold Order Filled Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_order_filled_plus_quote_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.session_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.trading_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.opening_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.todays_high.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.todays_low.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.previous_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_value.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.final_ask_bid_type_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_holding_quantity.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_6_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_6_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_6_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_6_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_6_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_6_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_7_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_7_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_7_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_7_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_7_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_7_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_8_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_8_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_8_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_8_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_8_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_8_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_9_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_9_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_9_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_9_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_9_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_9_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_10_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_10_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_10_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_10_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_10_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_10_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.total_ask_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.total_bid_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.size

-- Display: Spot Gold Order Filled Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_order_filled_plus_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spot Gold Order Filled Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_order_filled_plus_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_commodities_exture_v2_020.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_commodities_exture_v2_020.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Trading Price: Double
  index, trading_price = koscom_mdcsrealtime_commodities_exture_v2_020.trading_price.dissect(buffer, index, packet, parent)

  -- Trading Volume: Long
  index, trading_volume = koscom_mdcsrealtime_commodities_exture_v2_020.trading_volume.dissect(buffer, index, packet, parent)

  -- Opening Price: String
  index, opening_price = koscom_mdcsrealtime_commodities_exture_v2_020.opening_price.dissect(buffer, index, packet, parent)

  -- Todays High: Double
  index, todays_high = koscom_mdcsrealtime_commodities_exture_v2_020.todays_high.dissect(buffer, index, packet, parent)

  -- Todays Low: Double
  index, todays_low = koscom_mdcsrealtime_commodities_exture_v2_020.todays_low.dissect(buffer, index, packet, parent)

  -- Previous Price: Double
  index, previous_price = koscom_mdcsrealtime_commodities_exture_v2_020.previous_price.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Final Ask Bid Type Code: String
  index, final_ask_bid_type_code = koscom_mdcsrealtime_commodities_exture_v2_020.final_ask_bid_type_code.dissect(buffer, index, packet, parent)

  -- Lp Holding Quantity: Long
  index, lp_holding_quantity = koscom_mdcsrealtime_commodities_exture_v2_020.lp_holding_quantity.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Long
  index, ask_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Long
  index, bid_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 1 Volume: Long
  index, lp_ask_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 1 Volume: Long
  index, lp_bid_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Long
  index, ask_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Long
  index, bid_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 2 Volume: Long
  index, lp_ask_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 2 Volume: Long
  index, lp_bid_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Long
  index, ask_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Long
  index, bid_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 3 Volume: Long
  index, lp_ask_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 3 Volume: Long
  index, lp_bid_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Long
  index, ask_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Long
  index, bid_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 4 Volume: Long
  index, lp_ask_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 4 Volume: Long
  index, lp_bid_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Long
  index, ask_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Long
  index, bid_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 5 Volume: Long
  index, lp_ask_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 5 Volume: Long
  index, lp_bid_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Price: Double
  index, ask_level_6_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_6_price.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Price: Double
  index, bid_level_6_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_6_price.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Volume: Long
  index, ask_level_6_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_6_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Volume: Long
  index, bid_level_6_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_6_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 6 Volume: Long
  index, lp_ask_level_6_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_6_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 6 Volume: Long
  index, lp_bid_level_6_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_6_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Price: Double
  index, ask_level_7_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_7_price.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Price: Double
  index, bid_level_7_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_7_price.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Volume: Long
  index, ask_level_7_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_7_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Volume: Long
  index, bid_level_7_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_7_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 7 Volume: Long
  index, lp_ask_level_7_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_7_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 7 Volume: Long
  index, lp_bid_level_7_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_7_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Price: Double
  index, ask_level_8_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_8_price.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Price: Double
  index, bid_level_8_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_8_price.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Volume: Long
  index, ask_level_8_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_8_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Volume: Long
  index, bid_level_8_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_8_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 8 Volume: Long
  index, lp_ask_level_8_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_8_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 8 Volume: Long
  index, lp_bid_level_8_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_8_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Price: Double
  index, ask_level_9_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_9_price.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Price: Double
  index, bid_level_9_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_9_price.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Volume: Long
  index, ask_level_9_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_9_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Volume: Long
  index, bid_level_9_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_9_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 9 Volume: Long
  index, lp_ask_level_9_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_9_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 9 Volume: Long
  index, lp_bid_level_9_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_9_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Price: Double
  index, ask_level_10_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_10_price.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Price: Double
  index, bid_level_10_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_10_price.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Volume: Long
  index, ask_level_10_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_10_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Volume: Long
  index, bid_level_10_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_10_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 10 Volume: Long
  index, lp_ask_level_10_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_10_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 10 Volume: Long
  index, lp_bid_level_10_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_10_volume.dissect(buffer, index, packet, parent)

  -- Total Ask Volume: Long
  index, total_ask_volume = koscom_mdcsrealtime_commodities_exture_v2_020.total_ask_volume.dissect(buffer, index, packet, parent)

  -- Total Bid Volume: Long
  index, total_bid_volume = koscom_mdcsrealtime_commodities_exture_v2_020.total_bid_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spot Gold Order Filled Plus Quote Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_order_filled_plus_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.spot_gold_order_filled_plus_quote_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_order_filled_plus_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_order_filled_plus_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_order_filled_plus_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Spot Gold Order Filled Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_order_filled_message = {}

-- Size: Spot Gold Order Filled Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_order_filled_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.session_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.trading_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.opening_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.todays_high.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.todays_low.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.previous_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_value.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.final_ask_bid_type_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_holding_quantity.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.size

-- Display: Spot Gold Order Filled Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_order_filled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spot Gold Order Filled Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_order_filled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_commodities_exture_v2_020.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_commodities_exture_v2_020.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Trading Price: Double
  index, trading_price = koscom_mdcsrealtime_commodities_exture_v2_020.trading_price.dissect(buffer, index, packet, parent)

  -- Trading Volume: Long
  index, trading_volume = koscom_mdcsrealtime_commodities_exture_v2_020.trading_volume.dissect(buffer, index, packet, parent)

  -- Opening Price: String
  index, opening_price = koscom_mdcsrealtime_commodities_exture_v2_020.opening_price.dissect(buffer, index, packet, parent)

  -- Todays High: Double
  index, todays_high = koscom_mdcsrealtime_commodities_exture_v2_020.todays_high.dissect(buffer, index, packet, parent)

  -- Todays Low: Double
  index, todays_low = koscom_mdcsrealtime_commodities_exture_v2_020.todays_low.dissect(buffer, index, packet, parent)

  -- Previous Price: Double
  index, previous_price = koscom_mdcsrealtime_commodities_exture_v2_020.previous_price.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Final Ask Bid Type Code: String
  index, final_ask_bid_type_code = koscom_mdcsrealtime_commodities_exture_v2_020.final_ask_bid_type_code.dissect(buffer, index, packet, parent)

  -- Lp Holding Quantity: Long
  index, lp_holding_quantity = koscom_mdcsrealtime_commodities_exture_v2_020.lp_holding_quantity.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spot Gold Order Filled Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_order_filled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.spot_gold_order_filled_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_order_filled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_order_filled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_order_filled_message.fields(buffer, offset, packet, parent)
  end
end

-- Spot Gold Quote Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_quote_message = {}

-- Size: Spot Gold Quote Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_quote_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.session_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_1_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_2_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_3_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_4_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_5_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_6_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_6_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_6_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_6_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_6_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_6_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_7_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_7_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_7_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_7_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_7_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_7_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_8_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_8_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_8_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_8_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_8_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_8_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_9_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_9_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_9_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_9_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_9_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_9_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_10_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_10_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_10_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_10_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_10_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_10_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.total_ask_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.total_bid_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.size

-- Display: Spot Gold Quote Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spot Gold Quote Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_commodities_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_commodities_exture_v2_020.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_commodities_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_commodities_exture_v2_020.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Long
  index, ask_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Long
  index, bid_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 1 Volume: Long
  index, lp_ask_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 1 Volume: Long
  index, lp_bid_level_1_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Long
  index, ask_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Long
  index, bid_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 2 Volume: Long
  index, lp_ask_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 2 Volume: Long
  index, lp_bid_level_2_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Long
  index, ask_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Long
  index, bid_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 3 Volume: Long
  index, lp_ask_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 3 Volume: Long
  index, lp_bid_level_3_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Long
  index, ask_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Long
  index, bid_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 4 Volume: Long
  index, lp_ask_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 4 Volume: Long
  index, lp_bid_level_4_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Long
  index, ask_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Long
  index, bid_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 5 Volume: Long
  index, lp_ask_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 5 Volume: Long
  index, lp_bid_level_5_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Price: Double
  index, ask_level_6_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_6_price.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Price: Double
  index, bid_level_6_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_6_price.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Volume: Long
  index, ask_level_6_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_6_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Volume: Long
  index, bid_level_6_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_6_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 6 Volume: Long
  index, lp_ask_level_6_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_6_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 6 Volume: Long
  index, lp_bid_level_6_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_6_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Price: Double
  index, ask_level_7_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_7_price.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Price: Double
  index, bid_level_7_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_7_price.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Volume: Long
  index, ask_level_7_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_7_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Volume: Long
  index, bid_level_7_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_7_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 7 Volume: Long
  index, lp_ask_level_7_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_7_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 7 Volume: Long
  index, lp_bid_level_7_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_7_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Price: Double
  index, ask_level_8_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_8_price.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Price: Double
  index, bid_level_8_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_8_price.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Volume: Long
  index, ask_level_8_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_8_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Volume: Long
  index, bid_level_8_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_8_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 8 Volume: Long
  index, lp_ask_level_8_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_8_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 8 Volume: Long
  index, lp_bid_level_8_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_8_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Price: Double
  index, ask_level_9_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_9_price.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Price: Double
  index, bid_level_9_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_9_price.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Volume: Long
  index, ask_level_9_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_9_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Volume: Long
  index, bid_level_9_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_9_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 9 Volume: Long
  index, lp_ask_level_9_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_9_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 9 Volume: Long
  index, lp_bid_level_9_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_9_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Price: Double
  index, ask_level_10_price = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_10_price.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Price: Double
  index, bid_level_10_price = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_10_price.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Volume: Long
  index, ask_level_10_volume = koscom_mdcsrealtime_commodities_exture_v2_020.ask_level_10_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Volume: Long
  index, bid_level_10_volume = koscom_mdcsrealtime_commodities_exture_v2_020.bid_level_10_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 10 Volume: Long
  index, lp_ask_level_10_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_ask_level_10_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 10 Volume: Long
  index, lp_bid_level_10_volume = koscom_mdcsrealtime_commodities_exture_v2_020.lp_bid_level_10_volume.dissect(buffer, index, packet, parent)

  -- Total Ask Volume: Long
  index, total_ask_volume = koscom_mdcsrealtime_commodities_exture_v2_020.total_ask_volume.dissect(buffer, index, packet, parent)

  -- Total Bid Volume: Long
  index, total_bid_volume = koscom_mdcsrealtime_commodities_exture_v2_020.total_bid_volume.dissect(buffer, index, packet, parent)

  -- Estimated Trading Price: Double
  index, estimated_trading_price = koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_price.dissect(buffer, index, packet, parent)

  -- Estimated Trading Volume: Long
  index, estimated_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_020.estimated_trading_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spot Gold Quote Message
koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.spot_gold_quote_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Index Krx Message
koscom_mdcsrealtime_commodities_exture_v2_020.bond_index_krx_message = {}

-- Size: Bond Index Krx Message
koscom_mdcsrealtime_commodities_exture_v2_020.bond_index_krx_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.calculating_date.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.index_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.clean_price_index_krx.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.total_earnings_index.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.market_price_index_krx.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.zero_reinvestment_index_krx.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.call_reinvestment_index_krx.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.clean_price_index_weight.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.total_earnings_index_weight.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.market_price_index_weight.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.zero_re_investment_index_weight.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.call_re_investment_index_weight.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_clean_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_sum_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_zero_re_investment_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_call_re_investment_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.average_duration.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.average_convexity.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.average_yld.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.average_coupon_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.average_remaining_maturity_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.average_current_yield.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.average_spread_sign.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.average_spread.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.index_number_of_securities.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.issued_amount.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.issued_amount_weight.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.index_market_capitalization.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.market_capitalization_weight.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_cash.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.cash_inflow.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.reinvest_call_cash.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.size

-- Display: Bond Index Krx Message
koscom_mdcsrealtime_commodities_exture_v2_020.bond_index_krx_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Index Krx Message
koscom_mdcsrealtime_commodities_exture_v2_020.bond_index_krx_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_commodities_exture_v2_020.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Calculating Date: String
  index, calculating_date = koscom_mdcsrealtime_commodities_exture_v2_020.calculating_date.dissect(buffer, index, packet, parent)

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_commodities_exture_v2_020.index_id.dissect(buffer, index, packet, parent)

  -- Clean Price Index Krx: FLOAT128
  index, clean_price_index_krx = koscom_mdcsrealtime_commodities_exture_v2_020.clean_price_index_krx.dissect(buffer, index, packet, parent)

  -- Total Earnings Index: FLOAT128
  index, total_earnings_index = koscom_mdcsrealtime_commodities_exture_v2_020.total_earnings_index.dissect(buffer, index, packet, parent)

  -- Market Price Index Krx: FLOAT128
  index, market_price_index_krx = koscom_mdcsrealtime_commodities_exture_v2_020.market_price_index_krx.dissect(buffer, index, packet, parent)

  -- Zero Re-Investment Index Krx: FLOAT128
  index, zero_reinvestment_index_krx = koscom_mdcsrealtime_commodities_exture_v2_020.zero_reinvestment_index_krx.dissect(buffer, index, packet, parent)

  -- Call Re-Investment Index Krx: FLOAT128
  index, call_reinvestment_index_krx = koscom_mdcsrealtime_commodities_exture_v2_020.call_reinvestment_index_krx.dissect(buffer, index, packet, parent)

  -- Clean Price Index Weight: FLOAT128
  index, clean_price_index_weight = koscom_mdcsrealtime_commodities_exture_v2_020.clean_price_index_weight.dissect(buffer, index, packet, parent)

  -- Total Earnings Index Weight: FLOAT128
  index, total_earnings_index_weight = koscom_mdcsrealtime_commodities_exture_v2_020.total_earnings_index_weight.dissect(buffer, index, packet, parent)

  -- Market Price Index Weight: FLOAT128
  index, market_price_index_weight = koscom_mdcsrealtime_commodities_exture_v2_020.market_price_index_weight.dissect(buffer, index, packet, parent)

  -- Zero Re Investment Index Weight: FLOAT128
  index, zero_re_investment_index_weight = koscom_mdcsrealtime_commodities_exture_v2_020.zero_re_investment_index_weight.dissect(buffer, index, packet, parent)

  -- Call Re Investment Index Weight: FLOAT128
  index, call_re_investment_index_weight = koscom_mdcsrealtime_commodities_exture_v2_020.call_re_investment_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Clean Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_clean_index_value_for_integrity_index_weight = koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_clean_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Sum Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_sum_index_value_for_integrity_index_weight = koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_sum_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Zero Re Investment Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_zero_re_investment_index_value_for_integrity_index_weight = koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_zero_re_investment_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Call Re Investment Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_call_re_investment_index_value_for_integrity_index_weight = koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_call_re_investment_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Average Duration: FLOAT128
  index, average_duration = koscom_mdcsrealtime_commodities_exture_v2_020.average_duration.dissect(buffer, index, packet, parent)

  -- Average Convexity: FLOAT128
  index, average_convexity = koscom_mdcsrealtime_commodities_exture_v2_020.average_convexity.dissect(buffer, index, packet, parent)

  -- Average Yld: FLOAT128
  index, average_yld = koscom_mdcsrealtime_commodities_exture_v2_020.average_yld.dissect(buffer, index, packet, parent)

  -- Average Coupon Price: FLOAT128
  index, average_coupon_price = koscom_mdcsrealtime_commodities_exture_v2_020.average_coupon_price.dissect(buffer, index, packet, parent)

  -- Average Remaining Maturity Price: FLOAT128
  index, average_remaining_maturity_price = koscom_mdcsrealtime_commodities_exture_v2_020.average_remaining_maturity_price.dissect(buffer, index, packet, parent)

  -- Average Current Yield: FLOAT128
  index, average_current_yield = koscom_mdcsrealtime_commodities_exture_v2_020.average_current_yield.dissect(buffer, index, packet, parent)

  -- Average Spread Sign: String
  index, average_spread_sign = koscom_mdcsrealtime_commodities_exture_v2_020.average_spread_sign.dissect(buffer, index, packet, parent)

  -- Average Spread: FLOAT128
  index, average_spread = koscom_mdcsrealtime_commodities_exture_v2_020.average_spread.dissect(buffer, index, packet, parent)

  -- Index Number Of Securities: Int
  index, index_number_of_securities = koscom_mdcsrealtime_commodities_exture_v2_020.index_number_of_securities.dissect(buffer, index, packet, parent)

  -- Issued Amount: Long
  index, issued_amount = koscom_mdcsrealtime_commodities_exture_v2_020.issued_amount.dissect(buffer, index, packet, parent)

  -- Issued Amount Weight: FLOAT128
  index, issued_amount_weight = koscom_mdcsrealtime_commodities_exture_v2_020.issued_amount_weight.dissect(buffer, index, packet, parent)

  -- Index Market Capitalization: Long
  index, index_market_capitalization = koscom_mdcsrealtime_commodities_exture_v2_020.index_market_capitalization.dissect(buffer, index, packet, parent)

  -- Market Capitalization Weight: FLOAT128
  index, market_capitalization_weight = koscom_mdcsrealtime_commodities_exture_v2_020.market_capitalization_weight.dissect(buffer, index, packet, parent)

  -- Accumulated Cash: FLOAT128
  index, accumulated_cash = koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_cash.dissect(buffer, index, packet, parent)

  -- Cash Inflow: FLOAT128
  index, cash_inflow = koscom_mdcsrealtime_commodities_exture_v2_020.cash_inflow.dissect(buffer, index, packet, parent)

  -- Reinvest Call Cash: FLOAT128
  index, reinvest_call_cash = koscom_mdcsrealtime_commodities_exture_v2_020.reinvest_call_cash.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Index Krx Message
koscom_mdcsrealtime_commodities_exture_v2_020.bond_index_krx_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bond_index_krx_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_020.bond_index_krx_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_020.bond_index_krx_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_020.bond_index_krx_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_commodities_exture_v2_020.bond_ktb_index_term_structure_message = {}

-- Size: Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_commodities_exture_v2_020.bond_ktb_index_term_structure_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_020.bond_index_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.base_date.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.base_time.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.basis_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.clean_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.average_ytm.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.index_constituent.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.size

-- Display: Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_commodities_exture_v2_020.bond_ktb_index_term_structure_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_commodities_exture_v2_020.bond_ktb_index_term_structure_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bond Index Id: String
  index, bond_index_id = koscom_mdcsrealtime_commodities_exture_v2_020.bond_index_id.dissect(buffer, index, packet, parent)

  -- Base Date: String
  index, base_date = koscom_mdcsrealtime_commodities_exture_v2_020.base_date.dissect(buffer, index, packet, parent)

  -- Base Time: String
  index, base_time = koscom_mdcsrealtime_commodities_exture_v2_020.base_time.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- Basis Price: Double
  index, basis_price = koscom_mdcsrealtime_commodities_exture_v2_020.basis_price.dissect(buffer, index, packet, parent)

  -- Clean Price: Double
  index, clean_price = koscom_mdcsrealtime_commodities_exture_v2_020.clean_price.dissect(buffer, index, packet, parent)

  -- Average Ytm: Double
  index, average_ytm = koscom_mdcsrealtime_commodities_exture_v2_020.average_ytm.dissect(buffer, index, packet, parent)

  -- Index Constituent: String
  index, index_constituent = koscom_mdcsrealtime_commodities_exture_v2_020.index_constituent.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Ktb Index Term Structure Message
koscom_mdcsrealtime_commodities_exture_v2_020.bond_ktb_index_term_structure_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bond_ktb_index_term_structure_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_020.bond_ktb_index_term_structure_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_020.bond_ktb_index_term_structure_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_020.bond_ktb_index_term_structure_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Ktb Index Message
koscom_mdcsrealtime_commodities_exture_v2_020.bond_ktb_index_message = {}

-- Size: Bond Ktb Index Message
koscom_mdcsrealtime_commodities_exture_v2_020.bond_ktb_index_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_020.bond_index_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.base_date.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.base_time.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.total_profit_index.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.clean_price_index_ktb.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.market_price_index_ktb.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.call_reinvestment_index_ktb.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.zero_reinvestment_index_ktb.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.futures_basis_price.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.duration.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.convexity.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.average_ytm.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.average_forward_ytm.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.size

-- Display: Bond Ktb Index Message
koscom_mdcsrealtime_commodities_exture_v2_020.bond_ktb_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Ktb Index Message
koscom_mdcsrealtime_commodities_exture_v2_020.bond_ktb_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bond Index Id: String
  index, bond_index_id = koscom_mdcsrealtime_commodities_exture_v2_020.bond_index_id.dissect(buffer, index, packet, parent)

  -- Base Date: String
  index, base_date = koscom_mdcsrealtime_commodities_exture_v2_020.base_date.dissect(buffer, index, packet, parent)

  -- Base Time: String
  index, base_time = koscom_mdcsrealtime_commodities_exture_v2_020.base_time.dissect(buffer, index, packet, parent)

  -- Total Profit Index: Double
  index, total_profit_index = koscom_mdcsrealtime_commodities_exture_v2_020.total_profit_index.dissect(buffer, index, packet, parent)

  -- Clean Price Index Ktb: Double
  index, clean_price_index_ktb = koscom_mdcsrealtime_commodities_exture_v2_020.clean_price_index_ktb.dissect(buffer, index, packet, parent)

  -- Market Price Index Ktb: Double
  index, market_price_index_ktb = koscom_mdcsrealtime_commodities_exture_v2_020.market_price_index_ktb.dissect(buffer, index, packet, parent)

  -- Call Re-Investment Index Ktb: Double
  index, call_reinvestment_index_ktb = koscom_mdcsrealtime_commodities_exture_v2_020.call_reinvestment_index_ktb.dissect(buffer, index, packet, parent)

  -- Zero Re-Investment Index Ktb: Double
  index, zero_reinvestment_index_ktb = koscom_mdcsrealtime_commodities_exture_v2_020.zero_reinvestment_index_ktb.dissect(buffer, index, packet, parent)

  -- Futures Basis Price: Double
  index, futures_basis_price = koscom_mdcsrealtime_commodities_exture_v2_020.futures_basis_price.dissect(buffer, index, packet, parent)

  -- Duration: Double
  index, duration = koscom_mdcsrealtime_commodities_exture_v2_020.duration.dissect(buffer, index, packet, parent)

  -- Convexity: Double
  index, convexity = koscom_mdcsrealtime_commodities_exture_v2_020.convexity.dissect(buffer, index, packet, parent)

  -- Average Ytm: Double
  index, average_ytm = koscom_mdcsrealtime_commodities_exture_v2_020.average_ytm.dissect(buffer, index, packet, parent)

  -- Average Forward Ytm: Double
  index, average_forward_ytm = koscom_mdcsrealtime_commodities_exture_v2_020.average_forward_ytm.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Ktb Index Message
koscom_mdcsrealtime_commodities_exture_v2_020.bond_ktb_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bond_ktb_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_020.bond_ktb_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_020.bond_ktb_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_020.bond_ktb_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Prime Index Message
koscom_mdcsrealtime_commodities_exture_v2_020.bond_prime_index_message = {}

-- Size: Bond Prime Index Message
koscom_mdcsrealtime_commodities_exture_v2_020.bond_prime_index_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_020.calculating_date.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.calculating_time.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.group_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.maturity_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.clean_price_index_krx.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.total_earnings_index.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.clean_price_index_weight.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.total_earnings_index_weight.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_clean_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_sum_index_value_for_integrity_index_weight.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.average_duration.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.average_convexity.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.average_yld.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.transmission_time.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.size

-- Display: Bond Prime Index Message
koscom_mdcsrealtime_commodities_exture_v2_020.bond_prime_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Prime Index Message
koscom_mdcsrealtime_commodities_exture_v2_020.bond_prime_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Calculating Date: String
  index, calculating_date = koscom_mdcsrealtime_commodities_exture_v2_020.calculating_date.dissect(buffer, index, packet, parent)

  -- Calculating Time: String
  index, calculating_time = koscom_mdcsrealtime_commodities_exture_v2_020.calculating_time.dissect(buffer, index, packet, parent)

  -- Group Code: String
  index, group_code = koscom_mdcsrealtime_commodities_exture_v2_020.group_code.dissect(buffer, index, packet, parent)

  -- Maturity Code: String
  index, maturity_code = koscom_mdcsrealtime_commodities_exture_v2_020.maturity_code.dissect(buffer, index, packet, parent)

  -- Clean Price Index Krx: FLOAT128
  index, clean_price_index_krx = koscom_mdcsrealtime_commodities_exture_v2_020.clean_price_index_krx.dissect(buffer, index, packet, parent)

  -- Total Earnings Index: FLOAT128
  index, total_earnings_index = koscom_mdcsrealtime_commodities_exture_v2_020.total_earnings_index.dissect(buffer, index, packet, parent)

  -- Clean Price Index Weight: FLOAT128
  index, clean_price_index_weight = koscom_mdcsrealtime_commodities_exture_v2_020.clean_price_index_weight.dissect(buffer, index, packet, parent)

  -- Total Earnings Index Weight: FLOAT128
  index, total_earnings_index_weight = koscom_mdcsrealtime_commodities_exture_v2_020.total_earnings_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Clean Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_clean_index_value_for_integrity_index_weight = koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_clean_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Weight Of Sum Index Value For Integrity Index Weight: FLOAT128
  index, weight_of_sum_index_value_for_integrity_index_weight = koscom_mdcsrealtime_commodities_exture_v2_020.weight_of_sum_index_value_for_integrity_index_weight.dissect(buffer, index, packet, parent)

  -- Average Duration: FLOAT128
  index, average_duration = koscom_mdcsrealtime_commodities_exture_v2_020.average_duration.dissect(buffer, index, packet, parent)

  -- Average Convexity: FLOAT128
  index, average_convexity = koscom_mdcsrealtime_commodities_exture_v2_020.average_convexity.dissect(buffer, index, packet, parent)

  -- Average Yld: FLOAT128
  index, average_yld = koscom_mdcsrealtime_commodities_exture_v2_020.average_yld.dissect(buffer, index, packet, parent)

  -- Transmission Time: String
  index, transmission_time = koscom_mdcsrealtime_commodities_exture_v2_020.transmission_time.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Prime Index Message
koscom_mdcsrealtime_commodities_exture_v2_020.bond_prime_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.bond_prime_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_020.bond_prime_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_020.bond_prime_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_020.bond_prime_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Global Index Message
koscom_mdcsrealtime_commodities_exture_v2_020.global_index_message = {}

-- Size: Global Index Message
koscom_mdcsrealtime_commodities_exture_v2_020.global_index_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_020.index_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.business_date.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.calculation_time.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.index.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.index_change_sign_against_the_previous_day.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.index_change_against_the_previous_day.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.currency_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.filler_4.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.size

-- Display: Global Index Message
koscom_mdcsrealtime_commodities_exture_v2_020.global_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Global Index Message
koscom_mdcsrealtime_commodities_exture_v2_020.global_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_commodities_exture_v2_020.index_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- Business Date: String
  index, business_date = koscom_mdcsrealtime_commodities_exture_v2_020.business_date.dissect(buffer, index, packet, parent)

  -- Calculation Time: String
  index, calculation_time = koscom_mdcsrealtime_commodities_exture_v2_020.calculation_time.dissect(buffer, index, packet, parent)

  -- Index: Double
  index, index = koscom_mdcsrealtime_commodities_exture_v2_020.index.dissect(buffer, index, packet, parent)

  -- Index Change Sign Against The Previous Day: String
  index, index_change_sign_against_the_previous_day = koscom_mdcsrealtime_commodities_exture_v2_020.index_change_sign_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Index Change Against The Previous Day: Double
  index, index_change_against_the_previous_day = koscom_mdcsrealtime_commodities_exture_v2_020.index_change_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Currency Code: String
  index, currency_code = koscom_mdcsrealtime_commodities_exture_v2_020.currency_code.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = koscom_mdcsrealtime_commodities_exture_v2_020.filler_4.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Global Index Message
koscom_mdcsrealtime_commodities_exture_v2_020.global_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.global_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_020.global_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_020.global_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_020.global_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Krx Estimated Index Message
koscom_mdcsrealtime_commodities_exture_v2_020.krx_estimated_index_message = {}

-- Size: Krx Estimated Index Message
koscom_mdcsrealtime_commodities_exture_v2_020.krx_estimated_index_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_020.index_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.calculation_time.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.index.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.index_change_sign_against_the_previous_day.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.index_change_against_the_previous_day.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_value.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.filler_4.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.size

-- Display: Krx Estimated Index Message
koscom_mdcsrealtime_commodities_exture_v2_020.krx_estimated_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Krx Estimated Index Message
koscom_mdcsrealtime_commodities_exture_v2_020.krx_estimated_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_commodities_exture_v2_020.index_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- Calculation Time: String
  index, calculation_time = koscom_mdcsrealtime_commodities_exture_v2_020.calculation_time.dissect(buffer, index, packet, parent)

  -- Index: Double
  index, index = koscom_mdcsrealtime_commodities_exture_v2_020.index.dissect(buffer, index, packet, parent)

  -- Index Change Sign Against The Previous Day: String
  index, index_change_sign_against_the_previous_day = koscom_mdcsrealtime_commodities_exture_v2_020.index_change_sign_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Index Change Against The Previous Day: Double
  index, index_change_against_the_previous_day = koscom_mdcsrealtime_commodities_exture_v2_020.index_change_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = koscom_mdcsrealtime_commodities_exture_v2_020.filler_4.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Krx Estimated Index Message
koscom_mdcsrealtime_commodities_exture_v2_020.krx_estimated_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.krx_estimated_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_020.krx_estimated_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_020.krx_estimated_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_020.krx_estimated_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Krx Index Message
koscom_mdcsrealtime_commodities_exture_v2_020.krx_index_message = {}

-- Size: Krx Index Message
koscom_mdcsrealtime_commodities_exture_v2_020.krx_index_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_020.index_id.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.calculation_time.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.index.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.index_change_sign_against_the_previous_day.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.index_change_against_the_previous_day.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_value.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.filler_4.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.size

-- Display: Krx Index Message
koscom_mdcsrealtime_commodities_exture_v2_020.krx_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Krx Index Message
koscom_mdcsrealtime_commodities_exture_v2_020.krx_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Id: String
  index, index_id = koscom_mdcsrealtime_commodities_exture_v2_020.index_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_commodities_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- Calculation Time: String
  index, calculation_time = koscom_mdcsrealtime_commodities_exture_v2_020.calculation_time.dissect(buffer, index, packet, parent)

  -- Index: Double
  index, index = koscom_mdcsrealtime_commodities_exture_v2_020.index.dissect(buffer, index, packet, parent)

  -- Index Change Sign Against The Previous Day: String
  index, index_change_sign_against_the_previous_day = koscom_mdcsrealtime_commodities_exture_v2_020.index_change_sign_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Index Change Against The Previous Day: Double
  index, index_change_against_the_previous_day = koscom_mdcsrealtime_commodities_exture_v2_020.index_change_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_commodities_exture_v2_020.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = koscom_mdcsrealtime_commodities_exture_v2_020.filler_4.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Krx Index Message
koscom_mdcsrealtime_commodities_exture_v2_020.krx_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.krx_index_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_020.krx_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_020.krx_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_020.krx_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Polling Data Message
koscom_mdcsrealtime_commodities_exture_v2_020.polling_data_message = {}

-- Size: Polling Data Message
koscom_mdcsrealtime_commodities_exture_v2_020.polling_data_message.size =
  koscom_mdcsrealtime_commodities_exture_v2_020.current_time.size + 
  koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.size

-- Display: Polling Data Message
koscom_mdcsrealtime_commodities_exture_v2_020.polling_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Polling Data Message
koscom_mdcsrealtime_commodities_exture_v2_020.polling_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Time: String
  index, current_time = koscom_mdcsrealtime_commodities_exture_v2_020.current_time.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_commodities_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Polling Data Message
koscom_mdcsrealtime_commodities_exture_v2_020.polling_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020.fields.polling_data_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_commodities_exture_v2_020.polling_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_commodities_exture_v2_020.polling_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_commodities_exture_v2_020.polling_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
koscom_mdcsrealtime_commodities_exture_v2_020.payload = {}

-- Dispatch: Payload
koscom_mdcsrealtime_commodities_exture_v2_020.payload.dispatch = {
  ["I2000"] = koscom_mdcsrealtime_commodities_exture_v2_020.polling_data_message.dissect,
  ["IA000"] = koscom_mdcsrealtime_commodities_exture_v2_020.krx_index_message.dissect,
  ["IB000"] = koscom_mdcsrealtime_commodities_exture_v2_020.krx_estimated_index_message.dissect,
  ["J2000"] = koscom_mdcsrealtime_commodities_exture_v2_020.global_index_message.dissect,
  ["J4000"] = koscom_mdcsrealtime_commodities_exture_v2_020.bond_prime_index_message.dissect,
  ["K1000"] = koscom_mdcsrealtime_commodities_exture_v2_020.bond_ktb_index_message.dissect,
  ["K8000"] = koscom_mdcsrealtime_commodities_exture_v2_020.bond_ktb_index_term_structure_message.dissect,
  ["IG000"] = koscom_mdcsrealtime_commodities_exture_v2_020.bond_index_krx_message.dissect,
  ["B601G"] = koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_quote_message.dissect,
  ["A301G"] = koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_order_filled_message.dissect,
  ["G701G"] = koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_order_filled_plus_quote_message.dissect,
  ["R101G"] = koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_market_operation_ts_plus_quote_message.dissect,
  ["B201G"] = koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_snapshot_message.dissect,
  ["C401G"] = koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_negotiated_trade_message.dissect,
  ["B601E"] = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_quote_message.dissect,
  ["A301E"] = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_order_filled_message.dissect,
  ["G701E"] = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_order_filled_plus_quote_message.dissect,
  ["R101E"] = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_market_operation_ts_plus_quote_message.dissect,
  ["B201E"] = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_snapshot_message.dissect,
  ["C401E"] = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_negotiated_trade_message.dissect,
  ["A401E"] = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_determination_of_base_price_message.dissect,
  ["AC01E"] = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_auction_results_message.dissect,
  ["A001G"] = koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_batch_data_message.dissect,
  ["A001E"] = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_batch_data_message.dissect,
  ["M200G"] = koscom_mdcsrealtime_commodities_exture_v2_020.external_gold_spot_closing_price_message.dissect,
  ["A701G"] = koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_market_operation_ts_message.dissect,
  ["A601G"] = koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_issue_closing_message.dissect,
  ["M401G"] = koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_market_operation_schedule_message.dissect,
  ["A701E"] = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_market_operation_ts_message.dissect,
  ["A601E"] = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_issue_closing_message.dissect,
  ["M401E"] = koscom_mdcsrealtime_commodities_exture_v2_020.emissions_market_operation_schedule_message.dissect,
  ["A501X"] = koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_random_end_message.dissect,
  ["A501G"] = koscom_mdcsrealtime_commodities_exture_v2_020.spot_gold_random_end_message.dissect,
}

-- Dissect: Payload
koscom_mdcsrealtime_commodities_exture_v2_020.payload.dissect = function(buffer, offset, packet, parent, tr_code)
  local dissect = koscom_mdcsrealtime_commodities_exture_v2_020.payload.dispatch[tr_code]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Packet
koscom_mdcsrealtime_commodities_exture_v2_020.packet = {}

-- Verify required size of Udp packet
koscom_mdcsrealtime_commodities_exture_v2_020.packet.requiredsize = function(buffer)
  return buffer:len() >= koscom_mdcsrealtime_commodities_exture_v2_020.tr_code.size
end

-- Dissect Packet
koscom_mdcsrealtime_commodities_exture_v2_020.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Tr Code: String
    index, tr_code = koscom_mdcsrealtime_commodities_exture_v2_020.tr_code.dissect(buffer, index, packet, parent)

    -- Payload: Runtime Type with 32 branches
    index = koscom_mdcsrealtime_commodities_exture_v2_020.payload.dissect(buffer, index, packet, parent, tr_code)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_koscom_mdcsrealtime_commodities_exture_v2_020.init()
end

-- Dissector for Koscom MdcsRealtime Commodities Exture 2.020
function omi_koscom_mdcsrealtime_commodities_exture_v2_020.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_koscom_mdcsrealtime_commodities_exture_v2_020.name

  -- Dissect protocol
  local protocol = parent:add(omi_koscom_mdcsrealtime_commodities_exture_v2_020, buffer(), omi_koscom_mdcsrealtime_commodities_exture_v2_020.description, "("..buffer:len().." Bytes)")
  return koscom_mdcsrealtime_commodities_exture_v2_020.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
koscom_mdcsrealtime_commodities_exture_v2_020.packet.fingerprint = function(buffer)
  if buffer:len() < 5 then
    return false
  end

  local tr_code = buffer(0, 5):string(koscom_mdcsrealtime_commodities_exture_v2_020.text_encoding)

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

  -- Spot Gold Quote Message
  if tr_code == "B601G" then
    return true
  end

  -- Spot Gold Order Filled Message
  if tr_code == "A301G" then
    return true
  end

  -- Spot Gold Order Filled Plus Quote Message
  if tr_code == "G701G" then
    return true
  end

  -- Spot Gold Market Operation Ts Plus Quote Message
  if tr_code == "R101G" then
    return true
  end

  -- Spot Gold Snapshot Message
  if tr_code == "B201G" then
    return true
  end

  -- Spot Gold Negotiated Trade Message
  if tr_code == "C401G" then
    return true
  end

  -- Emissions Quote Message
  if tr_code == "B601E" then
    return true
  end

  -- Emissions Order Filled Message
  if tr_code == "A301E" then
    return true
  end

  -- Emissions Order Filled Plus Quote Message
  if tr_code == "G701E" then
    return true
  end

  -- Emissions Market Operation Ts Plus Quote Message
  if tr_code == "R101E" then
    return true
  end

  -- Emissions Snapshot Message
  if tr_code == "B201E" then
    return true
  end

  -- Emissions Negotiated Trade Message
  if tr_code == "C401E" then
    return true
  end

  -- Emissions Determination Of Base Price Message
  if tr_code == "A401E" then
    return true
  end

  -- Emissions Auction Results Message
  if tr_code == "AC01E" then
    return true
  end

  -- Spot Gold Batch Data Message
  if tr_code == "A001G" then
    return true
  end

  -- Emissions Batch Data Message
  if tr_code == "A001E" then
    return true
  end

  -- External Gold Spot Closing Price Message
  if tr_code == "M200G" then
    return true
  end

  -- Spot Gold Market Operation Ts Message
  if tr_code == "A701G" then
    return true
  end

  -- Spot Gold Issue Closing Message
  if tr_code == "A601G" then
    return true
  end

  -- Spot Gold Market Operation Schedule Message
  if tr_code == "M401G" then
    return true
  end

  -- Emissions Market Operation Ts Message
  if tr_code == "A701E" then
    return true
  end

  -- Emissions Issue Closing Message
  if tr_code == "A601E" then
    return true
  end

  -- Emissions Market Operation Schedule Message
  if tr_code == "M401E" then
    return true
  end

  -- Spot Gold Random End Message
  if tr_code == "A501X" then
    return true
  end

  -- Spot Gold Random End Message
  if tr_code == "A501G" then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Koscom MdcsRealtime Commodities Exture 2.020 (Udp)
local function omi_koscom_mdcsrealtime_commodities_exture_v2_020_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not koscom_mdcsrealtime_commodities_exture_v2_020.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not koscom_mdcsrealtime_commodities_exture_v2_020.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_koscom_mdcsrealtime_commodities_exture_v2_020
  omi_koscom_mdcsrealtime_commodities_exture_v2_020.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Koscom MdcsRealtime Commodities Exture 2.020
omi_koscom_mdcsrealtime_commodities_exture_v2_020:register_heuristic("udp", omi_koscom_mdcsrealtime_commodities_exture_v2_020_udp_heuristic)

-- Register Koscom MdcsRealtime Commodities Exture 2.020 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_koscom_mdcsrealtime_commodities_exture_v2_020)

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
