-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Koscom MdcsRealtime NightDerivatives Exture 2.020 Protocol
local omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020 = Proto("Omi.Koscom.MdcsRealtime.NightDerivatives.Exture.v2.020", "Koscom MdcsRealtime NightDerivatives Exture 2.020")

-- Protocol table
local koscom_mdcsrealtime_nightderivatives_exture_v2_020 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Koscom MdcsRealtime NightDerivatives Exture 2.020 Fields
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.a_designated_number_for_an_issue = ProtoField.new("A Designated Number For An Issue", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.adesignatednumberforanissue", ftypes.UINT24, nil, nil, nil, "A designated number for each issue on a daily basis - Market(Information Product) : KOSPI(Securities A, Securities C), KOSDAQ(Securities B), KONEX(Securities B), Derivatives(DRV A), Spot Gold(Commodit.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.abbreviated_issue_code = ProtoField.new("Abbreviated Issue Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.abbreviatedissuecode", ftypes.STRING, nil, nil, nil, "Abbreviated Issue Code.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.abbreviated_issue_name = ProtoField.new("Abbreviated Issue Name", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.abbreviatedissuename", ftypes.STRING, nil, nil, nil, "Abbreviated issue Name.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.abbreviated_issue_name_in_en = ProtoField.new("Abbreviated Issue Name In En", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.abbreviatedissuenameinen", ftypes.STRING, nil, nil, nil, "Abbreviated issue Name in EN.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.accumulated_trading_value = ProtoField.new("Accumulated Trading Value", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.accumulatedtradingvalue", ftypes.DOUBLE, nil, nil, nil, "Accumulated trading value Trading value=trading amount*trading price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.accumulated_trading_volume = ProtoField.new("Accumulated Trading Volume", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.accumulatedtradingvolume", ftypes.UINT64, nil, nil, nil, "Accumulated Trading Volume.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.adjusted_base_price = ProtoField.new("Adjusted Base Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.adjustedbaseprice", ftypes.DOUBLE, nil, nil, nil, "Adjusted Base Price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.adjustment_coefficient_of_open_intetest_volumes_that_have_been_adjusted = ProtoField.new("Adjustment Coefficient Of Open Intetest Volumes That Have Been Adjusted", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.adjustmentcoefficientofopenintetestvolumesthathavebeenadjusted", ftypes.UINT24, nil, nil, nil, "Adjustment Coefficient of Open Intetest Volumes that have been adjusted.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.adjustment_reason_code = ProtoField.new("Adjustment Reason Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.adjustmentreasoncode", ftypes.STRING, nil, nil, nil, "10: Paid-in capital increase (given to the existing shareholders) 11: Paid-in capital increase (given to the third party) 12: Paid-in capital increase (by public offering) 13: Paid-in capital increase.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.allocation_type_code = ProtoField.new("Allocation Type Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.allocationtypecode", ftypes.STRING, nil, nil, nil, "1: Bid_Upper Limit 2: Bid_Lower Limit 3: Ask_Upper Limit 4: Ask_Lower Limit.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.application_date = ProtoField.new("Application Date", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.applicationdate", ftypes.STRING, nil, nil, nil, "Application Date.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_1_order_counts = ProtoField.new("Ask Level 1 Order Counts", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.asklevel1ordercounts", ftypes.UINT24, nil, nil, nil, "Ask Level 1_Order Counts.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_1_price = ProtoField.new("Ask Level 1 Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.asklevel1price", ftypes.DOUBLE, nil, nil, nil, "The best ask.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_1_volume = ProtoField.new("Ask Level 1 Volume", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.asklevel1volume", ftypes.UINT32, nil, nil, nil, "The best ask volume.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_10_order_counts = ProtoField.new("Ask Level 10 Order Counts", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.asklevel10ordercounts", ftypes.UINT24, nil, nil, nil, "Ask Level 10_Order Counts.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_10_price = ProtoField.new("Ask Level 10 Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.asklevel10price", ftypes.DOUBLE, nil, nil, nil, "The tenth highest ask price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_10_volume = ProtoField.new("Ask Level 10 Volume", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.asklevel10volume", ftypes.UINT32, nil, nil, nil, "The tenth highest ask volume.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_2_order_counts = ProtoField.new("Ask Level 2 Order Counts", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.asklevel2ordercounts", ftypes.UINT24, nil, nil, nil, "Ask Level 2_Order Counts.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_2_price = ProtoField.new("Ask Level 2 Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.asklevel2price", ftypes.DOUBLE, nil, nil, nil, "The second highest ask price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_2_volume = ProtoField.new("Ask Level 2 Volume", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.asklevel2volume", ftypes.UINT32, nil, nil, nil, "The second highest ask volume.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_3_order_counts = ProtoField.new("Ask Level 3 Order Counts", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.asklevel3ordercounts", ftypes.UINT24, nil, nil, nil, "Ask Level 3_Order Counts.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_3_price = ProtoField.new("Ask Level 3 Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.asklevel3price", ftypes.DOUBLE, nil, nil, nil, "The third highest ask price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_3_volume = ProtoField.new("Ask Level 3 Volume", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.asklevel3volume", ftypes.UINT32, nil, nil, nil, "The third highest ask volume.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_4_order_counts = ProtoField.new("Ask Level 4 Order Counts", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.asklevel4ordercounts", ftypes.UINT24, nil, nil, nil, "Ask Level 4_Order Counts.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_4_price = ProtoField.new("Ask Level 4 Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.asklevel4price", ftypes.DOUBLE, nil, nil, nil, "The fourth highest ask price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_4_volume = ProtoField.new("Ask Level 4 Volume", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.asklevel4volume", ftypes.UINT32, nil, nil, nil, "The fourth highest ask volume.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_5_order_counts = ProtoField.new("Ask Level 5 Order Counts", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.asklevel5ordercounts", ftypes.UINT24, nil, nil, nil, "Ask Level 5_Order Counts.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_5_price = ProtoField.new("Ask Level 5 Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.asklevel5price", ftypes.DOUBLE, nil, nil, nil, "The fifth highest ask price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_5_volume = ProtoField.new("Ask Level 5 Volume", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.asklevel5volume", ftypes.UINT32, nil, nil, nil, "The fifth highest ask volume.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_6_order_counts = ProtoField.new("Ask Level 6 Order Counts", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.asklevel6ordercounts", ftypes.UINT24, nil, nil, nil, "Ask Level 6_Order Counts.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_6_price = ProtoField.new("Ask Level 6 Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.asklevel6price", ftypes.DOUBLE, nil, nil, nil, "The sixth highest ask price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_6_volume = ProtoField.new("Ask Level 6 Volume", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.asklevel6volume", ftypes.UINT32, nil, nil, nil, "The sixth highest ask volume.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_7_order_counts = ProtoField.new("Ask Level 7 Order Counts", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.asklevel7ordercounts", ftypes.UINT24, nil, nil, nil, "Ask Level 7_Order Counts.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_7_price = ProtoField.new("Ask Level 7 Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.asklevel7price", ftypes.DOUBLE, nil, nil, nil, "The seventh highest ask price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_7_volume = ProtoField.new("Ask Level 7 Volume", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.asklevel7volume", ftypes.UINT32, nil, nil, nil, "The seventh highest ask volume.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_8_order_counts = ProtoField.new("Ask Level 8 Order Counts", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.asklevel8ordercounts", ftypes.UINT24, nil, nil, nil, "Ask Level 8_Order Counts.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_8_price = ProtoField.new("Ask Level 8 Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.asklevel8price", ftypes.DOUBLE, nil, nil, nil, "The eighth highest ask price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_8_volume = ProtoField.new("Ask Level 8 Volume", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.asklevel8volume", ftypes.UINT32, nil, nil, nil, "The eighth highest ask volume.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_9_order_counts = ProtoField.new("Ask Level 9 Order Counts", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.asklevel9ordercounts", ftypes.UINT24, nil, nil, nil, "Ask Level 9_Order Counts.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_9_price = ProtoField.new("Ask Level 9 Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.asklevel9price", ftypes.DOUBLE, nil, nil, nil, "The ninth highest ask price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_9_volume = ProtoField.new("Ask Level 9 Volume", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.asklevel9volume", ftypes.UINT32, nil, nil, nil, "The ninth highest ask volume.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_price_valid_counts = ProtoField.new("Ask Price Valid Counts", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.askpricevalidcounts", ftypes.UINT24, nil, nil, nil, "Ask Price_ Valid Counts.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_total_volume = ProtoField.new("Ask Total Volume", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.asktotalvolume", ftypes.UINT32, nil, nil, nil, "Ask Total Volume.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_trading_value = ProtoField.new("Ask Trading Value", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.asktradingvalue", ftypes.DOUBLE, nil, nil, nil, "Ask Trading Value(Trading price*trading volume).")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_trading_volume = ProtoField.new("Ask Trading Volume", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.asktradingvolume", ftypes.UINT64, nil, nil, nil, "Ask Trading Volume.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.atm = ProtoField.new("Atm", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.atm", ftypes.DOUBLE, nil, nil, nil, "An exercise price almost the same as base price of underlying asset.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.atm_type_code = ProtoField.new("Atm Type Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.atmtypecode", ftypes.STRING, nil, nil, nil, "0: Futures 1: ATM 2: ITM 3: OTM.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.base_date = ProtoField.new("Base Date", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.basedate", ftypes.STRING, nil, nil, nil, "Risk Free Reference rate Base Date.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.base_price = ProtoField.new("Base Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.baseprice", ftypes.DOUBLE, nil, nil, nil, "A base price of a day. A base price to calculate a upper/lower price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.base_price_adjustment_type_code = ProtoField.new("Base Price Adjustment Type Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.basepriceadjustmenttypecode", ftypes.STRING, nil, nil, nil, "To distinguish whether the base price of underlying asset is adjusted by integral multiple(open interest) or non-integral multiple(trading multipler) N: Normal O: Open interest C: Trading multiplier.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.base_price_for_trading_type_code = ProtoField.new("Base Price For Trading Type Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.basepricefortradingtypecode", ftypes.STRING, nil, nil, nil, "0: N/A 1: Regular Price 2: Price change with no trade 3: theoretical price 4: closing price of underlying asset.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.base_price_of_clearing_margins = ProtoField.new("Base Price Of Clearing Margins", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.basepriceofclearingmargins", ftypes.DOUBLE, nil, nil, nil, "Base Price of Clearing Margins.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.base_price_of_clearing_margins_type_code = ProtoField.new("Base Price Of Clearing Margins Type Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.basepriceofclearingmarginstypecode", ftypes.STRING, nil, nil, nil, "10: No BPMM 11: Today's Closing Price (regular price) 12: Today's quote with no trade (a quote with no trade made after trade) 13: Previous day’s BPMM (no closing price after trade) 14: Today’s theore.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.base_price_type_code = ProtoField.new("Base Price Type Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.basepricetypecode", ftypes.STRING, nil, nil, nil, "A code for a base price of derivatives products decided based on the condition of adjustment, transaction, theoretical value. * Futures 11: Previous day's settlement price 12: Previous day's base pric.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.base_product_id = ProtoField.new("Base Product Id", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.baseproductid", ftypes.STRING, nil, nil, nil, "Base Product ID.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.base_theoretical_price = ProtoField.new("Base Theoretical Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.basetheoreticalprice", ftypes.DOUBLE, nil, nil, nil, "Base Theoretical Price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.best_favorable_order_permission_type_code = ProtoField.new("Best Favorable Order Permission Type Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bestfavorableorderpermissiontypecode", ftypes.UINT24, nil, nil, nil, "Bitwise opration 1: FAS (Fill And Stay) 2: FOK (Fill Or Kill) 4: FAK (Fill And Kill) 8: GTS (Good for the Session) 16: GTC (Good Till Cancel) 32: GTD (Good Till Date).")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_1_order_counts = ProtoField.new("Bid Level 1 Order Counts", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bidlevel1ordercounts", ftypes.UINT24, nil, nil, nil, "Bid Level 1_Order Counts.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_1_price = ProtoField.new("Bid Level 1 Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bidlevel1price", ftypes.DOUBLE, nil, nil, nil, "The best bid.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_1_volume = ProtoField.new("Bid Level 1 Volume", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bidlevel1volume", ftypes.UINT32, nil, nil, nil, "The best bid volume.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_10_order_counts = ProtoField.new("Bid Level 10 Order Counts", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bidlevel10ordercounts", ftypes.UINT24, nil, nil, nil, "Bid Level 10_Order Counts.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_10_price = ProtoField.new("Bid Level 10 Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bidlevel10price", ftypes.DOUBLE, nil, nil, nil, "The tenth lowest bid price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_10_volume = ProtoField.new("Bid Level 10 Volume", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bidlevel10volume", ftypes.UINT32, nil, nil, nil, "The tenth lowest bid volume.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_2_order_counts = ProtoField.new("Bid Level 2 Order Counts", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bidlevel2ordercounts", ftypes.UINT24, nil, nil, nil, "Bid Level 2_Order Counts.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_2_price = ProtoField.new("Bid Level 2 Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bidlevel2price", ftypes.DOUBLE, nil, nil, nil, "The second lowest bid price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_2_volume = ProtoField.new("Bid Level 2 Volume", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bidlevel2volume", ftypes.UINT32, nil, nil, nil, "The second lowest bid volume.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_3_order_counts = ProtoField.new("Bid Level 3 Order Counts", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bidlevel3ordercounts", ftypes.UINT24, nil, nil, nil, "Bid Level 3_Order Counts.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_3_price = ProtoField.new("Bid Level 3 Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bidlevel3price", ftypes.DOUBLE, nil, nil, nil, "The third lowest bid price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_3_volume = ProtoField.new("Bid Level 3 Volume", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bidlevel3volume", ftypes.UINT32, nil, nil, nil, "The third lowest bid volume.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_4_order_counts = ProtoField.new("Bid Level 4 Order Counts", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bidlevel4ordercounts", ftypes.UINT24, nil, nil, nil, "Bid Level 4_Order Counts.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_4_price = ProtoField.new("Bid Level 4 Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bidlevel4price", ftypes.DOUBLE, nil, nil, nil, "The fourth lowest bid price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_4_volume = ProtoField.new("Bid Level 4 Volume", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bidlevel4volume", ftypes.UINT32, nil, nil, nil, "The fourth lowest bid volume.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_5_order_counts = ProtoField.new("Bid Level 5 Order Counts", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bidlevel5ordercounts", ftypes.UINT24, nil, nil, nil, "Bid Level 5_Order Counts.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_5_price = ProtoField.new("Bid Level 5 Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bidlevel5price", ftypes.DOUBLE, nil, nil, nil, "The fifth lowest bid price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_5_volume = ProtoField.new("Bid Level 5 Volume", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bidlevel5volume", ftypes.UINT32, nil, nil, nil, "The fifth lowest bid volume.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_6_order_counts = ProtoField.new("Bid Level 6 Order Counts", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bidlevel6ordercounts", ftypes.UINT24, nil, nil, nil, "Bid Level 6_Order Counts.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_6_price = ProtoField.new("Bid Level 6 Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bidlevel6price", ftypes.DOUBLE, nil, nil, nil, "The sixth lowest bid price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_6_volume = ProtoField.new("Bid Level 6 Volume", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bidlevel6volume", ftypes.UINT32, nil, nil, nil, "The sixth lowest bid volume.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_7_order_counts = ProtoField.new("Bid Level 7 Order Counts", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bidlevel7ordercounts", ftypes.UINT24, nil, nil, nil, "Bid Level 7_Order Counts.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_7_price = ProtoField.new("Bid Level 7 Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bidlevel7price", ftypes.DOUBLE, nil, nil, nil, "The seventh lowest bid price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_7_volume = ProtoField.new("Bid Level 7 Volume", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bidlevel7volume", ftypes.UINT32, nil, nil, nil, "The seventh lowest bid volume.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_8_order_counts = ProtoField.new("Bid Level 8 Order Counts", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bidlevel8ordercounts", ftypes.UINT24, nil, nil, nil, "Bid Level 8_Order Counts.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_8_price = ProtoField.new("Bid Level 8 Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bidlevel8price", ftypes.DOUBLE, nil, nil, nil, "The eighth lowest bid price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_8_volume = ProtoField.new("Bid Level 8 Volume", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bidlevel8volume", ftypes.UINT32, nil, nil, nil, "The eighth lowest bid volume.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_9_order_counts = ProtoField.new("Bid Level 9 Order Counts", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bidlevel9ordercounts", ftypes.UINT24, nil, nil, nil, "Bid Level 9_Order Counts.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_9_price = ProtoField.new("Bid Level 9 Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bidlevel9price", ftypes.DOUBLE, nil, nil, nil, "The ninth lowest bid price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_9_volume = ProtoField.new("Bid Level 9 Volume", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bidlevel9volume", ftypes.UINT32, nil, nil, nil, "The ninth lowest bid volume.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_price_valid_counts = ProtoField.new("Bid Price Valid Counts", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bidpricevalidcounts", ftypes.UINT24, nil, nil, nil, "Bid Price_ Valid Counts.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_total_volume = ProtoField.new("Bid Total Volume", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bidtotalvolume", ftypes.UINT32, nil, nil, nil, "Bid Total Volume.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_trading_value = ProtoField.new("Bid Trading Value", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bidtradingvalue", ftypes.DOUBLE, nil, nil, nil, "Bid Trading Value(trading price*trading volume).")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_trading_volume = ProtoField.new("Bid Trading Volume", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bidtradingvolume", ftypes.UINT64, nil, nil, nil, "Bid Trading Volume.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bis_announcement_date = ProtoField.new("Bis Announcement Date", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bisannouncementdate", ftypes.STRING, nil, nil, nil, "BIS_Announcement Date.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bis_announcement_time = ProtoField.new("Bis Announcement Time", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bisannouncementtime", ftypes.STRING, nil, nil, nil, "BIS_Announcement Time (HHMMSS).")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bis_time_of_inputting_yield_rate = ProtoField.new("Bis Time Of Inputting Yield Rate", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bistimeofinputtingyieldrate", ftypes.STRING, nil, nil, nil, "BIS_Time of Inputting Yield Rate (HHMM or HH\" \").")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bis_yield_ratio = ProtoField.new("Bis Yield Ratio", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.bisyieldratio", ftypes.DOUBLE, nil, nil, nil, "BIS_Yield Ratio.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.block_trading_type_code = ProtoField.new("Block Trading Type Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.blocktradingtypecode", ftypes.STRING, nil, nil, nil, "Y: Relevant to block trading (CLASS: 3year KTB Futures, USD Futures, Euro Futures and JPY Futures) N: No relevant to block trading.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.board_event_group_code = ProtoField.new("Board Event Group Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.boardeventgroupcode", ftypes.UINT24, nil, nil, nil, "Board Event Group Code (Bitwise operation) ▦▦ Code ▦▦ 1: A regular Issue (Not an issue on the last trading day) 2: An issue on the Last trading day 4: A regular issue (Not a discrete-time traded issue.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.board_event_id = ProtoField.new("Board Event Id", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.boardeventid", ftypes.STRING, nil, nil, nil, "An ID indicates an event that occurs on a Board in a designated time.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.board_event_processing_time = ProtoField.new("Board Event Processing Time", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.boardeventprocessingtime", ftypes.STRING, nil, nil, nil, "Board Event Processing Time.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.board_id = ProtoField.new("Board Id", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.boardid", ftypes.STRING, nil, nil, nil, "The Board ID refers to each Board in which an issue is traded under different trading schedules and rules. Individual issue can be traded on more than two Boards under each Board's schedule and with d.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.business_date = ProtoField.new("Business Date", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.businessdate", ftypes.STRING, nil, nil, nil, "Business Date.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.calculating_date = ProtoField.new("Calculating Date", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.calculatingdate", ftypes.STRING, nil, nil, nil, "Calculating Date.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.calculation_time_activities = ProtoField.new("Calculation Time Activities", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.calculationtimeactivities", ftypes.STRING, nil, nil, nil, "Calculation Time (HHMMSS).")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.calculation_time_sensitivity = ProtoField.new("Calculation Time Sensitivity", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.calculationtimesensitivity", ftypes.STRING, nil, nil, nil, "Calculation Time.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.call_averaged_implied_volatility = ProtoField.new("Call Averaged Implied Volatility", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.callaveragedimpliedvolatility", ftypes.DOUBLE, nil, nil, nil, "Call_Averaged Implied Volatility.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.closing_price = ProtoField.new("Closing Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.closingprice", ftypes.DOUBLE, nil, nil, nil, "Closing price on the day's regular session.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.closing_price_of_underlying_asset = ProtoField.new("Closing Price Of Underlying Asset", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.closingpriceofunderlyingasset", ftypes.DOUBLE, nil, nil, nil, "Closing Price of underlying Asset.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.closing_price_type_code = ProtoField.new("Closing Price Type Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.closingpricetypecode", ftypes.STRING, nil, nil, nil, "1: Closing price 2: Quotation 3: No Trades 4: Quotation of an Issue of which base price is settled with a today's single price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.conditioned_order_permission_type_code = ProtoField.new("Conditioned Order Permission Type Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.conditionedorderpermissiontypecode", ftypes.UINT24, nil, nil, nil, "Bitwise opration 1: FAS (Fill And Stay) 2: FOK (Fill Or Kill) 4: FAK (Fill And Kill) 8: GTS (Good for the Session) 16: GTC (Good Till Cancel) 32: GTD (Good Till Date).")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.conversion_factor = ProtoField.new("Conversion Factor", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.conversionfactor", ftypes.DOUBLE, nil, nil, nil, "Conversion Factor.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.current_time_1_minute_interval = ProtoField.new("Current Time 1 Minute Interval", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.currenttime1minuteinterval", ftypes.STRING, nil, nil, nil, "Current Time (1-minute interval).")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.date = ProtoField.new("Date", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.date", ftypes.STRING, nil, nil, nil, "A date of creation of data.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.delisting_date = ProtoField.new("Delisting Date", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.delistingdate", ftypes.STRING, nil, nil, nil, "Delisting date for Issues (Spot: the next of a last trading date, Derv: the last payment date).")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.denominator_coefficient_of_adjustment = ProtoField.new("Denominator Coefficient Of Adjustment", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.denominatorcoefficientofadjustment", ftypes.DOUBLE, nil, nil, nil, "Denominator Coefficient of Adjustment.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.designation_date_for_suspended_stocks = ProtoField.new("Designation Date For Suspended Stocks", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.designationdateforsuspendedstocks", ftypes.STRING, nil, nil, nil, "Designation Date for Suspended Stocks.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.direction_of_price_limit_expansion_type_code = ProtoField.new("Direction Of Price Limit Expansion Type Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.directionofpricelimitexpansiontypecode", ftypes.STRING, nil, nil, nil, "A direction of a price limit to expand, if it expands by several stages. X: N/A F: Forward B: Backward T: Two-way.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.disclosure_date = ProtoField.new("Disclosure Date", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.disclosuredate", ftypes.STRING, nil, nil, nil, "Disclosure date.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.disclosure_type = ProtoField.new("Disclosure Type", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.disclosuretype", ftypes.UINT8, nil, nil, nil, "1: Periodic disclosure 2 or more: Occasional disclosure.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.disparate_ratio = ProtoField.new("Disparate Ratio", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.disparateratio", ftypes.DOUBLE, nil, nil, nil, "Disparate Ratio.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.distant_month_contract_trading_price = ProtoField.new("Distant Month Contract Trading Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.distantmonthcontracttradingprice", ftypes.DOUBLE, nil, nil, nil, "A trading price of distant month (a component of a futures spread).")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.dividend_value_for_settlement_price = ProtoField.new("Dividend Value For Settlement Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.dividendvalueforsettlementprice", ftypes.DOUBLE, nil, nil, nil, "- the Future value of a settlement price (Futures) - the present value of a settlement price (Options).")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.dynamic_price_limit_type_code = ProtoField.new("Dynamic Price Limit Type Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.dynamicpricelimittypecode", ftypes.STRING, nil, nil, nil, "Dynamic Price Limit Type Code 0: Removal 1: Applying 2: Reapplying.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.efp_trading_item = ProtoField.new("Efp Trading Item", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.efptradingitem", ftypes.STRING, nil, nil, nil, "EFP Trading Item.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.efp_trading_value = ProtoField.new("Efp Trading Value", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.efptradingvalue", ftypes.DOUBLE, nil, nil, nil, "EFP Trading Value.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.efp_trading_volume = ProtoField.new("Efp Trading Volume", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.efptradingvolume", ftypes.UINT64, nil, nil, nil, "EFP Trading Volume.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.end_keyword = ProtoField.new("End Keyword", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.endkeyword", ftypes.UINT8, nil, nil, nil, "End of text sentinel (0xFF).")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.english_issue_name = ProtoField.new("English Issue Name", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.englishissuename", ftypes.STRING, nil, nil, nil, "English Issue Name.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.estimated_trading_price = ProtoField.new("Estimated Trading Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.estimatedtradingprice", ftypes.DOUBLE, nil, nil, nil, "An estimated trading price before the single price trade session.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.estimated_trading_volume = ProtoField.new("Estimated Trading Volume", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.estimatedtradingvolume", ftypes.UINT32, nil, nil, nil, "An estimated trading volume before the single price trade session.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.exercise_price = ProtoField.new("Exercise Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.exerciseprice", ftypes.DOUBLE, nil, nil, nil, "Exercise Price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.exercise_price_after_adjustment = ProtoField.new("Exercise Price After Adjustment", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.exercisepriceafteradjustment", ftypes.DOUBLE, nil, nil, nil, "Exercise Price after Adjustment.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.exercise_price_before_adjustment = ProtoField.new("Exercise Price Before Adjustment", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.exercisepricebeforeadjustment", ftypes.DOUBLE, nil, nil, nil, "Exercise Price before Adjustment.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.exercise_price_for_displaying_not_for_trading = ProtoField.new("Exercise Price For Displaying Not For Trading", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.exercisepricefordisplayingnotfortrading", ftypes.DOUBLE, nil, nil, nil, "Exercise Price for Displaying (not for trading).")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.expected_time_of_expanding_price_limit_range = ProtoField.new("Expected Time Of Expanding Price Limit Range", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.expectedtimeofexpandingpricelimitrange", ftypes.STRING, nil, nil, nil, "Expected Time of Expanding Price Limit Range.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.expiration_date = ProtoField.new("Expiration Date", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.expirationdate", ftypes.STRING, nil, nil, nil, "Expiration Date.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.final_ask_bid_type_code = ProtoField.new("Final Ask Bid Type Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.finalaskbidtypecode", ftypes.STRING, nil, nil, nil, "Ask/Bid Type Code space: order filled with single price 0: N/A 1: ASK 2: BID.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.final_stage_of_price_limit_expansion = ProtoField.new("Final Stage Of Price Limit Expansion", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.finalstageofpricelimitexpansion", ftypes.UINT16, nil, nil, nil, "Final stage of price limit expansion when a limit expands by several stages.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.flex_trading_item = ProtoField.new("Flex Trading Item", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.flextradingitem", ftypes.STRING, nil, nil, nil, "FLEX Trading Item.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.futures_circuit_breakers_lower_limit_price = ProtoField.new("Futures Circuit Breakers Lower Limit Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.futurescircuitbreakerslowerlimitprice", ftypes.DOUBLE, nil, nil, nil, "low limit pirce to exercise Futures CB (If the \"base price +/-5%\" is the condition to exercise CB, base price -5% is low limit price) ex) 9999999999.99.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.futures_circuit_breakers_upper_limit_price = ProtoField.new("Futures Circuit Breakers Upper Limit Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.futurescircuitbreakersupperlimitprice", ftypes.DOUBLE, nil, nil, nil, "high limit pirce to exercise Futures CB (If the \"base price +/-5%\" is the condition to exercise CB, base price +5% is high limit price) ex) 9999999999.99.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.futures_options_type_code = ProtoField.new("Futures Options Type Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.futuresoptionstypecode", ftypes.STRING, nil, nil, nil, "0: N/A C: Call Options F: Futures P: Put Options.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.gap_between_lower_limit_price_of_dynamic_price_and_trading_value = ProtoField.new("Gap Between Lower Limit Price Of Dynamic Price And Trading Value", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.gapbetweenlowerlimitpriceofdynamicpriceandtradingvalue", ftypes.DOUBLE, nil, nil, nil, "Lower Limit Price of Dynamic Price=Previous trading price + Gap between Lower Limit Price of Dynamic Price and Trading Value.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.gap_between_upper_limit_price_of_dynamic_price_and_trading_value = ProtoField.new("Gap Between Upper Limit Price Of Dynamic Price And Trading Value", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.gapbetweenupperlimitpriceofdynamicpriceandtradingvalue", ftypes.DOUBLE, nil, nil, nil, "Upper Limit Price of Dynamic Price=Previous trading price + Gap between Upper Limit Price of Dynamic Price and Trading Value.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.historical_volatility_90_days = ProtoField.new("Historical Volatility 90 Days", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.historicalvolatility90days", ftypes.DOUBLE, nil, nil, nil, "Historical Volatility (90 days).")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.implied_volatility = ProtoField.new("Implied Volatility", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.impliedvolatility", ftypes.DOUBLE, nil, nil, nil, "Implied Volatility.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.implied_volatility_type_code = ProtoField.new("Implied Volatility Type Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.impliedvolatilitytypecode", ftypes.STRING, nil, nil, nil, "1: Yesterday's final data 2: Today's temporary data 3: Today's final data.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.indexed_interest_rate = ProtoField.new("Indexed Interest Rate", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.indexedinterestrate", ftypes.STRING, nil, nil, nil, "Indexed interest rate 9999V99999999.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.interest_rate = ProtoField.new("Interest Rate", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.interestrate", ftypes.DOUBLE, nil, nil, nil, "-Equity Derivatives: a term structure of interest rate -FICC and products without a calculated theoretical price(VIX, KOSPI High Dividend 50 Futures, KOSPI Dividend Growth 50 Futures and Spreads): CD .")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.interest_rate_180_day = ProtoField.new("Interest Rate 180 Day", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.interestrate180day", ftypes.STRING, nil, nil, nil, "180 day average interest rate 9999V99999999.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.interest_rate_30_day = ProtoField.new("Interest Rate 30 Day", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.interestrate30day", ftypes.STRING, nil, nil, nil, "30 day average interest rate 9999V99999999.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.interest_rate_90_day = ProtoField.new("Interest Rate 90 Day", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.interestrate90day", ftypes.STRING, nil, nil, nil, "90 day average interest rate 9999V99999999.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.investor_code = ProtoField.new("Investor Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.investorcode", ftypes.STRING, nil, nil, nil, "Investor Code 1000: Financial Investors 2000: Insurance Company 3000: Asset Management Company and Investment Trust Company 3100: Private Equity Fund 4000: Banks 5000: Other Financial Institutions 600.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.isin_code = ProtoField.new("Isin Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.isincode", ftypes.STRING, nil, nil, nil, "ISIN Code.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.isin_code_of_a_common_stock = ProtoField.new("Isin Code Of A Common Stock", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.isincodeofacommonstock", ftypes.STRING, nil, nil, nil, "ISIN code of a Common Stock.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.isin_of_base_issue_for_payment = ProtoField.new("Isin Of Base Issue For Payment", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.isinofbaseissueforpayment", ftypes.STRING, nil, nil, nil, "ISIN of Base Issue for Payment.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.isin_of_underlying_asset = ProtoField.new("Isin Of Underlying Asset", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.isinofunderlyingasset", ftypes.STRING, nil, nil, nil, "ISIN of Underlying Asset.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.issue_name = ProtoField.new("Issue Name", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.issuename", ftypes.STRING, nil, nil, nil, "Issue Name.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ktb_isin = ProtoField.new("Ktb Isin", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.ktbisin", ftypes.STRING, nil, nil, nil, "KTB_ISIN.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.last_payment_date = ProtoField.new("Last Payment Date", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.lastpaymentdate", ftypes.STRING, nil, nil, nil, "Last Payment Date.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.last_settlement_price_type_code = ProtoField.new("Last Settlement Price Type Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.lastsettlementpricetypecode", ftypes.STRING, nil, nil, nil, "1: Closing price of underlying asset 2: A price with calculation 3: No final settlement price 4: Special Quotation(SQ) 5: Closing price of underlying asset on a recent day (limited to equities) 6: Adj.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.last_trading_date = ProtoField.new("Last Trading Date", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.lasttradingdate", ftypes.STRING, nil, nil, nil, "Last Trading Date.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.last_trading_day = ProtoField.new("Last Trading Day", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.lasttradingday", ftypes.STRING, nil, nil, nil, "Y/N to whether it is the last trading day.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.limit_order_permission_type_code = ProtoField.new("Limit Order Permission Type Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.limitorderpermissiontypecode", ftypes.UINT24, nil, nil, nil, "Bitwise opration 1: FAS (Fill And Stay) 2: FOK (Fill Or Kill) 4: FAK (Fill And Kill) 8: GTS (Good for the Session) 16: GTC (Good Till Cancel) 32: GTD (Good Till Date).")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.limitation_of_dynamic_price = ProtoField.new("Limitation Of Dynamic Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.limitationofdynamicprice", ftypes.STRING, nil, nil, nil, "Limitation of Dynamic Price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.listing_date = ProtoField.new("Listing Date", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.listingdate", ftypes.STRING, nil, nil, nil, "Listing Date of derivatives(CLASS) or issues.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.listing_type_code = ProtoField.new("Listing Type Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.listingtypecode", ftypes.STRING, nil, nil, nil, "1: New listing 2: Additional Listing 3: Existing Issue 4: Initial Listing 5: Adjusted Issue 6: Special Case.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.lower_limit_of_dynamic_price_range = ProtoField.new("Lower Limit Of Dynamic Price Range", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.lowerlimitofdynamicpricerange", ftypes.DOUBLE, nil, nil, nil, "Lower Limit of Dynamic Price Range.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.lower_limit_price = ProtoField.new("Lower Limit Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.lowerlimitprice", ftypes.DOUBLE, nil, nil, nil, "A price subtracting the price limit from the base price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.lower_limit_quantity = ProtoField.new("Lower Limit Quantity", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.lowerlimitquantity", ftypes.DOUBLE, nil, nil, nil, "Lower Limit Quantity.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.lower_limit_quantity_for_block_trade = ProtoField.new("Lower Limit Quantity For Block Trade", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.lowerlimitquantityforblocktrade", ftypes.DOUBLE, nil, nil, nil, "Lower Limit Quantity for Block Trade.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.lower_price_limit_1_st_stage = ProtoField.new("Lower Price Limit 1 St Stage", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.lowerpricelimit1ststage", ftypes.DOUBLE, nil, nil, nil, "A price subtracting the first stage of the price limit from the base price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.lower_price_limit_2_nd_stage = ProtoField.new("Lower Price Limit 2 Nd Stage", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.lowerpricelimit2ndstage", ftypes.DOUBLE, nil, nil, nil, "A price subtracting the second stage of the price limit from the base price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.lower_price_limit_3_rd_stage = ProtoField.new("Lower Price Limit 3 Rd Stage", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.lowerpricelimit3rdstage", ftypes.DOUBLE, nil, nil, nil, "A price subtracting the third stage of the price limit from the base price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.market_holidays = ProtoField.new("Market Holidays", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.marketholidays", ftypes.STRING, nil, nil, nil, "Market Holidays.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.market_id = ProtoField.new("Market Id", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.marketid", ftypes.STRING, nil, nil, nil, "Market ID (KOSPI, KOSDAQ, Index Derivatives, Equities Derivatives, Bonds Derivatives etc.).")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.market_operation_product_id = ProtoField.new("Market Operation Product Id", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.marketoperationproductid", ftypes.STRING, nil, nil, nil, "The ID refers to a group of products that are traded with the same trading schedule control.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.market_price_order_permission_type_code = ProtoField.new("Market Price Order Permission Type Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.marketpriceorderpermissiontypecode", ftypes.UINT24, nil, nil, nil, "Bitwise opration 1: FAS (Fill And Stay) 2: FOK (Fill Or Kill) 4: FAK (Fill And Kill) 8: GTS (Good for the Session) 16: GTC (Good Till Cancel) 32: GTD (Good Till Date).")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.me_group_number = ProtoField.new("Me Group Number", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.megroupnumber", ftypes.STRING, nil, nil, nil, "Matching Engine Group Number.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.messagesequencenumber", ftypes.UINT32, nil, nil, nil, "A message sequence number given by Market data team - Market data: seq number is given by instruments and boards (※ only for high-bandwidth service) - Batch Data: seq number is given by Information Ca.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.nearby_month_contract_trading_price = ProtoField.new("Nearby Month Contract Trading Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.nearbymonthcontracttradingprice", ftypes.DOUBLE, nil, nil, nil, "A trading price of nearby month (a component of a futures spread).")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.number_of_issues_for_base_product = ProtoField.new("Number Of Issues For Base Product", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.numberofissuesforbaseproduct", ftypes.UINT24, nil, nil, nil, "Number of Issues for Base Product.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.number_of_issues_for_subsidiary_product = ProtoField.new("Number Of Issues For Subsidiary Product", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.numberofissuesforsubsidiaryproduct", ftypes.UINT24, nil, nil, nil, "Number of Issues for Subsidiary Product.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.number_of_listing_days_per_year = ProtoField.new("Number Of Listing Days Per Year", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.numberoflistingdaysperyear", ftypes.UINT32, nil, nil, nil, "Number of Listing Days per Year.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.number_of_previous_days_trading = ProtoField.new("Number Of Previous Days Trading", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.numberofpreviousdaystrading", ftypes.UINT64, nil, nil, nil, "Number of Previous Day's Trading.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.number_of_trading_days_per_month = ProtoField.new("Number Of Trading Days Per Month", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.numberoftradingdayspermonth", ftypes.UINT32, nil, nil, nil, "Number of Trading Days per Month.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.number_of_trading_days_per_year = ProtoField.new("Number Of Trading Days Per Year", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.numberoftradingdaysperyear", ftypes.UINT32, nil, nil, nil, "Number of Trading Days per Year.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.numerator_adjustment_of_coefficient = ProtoField.new("Numerator Adjustment Of Coefficient", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.numeratoradjustmentofcoefficient", ftypes.DOUBLE, nil, nil, nil, "Numerator Adjustment of Coefficient.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.offset_rate_of_asset_group = ProtoField.new("Offset Rate Of Asset Group", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.offsetrateofassetgroup", ftypes.DOUBLE, nil, nil, nil, "Offset Rate of Asset Group.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.open_interest = ProtoField.new("Open Interest", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.openinterest", ftypes.UINT64, nil, nil, nil, "Open interest is the total number of outstanding derivative contracts, such as options or futures that have not been settled for an asset after the end of session.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.open_interest_limit_quantity = ProtoField.new("Open Interest Limit Quantity", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.openinterestlimitquantity", ftypes.UINT64, nil, nil, nil, "Open Interest Limit Quantity.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.open_interest_type_code = ProtoField.new("Open Interest Type Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.openinteresttypecode", ftypes.STRING, nil, nil, nil, "Open Interest Type Code M0: Morning data M1: Real-time data M2: Confirmed data.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.opening_price = ProtoField.new("Opening Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.openingprice", ftypes.DOUBLE, nil, nil, nil, "The first price that a security traded upon the opening of the regular session.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.payment_methods = ProtoField.new("Payment Methods", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.paymentmethods", ftypes.STRING, nil, nil, nil, "Payment methods C: Cash D: Spot A: Cash + Spot O: N/A.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_days_adjusted_closing_price = ProtoField.new("Previous Days Adjusted Closing Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.previousdaysadjustedclosingprice", ftypes.DOUBLE, nil, nil, nil, "Previous Day's Adjusted Closing Price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_days_best_ask = ProtoField.new("Previous Days Best Ask", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.previousdaysbestask", ftypes.DOUBLE, nil, nil, nil, "Previous Day’s Best Ask.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_days_best_bid = ProtoField.new("Previous Days Best Bid", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.previousdaysbestbid", ftypes.DOUBLE, nil, nil, nil, "Previous Day’s Best Bid.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_days_bpmm = ProtoField.new("Previous Days Bpmm", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.previousdaysbpmm", ftypes.DOUBLE, nil, nil, nil, "Previous Day's BPMM.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_days_high_price = ProtoField.new("Previous Days High Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.previousdayshighprice", ftypes.DOUBLE, nil, nil, nil, "Previous Day's High Price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_days_low_price = ProtoField.new("Previous Days Low Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.previousdayslowprice", ftypes.DOUBLE, nil, nil, nil, "Previous Day's Low price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_days_open_interest = ProtoField.new("Previous Days Open Interest", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.previousdaysopeninterest", ftypes.UINT64, nil, nil, nil, "Previous Day's Open Interest.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_days_opening_price = ProtoField.new("Previous Days Opening Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.previousdaysopeningprice", ftypes.DOUBLE, nil, nil, nil, "Previous Day's Opening Price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_days_settlement_price = ProtoField.new("Previous Days Settlement Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.previousdayssettlementprice", ftypes.DOUBLE, nil, nil, nil, "Previous Day’s Settlement Price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_days_total_accumulated_trading_value = ProtoField.new("Previous Days Total Accumulated Trading Value", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.previousdaystotalaccumulatedtradingvalue", ftypes.DOUBLE, nil, nil, nil, "Previous Day's Total Accumulated Trading Value.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_days_total_accumulated_trading_volume = ProtoField.new("Previous Days Total Accumulated Trading Volume", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.previousdaystotalaccumulatedtradingvolume", ftypes.UINT64, nil, nil, nil, "Previous Day's Total Accumulated Trading Volume.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_price = ProtoField.new("Previous Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.previousprice", ftypes.DOUBLE, nil, nil, nil, "A trading price made right before the final trading price as of now but with a differenct value. E.g.) 10 am: 90 KRW, 10:10 a.m: 100 KRW, 10:20 a.m (now): 100 -> the previous price is 90 KRW.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.price_limit_expansion_lower_limit = ProtoField.new("Price Limit Expansion Lower Limit", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.pricelimitexpansionlowerlimit", ftypes.UINT8, nil, nil, nil, "Price Limit Expansion_Lower Limit.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.price_limit_expansion_upper_limit = ProtoField.new("Price Limit Expansion Upper Limit", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.pricelimitexpansionupperlimit", ftypes.UINT8, nil, nil, nil, "Price Limit Expansion_Upper Limit.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.price_limit_range_expansion_for_base_issue_type_code = ProtoField.new("Price Limit Range Expansion For Base Issue Type Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.pricelimitrangeexpansionforbaseissuetypecode", ftypes.STRING, nil, nil, nil, "A code to expand price limit range for Base Issue D: descending U: Up X: N/A.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.processing_time_of_trading_system = ProtoField.new("Processing Time Of Trading System", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.processingtimeoftradingsystem", ftypes.STRING, nil, nil, nil, "HHMMSSuuuuuu.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.product_id = ProtoField.new("Product Id", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.productid", ftypes.STRING, nil, nil, nil, "Product ID.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.put_averaged_implied_volatility = ProtoField.new("Put Averaged Implied Volatility", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.putaveragedimpliedvolatility", ftypes.DOUBLE, nil, nil, nil, "Put_Averaged Implied Volatility.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.remaining_days = ProtoField.new("Remaining Days", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.remainingdays", ftypes.UINT32, nil, nil, nil, "number of remaining days before the last trading day of derivatives.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.representative_implied_volatility = ProtoField.new("Representative Implied Volatility", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.representativeimpliedvolatility", ftypes.DOUBLE, nil, nil, nil, "Representative Implied Volatility.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.rfr = ProtoField.new("Rfr", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.rfr", ftypes.STRING, nil, nil, nil, "999V999999 Based on the previous business day(RP settlement date) of the disclosure date.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.rights_execution_type_code = ProtoField.new("Rights Execution Type Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.rightsexecutiontypecode", ftypes.STRING, nil, nil, nil, "Rights Execution_Type Code A: American E: European Z: Others.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.sensitivity_delta = ProtoField.new("Sensitivity Delta", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.sensitivitydelta", ftypes.DOUBLE, nil, nil, nil, "Sensitivity Delta.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.sensitivity_gamma = ProtoField.new("Sensitivity Gamma", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.sensitivitygamma", ftypes.DOUBLE, nil, nil, nil, "Sensitivity Gamma.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.sensitivity_rho = ProtoField.new("Sensitivity Rho", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.sensitivityrho", ftypes.DOUBLE, nil, nil, nil, "Sensitivity Rho.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.sensitivity_theta = ProtoField.new("Sensitivity Theta", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.sensitivitytheta", ftypes.DOUBLE, nil, nil, nil, "Sensitivity Theta.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.sensitivity_vega = ProtoField.new("Sensitivity Vega", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.sensitivityvega", ftypes.DOUBLE, nil, nil, nil, "Sensitivity Vega.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.sequence_number_for_delivery_month = ProtoField.new("Sequence Number For Delivery Month", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.sequencenumberfordeliverymonth", ftypes.UINT16, nil, nil, nil, "e.g.) The nearest-month contract: 1 The next nearest-month contract: 2.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.session_id = ProtoField.new("Session Id", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.sessionid", ftypes.STRING, nil, nil, nil, "A Session is a subordinate concept of a Board and each session follows different trading methods and rules.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.session_start_end_code = ProtoField.new("Session Start End Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.sessionstartendcode", ftypes.STRING, nil, nil, nil, "A code refers to the start/end of session. Board will end when the last session ends. BS: Board Start BE: Board End SS: Session Start SE: Session End SH: Session Halt SR: Session Resumption.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.settlement_price = ProtoField.new("Settlement Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.settlementprice", ftypes.DOUBLE, nil, nil, nil, "Settlement Price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.settlement_price_after_exercising_an_option = ProtoField.new("Settlement Price After Exercising An Option", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.settlementpriceafterexercisinganoption", ftypes.DOUBLE, nil, nil, nil, "Settlement Price after Exercising an Option.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.settlement_price_type_code = ProtoField.new("Settlement Price Type Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.settlementpricetypecode", ftypes.STRING, nil, nil, nil, "10: No settlement price 11: Today’s closing price(real trade) 12: today's quote with no trade 13: previous day's settled price 14: Today’s theoretical price(no closing price after traded) 15: Closing .")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.settlement_week = ProtoField.new("Settlement Week", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.settlementweek", ftypes.STRING, nil, nil, nil, "Settlement Week.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.spread_ask_trading_value = ProtoField.new("Spread Ask Trading Value", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.spreadasktradingvalue", ftypes.DOUBLE, nil, nil, nil, "Spread_Ask Trading value.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.spread_ask_trading_volume = ProtoField.new("Spread Ask Trading Volume", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.spreadasktradingvolume", ftypes.UINT64, nil, nil, nil, "Spread_Ask Trading volume.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.spread_bid_trading_value = ProtoField.new("Spread Bid Trading Value", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.spreadbidtradingvalue", ftypes.DOUBLE, nil, nil, nil, "Spread_Bid Trading value.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.spread_bid_trading_volume = ProtoField.new("Spread Bid Trading Volume", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.spreadbidtradingvolume", ftypes.UINT64, nil, nil, nil, "Spread_Bid Trading volume.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.spread_composition_code = ProtoField.new("Spread Composition Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.spreadcompositioncode", ftypes.STRING, nil, nil, nil, "A composition of spread contract replaing combination quote. The composition method varies depends on the type of spread. ▦▦Code Value▦▦ 1. Time Spread - T1: The nearest month contract + the next-near.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.spread_issue_isin_1 = ProtoField.new("Spread Issue Isin 1", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.spreadissueisin1", ftypes.STRING, nil, nil, nil, "Nearby month contract in case of time spread ATM contract in case of money spread ISIN of base product contract in case of intercommodity spread.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.spread_issue_isin_2 = ProtoField.new("Spread Issue Isin 2", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.spreadissueisin2", ftypes.STRING, nil, nil, nil, "Farther month contract in case of time spread Non-ATM contract in case of time spread ISIN of subsidiary product contract in case of intercommodity spread.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.spread_type_code = ProtoField.new("Spread Type Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.spreadtypecode", ftypes.STRING, nil, nil, nil, "F: Farther month contract(Time spread) N: Nearby month contract(Time spread H: High Price Contract (Money Spread) L: Low Price Contract (Money Spread) C: Short-term contract(Intercommodity spread).")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.start_end_of_allocation = ProtoField.new("Start End Of Allocation", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.startendofallocation", ftypes.STRING, nil, nil, nil, "1: Start of Allocation 2: End of Allocation.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.start_time_of_a_board_event = ProtoField.new("Start Time Of A Board Event", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.starttimeofaboardevent", ftypes.STRING, nil, nil, nil, "The time when a Board Event occurs.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.step_applied = ProtoField.new("Step Applied", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.stepapplied", ftypes.UINT8, nil, nil, nil, "Managing steps to be applied.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.subsidiary_product_id = ProtoField.new("Subsidiary Product Id", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.subsidiaryproductid", ftypes.STRING, nil, nil, nil, "Subsidiary Product ID.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.suspended_stocks = ProtoField.new("Suspended Stocks", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.suspendedstocks", ftypes.STRING, nil, nil, nil, "Suspended Stocks.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.the_date_of_the_highest_premium_in_a_year = ProtoField.new("The Date Of The Highest Premium In A Year", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.thedateofthehighestpremiuminayear", ftypes.STRING, nil, nil, nil, "The Date of the Highest Premium in a Year.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.the_date_of_the_highest_premium_of_the_lifetime = ProtoField.new("The Date Of The Highest Premium Of The Lifetime", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.thedateofthehighestpremiumofthelifetime", ftypes.STRING, nil, nil, nil, "The Date of the Highest premium of the Life-time.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.the_date_of_the_lowest_premium_in_a_year = ProtoField.new("The Date Of The Lowest Premium In A Year", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.thedateofthelowestpremiuminayear", ftypes.STRING, nil, nil, nil, "The Date of the Lowest Premium in a Year.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.the_date_of_the_lowest_premium_of_the_lifetime = ProtoField.new("The Date Of The Lowest Premium Of The Lifetime", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.thedateofthelowestpremiumofthelifetime", ftypes.STRING, nil, nil, nil, "The Date of the Lowest premium of the Life-time.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.the_first_trading_date = ProtoField.new("The First Trading Date", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.thefirsttradingdate", ftypes.STRING, nil, nil, nil, "The First Trading Date.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.the_highest_premium_in_a_year = ProtoField.new("The Highest Premium In A Year", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.thehighestpremiuminayear", ftypes.DOUBLE, nil, nil, nil, "The Highest Premium in a Year.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.the_highest_premium_of_the_lifetime = ProtoField.new("The Highest Premium Of The Lifetime", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.thehighestpremiumofthelifetime", ftypes.DOUBLE, nil, nil, nil, "The Highest premium of the Life-time.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.the_last_settlement_price = ProtoField.new("The Last Settlement Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.thelastsettlementprice", ftypes.DOUBLE, nil, nil, nil, "The Last Settlement Price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.the_last_trading_time = ProtoField.new("The Last Trading Time", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.thelasttradingtime", ftypes.STRING, nil, nil, nil, "The Last Trading Time.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.the_lowest_premium_in_a_year = ProtoField.new("The Lowest Premium In A Year", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.thelowestpremiuminayear", ftypes.DOUBLE, nil, nil, nil, "The Lowest Premium in a Year.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.the_lowest_premium_of_the_lifetime = ProtoField.new("The Lowest Premium Of The Lifetime", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.thelowestpremiumofthelifetime", ftypes.DOUBLE, nil, nil, nil, "The Lowest premium of the Life-time.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.the_time_imposing_a_price_limit = ProtoField.new("The Time Imposing A Price Limit", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.thetimeimposingapricelimit", ftypes.STRING, nil, nil, nil, "The time when a price limit is imposed.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.theoretical_settlement_price = ProtoField.new("Theoretical Settlement Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.theoreticalsettlementprice", ftypes.DOUBLE, nil, nil, nil, "Theoretical Settlement Price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.time_when_allocation_ended = ProtoField.new("Time When Allocation Ended", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.timewhenallocationended", ftypes.STRING, nil, nil, nil, "Time when Allocation ended.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.todays_high = ProtoField.new("Todays High", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.todayshigh", ftypes.DOUBLE, nil, nil, nil, "The highest price at which an instrument traded during the course of the trading day. Also, the record high of a year refers to the highest price of a year.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.todays_low = ProtoField.new("Todays Low", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.todayslow", ftypes.DOUBLE, nil, nil, nil, "The lowest price or index at which an issue traded during the course of a day, week, month or year.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.total_accumulated_trading_value = ProtoField.new("Total Accumulated Trading Value", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.totalaccumulatedtradingvalue", ftypes.DOUBLE, nil, nil, nil, "Total Accumulated Trading Value.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.total_accumulated_trading_volume = ProtoField.new("Total Accumulated Trading Volume", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.totalaccumulatedtradingvolume", ftypes.UINT64, nil, nil, nil, "Total Accumulated Trading volume.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.total_number_of_instruments_of_the_contract = ProtoField.new("Total Number Of Instruments Of The Contract", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.totalnumberofinstrumentsofthecontract", ftypes.UINT24, nil, nil, nil, "- Total number of instruments per each Information Category.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.tr_code = ProtoField.new("Tr Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.trcode", ftypes.STRING, nil, nil, nil, "Five-character ASCII TR-CODE identifying the disseminated market data record. Formed by concatenating a 2-character Data Category (message family, e.g. \"IA\" Krx Index, \"B6\" Quote, \"C4\" Negotiated Trade, \"A7\" Market Operation TS) with a 3-character Information Category (market/product variant, typically 2-digit information code plus 1-character market code, e.g. \"01S\" = Equities/KOSPI, \"01F\" = Derivatives, \"000\" = All Market).")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.trading_date = ProtoField.new("Trading Date", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.tradingdate", ftypes.STRING, nil, nil, nil, "Trading date.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.trading_halt = ProtoField.new("Trading Halt", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.tradinghalt", ftypes.STRING, nil, nil, nil, "Y/N to Trading Halt.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.trading_halt_reason_code = ProtoField.new("Trading Halt Reason Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.tradinghaltreasoncode", ftypes.STRING, nil, nil, nil, "Trading Halt Reason Code 1XX~301: KOSPI 6XX: KOSDAQ + KONEX 7XX: KONEX BXX: Bond RXX: REPO.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.trading_halt_type_code = ProtoField.new("Trading Halt Type Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.tradinghalttypecode", ftypes.STRING, nil, nil, nil, "1: Treasury Stock 2: Warrant 3: Right 4: Underlying Asset ELW 5: Issue ELW 6: Listed Company 7: Underlying Asset Applied Market 8: Index(not using) 9: Issue ETN D: Issue (New securities).")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.trading_multiplier = ProtoField.new("Trading Multiplier", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.tradingmultiplier", ftypes.DOUBLE, nil, nil, nil, "A multiplier used for calculating trading value and settlement.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.trading_multiplier_after_adjustment_equity_options_10 = ProtoField.new("Trading Multiplier After Adjustment Equity Options 10", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.tradingmultiplierafteradjustmentequityoptions10", ftypes.DOUBLE, nil, nil, nil, "Trading Multiplier after Adjustment (Equity options: 10).")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.trading_multiplier_before_adjustment = ProtoField.new("Trading Multiplier Before Adjustment", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.tradingmultiplierbeforeadjustment", ftypes.DOUBLE, nil, nil, nil, "Trading Multiplier before Adjustment (Equity options: 10).")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.trading_price = ProtoField.new("Trading Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.tradingprice", ftypes.DOUBLE, nil, nil, nil, "The price at which a security is currently selling in the market.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.trading_unit = ProtoField.new("Trading Unit", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.tradingunit", ftypes.DOUBLE, nil, nil, nil, "Trading Unit.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.trading_volume = ProtoField.new("Trading Volume", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.tradingvolume", ftypes.UINT32, nil, nil, nil, "Trading volume.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.transaction_status_type_code = ProtoField.new("Transaction Status Type Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.transactionstatustypecode", ftypes.STRING, nil, nil, nil, "Transaction Status Type Code 00: Data occurred on the previous day 01: Data occurred during the regular session 02: Confirmed Data E1: Transmission completed regular session data E2: Transmission comp.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.type_code_of_settlement_price_after_exercising_an_option = ProtoField.new("Type Code Of Settlement Price After Exercising An Option", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.typecodeofsettlementpriceafterexercisinganoption", ftypes.STRING, nil, nil, nil, "Type Code of Settlement Price after Exercising an Option 1: KOSPI200 Closing Price Index 2: No KOSPI200 3: Sprecial Quotation 4: Adjusted closing price 5: closing price on the recent day.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.type_of_liquidityproviding_lp = ProtoField.new("Type Of Liquidityproviding Lp", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.typeofliquidityprovidinglp", ftypes.STRING, nil, nil, nil, "0: An issue which is not designated as a subject to the LP until the effective date. 1: An issues which is designated as a subject to the LP on the effective date 2: An issues which had been designate.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.underlying_asset_id = ProtoField.new("Underlying Asset Id", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.underlyingassetid", ftypes.STRING, nil, nil, nil, "Underlying Asset ID of Derivatives.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.underlying_asset_market_id = ProtoField.new("Underlying Asset Market Id", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.underlyingassetmarketid", ftypes.STRING, nil, nil, nil, "Underlying Asset Market ID.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.underlying_asset_product_id = ProtoField.new("Underlying Asset Product Id", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.underlyingassetproductid", ftypes.STRING, nil, nil, nil, "Underlying Asset_Product ID.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.upper_limit_of_dynamic_price_range = ProtoField.new("Upper Limit Of Dynamic Price Range", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.upperlimitofdynamicpricerange", ftypes.DOUBLE, nil, nil, nil, "Upper Limit of Dynamic Price Range.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.upper_limit_price = ProtoField.new("Upper Limit Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.upperlimitprice", ftypes.DOUBLE, nil, nil, nil, "A price adding up the price limit to the base price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.upper_limit_quantity = ProtoField.new("Upper Limit Quantity", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.upperlimitquantity", ftypes.DOUBLE, nil, nil, nil, "Upper Limit Quantity.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.upper_limit_quantity_for_block_trade = ProtoField.new("Upper Limit Quantity For Block Trade", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.upperlimitquantityforblocktrade", ftypes.DOUBLE, nil, nil, nil, "Upper Limit Quantity for Block Trade.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.upper_price_limit_1_st_stage = ProtoField.new("Upper Price Limit 1 St Stage", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.upperpricelimit1ststage", ftypes.DOUBLE, nil, nil, nil, "A price adding the first stage of the price limit to the base price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.upper_price_limit_2_nd_stage = ProtoField.new("Upper Price Limit 2 Nd Stage", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.upperpricelimit2ndstage", ftypes.DOUBLE, nil, nil, nil, "A price adding the second stage of the price limit to the base price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.upper_price_limit_3_rd_stage = ProtoField.new("Upper Price Limit 3 Rd Stage", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.upperpricelimit3rdstage", ftypes.DOUBLE, nil, nil, nil, "A price adding the third stage of the price limit to the base price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.yesterdays_accumulated_trading_amount = ProtoField.new("Yesterdays Accumulated Trading Amount", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.yesterdaysaccumulatedtradingamount", ftypes.UINT64, nil, nil, nil, "Yesterday's Accumulated Trading Amount.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.yesterdays_accumulated_trading_value = ProtoField.new("Yesterdays Accumulated Trading Value", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.yesterdaysaccumulatedtradingvalue", ftypes.DOUBLE, nil, nil, nil, "Yesterday's Accumulated Trading Value.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.yesterdays_closing_price = ProtoField.new("Yesterdays Closing Price", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.yesterdaysclosingprice", ftypes.DOUBLE, nil, nil, nil, "Yesterday's Closing Price.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.yesterdays_closing_price_type_code = ProtoField.new("Yesterdays Closing Price Type Code", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.yesterdaysclosingpricetypecode", ftypes.STRING, nil, nil, nil, "1: Regular closing price 2: Quotation 3: No Trades 4: Quotation of an Issue of which base price is settled with a today's single price.")

-- Koscom MdcsRealtime NightDerivatives Exture 2.020 Framing
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.packet = ProtoField.new("Packet", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.packet", ftypes.STRING, nil, nil, nil, "Koscom MDCS Exture Udp Packet")

-- Koscom MdcsRealtime NightDerivatives 2.020 Application Messages
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.commodity_futures_settlement_reference_ktb_message = ProtoField.new("Commodity Futures Settlement Reference Ktb Message", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.commodityfuturessettlementreferencektbmessage", ftypes.STRING, nil, nil, nil, "Commodity Futures Settlement Reference for KTB.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.commodity_futures_spot_settlement_reference_message = ProtoField.new("Commodity Futures Spot Settlement Reference Message", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.commodityfuturesspotsettlementreferencemessage", ftypes.STRING, nil, nil, nil, "Commodity Futures Spot Market Info Settlement Reference.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.daily_disclosed_rfr_message = ProtoField.new("Daily Disclosed Rfr Message", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.dailydisclosedrfrmessage", ftypes.STRING, nil, nil, nil, "Daily disclosed Risk-Free Rate (RFR) reference.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_batch_data_message = ProtoField.new("Derivatives Batch Data Message", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.derivativesbatchdatamessage", ftypes.STRING, nil, nil, nil, "Derivatives Batch Data. Comprehensive per-issue reference data dumped at start-of-day for futures, options, and other derivatives.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_dynamic_upper_lower_limit_message = ProtoField.new("Derivatives Dynamic Upper Lower Limit Message", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.derivativesdynamicupperlowerlimitmessage", ftypes.STRING, nil, nil, nil, "Derivatives Applying/Removing Dynamic Upper/Lower Limit. Per-issue dynamic price-limit application or removal.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_group_order_acceptance_halt_message = ProtoField.new("Derivatives Group Order Acceptance Halt Message", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.derivativesgrouporderacceptancehaltmessage", ftypes.STRING, nil, nil, nil, "Derivatives Group Order Acceptance Halt/Release. Matching engine group-order halt and release events for futures and options.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_investor_activities_message = ProtoField.new("Derivatives Investor Activities Message", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.derivativesinvestoractivitiesmessage", ftypes.STRING, nil, nil, nil, "Investor Activities per Derivatives. Aggregated bid/ask volumes and values by investor category per derivatives product.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_issue_closing_message = ProtoField.new("Derivatives Issue Closing Message", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.derivativesissueclosingmessage", ftypes.STRING, nil, nil, nil, "Derivatives Issue Closing. Per-issue closing event for futures and options.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_market_operation_schedule_message = ProtoField.new("Derivatives Market Operation Schedule Message", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.derivativesmarketoperationschedulemessage", ftypes.STRING, nil, nil, nil, "Derivatives Market Operation Schedule. Session-level schedule and configuration changes.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_market_operation_ts_message = ProtoField.new("Derivatives Market Operation Ts Message", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.derivativesmarketoperationtsmessage", ftypes.STRING, nil, nil, nil, "Derivatives Market Operation TS. Per-issue session-state events for futures, options, and other derivatives.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_market_operation_ts_plus_quote_five_levels_message = ProtoField.new("Derivatives Market Operation Ts Plus Quote Five Levels Message", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.derivativesmarketoperationtsplusquotefivelevelsmessage", ftypes.STRING, nil, nil, nil, "Derivatives Market Operation TS plus Quote (Five levels). Per-issue session-state event followed by full five-level quote state.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_market_operation_ts_plus_quote_ten_levels_message = ProtoField.new("Derivatives Market Operation Ts Plus Quote Ten Levels Message", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.derivativesmarketoperationtsplusquotetenlevelsmessage", ftypes.STRING, nil, nil, nil, "Derivatives Market Operation TS plus Quote (Ten levels). Per-issue session-state event followed by full ten-level quote state.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_negotiated_trade_message = ProtoField.new("Derivatives Negotiated Trade Message", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.derivativesnegotiatedtrademessage", ftypes.STRING, nil, nil, nil, "Derivatives Negotiated Trade Data. Off-book negotiated trades for futures and options.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_open_interest_message = ProtoField.new("Derivatives Open Interest Message", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.derivativesopeninterestmessage", ftypes.STRING, nil, nil, nil, "Derivatives Open Interest. Total open interest per derivatives contract.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_order_filled_message = ProtoField.new("Derivatives Order Filled Message", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.derivativesorderfilledmessage", ftypes.STRING, nil, nil, nil, "Derivatives Order Filled. Real-time trade prints with running totals for futures and options.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_order_filled_plus_quote_five_levels_message = ProtoField.new("Derivatives Order Filled Plus Quote Five Levels Message", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.derivativesorderfilledplusquotefivelevelsmessage", ftypes.STRING, nil, nil, nil, "Derivatives Order Filled plus Quote (Five levels). Trade print followed by full five-level quote state.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_order_filled_plus_quote_ten_levels_message = ProtoField.new("Derivatives Order Filled Plus Quote Ten Levels Message", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.derivativesorderfilledplusquotetenlevelsmessage", ftypes.STRING, nil, nil, nil, "Derivatives Order Filled plus Quote (Ten levels). Trade print followed by full ten-level quote state.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_price_limit_range_increase_message = ProtoField.new("Derivatives Price Limit Range Increase Message", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.derivativespricelimitrangeincreasemessage", ftypes.STRING, nil, nil, nil, "Derivatives Increasing Price Limit Range. Per-issue price-limit range expansion event.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_quantity_allocation_message = ProtoField.new("Derivatives Quantity Allocation Message", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.derivativesquantityallocationmessage", ftypes.STRING, nil, nil, nil, "Derivatives Quantity Allocation. Reports the quantity allocated to each price level at a single price trade match.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_quote_five_levels_message = ProtoField.new("Derivatives Quote Five Levels Message", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.derivativesquotefivelevelsmessage", ftypes.STRING, nil, nil, nil, "Derivatives Quote (Five levels). Multi-level bid/ask quotes for futures, options, and other derivatives. Five levels of depth.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_quote_ten_levels_message = ProtoField.new("Derivatives Quote Ten Levels Message", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.derivativesquotetenlevelsmessage", ftypes.STRING, nil, nil, nil, "Derivatives Quote (Ten levels). Multi-level bid/ask quotes with ten levels of depth.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_snapshot_five_levels_message = ProtoField.new("Derivatives Snapshot Five Levels Message", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.derivativessnapshotfivelevelsmessage", ftypes.STRING, nil, nil, nil, "Derivatives Market Data Snapshot (Five Levels). Periodic full state snapshot with five levels of depth.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_snapshot_ten_levels_message = ProtoField.new("Derivatives Snapshot Ten Levels Message", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.derivativessnapshottenlevelsmessage", ftypes.STRING, nil, nil, nil, "Derivatives Market Data Snapshot (Ten Levels). Periodic full state snapshot with ten levels of depth.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.equity_derivatives_adjustment_details_message = ProtoField.new("Equity Derivatives Adjustment Details Message", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.equityderivativesadjustmentdetailsmessage", ftypes.STRING, nil, nil, nil, "Equity Derivatives Adjustment Details. Corporate-action and contract-spec adjustments to equity-derivatives positions.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.futures_settled_price_message = ProtoField.new("Futures Settled Price Message", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.futuressettledpricemessage", ftypes.STRING, nil, nil, nil, "Futures Settled Price. Daily settled price for futures contracts.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.options_base_price_of_clearing_margins_message = ProtoField.new("Options Base Price Of Clearing Margins Message", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.optionsbasepriceofclearingmarginsmessage", ftypes.STRING, nil, nil, nil, "Options Base Price of Clearing Margins. Base price used for margin calculation.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.options_implied_volatility_message = ProtoField.new("Options Implied Volatility Message", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.optionsimpliedvolatilitymessage", ftypes.STRING, nil, nil, nil, "Options Implied Volatility per option contract.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.options_sensitivity_message = ProtoField.new("Options Sensitivity Message", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.optionssensitivitymessage", ftypes.STRING, nil, nil, nil, "Options Sensitivity. Greeks (Delta, Gamma, Theta, Vega, Rho) per option contract.")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.polling_data_message = ProtoField.new("Polling Data Message", "koscom.mdcsrealtime.nightderivatives.exture.v2.020.pollingdatamessage", ftypes.STRING, nil, nil, nil, "Polling Data. Transmitted at one-minute intervals on every market data line, all markets, 24 hours a day.")

-- Koscom MdcsRealtime NightDerivatives Exture 2.020 Expert Info
koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts = {}
koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number = ProtoExpert.new("koscom.mdcsrealtime.nightderivatives.exture.v2.020.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts = { koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number }

-----------------------------------------------------------------------
-- Koscom MdcsRealtime NightDerivatives Exture 2.020 Formatting
-----------------------------------------------------------------------

-- Text field character encoding (Wireshark ENC_ constant)
koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding = ENC_EUC_KR


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Koscom MdcsRealtime NightDerivatives Exture 2.020 Element Dissection Options
show.application_messages = true
show.structs = true

-- Register Koscom MdcsRealtime NightDerivatives Exture 2.020 Show Options
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")

-- Handle changed preferences
function omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.prefs.show_application_messages then
    show.application_messages = omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.prefs.show_application_messages
  end
  if show.structs ~= omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.prefs.show_structs then
    show.structs = omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.prefs.show_structs
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
-- Koscom MdcsRealtime NightDerivatives Exture 2.020 Fields
-----------------------------------------------------------------------

-- A Designated Number For An Issue
koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue = {}

-- Size: A Designated Number For An Issue
koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.size = 6

-- Display: A Designated Number For An Issue
koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.display = function(value)
  return "A Designated Number For An Issue: "..value
end

-- Dissect: A Designated Number For An Issue
koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.a_designated_number_for_an_issue, range, value, "A Designated Number For An Issue: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "A Designated Number For An Issue is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.a_designated_number_for_an_issue, range, value, display)

  return offset + length, value
end

-- Abbreviated Issue Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.abbreviated_issue_code = {}

-- Size: Abbreviated Issue Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.abbreviated_issue_code.size = 9

-- Display: Abbreviated Issue Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.abbreviated_issue_code.display = function(value)
  return "Abbreviated Issue Code: "..value
end

-- Dissect: Abbreviated Issue Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.abbreviated_issue_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.abbreviated_issue_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.abbreviated_issue_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.abbreviated_issue_code, range, value, display)

  return offset + length, value
end

-- Abbreviated Issue Name
koscom_mdcsrealtime_nightderivatives_exture_v2_020.abbreviated_issue_name = {}

-- Size: Abbreviated Issue Name
koscom_mdcsrealtime_nightderivatives_exture_v2_020.abbreviated_issue_name.size = 40

-- Display: Abbreviated Issue Name
koscom_mdcsrealtime_nightderivatives_exture_v2_020.abbreviated_issue_name.display = function(value)
  return "Abbreviated Issue Name: "..value
end

-- Dissect: Abbreviated Issue Name
koscom_mdcsrealtime_nightderivatives_exture_v2_020.abbreviated_issue_name.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.abbreviated_issue_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.abbreviated_issue_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.abbreviated_issue_name, range, value, display)

  return offset + length, value
end

-- Abbreviated Issue Name In En
koscom_mdcsrealtime_nightderivatives_exture_v2_020.abbreviated_issue_name_in_en = {}

-- Size: Abbreviated Issue Name In En
koscom_mdcsrealtime_nightderivatives_exture_v2_020.abbreviated_issue_name_in_en.size = 40

-- Display: Abbreviated Issue Name In En
koscom_mdcsrealtime_nightderivatives_exture_v2_020.abbreviated_issue_name_in_en.display = function(value)
  return "Abbreviated Issue Name In En: "..value
end

-- Dissect: Abbreviated Issue Name In En
koscom_mdcsrealtime_nightderivatives_exture_v2_020.abbreviated_issue_name_in_en.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.abbreviated_issue_name_in_en.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.abbreviated_issue_name_in_en.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.abbreviated_issue_name_in_en, range, value, display)

  return offset + length, value
end

-- Accumulated Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_value = {}

-- Size: Accumulated Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_value.size = 22

-- Display: Accumulated Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_value.size):string()
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
koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.accumulated_trading_value, range, value, "Accumulated Trading Value: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Accumulated Trading Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.accumulated_trading_value, range, value, display)

  return offset + length, value
end

-- Accumulated Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_volume = {}

-- Size: Accumulated Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_volume.size = 12

-- Display: Accumulated Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_volume.display = function(value)
  return "Accumulated Trading Volume: "..value
end

-- Dissect: Accumulated Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.accumulated_trading_volume, range, value, "Accumulated Trading Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Accumulated Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.accumulated_trading_volume, range, value, display)

  return offset + length, value
end

-- Adjusted Base Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.adjusted_base_price = {}

-- Size: Adjusted Base Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.adjusted_base_price.size = 18

-- Display: Adjusted Base Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.adjusted_base_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.adjusted_base_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Adjusted Base Price: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 8 then
    return "Adjusted Base Price: "..text.." (expected 8 places)"
  end

  return "Adjusted Base Price: "..text
end

-- Dissect: Adjusted Base Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.adjusted_base_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.adjusted_base_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.adjusted_base_price, range, value, "Adjusted Base Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Adjusted Base Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.adjusted_base_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.adjusted_base_price, range, value, display)

  return offset + length, value
end

-- Adjustment Coefficient Of Open Intetest Volumes That Have Been Adjusted
koscom_mdcsrealtime_nightderivatives_exture_v2_020.adjustment_coefficient_of_open_intetest_volumes_that_have_been_adjusted = {}

-- Size: Adjustment Coefficient Of Open Intetest Volumes That Have Been Adjusted
koscom_mdcsrealtime_nightderivatives_exture_v2_020.adjustment_coefficient_of_open_intetest_volumes_that_have_been_adjusted.size = 6

-- Display: Adjustment Coefficient Of Open Intetest Volumes That Have Been Adjusted
koscom_mdcsrealtime_nightderivatives_exture_v2_020.adjustment_coefficient_of_open_intetest_volumes_that_have_been_adjusted.display = function(value)
  return "Adjustment Coefficient Of Open Intetest Volumes That Have Been Adjusted: "..value
end

-- Dissect: Adjustment Coefficient Of Open Intetest Volumes That Have Been Adjusted
koscom_mdcsrealtime_nightderivatives_exture_v2_020.adjustment_coefficient_of_open_intetest_volumes_that_have_been_adjusted.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.adjustment_coefficient_of_open_intetest_volumes_that_have_been_adjusted.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.adjustment_coefficient_of_open_intetest_volumes_that_have_been_adjusted, range, value, "Adjustment Coefficient Of Open Intetest Volumes That Have Been Adjusted: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Adjustment Coefficient Of Open Intetest Volumes That Have Been Adjusted is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.adjustment_coefficient_of_open_intetest_volumes_that_have_been_adjusted.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.adjustment_coefficient_of_open_intetest_volumes_that_have_been_adjusted, range, value, display)

  return offset + length, value
end

-- Adjustment Reason Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.adjustment_reason_code = {}

-- Size: Adjustment Reason Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.adjustment_reason_code.size = 2

-- Display: Adjustment Reason Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.adjustment_reason_code.display = function(value)
  return "Adjustment Reason Code: "..value
end

-- Dissect: Adjustment Reason Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.adjustment_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.adjustment_reason_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.adjustment_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.adjustment_reason_code, range, value, display)

  return offset + length, value
end

-- Allocation Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.allocation_type_code = {}

-- Size: Allocation Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.allocation_type_code.size = 1

-- Display: Allocation Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.allocation_type_code.display = function(value)
  return "Allocation Type Code: "..value
end

-- Dissect: Allocation Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.allocation_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.allocation_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.allocation_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.allocation_type_code, range, value, display)

  return offset + length, value
end

-- Application Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.application_date = {}

-- Size: Application Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.application_date.size = 8

-- Display: Application Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.application_date.display = function(value)
  return "Application Date: "..value
end

-- Dissect: Application Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.application_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.application_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.application_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.application_date, range, value, display)

  return offset + length, value
end

-- Ask Level 1 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_order_counts = {}

-- Size: Ask Level 1 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_order_counts.size = 5

-- Display: Ask Level 1 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_order_counts.display = function(value)
  if value == 99999 then
    return "Ask Level 1 Order Counts: "..value.." (or more)"
  end

  return "Ask Level 1 Order Counts: "..value
end

-- Dissect: Ask Level 1 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_1_order_counts, range, value, "Ask Level 1 Order Counts: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Ask Level 1 Order Counts is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_1_order_counts, range, value, display)

  return offset + length, value
end

-- Ask Level 1 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_price = {}

-- Size: Ask Level 1 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_price.size = 9

-- Display: Ask Level 1 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Ask Level 1 Price: No Value"
  end

  return "Ask Level 1 Price: "..text
end

-- Dissect: Ask Level 1 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_1_price, range, value, "Ask Level 1 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Ask Level 1 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_1_price, range, value, display)

  return offset + length, value
end

-- Ask Level 1 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_volume = {}

-- Size: Ask Level 1 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_volume.size = 9

-- Display: Ask Level 1 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_volume.display = function(value)
  if value == 999999999 then
    return "Ask Level 1 Volume: "..value.." (or more)"
  end

  return "Ask Level 1 Volume: "..value
end

-- Dissect: Ask Level 1 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_1_volume, range, value, "Ask Level 1 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Ask Level 1 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_1_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 10 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_order_counts = {}

-- Size: Ask Level 10 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_order_counts.size = 5

-- Display: Ask Level 10 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_order_counts.display = function(value)
  if value == 99999 then
    return "Ask Level 10 Order Counts: "..value.." (or more)"
  end

  return "Ask Level 10 Order Counts: "..value
end

-- Dissect: Ask Level 10 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_10_order_counts, range, value, "Ask Level 10 Order Counts: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Ask Level 10 Order Counts is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_10_order_counts, range, value, display)

  return offset + length, value
end

-- Ask Level 10 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_price = {}

-- Size: Ask Level 10 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_price.size = 9

-- Display: Ask Level 10 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Ask Level 10 Price: No Value"
  end

  return "Ask Level 10 Price: "..text
end

-- Dissect: Ask Level 10 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_10_price, range, value, "Ask Level 10 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Ask Level 10 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_10_price, range, value, display)

  return offset + length, value
end

-- Ask Level 10 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_volume = {}

-- Size: Ask Level 10 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_volume.size = 9

-- Display: Ask Level 10 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_volume.display = function(value)
  if value == 999999999 then
    return "Ask Level 10 Volume: "..value.." (or more)"
  end

  return "Ask Level 10 Volume: "..value
end

-- Dissect: Ask Level 10 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_10_volume, range, value, "Ask Level 10 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Ask Level 10 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_10_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 2 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_order_counts = {}

-- Size: Ask Level 2 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_order_counts.size = 5

-- Display: Ask Level 2 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_order_counts.display = function(value)
  if value == 99999 then
    return "Ask Level 2 Order Counts: "..value.." (or more)"
  end

  return "Ask Level 2 Order Counts: "..value
end

-- Dissect: Ask Level 2 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_2_order_counts, range, value, "Ask Level 2 Order Counts: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Ask Level 2 Order Counts is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_2_order_counts, range, value, display)

  return offset + length, value
end

-- Ask Level 2 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_price = {}

-- Size: Ask Level 2 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_price.size = 9

-- Display: Ask Level 2 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Ask Level 2 Price: No Value"
  end

  return "Ask Level 2 Price: "..text
end

-- Dissect: Ask Level 2 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_2_price, range, value, "Ask Level 2 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Ask Level 2 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_2_price, range, value, display)

  return offset + length, value
end

-- Ask Level 2 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_volume = {}

-- Size: Ask Level 2 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_volume.size = 9

-- Display: Ask Level 2 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_volume.display = function(value)
  if value == 999999999 then
    return "Ask Level 2 Volume: "..value.." (or more)"
  end

  return "Ask Level 2 Volume: "..value
end

-- Dissect: Ask Level 2 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_2_volume, range, value, "Ask Level 2 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Ask Level 2 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_2_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 3 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_order_counts = {}

-- Size: Ask Level 3 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_order_counts.size = 5

-- Display: Ask Level 3 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_order_counts.display = function(value)
  if value == 99999 then
    return "Ask Level 3 Order Counts: "..value.." (or more)"
  end

  return "Ask Level 3 Order Counts: "..value
end

-- Dissect: Ask Level 3 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_3_order_counts, range, value, "Ask Level 3 Order Counts: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Ask Level 3 Order Counts is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_3_order_counts, range, value, display)

  return offset + length, value
end

-- Ask Level 3 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_price = {}

-- Size: Ask Level 3 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_price.size = 9

-- Display: Ask Level 3 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Ask Level 3 Price: No Value"
  end

  return "Ask Level 3 Price: "..text
end

-- Dissect: Ask Level 3 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_3_price, range, value, "Ask Level 3 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Ask Level 3 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_3_price, range, value, display)

  return offset + length, value
end

-- Ask Level 3 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_volume = {}

-- Size: Ask Level 3 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_volume.size = 9

-- Display: Ask Level 3 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_volume.display = function(value)
  if value == 999999999 then
    return "Ask Level 3 Volume: "..value.." (or more)"
  end

  return "Ask Level 3 Volume: "..value
end

-- Dissect: Ask Level 3 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_3_volume, range, value, "Ask Level 3 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Ask Level 3 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_3_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 4 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_order_counts = {}

-- Size: Ask Level 4 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_order_counts.size = 5

-- Display: Ask Level 4 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_order_counts.display = function(value)
  if value == 99999 then
    return "Ask Level 4 Order Counts: "..value.." (or more)"
  end

  return "Ask Level 4 Order Counts: "..value
end

-- Dissect: Ask Level 4 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_4_order_counts, range, value, "Ask Level 4 Order Counts: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Ask Level 4 Order Counts is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_4_order_counts, range, value, display)

  return offset + length, value
end

-- Ask Level 4 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_price = {}

-- Size: Ask Level 4 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_price.size = 9

-- Display: Ask Level 4 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Ask Level 4 Price: No Value"
  end

  return "Ask Level 4 Price: "..text
end

-- Dissect: Ask Level 4 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_4_price, range, value, "Ask Level 4 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Ask Level 4 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_4_price, range, value, display)

  return offset + length, value
end

-- Ask Level 4 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_volume = {}

-- Size: Ask Level 4 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_volume.size = 9

-- Display: Ask Level 4 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_volume.display = function(value)
  if value == 999999999 then
    return "Ask Level 4 Volume: "..value.." (or more)"
  end

  return "Ask Level 4 Volume: "..value
end

-- Dissect: Ask Level 4 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_4_volume, range, value, "Ask Level 4 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Ask Level 4 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_4_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 5 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_order_counts = {}

-- Size: Ask Level 5 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_order_counts.size = 5

-- Display: Ask Level 5 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_order_counts.display = function(value)
  if value == 99999 then
    return "Ask Level 5 Order Counts: "..value.." (or more)"
  end

  return "Ask Level 5 Order Counts: "..value
end

-- Dissect: Ask Level 5 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_5_order_counts, range, value, "Ask Level 5 Order Counts: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Ask Level 5 Order Counts is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_5_order_counts, range, value, display)

  return offset + length, value
end

-- Ask Level 5 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_price = {}

-- Size: Ask Level 5 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_price.size = 9

-- Display: Ask Level 5 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Ask Level 5 Price: No Value"
  end

  return "Ask Level 5 Price: "..text
end

-- Dissect: Ask Level 5 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_5_price, range, value, "Ask Level 5 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Ask Level 5 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_5_price, range, value, display)

  return offset + length, value
end

-- Ask Level 5 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_volume = {}

-- Size: Ask Level 5 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_volume.size = 9

-- Display: Ask Level 5 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_volume.display = function(value)
  if value == 999999999 then
    return "Ask Level 5 Volume: "..value.." (or more)"
  end

  return "Ask Level 5 Volume: "..value
end

-- Dissect: Ask Level 5 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_5_volume, range, value, "Ask Level 5 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Ask Level 5 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_5_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 6 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_order_counts = {}

-- Size: Ask Level 6 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_order_counts.size = 5

-- Display: Ask Level 6 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_order_counts.display = function(value)
  if value == 99999 then
    return "Ask Level 6 Order Counts: "..value.." (or more)"
  end

  return "Ask Level 6 Order Counts: "..value
end

-- Dissect: Ask Level 6 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_6_order_counts, range, value, "Ask Level 6 Order Counts: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Ask Level 6 Order Counts is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_6_order_counts, range, value, display)

  return offset + length, value
end

-- Ask Level 6 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_price = {}

-- Size: Ask Level 6 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_price.size = 9

-- Display: Ask Level 6 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Ask Level 6 Price: No Value"
  end

  return "Ask Level 6 Price: "..text
end

-- Dissect: Ask Level 6 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_6_price, range, value, "Ask Level 6 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Ask Level 6 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_6_price, range, value, display)

  return offset + length, value
end

-- Ask Level 6 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_volume = {}

-- Size: Ask Level 6 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_volume.size = 9

-- Display: Ask Level 6 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_volume.display = function(value)
  if value == 999999999 then
    return "Ask Level 6 Volume: "..value.." (or more)"
  end

  return "Ask Level 6 Volume: "..value
end

-- Dissect: Ask Level 6 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_6_volume, range, value, "Ask Level 6 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Ask Level 6 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_6_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 7 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_order_counts = {}

-- Size: Ask Level 7 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_order_counts.size = 5

-- Display: Ask Level 7 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_order_counts.display = function(value)
  if value == 99999 then
    return "Ask Level 7 Order Counts: "..value.." (or more)"
  end

  return "Ask Level 7 Order Counts: "..value
end

-- Dissect: Ask Level 7 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_7_order_counts, range, value, "Ask Level 7 Order Counts: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Ask Level 7 Order Counts is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_7_order_counts, range, value, display)

  return offset + length, value
end

-- Ask Level 7 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_price = {}

-- Size: Ask Level 7 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_price.size = 9

-- Display: Ask Level 7 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Ask Level 7 Price: No Value"
  end

  return "Ask Level 7 Price: "..text
end

-- Dissect: Ask Level 7 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_7_price, range, value, "Ask Level 7 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Ask Level 7 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_7_price, range, value, display)

  return offset + length, value
end

-- Ask Level 7 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_volume = {}

-- Size: Ask Level 7 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_volume.size = 9

-- Display: Ask Level 7 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_volume.display = function(value)
  if value == 999999999 then
    return "Ask Level 7 Volume: "..value.." (or more)"
  end

  return "Ask Level 7 Volume: "..value
end

-- Dissect: Ask Level 7 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_7_volume, range, value, "Ask Level 7 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Ask Level 7 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_7_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 8 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_order_counts = {}

-- Size: Ask Level 8 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_order_counts.size = 5

-- Display: Ask Level 8 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_order_counts.display = function(value)
  if value == 99999 then
    return "Ask Level 8 Order Counts: "..value.." (or more)"
  end

  return "Ask Level 8 Order Counts: "..value
end

-- Dissect: Ask Level 8 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_8_order_counts, range, value, "Ask Level 8 Order Counts: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Ask Level 8 Order Counts is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_8_order_counts, range, value, display)

  return offset + length, value
end

-- Ask Level 8 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_price = {}

-- Size: Ask Level 8 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_price.size = 9

-- Display: Ask Level 8 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Ask Level 8 Price: No Value"
  end

  return "Ask Level 8 Price: "..text
end

-- Dissect: Ask Level 8 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_8_price, range, value, "Ask Level 8 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Ask Level 8 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_8_price, range, value, display)

  return offset + length, value
end

-- Ask Level 8 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_volume = {}

-- Size: Ask Level 8 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_volume.size = 9

-- Display: Ask Level 8 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_volume.display = function(value)
  if value == 999999999 then
    return "Ask Level 8 Volume: "..value.." (or more)"
  end

  return "Ask Level 8 Volume: "..value
end

-- Dissect: Ask Level 8 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_8_volume, range, value, "Ask Level 8 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Ask Level 8 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_8_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 9 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_order_counts = {}

-- Size: Ask Level 9 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_order_counts.size = 5

-- Display: Ask Level 9 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_order_counts.display = function(value)
  if value == 99999 then
    return "Ask Level 9 Order Counts: "..value.." (or more)"
  end

  return "Ask Level 9 Order Counts: "..value
end

-- Dissect: Ask Level 9 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_9_order_counts, range, value, "Ask Level 9 Order Counts: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Ask Level 9 Order Counts is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_9_order_counts, range, value, display)

  return offset + length, value
end

-- Ask Level 9 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_price = {}

-- Size: Ask Level 9 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_price.size = 9

-- Display: Ask Level 9 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Ask Level 9 Price: No Value"
  end

  return "Ask Level 9 Price: "..text
end

-- Dissect: Ask Level 9 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_9_price, range, value, "Ask Level 9 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Ask Level 9 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_9_price, range, value, display)

  return offset + length, value
end

-- Ask Level 9 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_volume = {}

-- Size: Ask Level 9 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_volume.size = 9

-- Display: Ask Level 9 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_volume.display = function(value)
  if value == 999999999 then
    return "Ask Level 9 Volume: "..value.." (or more)"
  end

  return "Ask Level 9 Volume: "..value
end

-- Dissect: Ask Level 9 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_9_volume, range, value, "Ask Level 9 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Ask Level 9 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_level_9_volume, range, value, display)

  return offset + length, value
end

-- Ask Price Valid Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_price_valid_counts = {}

-- Size: Ask Price Valid Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_price_valid_counts.size = 5

-- Display: Ask Price Valid Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_price_valid_counts.display = function(value)
  if value == 99999 then
    return "Ask Price Valid Counts: "..value.." (or more)"
  end

  return "Ask Price Valid Counts: "..value
end

-- Dissect: Ask Price Valid Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_price_valid_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_price_valid_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_price_valid_counts, range, value, "Ask Price Valid Counts: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Ask Price Valid Counts is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_price_valid_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_price_valid_counts, range, value, display)

  return offset + length, value
end

-- Ask Total Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_total_volume = {}

-- Size: Ask Total Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_total_volume.size = 9

-- Display: Ask Total Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_total_volume.display = function(value)
  if value == 999999999 then
    return "Ask Total Volume: "..value.." (or more)"
  end

  return "Ask Total Volume: "..value
end

-- Dissect: Ask Total Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_total_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_total_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_total_volume, range, value, "Ask Total Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Ask Total Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_total_volume, range, value, display)

  return offset + length, value
end

-- Ask Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_trading_value = {}

-- Size: Ask Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_trading_value.size = 22

-- Display: Ask Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_trading_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_trading_value.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Ask Trading Value: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Ask Trading Value: "..text.." (expected 3 places)"
  end

  return "Ask Trading Value: "..text
end

-- Dissect: Ask Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_trading_value, range, value, "Ask Trading Value: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Ask Trading Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_trading_value, range, value, display)

  return offset + length, value
end

-- Ask Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_trading_volume = {}

-- Size: Ask Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_trading_volume.size = 10

-- Display: Ask Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_trading_volume.display = function(value)
  return "Ask Trading Volume: "..value
end

-- Dissect: Ask Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_trading_volume, range, value, "Ask Trading Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Ask Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ask_trading_volume, range, value, display)

  return offset + length, value
end

-- Atm
koscom_mdcsrealtime_nightderivatives_exture_v2_020.atm = {}

-- Size: Atm
koscom_mdcsrealtime_nightderivatives_exture_v2_020.atm.size = 11

-- Display: Atm
koscom_mdcsrealtime_nightderivatives_exture_v2_020.atm.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.atm.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Atm: No Value"
  end

  return "Atm: "..text
end

-- Dissect: Atm
koscom_mdcsrealtime_nightderivatives_exture_v2_020.atm.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.atm.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.atm, range, value, "Atm: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Atm is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.atm.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.atm, range, value, display)

  return offset + length, value
end

-- Atm Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.atm_type_code = {}

-- Size: Atm Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.atm_type_code.size = 1

-- Display: Atm Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.atm_type_code.display = function(value)
  return "Atm Type Code: "..value
end

-- Dissect: Atm Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.atm_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.atm_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.atm_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.atm_type_code, range, value, display)

  return offset + length, value
end

-- Base Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_date = {}

-- Size: Base Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_date.size = 8

-- Display: Base Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_date.display = function(value)
  return "Base Date: "..value
end

-- Dissect: Base Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.base_date, range, value, display)

  return offset + length, value
end

-- Base Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price = {}

-- Size: Base Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price.size = 11

-- Display: Base Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Base Price: No Value"
  end

  return "Base Price: "..text
end

-- Dissect: Base Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.base_price, range, value, "Base Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Base Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.base_price, range, value, display)

  return offset + length, value
end

-- Base Price Adjustment Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_adjustment_type_code = {}

-- Size: Base Price Adjustment Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_adjustment_type_code.size = 1

-- Display: Base Price Adjustment Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_adjustment_type_code.display = function(value)
  return "Base Price Adjustment Type Code: "..value
end

-- Dissect: Base Price Adjustment Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_adjustment_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_adjustment_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_adjustment_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.base_price_adjustment_type_code, range, value, display)

  return offset + length, value
end

-- Base Price For Trading Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_for_trading_type_code = {}

-- Size: Base Price For Trading Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_for_trading_type_code.size = 1

-- Display: Base Price For Trading Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_for_trading_type_code.display = function(value)
  return "Base Price For Trading Type Code: "..value
end

-- Dissect: Base Price For Trading Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_for_trading_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_for_trading_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_for_trading_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.base_price_for_trading_type_code, range, value, display)

  return offset + length, value
end

-- Base Price Of Clearing Margins
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_of_clearing_margins = {}

-- Size: Base Price Of Clearing Margins
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_of_clearing_margins.size = 18

-- Display: Base Price Of Clearing Margins
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_of_clearing_margins.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_of_clearing_margins.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Base Price Of Clearing Margins: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 8 then
    return "Base Price Of Clearing Margins: "..text.." (expected 8 places)"
  end

  return "Base Price Of Clearing Margins: "..text
end

-- Dissect: Base Price Of Clearing Margins
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_of_clearing_margins.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_of_clearing_margins.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.base_price_of_clearing_margins, range, value, "Base Price Of Clearing Margins: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Base Price Of Clearing Margins is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_of_clearing_margins.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.base_price_of_clearing_margins, range, value, display)

  return offset + length, value
end

-- Base Price Of Clearing Margins Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_of_clearing_margins_type_code = {}

-- Size: Base Price Of Clearing Margins Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_of_clearing_margins_type_code.size = 2

-- Display: Base Price Of Clearing Margins Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_of_clearing_margins_type_code.display = function(value)
  return "Base Price Of Clearing Margins Type Code: "..value
end

-- Dissect: Base Price Of Clearing Margins Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_of_clearing_margins_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_of_clearing_margins_type_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_of_clearing_margins_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.base_price_of_clearing_margins_type_code, range, value, display)

  return offset + length, value
end

-- Base Price Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_type_code = {}

-- Size: Base Price Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_type_code.size = 2

-- Display: Base Price Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_type_code.display = function(value)
  return "Base Price Type Code: "..value
end

-- Dissect: Base Price Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_type_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.base_price_type_code, range, value, display)

  return offset + length, value
end

-- Base Product Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_product_id = {}

-- Size: Base Product Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_product_id.size = 11

-- Display: Base Product Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_product_id.display = function(value)
  return "Base Product Id: "..value
end

-- Dissect: Base Product Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_product_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_product_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.base_product_id, range, value, display)

  return offset + length, value
end

-- Base Theoretical Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_theoretical_price = {}

-- Size: Base Theoretical Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_theoretical_price.size = 16

-- Display: Base Theoretical Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_theoretical_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_theoretical_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Base Theoretical Price: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Base Theoretical Price: "..text.." (expected 6 places)"
  end

  return "Base Theoretical Price: "..text
end

-- Dissect: Base Theoretical Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_theoretical_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_theoretical_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.base_theoretical_price, range, value, "Base Theoretical Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Base Theoretical Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_theoretical_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.base_theoretical_price, range, value, display)

  return offset + length, value
end

-- Best Favorable Order Permission Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.best_favorable_order_permission_type_code = {}

-- Size: Best Favorable Order Permission Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.best_favorable_order_permission_type_code.size = 5

-- Display: Best Favorable Order Permission Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.best_favorable_order_permission_type_code.display = function(value)
  return "Best Favorable Order Permission Type Code: "..value
end

-- Dissect: Best Favorable Order Permission Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.best_favorable_order_permission_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.best_favorable_order_permission_type_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.best_favorable_order_permission_type_code, range, value, "Best Favorable Order Permission Type Code: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Best Favorable Order Permission Type Code is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.best_favorable_order_permission_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.best_favorable_order_permission_type_code, range, value, display)

  return offset + length, value
end

-- Bid Level 1 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_order_counts = {}

-- Size: Bid Level 1 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_order_counts.size = 5

-- Display: Bid Level 1 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_order_counts.display = function(value)
  if value == 99999 then
    return "Bid Level 1 Order Counts: "..value.." (or more)"
  end

  return "Bid Level 1 Order Counts: "..value
end

-- Dissect: Bid Level 1 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_1_order_counts, range, value, "Bid Level 1 Order Counts: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bid Level 1 Order Counts is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_1_order_counts, range, value, display)

  return offset + length, value
end

-- Bid Level 1 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_price = {}

-- Size: Bid Level 1 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_price.size = 9

-- Display: Bid Level 1 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Bid Level 1 Price: No Value"
  end

  return "Bid Level 1 Price: "..text
end

-- Dissect: Bid Level 1 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_1_price, range, value, "Bid Level 1 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bid Level 1 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_1_price, range, value, display)

  return offset + length, value
end

-- Bid Level 1 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_volume = {}

-- Size: Bid Level 1 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_volume.size = 9

-- Display: Bid Level 1 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_volume.display = function(value)
  if value == 999999999 then
    return "Bid Level 1 Volume: "..value.." (or more)"
  end

  return "Bid Level 1 Volume: "..value
end

-- Dissect: Bid Level 1 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_1_volume, range, value, "Bid Level 1 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bid Level 1 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_1_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 10 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_order_counts = {}

-- Size: Bid Level 10 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_order_counts.size = 5

-- Display: Bid Level 10 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_order_counts.display = function(value)
  if value == 99999 then
    return "Bid Level 10 Order Counts: "..value.." (or more)"
  end

  return "Bid Level 10 Order Counts: "..value
end

-- Dissect: Bid Level 10 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_10_order_counts, range, value, "Bid Level 10 Order Counts: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bid Level 10 Order Counts is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_10_order_counts, range, value, display)

  return offset + length, value
end

-- Bid Level 10 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_price = {}

-- Size: Bid Level 10 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_price.size = 9

-- Display: Bid Level 10 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Bid Level 10 Price: No Value"
  end

  return "Bid Level 10 Price: "..text
end

-- Dissect: Bid Level 10 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_10_price, range, value, "Bid Level 10 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bid Level 10 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_10_price, range, value, display)

  return offset + length, value
end

-- Bid Level 10 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_volume = {}

-- Size: Bid Level 10 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_volume.size = 9

-- Display: Bid Level 10 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_volume.display = function(value)
  if value == 999999999 then
    return "Bid Level 10 Volume: "..value.." (or more)"
  end

  return "Bid Level 10 Volume: "..value
end

-- Dissect: Bid Level 10 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_10_volume, range, value, "Bid Level 10 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bid Level 10 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_10_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 2 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_order_counts = {}

-- Size: Bid Level 2 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_order_counts.size = 5

-- Display: Bid Level 2 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_order_counts.display = function(value)
  if value == 99999 then
    return "Bid Level 2 Order Counts: "..value.." (or more)"
  end

  return "Bid Level 2 Order Counts: "..value
end

-- Dissect: Bid Level 2 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_2_order_counts, range, value, "Bid Level 2 Order Counts: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bid Level 2 Order Counts is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_2_order_counts, range, value, display)

  return offset + length, value
end

-- Bid Level 2 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_price = {}

-- Size: Bid Level 2 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_price.size = 9

-- Display: Bid Level 2 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Bid Level 2 Price: No Value"
  end

  return "Bid Level 2 Price: "..text
end

-- Dissect: Bid Level 2 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_2_price, range, value, "Bid Level 2 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bid Level 2 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_2_price, range, value, display)

  return offset + length, value
end

-- Bid Level 2 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_volume = {}

-- Size: Bid Level 2 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_volume.size = 9

-- Display: Bid Level 2 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_volume.display = function(value)
  if value == 999999999 then
    return "Bid Level 2 Volume: "..value.." (or more)"
  end

  return "Bid Level 2 Volume: "..value
end

-- Dissect: Bid Level 2 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_2_volume, range, value, "Bid Level 2 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bid Level 2 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_2_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 3 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_order_counts = {}

-- Size: Bid Level 3 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_order_counts.size = 5

-- Display: Bid Level 3 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_order_counts.display = function(value)
  if value == 99999 then
    return "Bid Level 3 Order Counts: "..value.." (or more)"
  end

  return "Bid Level 3 Order Counts: "..value
end

-- Dissect: Bid Level 3 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_3_order_counts, range, value, "Bid Level 3 Order Counts: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bid Level 3 Order Counts is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_3_order_counts, range, value, display)

  return offset + length, value
end

-- Bid Level 3 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_price = {}

-- Size: Bid Level 3 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_price.size = 9

-- Display: Bid Level 3 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Bid Level 3 Price: No Value"
  end

  return "Bid Level 3 Price: "..text
end

-- Dissect: Bid Level 3 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_3_price, range, value, "Bid Level 3 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bid Level 3 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_3_price, range, value, display)

  return offset + length, value
end

-- Bid Level 3 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_volume = {}

-- Size: Bid Level 3 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_volume.size = 9

-- Display: Bid Level 3 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_volume.display = function(value)
  if value == 999999999 then
    return "Bid Level 3 Volume: "..value.." (or more)"
  end

  return "Bid Level 3 Volume: "..value
end

-- Dissect: Bid Level 3 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_3_volume, range, value, "Bid Level 3 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bid Level 3 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_3_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 4 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_order_counts = {}

-- Size: Bid Level 4 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_order_counts.size = 5

-- Display: Bid Level 4 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_order_counts.display = function(value)
  if value == 99999 then
    return "Bid Level 4 Order Counts: "..value.." (or more)"
  end

  return "Bid Level 4 Order Counts: "..value
end

-- Dissect: Bid Level 4 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_4_order_counts, range, value, "Bid Level 4 Order Counts: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bid Level 4 Order Counts is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_4_order_counts, range, value, display)

  return offset + length, value
end

-- Bid Level 4 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_price = {}

-- Size: Bid Level 4 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_price.size = 9

-- Display: Bid Level 4 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Bid Level 4 Price: No Value"
  end

  return "Bid Level 4 Price: "..text
end

-- Dissect: Bid Level 4 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_4_price, range, value, "Bid Level 4 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bid Level 4 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_4_price, range, value, display)

  return offset + length, value
end

-- Bid Level 4 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_volume = {}

-- Size: Bid Level 4 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_volume.size = 9

-- Display: Bid Level 4 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_volume.display = function(value)
  if value == 999999999 then
    return "Bid Level 4 Volume: "..value.." (or more)"
  end

  return "Bid Level 4 Volume: "..value
end

-- Dissect: Bid Level 4 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_4_volume, range, value, "Bid Level 4 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bid Level 4 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_4_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 5 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_order_counts = {}

-- Size: Bid Level 5 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_order_counts.size = 5

-- Display: Bid Level 5 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_order_counts.display = function(value)
  if value == 99999 then
    return "Bid Level 5 Order Counts: "..value.." (or more)"
  end

  return "Bid Level 5 Order Counts: "..value
end

-- Dissect: Bid Level 5 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_5_order_counts, range, value, "Bid Level 5 Order Counts: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bid Level 5 Order Counts is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_5_order_counts, range, value, display)

  return offset + length, value
end

-- Bid Level 5 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_price = {}

-- Size: Bid Level 5 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_price.size = 9

-- Display: Bid Level 5 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Bid Level 5 Price: No Value"
  end

  return "Bid Level 5 Price: "..text
end

-- Dissect: Bid Level 5 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_5_price, range, value, "Bid Level 5 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bid Level 5 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_5_price, range, value, display)

  return offset + length, value
end

-- Bid Level 5 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_volume = {}

-- Size: Bid Level 5 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_volume.size = 9

-- Display: Bid Level 5 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_volume.display = function(value)
  if value == 999999999 then
    return "Bid Level 5 Volume: "..value.." (or more)"
  end

  return "Bid Level 5 Volume: "..value
end

-- Dissect: Bid Level 5 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_5_volume, range, value, "Bid Level 5 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bid Level 5 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_5_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 6 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_order_counts = {}

-- Size: Bid Level 6 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_order_counts.size = 5

-- Display: Bid Level 6 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_order_counts.display = function(value)
  if value == 99999 then
    return "Bid Level 6 Order Counts: "..value.." (or more)"
  end

  return "Bid Level 6 Order Counts: "..value
end

-- Dissect: Bid Level 6 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_6_order_counts, range, value, "Bid Level 6 Order Counts: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bid Level 6 Order Counts is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_6_order_counts, range, value, display)

  return offset + length, value
end

-- Bid Level 6 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_price = {}

-- Size: Bid Level 6 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_price.size = 9

-- Display: Bid Level 6 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Bid Level 6 Price: No Value"
  end

  return "Bid Level 6 Price: "..text
end

-- Dissect: Bid Level 6 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_6_price, range, value, "Bid Level 6 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bid Level 6 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_6_price, range, value, display)

  return offset + length, value
end

-- Bid Level 6 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_volume = {}

-- Size: Bid Level 6 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_volume.size = 9

-- Display: Bid Level 6 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_volume.display = function(value)
  if value == 999999999 then
    return "Bid Level 6 Volume: "..value.." (or more)"
  end

  return "Bid Level 6 Volume: "..value
end

-- Dissect: Bid Level 6 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_6_volume, range, value, "Bid Level 6 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bid Level 6 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_6_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 7 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_order_counts = {}

-- Size: Bid Level 7 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_order_counts.size = 5

-- Display: Bid Level 7 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_order_counts.display = function(value)
  if value == 99999 then
    return "Bid Level 7 Order Counts: "..value.." (or more)"
  end

  return "Bid Level 7 Order Counts: "..value
end

-- Dissect: Bid Level 7 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_7_order_counts, range, value, "Bid Level 7 Order Counts: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bid Level 7 Order Counts is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_7_order_counts, range, value, display)

  return offset + length, value
end

-- Bid Level 7 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_price = {}

-- Size: Bid Level 7 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_price.size = 9

-- Display: Bid Level 7 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Bid Level 7 Price: No Value"
  end

  return "Bid Level 7 Price: "..text
end

-- Dissect: Bid Level 7 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_7_price, range, value, "Bid Level 7 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bid Level 7 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_7_price, range, value, display)

  return offset + length, value
end

-- Bid Level 7 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_volume = {}

-- Size: Bid Level 7 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_volume.size = 9

-- Display: Bid Level 7 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_volume.display = function(value)
  if value == 999999999 then
    return "Bid Level 7 Volume: "..value.." (or more)"
  end

  return "Bid Level 7 Volume: "..value
end

-- Dissect: Bid Level 7 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_7_volume, range, value, "Bid Level 7 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bid Level 7 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_7_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 8 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_order_counts = {}

-- Size: Bid Level 8 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_order_counts.size = 5

-- Display: Bid Level 8 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_order_counts.display = function(value)
  if value == 99999 then
    return "Bid Level 8 Order Counts: "..value.." (or more)"
  end

  return "Bid Level 8 Order Counts: "..value
end

-- Dissect: Bid Level 8 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_8_order_counts, range, value, "Bid Level 8 Order Counts: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bid Level 8 Order Counts is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_8_order_counts, range, value, display)

  return offset + length, value
end

-- Bid Level 8 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_price = {}

-- Size: Bid Level 8 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_price.size = 9

-- Display: Bid Level 8 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Bid Level 8 Price: No Value"
  end

  return "Bid Level 8 Price: "..text
end

-- Dissect: Bid Level 8 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_8_price, range, value, "Bid Level 8 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bid Level 8 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_8_price, range, value, display)

  return offset + length, value
end

-- Bid Level 8 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_volume = {}

-- Size: Bid Level 8 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_volume.size = 9

-- Display: Bid Level 8 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_volume.display = function(value)
  if value == 999999999 then
    return "Bid Level 8 Volume: "..value.." (or more)"
  end

  return "Bid Level 8 Volume: "..value
end

-- Dissect: Bid Level 8 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_8_volume, range, value, "Bid Level 8 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bid Level 8 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_8_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 9 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_order_counts = {}

-- Size: Bid Level 9 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_order_counts.size = 5

-- Display: Bid Level 9 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_order_counts.display = function(value)
  if value == 99999 then
    return "Bid Level 9 Order Counts: "..value.." (or more)"
  end

  return "Bid Level 9 Order Counts: "..value
end

-- Dissect: Bid Level 9 Order Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_order_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_order_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_9_order_counts, range, value, "Bid Level 9 Order Counts: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bid Level 9 Order Counts is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_order_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_9_order_counts, range, value, display)

  return offset + length, value
end

-- Bid Level 9 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_price = {}

-- Size: Bid Level 9 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_price.size = 9

-- Display: Bid Level 9 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Bid Level 9 Price: No Value"
  end

  return "Bid Level 9 Price: "..text
end

-- Dissect: Bid Level 9 Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_9_price, range, value, "Bid Level 9 Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bid Level 9 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_9_price, range, value, display)

  return offset + length, value
end

-- Bid Level 9 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_volume = {}

-- Size: Bid Level 9 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_volume.size = 9

-- Display: Bid Level 9 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_volume.display = function(value)
  if value == 999999999 then
    return "Bid Level 9 Volume: "..value.." (or more)"
  end

  return "Bid Level 9 Volume: "..value
end

-- Dissect: Bid Level 9 Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_9_volume, range, value, "Bid Level 9 Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bid Level 9 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_level_9_volume, range, value, display)

  return offset + length, value
end

-- Bid Price Valid Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_price_valid_counts = {}

-- Size: Bid Price Valid Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_price_valid_counts.size = 5

-- Display: Bid Price Valid Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_price_valid_counts.display = function(value)
  if value == 99999 then
    return "Bid Price Valid Counts: "..value.." (or more)"
  end

  return "Bid Price Valid Counts: "..value
end

-- Dissect: Bid Price Valid Counts
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_price_valid_counts.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_price_valid_counts.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_price_valid_counts, range, value, "Bid Price Valid Counts: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bid Price Valid Counts is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_price_valid_counts.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_price_valid_counts, range, value, display)

  return offset + length, value
end

-- Bid Total Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_total_volume = {}

-- Size: Bid Total Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_total_volume.size = 9

-- Display: Bid Total Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_total_volume.display = function(value)
  if value == 999999999 then
    return "Bid Total Volume: "..value.." (or more)"
  end

  return "Bid Total Volume: "..value
end

-- Dissect: Bid Total Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_total_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_total_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_total_volume, range, value, "Bid Total Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bid Total Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_total_volume, range, value, display)

  return offset + length, value
end

-- Bid Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_trading_value = {}

-- Size: Bid Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_trading_value.size = 22

-- Display: Bid Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_trading_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_trading_value.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Bid Trading Value: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Bid Trading Value: "..text.." (expected 3 places)"
  end

  return "Bid Trading Value: "..text
end

-- Dissect: Bid Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_trading_value, range, value, "Bid Trading Value: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bid Trading Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_trading_value, range, value, display)

  return offset + length, value
end

-- Bid Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_trading_volume = {}

-- Size: Bid Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_trading_volume.size = 10

-- Display: Bid Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_trading_volume.display = function(value)
  return "Bid Trading Volume: "..value
end

-- Dissect: Bid Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_trading_volume, range, value, "Bid Trading Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bid Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bid_trading_volume, range, value, display)

  return offset + length, value
end

-- Bis Announcement Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bis_announcement_date = {}

-- Size: Bis Announcement Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bis_announcement_date.size = 8

-- Display: Bis Announcement Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bis_announcement_date.display = function(value)
  return "Bis Announcement Date: "..value
end

-- Dissect: Bis Announcement Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bis_announcement_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bis_announcement_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bis_announcement_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bis_announcement_date, range, value, display)

  return offset + length, value
end

-- Bis Announcement Time
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bis_announcement_time = {}

-- Size: Bis Announcement Time
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bis_announcement_time.size = 6

-- Display: Bis Announcement Time
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bis_announcement_time.display = function(value)
  if #value < 6 then
    return "Bis Announcement Time: "..value
  end

  return "Bis Announcement Time: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Bis Announcement Time
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bis_announcement_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bis_announcement_time.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bis_announcement_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bis_announcement_time, range, value, display)

  return offset + length, value
end

-- Bis Time Of Inputting Yield Rate
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bis_time_of_inputting_yield_rate = {}

-- Size: Bis Time Of Inputting Yield Rate
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bis_time_of_inputting_yield_rate.size = 4

-- Display: Bis Time Of Inputting Yield Rate
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bis_time_of_inputting_yield_rate.display = function(value)
  if #value < 4 then
    return "Bis Time Of Inputting Yield Rate: "..value
  end

  local hour = value:sub(1, 2)
  local minute = value:sub(3, 4)

  if minute:match("^%s*$") then
    return "Bis Time Of Inputting Yield Rate: "..hour
  end

  return "Bis Time Of Inputting Yield Rate: "..hour..":"..minute
end

-- Dissect: Bis Time Of Inputting Yield Rate
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bis_time_of_inputting_yield_rate.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bis_time_of_inputting_yield_rate.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bis_time_of_inputting_yield_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bis_time_of_inputting_yield_rate, range, value, display)

  return offset + length, value
end

-- Bis Yield Ratio
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bis_yield_ratio = {}

-- Size: Bis Yield Ratio
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bis_yield_ratio.size = 9

-- Display: Bis Yield Ratio
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bis_yield_ratio.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.bis_yield_ratio.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Bis Yield Ratio: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 5 then
    return "Bis Yield Ratio: "..text.." (expected 5 places)"
  end

  return "Bis Yield Ratio: "..text
end

-- Dissect: Bis Yield Ratio
koscom_mdcsrealtime_nightderivatives_exture_v2_020.bis_yield_ratio.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bis_yield_ratio.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bis_yield_ratio, range, value, "Bis Yield Ratio: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Bis Yield Ratio is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bis_yield_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.bis_yield_ratio, range, value, display)

  return offset + length, value
end

-- Block Trading Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.block_trading_type_code = {}

-- Size: Block Trading Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.block_trading_type_code.size = 1

-- Display: Block Trading Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.block_trading_type_code.display = function(value)
  return "Block Trading Type Code: "..value
end

-- Dissect: Block Trading Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.block_trading_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.block_trading_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.block_trading_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.block_trading_type_code, range, value, display)

  return offset + length, value
end

-- Board Event Group Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_group_code = {}

-- Size: Board Event Group Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_group_code.size = 5

-- Display: Board Event Group Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_group_code.display = function(value)
  return "Board Event Group Code: "..value
end

-- Dissect: Board Event Group Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_group_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_group_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.board_event_group_code, range, value, "Board Event Group Code: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Board Event Group Code is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_group_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.board_event_group_code, range, value, display)

  return offset + length, value
end

-- Board Event Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_id = {}

-- Size: Board Event Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_id.size = 3

-- Display: Board Event Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_id.display = function(value)
  return "Board Event Id: "..value
end

-- Dissect: Board Event Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.board_event_id, range, value, display)

  return offset + length, value
end

-- Board Event Processing Time
koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_processing_time = {}

-- Size: Board Event Processing Time
koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_processing_time.size = 9

-- Display: Board Event Processing Time
koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_processing_time.display = function(value)
  return "Board Event Processing Time: "..value
end

-- Dissect: Board Event Processing Time
koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_processing_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_processing_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_processing_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.board_event_processing_time, range, value, display)

  return offset + length, value
end

-- Board Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id = {}

-- Size: Board Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.size = 2

-- Display: Board Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.display = function(value)
  return "Board Id: "..value
end

-- Dissect: Board Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.board_id, range, value, display)

  return offset + length, value
end

-- Business Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.business_date = {}

-- Size: Business Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.business_date.size = 8

-- Display: Business Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.business_date.display = function(value)
  return "Business Date: "..value
end

-- Dissect: Business Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.business_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.business_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.business_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.business_date, range, value, display)

  return offset + length, value
end

-- Calculating Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.calculating_date = {}

-- Size: Calculating Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.calculating_date.size = 8

-- Display: Calculating Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.calculating_date.display = function(value)
  return "Calculating Date: "..value
end

-- Dissect: Calculating Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.calculating_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.calculating_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.calculating_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.calculating_date, range, value, display)

  return offset + length, value
end

-- Calculation Time Activities
koscom_mdcsrealtime_nightderivatives_exture_v2_020.calculation_time_activities = {}

-- Size: Calculation Time Activities
koscom_mdcsrealtime_nightderivatives_exture_v2_020.calculation_time_activities.size = 6

-- Display: Calculation Time Activities
koscom_mdcsrealtime_nightderivatives_exture_v2_020.calculation_time_activities.display = function(value)
  if #value < 6 then
    return "Calculation Time Activities: "..value
  end

  return "Calculation Time Activities: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Calculation Time Activities
koscom_mdcsrealtime_nightderivatives_exture_v2_020.calculation_time_activities.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.calculation_time_activities.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.calculation_time_activities.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.calculation_time_activities, range, value, display)

  return offset + length, value
end

-- Calculation Time Sensitivity
koscom_mdcsrealtime_nightderivatives_exture_v2_020.calculation_time_sensitivity = {}

-- Size: Calculation Time Sensitivity
koscom_mdcsrealtime_nightderivatives_exture_v2_020.calculation_time_sensitivity.size = 9

-- Display: Calculation Time Sensitivity
koscom_mdcsrealtime_nightderivatives_exture_v2_020.calculation_time_sensitivity.display = function(value)
  return "Calculation Time Sensitivity: "..value
end

-- Dissect: Calculation Time Sensitivity
koscom_mdcsrealtime_nightderivatives_exture_v2_020.calculation_time_sensitivity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.calculation_time_sensitivity.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.calculation_time_sensitivity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.calculation_time_sensitivity, range, value, display)

  return offset + length, value
end

-- Call Averaged Implied Volatility
koscom_mdcsrealtime_nightderivatives_exture_v2_020.call_averaged_implied_volatility = {}

-- Size: Call Averaged Implied Volatility
koscom_mdcsrealtime_nightderivatives_exture_v2_020.call_averaged_implied_volatility.size = 11

-- Display: Call Averaged Implied Volatility
koscom_mdcsrealtime_nightderivatives_exture_v2_020.call_averaged_implied_volatility.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.call_averaged_implied_volatility.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Call Averaged Implied Volatility: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 4 then
    return "Call Averaged Implied Volatility: "..text.." (expected 4 places)"
  end

  return "Call Averaged Implied Volatility: "..text
end

-- Dissect: Call Averaged Implied Volatility
koscom_mdcsrealtime_nightderivatives_exture_v2_020.call_averaged_implied_volatility.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.call_averaged_implied_volatility.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.call_averaged_implied_volatility, range, value, "Call Averaged Implied Volatility: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Call Averaged Implied Volatility is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.call_averaged_implied_volatility.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.call_averaged_implied_volatility, range, value, display)

  return offset + length, value
end

-- Closing Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.closing_price = {}

-- Size: Closing Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.closing_price.size = 9

-- Display: Closing Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.closing_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.closing_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Closing Price: No Value"
  end

  return "Closing Price: "..text
end

-- Dissect: Closing Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.closing_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.closing_price, range, value, "Closing Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Closing Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Closing Price Of Underlying Asset
koscom_mdcsrealtime_nightderivatives_exture_v2_020.closing_price_of_underlying_asset = {}

-- Size: Closing Price Of Underlying Asset
koscom_mdcsrealtime_nightderivatives_exture_v2_020.closing_price_of_underlying_asset.size = 11

-- Display: Closing Price Of Underlying Asset
koscom_mdcsrealtime_nightderivatives_exture_v2_020.closing_price_of_underlying_asset.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.closing_price_of_underlying_asset.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Closing Price Of Underlying Asset: No Value"
  end

  return "Closing Price Of Underlying Asset: "..text
end

-- Dissect: Closing Price Of Underlying Asset
koscom_mdcsrealtime_nightderivatives_exture_v2_020.closing_price_of_underlying_asset.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.closing_price_of_underlying_asset.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.closing_price_of_underlying_asset, range, value, "Closing Price Of Underlying Asset: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Closing Price Of Underlying Asset is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.closing_price_of_underlying_asset.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.closing_price_of_underlying_asset, range, value, display)

  return offset + length, value
end

-- Closing Price Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.closing_price_type_code = {}

-- Size: Closing Price Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.closing_price_type_code.size = 1

-- Display: Closing Price Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.closing_price_type_code.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Closing Price Type Code: No Value"
  end

  return "Closing Price Type Code: "..value
end

-- Dissect: Closing Price Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.closing_price_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.closing_price_type_code.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding)
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.closing_price_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.closing_price_type_code, range, value, display)

  return offset + length, value
end

-- Conditioned Order Permission Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.conditioned_order_permission_type_code = {}

-- Size: Conditioned Order Permission Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.conditioned_order_permission_type_code.size = 5

-- Display: Conditioned Order Permission Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.conditioned_order_permission_type_code.display = function(value)
  return "Conditioned Order Permission Type Code: "..value
end

-- Dissect: Conditioned Order Permission Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.conditioned_order_permission_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.conditioned_order_permission_type_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.conditioned_order_permission_type_code, range, value, "Conditioned Order Permission Type Code: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Conditioned Order Permission Type Code is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.conditioned_order_permission_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.conditioned_order_permission_type_code, range, value, display)

  return offset + length, value
end

-- Conversion Factor
koscom_mdcsrealtime_nightderivatives_exture_v2_020.conversion_factor = {}

-- Size: Conversion Factor
koscom_mdcsrealtime_nightderivatives_exture_v2_020.conversion_factor.size = 22

-- Display: Conversion Factor
koscom_mdcsrealtime_nightderivatives_exture_v2_020.conversion_factor.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.conversion_factor.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Conversion Factor: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 8 then
    return "Conversion Factor: "..text.." (expected 8 places)"
  end

  return "Conversion Factor: "..text
end

-- Dissect: Conversion Factor
koscom_mdcsrealtime_nightderivatives_exture_v2_020.conversion_factor.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.conversion_factor.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.conversion_factor, range, value, "Conversion Factor: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Conversion Factor is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.conversion_factor.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.conversion_factor, range, value, display)

  return offset + length, value
end

-- Current Time 1 Minute Interval
koscom_mdcsrealtime_nightderivatives_exture_v2_020.current_time_1_minute_interval = {}

-- Size: Current Time 1 Minute Interval
koscom_mdcsrealtime_nightderivatives_exture_v2_020.current_time_1_minute_interval.size = 4

-- Display: Current Time 1 Minute Interval
koscom_mdcsrealtime_nightderivatives_exture_v2_020.current_time_1_minute_interval.display = function(value)
  if #value < 4 then
    return "Current Time 1 Minute Interval: "..value
  end

  local hour = value:sub(1, 2)
  local minute = value:sub(3, 4)

  if minute:match("^%s*$") then
    return "Current Time 1 Minute Interval: "..hour
  end

  return "Current Time 1 Minute Interval: "..hour..":"..minute
end

-- Dissect: Current Time 1 Minute Interval
koscom_mdcsrealtime_nightderivatives_exture_v2_020.current_time_1_minute_interval.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.current_time_1_minute_interval.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.current_time_1_minute_interval.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.current_time_1_minute_interval, range, value, display)

  return offset + length, value
end

-- Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.date = {}

-- Size: Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.date.size = 8

-- Display: Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.date.display = function(value)
  return "Date: "..value
end

-- Dissect: Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.date, range, value, display)

  return offset + length, value
end

-- Delisting Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.delisting_date = {}

-- Size: Delisting Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.delisting_date.size = 8

-- Display: Delisting Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.delisting_date.display = function(value)
  return "Delisting Date: "..value
end

-- Dissect: Delisting Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.delisting_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.delisting_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.delisting_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.delisting_date, range, value, display)

  return offset + length, value
end

-- Denominator Coefficient Of Adjustment
koscom_mdcsrealtime_nightderivatives_exture_v2_020.denominator_coefficient_of_adjustment = {}

-- Size: Denominator Coefficient Of Adjustment
koscom_mdcsrealtime_nightderivatives_exture_v2_020.denominator_coefficient_of_adjustment.size = 18

-- Display: Denominator Coefficient Of Adjustment
koscom_mdcsrealtime_nightderivatives_exture_v2_020.denominator_coefficient_of_adjustment.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.denominator_coefficient_of_adjustment.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Denominator Coefficient Of Adjustment: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 8 then
    return "Denominator Coefficient Of Adjustment: "..text.." (expected 8 places)"
  end

  return "Denominator Coefficient Of Adjustment: "..text
end

-- Dissect: Denominator Coefficient Of Adjustment
koscom_mdcsrealtime_nightderivatives_exture_v2_020.denominator_coefficient_of_adjustment.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.denominator_coefficient_of_adjustment.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.denominator_coefficient_of_adjustment, range, value, "Denominator Coefficient Of Adjustment: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Denominator Coefficient Of Adjustment is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.denominator_coefficient_of_adjustment.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.denominator_coefficient_of_adjustment, range, value, display)

  return offset + length, value
end

-- Designation Date For Suspended Stocks
koscom_mdcsrealtime_nightderivatives_exture_v2_020.designation_date_for_suspended_stocks = {}

-- Size: Designation Date For Suspended Stocks
koscom_mdcsrealtime_nightderivatives_exture_v2_020.designation_date_for_suspended_stocks.size = 8

-- Display: Designation Date For Suspended Stocks
koscom_mdcsrealtime_nightderivatives_exture_v2_020.designation_date_for_suspended_stocks.display = function(value)
  return "Designation Date For Suspended Stocks: "..value
end

-- Dissect: Designation Date For Suspended Stocks
koscom_mdcsrealtime_nightderivatives_exture_v2_020.designation_date_for_suspended_stocks.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.designation_date_for_suspended_stocks.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.designation_date_for_suspended_stocks.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.designation_date_for_suspended_stocks, range, value, display)

  return offset + length, value
end

-- Direction Of Price Limit Expansion Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.direction_of_price_limit_expansion_type_code = {}

-- Size: Direction Of Price Limit Expansion Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.direction_of_price_limit_expansion_type_code.size = 1

-- Display: Direction Of Price Limit Expansion Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.direction_of_price_limit_expansion_type_code.display = function(value)
  return "Direction Of Price Limit Expansion Type Code: "..value
end

-- Dissect: Direction Of Price Limit Expansion Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.direction_of_price_limit_expansion_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.direction_of_price_limit_expansion_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.direction_of_price_limit_expansion_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.direction_of_price_limit_expansion_type_code, range, value, display)

  return offset + length, value
end

-- Disclosure Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.disclosure_date = {}

-- Size: Disclosure Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.disclosure_date.size = 14

-- Display: Disclosure Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.disclosure_date.display = function(value)
  return "Disclosure Date: "..value
end

-- Dissect: Disclosure Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.disclosure_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.disclosure_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.disclosure_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.disclosure_date, range, value, display)

  return offset + length, value
end

-- Disclosure Type
koscom_mdcsrealtime_nightderivatives_exture_v2_020.disclosure_type = {}

-- Size: Disclosure Type
koscom_mdcsrealtime_nightderivatives_exture_v2_020.disclosure_type.size = 2

-- Display: Disclosure Type
koscom_mdcsrealtime_nightderivatives_exture_v2_020.disclosure_type.display = function(value)
  return "Disclosure Type: "..value
end

-- Dissect: Disclosure Type
koscom_mdcsrealtime_nightderivatives_exture_v2_020.disclosure_type.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.disclosure_type.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.disclosure_type, range, value, "Disclosure Type: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Disclosure Type is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.disclosure_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.disclosure_type, range, value, display)

  return offset + length, value
end

-- Disparate Ratio
koscom_mdcsrealtime_nightderivatives_exture_v2_020.disparate_ratio = {}

-- Size: Disparate Ratio
koscom_mdcsrealtime_nightderivatives_exture_v2_020.disparate_ratio.size = 13

-- Display: Disparate Ratio
koscom_mdcsrealtime_nightderivatives_exture_v2_020.disparate_ratio.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.disparate_ratio.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Disparate Ratio: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Disparate Ratio: "..text.." (expected 6 places)"
  end

  return "Disparate Ratio: "..text
end

-- Dissect: Disparate Ratio
koscom_mdcsrealtime_nightderivatives_exture_v2_020.disparate_ratio.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.disparate_ratio.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.disparate_ratio, range, value, "Disparate Ratio: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Disparate Ratio is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.disparate_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.disparate_ratio, range, value, display)

  return offset + length, value
end

-- Distant Month Contract Trading Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.distant_month_contract_trading_price = {}

-- Size: Distant Month Contract Trading Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.distant_month_contract_trading_price.size = 9

-- Display: Distant Month Contract Trading Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.distant_month_contract_trading_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.distant_month_contract_trading_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Distant Month Contract Trading Price: No Value"
  end

  return "Distant Month Contract Trading Price: "..text
end

-- Dissect: Distant Month Contract Trading Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.distant_month_contract_trading_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.distant_month_contract_trading_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.distant_month_contract_trading_price, range, value, "Distant Month Contract Trading Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Distant Month Contract Trading Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.distant_month_contract_trading_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.distant_month_contract_trading_price, range, value, display)

  return offset + length, value
end

-- Dividend Value For Settlement Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.dividend_value_for_settlement_price = {}

-- Size: Dividend Value For Settlement Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.dividend_value_for_settlement_price.size = 16

-- Display: Dividend Value For Settlement Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.dividend_value_for_settlement_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.dividend_value_for_settlement_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Dividend Value For Settlement Price: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Dividend Value For Settlement Price: "..text.." (expected 6 places)"
  end

  return "Dividend Value For Settlement Price: "..text
end

-- Dissect: Dividend Value For Settlement Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.dividend_value_for_settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.dividend_value_for_settlement_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.dividend_value_for_settlement_price, range, value, "Dividend Value For Settlement Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Dividend Value For Settlement Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.dividend_value_for_settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.dividend_value_for_settlement_price, range, value, display)

  return offset + length, value
end

-- Dynamic Price Limit Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.dynamic_price_limit_type_code = {}

-- Size: Dynamic Price Limit Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.dynamic_price_limit_type_code.size = 1

-- Display: Dynamic Price Limit Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.dynamic_price_limit_type_code.display = function(value)
  return "Dynamic Price Limit Type Code: "..value
end

-- Dissect: Dynamic Price Limit Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.dynamic_price_limit_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.dynamic_price_limit_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.dynamic_price_limit_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.dynamic_price_limit_type_code, range, value, display)

  return offset + length, value
end

-- Efp Trading Item
koscom_mdcsrealtime_nightderivatives_exture_v2_020.efp_trading_item = {}

-- Size: Efp Trading Item
koscom_mdcsrealtime_nightderivatives_exture_v2_020.efp_trading_item.size = 1

-- Display: Efp Trading Item
koscom_mdcsrealtime_nightderivatives_exture_v2_020.efp_trading_item.display = function(value)
  return "Efp Trading Item: "..value
end

-- Dissect: Efp Trading Item
koscom_mdcsrealtime_nightderivatives_exture_v2_020.efp_trading_item.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.efp_trading_item.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.efp_trading_item.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.efp_trading_item, range, value, display)

  return offset + length, value
end

-- Efp Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.efp_trading_value = {}

-- Size: Efp Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.efp_trading_value.size = 22

-- Display: Efp Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.efp_trading_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.efp_trading_value.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Efp Trading Value: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Efp Trading Value: "..text.." (expected 3 places)"
  end

  return "Efp Trading Value: "..text
end

-- Dissect: Efp Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.efp_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.efp_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.efp_trading_value, range, value, "Efp Trading Value: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Efp Trading Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.efp_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.efp_trading_value, range, value, display)

  return offset + length, value
end

-- Efp Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.efp_trading_volume = {}

-- Size: Efp Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.efp_trading_volume.size = 12

-- Display: Efp Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.efp_trading_volume.display = function(value)
  return "Efp Trading Volume: "..value
end

-- Dissect: Efp Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.efp_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.efp_trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.efp_trading_volume, range, value, "Efp Trading Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Efp Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.efp_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.efp_trading_volume, range, value, display)

  return offset + length, value
end

-- End Keyword
koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword = {}

-- Size: End Keyword
koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.size = 1

-- Display: End Keyword
koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.labels = {
  [255] = "End Keyword: End Of Message (255)",
}

koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.display = function(value)
  return koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.labels[value] or "End Keyword: Unknown("..value..")"
end

-- Dissect: End Keyword
koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.end_keyword, range, value, display)

  return offset + length, value
end

-- English Issue Name
koscom_mdcsrealtime_nightderivatives_exture_v2_020.english_issue_name = {}

-- Size: English Issue Name
koscom_mdcsrealtime_nightderivatives_exture_v2_020.english_issue_name.size = 80

-- Display: English Issue Name
koscom_mdcsrealtime_nightderivatives_exture_v2_020.english_issue_name.display = function(value)
  return "English Issue Name: "..value
end

-- Dissect: English Issue Name
koscom_mdcsrealtime_nightderivatives_exture_v2_020.english_issue_name.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.english_issue_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.english_issue_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.english_issue_name, range, value, display)

  return offset + length, value
end

-- Estimated Trading Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_price = {}

-- Size: Estimated Trading Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_price.size = 9

-- Display: Estimated Trading Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Estimated Trading Price: No Value"
  end

  return "Estimated Trading Price: "..text
end

-- Dissect: Estimated Trading Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.estimated_trading_price, range, value, "Estimated Trading Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Estimated Trading Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.estimated_trading_price, range, value, display)

  return offset + length, value
end

-- Estimated Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_volume = {}

-- Size: Estimated Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_volume.size = 9

-- Display: Estimated Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_volume.display = function(value)
  return "Estimated Trading Volume: "..value
end

-- Dissect: Estimated Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.estimated_trading_volume, range, value, "Estimated Trading Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Estimated Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.estimated_trading_volume, range, value, display)

  return offset + length, value
end

-- Exercise Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price = {}

-- Size: Exercise Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price.size = 18

-- Display: Exercise Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Exercise Price: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 8 then
    return "Exercise Price: "..text.." (expected 8 places)"
  end

  return "Exercise Price: "..text
end

-- Dissect: Exercise Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.exercise_price, range, value, "Exercise Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Exercise Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.exercise_price, range, value, display)

  return offset + length, value
end

-- Exercise Price After Adjustment
koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price_after_adjustment = {}

-- Size: Exercise Price After Adjustment
koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price_after_adjustment.size = 18

-- Display: Exercise Price After Adjustment
koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price_after_adjustment.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price_after_adjustment.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Exercise Price After Adjustment: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 8 then
    return "Exercise Price After Adjustment: "..text.." (expected 8 places)"
  end

  return "Exercise Price After Adjustment: "..text
end

-- Dissect: Exercise Price After Adjustment
koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price_after_adjustment.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price_after_adjustment.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.exercise_price_after_adjustment, range, value, "Exercise Price After Adjustment: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Exercise Price After Adjustment is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price_after_adjustment.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.exercise_price_after_adjustment, range, value, display)

  return offset + length, value
end

-- Exercise Price Before Adjustment
koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price_before_adjustment = {}

-- Size: Exercise Price Before Adjustment
koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price_before_adjustment.size = 18

-- Display: Exercise Price Before Adjustment
koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price_before_adjustment.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price_before_adjustment.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Exercise Price Before Adjustment: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 8 then
    return "Exercise Price Before Adjustment: "..text.." (expected 8 places)"
  end

  return "Exercise Price Before Adjustment: "..text
end

-- Dissect: Exercise Price Before Adjustment
koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price_before_adjustment.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price_before_adjustment.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.exercise_price_before_adjustment, range, value, "Exercise Price Before Adjustment: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Exercise Price Before Adjustment is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price_before_adjustment.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.exercise_price_before_adjustment, range, value, display)

  return offset + length, value
end

-- Exercise Price For Displaying Not For Trading
koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price_for_displaying_not_for_trading = {}

-- Size: Exercise Price For Displaying Not For Trading
koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price_for_displaying_not_for_trading.size = 18

-- Display: Exercise Price For Displaying Not For Trading
koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price_for_displaying_not_for_trading.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price_for_displaying_not_for_trading.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Exercise Price For Displaying Not For Trading: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 8 then
    return "Exercise Price For Displaying Not For Trading: "..text.." (expected 8 places)"
  end

  return "Exercise Price For Displaying Not For Trading: "..text
end

-- Dissect: Exercise Price For Displaying Not For Trading
koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price_for_displaying_not_for_trading.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price_for_displaying_not_for_trading.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.exercise_price_for_displaying_not_for_trading, range, value, "Exercise Price For Displaying Not For Trading: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Exercise Price For Displaying Not For Trading is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price_for_displaying_not_for_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.exercise_price_for_displaying_not_for_trading, range, value, display)

  return offset + length, value
end

-- Expected Time Of Expanding Price Limit Range
koscom_mdcsrealtime_nightderivatives_exture_v2_020.expected_time_of_expanding_price_limit_range = {}

-- Size: Expected Time Of Expanding Price Limit Range
koscom_mdcsrealtime_nightderivatives_exture_v2_020.expected_time_of_expanding_price_limit_range.size = 9

-- Display: Expected Time Of Expanding Price Limit Range
koscom_mdcsrealtime_nightderivatives_exture_v2_020.expected_time_of_expanding_price_limit_range.display = function(value)
  return "Expected Time Of Expanding Price Limit Range: "..value
end

-- Dissect: Expected Time Of Expanding Price Limit Range
koscom_mdcsrealtime_nightderivatives_exture_v2_020.expected_time_of_expanding_price_limit_range.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.expected_time_of_expanding_price_limit_range.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.expected_time_of_expanding_price_limit_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.expected_time_of_expanding_price_limit_range, range, value, display)

  return offset + length, value
end

-- Expiration Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.expiration_date = {}

-- Size: Expiration Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.expiration_date.size = 8

-- Display: Expiration Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.expiration_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Final Ask Bid Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.final_ask_bid_type_code = {}

-- Size: Final Ask Bid Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.final_ask_bid_type_code.size = 1

-- Display: Final Ask Bid Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.final_ask_bid_type_code.display = function(value)
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
koscom_mdcsrealtime_nightderivatives_exture_v2_020.final_ask_bid_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.final_ask_bid_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.final_ask_bid_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.final_ask_bid_type_code, range, value, display)

  return offset + length, value
end

-- Final Stage Of Price Limit Expansion
koscom_mdcsrealtime_nightderivatives_exture_v2_020.final_stage_of_price_limit_expansion = {}

-- Size: Final Stage Of Price Limit Expansion
koscom_mdcsrealtime_nightderivatives_exture_v2_020.final_stage_of_price_limit_expansion.size = 3

-- Display: Final Stage Of Price Limit Expansion
koscom_mdcsrealtime_nightderivatives_exture_v2_020.final_stage_of_price_limit_expansion.display = function(value)
  return "Final Stage Of Price Limit Expansion: "..value
end

-- Dissect: Final Stage Of Price Limit Expansion
koscom_mdcsrealtime_nightderivatives_exture_v2_020.final_stage_of_price_limit_expansion.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.final_stage_of_price_limit_expansion.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.final_stage_of_price_limit_expansion, range, value, "Final Stage Of Price Limit Expansion: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Final Stage Of Price Limit Expansion is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.final_stage_of_price_limit_expansion.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.final_stage_of_price_limit_expansion, range, value, display)

  return offset + length, value
end

-- Flex Trading Item
koscom_mdcsrealtime_nightderivatives_exture_v2_020.flex_trading_item = {}

-- Size: Flex Trading Item
koscom_mdcsrealtime_nightderivatives_exture_v2_020.flex_trading_item.size = 1

-- Display: Flex Trading Item
koscom_mdcsrealtime_nightderivatives_exture_v2_020.flex_trading_item.display = function(value)
  return "Flex Trading Item: "..value
end

-- Dissect: Flex Trading Item
koscom_mdcsrealtime_nightderivatives_exture_v2_020.flex_trading_item.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.flex_trading_item.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.flex_trading_item.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.flex_trading_item, range, value, display)

  return offset + length, value
end

-- Futures Circuit Breakers Lower Limit Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_circuit_breakers_lower_limit_price = {}

-- Size: Futures Circuit Breakers Lower Limit Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_circuit_breakers_lower_limit_price.size = 11

-- Display: Futures Circuit Breakers Lower Limit Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_circuit_breakers_lower_limit_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_circuit_breakers_lower_limit_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Futures Circuit Breakers Lower Limit Price: No Value"
  end

  return "Futures Circuit Breakers Lower Limit Price: "..text
end

-- Dissect: Futures Circuit Breakers Lower Limit Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_circuit_breakers_lower_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_circuit_breakers_lower_limit_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.futures_circuit_breakers_lower_limit_price, range, value, "Futures Circuit Breakers Lower Limit Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Futures Circuit Breakers Lower Limit Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_circuit_breakers_lower_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.futures_circuit_breakers_lower_limit_price, range, value, display)

  return offset + length, value
end

-- Futures Circuit Breakers Upper Limit Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_circuit_breakers_upper_limit_price = {}

-- Size: Futures Circuit Breakers Upper Limit Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_circuit_breakers_upper_limit_price.size = 11

-- Display: Futures Circuit Breakers Upper Limit Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_circuit_breakers_upper_limit_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_circuit_breakers_upper_limit_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Futures Circuit Breakers Upper Limit Price: No Value"
  end

  return "Futures Circuit Breakers Upper Limit Price: "..text
end

-- Dissect: Futures Circuit Breakers Upper Limit Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_circuit_breakers_upper_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_circuit_breakers_upper_limit_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.futures_circuit_breakers_upper_limit_price, range, value, "Futures Circuit Breakers Upper Limit Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Futures Circuit Breakers Upper Limit Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_circuit_breakers_upper_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.futures_circuit_breakers_upper_limit_price, range, value, display)

  return offset + length, value
end

-- Futures Options Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_options_type_code = {}

-- Size: Futures Options Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_options_type_code.size = 1

-- Display: Futures Options Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_options_type_code.display = function(value)
  return "Futures Options Type Code: "..value
end

-- Dissect: Futures Options Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_options_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_options_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_options_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.futures_options_type_code, range, value, display)

  return offset + length, value
end

-- Gap Between Lower Limit Price Of Dynamic Price And Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.gap_between_lower_limit_price_of_dynamic_price_and_trading_value = {}

-- Size: Gap Between Lower Limit Price Of Dynamic Price And Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.gap_between_lower_limit_price_of_dynamic_price_and_trading_value.size = 11

-- Display: Gap Between Lower Limit Price Of Dynamic Price And Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.gap_between_lower_limit_price_of_dynamic_price_and_trading_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.gap_between_lower_limit_price_of_dynamic_price_and_trading_value.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Gap Between Lower Limit Price Of Dynamic Price And Trading Value: No Value"
  end

  return "Gap Between Lower Limit Price Of Dynamic Price And Trading Value: "..text
end

-- Dissect: Gap Between Lower Limit Price Of Dynamic Price And Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.gap_between_lower_limit_price_of_dynamic_price_and_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.gap_between_lower_limit_price_of_dynamic_price_and_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.gap_between_lower_limit_price_of_dynamic_price_and_trading_value, range, value, "Gap Between Lower Limit Price Of Dynamic Price And Trading Value: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Gap Between Lower Limit Price Of Dynamic Price And Trading Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.gap_between_lower_limit_price_of_dynamic_price_and_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.gap_between_lower_limit_price_of_dynamic_price_and_trading_value, range, value, display)

  return offset + length, value
end

-- Gap Between Upper Limit Price Of Dynamic Price And Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.gap_between_upper_limit_price_of_dynamic_price_and_trading_value = {}

-- Size: Gap Between Upper Limit Price Of Dynamic Price And Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.gap_between_upper_limit_price_of_dynamic_price_and_trading_value.size = 11

-- Display: Gap Between Upper Limit Price Of Dynamic Price And Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.gap_between_upper_limit_price_of_dynamic_price_and_trading_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.gap_between_upper_limit_price_of_dynamic_price_and_trading_value.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Gap Between Upper Limit Price Of Dynamic Price And Trading Value: No Value"
  end

  return "Gap Between Upper Limit Price Of Dynamic Price And Trading Value: "..text
end

-- Dissect: Gap Between Upper Limit Price Of Dynamic Price And Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.gap_between_upper_limit_price_of_dynamic_price_and_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.gap_between_upper_limit_price_of_dynamic_price_and_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.gap_between_upper_limit_price_of_dynamic_price_and_trading_value, range, value, "Gap Between Upper Limit Price Of Dynamic Price And Trading Value: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Gap Between Upper Limit Price Of Dynamic Price And Trading Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.gap_between_upper_limit_price_of_dynamic_price_and_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.gap_between_upper_limit_price_of_dynamic_price_and_trading_value, range, value, display)

  return offset + length, value
end

-- Historical Volatility 90 Days
koscom_mdcsrealtime_nightderivatives_exture_v2_020.historical_volatility_90_days = {}

-- Size: Historical Volatility 90 Days
koscom_mdcsrealtime_nightderivatives_exture_v2_020.historical_volatility_90_days.size = 11

-- Display: Historical Volatility 90 Days
koscom_mdcsrealtime_nightderivatives_exture_v2_020.historical_volatility_90_days.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.historical_volatility_90_days.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Historical Volatility 90 Days: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 4 then
    return "Historical Volatility 90 Days: "..text.." (expected 4 places)"
  end

  return "Historical Volatility 90 Days: "..text
end

-- Dissect: Historical Volatility 90 Days
koscom_mdcsrealtime_nightderivatives_exture_v2_020.historical_volatility_90_days.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.historical_volatility_90_days.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.historical_volatility_90_days, range, value, "Historical Volatility 90 Days: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Historical Volatility 90 Days is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.historical_volatility_90_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.historical_volatility_90_days, range, value, display)

  return offset + length, value
end

-- Implied Volatility
koscom_mdcsrealtime_nightderivatives_exture_v2_020.implied_volatility = {}

-- Size: Implied Volatility
koscom_mdcsrealtime_nightderivatives_exture_v2_020.implied_volatility.size = 11

-- Display: Implied Volatility
koscom_mdcsrealtime_nightderivatives_exture_v2_020.implied_volatility.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.implied_volatility.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Implied Volatility: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 4 then
    return "Implied Volatility: "..text.." (expected 4 places)"
  end

  return "Implied Volatility: "..text
end

-- Dissect: Implied Volatility
koscom_mdcsrealtime_nightderivatives_exture_v2_020.implied_volatility.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.implied_volatility.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.implied_volatility, range, value, "Implied Volatility: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Implied Volatility is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.implied_volatility.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.implied_volatility, range, value, display)

  return offset + length, value
end

-- Implied Volatility Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.implied_volatility_type_code = {}

-- Size: Implied Volatility Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.implied_volatility_type_code.size = 1

-- Display: Implied Volatility Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.implied_volatility_type_code.display = function(value)
  return "Implied Volatility Type Code: "..value
end

-- Dissect: Implied Volatility Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.implied_volatility_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.implied_volatility_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.implied_volatility_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.implied_volatility_type_code, range, value, display)

  return offset + length, value
end

-- Indexed Interest Rate
koscom_mdcsrealtime_nightderivatives_exture_v2_020.indexed_interest_rate = {}

-- Size: Indexed Interest Rate
koscom_mdcsrealtime_nightderivatives_exture_v2_020.indexed_interest_rate.size = 12

-- Display: Indexed Interest Rate
koscom_mdcsrealtime_nightderivatives_exture_v2_020.indexed_interest_rate.display = function(value)
  return "Indexed Interest Rate: "..value
end

-- Dissect: Indexed Interest Rate
koscom_mdcsrealtime_nightderivatives_exture_v2_020.indexed_interest_rate.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.indexed_interest_rate.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.indexed_interest_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.indexed_interest_rate, range, value, display)

  return offset + length, value
end

-- Interest Rate
koscom_mdcsrealtime_nightderivatives_exture_v2_020.interest_rate = {}

-- Size: Interest Rate
koscom_mdcsrealtime_nightderivatives_exture_v2_020.interest_rate.size = 11

-- Display: Interest Rate
koscom_mdcsrealtime_nightderivatives_exture_v2_020.interest_rate.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.interest_rate.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Interest Rate: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Interest Rate: "..text.." (expected 6 places)"
  end

  return "Interest Rate: "..text
end

-- Dissect: Interest Rate
koscom_mdcsrealtime_nightderivatives_exture_v2_020.interest_rate.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.interest_rate.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.interest_rate, range, value, "Interest Rate: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Interest Rate is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.interest_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.interest_rate, range, value, display)

  return offset + length, value
end

-- Interest Rate 180 Day
koscom_mdcsrealtime_nightderivatives_exture_v2_020.interest_rate_180_day = {}

-- Size: Interest Rate 180 Day
koscom_mdcsrealtime_nightderivatives_exture_v2_020.interest_rate_180_day.size = 12

-- Display: Interest Rate 180 Day
koscom_mdcsrealtime_nightderivatives_exture_v2_020.interest_rate_180_day.display = function(value)
  return "Interest Rate 180 Day: "..value
end

-- Dissect: Interest Rate 180 Day
koscom_mdcsrealtime_nightderivatives_exture_v2_020.interest_rate_180_day.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.interest_rate_180_day.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.interest_rate_180_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.interest_rate_180_day, range, value, display)

  return offset + length, value
end

-- Interest Rate 30 Day
koscom_mdcsrealtime_nightderivatives_exture_v2_020.interest_rate_30_day = {}

-- Size: Interest Rate 30 Day
koscom_mdcsrealtime_nightderivatives_exture_v2_020.interest_rate_30_day.size = 12

-- Display: Interest Rate 30 Day
koscom_mdcsrealtime_nightderivatives_exture_v2_020.interest_rate_30_day.display = function(value)
  return "Interest Rate 30 Day: "..value
end

-- Dissect: Interest Rate 30 Day
koscom_mdcsrealtime_nightderivatives_exture_v2_020.interest_rate_30_day.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.interest_rate_30_day.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.interest_rate_30_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.interest_rate_30_day, range, value, display)

  return offset + length, value
end

-- Interest Rate 90 Day
koscom_mdcsrealtime_nightderivatives_exture_v2_020.interest_rate_90_day = {}

-- Size: Interest Rate 90 Day
koscom_mdcsrealtime_nightderivatives_exture_v2_020.interest_rate_90_day.size = 12

-- Display: Interest Rate 90 Day
koscom_mdcsrealtime_nightderivatives_exture_v2_020.interest_rate_90_day.display = function(value)
  return "Interest Rate 90 Day: "..value
end

-- Dissect: Interest Rate 90 Day
koscom_mdcsrealtime_nightderivatives_exture_v2_020.interest_rate_90_day.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.interest_rate_90_day.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.interest_rate_90_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.interest_rate_90_day, range, value, display)

  return offset + length, value
end

-- Investor Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.investor_code = {}

-- Size: Investor Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.investor_code.size = 4

-- Display: Investor Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.investor_code.display = function(value)
  return "Investor Code: "..value
end

-- Dissect: Investor Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.investor_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.investor_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.investor_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.investor_code, range, value, display)

  return offset + length, value
end

-- Isin Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code = {}

-- Size: Isin Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.size = 12

-- Display: Isin Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.display = function(value)
  return "Isin Code: "..value
end

-- Dissect: Isin Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.isin_code, range, value, display)

  return offset + length, value
end

-- Isin Code Of A Common Stock
koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code_of_a_common_stock = {}

-- Size: Isin Code Of A Common Stock
koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code_of_a_common_stock.size = 12

-- Display: Isin Code Of A Common Stock
koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code_of_a_common_stock.display = function(value)
  return "Isin Code Of A Common Stock: "..value
end

-- Dissect: Isin Code Of A Common Stock
koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code_of_a_common_stock.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code_of_a_common_stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code_of_a_common_stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.isin_code_of_a_common_stock, range, value, display)

  return offset + length, value
end

-- Isin Of Base Issue For Payment
koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_of_base_issue_for_payment = {}

-- Size: Isin Of Base Issue For Payment
koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_of_base_issue_for_payment.size = 12

-- Display: Isin Of Base Issue For Payment
koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_of_base_issue_for_payment.display = function(value)
  return "Isin Of Base Issue For Payment: "..value
end

-- Dissect: Isin Of Base Issue For Payment
koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_of_base_issue_for_payment.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_of_base_issue_for_payment.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_of_base_issue_for_payment.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.isin_of_base_issue_for_payment, range, value, display)

  return offset + length, value
end

-- Isin Of Underlying Asset
koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_of_underlying_asset = {}

-- Size: Isin Of Underlying Asset
koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_of_underlying_asset.size = 12

-- Display: Isin Of Underlying Asset
koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_of_underlying_asset.display = function(value)
  return "Isin Of Underlying Asset: "..value
end

-- Dissect: Isin Of Underlying Asset
koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_of_underlying_asset.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_of_underlying_asset.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_of_underlying_asset.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.isin_of_underlying_asset, range, value, display)

  return offset + length, value
end

-- Issue Name
koscom_mdcsrealtime_nightderivatives_exture_v2_020.issue_name = {}

-- Size: Issue Name
koscom_mdcsrealtime_nightderivatives_exture_v2_020.issue_name.size = 80

-- Display: Issue Name
koscom_mdcsrealtime_nightderivatives_exture_v2_020.issue_name.display = function(value)
  return "Issue Name: "..value
end

-- Dissect: Issue Name
koscom_mdcsrealtime_nightderivatives_exture_v2_020.issue_name.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.issue_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.issue_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.issue_name, range, value, display)

  return offset + length, value
end

-- Ktb Isin
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ktb_isin = {}

-- Size: Ktb Isin
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ktb_isin.size = 12

-- Display: Ktb Isin
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ktb_isin.display = function(value)
  return "Ktb Isin: "..value
end

-- Dissect: Ktb Isin
koscom_mdcsrealtime_nightderivatives_exture_v2_020.ktb_isin.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ktb_isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ktb_isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.ktb_isin, range, value, display)

  return offset + length, value
end

-- Last Payment Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.last_payment_date = {}

-- Size: Last Payment Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.last_payment_date.size = 8

-- Display: Last Payment Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.last_payment_date.display = function(value)
  return "Last Payment Date: "..value
end

-- Dissect: Last Payment Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.last_payment_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.last_payment_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.last_payment_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.last_payment_date, range, value, display)

  return offset + length, value
end

-- Last Settlement Price Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.last_settlement_price_type_code = {}

-- Size: Last Settlement Price Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.last_settlement_price_type_code.size = 1

-- Display: Last Settlement Price Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.last_settlement_price_type_code.display = function(value)
  return "Last Settlement Price Type Code: "..value
end

-- Dissect: Last Settlement Price Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.last_settlement_price_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.last_settlement_price_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.last_settlement_price_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.last_settlement_price_type_code, range, value, display)

  return offset + length, value
end

-- Last Trading Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.last_trading_date = {}

-- Size: Last Trading Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.last_trading_date.size = 8

-- Display: Last Trading Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.last_trading_date.display = function(value)
  return "Last Trading Date: "..value
end

-- Dissect: Last Trading Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.last_trading_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.last_trading_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.last_trading_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.last_trading_date, range, value, display)

  return offset + length, value
end

-- Last Trading Day
koscom_mdcsrealtime_nightderivatives_exture_v2_020.last_trading_day = {}

-- Size: Last Trading Day
koscom_mdcsrealtime_nightderivatives_exture_v2_020.last_trading_day.size = 1

-- Display: Last Trading Day
koscom_mdcsrealtime_nightderivatives_exture_v2_020.last_trading_day.display = function(value)
  return "Last Trading Day: "..value
end

-- Dissect: Last Trading Day
koscom_mdcsrealtime_nightderivatives_exture_v2_020.last_trading_day.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.last_trading_day.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.last_trading_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.last_trading_day, range, value, display)

  return offset + length, value
end

-- Limit Order Permission Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.limit_order_permission_type_code = {}

-- Size: Limit Order Permission Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.limit_order_permission_type_code.size = 5

-- Display: Limit Order Permission Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.limit_order_permission_type_code.display = function(value)
  return "Limit Order Permission Type Code: "..value
end

-- Dissect: Limit Order Permission Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.limit_order_permission_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.limit_order_permission_type_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.limit_order_permission_type_code, range, value, "Limit Order Permission Type Code: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Limit Order Permission Type Code is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.limit_order_permission_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.limit_order_permission_type_code, range, value, display)

  return offset + length, value
end

-- Limitation Of Dynamic Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.limitation_of_dynamic_price = {}

-- Size: Limitation Of Dynamic Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.limitation_of_dynamic_price.size = 1

-- Display: Limitation Of Dynamic Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.limitation_of_dynamic_price.display = function(value)
  return "Limitation Of Dynamic Price: "..value
end

-- Dissect: Limitation Of Dynamic Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.limitation_of_dynamic_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.limitation_of_dynamic_price.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.limitation_of_dynamic_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.limitation_of_dynamic_price, range, value, display)

  return offset + length, value
end

-- Listing Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.listing_date = {}

-- Size: Listing Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.listing_date.size = 8

-- Display: Listing Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.listing_date.display = function(value)
  return "Listing Date: "..value
end

-- Dissect: Listing Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.listing_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.listing_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.listing_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.listing_date, range, value, display)

  return offset + length, value
end

-- Listing Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.listing_type_code = {}

-- Size: Listing Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.listing_type_code.size = 1

-- Display: Listing Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.listing_type_code.display = function(value)
  return "Listing Type Code: "..value
end

-- Dissect: Listing Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.listing_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.listing_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.listing_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.listing_type_code, range, value, display)

  return offset + length, value
end

-- Lower Limit Of Dynamic Price Range
koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_of_dynamic_price_range = {}

-- Size: Lower Limit Of Dynamic Price Range
koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_of_dynamic_price_range.size = 9

-- Display: Lower Limit Of Dynamic Price Range
koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_of_dynamic_price_range.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_of_dynamic_price_range.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Lower Limit Of Dynamic Price Range: No Value"
  end

  return "Lower Limit Of Dynamic Price Range: "..text
end

-- Dissect: Lower Limit Of Dynamic Price Range
koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_of_dynamic_price_range.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_of_dynamic_price_range.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.lower_limit_of_dynamic_price_range, range, value, "Lower Limit Of Dynamic Price Range: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Lower Limit Of Dynamic Price Range is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_of_dynamic_price_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.lower_limit_of_dynamic_price_range, range, value, display)

  return offset + length, value
end

-- Lower Limit Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_price = {}

-- Size: Lower Limit Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_price.size = 9

-- Display: Lower Limit Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Lower Limit Price: No Value"
  end

  return "Lower Limit Price: "..text
end

-- Dissect: Lower Limit Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.lower_limit_price, range, value, "Lower Limit Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Lower Limit Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.lower_limit_price, range, value, display)

  return offset + length, value
end

-- Lower Limit Quantity
koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_quantity = {}

-- Size: Lower Limit Quantity
koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_quantity.size = 23

-- Display: Lower Limit Quantity
koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_quantity.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_quantity.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Lower Limit Quantity: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Lower Limit Quantity: "..text.." (expected 3 places)"
  end

  return "Lower Limit Quantity: "..text
end

-- Dissect: Lower Limit Quantity
koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.lower_limit_quantity, range, value, "Lower Limit Quantity: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Lower Limit Quantity is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.lower_limit_quantity, range, value, display)

  return offset + length, value
end

-- Lower Limit Quantity For Block Trade
koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_quantity_for_block_trade = {}

-- Size: Lower Limit Quantity For Block Trade
koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_quantity_for_block_trade.size = 23

-- Display: Lower Limit Quantity For Block Trade
koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_quantity_for_block_trade.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_quantity_for_block_trade.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Lower Limit Quantity For Block Trade: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Lower Limit Quantity For Block Trade: "..text.." (expected 3 places)"
  end

  return "Lower Limit Quantity For Block Trade: "..text
end

-- Dissect: Lower Limit Quantity For Block Trade
koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_quantity_for_block_trade.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_quantity_for_block_trade.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.lower_limit_quantity_for_block_trade, range, value, "Lower Limit Quantity For Block Trade: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Lower Limit Quantity For Block Trade is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_quantity_for_block_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.lower_limit_quantity_for_block_trade, range, value, display)

  return offset + length, value
end

-- Lower Price Limit 1 St Stage
koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_price_limit_1_st_stage = {}

-- Size: Lower Price Limit 1 St Stage
koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_price_limit_1_st_stage.size = 11

-- Display: Lower Price Limit 1 St Stage
koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_price_limit_1_st_stage.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_price_limit_1_st_stage.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Lower Price Limit 1 St Stage: No Value"
  end

  return "Lower Price Limit 1 St Stage: "..text
end

-- Dissect: Lower Price Limit 1 St Stage
koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_price_limit_1_st_stage.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_price_limit_1_st_stage.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.lower_price_limit_1_st_stage, range, value, "Lower Price Limit 1 St Stage: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Lower Price Limit 1 St Stage is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_price_limit_1_st_stage.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.lower_price_limit_1_st_stage, range, value, display)

  return offset + length, value
end

-- Lower Price Limit 2 Nd Stage
koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_price_limit_2_nd_stage = {}

-- Size: Lower Price Limit 2 Nd Stage
koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_price_limit_2_nd_stage.size = 11

-- Display: Lower Price Limit 2 Nd Stage
koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_price_limit_2_nd_stage.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_price_limit_2_nd_stage.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Lower Price Limit 2 Nd Stage: No Value"
  end

  return "Lower Price Limit 2 Nd Stage: "..text
end

-- Dissect: Lower Price Limit 2 Nd Stage
koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_price_limit_2_nd_stage.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_price_limit_2_nd_stage.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.lower_price_limit_2_nd_stage, range, value, "Lower Price Limit 2 Nd Stage: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Lower Price Limit 2 Nd Stage is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_price_limit_2_nd_stage.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.lower_price_limit_2_nd_stage, range, value, display)

  return offset + length, value
end

-- Lower Price Limit 3 Rd Stage
koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_price_limit_3_rd_stage = {}

-- Size: Lower Price Limit 3 Rd Stage
koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_price_limit_3_rd_stage.size = 11

-- Display: Lower Price Limit 3 Rd Stage
koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_price_limit_3_rd_stage.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_price_limit_3_rd_stage.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Lower Price Limit 3 Rd Stage: No Value"
  end

  return "Lower Price Limit 3 Rd Stage: "..text
end

-- Dissect: Lower Price Limit 3 Rd Stage
koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_price_limit_3_rd_stage.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_price_limit_3_rd_stage.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.lower_price_limit_3_rd_stage, range, value, "Lower Price Limit 3 Rd Stage: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Lower Price Limit 3 Rd Stage is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_price_limit_3_rd_stage.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.lower_price_limit_3_rd_stage, range, value, display)

  return offset + length, value
end

-- Market Holidays
koscom_mdcsrealtime_nightderivatives_exture_v2_020.market_holidays = {}

-- Size: Market Holidays
koscom_mdcsrealtime_nightderivatives_exture_v2_020.market_holidays.size = 1

-- Display: Market Holidays
koscom_mdcsrealtime_nightderivatives_exture_v2_020.market_holidays.display = function(value)
  return "Market Holidays: "..value
end

-- Dissect: Market Holidays
koscom_mdcsrealtime_nightderivatives_exture_v2_020.market_holidays.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.market_holidays.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.market_holidays.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.market_holidays, range, value, display)

  return offset + length, value
end

-- Market Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.market_id = {}

-- Size: Market Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.market_id.size = 3

-- Display: Market Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.market_id.display = function(value)
  return "Market Id: "..value
end

-- Dissect: Market Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.market_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.market_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.market_id, range, value, display)

  return offset + length, value
end

-- Market Operation Product Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.market_operation_product_id = {}

-- Size: Market Operation Product Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.market_operation_product_id.size = 3

-- Display: Market Operation Product Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.market_operation_product_id.display = function(value)
  return "Market Operation Product Id: "..value
end

-- Dissect: Market Operation Product Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.market_operation_product_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.market_operation_product_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.market_operation_product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.market_operation_product_id, range, value, display)

  return offset + length, value
end

-- Market Price Order Permission Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.market_price_order_permission_type_code = {}

-- Size: Market Price Order Permission Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.market_price_order_permission_type_code.size = 5

-- Display: Market Price Order Permission Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.market_price_order_permission_type_code.display = function(value)
  return "Market Price Order Permission Type Code: "..value
end

-- Dissect: Market Price Order Permission Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.market_price_order_permission_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.market_price_order_permission_type_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.market_price_order_permission_type_code, range, value, "Market Price Order Permission Type Code: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Market Price Order Permission Type Code is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.market_price_order_permission_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.market_price_order_permission_type_code, range, value, display)

  return offset + length, value
end

-- Me Group Number
koscom_mdcsrealtime_nightderivatives_exture_v2_020.me_group_number = {}

-- Size: Me Group Number
koscom_mdcsrealtime_nightderivatives_exture_v2_020.me_group_number.size = 5

-- Display: Me Group Number
koscom_mdcsrealtime_nightderivatives_exture_v2_020.me_group_number.display = function(value)
  return "Me Group Number: "..value
end

-- Dissect: Me Group Number
koscom_mdcsrealtime_nightderivatives_exture_v2_020.me_group_number.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.me_group_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.me_group_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.me_group_number, range, value, display)

  return offset + length, value
end

-- Message Sequence Number
koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number = {}

-- Size: Message Sequence Number
koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.size = 8

-- Display: Message Sequence Number
koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.display = function(value)
  -- Check if field has value
  if value == nil or value:match("^%s*$") ~= nil then
    return "Message Sequence Number: No Value"
  end

  return "Message Sequence Number: "..value
end

-- Dissect: Message Sequence Number
koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.message_sequence_number, range, value, display)

  return offset + length, value
end

-- Nearby Month Contract Trading Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.nearby_month_contract_trading_price = {}

-- Size: Nearby Month Contract Trading Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.nearby_month_contract_trading_price.size = 9

-- Display: Nearby Month Contract Trading Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.nearby_month_contract_trading_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.nearby_month_contract_trading_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Nearby Month Contract Trading Price: No Value"
  end

  return "Nearby Month Contract Trading Price: "..text
end

-- Dissect: Nearby Month Contract Trading Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.nearby_month_contract_trading_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.nearby_month_contract_trading_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.nearby_month_contract_trading_price, range, value, "Nearby Month Contract Trading Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Nearby Month Contract Trading Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.nearby_month_contract_trading_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.nearby_month_contract_trading_price, range, value, display)

  return offset + length, value
end

-- Number Of Issues For Base Product
koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_issues_for_base_product = {}

-- Size: Number Of Issues For Base Product
koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_issues_for_base_product.size = 6

-- Display: Number Of Issues For Base Product
koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_issues_for_base_product.display = function(value)
  return "Number Of Issues For Base Product: "..value
end

-- Dissect: Number Of Issues For Base Product
koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_issues_for_base_product.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_issues_for_base_product.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.number_of_issues_for_base_product, range, value, "Number Of Issues For Base Product: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Number Of Issues For Base Product is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_issues_for_base_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.number_of_issues_for_base_product, range, value, display)

  return offset + length, value
end

-- Number Of Issues For Subsidiary Product
koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_issues_for_subsidiary_product = {}

-- Size: Number Of Issues For Subsidiary Product
koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_issues_for_subsidiary_product.size = 6

-- Display: Number Of Issues For Subsidiary Product
koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_issues_for_subsidiary_product.display = function(value)
  return "Number Of Issues For Subsidiary Product: "..value
end

-- Dissect: Number Of Issues For Subsidiary Product
koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_issues_for_subsidiary_product.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_issues_for_subsidiary_product.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.number_of_issues_for_subsidiary_product, range, value, "Number Of Issues For Subsidiary Product: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Number Of Issues For Subsidiary Product is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_issues_for_subsidiary_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.number_of_issues_for_subsidiary_product, range, value, display)

  return offset + length, value
end

-- Number Of Listing Days Per Year
koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_listing_days_per_year = {}

-- Size: Number Of Listing Days Per Year
koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_listing_days_per_year.size = 8

-- Display: Number Of Listing Days Per Year
koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_listing_days_per_year.display = function(value)
  return "Number Of Listing Days Per Year: "..value
end

-- Dissect: Number Of Listing Days Per Year
koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_listing_days_per_year.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_listing_days_per_year.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.number_of_listing_days_per_year, range, value, "Number Of Listing Days Per Year: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Number Of Listing Days Per Year is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_listing_days_per_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.number_of_listing_days_per_year, range, value, display)

  return offset + length, value
end

-- Number Of Previous Days Trading
koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_previous_days_trading = {}

-- Size: Number Of Previous Days Trading
koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_previous_days_trading.size = 15

-- Display: Number Of Previous Days Trading
koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_previous_days_trading.display = function(value)
  return "Number Of Previous Days Trading: "..value
end

-- Dissect: Number Of Previous Days Trading
koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_previous_days_trading.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_previous_days_trading.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.number_of_previous_days_trading, range, value, "Number Of Previous Days Trading: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Number Of Previous Days Trading is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_previous_days_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.number_of_previous_days_trading, range, value, display)

  return offset + length, value
end

-- Number Of Trading Days Per Month
koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_trading_days_per_month = {}

-- Size: Number Of Trading Days Per Month
koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_trading_days_per_month.size = 8

-- Display: Number Of Trading Days Per Month
koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_trading_days_per_month.display = function(value)
  return "Number Of Trading Days Per Month: "..value
end

-- Dissect: Number Of Trading Days Per Month
koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_trading_days_per_month.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_trading_days_per_month.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.number_of_trading_days_per_month, range, value, "Number Of Trading Days Per Month: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Number Of Trading Days Per Month is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_trading_days_per_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.number_of_trading_days_per_month, range, value, display)

  return offset + length, value
end

-- Number Of Trading Days Per Year
koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_trading_days_per_year = {}

-- Size: Number Of Trading Days Per Year
koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_trading_days_per_year.size = 8

-- Display: Number Of Trading Days Per Year
koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_trading_days_per_year.display = function(value)
  return "Number Of Trading Days Per Year: "..value
end

-- Dissect: Number Of Trading Days Per Year
koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_trading_days_per_year.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_trading_days_per_year.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.number_of_trading_days_per_year, range, value, "Number Of Trading Days Per Year: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Number Of Trading Days Per Year is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_trading_days_per_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.number_of_trading_days_per_year, range, value, display)

  return offset + length, value
end

-- Numerator Adjustment Of Coefficient
koscom_mdcsrealtime_nightderivatives_exture_v2_020.numerator_adjustment_of_coefficient = {}

-- Size: Numerator Adjustment Of Coefficient
koscom_mdcsrealtime_nightderivatives_exture_v2_020.numerator_adjustment_of_coefficient.size = 18

-- Display: Numerator Adjustment Of Coefficient
koscom_mdcsrealtime_nightderivatives_exture_v2_020.numerator_adjustment_of_coefficient.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.numerator_adjustment_of_coefficient.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Numerator Adjustment Of Coefficient: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 8 then
    return "Numerator Adjustment Of Coefficient: "..text.." (expected 8 places)"
  end

  return "Numerator Adjustment Of Coefficient: "..text
end

-- Dissect: Numerator Adjustment Of Coefficient
koscom_mdcsrealtime_nightderivatives_exture_v2_020.numerator_adjustment_of_coefficient.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.numerator_adjustment_of_coefficient.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.numerator_adjustment_of_coefficient, range, value, "Numerator Adjustment Of Coefficient: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Numerator Adjustment Of Coefficient is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.numerator_adjustment_of_coefficient.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.numerator_adjustment_of_coefficient, range, value, display)

  return offset + length, value
end

-- Offset Rate Of Asset Group
koscom_mdcsrealtime_nightderivatives_exture_v2_020.offset_rate_of_asset_group = {}

-- Size: Offset Rate Of Asset Group
koscom_mdcsrealtime_nightderivatives_exture_v2_020.offset_rate_of_asset_group.size = 11

-- Display: Offset Rate Of Asset Group
koscom_mdcsrealtime_nightderivatives_exture_v2_020.offset_rate_of_asset_group.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.offset_rate_of_asset_group.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Offset Rate Of Asset Group: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 2 then
    return "Offset Rate Of Asset Group: "..text.." (expected 2 places)"
  end

  return "Offset Rate Of Asset Group: "..text
end

-- Dissect: Offset Rate Of Asset Group
koscom_mdcsrealtime_nightderivatives_exture_v2_020.offset_rate_of_asset_group.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.offset_rate_of_asset_group.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.offset_rate_of_asset_group, range, value, "Offset Rate Of Asset Group: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Offset Rate Of Asset Group is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.offset_rate_of_asset_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.offset_rate_of_asset_group, range, value, display)

  return offset + length, value
end

-- Open Interest
koscom_mdcsrealtime_nightderivatives_exture_v2_020.open_interest = {}

-- Size: Open Interest
koscom_mdcsrealtime_nightderivatives_exture_v2_020.open_interest.size = 10

-- Display: Open Interest
koscom_mdcsrealtime_nightderivatives_exture_v2_020.open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
koscom_mdcsrealtime_nightderivatives_exture_v2_020.open_interest.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.open_interest.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.open_interest, range, value, "Open Interest: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Open Interest is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Open Interest Limit Quantity
koscom_mdcsrealtime_nightderivatives_exture_v2_020.open_interest_limit_quantity = {}

-- Size: Open Interest Limit Quantity
koscom_mdcsrealtime_nightderivatives_exture_v2_020.open_interest_limit_quantity.size = 15

-- Display: Open Interest Limit Quantity
koscom_mdcsrealtime_nightderivatives_exture_v2_020.open_interest_limit_quantity.display = function(value)
  return "Open Interest Limit Quantity: "..value
end

-- Dissect: Open Interest Limit Quantity
koscom_mdcsrealtime_nightderivatives_exture_v2_020.open_interest_limit_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.open_interest_limit_quantity.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.open_interest_limit_quantity, range, value, "Open Interest Limit Quantity: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Open Interest Limit Quantity is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.open_interest_limit_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.open_interest_limit_quantity, range, value, display)

  return offset + length, value
end

-- Open Interest Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.open_interest_type_code = {}

-- Size: Open Interest Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.open_interest_type_code.size = 2

-- Display: Open Interest Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.open_interest_type_code.display = function(value)
  return "Open Interest Type Code: "..value
end

-- Dissect: Open Interest Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.open_interest_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.open_interest_type_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.open_interest_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.open_interest_type_code, range, value, display)

  return offset + length, value
end

-- Opening Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.opening_price = {}

-- Size: Opening Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.opening_price.size = 9

-- Display: Opening Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.opening_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.opening_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Opening Price: No Value"
  end

  return "Opening Price: "..text
end

-- Dissect: Opening Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.opening_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.opening_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.opening_price, range, value, "Opening Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Opening Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.opening_price, range, value, display)

  return offset + length, value
end

-- Payment Methods
koscom_mdcsrealtime_nightderivatives_exture_v2_020.payment_methods = {}

-- Size: Payment Methods
koscom_mdcsrealtime_nightderivatives_exture_v2_020.payment_methods.size = 1

-- Display: Payment Methods
koscom_mdcsrealtime_nightderivatives_exture_v2_020.payment_methods.display = function(value)
  return "Payment Methods: "..value
end

-- Dissect: Payment Methods
koscom_mdcsrealtime_nightderivatives_exture_v2_020.payment_methods.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.payment_methods.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.payment_methods.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.payment_methods, range, value, display)

  return offset + length, value
end

-- Previous Days Adjusted Closing Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_adjusted_closing_price = {}

-- Size: Previous Days Adjusted Closing Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_adjusted_closing_price.size = 18

-- Display: Previous Days Adjusted Closing Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_adjusted_closing_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_adjusted_closing_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Previous Days Adjusted Closing Price: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 8 then
    return "Previous Days Adjusted Closing Price: "..text.." (expected 8 places)"
  end

  return "Previous Days Adjusted Closing Price: "..text
end

-- Dissect: Previous Days Adjusted Closing Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_adjusted_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_adjusted_closing_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_days_adjusted_closing_price, range, value, "Previous Days Adjusted Closing Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Previous Days Adjusted Closing Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_adjusted_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_days_adjusted_closing_price, range, value, display)

  return offset + length, value
end

-- Previous Days Best Ask
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_best_ask = {}

-- Size: Previous Days Best Ask
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_best_ask.size = 11

-- Display: Previous Days Best Ask
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_best_ask.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_best_ask.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Previous Days Best Ask: No Value"
  end

  return "Previous Days Best Ask: "..text
end

-- Dissect: Previous Days Best Ask
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_best_ask.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_best_ask.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_days_best_ask, range, value, "Previous Days Best Ask: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Previous Days Best Ask is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_best_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_days_best_ask, range, value, display)

  return offset + length, value
end

-- Previous Days Best Bid
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_best_bid = {}

-- Size: Previous Days Best Bid
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_best_bid.size = 11

-- Display: Previous Days Best Bid
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_best_bid.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_best_bid.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Previous Days Best Bid: No Value"
  end

  return "Previous Days Best Bid: "..text
end

-- Dissect: Previous Days Best Bid
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_best_bid.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_best_bid.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_days_best_bid, range, value, "Previous Days Best Bid: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Previous Days Best Bid is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_best_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_days_best_bid, range, value, display)

  return offset + length, value
end

-- Previous Days Bpmm
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_bpmm = {}

-- Size: Previous Days Bpmm
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_bpmm.size = 23

-- Display: Previous Days Bpmm
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_bpmm.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_bpmm.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Previous Days Bpmm: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Previous Days Bpmm: "..text.." (expected 3 places)"
  end

  return "Previous Days Bpmm: "..text
end

-- Dissect: Previous Days Bpmm
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_bpmm.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_bpmm.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_days_bpmm, range, value, "Previous Days Bpmm: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Previous Days Bpmm is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_bpmm.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_days_bpmm, range, value, display)

  return offset + length, value
end

-- Previous Days High Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_high_price = {}

-- Size: Previous Days High Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_high_price.size = 11

-- Display: Previous Days High Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_high_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_high_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Previous Days High Price: No Value"
  end

  return "Previous Days High Price: "..text
end

-- Dissect: Previous Days High Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_high_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_high_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_days_high_price, range, value, "Previous Days High Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Previous Days High Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_days_high_price, range, value, display)

  return offset + length, value
end

-- Previous Days Low Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_low_price = {}

-- Size: Previous Days Low Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_low_price.size = 11

-- Display: Previous Days Low Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_low_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_low_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Previous Days Low Price: No Value"
  end

  return "Previous Days Low Price: "..text
end

-- Dissect: Previous Days Low Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_low_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_low_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_days_low_price, range, value, "Previous Days Low Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Previous Days Low Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_days_low_price, range, value, display)

  return offset + length, value
end

-- Previous Days Open Interest
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_open_interest = {}

-- Size: Previous Days Open Interest
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_open_interest.size = 12

-- Display: Previous Days Open Interest
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_open_interest.display = function(value)
  return "Previous Days Open Interest: "..value
end

-- Dissect: Previous Days Open Interest
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_open_interest.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_open_interest.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_days_open_interest, range, value, "Previous Days Open Interest: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Previous Days Open Interest is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_days_open_interest, range, value, display)

  return offset + length, value
end

-- Previous Days Opening Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_opening_price = {}

-- Size: Previous Days Opening Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_opening_price.size = 11

-- Display: Previous Days Opening Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_opening_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_opening_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Previous Days Opening Price: No Value"
  end

  return "Previous Days Opening Price: "..text
end

-- Dissect: Previous Days Opening Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_opening_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_opening_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_days_opening_price, range, value, "Previous Days Opening Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Previous Days Opening Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_days_opening_price, range, value, display)

  return offset + length, value
end

-- Previous Days Settlement Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_settlement_price = {}

-- Size: Previous Days Settlement Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_settlement_price.size = 18

-- Display: Previous Days Settlement Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_settlement_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_settlement_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Previous Days Settlement Price: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 8 then
    return "Previous Days Settlement Price: "..text.." (expected 8 places)"
  end

  return "Previous Days Settlement Price: "..text
end

-- Dissect: Previous Days Settlement Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_settlement_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_days_settlement_price, range, value, "Previous Days Settlement Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Previous Days Settlement Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_days_settlement_price, range, value, display)

  return offset + length, value
end

-- Previous Days Total Accumulated Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_total_accumulated_trading_value = {}

-- Size: Previous Days Total Accumulated Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_total_accumulated_trading_value.size = 22

-- Display: Previous Days Total Accumulated Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_total_accumulated_trading_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_total_accumulated_trading_value.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Previous Days Total Accumulated Trading Value: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Previous Days Total Accumulated Trading Value: "..text.." (expected 3 places)"
  end

  return "Previous Days Total Accumulated Trading Value: "..text
end

-- Dissect: Previous Days Total Accumulated Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_total_accumulated_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_total_accumulated_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_days_total_accumulated_trading_value, range, value, "Previous Days Total Accumulated Trading Value: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Previous Days Total Accumulated Trading Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_total_accumulated_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_days_total_accumulated_trading_value, range, value, display)

  return offset + length, value
end

-- Previous Days Total Accumulated Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_total_accumulated_trading_volume = {}

-- Size: Previous Days Total Accumulated Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_total_accumulated_trading_volume.size = 15

-- Display: Previous Days Total Accumulated Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_total_accumulated_trading_volume.display = function(value)
  return "Previous Days Total Accumulated Trading Volume: "..value
end

-- Dissect: Previous Days Total Accumulated Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_total_accumulated_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_total_accumulated_trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_days_total_accumulated_trading_volume, range, value, "Previous Days Total Accumulated Trading Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Previous Days Total Accumulated Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_total_accumulated_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_days_total_accumulated_trading_volume, range, value, display)

  return offset + length, value
end

-- Previous Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_price = {}

-- Size: Previous Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_price.size = 9

-- Display: Previous Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Previous Price: No Value"
  end

  return "Previous Price: "..text
end

-- Dissect: Previous Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_price, range, value, "Previous Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Previous Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.previous_price, range, value, display)

  return offset + length, value
end

-- Price Limit Expansion Lower Limit
koscom_mdcsrealtime_nightderivatives_exture_v2_020.price_limit_expansion_lower_limit = {}

-- Size: Price Limit Expansion Lower Limit
koscom_mdcsrealtime_nightderivatives_exture_v2_020.price_limit_expansion_lower_limit.size = 2

-- Display: Price Limit Expansion Lower Limit
koscom_mdcsrealtime_nightderivatives_exture_v2_020.price_limit_expansion_lower_limit.display = function(value)
  return "Price Limit Expansion Lower Limit: "..value
end

-- Dissect: Price Limit Expansion Lower Limit
koscom_mdcsrealtime_nightderivatives_exture_v2_020.price_limit_expansion_lower_limit.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.price_limit_expansion_lower_limit.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.price_limit_expansion_lower_limit, range, value, "Price Limit Expansion Lower Limit: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Price Limit Expansion Lower Limit is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.price_limit_expansion_lower_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.price_limit_expansion_lower_limit, range, value, display)

  return offset + length, value
end

-- Price Limit Expansion Upper Limit
koscom_mdcsrealtime_nightderivatives_exture_v2_020.price_limit_expansion_upper_limit = {}

-- Size: Price Limit Expansion Upper Limit
koscom_mdcsrealtime_nightderivatives_exture_v2_020.price_limit_expansion_upper_limit.size = 2

-- Display: Price Limit Expansion Upper Limit
koscom_mdcsrealtime_nightderivatives_exture_v2_020.price_limit_expansion_upper_limit.display = function(value)
  return "Price Limit Expansion Upper Limit: "..value
end

-- Dissect: Price Limit Expansion Upper Limit
koscom_mdcsrealtime_nightderivatives_exture_v2_020.price_limit_expansion_upper_limit.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.price_limit_expansion_upper_limit.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.price_limit_expansion_upper_limit, range, value, "Price Limit Expansion Upper Limit: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Price Limit Expansion Upper Limit is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.price_limit_expansion_upper_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.price_limit_expansion_upper_limit, range, value, display)

  return offset + length, value
end

-- Price Limit Range Expansion For Base Issue Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.price_limit_range_expansion_for_base_issue_type_code = {}

-- Size: Price Limit Range Expansion For Base Issue Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.price_limit_range_expansion_for_base_issue_type_code.size = 1

-- Display: Price Limit Range Expansion For Base Issue Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.price_limit_range_expansion_for_base_issue_type_code.display = function(value)
  return "Price Limit Range Expansion For Base Issue Type Code: "..value
end

-- Dissect: Price Limit Range Expansion For Base Issue Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.price_limit_range_expansion_for_base_issue_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.price_limit_range_expansion_for_base_issue_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.price_limit_range_expansion_for_base_issue_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.price_limit_range_expansion_for_base_issue_type_code, range, value, display)

  return offset + length, value
end

-- Processing Time Of Trading System
koscom_mdcsrealtime_nightderivatives_exture_v2_020.processing_time_of_trading_system = {}

-- Size: Processing Time Of Trading System
koscom_mdcsrealtime_nightderivatives_exture_v2_020.processing_time_of_trading_system.size = 12

-- Display: Processing Time Of Trading System
koscom_mdcsrealtime_nightderivatives_exture_v2_020.processing_time_of_trading_system.display = function(value)
  if #value < 12 then
    return "Processing Time Of Trading System: "..value
  end

  return "Processing Time Of Trading System: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6).."."..value:sub(7, 12)
end

-- Dissect: Processing Time Of Trading System
koscom_mdcsrealtime_nightderivatives_exture_v2_020.processing_time_of_trading_system.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.processing_time_of_trading_system.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.processing_time_of_trading_system.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.processing_time_of_trading_system, range, value, display)

  return offset + length, value
end

-- Product Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.product_id = {}

-- Size: Product Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.product_id.size = 11

-- Display: Product Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.product_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.product_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.product_id, range, value, display)

  return offset + length, value
end

-- Put Averaged Implied Volatility
koscom_mdcsrealtime_nightderivatives_exture_v2_020.put_averaged_implied_volatility = {}

-- Size: Put Averaged Implied Volatility
koscom_mdcsrealtime_nightderivatives_exture_v2_020.put_averaged_implied_volatility.size = 11

-- Display: Put Averaged Implied Volatility
koscom_mdcsrealtime_nightderivatives_exture_v2_020.put_averaged_implied_volatility.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.put_averaged_implied_volatility.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Put Averaged Implied Volatility: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 4 then
    return "Put Averaged Implied Volatility: "..text.." (expected 4 places)"
  end

  return "Put Averaged Implied Volatility: "..text
end

-- Dissect: Put Averaged Implied Volatility
koscom_mdcsrealtime_nightderivatives_exture_v2_020.put_averaged_implied_volatility.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.put_averaged_implied_volatility.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.put_averaged_implied_volatility, range, value, "Put Averaged Implied Volatility: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Put Averaged Implied Volatility is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.put_averaged_implied_volatility.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.put_averaged_implied_volatility, range, value, display)

  return offset + length, value
end

-- Remaining Days
koscom_mdcsrealtime_nightderivatives_exture_v2_020.remaining_days = {}

-- Size: Remaining Days
koscom_mdcsrealtime_nightderivatives_exture_v2_020.remaining_days.size = 8

-- Display: Remaining Days
koscom_mdcsrealtime_nightderivatives_exture_v2_020.remaining_days.display = function(value)
  return "Remaining Days: "..value
end

-- Dissect: Remaining Days
koscom_mdcsrealtime_nightderivatives_exture_v2_020.remaining_days.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.remaining_days.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.remaining_days, range, value, "Remaining Days: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Remaining Days is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.remaining_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.remaining_days, range, value, display)

  return offset + length, value
end

-- Representative Implied Volatility
koscom_mdcsrealtime_nightderivatives_exture_v2_020.representative_implied_volatility = {}

-- Size: Representative Implied Volatility
koscom_mdcsrealtime_nightderivatives_exture_v2_020.representative_implied_volatility.size = 11

-- Display: Representative Implied Volatility
koscom_mdcsrealtime_nightderivatives_exture_v2_020.representative_implied_volatility.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.representative_implied_volatility.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Representative Implied Volatility: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 4 then
    return "Representative Implied Volatility: "..text.." (expected 4 places)"
  end

  return "Representative Implied Volatility: "..text
end

-- Dissect: Representative Implied Volatility
koscom_mdcsrealtime_nightderivatives_exture_v2_020.representative_implied_volatility.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.representative_implied_volatility.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.representative_implied_volatility, range, value, "Representative Implied Volatility: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Representative Implied Volatility is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.representative_implied_volatility.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.representative_implied_volatility, range, value, display)

  return offset + length, value
end

-- Rfr
koscom_mdcsrealtime_nightderivatives_exture_v2_020.rfr = {}

-- Size: Rfr
koscom_mdcsrealtime_nightderivatives_exture_v2_020.rfr.size = 9

-- Display: Rfr
koscom_mdcsrealtime_nightderivatives_exture_v2_020.rfr.display = function(value)
  return "Rfr: "..value
end

-- Dissect: Rfr
koscom_mdcsrealtime_nightderivatives_exture_v2_020.rfr.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.rfr.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.rfr.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.rfr, range, value, display)

  return offset + length, value
end

-- Rights Execution Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.rights_execution_type_code = {}

-- Size: Rights Execution Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.rights_execution_type_code.size = 1

-- Display: Rights Execution Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.rights_execution_type_code.display = function(value)
  return "Rights Execution Type Code: "..value
end

-- Dissect: Rights Execution Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.rights_execution_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.rights_execution_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.rights_execution_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.rights_execution_type_code, range, value, display)

  return offset + length, value
end

-- Sensitivity Delta
koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_delta = {}

-- Size: Sensitivity Delta
koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_delta.size = 20

-- Display: Sensitivity Delta
koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_delta.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_delta.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Sensitivity Delta: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Sensitivity Delta: "..text.." (expected 6 places)"
  end

  return "Sensitivity Delta: "..text
end

-- Dissect: Sensitivity Delta
koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_delta.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_delta.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.sensitivity_delta, range, value, "Sensitivity Delta: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Sensitivity Delta is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_delta.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.sensitivity_delta, range, value, display)

  return offset + length, value
end

-- Sensitivity Gamma
koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_gamma = {}

-- Size: Sensitivity Gamma
koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_gamma.size = 20

-- Display: Sensitivity Gamma
koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_gamma.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_gamma.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Sensitivity Gamma: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Sensitivity Gamma: "..text.." (expected 6 places)"
  end

  return "Sensitivity Gamma: "..text
end

-- Dissect: Sensitivity Gamma
koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_gamma.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_gamma.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.sensitivity_gamma, range, value, "Sensitivity Gamma: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Sensitivity Gamma is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_gamma.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.sensitivity_gamma, range, value, display)

  return offset + length, value
end

-- Sensitivity Rho
koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_rho = {}

-- Size: Sensitivity Rho
koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_rho.size = 20

-- Display: Sensitivity Rho
koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_rho.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_rho.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Sensitivity Rho: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Sensitivity Rho: "..text.." (expected 6 places)"
  end

  return "Sensitivity Rho: "..text
end

-- Dissect: Sensitivity Rho
koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_rho.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_rho.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.sensitivity_rho, range, value, "Sensitivity Rho: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Sensitivity Rho is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_rho.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.sensitivity_rho, range, value, display)

  return offset + length, value
end

-- Sensitivity Theta
koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_theta = {}

-- Size: Sensitivity Theta
koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_theta.size = 20

-- Display: Sensitivity Theta
koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_theta.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_theta.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Sensitivity Theta: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Sensitivity Theta: "..text.." (expected 6 places)"
  end

  return "Sensitivity Theta: "..text
end

-- Dissect: Sensitivity Theta
koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_theta.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_theta.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.sensitivity_theta, range, value, "Sensitivity Theta: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Sensitivity Theta is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_theta.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.sensitivity_theta, range, value, display)

  return offset + length, value
end

-- Sensitivity Vega
koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_vega = {}

-- Size: Sensitivity Vega
koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_vega.size = 20

-- Display: Sensitivity Vega
koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_vega.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_vega.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Sensitivity Vega: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Sensitivity Vega: "..text.." (expected 6 places)"
  end

  return "Sensitivity Vega: "..text
end

-- Dissect: Sensitivity Vega
koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_vega.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_vega.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.sensitivity_vega, range, value, "Sensitivity Vega: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Sensitivity Vega is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_vega.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.sensitivity_vega, range, value, display)

  return offset + length, value
end

-- Sequence Number For Delivery Month
koscom_mdcsrealtime_nightderivatives_exture_v2_020.sequence_number_for_delivery_month = {}

-- Size: Sequence Number For Delivery Month
koscom_mdcsrealtime_nightderivatives_exture_v2_020.sequence_number_for_delivery_month.size = 3

-- Display: Sequence Number For Delivery Month
koscom_mdcsrealtime_nightderivatives_exture_v2_020.sequence_number_for_delivery_month.display = function(value)
  return "Sequence Number For Delivery Month: "..value
end

-- Dissect: Sequence Number For Delivery Month
koscom_mdcsrealtime_nightderivatives_exture_v2_020.sequence_number_for_delivery_month.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.sequence_number_for_delivery_month.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.sequence_number_for_delivery_month, range, value, "Sequence Number For Delivery Month: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Sequence Number For Delivery Month is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.sequence_number_for_delivery_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.sequence_number_for_delivery_month, range, value, display)

  return offset + length, value
end

-- Session Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_id = {}

-- Size: Session Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_id.size = 2

-- Display: Session Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.session_id, range, value, display)

  return offset + length, value
end

-- Session Start End Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_start_end_code = {}

-- Size: Session Start End Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_start_end_code.size = 2

-- Display: Session Start End Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_start_end_code.display = function(value)
  return "Session Start End Code: "..value
end

-- Dissect: Session Start End Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_start_end_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_start_end_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_start_end_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.session_start_end_code, range, value, display)

  return offset + length, value
end

-- Settlement Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_price = {}

-- Size: Settlement Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_price.size = 18

-- Display: Settlement Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Settlement Price: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 8 then
    return "Settlement Price: "..text.." (expected 8 places)"
  end

  return "Settlement Price: "..text
end

-- Dissect: Settlement Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.settlement_price, range, value, "Settlement Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Settlement Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Settlement Price After Exercising An Option
koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_price_after_exercising_an_option = {}

-- Size: Settlement Price After Exercising An Option
koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_price_after_exercising_an_option.size = 18

-- Display: Settlement Price After Exercising An Option
koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_price_after_exercising_an_option.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_price_after_exercising_an_option.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Settlement Price After Exercising An Option: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 8 then
    return "Settlement Price After Exercising An Option: "..text.." (expected 8 places)"
  end

  return "Settlement Price After Exercising An Option: "..text
end

-- Dissect: Settlement Price After Exercising An Option
koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_price_after_exercising_an_option.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_price_after_exercising_an_option.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.settlement_price_after_exercising_an_option, range, value, "Settlement Price After Exercising An Option: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Settlement Price After Exercising An Option is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_price_after_exercising_an_option.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.settlement_price_after_exercising_an_option, range, value, display)

  return offset + length, value
end

-- Settlement Price Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_price_type_code = {}

-- Size: Settlement Price Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_price_type_code.size = 2

-- Display: Settlement Price Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_price_type_code.display = function(value)
  return "Settlement Price Type Code: "..value
end

-- Dissect: Settlement Price Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_price_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_price_type_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_price_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.settlement_price_type_code, range, value, display)

  return offset + length, value
end

-- Settlement Week
koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_week = {}

-- Size: Settlement Week
koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_week.size = 2

-- Display: Settlement Week
koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_week.display = function(value)
  return "Settlement Week: "..value
end

-- Dissect: Settlement Week
koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_week.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_week.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_week.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.settlement_week, range, value, display)

  return offset + length, value
end

-- Spread Ask Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_ask_trading_value = {}

-- Size: Spread Ask Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_ask_trading_value.size = 22

-- Display: Spread Ask Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_ask_trading_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_ask_trading_value.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Spread Ask Trading Value: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Spread Ask Trading Value: "..text.." (expected 3 places)"
  end

  return "Spread Ask Trading Value: "..text
end

-- Dissect: Spread Ask Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_ask_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_ask_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.spread_ask_trading_value, range, value, "Spread Ask Trading Value: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Spread Ask Trading Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_ask_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.spread_ask_trading_value, range, value, display)

  return offset + length, value
end

-- Spread Ask Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_ask_trading_volume = {}

-- Size: Spread Ask Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_ask_trading_volume.size = 10

-- Display: Spread Ask Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_ask_trading_volume.display = function(value)
  return "Spread Ask Trading Volume: "..value
end

-- Dissect: Spread Ask Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_ask_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_ask_trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.spread_ask_trading_volume, range, value, "Spread Ask Trading Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Spread Ask Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_ask_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.spread_ask_trading_volume, range, value, display)

  return offset + length, value
end

-- Spread Bid Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_bid_trading_value = {}

-- Size: Spread Bid Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_bid_trading_value.size = 22

-- Display: Spread Bid Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_bid_trading_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_bid_trading_value.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Spread Bid Trading Value: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Spread Bid Trading Value: "..text.." (expected 3 places)"
  end

  return "Spread Bid Trading Value: "..text
end

-- Dissect: Spread Bid Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_bid_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_bid_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.spread_bid_trading_value, range, value, "Spread Bid Trading Value: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Spread Bid Trading Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_bid_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.spread_bid_trading_value, range, value, display)

  return offset + length, value
end

-- Spread Bid Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_bid_trading_volume = {}

-- Size: Spread Bid Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_bid_trading_volume.size = 10

-- Display: Spread Bid Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_bid_trading_volume.display = function(value)
  return "Spread Bid Trading Volume: "..value
end

-- Dissect: Spread Bid Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_bid_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_bid_trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.spread_bid_trading_volume, range, value, "Spread Bid Trading Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Spread Bid Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_bid_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.spread_bid_trading_volume, range, value, display)

  return offset + length, value
end

-- Spread Composition Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_composition_code = {}

-- Size: Spread Composition Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_composition_code.size = 2

-- Display: Spread Composition Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_composition_code.display = function(value)
  return "Spread Composition Code: "..value
end

-- Dissect: Spread Composition Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_composition_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_composition_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_composition_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.spread_composition_code, range, value, display)

  return offset + length, value
end

-- Spread Issue Isin 1
koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_issue_isin_1 = {}

-- Size: Spread Issue Isin 1
koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_issue_isin_1.size = 12

-- Display: Spread Issue Isin 1
koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_issue_isin_1.display = function(value)
  return "Spread Issue Isin 1: "..value
end

-- Dissect: Spread Issue Isin 1
koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_issue_isin_1.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_issue_isin_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_issue_isin_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.spread_issue_isin_1, range, value, display)

  return offset + length, value
end

-- Spread Issue Isin 2
koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_issue_isin_2 = {}

-- Size: Spread Issue Isin 2
koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_issue_isin_2.size = 12

-- Display: Spread Issue Isin 2
koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_issue_isin_2.display = function(value)
  return "Spread Issue Isin 2: "..value
end

-- Dissect: Spread Issue Isin 2
koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_issue_isin_2.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_issue_isin_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_issue_isin_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.spread_issue_isin_2, range, value, display)

  return offset + length, value
end

-- Spread Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_type_code = {}

-- Size: Spread Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_type_code.size = 1

-- Display: Spread Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_type_code.display = function(value)
  return "Spread Type Code: "..value
end

-- Dissect: Spread Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.spread_type_code, range, value, display)

  return offset + length, value
end

-- Start End Of Allocation
koscom_mdcsrealtime_nightderivatives_exture_v2_020.start_end_of_allocation = {}

-- Size: Start End Of Allocation
koscom_mdcsrealtime_nightderivatives_exture_v2_020.start_end_of_allocation.size = 1

-- Display: Start End Of Allocation
koscom_mdcsrealtime_nightderivatives_exture_v2_020.start_end_of_allocation.display = function(value)
  return "Start End Of Allocation: "..value
end

-- Dissect: Start End Of Allocation
koscom_mdcsrealtime_nightderivatives_exture_v2_020.start_end_of_allocation.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.start_end_of_allocation.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.start_end_of_allocation.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.start_end_of_allocation, range, value, display)

  return offset + length, value
end

-- Start Time Of A Board Event
koscom_mdcsrealtime_nightderivatives_exture_v2_020.start_time_of_a_board_event = {}

-- Size: Start Time Of A Board Event
koscom_mdcsrealtime_nightderivatives_exture_v2_020.start_time_of_a_board_event.size = 9

-- Display: Start Time Of A Board Event
koscom_mdcsrealtime_nightderivatives_exture_v2_020.start_time_of_a_board_event.display = function(value)
  return "Start Time Of A Board Event: "..value
end

-- Dissect: Start Time Of A Board Event
koscom_mdcsrealtime_nightderivatives_exture_v2_020.start_time_of_a_board_event.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.start_time_of_a_board_event.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.start_time_of_a_board_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.start_time_of_a_board_event, range, value, display)

  return offset + length, value
end

-- Step Applied
koscom_mdcsrealtime_nightderivatives_exture_v2_020.step_applied = {}

-- Size: Step Applied
koscom_mdcsrealtime_nightderivatives_exture_v2_020.step_applied.size = 2

-- Display: Step Applied
koscom_mdcsrealtime_nightderivatives_exture_v2_020.step_applied.display = function(value)
  return "Step Applied: "..value
end

-- Dissect: Step Applied
koscom_mdcsrealtime_nightderivatives_exture_v2_020.step_applied.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.step_applied.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.step_applied, range, value, "Step Applied: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Step Applied is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.step_applied.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.step_applied, range, value, display)

  return offset + length, value
end

-- Subsidiary Product Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.subsidiary_product_id = {}

-- Size: Subsidiary Product Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.subsidiary_product_id.size = 11

-- Display: Subsidiary Product Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.subsidiary_product_id.display = function(value)
  return "Subsidiary Product Id: "..value
end

-- Dissect: Subsidiary Product Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.subsidiary_product_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.subsidiary_product_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.subsidiary_product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.subsidiary_product_id, range, value, display)

  return offset + length, value
end

-- Suspended Stocks
koscom_mdcsrealtime_nightderivatives_exture_v2_020.suspended_stocks = {}

-- Size: Suspended Stocks
koscom_mdcsrealtime_nightderivatives_exture_v2_020.suspended_stocks.size = 1

-- Display: Suspended Stocks
koscom_mdcsrealtime_nightderivatives_exture_v2_020.suspended_stocks.display = function(value)
  return "Suspended Stocks: "..value
end

-- Dissect: Suspended Stocks
koscom_mdcsrealtime_nightderivatives_exture_v2_020.suspended_stocks.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.suspended_stocks.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.suspended_stocks.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.suspended_stocks, range, value, display)

  return offset + length, value
end

-- The Date Of The Highest Premium In A Year
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_date_of_the_highest_premium_in_a_year = {}

-- Size: The Date Of The Highest Premium In A Year
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_date_of_the_highest_premium_in_a_year.size = 8

-- Display: The Date Of The Highest Premium In A Year
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_date_of_the_highest_premium_in_a_year.display = function(value)
  return "The Date Of The Highest Premium In A Year: "..value
end

-- Dissect: The Date Of The Highest Premium In A Year
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_date_of_the_highest_premium_in_a_year.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_date_of_the_highest_premium_in_a_year.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_date_of_the_highest_premium_in_a_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.the_date_of_the_highest_premium_in_a_year, range, value, display)

  return offset + length, value
end

-- The Date Of The Highest Premium Of The Lifetime
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_date_of_the_highest_premium_of_the_lifetime = {}

-- Size: The Date Of The Highest Premium Of The Lifetime
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_date_of_the_highest_premium_of_the_lifetime.size = 8

-- Display: The Date Of The Highest Premium Of The Lifetime
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_date_of_the_highest_premium_of_the_lifetime.display = function(value)
  return "The Date Of The Highest Premium Of The Lifetime: "..value
end

-- Dissect: The Date Of The Highest Premium Of The Lifetime
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_date_of_the_highest_premium_of_the_lifetime.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_date_of_the_highest_premium_of_the_lifetime.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_date_of_the_highest_premium_of_the_lifetime.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.the_date_of_the_highest_premium_of_the_lifetime, range, value, display)

  return offset + length, value
end

-- The Date Of The Lowest Premium In A Year
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_date_of_the_lowest_premium_in_a_year = {}

-- Size: The Date Of The Lowest Premium In A Year
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_date_of_the_lowest_premium_in_a_year.size = 8

-- Display: The Date Of The Lowest Premium In A Year
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_date_of_the_lowest_premium_in_a_year.display = function(value)
  return "The Date Of The Lowest Premium In A Year: "..value
end

-- Dissect: The Date Of The Lowest Premium In A Year
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_date_of_the_lowest_premium_in_a_year.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_date_of_the_lowest_premium_in_a_year.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_date_of_the_lowest_premium_in_a_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.the_date_of_the_lowest_premium_in_a_year, range, value, display)

  return offset + length, value
end

-- The Date Of The Lowest Premium Of The Lifetime
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_date_of_the_lowest_premium_of_the_lifetime = {}

-- Size: The Date Of The Lowest Premium Of The Lifetime
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_date_of_the_lowest_premium_of_the_lifetime.size = 8

-- Display: The Date Of The Lowest Premium Of The Lifetime
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_date_of_the_lowest_premium_of_the_lifetime.display = function(value)
  return "The Date Of The Lowest Premium Of The Lifetime: "..value
end

-- Dissect: The Date Of The Lowest Premium Of The Lifetime
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_date_of_the_lowest_premium_of_the_lifetime.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_date_of_the_lowest_premium_of_the_lifetime.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_date_of_the_lowest_premium_of_the_lifetime.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.the_date_of_the_lowest_premium_of_the_lifetime, range, value, display)

  return offset + length, value
end

-- The First Trading Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_first_trading_date = {}

-- Size: The First Trading Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_first_trading_date.size = 8

-- Display: The First Trading Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_first_trading_date.display = function(value)
  return "The First Trading Date: "..value
end

-- Dissect: The First Trading Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_first_trading_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_first_trading_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_first_trading_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.the_first_trading_date, range, value, display)

  return offset + length, value
end

-- The Highest Premium In A Year
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_highest_premium_in_a_year = {}

-- Size: The Highest Premium In A Year
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_highest_premium_in_a_year.size = 11

-- Display: The Highest Premium In A Year
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_highest_premium_in_a_year.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_highest_premium_in_a_year.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "The Highest Premium In A Year: No Value"
  end

  return "The Highest Premium In A Year: "..text
end

-- Dissect: The Highest Premium In A Year
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_highest_premium_in_a_year.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_highest_premium_in_a_year.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.the_highest_premium_in_a_year, range, value, "The Highest Premium In A Year: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "The Highest Premium In A Year is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_highest_premium_in_a_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.the_highest_premium_in_a_year, range, value, display)

  return offset + length, value
end

-- The Highest Premium Of The Lifetime
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_highest_premium_of_the_lifetime = {}

-- Size: The Highest Premium Of The Lifetime
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_highest_premium_of_the_lifetime.size = 11

-- Display: The Highest Premium Of The Lifetime
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_highest_premium_of_the_lifetime.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_highest_premium_of_the_lifetime.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "The Highest Premium Of The Lifetime: No Value"
  end

  return "The Highest Premium Of The Lifetime: "..text
end

-- Dissect: The Highest Premium Of The Lifetime
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_highest_premium_of_the_lifetime.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_highest_premium_of_the_lifetime.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.the_highest_premium_of_the_lifetime, range, value, "The Highest Premium Of The Lifetime: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "The Highest Premium Of The Lifetime is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_highest_premium_of_the_lifetime.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.the_highest_premium_of_the_lifetime, range, value, display)

  return offset + length, value
end

-- The Last Settlement Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_last_settlement_price = {}

-- Size: The Last Settlement Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_last_settlement_price.size = 18

-- Display: The Last Settlement Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_last_settlement_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_last_settlement_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "The Last Settlement Price: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 8 then
    return "The Last Settlement Price: "..text.." (expected 8 places)"
  end

  return "The Last Settlement Price: "..text
end

-- Dissect: The Last Settlement Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_last_settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_last_settlement_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.the_last_settlement_price, range, value, "The Last Settlement Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "The Last Settlement Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_last_settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.the_last_settlement_price, range, value, display)

  return offset + length, value
end

-- The Last Trading Time
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_last_trading_time = {}

-- Size: The Last Trading Time
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_last_trading_time.size = 9

-- Display: The Last Trading Time
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_last_trading_time.display = function(value)
  return "The Last Trading Time: "..value
end

-- Dissect: The Last Trading Time
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_last_trading_time.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_last_trading_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_last_trading_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.the_last_trading_time, range, value, display)

  return offset + length, value
end

-- The Lowest Premium In A Year
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_lowest_premium_in_a_year = {}

-- Size: The Lowest Premium In A Year
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_lowest_premium_in_a_year.size = 11

-- Display: The Lowest Premium In A Year
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_lowest_premium_in_a_year.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_lowest_premium_in_a_year.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "The Lowest Premium In A Year: No Value"
  end

  return "The Lowest Premium In A Year: "..text
end

-- Dissect: The Lowest Premium In A Year
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_lowest_premium_in_a_year.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_lowest_premium_in_a_year.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.the_lowest_premium_in_a_year, range, value, "The Lowest Premium In A Year: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "The Lowest Premium In A Year is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_lowest_premium_in_a_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.the_lowest_premium_in_a_year, range, value, display)

  return offset + length, value
end

-- The Lowest Premium Of The Lifetime
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_lowest_premium_of_the_lifetime = {}

-- Size: The Lowest Premium Of The Lifetime
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_lowest_premium_of_the_lifetime.size = 11

-- Display: The Lowest Premium Of The Lifetime
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_lowest_premium_of_the_lifetime.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_lowest_premium_of_the_lifetime.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "The Lowest Premium Of The Lifetime: No Value"
  end

  return "The Lowest Premium Of The Lifetime: "..text
end

-- Dissect: The Lowest Premium Of The Lifetime
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_lowest_premium_of_the_lifetime.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_lowest_premium_of_the_lifetime.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.the_lowest_premium_of_the_lifetime, range, value, "The Lowest Premium Of The Lifetime: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "The Lowest Premium Of The Lifetime is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_lowest_premium_of_the_lifetime.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.the_lowest_premium_of_the_lifetime, range, value, display)

  return offset + length, value
end

-- The Time Imposing A Price Limit
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_time_imposing_a_price_limit = {}

-- Size: The Time Imposing A Price Limit
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_time_imposing_a_price_limit.size = 9

-- Display: The Time Imposing A Price Limit
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_time_imposing_a_price_limit.display = function(value)
  return "The Time Imposing A Price Limit: "..value
end

-- Dissect: The Time Imposing A Price Limit
koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_time_imposing_a_price_limit.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_time_imposing_a_price_limit.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_time_imposing_a_price_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.the_time_imposing_a_price_limit, range, value, display)

  return offset + length, value
end

-- Theoretical Settlement Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.theoretical_settlement_price = {}

-- Size: Theoretical Settlement Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.theoretical_settlement_price.size = 16

-- Display: Theoretical Settlement Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.theoretical_settlement_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.theoretical_settlement_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Theoretical Settlement Price: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Theoretical Settlement Price: "..text.." (expected 6 places)"
  end

  return "Theoretical Settlement Price: "..text
end

-- Dissect: Theoretical Settlement Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.theoretical_settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.theoretical_settlement_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.theoretical_settlement_price, range, value, "Theoretical Settlement Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Theoretical Settlement Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.theoretical_settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.theoretical_settlement_price, range, value, display)

  return offset + length, value
end

-- Time When Allocation Ended
koscom_mdcsrealtime_nightderivatives_exture_v2_020.time_when_allocation_ended = {}

-- Size: Time When Allocation Ended
koscom_mdcsrealtime_nightderivatives_exture_v2_020.time_when_allocation_ended.size = 9

-- Display: Time When Allocation Ended
koscom_mdcsrealtime_nightderivatives_exture_v2_020.time_when_allocation_ended.display = function(value)
  return "Time When Allocation Ended: "..value
end

-- Dissect: Time When Allocation Ended
koscom_mdcsrealtime_nightderivatives_exture_v2_020.time_when_allocation_ended.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.time_when_allocation_ended.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.time_when_allocation_ended.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.time_when_allocation_ended, range, value, display)

  return offset + length, value
end

-- Todays High
koscom_mdcsrealtime_nightderivatives_exture_v2_020.todays_high = {}

-- Size: Todays High
koscom_mdcsrealtime_nightderivatives_exture_v2_020.todays_high.size = 9

-- Display: Todays High
koscom_mdcsrealtime_nightderivatives_exture_v2_020.todays_high.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.todays_high.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Todays High: No Value"
  end

  return "Todays High: "..text
end

-- Dissect: Todays High
koscom_mdcsrealtime_nightderivatives_exture_v2_020.todays_high.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.todays_high.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.todays_high, range, value, "Todays High: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Todays High is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.todays_high.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.todays_high, range, value, display)

  return offset + length, value
end

-- Todays Low
koscom_mdcsrealtime_nightderivatives_exture_v2_020.todays_low = {}

-- Size: Todays Low
koscom_mdcsrealtime_nightderivatives_exture_v2_020.todays_low.size = 9

-- Display: Todays Low
koscom_mdcsrealtime_nightderivatives_exture_v2_020.todays_low.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.todays_low.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Todays Low: No Value"
  end

  return "Todays Low: "..text
end

-- Dissect: Todays Low
koscom_mdcsrealtime_nightderivatives_exture_v2_020.todays_low.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.todays_low.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.todays_low, range, value, "Todays Low: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Todays Low is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.todays_low.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.todays_low, range, value, display)

  return offset + length, value
end

-- Total Accumulated Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.total_accumulated_trading_value = {}

-- Size: Total Accumulated Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.total_accumulated_trading_value.size = 22

-- Display: Total Accumulated Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.total_accumulated_trading_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.total_accumulated_trading_value.size):string()
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
koscom_mdcsrealtime_nightderivatives_exture_v2_020.total_accumulated_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.total_accumulated_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.total_accumulated_trading_value, range, value, "Total Accumulated Trading Value: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Total Accumulated Trading Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.total_accumulated_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.total_accumulated_trading_value, range, value, display)

  return offset + length, value
end

-- Total Accumulated Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.total_accumulated_trading_volume = {}

-- Size: Total Accumulated Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.total_accumulated_trading_volume.size = 15

-- Display: Total Accumulated Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.total_accumulated_trading_volume.display = function(value)
  return "Total Accumulated Trading Volume: "..value
end

-- Dissect: Total Accumulated Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.total_accumulated_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.total_accumulated_trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.total_accumulated_trading_volume, range, value, "Total Accumulated Trading Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Total Accumulated Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.total_accumulated_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.total_accumulated_trading_volume, range, value, display)

  return offset + length, value
end

-- Total Number Of Instruments Of The Contract
koscom_mdcsrealtime_nightderivatives_exture_v2_020.total_number_of_instruments_of_the_contract = {}

-- Size: Total Number Of Instruments Of The Contract
koscom_mdcsrealtime_nightderivatives_exture_v2_020.total_number_of_instruments_of_the_contract.size = 6

-- Display: Total Number Of Instruments Of The Contract
koscom_mdcsrealtime_nightderivatives_exture_v2_020.total_number_of_instruments_of_the_contract.display = function(value)
  return "Total Number Of Instruments Of The Contract: "..value
end

-- Dissect: Total Number Of Instruments Of The Contract
koscom_mdcsrealtime_nightderivatives_exture_v2_020.total_number_of_instruments_of_the_contract.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.total_number_of_instruments_of_the_contract.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.total_number_of_instruments_of_the_contract, range, value, "Total Number Of Instruments Of The Contract: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Total Number Of Instruments Of The Contract is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.total_number_of_instruments_of_the_contract.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.total_number_of_instruments_of_the_contract, range, value, display)

  return offset + length, value
end

-- Tr Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.tr_code = {}

-- Size: Tr Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.tr_code.size = 5

-- Display: Tr Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.tr_code.labels = {
  ["I2000"] = "Tr Code: Polling Data Message (I2000)",
  ["B601V"] = "Tr Code: Derivatives Quote Five Levels Message (B601V)",
  ["B602V"] = "Tr Code: Derivatives Quote Five Levels Message (B602V)",
  ["B603V"] = "Tr Code: Derivatives Quote Five Levels Message (B603V)",
  ["B606V"] = "Tr Code: Derivatives Quote Five Levels Message (B606V)",
  ["B607V"] = "Tr Code: Derivatives Quote Five Levels Message (B607V)",
  ["B608V"] = "Tr Code: Derivatives Quote Five Levels Message (B608V)",
  ["B609V"] = "Tr Code: Derivatives Quote Five Levels Message (B609V)",
  ["B610V"] = "Tr Code: Derivatives Quote Five Levels Message (B610V)",
  ["B611V"] = "Tr Code: Derivatives Quote Five Levels Message (B611V)",
  ["B612V"] = "Tr Code: Derivatives Quote Five Levels Message (B612V)",
  ["B613V"] = "Tr Code: Derivatives Quote Five Levels Message (B613V)",
  ["B615V"] = "Tr Code: Derivatives Quote Five Levels Message (B615V)",
  ["B616V"] = "Tr Code: Derivatives Quote Five Levels Message (B616V)",
  ["B617V"] = "Tr Code: Derivatives Quote Five Levels Message (B617V)",
  ["B604V"] = "Tr Code: Derivatives Quote Ten Levels Message (B604V)",
  ["B605V"] = "Tr Code: Derivatives Quote Ten Levels Message (B605V)",
  ["B618V"] = "Tr Code: Derivatives Quote Ten Levels Message (B618V)",
  ["B201V"] = "Tr Code: Derivatives Snapshot Five Levels Message (B201V)",
  ["B202V"] = "Tr Code: Derivatives Snapshot Five Levels Message (B202V)",
  ["B203V"] = "Tr Code: Derivatives Snapshot Five Levels Message (B203V)",
  ["B206V"] = "Tr Code: Derivatives Snapshot Five Levels Message (B206V)",
  ["B207V"] = "Tr Code: Derivatives Snapshot Five Levels Message (B207V)",
  ["B208V"] = "Tr Code: Derivatives Snapshot Five Levels Message (B208V)",
  ["B209V"] = "Tr Code: Derivatives Snapshot Five Levels Message (B209V)",
  ["B210V"] = "Tr Code: Derivatives Snapshot Five Levels Message (B210V)",
  ["B211V"] = "Tr Code: Derivatives Snapshot Five Levels Message (B211V)",
  ["B212V"] = "Tr Code: Derivatives Snapshot Five Levels Message (B212V)",
  ["B213V"] = "Tr Code: Derivatives Snapshot Five Levels Message (B213V)",
  ["B215V"] = "Tr Code: Derivatives Snapshot Five Levels Message (B215V)",
  ["B216V"] = "Tr Code: Derivatives Snapshot Five Levels Message (B216V)",
  ["B217V"] = "Tr Code: Derivatives Snapshot Five Levels Message (B217V)",
  ["B204V"] = "Tr Code: Derivatives Snapshot Ten Levels Message (B204V)",
  ["B205V"] = "Tr Code: Derivatives Snapshot Ten Levels Message (B205V)",
  ["B218V"] = "Tr Code: Derivatives Snapshot Ten Levels Message (B218V)",
  ["A301V"] = "Tr Code: Derivatives Order Filled Message (A301V)",
  ["A302V"] = "Tr Code: Derivatives Order Filled Message (A302V)",
  ["A303V"] = "Tr Code: Derivatives Order Filled Message (A303V)",
  ["A304V"] = "Tr Code: Derivatives Order Filled Message (A304V)",
  ["A305V"] = "Tr Code: Derivatives Order Filled Message (A305V)",
  ["A306V"] = "Tr Code: Derivatives Order Filled Message (A306V)",
  ["A307V"] = "Tr Code: Derivatives Order Filled Message (A307V)",
  ["A308V"] = "Tr Code: Derivatives Order Filled Message (A308V)",
  ["A309V"] = "Tr Code: Derivatives Order Filled Message (A309V)",
  ["A310V"] = "Tr Code: Derivatives Order Filled Message (A310V)",
  ["A311V"] = "Tr Code: Derivatives Order Filled Message (A311V)",
  ["A312V"] = "Tr Code: Derivatives Order Filled Message (A312V)",
  ["A313V"] = "Tr Code: Derivatives Order Filled Message (A313V)",
  ["A315V"] = "Tr Code: Derivatives Order Filled Message (A315V)",
  ["A316V"] = "Tr Code: Derivatives Order Filled Message (A316V)",
  ["A317V"] = "Tr Code: Derivatives Order Filled Message (A317V)",
  ["A318V"] = "Tr Code: Derivatives Order Filled Message (A318V)",
  ["G701V"] = "Tr Code: Derivatives Order Filled Plus Quote Five Levels Message (G701V)",
  ["G702V"] = "Tr Code: Derivatives Order Filled Plus Quote Five Levels Message (G702V)",
  ["G703V"] = "Tr Code: Derivatives Order Filled Plus Quote Five Levels Message (G703V)",
  ["G706V"] = "Tr Code: Derivatives Order Filled Plus Quote Five Levels Message (G706V)",
  ["G707V"] = "Tr Code: Derivatives Order Filled Plus Quote Five Levels Message (G707V)",
  ["G708V"] = "Tr Code: Derivatives Order Filled Plus Quote Five Levels Message (G708V)",
  ["G709V"] = "Tr Code: Derivatives Order Filled Plus Quote Five Levels Message (G709V)",
  ["G710V"] = "Tr Code: Derivatives Order Filled Plus Quote Five Levels Message (G710V)",
  ["G711V"] = "Tr Code: Derivatives Order Filled Plus Quote Five Levels Message (G711V)",
  ["G712V"] = "Tr Code: Derivatives Order Filled Plus Quote Five Levels Message (G712V)",
  ["G713V"] = "Tr Code: Derivatives Order Filled Plus Quote Five Levels Message (G713V)",
  ["G715V"] = "Tr Code: Derivatives Order Filled Plus Quote Five Levels Message (G715V)",
  ["G716V"] = "Tr Code: Derivatives Order Filled Plus Quote Five Levels Message (G716V)",
  ["G717V"] = "Tr Code: Derivatives Order Filled Plus Quote Five Levels Message (G717V)",
  ["G704V"] = "Tr Code: Derivatives Order Filled Plus Quote Ten Levels Message (G704V)",
  ["G705V"] = "Tr Code: Derivatives Order Filled Plus Quote Ten Levels Message (G705V)",
  ["G718V"] = "Tr Code: Derivatives Order Filled Plus Quote Ten Levels Message (G718V)",
  ["R101V"] = "Tr Code: Derivatives Market Operation Ts Plus Quote Five Levels Message (R101V)",
  ["R102V"] = "Tr Code: Derivatives Market Operation Ts Plus Quote Five Levels Message (R102V)",
  ["R103V"] = "Tr Code: Derivatives Market Operation Ts Plus Quote Five Levels Message (R103V)",
  ["R106V"] = "Tr Code: Derivatives Market Operation Ts Plus Quote Five Levels Message (R106V)",
  ["R107V"] = "Tr Code: Derivatives Market Operation Ts Plus Quote Five Levels Message (R107V)",
  ["R108V"] = "Tr Code: Derivatives Market Operation Ts Plus Quote Five Levels Message (R108V)",
  ["R109V"] = "Tr Code: Derivatives Market Operation Ts Plus Quote Five Levels Message (R109V)",
  ["R110V"] = "Tr Code: Derivatives Market Operation Ts Plus Quote Five Levels Message (R110V)",
  ["R111V"] = "Tr Code: Derivatives Market Operation Ts Plus Quote Five Levels Message (R111V)",
  ["R112V"] = "Tr Code: Derivatives Market Operation Ts Plus Quote Five Levels Message (R112V)",
  ["R113V"] = "Tr Code: Derivatives Market Operation Ts Plus Quote Five Levels Message (R113V)",
  ["R115V"] = "Tr Code: Derivatives Market Operation Ts Plus Quote Five Levels Message (R115V)",
  ["R116V"] = "Tr Code: Derivatives Market Operation Ts Plus Quote Five Levels Message (R116V)",
  ["R117V"] = "Tr Code: Derivatives Market Operation Ts Plus Quote Five Levels Message (R117V)",
  ["R104V"] = "Tr Code: Derivatives Market Operation Ts Plus Quote Ten Levels Message (R104V)",
  ["R105V"] = "Tr Code: Derivatives Market Operation Ts Plus Quote Ten Levels Message (R105V)",
  ["R118V"] = "Tr Code: Derivatives Market Operation Ts Plus Quote Ten Levels Message (R118V)",
  ["C401V"] = "Tr Code: Derivatives Negotiated Trade Message (C401V)",
  ["C402V"] = "Tr Code: Derivatives Negotiated Trade Message (C402V)",
  ["C403V"] = "Tr Code: Derivatives Negotiated Trade Message (C403V)",
  ["C404V"] = "Tr Code: Derivatives Negotiated Trade Message (C404V)",
  ["C405V"] = "Tr Code: Derivatives Negotiated Trade Message (C405V)",
  ["C406V"] = "Tr Code: Derivatives Negotiated Trade Message (C406V)",
  ["C407V"] = "Tr Code: Derivatives Negotiated Trade Message (C407V)",
  ["C408V"] = "Tr Code: Derivatives Negotiated Trade Message (C408V)",
  ["C409V"] = "Tr Code: Derivatives Negotiated Trade Message (C409V)",
  ["C410V"] = "Tr Code: Derivatives Negotiated Trade Message (C410V)",
  ["C411V"] = "Tr Code: Derivatives Negotiated Trade Message (C411V)",
  ["C412V"] = "Tr Code: Derivatives Negotiated Trade Message (C412V)",
  ["C413V"] = "Tr Code: Derivatives Negotiated Trade Message (C413V)",
  ["C415V"] = "Tr Code: Derivatives Negotiated Trade Message (C415V)",
  ["C416V"] = "Tr Code: Derivatives Negotiated Trade Message (C416V)",
  ["C417V"] = "Tr Code: Derivatives Negotiated Trade Message (C417V)",
  ["C418V"] = "Tr Code: Derivatives Negotiated Trade Message (C418V)",
  ["A701S"] = "Tr Code: Derivatives Market Operation Ts Message (A701S)",
  ["A702S"] = "Tr Code: Derivatives Market Operation Ts Message (A702S)",
  ["A703S"] = "Tr Code: Derivatives Market Operation Ts Message (A703S)",
  ["A704S"] = "Tr Code: Derivatives Market Operation Ts Message (A704S)",
  ["A705S"] = "Tr Code: Derivatives Market Operation Ts Message (A705S)",
  ["A701Q"] = "Tr Code: Derivatives Market Operation Ts Message (A701Q)",
  ["A701X"] = "Tr Code: Derivatives Market Operation Ts Message (A701X)",
  ["A701B"] = "Tr Code: Derivatives Market Operation Ts Message (A701B)",
  ["A701M"] = "Tr Code: Derivatives Market Operation Ts Message (A701M)",
  ["A701K"] = "Tr Code: Derivatives Market Operation Ts Message (A701K)",
  ["A701R"] = "Tr Code: Derivatives Market Operation Ts Message (A701R)",
  ["A701V"] = "Tr Code: Derivatives Market Operation Ts Message (A701V)",
  ["A702V"] = "Tr Code: Derivatives Market Operation Ts Message (A702V)",
  ["A703V"] = "Tr Code: Derivatives Market Operation Ts Message (A703V)",
  ["A704V"] = "Tr Code: Derivatives Market Operation Ts Message (A704V)",
  ["A705V"] = "Tr Code: Derivatives Market Operation Ts Message (A705V)",
  ["A706V"] = "Tr Code: Derivatives Market Operation Ts Message (A706V)",
  ["A707V"] = "Tr Code: Derivatives Market Operation Ts Message (A707V)",
  ["A708V"] = "Tr Code: Derivatives Market Operation Ts Message (A708V)",
  ["A709V"] = "Tr Code: Derivatives Market Operation Ts Message (A709V)",
  ["A710V"] = "Tr Code: Derivatives Market Operation Ts Message (A710V)",
  ["A711V"] = "Tr Code: Derivatives Market Operation Ts Message (A711V)",
  ["A712V"] = "Tr Code: Derivatives Market Operation Ts Message (A712V)",
  ["A713V"] = "Tr Code: Derivatives Market Operation Ts Message (A713V)",
  ["A715V"] = "Tr Code: Derivatives Market Operation Ts Message (A715V)",
  ["A716V"] = "Tr Code: Derivatives Market Operation Ts Message (A716V)",
  ["A717V"] = "Tr Code: Derivatives Market Operation Ts Message (A717V)",
  ["A718V"] = "Tr Code: Derivatives Market Operation Ts Message (A718V)",
  ["A701G"] = "Tr Code: Derivatives Market Operation Ts Message (A701G)",
  ["A701E"] = "Tr Code: Derivatives Market Operation Ts Message (A701E)",
  ["A601V"] = "Tr Code: Derivatives Issue Closing Message (A601V)",
  ["A602V"] = "Tr Code: Derivatives Issue Closing Message (A602V)",
  ["A603V"] = "Tr Code: Derivatives Issue Closing Message (A603V)",
  ["A604V"] = "Tr Code: Derivatives Issue Closing Message (A604V)",
  ["A605V"] = "Tr Code: Derivatives Issue Closing Message (A605V)",
  ["A606V"] = "Tr Code: Derivatives Issue Closing Message (A606V)",
  ["A607V"] = "Tr Code: Derivatives Issue Closing Message (A607V)",
  ["A608V"] = "Tr Code: Derivatives Issue Closing Message (A608V)",
  ["A609V"] = "Tr Code: Derivatives Issue Closing Message (A609V)",
  ["A610V"] = "Tr Code: Derivatives Issue Closing Message (A610V)",
  ["A611V"] = "Tr Code: Derivatives Issue Closing Message (A611V)",
  ["A612V"] = "Tr Code: Derivatives Issue Closing Message (A612V)",
  ["A613V"] = "Tr Code: Derivatives Issue Closing Message (A613V)",
  ["A615V"] = "Tr Code: Derivatives Issue Closing Message (A615V)",
  ["A616V"] = "Tr Code: Derivatives Issue Closing Message (A616V)",
  ["A617V"] = "Tr Code: Derivatives Issue Closing Message (A617V)",
  ["A618V"] = "Tr Code: Derivatives Issue Closing Message (A618V)",
  ["M401S"] = "Tr Code: Derivatives Market Operation Schedule Message (M401S)",
  ["M402S"] = "Tr Code: Derivatives Market Operation Schedule Message (M402S)",
  ["M403S"] = "Tr Code: Derivatives Market Operation Schedule Message (M403S)",
  ["M404S"] = "Tr Code: Derivatives Market Operation Schedule Message (M404S)",
  ["M405S"] = "Tr Code: Derivatives Market Operation Schedule Message (M405S)",
  ["M401Q"] = "Tr Code: Derivatives Market Operation Schedule Message (M401Q)",
  ["M401X"] = "Tr Code: Derivatives Market Operation Schedule Message (M401X)",
  ["M401B"] = "Tr Code: Derivatives Market Operation Schedule Message (M401B)",
  ["M401M"] = "Tr Code: Derivatives Market Operation Schedule Message (M401M)",
  ["M401K"] = "Tr Code: Derivatives Market Operation Schedule Message (M401K)",
  ["M401R"] = "Tr Code: Derivatives Market Operation Schedule Message (M401R)",
  ["M401V"] = "Tr Code: Derivatives Market Operation Schedule Message (M401V)",
  ["M402V"] = "Tr Code: Derivatives Market Operation Schedule Message (M402V)",
  ["M403V"] = "Tr Code: Derivatives Market Operation Schedule Message (M403V)",
  ["M404V"] = "Tr Code: Derivatives Market Operation Schedule Message (M404V)",
  ["M405V"] = "Tr Code: Derivatives Market Operation Schedule Message (M405V)",
  ["M406V"] = "Tr Code: Derivatives Market Operation Schedule Message (M406V)",
  ["M407V"] = "Tr Code: Derivatives Market Operation Schedule Message (M407V)",
  ["M408V"] = "Tr Code: Derivatives Market Operation Schedule Message (M408V)",
  ["M409V"] = "Tr Code: Derivatives Market Operation Schedule Message (M409V)",
  ["M410V"] = "Tr Code: Derivatives Market Operation Schedule Message (M410V)",
  ["M411V"] = "Tr Code: Derivatives Market Operation Schedule Message (M411V)",
  ["M412V"] = "Tr Code: Derivatives Market Operation Schedule Message (M412V)",
  ["M413V"] = "Tr Code: Derivatives Market Operation Schedule Message (M413V)",
  ["M415V"] = "Tr Code: Derivatives Market Operation Schedule Message (M415V)",
  ["M416V"] = "Tr Code: Derivatives Market Operation Schedule Message (M416V)",
  ["M417V"] = "Tr Code: Derivatives Market Operation Schedule Message (M417V)",
  ["M418V"] = "Tr Code: Derivatives Market Operation Schedule Message (M418V)",
  ["M401G"] = "Tr Code: Derivatives Market Operation Schedule Message (M401G)",
  ["M401E"] = "Tr Code: Derivatives Market Operation Schedule Message (M401E)",
  ["Q201V"] = "Tr Code: Derivatives Dynamic Upper Lower Limit Message (Q201V)",
  ["Q202V"] = "Tr Code: Derivatives Dynamic Upper Lower Limit Message (Q202V)",
  ["Q203V"] = "Tr Code: Derivatives Dynamic Upper Lower Limit Message (Q203V)",
  ["Q204V"] = "Tr Code: Derivatives Dynamic Upper Lower Limit Message (Q204V)",
  ["Q206V"] = "Tr Code: Derivatives Dynamic Upper Lower Limit Message (Q206V)",
  ["Q208V"] = "Tr Code: Derivatives Dynamic Upper Lower Limit Message (Q208V)",
  ["Q209V"] = "Tr Code: Derivatives Dynamic Upper Lower Limit Message (Q209V)",
  ["Q210V"] = "Tr Code: Derivatives Dynamic Upper Lower Limit Message (Q210V)",
  ["Q211V"] = "Tr Code: Derivatives Dynamic Upper Lower Limit Message (Q211V)",
  ["Q212V"] = "Tr Code: Derivatives Dynamic Upper Lower Limit Message (Q212V)",
  ["Q216V"] = "Tr Code: Derivatives Dynamic Upper Lower Limit Message (Q216V)",
  ["Q217V"] = "Tr Code: Derivatives Dynamic Upper Lower Limit Message (Q217V)",
  ["V101V"] = "Tr Code: Derivatives Price Limit Range Increase Message (V101V)",
  ["V102V"] = "Tr Code: Derivatives Price Limit Range Increase Message (V102V)",
  ["V103V"] = "Tr Code: Derivatives Price Limit Range Increase Message (V103V)",
  ["V104V"] = "Tr Code: Derivatives Price Limit Range Increase Message (V104V)",
  ["V105V"] = "Tr Code: Derivatives Price Limit Range Increase Message (V105V)",
  ["V108V"] = "Tr Code: Derivatives Price Limit Range Increase Message (V108V)",
  ["V109V"] = "Tr Code: Derivatives Price Limit Range Increase Message (V109V)",
  ["V111V"] = "Tr Code: Derivatives Price Limit Range Increase Message (V111V)",
  ["V112V"] = "Tr Code: Derivatives Price Limit Range Increase Message (V112V)",
  ["V113V"] = "Tr Code: Derivatives Price Limit Range Increase Message (V113V)",
  ["V115V"] = "Tr Code: Derivatives Price Limit Range Increase Message (V115V)",
  ["V116V"] = "Tr Code: Derivatives Price Limit Range Increase Message (V116V)",
  ["V117V"] = "Tr Code: Derivatives Price Limit Range Increase Message (V117V)",
  ["V118V"] = "Tr Code: Derivatives Price Limit Range Increase Message (V118V)",
  ["O601S"] = "Tr Code: Derivatives Quantity Allocation Message (O601S)",
  ["O603S"] = "Tr Code: Derivatives Quantity Allocation Message (O603S)",
  ["O604S"] = "Tr Code: Derivatives Quantity Allocation Message (O604S)",
  ["O605S"] = "Tr Code: Derivatives Quantity Allocation Message (O605S)",
  ["O601Q"] = "Tr Code: Derivatives Quantity Allocation Message (O601Q)",
  ["O601X"] = "Tr Code: Derivatives Quantity Allocation Message (O601X)",
  ["O601V"] = "Tr Code: Derivatives Quantity Allocation Message (O601V)",
  ["O602V"] = "Tr Code: Derivatives Quantity Allocation Message (O602V)",
  ["O603V"] = "Tr Code: Derivatives Quantity Allocation Message (O603V)",
  ["O604V"] = "Tr Code: Derivatives Quantity Allocation Message (O604V)",
  ["O605V"] = "Tr Code: Derivatives Quantity Allocation Message (O605V)",
  ["O606V"] = "Tr Code: Derivatives Quantity Allocation Message (O606V)",
  ["O607V"] = "Tr Code: Derivatives Quantity Allocation Message (O607V)",
  ["O608V"] = "Tr Code: Derivatives Quantity Allocation Message (O608V)",
  ["O609V"] = "Tr Code: Derivatives Quantity Allocation Message (O609V)",
  ["O610V"] = "Tr Code: Derivatives Quantity Allocation Message (O610V)",
  ["O611V"] = "Tr Code: Derivatives Quantity Allocation Message (O611V)",
  ["O612V"] = "Tr Code: Derivatives Quantity Allocation Message (O612V)",
  ["O613V"] = "Tr Code: Derivatives Quantity Allocation Message (O613V)",
  ["O615V"] = "Tr Code: Derivatives Quantity Allocation Message (O615V)",
  ["O616V"] = "Tr Code: Derivatives Quantity Allocation Message (O616V)",
  ["O617V"] = "Tr Code: Derivatives Quantity Allocation Message (O617V)",
  ["O618V"] = "Tr Code: Derivatives Quantity Allocation Message (O618V)",
  ["IF01S"] = "Tr Code: Derivatives Group Order Acceptance Halt Message (IF01S)",
  ["IF02S"] = "Tr Code: Derivatives Group Order Acceptance Halt Message (IF02S)",
  ["IF03S"] = "Tr Code: Derivatives Group Order Acceptance Halt Message (IF03S)",
  ["IF04S"] = "Tr Code: Derivatives Group Order Acceptance Halt Message (IF04S)",
  ["IF05S"] = "Tr Code: Derivatives Group Order Acceptance Halt Message (IF05S)",
  ["IF01Q"] = "Tr Code: Derivatives Group Order Acceptance Halt Message (IF01Q)",
  ["IF01V"] = "Tr Code: Derivatives Group Order Acceptance Halt Message (IF01V)",
  ["IF02V"] = "Tr Code: Derivatives Group Order Acceptance Halt Message (IF02V)",
  ["IF03V"] = "Tr Code: Derivatives Group Order Acceptance Halt Message (IF03V)",
  ["IF04V"] = "Tr Code: Derivatives Group Order Acceptance Halt Message (IF04V)",
  ["IF05V"] = "Tr Code: Derivatives Group Order Acceptance Halt Message (IF05V)",
  ["IF06V"] = "Tr Code: Derivatives Group Order Acceptance Halt Message (IF06V)",
  ["IF07V"] = "Tr Code: Derivatives Group Order Acceptance Halt Message (IF07V)",
  ["IF08V"] = "Tr Code: Derivatives Group Order Acceptance Halt Message (IF08V)",
  ["IF09V"] = "Tr Code: Derivatives Group Order Acceptance Halt Message (IF09V)",
  ["IF10V"] = "Tr Code: Derivatives Group Order Acceptance Halt Message (IF10V)",
  ["IF11V"] = "Tr Code: Derivatives Group Order Acceptance Halt Message (IF11V)",
  ["IF12V"] = "Tr Code: Derivatives Group Order Acceptance Halt Message (IF12V)",
  ["IF13V"] = "Tr Code: Derivatives Group Order Acceptance Halt Message (IF13V)",
  ["IF15V"] = "Tr Code: Derivatives Group Order Acceptance Halt Message (IF15V)",
  ["IF16V"] = "Tr Code: Derivatives Group Order Acceptance Halt Message (IF16V)",
  ["IF17V"] = "Tr Code: Derivatives Group Order Acceptance Halt Message (IF17V)",
  ["IF18V"] = "Tr Code: Derivatives Group Order Acceptance Halt Message (IF18V)",
  ["A001V"] = "Tr Code: Derivatives Batch Data Message (A001V)",
  ["A002V"] = "Tr Code: Derivatives Batch Data Message (A002V)",
  ["A003V"] = "Tr Code: Derivatives Batch Data Message (A003V)",
  ["A004V"] = "Tr Code: Derivatives Batch Data Message (A004V)",
  ["A005V"] = "Tr Code: Derivatives Batch Data Message (A005V)",
  ["A006V"] = "Tr Code: Derivatives Batch Data Message (A006V)",
  ["A007V"] = "Tr Code: Derivatives Batch Data Message (A007V)",
  ["A008V"] = "Tr Code: Derivatives Batch Data Message (A008V)",
  ["A009V"] = "Tr Code: Derivatives Batch Data Message (A009V)",
  ["A010V"] = "Tr Code: Derivatives Batch Data Message (A010V)",
  ["A011V"] = "Tr Code: Derivatives Batch Data Message (A011V)",
  ["A012V"] = "Tr Code: Derivatives Batch Data Message (A012V)",
  ["A013V"] = "Tr Code: Derivatives Batch Data Message (A013V)",
  ["A015V"] = "Tr Code: Derivatives Batch Data Message (A015V)",
  ["A016V"] = "Tr Code: Derivatives Batch Data Message (A016V)",
  ["A017V"] = "Tr Code: Derivatives Batch Data Message (A017V)",
  ["A018V"] = "Tr Code: Derivatives Batch Data Message (A018V)",
  ["H404V"] = "Tr Code: Equity Derivatives Adjustment Details Message (H404V)",
  ["H405V"] = "Tr Code: Equity Derivatives Adjustment Details Message (H405V)",
  ["H418V"] = "Tr Code: Equity Derivatives Adjustment Details Message (H418V)",
  ["H606V"] = "Tr Code: Commodity Futures Settlement Reference Ktb Message (H606V)",
  ["H101V"] = "Tr Code: Derivatives Investor Activities Message (H101V)",
  ["H102V"] = "Tr Code: Derivatives Investor Activities Message (H102V)",
  ["H103V"] = "Tr Code: Derivatives Investor Activities Message (H103V)",
  ["H104V"] = "Tr Code: Derivatives Investor Activities Message (H104V)",
  ["H105V"] = "Tr Code: Derivatives Investor Activities Message (H105V)",
  ["H106V"] = "Tr Code: Derivatives Investor Activities Message (H106V)",
  ["H107V"] = "Tr Code: Derivatives Investor Activities Message (H107V)",
  ["H108V"] = "Tr Code: Derivatives Investor Activities Message (H108V)",
  ["H109V"] = "Tr Code: Derivatives Investor Activities Message (H109V)",
  ["H110V"] = "Tr Code: Derivatives Investor Activities Message (H110V)",
  ["H111V"] = "Tr Code: Derivatives Investor Activities Message (H111V)",
  ["H112V"] = "Tr Code: Derivatives Investor Activities Message (H112V)",
  ["H113V"] = "Tr Code: Derivatives Investor Activities Message (H113V)",
  ["H115V"] = "Tr Code: Derivatives Investor Activities Message (H115V)",
  ["H116V"] = "Tr Code: Derivatives Investor Activities Message (H116V)",
  ["H117V"] = "Tr Code: Derivatives Investor Activities Message (H117V)",
  ["H118V"] = "Tr Code: Derivatives Investor Activities Message (H118V)",
  ["H201V"] = "Tr Code: Derivatives Open Interest Message (H201V)",
  ["H202V"] = "Tr Code: Derivatives Open Interest Message (H202V)",
  ["H203V"] = "Tr Code: Derivatives Open Interest Message (H203V)",
  ["H204V"] = "Tr Code: Derivatives Open Interest Message (H204V)",
  ["H205V"] = "Tr Code: Derivatives Open Interest Message (H205V)",
  ["H206V"] = "Tr Code: Derivatives Open Interest Message (H206V)",
  ["H207V"] = "Tr Code: Derivatives Open Interest Message (H207V)",
  ["H208V"] = "Tr Code: Derivatives Open Interest Message (H208V)",
  ["H209V"] = "Tr Code: Derivatives Open Interest Message (H209V)",
  ["H210V"] = "Tr Code: Derivatives Open Interest Message (H210V)",
  ["H211V"] = "Tr Code: Derivatives Open Interest Message (H211V)",
  ["H212V"] = "Tr Code: Derivatives Open Interest Message (H212V)",
  ["H213V"] = "Tr Code: Derivatives Open Interest Message (H213V)",
  ["H215V"] = "Tr Code: Derivatives Open Interest Message (H215V)",
  ["H216V"] = "Tr Code: Derivatives Open Interest Message (H216V)",
  ["H217V"] = "Tr Code: Derivatives Open Interest Message (H217V)",
  ["H218V"] = "Tr Code: Derivatives Open Interest Message (H218V)",
  ["H301V"] = "Tr Code: Futures Settled Price Message (H301V)",
  ["H302V"] = "Tr Code: Futures Settled Price Message (H302V)",
  ["H304V"] = "Tr Code: Futures Settled Price Message (H304V)",
  ["H306V"] = "Tr Code: Futures Settled Price Message (H306V)",
  ["H308V"] = "Tr Code: Futures Settled Price Message (H308V)",
  ["H309V"] = "Tr Code: Futures Settled Price Message (H309V)",
  ["H310V"] = "Tr Code: Futures Settled Price Message (H310V)",
  ["H311V"] = "Tr Code: Futures Settled Price Message (H311V)",
  ["H313V"] = "Tr Code: Futures Settled Price Message (H313V)",
  ["ID03V"] = "Tr Code: Options Base Price Of Clearing Margins Message (ID03V)",
  ["ID05V"] = "Tr Code: Options Base Price Of Clearing Margins Message (ID05V)",
  ["ID07V"] = "Tr Code: Options Base Price Of Clearing Margins Message (ID07V)",
  ["ID12V"] = "Tr Code: Options Base Price Of Clearing Margins Message (ID12V)",
  ["ID15V"] = "Tr Code: Options Base Price Of Clearing Margins Message (ID15V)",
  ["ID16V"] = "Tr Code: Options Base Price Of Clearing Margins Message (ID16V)",
  ["ID17V"] = "Tr Code: Options Base Price Of Clearing Margins Message (ID17V)",
  ["ID18V"] = "Tr Code: Options Base Price Of Clearing Margins Message (ID18V)",
  ["P103V"] = "Tr Code: Options Implied Volatility Message (P103V)",
  ["P112V"] = "Tr Code: Options Implied Volatility Message (P112V)",
  ["P115V"] = "Tr Code: Options Implied Volatility Message (P115V)",
  ["P116V"] = "Tr Code: Options Implied Volatility Message (P116V)",
  ["P117V"] = "Tr Code: Options Implied Volatility Message (P117V)",
  ["N703V"] = "Tr Code: Options Sensitivity Message (N703V)",
  ["N705V"] = "Tr Code: Options Sensitivity Message (N705V)",
  ["N707V"] = "Tr Code: Options Sensitivity Message (N707V)",
  ["N712V"] = "Tr Code: Options Sensitivity Message (N712V)",
  ["N715V"] = "Tr Code: Options Sensitivity Message (N715V)",
  ["N716V"] = "Tr Code: Options Sensitivity Message (N716V)",
  ["N717V"] = "Tr Code: Options Sensitivity Message (N717V)",
  ["N718V"] = "Tr Code: Options Sensitivity Message (N718V)",
  ["H506V"] = "Tr Code: Commodity Futures Spot Settlement Reference Message (H506V)",
  ["H599V"] = "Tr Code: Commodity Futures Spot Settlement Reference Message (H599V)",
  ["HA06V"] = "Tr Code: Daily Disclosed Rfr Message (HA06V)",
}

koscom_mdcsrealtime_nightderivatives_exture_v2_020.tr_code.display = function(value)
  return koscom_mdcsrealtime_nightderivatives_exture_v2_020.tr_code.labels[value] or "Tr Code: Unknown("..value..")"
end

-- Dissect: Tr Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.tr_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.tr_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.tr_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.tr_code, range, value, display)

  return offset + length, value
end

-- Trading Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_date = {}

-- Size: Trading Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_date.size = 8

-- Display: Trading Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_date.display = function(value)
  return "Trading Date: "..value
end

-- Dissect: Trading Date
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_date.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.trading_date, range, value, display)

  return offset + length, value
end

-- Trading Halt
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_halt = {}

-- Size: Trading Halt
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_halt.size = 1

-- Display: Trading Halt
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_halt.display = function(value)
  return "Trading Halt: "..value
end

-- Dissect: Trading Halt
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_halt.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_halt.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_halt.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.trading_halt, range, value, display)

  return offset + length, value
end

-- Trading Halt Reason Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_halt_reason_code = {}

-- Size: Trading Halt Reason Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_halt_reason_code.size = 3

-- Display: Trading Halt Reason Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_halt_reason_code.display = function(value)
  return "Trading Halt Reason Code: "..value
end

-- Dissect: Trading Halt Reason Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_halt_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_halt_reason_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_halt_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.trading_halt_reason_code, range, value, display)

  return offset + length, value
end

-- Trading Halt Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_halt_type_code = {}

-- Size: Trading Halt Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_halt_type_code.size = 1

-- Display: Trading Halt Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_halt_type_code.display = function(value)
  return "Trading Halt Type Code: "..value
end

-- Dissect: Trading Halt Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_halt_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_halt_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_halt_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.trading_halt_type_code, range, value, display)

  return offset + length, value
end

-- Trading Multiplier
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_multiplier = {}

-- Size: Trading Multiplier
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_multiplier.size = 22

-- Display: Trading Multiplier
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_multiplier.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_multiplier.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Trading Multiplier: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 8 then
    return "Trading Multiplier: "..text.." (expected 8 places)"
  end

  return "Trading Multiplier: "..text
end

-- Dissect: Trading Multiplier
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_multiplier.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.trading_multiplier, range, value, "Trading Multiplier: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Trading Multiplier is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.trading_multiplier, range, value, display)

  return offset + length, value
end

-- Trading Multiplier After Adjustment Equity Options 10
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_multiplier_after_adjustment_equity_options_10 = {}

-- Size: Trading Multiplier After Adjustment Equity Options 10
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_multiplier_after_adjustment_equity_options_10.size = 22

-- Display: Trading Multiplier After Adjustment Equity Options 10
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_multiplier_after_adjustment_equity_options_10.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_multiplier_after_adjustment_equity_options_10.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Trading Multiplier After Adjustment Equity Options 10: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 8 then
    return "Trading Multiplier After Adjustment Equity Options 10: "..text.." (expected 8 places)"
  end

  return "Trading Multiplier After Adjustment Equity Options 10: "..text
end

-- Dissect: Trading Multiplier After Adjustment Equity Options 10
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_multiplier_after_adjustment_equity_options_10.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_multiplier_after_adjustment_equity_options_10.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.trading_multiplier_after_adjustment_equity_options_10, range, value, "Trading Multiplier After Adjustment Equity Options 10: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Trading Multiplier After Adjustment Equity Options 10 is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_multiplier_after_adjustment_equity_options_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.trading_multiplier_after_adjustment_equity_options_10, range, value, display)

  return offset + length, value
end

-- Trading Multiplier Before Adjustment
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_multiplier_before_adjustment = {}

-- Size: Trading Multiplier Before Adjustment
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_multiplier_before_adjustment.size = 22

-- Display: Trading Multiplier Before Adjustment
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_multiplier_before_adjustment.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_multiplier_before_adjustment.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Trading Multiplier Before Adjustment: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 8 then
    return "Trading Multiplier Before Adjustment: "..text.." (expected 8 places)"
  end

  return "Trading Multiplier Before Adjustment: "..text
end

-- Dissect: Trading Multiplier Before Adjustment
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_multiplier_before_adjustment.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_multiplier_before_adjustment.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.trading_multiplier_before_adjustment, range, value, "Trading Multiplier Before Adjustment: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Trading Multiplier Before Adjustment is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_multiplier_before_adjustment.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.trading_multiplier_before_adjustment, range, value, display)

  return offset + length, value
end

-- Trading Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_price = {}

-- Size: Trading Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_price.size = 9

-- Display: Trading Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Trading Price: No Value"
  end

  return "Trading Price: "..text
end

-- Dissect: Trading Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.trading_price, range, value, "Trading Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Trading Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.trading_price, range, value, display)

  return offset + length, value
end

-- Trading Unit
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_unit = {}

-- Size: Trading Unit
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_unit.size = 22

-- Display: Trading Unit
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_unit.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_unit.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Trading Unit: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 8 then
    return "Trading Unit: "..text.." (expected 8 places)"
  end

  return "Trading Unit: "..text
end

-- Dissect: Trading Unit
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_unit.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_unit.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.trading_unit, range, value, "Trading Unit: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Trading Unit is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.trading_unit, range, value, display)

  return offset + length, value
end

-- Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_volume = {}

-- Size: Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_volume.size = 9

-- Display: Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_volume.display = function(value)
  return "Trading Volume: "..value
end

-- Dissect: Trading Volume
koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.trading_volume, range, value, "Trading Volume: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.trading_volume, range, value, display)

  return offset + length, value
end

-- Transaction Status Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.transaction_status_type_code = {}

-- Size: Transaction Status Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.transaction_status_type_code.size = 2

-- Display: Transaction Status Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.transaction_status_type_code.display = function(value)
  return "Transaction Status Type Code: "..value
end

-- Dissect: Transaction Status Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.transaction_status_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.transaction_status_type_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.transaction_status_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.transaction_status_type_code, range, value, display)

  return offset + length, value
end

-- Type Code Of Settlement Price After Exercising An Option
koscom_mdcsrealtime_nightderivatives_exture_v2_020.type_code_of_settlement_price_after_exercising_an_option = {}

-- Size: Type Code Of Settlement Price After Exercising An Option
koscom_mdcsrealtime_nightderivatives_exture_v2_020.type_code_of_settlement_price_after_exercising_an_option.size = 1

-- Display: Type Code Of Settlement Price After Exercising An Option
koscom_mdcsrealtime_nightderivatives_exture_v2_020.type_code_of_settlement_price_after_exercising_an_option.display = function(value)
  return "Type Code Of Settlement Price After Exercising An Option: "..value
end

-- Dissect: Type Code Of Settlement Price After Exercising An Option
koscom_mdcsrealtime_nightderivatives_exture_v2_020.type_code_of_settlement_price_after_exercising_an_option.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.type_code_of_settlement_price_after_exercising_an_option.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.type_code_of_settlement_price_after_exercising_an_option.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.type_code_of_settlement_price_after_exercising_an_option, range, value, display)

  return offset + length, value
end

-- Type Of Liquidityproviding Lp
koscom_mdcsrealtime_nightderivatives_exture_v2_020.type_of_liquidityproviding_lp = {}

-- Size: Type Of Liquidityproviding Lp
koscom_mdcsrealtime_nightderivatives_exture_v2_020.type_of_liquidityproviding_lp.size = 1

-- Display: Type Of Liquidityproviding Lp
koscom_mdcsrealtime_nightderivatives_exture_v2_020.type_of_liquidityproviding_lp.display = function(value)
  return "Type Of Liquidityproviding Lp: "..value
end

-- Dissect: Type Of Liquidityproviding Lp
koscom_mdcsrealtime_nightderivatives_exture_v2_020.type_of_liquidityproviding_lp.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.type_of_liquidityproviding_lp.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.type_of_liquidityproviding_lp.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.type_of_liquidityproviding_lp, range, value, display)

  return offset + length, value
end

-- Underlying Asset Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.underlying_asset_id = {}

-- Size: Underlying Asset Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.underlying_asset_id.size = 3

-- Display: Underlying Asset Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.underlying_asset_id.display = function(value)
  return "Underlying Asset Id: "..value
end

-- Dissect: Underlying Asset Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.underlying_asset_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.underlying_asset_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.underlying_asset_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.underlying_asset_id, range, value, display)

  return offset + length, value
end

-- Underlying Asset Market Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.underlying_asset_market_id = {}

-- Size: Underlying Asset Market Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.underlying_asset_market_id.size = 3

-- Display: Underlying Asset Market Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.underlying_asset_market_id.display = function(value)
  return "Underlying Asset Market Id: "..value
end

-- Dissect: Underlying Asset Market Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.underlying_asset_market_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.underlying_asset_market_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.underlying_asset_market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.underlying_asset_market_id, range, value, display)

  return offset + length, value
end

-- Underlying Asset Product Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.underlying_asset_product_id = {}

-- Size: Underlying Asset Product Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.underlying_asset_product_id.size = 4

-- Display: Underlying Asset Product Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.underlying_asset_product_id.display = function(value)
  return "Underlying Asset Product Id: "..value
end

-- Dissect: Underlying Asset Product Id
koscom_mdcsrealtime_nightderivatives_exture_v2_020.underlying_asset_product_id.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.underlying_asset_product_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding))
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.underlying_asset_product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.underlying_asset_product_id, range, value, display)

  return offset + length, value
end

-- Upper Limit Of Dynamic Price Range
koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_of_dynamic_price_range = {}

-- Size: Upper Limit Of Dynamic Price Range
koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_of_dynamic_price_range.size = 9

-- Display: Upper Limit Of Dynamic Price Range
koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_of_dynamic_price_range.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_of_dynamic_price_range.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Upper Limit Of Dynamic Price Range: No Value"
  end

  return "Upper Limit Of Dynamic Price Range: "..text
end

-- Dissect: Upper Limit Of Dynamic Price Range
koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_of_dynamic_price_range.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_of_dynamic_price_range.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.upper_limit_of_dynamic_price_range, range, value, "Upper Limit Of Dynamic Price Range: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Upper Limit Of Dynamic Price Range is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_of_dynamic_price_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.upper_limit_of_dynamic_price_range, range, value, display)

  return offset + length, value
end

-- Upper Limit Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_price = {}

-- Size: Upper Limit Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_price.size = 9

-- Display: Upper Limit Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Upper Limit Price: No Value"
  end

  return "Upper Limit Price: "..text
end

-- Dissect: Upper Limit Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.upper_limit_price, range, value, "Upper Limit Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Upper Limit Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.upper_limit_price, range, value, display)

  return offset + length, value
end

-- Upper Limit Quantity
koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_quantity = {}

-- Size: Upper Limit Quantity
koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_quantity.size = 23

-- Display: Upper Limit Quantity
koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_quantity.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_quantity.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Upper Limit Quantity: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Upper Limit Quantity: "..text.." (expected 3 places)"
  end

  return "Upper Limit Quantity: "..text
end

-- Dissect: Upper Limit Quantity
koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_quantity.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.upper_limit_quantity, range, value, "Upper Limit Quantity: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Upper Limit Quantity is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.upper_limit_quantity, range, value, display)

  return offset + length, value
end

-- Upper Limit Quantity For Block Trade
koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_quantity_for_block_trade = {}

-- Size: Upper Limit Quantity For Block Trade
koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_quantity_for_block_trade.size = 23

-- Display: Upper Limit Quantity For Block Trade
koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_quantity_for_block_trade.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_quantity_for_block_trade.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Upper Limit Quantity For Block Trade: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Upper Limit Quantity For Block Trade: "..text.." (expected 3 places)"
  end

  return "Upper Limit Quantity For Block Trade: "..text
end

-- Dissect: Upper Limit Quantity For Block Trade
koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_quantity_for_block_trade.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_quantity_for_block_trade.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.upper_limit_quantity_for_block_trade, range, value, "Upper Limit Quantity For Block Trade: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Upper Limit Quantity For Block Trade is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_quantity_for_block_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.upper_limit_quantity_for_block_trade, range, value, display)

  return offset + length, value
end

-- Upper Price Limit 1 St Stage
koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_price_limit_1_st_stage = {}

-- Size: Upper Price Limit 1 St Stage
koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_price_limit_1_st_stage.size = 11

-- Display: Upper Price Limit 1 St Stage
koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_price_limit_1_st_stage.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_price_limit_1_st_stage.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Upper Price Limit 1 St Stage: No Value"
  end

  return "Upper Price Limit 1 St Stage: "..text
end

-- Dissect: Upper Price Limit 1 St Stage
koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_price_limit_1_st_stage.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_price_limit_1_st_stage.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.upper_price_limit_1_st_stage, range, value, "Upper Price Limit 1 St Stage: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Upper Price Limit 1 St Stage is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_price_limit_1_st_stage.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.upper_price_limit_1_st_stage, range, value, display)

  return offset + length, value
end

-- Upper Price Limit 2 Nd Stage
koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_price_limit_2_nd_stage = {}

-- Size: Upper Price Limit 2 Nd Stage
koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_price_limit_2_nd_stage.size = 11

-- Display: Upper Price Limit 2 Nd Stage
koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_price_limit_2_nd_stage.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_price_limit_2_nd_stage.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Upper Price Limit 2 Nd Stage: No Value"
  end

  return "Upper Price Limit 2 Nd Stage: "..text
end

-- Dissect: Upper Price Limit 2 Nd Stage
koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_price_limit_2_nd_stage.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_price_limit_2_nd_stage.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.upper_price_limit_2_nd_stage, range, value, "Upper Price Limit 2 Nd Stage: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Upper Price Limit 2 Nd Stage is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_price_limit_2_nd_stage.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.upper_price_limit_2_nd_stage, range, value, display)

  return offset + length, value
end

-- Upper Price Limit 3 Rd Stage
koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_price_limit_3_rd_stage = {}

-- Size: Upper Price Limit 3 Rd Stage
koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_price_limit_3_rd_stage.size = 11

-- Display: Upper Price Limit 3 Rd Stage
koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_price_limit_3_rd_stage.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_price_limit_3_rd_stage.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Upper Price Limit 3 Rd Stage: No Value"
  end

  return "Upper Price Limit 3 Rd Stage: "..text
end

-- Dissect: Upper Price Limit 3 Rd Stage
koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_price_limit_3_rd_stage.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_price_limit_3_rd_stage.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.upper_price_limit_3_rd_stage, range, value, "Upper Price Limit 3 Rd Stage: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Upper Price Limit 3 Rd Stage is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_price_limit_3_rd_stage.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.upper_price_limit_3_rd_stage, range, value, display)

  return offset + length, value
end

-- Yesterdays Accumulated Trading Amount
koscom_mdcsrealtime_nightderivatives_exture_v2_020.yesterdays_accumulated_trading_amount = {}

-- Size: Yesterdays Accumulated Trading Amount
koscom_mdcsrealtime_nightderivatives_exture_v2_020.yesterdays_accumulated_trading_amount.size = 12

-- Display: Yesterdays Accumulated Trading Amount
koscom_mdcsrealtime_nightderivatives_exture_v2_020.yesterdays_accumulated_trading_amount.display = function(value)
  return "Yesterdays Accumulated Trading Amount: "..value
end

-- Dissect: Yesterdays Accumulated Trading Amount
koscom_mdcsrealtime_nightderivatives_exture_v2_020.yesterdays_accumulated_trading_amount.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.yesterdays_accumulated_trading_amount.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.yesterdays_accumulated_trading_amount, range, value, "Yesterdays Accumulated Trading Amount: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Yesterdays Accumulated Trading Amount is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.yesterdays_accumulated_trading_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.yesterdays_accumulated_trading_amount, range, value, display)

  return offset + length, value
end

-- Yesterdays Accumulated Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.yesterdays_accumulated_trading_value = {}

-- Size: Yesterdays Accumulated Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.yesterdays_accumulated_trading_value.size = 22

-- Display: Yesterdays Accumulated Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.yesterdays_accumulated_trading_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.yesterdays_accumulated_trading_value.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Yesterdays Accumulated Trading Value: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Yesterdays Accumulated Trading Value: "..text.." (expected 3 places)"
  end

  return "Yesterdays Accumulated Trading Value: "..text
end

-- Dissect: Yesterdays Accumulated Trading Value
koscom_mdcsrealtime_nightderivatives_exture_v2_020.yesterdays_accumulated_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.yesterdays_accumulated_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.yesterdays_accumulated_trading_value, range, value, "Yesterdays Accumulated Trading Value: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Yesterdays Accumulated Trading Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.yesterdays_accumulated_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.yesterdays_accumulated_trading_value, range, value, display)

  return offset + length, value
end

-- Yesterdays Closing Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.yesterdays_closing_price = {}

-- Size: Yesterdays Closing Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.yesterdays_closing_price.size = 11

-- Display: Yesterdays Closing Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.yesterdays_closing_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, koscom_mdcsrealtime_nightderivatives_exture_v2_020.yesterdays_closing_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Yesterdays Closing Price: No Value"
  end

  return "Yesterdays Closing Price: "..text
end

-- Dissect: Yesterdays Closing Price
koscom_mdcsrealtime_nightderivatives_exture_v2_020.yesterdays_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.yesterdays_closing_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.yesterdays_closing_price, range, value, "Yesterdays Closing Price: Not Applicable")
    item:add_proto_expert_info(koscom_mdcsrealtime_nightderivatives_exture_v2_020.experts.not_a_number, "Yesterdays Closing Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.yesterdays_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.yesterdays_closing_price, range, value, display)

  return offset + length, value
end

-- Yesterdays Closing Price Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.yesterdays_closing_price_type_code = {}

-- Size: Yesterdays Closing Price Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.yesterdays_closing_price_type_code.size = 1

-- Display: Yesterdays Closing Price Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.yesterdays_closing_price_type_code.display = function(value)
  return "Yesterdays Closing Price Type Code: "..value
end

-- Dissect: Yesterdays Closing Price Type Code
koscom_mdcsrealtime_nightderivatives_exture_v2_020.yesterdays_closing_price_type_code.dissect = function(buffer, offset, packet, parent)
  local length = koscom_mdcsrealtime_nightderivatives_exture_v2_020.yesterdays_closing_price_type_code.size
  local range = buffer(offset, length)
  local value = range:string(koscom_mdcsrealtime_nightderivatives_exture_v2_020.text_encoding)
  local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.yesterdays_closing_price_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.yesterdays_closing_price_type_code, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Koscom MdcsRealtime NightDerivatives Exture 2.020
-----------------------------------------------------------------------

-- Daily Disclosed Rfr Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.daily_disclosed_rfr_message = {}

-- Size: Daily Disclosed Rfr Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.daily_disclosed_rfr_message.size =
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_date.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.disclosure_type.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.disclosure_date.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.rfr.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.indexed_interest_rate.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.interest_rate_30_day.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.interest_rate_90_day.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.interest_rate_180_day.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.size

-- Display: Daily Disclosed Rfr Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.daily_disclosed_rfr_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Daily Disclosed Rfr Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.daily_disclosed_rfr_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Base Date: String
  index, base_date = koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_date.dissect(buffer, index, packet, parent)

  -- Disclosure Type: Int
  index, disclosure_type = koscom_mdcsrealtime_nightderivatives_exture_v2_020.disclosure_type.dissect(buffer, index, packet, parent)

  -- Disclosure Date: String
  index, disclosure_date = koscom_mdcsrealtime_nightderivatives_exture_v2_020.disclosure_date.dissect(buffer, index, packet, parent)

  -- Rfr: String
  index, rfr = koscom_mdcsrealtime_nightderivatives_exture_v2_020.rfr.dissect(buffer, index, packet, parent)

  -- Indexed Interest Rate: String
  index, indexed_interest_rate = koscom_mdcsrealtime_nightderivatives_exture_v2_020.indexed_interest_rate.dissect(buffer, index, packet, parent)

  -- Interest Rate 30 Day: String
  index, interest_rate_30_day = koscom_mdcsrealtime_nightderivatives_exture_v2_020.interest_rate_30_day.dissect(buffer, index, packet, parent)

  -- Interest Rate 90 Day: String
  index, interest_rate_90_day = koscom_mdcsrealtime_nightderivatives_exture_v2_020.interest_rate_90_day.dissect(buffer, index, packet, parent)

  -- Interest Rate 180 Day: String
  index, interest_rate_180_day = koscom_mdcsrealtime_nightderivatives_exture_v2_020.interest_rate_180_day.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Daily Disclosed Rfr Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.daily_disclosed_rfr_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.daily_disclosed_rfr_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_nightderivatives_exture_v2_020.daily_disclosed_rfr_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.daily_disclosed_rfr_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_nightderivatives_exture_v2_020.daily_disclosed_rfr_message.fields(buffer, offset, packet, parent)
  end
end

-- Commodity Futures Spot Settlement Reference Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.commodity_futures_spot_settlement_reference_message = {}

-- Size: Commodity Futures Spot Settlement Reference Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.commodity_futures_spot_settlement_reference_message.size =
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bis_announcement_date.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bis_announcement_time.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.underlying_asset_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bis_yield_ratio.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_of_base_issue_for_payment.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ktb_isin.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bis_time_of_inputting_yield_rate.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.size

-- Display: Commodity Futures Spot Settlement Reference Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.commodity_futures_spot_settlement_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Commodity Futures Spot Settlement Reference Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.commodity_futures_spot_settlement_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bis Announcement Date: String
  index, bis_announcement_date = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bis_announcement_date.dissect(buffer, index, packet, parent)

  -- Bis Announcement Time: String
  index, bis_announcement_time = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bis_announcement_time.dissect(buffer, index, packet, parent)

  -- Underlying Asset Id: String
  index, underlying_asset_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.underlying_asset_id.dissect(buffer, index, packet, parent)

  -- Bis Yield Ratio: Double
  index, bis_yield_ratio = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bis_yield_ratio.dissect(buffer, index, packet, parent)

  -- Isin Of Base Issue For Payment: String
  index, isin_of_base_issue_for_payment = koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_of_base_issue_for_payment.dissect(buffer, index, packet, parent)

  -- Ktb Isin: String
  index, ktb_isin = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ktb_isin.dissect(buffer, index, packet, parent)

  -- Bis Time Of Inputting Yield Rate: String
  index, bis_time_of_inputting_yield_rate = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bis_time_of_inputting_yield_rate.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Commodity Futures Spot Settlement Reference Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.commodity_futures_spot_settlement_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.commodity_futures_spot_settlement_reference_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_nightderivatives_exture_v2_020.commodity_futures_spot_settlement_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.commodity_futures_spot_settlement_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_nightderivatives_exture_v2_020.commodity_futures_spot_settlement_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Sensitivity Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_sensitivity_message = {}

-- Size: Options Sensitivity Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_sensitivity_message.size =
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.calculating_date.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.calculation_time_sensitivity.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.implied_volatility_type_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.underlying_asset_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_delta.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_theta.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_vega.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_gamma.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_rho.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.size

-- Display: Options Sensitivity Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_sensitivity_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Sensitivity Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_sensitivity_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Calculating Date: String
  index, calculating_date = koscom_mdcsrealtime_nightderivatives_exture_v2_020.calculating_date.dissect(buffer, index, packet, parent)

  -- Calculation Time Sensitivity: String
  index, calculation_time_sensitivity = koscom_mdcsrealtime_nightderivatives_exture_v2_020.calculation_time_sensitivity.dissect(buffer, index, packet, parent)

  -- Implied Volatility Type Code: String
  index, implied_volatility_type_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.implied_volatility_type_code.dissect(buffer, index, packet, parent)

  -- Underlying Asset Id: String
  index, underlying_asset_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.underlying_asset_id.dissect(buffer, index, packet, parent)

  -- Sensitivity Delta: FLOAT128
  index, sensitivity_delta = koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_delta.dissect(buffer, index, packet, parent)

  -- Sensitivity Theta: FLOAT128
  index, sensitivity_theta = koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_theta.dissect(buffer, index, packet, parent)

  -- Sensitivity Vega: FLOAT128
  index, sensitivity_vega = koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_vega.dissect(buffer, index, packet, parent)

  -- Sensitivity Gamma: FLOAT128
  index, sensitivity_gamma = koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_gamma.dissect(buffer, index, packet, parent)

  -- Sensitivity Rho: FLOAT128
  index, sensitivity_rho = koscom_mdcsrealtime_nightderivatives_exture_v2_020.sensitivity_rho.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Sensitivity Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_sensitivity_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.options_sensitivity_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_sensitivity_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_sensitivity_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_sensitivity_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Implied Volatility Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_implied_volatility_message = {}

-- Size: Options Implied Volatility Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_implied_volatility_message.size =
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.call_averaged_implied_volatility.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.put_averaged_implied_volatility.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.representative_implied_volatility.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.historical_volatility_90_days.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.size

-- Display: Options Implied Volatility Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_implied_volatility_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Implied Volatility Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_implied_volatility_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Call Averaged Implied Volatility: Double
  index, call_averaged_implied_volatility = koscom_mdcsrealtime_nightderivatives_exture_v2_020.call_averaged_implied_volatility.dissect(buffer, index, packet, parent)

  -- Put Averaged Implied Volatility: Double
  index, put_averaged_implied_volatility = koscom_mdcsrealtime_nightderivatives_exture_v2_020.put_averaged_implied_volatility.dissect(buffer, index, packet, parent)

  -- Representative Implied Volatility: Double
  index, representative_implied_volatility = koscom_mdcsrealtime_nightderivatives_exture_v2_020.representative_implied_volatility.dissect(buffer, index, packet, parent)

  -- Historical Volatility 90 Days: Double
  index, historical_volatility_90_days = koscom_mdcsrealtime_nightderivatives_exture_v2_020.historical_volatility_90_days.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Implied Volatility Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_implied_volatility_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.options_implied_volatility_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_implied_volatility_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_implied_volatility_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_implied_volatility_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Base Price Of Clearing Margins Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_base_price_of_clearing_margins_message = {}

-- Size: Options Base Price Of Clearing Margins Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_base_price_of_clearing_margins_message.size =
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_of_clearing_margins.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_of_clearing_margins_type_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_price_after_exercising_an_option.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.type_code_of_settlement_price_after_exercising_an_option.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.size

-- Display: Options Base Price Of Clearing Margins Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_base_price_of_clearing_margins_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Base Price Of Clearing Margins Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_base_price_of_clearing_margins_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Base Price Of Clearing Margins: FLOAT128
  index, base_price_of_clearing_margins = koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_of_clearing_margins.dissect(buffer, index, packet, parent)

  -- Base Price Of Clearing Margins Type Code: String
  index, base_price_of_clearing_margins_type_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_of_clearing_margins_type_code.dissect(buffer, index, packet, parent)

  -- Settlement Price After Exercising An Option: FLOAT128
  index, settlement_price_after_exercising_an_option = koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_price_after_exercising_an_option.dissect(buffer, index, packet, parent)

  -- Type Code Of Settlement Price After Exercising An Option: String
  index, type_code_of_settlement_price_after_exercising_an_option = koscom_mdcsrealtime_nightderivatives_exture_v2_020.type_code_of_settlement_price_after_exercising_an_option.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Base Price Of Clearing Margins Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_base_price_of_clearing_margins_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.options_base_price_of_clearing_margins_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_base_price_of_clearing_margins_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_base_price_of_clearing_margins_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_base_price_of_clearing_margins_message.fields(buffer, offset, packet, parent)
  end
end

-- Futures Settled Price Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_settled_price_message = {}

-- Size: Futures Settled Price Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_settled_price_message.size =
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_price_type_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_last_settlement_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.last_settlement_price_type_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.size

-- Display: Futures Settled Price Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_settled_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Settled Price Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_settled_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Settlement Price: FLOAT128
  index, settlement_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_price.dissect(buffer, index, packet, parent)

  -- Settlement Price Type Code: String
  index, settlement_price_type_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_price_type_code.dissect(buffer, index, packet, parent)

  -- The Last Settlement Price: FLOAT128
  index, the_last_settlement_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_last_settlement_price.dissect(buffer, index, packet, parent)

  -- Last Settlement Price Type Code: String
  index, last_settlement_price_type_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.last_settlement_price_type_code.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Settled Price Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_settled_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.futures_settled_price_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_settled_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_settled_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_settled_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Open Interest Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_open_interest_message = {}

-- Size: Derivatives Open Interest Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_open_interest_message.size =
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.open_interest_type_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_date.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.open_interest.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.size

-- Display: Derivatives Open Interest Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_open_interest_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Open Interest Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_open_interest_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Open Interest Type Code: String
  index, open_interest_type_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.open_interest_type_code.dissect(buffer, index, packet, parent)

  -- Trading Date: String
  index, trading_date = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_date.dissect(buffer, index, packet, parent)

  -- Open Interest: Long
  index, open_interest = koscom_mdcsrealtime_nightderivatives_exture_v2_020.open_interest.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Open Interest Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_open_interest_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_open_interest_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_open_interest_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_open_interest_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_open_interest_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Investor Activities Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_investor_activities_message = {}

-- Size: Derivatives Investor Activities Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_investor_activities_message.size =
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.date.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.calculation_time_activities.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.transaction_status_type_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.product_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_options_type_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.investor_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_trading_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_trading_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_trading_value.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_trading_value.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_bid_trading_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_ask_trading_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_bid_trading_value.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_ask_trading_value.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.size

-- Display: Derivatives Investor Activities Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_investor_activities_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Investor Activities Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_investor_activities_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Date: String
  index, date = koscom_mdcsrealtime_nightderivatives_exture_v2_020.date.dissect(buffer, index, packet, parent)

  -- Calculation Time Activities: String
  index, calculation_time_activities = koscom_mdcsrealtime_nightderivatives_exture_v2_020.calculation_time_activities.dissect(buffer, index, packet, parent)

  -- Transaction Status Type Code: String
  index, transaction_status_type_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.transaction_status_type_code.dissect(buffer, index, packet, parent)

  -- Product Id: String
  index, product_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.product_id.dissect(buffer, index, packet, parent)

  -- Futures Options Type Code: String
  index, futures_options_type_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_options_type_code.dissect(buffer, index, packet, parent)

  -- Investor Code: String
  index, investor_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.investor_code.dissect(buffer, index, packet, parent)

  -- Bid Trading Volume: Long
  index, bid_trading_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_trading_volume.dissect(buffer, index, packet, parent)

  -- Ask Trading Volume: Long
  index, ask_trading_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_trading_volume.dissect(buffer, index, packet, parent)

  -- Bid Trading Value: FLOAT128
  index, bid_trading_value = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_trading_value.dissect(buffer, index, packet, parent)

  -- Ask Trading Value: FLOAT128
  index, ask_trading_value = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_trading_value.dissect(buffer, index, packet, parent)

  -- Spread Bid Trading Volume: Long
  index, spread_bid_trading_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_bid_trading_volume.dissect(buffer, index, packet, parent)

  -- Spread Ask Trading Volume: Long
  index, spread_ask_trading_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_ask_trading_volume.dissect(buffer, index, packet, parent)

  -- Spread Bid Trading Value: FLOAT128
  index, spread_bid_trading_value = koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_bid_trading_value.dissect(buffer, index, packet, parent)

  -- Spread Ask Trading Value: FLOAT128
  index, spread_ask_trading_value = koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_ask_trading_value.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Investor Activities Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_investor_activities_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_investor_activities_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_investor_activities_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_investor_activities_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_investor_activities_message.fields(buffer, offset, packet, parent)
  end
end

-- Commodity Futures Settlement Reference Ktb Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.commodity_futures_settlement_reference_ktb_message = {}

-- Size: Commodity Futures Settlement Reference Ktb Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.commodity_futures_settlement_reference_ktb_message.size =
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.application_date.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.underlying_asset_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ktb_isin.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_of_base_issue_for_payment.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.conversion_factor.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.size

-- Display: Commodity Futures Settlement Reference Ktb Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.commodity_futures_settlement_reference_ktb_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Commodity Futures Settlement Reference Ktb Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.commodity_futures_settlement_reference_ktb_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Application Date: String
  index, application_date = koscom_mdcsrealtime_nightderivatives_exture_v2_020.application_date.dissect(buffer, index, packet, parent)

  -- Underlying Asset Id: String
  index, underlying_asset_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.underlying_asset_id.dissect(buffer, index, packet, parent)

  -- Ktb Isin: String
  index, ktb_isin = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ktb_isin.dissect(buffer, index, packet, parent)

  -- Isin Of Base Issue For Payment: String
  index, isin_of_base_issue_for_payment = koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_of_base_issue_for_payment.dissect(buffer, index, packet, parent)

  -- Conversion Factor: FLOAT128
  index, conversion_factor = koscom_mdcsrealtime_nightderivatives_exture_v2_020.conversion_factor.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Commodity Futures Settlement Reference Ktb Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.commodity_futures_settlement_reference_ktb_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.commodity_futures_settlement_reference_ktb_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_nightderivatives_exture_v2_020.commodity_futures_settlement_reference_ktb_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.commodity_futures_settlement_reference_ktb_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_nightderivatives_exture_v2_020.commodity_futures_settlement_reference_ktb_message.fields(buffer, offset, packet, parent)
  end
end

-- Equity Derivatives Adjustment Details Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.equity_derivatives_adjustment_details_message = {}

-- Size: Equity Derivatives Adjustment Details Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.equity_derivatives_adjustment_details_message.size =
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.business_date.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.denominator_coefficient_of_adjustment.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.numerator_adjustment_of_coefficient.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_multiplier_before_adjustment.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_multiplier_after_adjustment_equity_options_10.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price_before_adjustment.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price_after_adjustment.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.adjustment_coefficient_of_open_intetest_volumes_that_have_been_adjusted.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.size

-- Display: Equity Derivatives Adjustment Details Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.equity_derivatives_adjustment_details_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equity Derivatives Adjustment Details Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.equity_derivatives_adjustment_details_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Business Date: String
  index, business_date = koscom_mdcsrealtime_nightderivatives_exture_v2_020.business_date.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- Denominator Coefficient Of Adjustment: FLOAT128
  index, denominator_coefficient_of_adjustment = koscom_mdcsrealtime_nightderivatives_exture_v2_020.denominator_coefficient_of_adjustment.dissect(buffer, index, packet, parent)

  -- Numerator Adjustment Of Coefficient: FLOAT128
  index, numerator_adjustment_of_coefficient = koscom_mdcsrealtime_nightderivatives_exture_v2_020.numerator_adjustment_of_coefficient.dissect(buffer, index, packet, parent)

  -- Trading Multiplier Before Adjustment: FLOAT128
  index, trading_multiplier_before_adjustment = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_multiplier_before_adjustment.dissect(buffer, index, packet, parent)

  -- Trading Multiplier After Adjustment Equity Options 10: FLOAT128
  index, trading_multiplier_after_adjustment_equity_options_10 = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_multiplier_after_adjustment_equity_options_10.dissect(buffer, index, packet, parent)

  -- Exercise Price Before Adjustment: FLOAT128
  index, exercise_price_before_adjustment = koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price_before_adjustment.dissect(buffer, index, packet, parent)

  -- Exercise Price After Adjustment: FLOAT128
  index, exercise_price_after_adjustment = koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price_after_adjustment.dissect(buffer, index, packet, parent)

  -- Adjustment Coefficient Of Open Intetest Volumes That Have Been Adjusted: Int
  index, adjustment_coefficient_of_open_intetest_volumes_that_have_been_adjusted = koscom_mdcsrealtime_nightderivatives_exture_v2_020.adjustment_coefficient_of_open_intetest_volumes_that_have_been_adjusted.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Equity Derivatives Adjustment Details Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.equity_derivatives_adjustment_details_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.equity_derivatives_adjustment_details_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_nightderivatives_exture_v2_020.equity_derivatives_adjustment_details_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.equity_derivatives_adjustment_details_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_nightderivatives_exture_v2_020.equity_derivatives_adjustment_details_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Batch Data Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_batch_data_message = {}

-- Size: Derivatives Batch Data Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_batch_data_message.size =
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.total_number_of_instruments_of_the_contract.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.business_date.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_options_type_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.product_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.abbreviated_issue_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.issue_name.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.abbreviated_issue_name.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.english_issue_name.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.abbreviated_issue_name_in_en.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.market_operation_product_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.listing_date.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.delisting_date.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_type_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.payment_methods.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.direction_of_price_limit_expansion_type_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.final_stage_of_price_limit_expansion.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_price_limit_1_st_stage.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_price_limit_2_nd_stage.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_price_limit_3_rd_stage.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_price_limit_1_st_stage.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_price_limit_2_nd_stage.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_price_limit_3_rd_stage.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.underlying_asset_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.rights_execution_type_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_composition_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_issue_isin_1.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_issue_isin_2.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.last_trading_date.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.last_payment_date.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.sequence_number_for_delivery_month.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.expiration_date.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_adjustment_type_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_unit.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_multiplier.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.type_of_liquidityproviding_lp.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.listing_type_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.atm.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.adjustment_reason_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_of_underlying_asset.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.closing_price_of_underlying_asset.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.remaining_days.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.adjusted_base_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_type_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_for_trading_type_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_adjusted_closing_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.block_trading_type_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_bpmm.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_of_clearing_margins_type_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.theoretical_settlement_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_theoretical_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_settlement_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_halt.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_circuit_breakers_upper_limit_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_circuit_breakers_lower_limit_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price_for_displaying_not_for_trading.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.atm_type_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.last_trading_day.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.dividend_value_for_settlement_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.yesterdays_closing_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.yesterdays_closing_price_type_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_opening_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_high_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_low_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_first_trading_date.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_last_trading_time.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_price_type_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.disparate_ratio.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_open_interest.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_best_ask.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_best_bid.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.implied_volatility.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_highest_premium_of_the_lifetime.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_lowest_premium_of_the_lifetime.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_highest_premium_in_a_year.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_lowest_premium_in_a_year.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_date_of_the_highest_premium_of_the_lifetime.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_date_of_the_lowest_premium_of_the_lifetime.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_date_of_the_highest_premium_in_a_year.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_date_of_the_lowest_premium_in_a_year.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_listing_days_per_year.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_trading_days_per_month.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_trading_days_per_year.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_previous_days_trading.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.yesterdays_accumulated_trading_amount.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.yesterdays_accumulated_trading_value.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_total_accumulated_trading_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_total_accumulated_trading_value.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.interest_rate.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.open_interest_limit_quantity.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.underlying_asset_product_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.offset_rate_of_asset_group.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.limit_order_permission_type_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.market_price_order_permission_type_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.conditioned_order_permission_type_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.best_favorable_order_permission_type_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.efp_trading_item.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.flex_trading_item.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.efp_trading_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.efp_trading_value.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.market_holidays.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.limitation_of_dynamic_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.gap_between_upper_limit_price_of_dynamic_price_and_trading_value.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.gap_between_lower_limit_price_of_dynamic_price_and_trading_value.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.underlying_asset_market_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_quantity.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_quantity.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_quantity_for_block_trade.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_quantity_for_block_trade.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_product_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.subsidiary_product_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_issues_for_base_product.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_issues_for_subsidiary_product.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_week.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.suspended_stocks.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.designation_date_for_suspended_stocks.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.size

-- Display: Derivatives Batch Data Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_batch_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Batch Data Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_batch_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Total Number Of Instruments Of The Contract: Int
  index, total_number_of_instruments_of_the_contract = koscom_mdcsrealtime_nightderivatives_exture_v2_020.total_number_of_instruments_of_the_contract.dissect(buffer, index, packet, parent)

  -- Business Date: String
  index, business_date = koscom_mdcsrealtime_nightderivatives_exture_v2_020.business_date.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Futures Options Type Code: String
  index, futures_options_type_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_options_type_code.dissect(buffer, index, packet, parent)

  -- Product Id: String
  index, product_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.product_id.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Code: String
  index, abbreviated_issue_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.abbreviated_issue_code.dissect(buffer, index, packet, parent)

  -- Issue Name: String
  index, issue_name = koscom_mdcsrealtime_nightderivatives_exture_v2_020.issue_name.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Name: String
  index, abbreviated_issue_name = koscom_mdcsrealtime_nightderivatives_exture_v2_020.abbreviated_issue_name.dissect(buffer, index, packet, parent)

  -- English Issue Name: String
  index, english_issue_name = koscom_mdcsrealtime_nightderivatives_exture_v2_020.english_issue_name.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Name In En: String
  index, abbreviated_issue_name_in_en = koscom_mdcsrealtime_nightderivatives_exture_v2_020.abbreviated_issue_name_in_en.dissect(buffer, index, packet, parent)

  -- Market Operation Product Id: String
  index, market_operation_product_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.market_operation_product_id.dissect(buffer, index, packet, parent)

  -- Listing Date: String
  index, listing_date = koscom_mdcsrealtime_nightderivatives_exture_v2_020.listing_date.dissect(buffer, index, packet, parent)

  -- Delisting Date: String
  index, delisting_date = koscom_mdcsrealtime_nightderivatives_exture_v2_020.delisting_date.dissect(buffer, index, packet, parent)

  -- Spread Type Code: String
  index, spread_type_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_type_code.dissect(buffer, index, packet, parent)

  -- Payment Methods: String
  index, payment_methods = koscom_mdcsrealtime_nightderivatives_exture_v2_020.payment_methods.dissect(buffer, index, packet, parent)

  -- Direction Of Price Limit Expansion Type Code: String
  index, direction_of_price_limit_expansion_type_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.direction_of_price_limit_expansion_type_code.dissect(buffer, index, packet, parent)

  -- Final Stage Of Price Limit Expansion: Int
  index, final_stage_of_price_limit_expansion = koscom_mdcsrealtime_nightderivatives_exture_v2_020.final_stage_of_price_limit_expansion.dissect(buffer, index, packet, parent)

  -- Upper Price Limit 1 St Stage: Double
  index, upper_price_limit_1_st_stage = koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_price_limit_1_st_stage.dissect(buffer, index, packet, parent)

  -- Upper Price Limit 2 Nd Stage: Double
  index, upper_price_limit_2_nd_stage = koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_price_limit_2_nd_stage.dissect(buffer, index, packet, parent)

  -- Upper Price Limit 3 Rd Stage: Double
  index, upper_price_limit_3_rd_stage = koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_price_limit_3_rd_stage.dissect(buffer, index, packet, parent)

  -- Lower Price Limit 1 St Stage: Double
  index, lower_price_limit_1_st_stage = koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_price_limit_1_st_stage.dissect(buffer, index, packet, parent)

  -- Lower Price Limit 2 Nd Stage: Double
  index, lower_price_limit_2_nd_stage = koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_price_limit_2_nd_stage.dissect(buffer, index, packet, parent)

  -- Lower Price Limit 3 Rd Stage: Double
  index, lower_price_limit_3_rd_stage = koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_price_limit_3_rd_stage.dissect(buffer, index, packet, parent)

  -- Base Price: Double
  index, base_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price.dissect(buffer, index, packet, parent)

  -- Underlying Asset Id: String
  index, underlying_asset_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.underlying_asset_id.dissect(buffer, index, packet, parent)

  -- Rights Execution Type Code: String
  index, rights_execution_type_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.rights_execution_type_code.dissect(buffer, index, packet, parent)

  -- Spread Composition Code: String
  index, spread_composition_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_composition_code.dissect(buffer, index, packet, parent)

  -- Spread Issue Isin 1: String
  index, spread_issue_isin_1 = koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_issue_isin_1.dissect(buffer, index, packet, parent)

  -- Spread Issue Isin 2: String
  index, spread_issue_isin_2 = koscom_mdcsrealtime_nightderivatives_exture_v2_020.spread_issue_isin_2.dissect(buffer, index, packet, parent)

  -- Last Trading Date: String
  index, last_trading_date = koscom_mdcsrealtime_nightderivatives_exture_v2_020.last_trading_date.dissect(buffer, index, packet, parent)

  -- Last Payment Date: String
  index, last_payment_date = koscom_mdcsrealtime_nightderivatives_exture_v2_020.last_payment_date.dissect(buffer, index, packet, parent)

  -- Sequence Number For Delivery Month: Int
  index, sequence_number_for_delivery_month = koscom_mdcsrealtime_nightderivatives_exture_v2_020.sequence_number_for_delivery_month.dissect(buffer, index, packet, parent)

  -- Expiration Date: String
  index, expiration_date = koscom_mdcsrealtime_nightderivatives_exture_v2_020.expiration_date.dissect(buffer, index, packet, parent)

  -- Exercise Price: FLOAT128
  index, exercise_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price.dissect(buffer, index, packet, parent)

  -- Base Price Adjustment Type Code: String
  index, base_price_adjustment_type_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_adjustment_type_code.dissect(buffer, index, packet, parent)

  -- Trading Unit: FLOAT128
  index, trading_unit = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_unit.dissect(buffer, index, packet, parent)

  -- Trading Multiplier: FLOAT128
  index, trading_multiplier = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_multiplier.dissect(buffer, index, packet, parent)

  -- Type Of Liquidityproviding Lp: String
  index, type_of_liquidityproviding_lp = koscom_mdcsrealtime_nightderivatives_exture_v2_020.type_of_liquidityproviding_lp.dissect(buffer, index, packet, parent)

  -- Listing Type Code: String
  index, listing_type_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.listing_type_code.dissect(buffer, index, packet, parent)

  -- Atm: Double
  index, atm = koscom_mdcsrealtime_nightderivatives_exture_v2_020.atm.dissect(buffer, index, packet, parent)

  -- Adjustment Reason Code: String
  index, adjustment_reason_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.adjustment_reason_code.dissect(buffer, index, packet, parent)

  -- Isin Of Underlying Asset: String
  index, isin_of_underlying_asset = koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_of_underlying_asset.dissect(buffer, index, packet, parent)

  -- Closing Price Of Underlying Asset: Double
  index, closing_price_of_underlying_asset = koscom_mdcsrealtime_nightderivatives_exture_v2_020.closing_price_of_underlying_asset.dissect(buffer, index, packet, parent)

  -- Remaining Days: Int
  index, remaining_days = koscom_mdcsrealtime_nightderivatives_exture_v2_020.remaining_days.dissect(buffer, index, packet, parent)

  -- Adjusted Base Price: FLOAT128
  index, adjusted_base_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.adjusted_base_price.dissect(buffer, index, packet, parent)

  -- Base Price Type Code: String
  index, base_price_type_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_type_code.dissect(buffer, index, packet, parent)

  -- Base Price For Trading Type Code: String
  index, base_price_for_trading_type_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_for_trading_type_code.dissect(buffer, index, packet, parent)

  -- Previous Days Adjusted Closing Price: FLOAT128
  index, previous_days_adjusted_closing_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_adjusted_closing_price.dissect(buffer, index, packet, parent)

  -- Block Trading Type Code: String
  index, block_trading_type_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.block_trading_type_code.dissect(buffer, index, packet, parent)

  -- Previous Days Bpmm: FLOAT128
  index, previous_days_bpmm = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_bpmm.dissect(buffer, index, packet, parent)

  -- Base Price Of Clearing Margins Type Code: String
  index, base_price_of_clearing_margins_type_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_price_of_clearing_margins_type_code.dissect(buffer, index, packet, parent)

  -- Theoretical Settlement Price: FLOAT128
  index, theoretical_settlement_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.theoretical_settlement_price.dissect(buffer, index, packet, parent)

  -- Base Theoretical Price: FLOAT128
  index, base_theoretical_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_theoretical_price.dissect(buffer, index, packet, parent)

  -- Previous Days Settlement Price: FLOAT128
  index, previous_days_settlement_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_settlement_price.dissect(buffer, index, packet, parent)

  -- Trading Halt: String
  index, trading_halt = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_halt.dissect(buffer, index, packet, parent)

  -- Futures Circuit Breakers Upper Limit Price: Double
  index, futures_circuit_breakers_upper_limit_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_circuit_breakers_upper_limit_price.dissect(buffer, index, packet, parent)

  -- Futures Circuit Breakers Lower Limit Price: Double
  index, futures_circuit_breakers_lower_limit_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_circuit_breakers_lower_limit_price.dissect(buffer, index, packet, parent)

  -- Exercise Price For Displaying Not For Trading: FLOAT128
  index, exercise_price_for_displaying_not_for_trading = koscom_mdcsrealtime_nightderivatives_exture_v2_020.exercise_price_for_displaying_not_for_trading.dissect(buffer, index, packet, parent)

  -- Atm Type Code: String
  index, atm_type_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.atm_type_code.dissect(buffer, index, packet, parent)

  -- Last Trading Day: String
  index, last_trading_day = koscom_mdcsrealtime_nightderivatives_exture_v2_020.last_trading_day.dissect(buffer, index, packet, parent)

  -- Dividend Value For Settlement Price: FLOAT128
  index, dividend_value_for_settlement_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.dividend_value_for_settlement_price.dissect(buffer, index, packet, parent)

  -- Yesterdays Closing Price: Double
  index, yesterdays_closing_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.yesterdays_closing_price.dissect(buffer, index, packet, parent)

  -- Yesterdays Closing Price Type Code: String
  index, yesterdays_closing_price_type_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.yesterdays_closing_price_type_code.dissect(buffer, index, packet, parent)

  -- Previous Days Opening Price: Double
  index, previous_days_opening_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_opening_price.dissect(buffer, index, packet, parent)

  -- Previous Days High Price: Double
  index, previous_days_high_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_high_price.dissect(buffer, index, packet, parent)

  -- Previous Days Low Price: Double
  index, previous_days_low_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_low_price.dissect(buffer, index, packet, parent)

  -- The First Trading Date: String
  index, the_first_trading_date = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_first_trading_date.dissect(buffer, index, packet, parent)

  -- The Last Trading Time: String
  index, the_last_trading_time = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_last_trading_time.dissect(buffer, index, packet, parent)

  -- Settlement Price Type Code: String
  index, settlement_price_type_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_price_type_code.dissect(buffer, index, packet, parent)

  -- Disparate Ratio: Double
  index, disparate_ratio = koscom_mdcsrealtime_nightderivatives_exture_v2_020.disparate_ratio.dissect(buffer, index, packet, parent)

  -- Previous Days Open Interest: Long
  index, previous_days_open_interest = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_open_interest.dissect(buffer, index, packet, parent)

  -- Previous Days Best Ask: Double
  index, previous_days_best_ask = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_best_ask.dissect(buffer, index, packet, parent)

  -- Previous Days Best Bid: Double
  index, previous_days_best_bid = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_best_bid.dissect(buffer, index, packet, parent)

  -- Implied Volatility: Double
  index, implied_volatility = koscom_mdcsrealtime_nightderivatives_exture_v2_020.implied_volatility.dissect(buffer, index, packet, parent)

  -- The Highest Premium Of The Lifetime: Double
  index, the_highest_premium_of_the_lifetime = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_highest_premium_of_the_lifetime.dissect(buffer, index, packet, parent)

  -- The Lowest Premium Of The Lifetime: Double
  index, the_lowest_premium_of_the_lifetime = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_lowest_premium_of_the_lifetime.dissect(buffer, index, packet, parent)

  -- The Highest Premium In A Year: Double
  index, the_highest_premium_in_a_year = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_highest_premium_in_a_year.dissect(buffer, index, packet, parent)

  -- The Lowest Premium In A Year: Double
  index, the_lowest_premium_in_a_year = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_lowest_premium_in_a_year.dissect(buffer, index, packet, parent)

  -- The Date Of The Highest Premium Of The Lifetime: String
  index, the_date_of_the_highest_premium_of_the_lifetime = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_date_of_the_highest_premium_of_the_lifetime.dissect(buffer, index, packet, parent)

  -- The Date Of The Lowest Premium Of The Lifetime: String
  index, the_date_of_the_lowest_premium_of_the_lifetime = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_date_of_the_lowest_premium_of_the_lifetime.dissect(buffer, index, packet, parent)

  -- The Date Of The Highest Premium In A Year: String
  index, the_date_of_the_highest_premium_in_a_year = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_date_of_the_highest_premium_in_a_year.dissect(buffer, index, packet, parent)

  -- The Date Of The Lowest Premium In A Year: String
  index, the_date_of_the_lowest_premium_in_a_year = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_date_of_the_lowest_premium_in_a_year.dissect(buffer, index, packet, parent)

  -- Number Of Listing Days Per Year: Int
  index, number_of_listing_days_per_year = koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_listing_days_per_year.dissect(buffer, index, packet, parent)

  -- Number Of Trading Days Per Month: Int
  index, number_of_trading_days_per_month = koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_trading_days_per_month.dissect(buffer, index, packet, parent)

  -- Number Of Trading Days Per Year: Int
  index, number_of_trading_days_per_year = koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_trading_days_per_year.dissect(buffer, index, packet, parent)

  -- Number Of Previous Days Trading: Long
  index, number_of_previous_days_trading = koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_previous_days_trading.dissect(buffer, index, packet, parent)

  -- Yesterdays Accumulated Trading Amount: Long
  index, yesterdays_accumulated_trading_amount = koscom_mdcsrealtime_nightderivatives_exture_v2_020.yesterdays_accumulated_trading_amount.dissect(buffer, index, packet, parent)

  -- Yesterdays Accumulated Trading Value: FLOAT128
  index, yesterdays_accumulated_trading_value = koscom_mdcsrealtime_nightderivatives_exture_v2_020.yesterdays_accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Previous Days Total Accumulated Trading Volume: Long
  index, previous_days_total_accumulated_trading_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_total_accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Previous Days Total Accumulated Trading Value: FLOAT128
  index, previous_days_total_accumulated_trading_value = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_days_total_accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Interest Rate: Double
  index, interest_rate = koscom_mdcsrealtime_nightderivatives_exture_v2_020.interest_rate.dissect(buffer, index, packet, parent)

  -- Open Interest Limit Quantity: Long
  index, open_interest_limit_quantity = koscom_mdcsrealtime_nightderivatives_exture_v2_020.open_interest_limit_quantity.dissect(buffer, index, packet, parent)

  -- Underlying Asset Product Id: String
  index, underlying_asset_product_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.underlying_asset_product_id.dissect(buffer, index, packet, parent)

  -- Offset Rate Of Asset Group: Double
  index, offset_rate_of_asset_group = koscom_mdcsrealtime_nightderivatives_exture_v2_020.offset_rate_of_asset_group.dissect(buffer, index, packet, parent)

  -- Limit Order Permission Type Code: Int
  index, limit_order_permission_type_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.limit_order_permission_type_code.dissect(buffer, index, packet, parent)

  -- Market Price Order Permission Type Code: Int
  index, market_price_order_permission_type_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.market_price_order_permission_type_code.dissect(buffer, index, packet, parent)

  -- Conditioned Order Permission Type Code: Int
  index, conditioned_order_permission_type_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.conditioned_order_permission_type_code.dissect(buffer, index, packet, parent)

  -- Best Favorable Order Permission Type Code: Int
  index, best_favorable_order_permission_type_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.best_favorable_order_permission_type_code.dissect(buffer, index, packet, parent)

  -- Efp Trading Item: String
  index, efp_trading_item = koscom_mdcsrealtime_nightderivatives_exture_v2_020.efp_trading_item.dissect(buffer, index, packet, parent)

  -- Flex Trading Item: String
  index, flex_trading_item = koscom_mdcsrealtime_nightderivatives_exture_v2_020.flex_trading_item.dissect(buffer, index, packet, parent)

  -- Efp Trading Volume: Long
  index, efp_trading_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.efp_trading_volume.dissect(buffer, index, packet, parent)

  -- Efp Trading Value: FLOAT128
  index, efp_trading_value = koscom_mdcsrealtime_nightderivatives_exture_v2_020.efp_trading_value.dissect(buffer, index, packet, parent)

  -- Market Holidays: String
  index, market_holidays = koscom_mdcsrealtime_nightderivatives_exture_v2_020.market_holidays.dissect(buffer, index, packet, parent)

  -- Limitation Of Dynamic Price: String
  index, limitation_of_dynamic_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.limitation_of_dynamic_price.dissect(buffer, index, packet, parent)

  -- Gap Between Upper Limit Price Of Dynamic Price And Trading Value: Double
  index, gap_between_upper_limit_price_of_dynamic_price_and_trading_value = koscom_mdcsrealtime_nightderivatives_exture_v2_020.gap_between_upper_limit_price_of_dynamic_price_and_trading_value.dissect(buffer, index, packet, parent)

  -- Gap Between Lower Limit Price Of Dynamic Price And Trading Value: Double
  index, gap_between_lower_limit_price_of_dynamic_price_and_trading_value = koscom_mdcsrealtime_nightderivatives_exture_v2_020.gap_between_lower_limit_price_of_dynamic_price_and_trading_value.dissect(buffer, index, packet, parent)

  -- Underlying Asset Market Id: String
  index, underlying_asset_market_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.underlying_asset_market_id.dissect(buffer, index, packet, parent)

  -- Upper Limit Quantity: FLOAT128
  index, upper_limit_quantity = koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_quantity.dissect(buffer, index, packet, parent)

  -- Lower Limit Quantity: FLOAT128
  index, lower_limit_quantity = koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_quantity.dissect(buffer, index, packet, parent)

  -- Upper Limit Quantity For Block Trade: FLOAT128
  index, upper_limit_quantity_for_block_trade = koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_quantity_for_block_trade.dissect(buffer, index, packet, parent)

  -- Lower Limit Quantity For Block Trade: FLOAT128
  index, lower_limit_quantity_for_block_trade = koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_quantity_for_block_trade.dissect(buffer, index, packet, parent)

  -- Base Product Id: String
  index, base_product_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.base_product_id.dissect(buffer, index, packet, parent)

  -- Subsidiary Product Id: String
  index, subsidiary_product_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.subsidiary_product_id.dissect(buffer, index, packet, parent)

  -- Number Of Issues For Base Product: Int
  index, number_of_issues_for_base_product = koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_issues_for_base_product.dissect(buffer, index, packet, parent)

  -- Number Of Issues For Subsidiary Product: Int
  index, number_of_issues_for_subsidiary_product = koscom_mdcsrealtime_nightderivatives_exture_v2_020.number_of_issues_for_subsidiary_product.dissect(buffer, index, packet, parent)

  -- Settlement Week: String
  index, settlement_week = koscom_mdcsrealtime_nightderivatives_exture_v2_020.settlement_week.dissect(buffer, index, packet, parent)

  -- Suspended Stocks: String
  index, suspended_stocks = koscom_mdcsrealtime_nightderivatives_exture_v2_020.suspended_stocks.dissect(buffer, index, packet, parent)

  -- Designation Date For Suspended Stocks: String
  index, designation_date_for_suspended_stocks = koscom_mdcsrealtime_nightderivatives_exture_v2_020.designation_date_for_suspended_stocks.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Batch Data Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_batch_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_batch_data_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_batch_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_batch_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_batch_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Group Order Acceptance Halt Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_group_order_acceptance_halt_message = {}

-- Size: Derivatives Group Order Acceptance Halt Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_group_order_acceptance_halt_message.size =
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.market_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.me_group_number.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_group_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_processing_time.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.size

-- Display: Derivatives Group Order Acceptance Halt Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_group_order_acceptance_halt_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Group Order Acceptance Halt Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_group_order_acceptance_halt_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: String
  index, market_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.market_id.dissect(buffer, index, packet, parent)

  -- Me Group Number: String
  index, me_group_number = koscom_mdcsrealtime_nightderivatives_exture_v2_020.me_group_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Board Event Id: String
  index, board_event_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_id.dissect(buffer, index, packet, parent)

  -- Board Event Group Code: Int
  index, board_event_group_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_group_code.dissect(buffer, index, packet, parent)

  -- Board Event Processing Time: String
  index, board_event_processing_time = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_processing_time.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Group Order Acceptance Halt Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_group_order_acceptance_halt_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_group_order_acceptance_halt_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_group_order_acceptance_halt_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_group_order_acceptance_halt_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_group_order_acceptance_halt_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Quantity Allocation Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quantity_allocation_message = {}

-- Size: Derivatives Quantity Allocation Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quantity_allocation_message.size =
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.start_end_of_allocation.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.allocation_type_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.time_when_allocation_ended.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.size

-- Display: Derivatives Quantity Allocation Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quantity_allocation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Quantity Allocation Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quantity_allocation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Start End Of Allocation: String
  index, start_end_of_allocation = koscom_mdcsrealtime_nightderivatives_exture_v2_020.start_end_of_allocation.dissect(buffer, index, packet, parent)

  -- Allocation Type Code: String
  index, allocation_type_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.allocation_type_code.dissect(buffer, index, packet, parent)

  -- Time When Allocation Ended: String
  index, time_when_allocation_ended = koscom_mdcsrealtime_nightderivatives_exture_v2_020.time_when_allocation_ended.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Quantity Allocation Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quantity_allocation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_quantity_allocation_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quantity_allocation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quantity_allocation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quantity_allocation_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Price Limit Range Increase Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_price_limit_range_increase_message = {}

-- Size: Derivatives Price Limit Range Increase Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_price_limit_range_increase_message.size =
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_time_imposing_a_price_limit.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.price_limit_expansion_upper_limit.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.price_limit_expansion_lower_limit.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.size

-- Display: Derivatives Price Limit Range Increase Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_price_limit_range_increase_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Price Limit Range Increase Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_price_limit_range_increase_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- The Time Imposing A Price Limit: String
  index, the_time_imposing_a_price_limit = koscom_mdcsrealtime_nightderivatives_exture_v2_020.the_time_imposing_a_price_limit.dissect(buffer, index, packet, parent)

  -- Price Limit Expansion Upper Limit: Int
  index, price_limit_expansion_upper_limit = koscom_mdcsrealtime_nightderivatives_exture_v2_020.price_limit_expansion_upper_limit.dissect(buffer, index, packet, parent)

  -- Price Limit Expansion Lower Limit: Int
  index, price_limit_expansion_lower_limit = koscom_mdcsrealtime_nightderivatives_exture_v2_020.price_limit_expansion_lower_limit.dissect(buffer, index, packet, parent)

  -- Upper Limit Price: Double
  index, upper_limit_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_price.dissect(buffer, index, packet, parent)

  -- Lower Limit Price: Double
  index, lower_limit_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_price.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Price Limit Range Increase Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_price_limit_range_increase_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_price_limit_range_increase_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_price_limit_range_increase_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_price_limit_range_increase_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_price_limit_range_increase_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Dynamic Upper Lower Limit Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_dynamic_upper_lower_limit_message = {}

-- Size: Derivatives Dynamic Upper Lower Limit Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_dynamic_upper_lower_limit_message.size =
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.dynamic_price_limit_type_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_of_dynamic_price_range.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_of_dynamic_price_range.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.size

-- Display: Derivatives Dynamic Upper Lower Limit Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_dynamic_upper_lower_limit_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Dynamic Upper Lower Limit Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_dynamic_upper_lower_limit_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_nightderivatives_exture_v2_020.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Dynamic Price Limit Type Code: String
  index, dynamic_price_limit_type_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.dynamic_price_limit_type_code.dissect(buffer, index, packet, parent)

  -- Upper Limit Of Dynamic Price Range: Double
  index, upper_limit_of_dynamic_price_range = koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_of_dynamic_price_range.dissect(buffer, index, packet, parent)

  -- Lower Limit Of Dynamic Price Range: Double
  index, lower_limit_of_dynamic_price_range = koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_of_dynamic_price_range.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Dynamic Upper Lower Limit Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_dynamic_upper_lower_limit_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_dynamic_upper_lower_limit_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_dynamic_upper_lower_limit_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_dynamic_upper_lower_limit_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_dynamic_upper_lower_limit_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Market Operation Schedule Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message = {}

-- Size: Derivatives Market Operation Schedule Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.size =
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.market_operation_product_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.start_time_of_a_board_event.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_group_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_start_end_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code_of_a_common_stock.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.product_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_halt_reason_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_halt_type_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.step_applied.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.price_limit_range_expansion_for_base_issue_type_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.expected_time_of_expanding_price_limit_range.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.size

-- Display: Derivatives Market Operation Schedule Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Market Operation Schedule Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Operation Product Id: String
  index, market_operation_product_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.market_operation_product_id.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Board Event Id: String
  index, board_event_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_id.dissect(buffer, index, packet, parent)

  -- Start Time Of A Board Event: String
  index, start_time_of_a_board_event = koscom_mdcsrealtime_nightderivatives_exture_v2_020.start_time_of_a_board_event.dissect(buffer, index, packet, parent)

  -- Board Event Group Code: Int
  index, board_event_group_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_group_code.dissect(buffer, index, packet, parent)

  -- Session Start End Code: String
  index, session_start_end_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_start_end_code.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- Isin Code Of A Common Stock: String
  index, isin_code_of_a_common_stock = koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code_of_a_common_stock.dissect(buffer, index, packet, parent)

  -- Product Id: String
  index, product_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.product_id.dissect(buffer, index, packet, parent)

  -- Trading Halt Reason Code: String
  index, trading_halt_reason_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_halt_reason_code.dissect(buffer, index, packet, parent)

  -- Trading Halt Type Code: String
  index, trading_halt_type_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_halt_type_code.dissect(buffer, index, packet, parent)

  -- Step Applied: Int
  index, step_applied = koscom_mdcsrealtime_nightderivatives_exture_v2_020.step_applied.dissect(buffer, index, packet, parent)

  -- Price Limit Range Expansion For Base Issue Type Code: String
  index, price_limit_range_expansion_for_base_issue_type_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.price_limit_range_expansion_for_base_issue_type_code.dissect(buffer, index, packet, parent)

  -- Expected Time Of Expanding Price Limit Range: String
  index, expected_time_of_expanding_price_limit_range = koscom_mdcsrealtime_nightderivatives_exture_v2_020.expected_time_of_expanding_price_limit_range.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Market Operation Schedule Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_market_operation_schedule_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Issue Closing Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_issue_closing_message = {}

-- Size: Derivatives Issue Closing Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_issue_closing_message.size =
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.closing_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.closing_price_type_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_value.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.size

-- Display: Derivatives Issue Closing Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_issue_closing_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Issue Closing Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_issue_closing_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Closing Price: Double
  index, closing_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.closing_price.dissect(buffer, index, packet, parent)

  -- Closing Price Type Code: String
  index, closing_price_type_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.closing_price_type_code.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Issue Closing Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_issue_closing_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_issue_closing_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_issue_closing_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_issue_closing_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_issue_closing_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Market Operation Ts Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message = {}

-- Size: Derivatives Market Operation Ts Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.size =
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.start_time_of_a_board_event.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_group_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_halt_reason_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.size

-- Display: Derivatives Market Operation Ts Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Market Operation Ts Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_nightderivatives_exture_v2_020.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Board Event Id: String
  index, board_event_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_id.dissect(buffer, index, packet, parent)

  -- Start Time Of A Board Event: String
  index, start_time_of_a_board_event = koscom_mdcsrealtime_nightderivatives_exture_v2_020.start_time_of_a_board_event.dissect(buffer, index, packet, parent)

  -- Board Event Group Code: Int
  index, board_event_group_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_group_code.dissect(buffer, index, packet, parent)

  -- Trading Halt Reason Code: String
  index, trading_halt_reason_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_halt_reason_code.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Market Operation Ts Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_market_operation_ts_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Negotiated Trade Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_negotiated_trade_message = {}

-- Size: Derivatives Negotiated Trade Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_negotiated_trade_message.size =
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.total_accumulated_trading_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.total_accumulated_trading_value.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.size

-- Display: Derivatives Negotiated Trade Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_negotiated_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Negotiated Trade Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_negotiated_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Total Accumulated Trading Volume: Long
  index, total_accumulated_trading_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.total_accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Total Accumulated Trading Value: FLOAT128
  index, total_accumulated_trading_value = koscom_mdcsrealtime_nightderivatives_exture_v2_020.total_accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Negotiated Trade Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_negotiated_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_negotiated_trade_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_negotiated_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_negotiated_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_negotiated_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Market Operation Ts Plus Quote Ten Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_plus_quote_ten_levels_message = {}

-- Size: Derivatives Market Operation Ts Plus Quote Ten Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_plus_quote_ten_levels_message.size =
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.start_time_of_a_board_event.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_group_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_of_dynamic_price_range.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_of_dynamic_price_range.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_total_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_total_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_price_valid_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_price_valid_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.size

-- Display: Derivatives Market Operation Ts Plus Quote Ten Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_plus_quote_ten_levels_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Market Operation Ts Plus Quote Ten Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_plus_quote_ten_levels_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_nightderivatives_exture_v2_020.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Board Event Id: String
  index, board_event_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_id.dissect(buffer, index, packet, parent)

  -- Start Time Of A Board Event: String
  index, start_time_of_a_board_event = koscom_mdcsrealtime_nightderivatives_exture_v2_020.start_time_of_a_board_event.dissect(buffer, index, packet, parent)

  -- Board Event Group Code: Int
  index, board_event_group_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_group_code.dissect(buffer, index, packet, parent)

  -- Upper Limit Of Dynamic Price Range: Double
  index, upper_limit_of_dynamic_price_range = koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_of_dynamic_price_range.dissect(buffer, index, packet, parent)

  -- Lower Limit Of Dynamic Price Range: Double
  index, lower_limit_of_dynamic_price_range = koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_of_dynamic_price_range.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Int
  index, ask_level_1_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Int
  index, bid_level_1_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Order Counts: Int
  index, ask_level_1_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Order Counts: Int
  index, bid_level_1_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Int
  index, ask_level_2_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Int
  index, bid_level_2_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Order Counts: Int
  index, ask_level_2_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Order Counts: Int
  index, bid_level_2_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Int
  index, ask_level_3_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Int
  index, bid_level_3_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Order Counts: Int
  index, ask_level_3_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Order Counts: Int
  index, bid_level_3_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Int
  index, ask_level_4_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Int
  index, bid_level_4_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Order Counts: Int
  index, ask_level_4_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Order Counts: Int
  index, bid_level_4_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Int
  index, ask_level_5_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Int
  index, bid_level_5_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Order Counts: Int
  index, ask_level_5_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Order Counts: Int
  index, bid_level_5_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Price: Double
  index, ask_level_6_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_price.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Price: Double
  index, bid_level_6_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_price.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Volume: Int
  index, ask_level_6_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Volume: Int
  index, bid_level_6_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Order Counts: Int
  index, ask_level_6_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Order Counts: Int
  index, bid_level_6_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Price: Double
  index, ask_level_7_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_price.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Price: Double
  index, bid_level_7_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_price.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Volume: Int
  index, ask_level_7_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Volume: Int
  index, bid_level_7_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Order Counts: Int
  index, ask_level_7_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Order Counts: Int
  index, bid_level_7_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Price: Double
  index, ask_level_8_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_price.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Price: Double
  index, bid_level_8_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_price.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Volume: Int
  index, ask_level_8_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Volume: Int
  index, bid_level_8_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Order Counts: Int
  index, ask_level_8_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Order Counts: Int
  index, bid_level_8_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Price: Double
  index, ask_level_9_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_price.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Price: Double
  index, bid_level_9_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_price.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Volume: Int
  index, ask_level_9_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Volume: Int
  index, bid_level_9_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Order Counts: Int
  index, ask_level_9_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Order Counts: Int
  index, bid_level_9_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Price: Double
  index, ask_level_10_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_price.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Price: Double
  index, bid_level_10_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_price.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Volume: Int
  index, ask_level_10_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Volume: Int
  index, bid_level_10_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Order Counts: Int
  index, ask_level_10_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Order Counts: Int
  index, bid_level_10_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Total Volume: Int
  index, ask_total_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_total_volume.dissect(buffer, index, packet, parent)

  -- Bid Total Volume: Int
  index, bid_total_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_total_volume.dissect(buffer, index, packet, parent)

  -- Ask Price Valid Counts: Int
  index, ask_price_valid_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_price_valid_counts.dissect(buffer, index, packet, parent)

  -- Bid Price Valid Counts: Int
  index, bid_price_valid_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_price_valid_counts.dissect(buffer, index, packet, parent)

  -- Estimated Trading Price: Double
  index, estimated_trading_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_price.dissect(buffer, index, packet, parent)

  -- Estimated Trading Volume: Int
  index, estimated_trading_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Market Operation Ts Plus Quote Ten Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_plus_quote_ten_levels_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_market_operation_ts_plus_quote_ten_levels_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_plus_quote_ten_levels_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_plus_quote_ten_levels_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_plus_quote_ten_levels_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Market Operation Ts Plus Quote Five Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_plus_quote_five_levels_message = {}

-- Size: Derivatives Market Operation Ts Plus Quote Five Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_plus_quote_five_levels_message.size =
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.start_time_of_a_board_event.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_group_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_of_dynamic_price_range.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_of_dynamic_price_range.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_total_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_total_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_price_valid_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_price_valid_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.size

-- Display: Derivatives Market Operation Ts Plus Quote Five Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_plus_quote_five_levels_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Market Operation Ts Plus Quote Five Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_plus_quote_five_levels_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_nightderivatives_exture_v2_020.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Board Event Id: String
  index, board_event_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_id.dissect(buffer, index, packet, parent)

  -- Start Time Of A Board Event: String
  index, start_time_of_a_board_event = koscom_mdcsrealtime_nightderivatives_exture_v2_020.start_time_of_a_board_event.dissect(buffer, index, packet, parent)

  -- Board Event Group Code: Int
  index, board_event_group_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_event_group_code.dissect(buffer, index, packet, parent)

  -- Upper Limit Of Dynamic Price Range: Double
  index, upper_limit_of_dynamic_price_range = koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_of_dynamic_price_range.dissect(buffer, index, packet, parent)

  -- Lower Limit Of Dynamic Price Range: Double
  index, lower_limit_of_dynamic_price_range = koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_of_dynamic_price_range.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Int
  index, ask_level_1_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Int
  index, bid_level_1_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Order Counts: Int
  index, ask_level_1_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Order Counts: Int
  index, bid_level_1_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Int
  index, ask_level_2_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Int
  index, bid_level_2_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Order Counts: Int
  index, ask_level_2_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Order Counts: Int
  index, bid_level_2_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Int
  index, ask_level_3_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Int
  index, bid_level_3_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Order Counts: Int
  index, ask_level_3_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Order Counts: Int
  index, bid_level_3_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Int
  index, ask_level_4_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Int
  index, bid_level_4_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Order Counts: Int
  index, ask_level_4_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Order Counts: Int
  index, bid_level_4_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Int
  index, ask_level_5_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Int
  index, bid_level_5_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Order Counts: Int
  index, ask_level_5_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Order Counts: Int
  index, bid_level_5_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Total Volume: Int
  index, ask_total_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_total_volume.dissect(buffer, index, packet, parent)

  -- Bid Total Volume: Int
  index, bid_total_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_total_volume.dissect(buffer, index, packet, parent)

  -- Ask Price Valid Counts: Int
  index, ask_price_valid_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_price_valid_counts.dissect(buffer, index, packet, parent)

  -- Bid Price Valid Counts: Int
  index, bid_price_valid_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_price_valid_counts.dissect(buffer, index, packet, parent)

  -- Estimated Trading Price: Double
  index, estimated_trading_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_price.dissect(buffer, index, packet, parent)

  -- Estimated Trading Volume: Int
  index, estimated_trading_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Market Operation Ts Plus Quote Five Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_plus_quote_five_levels_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_market_operation_ts_plus_quote_five_levels_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_plus_quote_five_levels_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_plus_quote_five_levels_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_plus_quote_five_levels_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Order Filled Plus Quote Ten Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_plus_quote_ten_levels_message = {}

-- Size: Derivatives Order Filled Plus Quote Ten Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_plus_quote_ten_levels_message.size =
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.nearby_month_contract_trading_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.distant_month_contract_trading_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.opening_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.todays_high.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.todays_low.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_value.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.final_ask_bid_type_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_of_dynamic_price_range.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_of_dynamic_price_range.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_total_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_total_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_price_valid_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_price_valid_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.size

-- Display: Derivatives Order Filled Plus Quote Ten Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_plus_quote_ten_levels_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Order Filled Plus Quote Ten Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_plus_quote_ten_levels_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_nightderivatives_exture_v2_020.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Trading Price: Double
  index, trading_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_price.dissect(buffer, index, packet, parent)

  -- Trading Volume: Int
  index, trading_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_volume.dissect(buffer, index, packet, parent)

  -- Nearby Month Contract Trading Price: Double
  index, nearby_month_contract_trading_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.nearby_month_contract_trading_price.dissect(buffer, index, packet, parent)

  -- Distant Month Contract Trading Price: Double
  index, distant_month_contract_trading_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.distant_month_contract_trading_price.dissect(buffer, index, packet, parent)

  -- Opening Price: Double
  index, opening_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.opening_price.dissect(buffer, index, packet, parent)

  -- Todays High: Double
  index, todays_high = koscom_mdcsrealtime_nightderivatives_exture_v2_020.todays_high.dissect(buffer, index, packet, parent)

  -- Todays Low: Double
  index, todays_low = koscom_mdcsrealtime_nightderivatives_exture_v2_020.todays_low.dissect(buffer, index, packet, parent)

  -- Previous Price: Double
  index, previous_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_price.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Final Ask Bid Type Code: String
  index, final_ask_bid_type_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.final_ask_bid_type_code.dissect(buffer, index, packet, parent)

  -- Upper Limit Of Dynamic Price Range: Double
  index, upper_limit_of_dynamic_price_range = koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_of_dynamic_price_range.dissect(buffer, index, packet, parent)

  -- Lower Limit Of Dynamic Price Range: Double
  index, lower_limit_of_dynamic_price_range = koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_of_dynamic_price_range.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Int
  index, ask_level_1_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Int
  index, bid_level_1_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Order Counts: Int
  index, ask_level_1_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Order Counts: Int
  index, bid_level_1_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Int
  index, ask_level_2_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Int
  index, bid_level_2_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Order Counts: Int
  index, ask_level_2_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Order Counts: Int
  index, bid_level_2_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Int
  index, ask_level_3_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Int
  index, bid_level_3_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Order Counts: Int
  index, ask_level_3_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Order Counts: Int
  index, bid_level_3_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Int
  index, ask_level_4_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Int
  index, bid_level_4_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Order Counts: Int
  index, ask_level_4_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Order Counts: Int
  index, bid_level_4_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Int
  index, ask_level_5_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Int
  index, bid_level_5_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Order Counts: Int
  index, ask_level_5_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Order Counts: Int
  index, bid_level_5_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Price: Double
  index, ask_level_6_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_price.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Price: Double
  index, bid_level_6_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_price.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Volume: Int
  index, ask_level_6_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Volume: Int
  index, bid_level_6_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Order Counts: Int
  index, ask_level_6_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Order Counts: Int
  index, bid_level_6_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Price: Double
  index, ask_level_7_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_price.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Price: Double
  index, bid_level_7_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_price.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Volume: Int
  index, ask_level_7_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Volume: Int
  index, bid_level_7_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Order Counts: Int
  index, ask_level_7_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Order Counts: Int
  index, bid_level_7_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Price: Double
  index, ask_level_8_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_price.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Price: Double
  index, bid_level_8_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_price.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Volume: Int
  index, ask_level_8_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Volume: Int
  index, bid_level_8_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Order Counts: Int
  index, ask_level_8_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Order Counts: Int
  index, bid_level_8_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Price: Double
  index, ask_level_9_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_price.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Price: Double
  index, bid_level_9_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_price.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Volume: Int
  index, ask_level_9_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Volume: Int
  index, bid_level_9_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Order Counts: Int
  index, ask_level_9_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Order Counts: Int
  index, bid_level_9_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Price: Double
  index, ask_level_10_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_price.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Price: Double
  index, bid_level_10_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_price.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Volume: Int
  index, ask_level_10_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Volume: Int
  index, bid_level_10_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Order Counts: Int
  index, ask_level_10_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Order Counts: Int
  index, bid_level_10_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Total Volume: Int
  index, ask_total_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_total_volume.dissect(buffer, index, packet, parent)

  -- Bid Total Volume: Int
  index, bid_total_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_total_volume.dissect(buffer, index, packet, parent)

  -- Ask Price Valid Counts: Int
  index, ask_price_valid_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_price_valid_counts.dissect(buffer, index, packet, parent)

  -- Bid Price Valid Counts: Int
  index, bid_price_valid_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_price_valid_counts.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Order Filled Plus Quote Ten Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_plus_quote_ten_levels_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_order_filled_plus_quote_ten_levels_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_plus_quote_ten_levels_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_plus_quote_ten_levels_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_plus_quote_ten_levels_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Order Filled Plus Quote Five Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_plus_quote_five_levels_message = {}

-- Size: Derivatives Order Filled Plus Quote Five Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_plus_quote_five_levels_message.size =
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.nearby_month_contract_trading_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.distant_month_contract_trading_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.opening_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.todays_high.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.todays_low.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_value.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.final_ask_bid_type_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_of_dynamic_price_range.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_of_dynamic_price_range.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_total_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_total_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_price_valid_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_price_valid_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.size

-- Display: Derivatives Order Filled Plus Quote Five Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_plus_quote_five_levels_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Order Filled Plus Quote Five Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_plus_quote_five_levels_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_nightderivatives_exture_v2_020.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Trading Price: Double
  index, trading_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_price.dissect(buffer, index, packet, parent)

  -- Trading Volume: Int
  index, trading_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_volume.dissect(buffer, index, packet, parent)

  -- Nearby Month Contract Trading Price: Double
  index, nearby_month_contract_trading_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.nearby_month_contract_trading_price.dissect(buffer, index, packet, parent)

  -- Distant Month Contract Trading Price: Double
  index, distant_month_contract_trading_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.distant_month_contract_trading_price.dissect(buffer, index, packet, parent)

  -- Opening Price: Double
  index, opening_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.opening_price.dissect(buffer, index, packet, parent)

  -- Todays High: Double
  index, todays_high = koscom_mdcsrealtime_nightderivatives_exture_v2_020.todays_high.dissect(buffer, index, packet, parent)

  -- Todays Low: Double
  index, todays_low = koscom_mdcsrealtime_nightderivatives_exture_v2_020.todays_low.dissect(buffer, index, packet, parent)

  -- Previous Price: Double
  index, previous_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_price.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Final Ask Bid Type Code: String
  index, final_ask_bid_type_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.final_ask_bid_type_code.dissect(buffer, index, packet, parent)

  -- Upper Limit Of Dynamic Price Range: Double
  index, upper_limit_of_dynamic_price_range = koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_of_dynamic_price_range.dissect(buffer, index, packet, parent)

  -- Lower Limit Of Dynamic Price Range: Double
  index, lower_limit_of_dynamic_price_range = koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_of_dynamic_price_range.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Int
  index, ask_level_1_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Int
  index, bid_level_1_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Order Counts: Int
  index, ask_level_1_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Order Counts: Int
  index, bid_level_1_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Int
  index, ask_level_2_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Int
  index, bid_level_2_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Order Counts: Int
  index, ask_level_2_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Order Counts: Int
  index, bid_level_2_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Int
  index, ask_level_3_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Int
  index, bid_level_3_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Order Counts: Int
  index, ask_level_3_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Order Counts: Int
  index, bid_level_3_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Int
  index, ask_level_4_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Int
  index, bid_level_4_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Order Counts: Int
  index, ask_level_4_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Order Counts: Int
  index, bid_level_4_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Int
  index, ask_level_5_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Int
  index, bid_level_5_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Order Counts: Int
  index, ask_level_5_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Order Counts: Int
  index, bid_level_5_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Total Volume: Int
  index, ask_total_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_total_volume.dissect(buffer, index, packet, parent)

  -- Bid Total Volume: Int
  index, bid_total_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_total_volume.dissect(buffer, index, packet, parent)

  -- Ask Price Valid Counts: Int
  index, ask_price_valid_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_price_valid_counts.dissect(buffer, index, packet, parent)

  -- Bid Price Valid Counts: Int
  index, bid_price_valid_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_price_valid_counts.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Order Filled Plus Quote Five Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_plus_quote_five_levels_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_order_filled_plus_quote_five_levels_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_plus_quote_five_levels_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_plus_quote_five_levels_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_plus_quote_five_levels_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Order Filled Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_message = {}

-- Size: Derivatives Order Filled Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_message.size =
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.nearby_month_contract_trading_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.distant_month_contract_trading_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.opening_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.todays_high.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.todays_low.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_value.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.final_ask_bid_type_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_of_dynamic_price_range.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_of_dynamic_price_range.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.size

-- Display: Derivatives Order Filled Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Order Filled Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_nightderivatives_exture_v2_020.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Trading Price: Double
  index, trading_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_price.dissect(buffer, index, packet, parent)

  -- Trading Volume: Int
  index, trading_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_volume.dissect(buffer, index, packet, parent)

  -- Nearby Month Contract Trading Price: Double
  index, nearby_month_contract_trading_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.nearby_month_contract_trading_price.dissect(buffer, index, packet, parent)

  -- Distant Month Contract Trading Price: Double
  index, distant_month_contract_trading_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.distant_month_contract_trading_price.dissect(buffer, index, packet, parent)

  -- Opening Price: Double
  index, opening_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.opening_price.dissect(buffer, index, packet, parent)

  -- Todays High: Double
  index, todays_high = koscom_mdcsrealtime_nightderivatives_exture_v2_020.todays_high.dissect(buffer, index, packet, parent)

  -- Todays Low: Double
  index, todays_low = koscom_mdcsrealtime_nightderivatives_exture_v2_020.todays_low.dissect(buffer, index, packet, parent)

  -- Previous Price: Double
  index, previous_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.previous_price.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Final Ask Bid Type Code: String
  index, final_ask_bid_type_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.final_ask_bid_type_code.dissect(buffer, index, packet, parent)

  -- Upper Limit Of Dynamic Price Range: Double
  index, upper_limit_of_dynamic_price_range = koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_of_dynamic_price_range.dissect(buffer, index, packet, parent)

  -- Lower Limit Of Dynamic Price Range: Double
  index, lower_limit_of_dynamic_price_range = koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_of_dynamic_price_range.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Order Filled Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_order_filled_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Snapshot Ten Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_snapshot_ten_levels_message = {}

-- Size: Derivatives Snapshot Ten Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_snapshot_ten_levels_message.size =
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.nearby_month_contract_trading_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.distant_month_contract_trading_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.opening_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.todays_high.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.todays_low.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.open_interest.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_value.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.final_ask_bid_type_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_total_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_total_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_price_valid_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_price_valid_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.size

-- Display: Derivatives Snapshot Ten Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_snapshot_ten_levels_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Snapshot Ten Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_snapshot_ten_levels_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Upper Limit Price: Double
  index, upper_limit_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_price.dissect(buffer, index, packet, parent)

  -- Lower Limit Price: Double
  index, lower_limit_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_price.dissect(buffer, index, packet, parent)

  -- Trading Price: Double
  index, trading_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_price.dissect(buffer, index, packet, parent)

  -- Nearby Month Contract Trading Price: Double
  index, nearby_month_contract_trading_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.nearby_month_contract_trading_price.dissect(buffer, index, packet, parent)

  -- Distant Month Contract Trading Price: Double
  index, distant_month_contract_trading_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.distant_month_contract_trading_price.dissect(buffer, index, packet, parent)

  -- Opening Price: Double
  index, opening_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.opening_price.dissect(buffer, index, packet, parent)

  -- Todays High: Double
  index, todays_high = koscom_mdcsrealtime_nightderivatives_exture_v2_020.todays_high.dissect(buffer, index, packet, parent)

  -- Todays Low: Double
  index, todays_low = koscom_mdcsrealtime_nightderivatives_exture_v2_020.todays_low.dissect(buffer, index, packet, parent)

  -- Open Interest: Long
  index, open_interest = koscom_mdcsrealtime_nightderivatives_exture_v2_020.open_interest.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Final Ask Bid Type Code: String
  index, final_ask_bid_type_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.final_ask_bid_type_code.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Int
  index, ask_level_1_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Int
  index, bid_level_1_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Order Counts: Int
  index, ask_level_1_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Order Counts: Int
  index, bid_level_1_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Int
  index, ask_level_2_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Int
  index, bid_level_2_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Order Counts: Int
  index, ask_level_2_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Order Counts: Int
  index, bid_level_2_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Int
  index, ask_level_3_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Int
  index, bid_level_3_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Order Counts: Int
  index, ask_level_3_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Order Counts: Int
  index, bid_level_3_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Int
  index, ask_level_4_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Int
  index, bid_level_4_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Order Counts: Int
  index, ask_level_4_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Order Counts: Int
  index, bid_level_4_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Int
  index, ask_level_5_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Int
  index, bid_level_5_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Order Counts: Int
  index, ask_level_5_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Order Counts: Int
  index, bid_level_5_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Price: Double
  index, ask_level_6_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_price.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Price: Double
  index, bid_level_6_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_price.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Volume: Int
  index, ask_level_6_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Volume: Int
  index, bid_level_6_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Order Counts: Int
  index, ask_level_6_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Order Counts: Int
  index, bid_level_6_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Price: Double
  index, ask_level_7_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_price.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Price: Double
  index, bid_level_7_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_price.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Volume: Int
  index, ask_level_7_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Volume: Int
  index, bid_level_7_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Order Counts: Int
  index, ask_level_7_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Order Counts: Int
  index, bid_level_7_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Price: Double
  index, ask_level_8_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_price.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Price: Double
  index, bid_level_8_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_price.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Volume: Int
  index, ask_level_8_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Volume: Int
  index, bid_level_8_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Order Counts: Int
  index, ask_level_8_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Order Counts: Int
  index, bid_level_8_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Price: Double
  index, ask_level_9_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_price.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Price: Double
  index, bid_level_9_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_price.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Volume: Int
  index, ask_level_9_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Volume: Int
  index, bid_level_9_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Order Counts: Int
  index, ask_level_9_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Order Counts: Int
  index, bid_level_9_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Price: Double
  index, ask_level_10_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_price.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Price: Double
  index, bid_level_10_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_price.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Volume: Int
  index, ask_level_10_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Volume: Int
  index, bid_level_10_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Order Counts: Int
  index, ask_level_10_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Order Counts: Int
  index, bid_level_10_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Total Volume: Int
  index, ask_total_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_total_volume.dissect(buffer, index, packet, parent)

  -- Bid Total Volume: Int
  index, bid_total_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_total_volume.dissect(buffer, index, packet, parent)

  -- Ask Price Valid Counts: Int
  index, ask_price_valid_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_price_valid_counts.dissect(buffer, index, packet, parent)

  -- Bid Price Valid Counts: Int
  index, bid_price_valid_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_price_valid_counts.dissect(buffer, index, packet, parent)

  -- Estimated Trading Price: Double
  index, estimated_trading_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_price.dissect(buffer, index, packet, parent)

  -- Estimated Trading Volume: Int
  index, estimated_trading_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Snapshot Ten Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_snapshot_ten_levels_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_snapshot_ten_levels_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_snapshot_ten_levels_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_snapshot_ten_levels_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_snapshot_ten_levels_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Snapshot Five Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_snapshot_five_levels_message = {}

-- Size: Derivatives Snapshot Five Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_snapshot_five_levels_message.size =
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.nearby_month_contract_trading_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.distant_month_contract_trading_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.opening_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.todays_high.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.todays_low.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.open_interest.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_value.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.final_ask_bid_type_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_total_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_total_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_price_valid_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_price_valid_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.size

-- Display: Derivatives Snapshot Five Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_snapshot_five_levels_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Snapshot Five Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_snapshot_five_levels_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Upper Limit Price: Double
  index, upper_limit_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.upper_limit_price.dissect(buffer, index, packet, parent)

  -- Lower Limit Price: Double
  index, lower_limit_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.lower_limit_price.dissect(buffer, index, packet, parent)

  -- Trading Price: Double
  index, trading_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.trading_price.dissect(buffer, index, packet, parent)

  -- Nearby Month Contract Trading Price: Double
  index, nearby_month_contract_trading_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.nearby_month_contract_trading_price.dissect(buffer, index, packet, parent)

  -- Distant Month Contract Trading Price: Double
  index, distant_month_contract_trading_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.distant_month_contract_trading_price.dissect(buffer, index, packet, parent)

  -- Opening Price: Double
  index, opening_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.opening_price.dissect(buffer, index, packet, parent)

  -- Todays High: Double
  index, todays_high = koscom_mdcsrealtime_nightderivatives_exture_v2_020.todays_high.dissect(buffer, index, packet, parent)

  -- Todays Low: Double
  index, todays_low = koscom_mdcsrealtime_nightderivatives_exture_v2_020.todays_low.dissect(buffer, index, packet, parent)

  -- Open Interest: Long
  index, open_interest = koscom_mdcsrealtime_nightderivatives_exture_v2_020.open_interest.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = koscom_mdcsrealtime_nightderivatives_exture_v2_020.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Final Ask Bid Type Code: String
  index, final_ask_bid_type_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.final_ask_bid_type_code.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Int
  index, ask_level_1_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Int
  index, bid_level_1_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Order Counts: Int
  index, ask_level_1_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Order Counts: Int
  index, bid_level_1_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Int
  index, ask_level_2_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Int
  index, bid_level_2_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Order Counts: Int
  index, ask_level_2_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Order Counts: Int
  index, bid_level_2_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Int
  index, ask_level_3_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Int
  index, bid_level_3_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Order Counts: Int
  index, ask_level_3_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Order Counts: Int
  index, bid_level_3_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Int
  index, ask_level_4_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Int
  index, bid_level_4_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Order Counts: Int
  index, ask_level_4_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Order Counts: Int
  index, bid_level_4_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Int
  index, ask_level_5_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Int
  index, bid_level_5_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Order Counts: Int
  index, ask_level_5_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Order Counts: Int
  index, bid_level_5_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Total Volume: Int
  index, ask_total_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_total_volume.dissect(buffer, index, packet, parent)

  -- Bid Total Volume: Int
  index, bid_total_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_total_volume.dissect(buffer, index, packet, parent)

  -- Ask Price Valid Counts: Int
  index, ask_price_valid_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_price_valid_counts.dissect(buffer, index, packet, parent)

  -- Bid Price Valid Counts: Int
  index, bid_price_valid_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_price_valid_counts.dissect(buffer, index, packet, parent)

  -- Estimated Trading Price: Double
  index, estimated_trading_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_price.dissect(buffer, index, packet, parent)

  -- Estimated Trading Volume: Int
  index, estimated_trading_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Snapshot Five Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_snapshot_five_levels_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_snapshot_five_levels_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_snapshot_five_levels_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_snapshot_five_levels_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_snapshot_five_levels_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Quote Ten Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quote_ten_levels_message = {}

-- Size: Derivatives Quote Ten Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quote_ten_levels_message.size =
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_total_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_total_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_price_valid_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_price_valid_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.size

-- Display: Derivatives Quote Ten Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quote_ten_levels_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Quote Ten Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quote_ten_levels_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_nightderivatives_exture_v2_020.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Int
  index, ask_level_1_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Int
  index, bid_level_1_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Order Counts: Int
  index, ask_level_1_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Order Counts: Int
  index, bid_level_1_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Int
  index, ask_level_2_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Int
  index, bid_level_2_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Order Counts: Int
  index, ask_level_2_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Order Counts: Int
  index, bid_level_2_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Int
  index, ask_level_3_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Int
  index, bid_level_3_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Order Counts: Int
  index, ask_level_3_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Order Counts: Int
  index, bid_level_3_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Int
  index, ask_level_4_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Int
  index, bid_level_4_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Order Counts: Int
  index, ask_level_4_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Order Counts: Int
  index, bid_level_4_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Int
  index, ask_level_5_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Int
  index, bid_level_5_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Order Counts: Int
  index, ask_level_5_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Order Counts: Int
  index, bid_level_5_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Price: Double
  index, ask_level_6_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_price.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Price: Double
  index, bid_level_6_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_price.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Volume: Int
  index, ask_level_6_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Volume: Int
  index, bid_level_6_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Order Counts: Int
  index, ask_level_6_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_6_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Order Counts: Int
  index, bid_level_6_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_6_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Price: Double
  index, ask_level_7_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_price.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Price: Double
  index, bid_level_7_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_price.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Volume: Int
  index, ask_level_7_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Volume: Int
  index, bid_level_7_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Order Counts: Int
  index, ask_level_7_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_7_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Order Counts: Int
  index, bid_level_7_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_7_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Price: Double
  index, ask_level_8_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_price.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Price: Double
  index, bid_level_8_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_price.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Volume: Int
  index, ask_level_8_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Volume: Int
  index, bid_level_8_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Order Counts: Int
  index, ask_level_8_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_8_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Order Counts: Int
  index, bid_level_8_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_8_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Price: Double
  index, ask_level_9_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_price.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Price: Double
  index, bid_level_9_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_price.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Volume: Int
  index, ask_level_9_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Volume: Int
  index, bid_level_9_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Order Counts: Int
  index, ask_level_9_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_9_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Order Counts: Int
  index, bid_level_9_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_9_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Price: Double
  index, ask_level_10_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_price.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Price: Double
  index, bid_level_10_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_price.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Volume: Int
  index, ask_level_10_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Volume: Int
  index, bid_level_10_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Order Counts: Int
  index, ask_level_10_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_10_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Order Counts: Int
  index, bid_level_10_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_10_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Total Volume: Int
  index, ask_total_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_total_volume.dissect(buffer, index, packet, parent)

  -- Bid Total Volume: Int
  index, bid_total_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_total_volume.dissect(buffer, index, packet, parent)

  -- Ask Price Valid Counts: Int
  index, ask_price_valid_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_price_valid_counts.dissect(buffer, index, packet, parent)

  -- Bid Price Valid Counts: Int
  index, bid_price_valid_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_price_valid_counts.dissect(buffer, index, packet, parent)

  -- Estimated Trading Price: Double
  index, estimated_trading_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_price.dissect(buffer, index, packet, parent)

  -- Estimated Trading Volume: Int
  index, estimated_trading_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Quote Ten Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quote_ten_levels_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_quote_ten_levels_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quote_ten_levels_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quote_ten_levels_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quote_ten_levels_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivatives Quote Five Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quote_five_levels_message = {}

-- Size: Derivatives Quote Five Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quote_five_levels_message.size =
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_id.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.processing_time_of_trading_system.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_order_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_total_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_total_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_price_valid_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_price_valid_counts.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_price.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_volume.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.size

-- Display: Derivatives Quote Five Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quote_five_levels_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivatives Quote Five Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quote_five_levels_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = koscom_mdcsrealtime_nightderivatives_exture_v2_020.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = koscom_mdcsrealtime_nightderivatives_exture_v2_020.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue: Int
  index, a_designated_number_for_an_issue = koscom_mdcsrealtime_nightderivatives_exture_v2_020.a_designated_number_for_an_issue.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = koscom_mdcsrealtime_nightderivatives_exture_v2_020.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Int
  index, ask_level_1_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Int
  index, bid_level_1_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Order Counts: Int
  index, ask_level_1_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_1_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Order Counts: Int
  index, bid_level_1_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_1_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Int
  index, ask_level_2_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Int
  index, bid_level_2_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Order Counts: Int
  index, ask_level_2_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_2_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Order Counts: Int
  index, bid_level_2_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_2_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Int
  index, ask_level_3_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Int
  index, bid_level_3_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Order Counts: Int
  index, ask_level_3_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_3_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Order Counts: Int
  index, bid_level_3_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_3_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Int
  index, ask_level_4_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Int
  index, bid_level_4_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Order Counts: Int
  index, ask_level_4_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_4_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Order Counts: Int
  index, bid_level_4_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_4_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Int
  index, ask_level_5_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Int
  index, bid_level_5_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Order Counts: Int
  index, ask_level_5_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_level_5_order_counts.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Order Counts: Int
  index, bid_level_5_order_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_level_5_order_counts.dissect(buffer, index, packet, parent)

  -- Ask Total Volume: Int
  index, ask_total_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_total_volume.dissect(buffer, index, packet, parent)

  -- Bid Total Volume: Int
  index, bid_total_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_total_volume.dissect(buffer, index, packet, parent)

  -- Ask Price Valid Counts: Int
  index, ask_price_valid_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.ask_price_valid_counts.dissect(buffer, index, packet, parent)

  -- Bid Price Valid Counts: Int
  index, bid_price_valid_counts = koscom_mdcsrealtime_nightderivatives_exture_v2_020.bid_price_valid_counts.dissect(buffer, index, packet, parent)

  -- Estimated Trading Price: Double
  index, estimated_trading_price = koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_price.dissect(buffer, index, packet, parent)

  -- Estimated Trading Volume: Int
  index, estimated_trading_volume = koscom_mdcsrealtime_nightderivatives_exture_v2_020.estimated_trading_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivatives Quote Five Levels Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quote_five_levels_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.derivatives_quote_five_levels_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quote_five_levels_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quote_five_levels_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quote_five_levels_message.fields(buffer, offset, packet, parent)
  end
end

-- Polling Data Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.polling_data_message = {}

-- Size: Polling Data Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.polling_data_message.size =
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.current_time_1_minute_interval.size + 
  koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.size

-- Display: Polling Data Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.polling_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Polling Data Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.polling_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Time 1 Minute Interval: String
  index, current_time_1_minute_interval = koscom_mdcsrealtime_nightderivatives_exture_v2_020.current_time_1_minute_interval.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = koscom_mdcsrealtime_nightderivatives_exture_v2_020.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Polling Data Message
koscom_mdcsrealtime_nightderivatives_exture_v2_020.polling_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.fields.polling_data_message, buffer(offset, 0))
    local index = koscom_mdcsrealtime_nightderivatives_exture_v2_020.polling_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = koscom_mdcsrealtime_nightderivatives_exture_v2_020.polling_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return koscom_mdcsrealtime_nightderivatives_exture_v2_020.polling_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
koscom_mdcsrealtime_nightderivatives_exture_v2_020.payload = {}

-- Dissect: Payload
koscom_mdcsrealtime_nightderivatives_exture_v2_020.payload.dispatch = {
  ["I2000"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.polling_data_message.dissect,
  ["B601V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quote_five_levels_message.dissect,
  ["B602V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quote_five_levels_message.dissect,
  ["B603V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quote_five_levels_message.dissect,
  ["B606V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quote_five_levels_message.dissect,
  ["B607V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quote_five_levels_message.dissect,
  ["B608V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quote_five_levels_message.dissect,
  ["B609V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quote_five_levels_message.dissect,
  ["B610V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quote_five_levels_message.dissect,
  ["B611V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quote_five_levels_message.dissect,
  ["B612V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quote_five_levels_message.dissect,
  ["B613V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quote_five_levels_message.dissect,
  ["B615V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quote_five_levels_message.dissect,
  ["B616V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quote_five_levels_message.dissect,
  ["B617V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quote_five_levels_message.dissect,
  ["B604V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quote_ten_levels_message.dissect,
  ["B605V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quote_ten_levels_message.dissect,
  ["B618V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quote_ten_levels_message.dissect,
  ["B201V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_snapshot_five_levels_message.dissect,
  ["B202V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_snapshot_five_levels_message.dissect,
  ["B203V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_snapshot_five_levels_message.dissect,
  ["B206V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_snapshot_five_levels_message.dissect,
  ["B207V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_snapshot_five_levels_message.dissect,
  ["B208V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_snapshot_five_levels_message.dissect,
  ["B209V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_snapshot_five_levels_message.dissect,
  ["B210V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_snapshot_five_levels_message.dissect,
  ["B211V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_snapshot_five_levels_message.dissect,
  ["B212V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_snapshot_five_levels_message.dissect,
  ["B213V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_snapshot_five_levels_message.dissect,
  ["B215V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_snapshot_five_levels_message.dissect,
  ["B216V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_snapshot_five_levels_message.dissect,
  ["B217V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_snapshot_five_levels_message.dissect,
  ["B204V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_snapshot_ten_levels_message.dissect,
  ["B205V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_snapshot_ten_levels_message.dissect,
  ["B218V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_snapshot_ten_levels_message.dissect,
  ["A301V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_message.dissect,
  ["A302V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_message.dissect,
  ["A303V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_message.dissect,
  ["A304V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_message.dissect,
  ["A305V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_message.dissect,
  ["A306V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_message.dissect,
  ["A307V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_message.dissect,
  ["A308V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_message.dissect,
  ["A309V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_message.dissect,
  ["A310V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_message.dissect,
  ["A311V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_message.dissect,
  ["A312V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_message.dissect,
  ["A313V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_message.dissect,
  ["A315V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_message.dissect,
  ["A316V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_message.dissect,
  ["A317V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_message.dissect,
  ["A318V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_message.dissect,
  ["G701V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_plus_quote_five_levels_message.dissect,
  ["G702V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_plus_quote_five_levels_message.dissect,
  ["G703V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_plus_quote_five_levels_message.dissect,
  ["G706V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_plus_quote_five_levels_message.dissect,
  ["G707V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_plus_quote_five_levels_message.dissect,
  ["G708V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_plus_quote_five_levels_message.dissect,
  ["G709V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_plus_quote_five_levels_message.dissect,
  ["G710V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_plus_quote_five_levels_message.dissect,
  ["G711V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_plus_quote_five_levels_message.dissect,
  ["G712V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_plus_quote_five_levels_message.dissect,
  ["G713V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_plus_quote_five_levels_message.dissect,
  ["G715V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_plus_quote_five_levels_message.dissect,
  ["G716V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_plus_quote_five_levels_message.dissect,
  ["G717V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_plus_quote_five_levels_message.dissect,
  ["G704V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_plus_quote_ten_levels_message.dissect,
  ["G705V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_plus_quote_ten_levels_message.dissect,
  ["G718V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_order_filled_plus_quote_ten_levels_message.dissect,
  ["R101V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_plus_quote_five_levels_message.dissect,
  ["R102V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_plus_quote_five_levels_message.dissect,
  ["R103V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_plus_quote_five_levels_message.dissect,
  ["R106V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_plus_quote_five_levels_message.dissect,
  ["R107V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_plus_quote_five_levels_message.dissect,
  ["R108V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_plus_quote_five_levels_message.dissect,
  ["R109V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_plus_quote_five_levels_message.dissect,
  ["R110V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_plus_quote_five_levels_message.dissect,
  ["R111V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_plus_quote_five_levels_message.dissect,
  ["R112V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_plus_quote_five_levels_message.dissect,
  ["R113V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_plus_quote_five_levels_message.dissect,
  ["R115V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_plus_quote_five_levels_message.dissect,
  ["R116V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_plus_quote_five_levels_message.dissect,
  ["R117V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_plus_quote_five_levels_message.dissect,
  ["R104V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_plus_quote_ten_levels_message.dissect,
  ["R105V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_plus_quote_ten_levels_message.dissect,
  ["R118V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_plus_quote_ten_levels_message.dissect,
  ["C401V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_negotiated_trade_message.dissect,
  ["C402V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_negotiated_trade_message.dissect,
  ["C403V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_negotiated_trade_message.dissect,
  ["C404V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_negotiated_trade_message.dissect,
  ["C405V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_negotiated_trade_message.dissect,
  ["C406V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_negotiated_trade_message.dissect,
  ["C407V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_negotiated_trade_message.dissect,
  ["C408V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_negotiated_trade_message.dissect,
  ["C409V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_negotiated_trade_message.dissect,
  ["C410V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_negotiated_trade_message.dissect,
  ["C411V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_negotiated_trade_message.dissect,
  ["C412V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_negotiated_trade_message.dissect,
  ["C413V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_negotiated_trade_message.dissect,
  ["C415V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_negotiated_trade_message.dissect,
  ["C416V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_negotiated_trade_message.dissect,
  ["C417V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_negotiated_trade_message.dissect,
  ["C418V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_negotiated_trade_message.dissect,
  ["A701S"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.dissect,
  ["A702S"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.dissect,
  ["A703S"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.dissect,
  ["A704S"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.dissect,
  ["A705S"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.dissect,
  ["A701Q"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.dissect,
  ["A701X"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.dissect,
  ["A701B"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.dissect,
  ["A701M"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.dissect,
  ["A701K"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.dissect,
  ["A701R"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.dissect,
  ["A701V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.dissect,
  ["A702V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.dissect,
  ["A703V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.dissect,
  ["A704V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.dissect,
  ["A705V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.dissect,
  ["A706V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.dissect,
  ["A707V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.dissect,
  ["A708V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.dissect,
  ["A709V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.dissect,
  ["A710V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.dissect,
  ["A711V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.dissect,
  ["A712V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.dissect,
  ["A713V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.dissect,
  ["A715V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.dissect,
  ["A716V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.dissect,
  ["A717V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.dissect,
  ["A718V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.dissect,
  ["A701G"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.dissect,
  ["A701E"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_ts_message.dissect,
  ["A601V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_issue_closing_message.dissect,
  ["A602V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_issue_closing_message.dissect,
  ["A603V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_issue_closing_message.dissect,
  ["A604V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_issue_closing_message.dissect,
  ["A605V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_issue_closing_message.dissect,
  ["A606V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_issue_closing_message.dissect,
  ["A607V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_issue_closing_message.dissect,
  ["A608V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_issue_closing_message.dissect,
  ["A609V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_issue_closing_message.dissect,
  ["A610V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_issue_closing_message.dissect,
  ["A611V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_issue_closing_message.dissect,
  ["A612V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_issue_closing_message.dissect,
  ["A613V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_issue_closing_message.dissect,
  ["A615V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_issue_closing_message.dissect,
  ["A616V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_issue_closing_message.dissect,
  ["A617V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_issue_closing_message.dissect,
  ["A618V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_issue_closing_message.dissect,
  ["M401S"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.dissect,
  ["M402S"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.dissect,
  ["M403S"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.dissect,
  ["M404S"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.dissect,
  ["M405S"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.dissect,
  ["M401Q"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.dissect,
  ["M401X"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.dissect,
  ["M401B"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.dissect,
  ["M401M"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.dissect,
  ["M401K"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.dissect,
  ["M401R"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.dissect,
  ["M401V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.dissect,
  ["M402V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.dissect,
  ["M403V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.dissect,
  ["M404V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.dissect,
  ["M405V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.dissect,
  ["M406V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.dissect,
  ["M407V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.dissect,
  ["M408V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.dissect,
  ["M409V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.dissect,
  ["M410V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.dissect,
  ["M411V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.dissect,
  ["M412V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.dissect,
  ["M413V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.dissect,
  ["M415V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.dissect,
  ["M416V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.dissect,
  ["M417V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.dissect,
  ["M418V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.dissect,
  ["M401G"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.dissect,
  ["M401E"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_market_operation_schedule_message.dissect,
  ["Q201V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_dynamic_upper_lower_limit_message.dissect,
  ["Q202V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_dynamic_upper_lower_limit_message.dissect,
  ["Q203V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_dynamic_upper_lower_limit_message.dissect,
  ["Q204V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_dynamic_upper_lower_limit_message.dissect,
  ["Q206V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_dynamic_upper_lower_limit_message.dissect,
  ["Q208V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_dynamic_upper_lower_limit_message.dissect,
  ["Q209V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_dynamic_upper_lower_limit_message.dissect,
  ["Q210V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_dynamic_upper_lower_limit_message.dissect,
  ["Q211V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_dynamic_upper_lower_limit_message.dissect,
  ["Q212V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_dynamic_upper_lower_limit_message.dissect,
  ["Q216V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_dynamic_upper_lower_limit_message.dissect,
  ["Q217V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_dynamic_upper_lower_limit_message.dissect,
  ["V101V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_price_limit_range_increase_message.dissect,
  ["V102V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_price_limit_range_increase_message.dissect,
  ["V103V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_price_limit_range_increase_message.dissect,
  ["V104V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_price_limit_range_increase_message.dissect,
  ["V105V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_price_limit_range_increase_message.dissect,
  ["V108V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_price_limit_range_increase_message.dissect,
  ["V109V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_price_limit_range_increase_message.dissect,
  ["V111V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_price_limit_range_increase_message.dissect,
  ["V112V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_price_limit_range_increase_message.dissect,
  ["V113V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_price_limit_range_increase_message.dissect,
  ["V115V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_price_limit_range_increase_message.dissect,
  ["V116V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_price_limit_range_increase_message.dissect,
  ["V117V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_price_limit_range_increase_message.dissect,
  ["V118V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_price_limit_range_increase_message.dissect,
  ["O601S"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quantity_allocation_message.dissect,
  ["O603S"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quantity_allocation_message.dissect,
  ["O604S"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quantity_allocation_message.dissect,
  ["O605S"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quantity_allocation_message.dissect,
  ["O601Q"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quantity_allocation_message.dissect,
  ["O601X"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quantity_allocation_message.dissect,
  ["O601V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quantity_allocation_message.dissect,
  ["O602V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quantity_allocation_message.dissect,
  ["O603V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quantity_allocation_message.dissect,
  ["O604V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quantity_allocation_message.dissect,
  ["O605V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quantity_allocation_message.dissect,
  ["O606V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quantity_allocation_message.dissect,
  ["O607V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quantity_allocation_message.dissect,
  ["O608V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quantity_allocation_message.dissect,
  ["O609V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quantity_allocation_message.dissect,
  ["O610V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quantity_allocation_message.dissect,
  ["O611V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quantity_allocation_message.dissect,
  ["O612V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quantity_allocation_message.dissect,
  ["O613V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quantity_allocation_message.dissect,
  ["O615V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quantity_allocation_message.dissect,
  ["O616V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quantity_allocation_message.dissect,
  ["O617V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quantity_allocation_message.dissect,
  ["O618V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_quantity_allocation_message.dissect,
  ["IF01S"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_group_order_acceptance_halt_message.dissect,
  ["IF02S"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_group_order_acceptance_halt_message.dissect,
  ["IF03S"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_group_order_acceptance_halt_message.dissect,
  ["IF04S"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_group_order_acceptance_halt_message.dissect,
  ["IF05S"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_group_order_acceptance_halt_message.dissect,
  ["IF01Q"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_group_order_acceptance_halt_message.dissect,
  ["IF01V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_group_order_acceptance_halt_message.dissect,
  ["IF02V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_group_order_acceptance_halt_message.dissect,
  ["IF03V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_group_order_acceptance_halt_message.dissect,
  ["IF04V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_group_order_acceptance_halt_message.dissect,
  ["IF05V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_group_order_acceptance_halt_message.dissect,
  ["IF06V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_group_order_acceptance_halt_message.dissect,
  ["IF07V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_group_order_acceptance_halt_message.dissect,
  ["IF08V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_group_order_acceptance_halt_message.dissect,
  ["IF09V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_group_order_acceptance_halt_message.dissect,
  ["IF10V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_group_order_acceptance_halt_message.dissect,
  ["IF11V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_group_order_acceptance_halt_message.dissect,
  ["IF12V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_group_order_acceptance_halt_message.dissect,
  ["IF13V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_group_order_acceptance_halt_message.dissect,
  ["IF15V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_group_order_acceptance_halt_message.dissect,
  ["IF16V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_group_order_acceptance_halt_message.dissect,
  ["IF17V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_group_order_acceptance_halt_message.dissect,
  ["IF18V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_group_order_acceptance_halt_message.dissect,
  ["A001V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_batch_data_message.dissect,
  ["A002V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_batch_data_message.dissect,
  ["A003V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_batch_data_message.dissect,
  ["A004V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_batch_data_message.dissect,
  ["A005V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_batch_data_message.dissect,
  ["A006V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_batch_data_message.dissect,
  ["A007V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_batch_data_message.dissect,
  ["A008V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_batch_data_message.dissect,
  ["A009V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_batch_data_message.dissect,
  ["A010V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_batch_data_message.dissect,
  ["A011V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_batch_data_message.dissect,
  ["A012V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_batch_data_message.dissect,
  ["A013V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_batch_data_message.dissect,
  ["A015V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_batch_data_message.dissect,
  ["A016V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_batch_data_message.dissect,
  ["A017V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_batch_data_message.dissect,
  ["A018V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_batch_data_message.dissect,
  ["H404V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.equity_derivatives_adjustment_details_message.dissect,
  ["H405V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.equity_derivatives_adjustment_details_message.dissect,
  ["H418V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.equity_derivatives_adjustment_details_message.dissect,
  ["H606V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.commodity_futures_settlement_reference_ktb_message.dissect,
  ["H101V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_investor_activities_message.dissect,
  ["H102V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_investor_activities_message.dissect,
  ["H103V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_investor_activities_message.dissect,
  ["H104V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_investor_activities_message.dissect,
  ["H105V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_investor_activities_message.dissect,
  ["H106V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_investor_activities_message.dissect,
  ["H107V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_investor_activities_message.dissect,
  ["H108V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_investor_activities_message.dissect,
  ["H109V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_investor_activities_message.dissect,
  ["H110V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_investor_activities_message.dissect,
  ["H111V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_investor_activities_message.dissect,
  ["H112V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_investor_activities_message.dissect,
  ["H113V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_investor_activities_message.dissect,
  ["H115V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_investor_activities_message.dissect,
  ["H116V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_investor_activities_message.dissect,
  ["H117V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_investor_activities_message.dissect,
  ["H118V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_investor_activities_message.dissect,
  ["H201V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_open_interest_message.dissect,
  ["H202V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_open_interest_message.dissect,
  ["H203V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_open_interest_message.dissect,
  ["H204V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_open_interest_message.dissect,
  ["H205V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_open_interest_message.dissect,
  ["H206V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_open_interest_message.dissect,
  ["H207V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_open_interest_message.dissect,
  ["H208V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_open_interest_message.dissect,
  ["H209V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_open_interest_message.dissect,
  ["H210V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_open_interest_message.dissect,
  ["H211V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_open_interest_message.dissect,
  ["H212V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_open_interest_message.dissect,
  ["H213V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_open_interest_message.dissect,
  ["H215V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_open_interest_message.dissect,
  ["H216V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_open_interest_message.dissect,
  ["H217V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_open_interest_message.dissect,
  ["H218V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.derivatives_open_interest_message.dissect,
  ["H301V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_settled_price_message.dissect,
  ["H302V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_settled_price_message.dissect,
  ["H304V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_settled_price_message.dissect,
  ["H306V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_settled_price_message.dissect,
  ["H308V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_settled_price_message.dissect,
  ["H309V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_settled_price_message.dissect,
  ["H310V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_settled_price_message.dissect,
  ["H311V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_settled_price_message.dissect,
  ["H313V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.futures_settled_price_message.dissect,
  ["ID03V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_base_price_of_clearing_margins_message.dissect,
  ["ID05V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_base_price_of_clearing_margins_message.dissect,
  ["ID07V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_base_price_of_clearing_margins_message.dissect,
  ["ID12V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_base_price_of_clearing_margins_message.dissect,
  ["ID15V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_base_price_of_clearing_margins_message.dissect,
  ["ID16V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_base_price_of_clearing_margins_message.dissect,
  ["ID17V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_base_price_of_clearing_margins_message.dissect,
  ["ID18V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_base_price_of_clearing_margins_message.dissect,
  ["P103V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_implied_volatility_message.dissect,
  ["P112V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_implied_volatility_message.dissect,
  ["P115V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_implied_volatility_message.dissect,
  ["P116V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_implied_volatility_message.dissect,
  ["P117V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_implied_volatility_message.dissect,
  ["N703V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_sensitivity_message.dissect,
  ["N705V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_sensitivity_message.dissect,
  ["N707V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_sensitivity_message.dissect,
  ["N712V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_sensitivity_message.dissect,
  ["N715V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_sensitivity_message.dissect,
  ["N716V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_sensitivity_message.dissect,
  ["N717V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_sensitivity_message.dissect,
  ["N718V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.options_sensitivity_message.dissect,
  ["H506V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.commodity_futures_spot_settlement_reference_message.dissect,
  ["H599V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.commodity_futures_spot_settlement_reference_message.dissect,
  ["HA06V"] = koscom_mdcsrealtime_nightderivatives_exture_v2_020.daily_disclosed_rfr_message.dissect,
}

koscom_mdcsrealtime_nightderivatives_exture_v2_020.payload.dissect = function(buffer, offset, packet, parent, tr_code)
  local dissect = koscom_mdcsrealtime_nightderivatives_exture_v2_020.payload.dispatch[tr_code]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Packet
koscom_mdcsrealtime_nightderivatives_exture_v2_020.packet = {}

-- Verify required size of Udp packet
koscom_mdcsrealtime_nightderivatives_exture_v2_020.packet.requiredsize = function(buffer)
  return buffer:len() >= koscom_mdcsrealtime_nightderivatives_exture_v2_020.tr_code.size
end

-- Dissect Packet
koscom_mdcsrealtime_nightderivatives_exture_v2_020.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Tr Code: String
    index, tr_code = koscom_mdcsrealtime_nightderivatives_exture_v2_020.tr_code.dissect(buffer, index, packet, parent)

    -- Payload: Runtime Type with 29 branches
    index = koscom_mdcsrealtime_nightderivatives_exture_v2_020.payload.dissect(buffer, index, packet, parent, tr_code)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.init()
end

-- Dissector for Koscom MdcsRealtime NightDerivatives Exture 2.020
function omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.name

  -- Dissect protocol
  local protocol = parent:add(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020, buffer(), omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.description, "("..buffer:len().." Bytes)")
  return koscom_mdcsrealtime_nightderivatives_exture_v2_020.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Koscom MdcsRealtime NightDerivatives Exture 2.020 (Udp)
local function omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not koscom_mdcsrealtime_nightderivatives_exture_v2_020.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020
  omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Koscom MdcsRealtime NightDerivatives Exture 2.020
omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020:register_heuristic("udp", omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020_udp_heuristic)

-- Register Koscom MdcsRealtime NightDerivatives Exture 2.020 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_koscom_mdcsrealtime_nightderivatives_exture_v2_020)

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
