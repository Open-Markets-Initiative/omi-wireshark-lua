-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nextrade Nextrade EtpCommon NxtAscii 2.12 Protocol
local omi_nextrade_nextrade_etpcommon_nxtascii_v2_12 = Proto("Omi.Nextrade.Nextrade.EtpCommon.NxtAscii.v2.12", "Nextrade Nextrade EtpCommon NxtAscii 2.12")

-- Protocol table
local nextrade_nextrade_etpcommon_nxtascii_v2_12 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nextrade Nextrade EtpCommon NxtAscii 2.12 Fields
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.a_base_price_to_trigger_dynamic_vi = ProtoField.new("A Base Price To Trigger Dynamic Vi", "nextrade.nextrade.etpcommon.nxtascii.v2.12.abasepricetotriggerdynamicvi", ftypes.UINT64, nil, nil, nil, "A Base Price to trigger dynamic VI.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.a_base_price_to_trigger_static_vi = ProtoField.new("A Base Price To Trigger Static Vi", "nextrade.nextrade.etpcommon.nxtascii.v2.12.abasepricetotriggerstaticvi", ftypes.UINT64, nil, nil, nil, "A Base Price to trigger Static VI - if there is no previous single-price (call auction) execution price, base price is set.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.a_designated_number_for_an_issue_from_krx = ProtoField.new("A Designated Number For An Issue From Krx", "nextrade.nextrade.etpcommon.nxtascii.v2.12.adesignatednumberforanissuefromkrx", ftypes.UINT24, nil, nil, nil, "A designated number for each issue on a daily basis from KRX.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.a_price_change_against_the_previous_day = ProtoField.new("A Price Change Against The Previous Day", "nextrade.nextrade.etpcommon.nxtascii.v2.12.apricechangeagainstthepreviousday", ftypes.UINT64, nil, nil, nil, "A Price change against the previous day.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.abbreviated_issue_code = ProtoField.new("Abbreviated Issue Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.abbreviatedissuecode", ftypes.STRING, nil, nil, nil, "Abbreviated Issue Code.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.abbreviated_issue_name = ProtoField.new("Abbreviated Issue Name", "nextrade.nextrade.etpcommon.nxtascii.v2.12.abbreviatedissuename", ftypes.STRING, nil, nil, nil, "Abbreviated issue Name.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.abbreviated_issue_name_in_en = ProtoField.new("Abbreviated Issue Name In En", "nextrade.nextrade.etpcommon.nxtascii.v2.12.abbreviatedissuenameinen", ftypes.STRING, nil, nil, nil, "Abbreviated issue Name in EN.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.abnormal_rise = ProtoField.new("Abnormal Rise", "nextrade.nextrade.etpcommon.nxtascii.v2.12.abnormalrise", ftypes.STRING, nil, nil, nil, "Abnormal Rise.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.accumulated_ask_trading_value = ProtoField.new("Accumulated Ask Trading Value", "nextrade.nextrade.etpcommon.nxtascii.v2.12.accumulatedasktradingvalue", ftypes.DOUBLE, nil, nil, nil, "Accumulated Ask Trading Value.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.accumulated_ask_trading_volume = ProtoField.new("Accumulated Ask Trading Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.accumulatedasktradingvolume", ftypes.UINT64, nil, nil, nil, "Accumulated Ask Trading Volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.accumulated_bid_trading_value = ProtoField.new("Accumulated Bid Trading Value", "nextrade.nextrade.etpcommon.nxtascii.v2.12.accumulatedbidtradingvalue", ftypes.DOUBLE, nil, nil, nil, "Accumulated Bid Trading Value.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.accumulated_bid_trading_volume = ProtoField.new("Accumulated Bid Trading Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.accumulatedbidtradingvolume", ftypes.UINT64, nil, nil, nil, "Accumulated Bid Trading Volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.accumulated_trading_value = ProtoField.new("Accumulated Trading Value", "nextrade.nextrade.etpcommon.nxtascii.v2.12.accumulatedtradingvalue", ftypes.DOUBLE, nil, nil, nil, "Accumulated trading value Trading value=trading amount*trading price.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.accumulated_trading_volume = ProtoField.new("Accumulated Trading Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.accumulatedtradingvolume", ftypes.UINT64, nil, nil, nil, "Accumulated Trading Volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.after_market_accumulated_trading_value = ProtoField.new("After Market Accumulated Trading Value", "nextrade.nextrade.etpcommon.nxtascii.v2.12.aftermarketaccumulatedtradingvalue", ftypes.DOUBLE, nil, nil, nil, "After-market accumulated trading value in the Regular market.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.after_market_accumulated_trading_volume = ProtoField.new("After Market Accumulated Trading Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.aftermarketaccumulatedtradingvolume", ftypes.UINT64, nil, nil, nil, "After-market accumulated trading volume in the Regular market.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.after_market_possibility = ProtoField.new("After Market Possibility", "nextrade.nextrade.etpcommon.nxtascii.v2.12.aftermarketpossibility", ftypes.STRING, nil, nil, nil, "Y/N to after-market possibility.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.an_abbreviated_name_of_a_market_participant_in_kr = ProtoField.new("An Abbreviated Name Of A Market Participant In Kr", "nextrade.nextrade.etpcommon.nxtascii.v2.12.anabbreviatednameofamarketparticipantinkr", ftypes.STRING, nil, nil, nil, "An Abbreviated Name of a Market Participant in KR.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.an_issue_of_which_base_price_is_settled_with_a_todays_single_price = ProtoField.new("An Issue Of Which Base Price Is Settled With A Todays Single Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.anissueofwhichbasepriceissettledwithatodayssingleprice", ftypes.STRING, nil, nil, nil, "Y/N to an Issue of which base price is settled with a today's single price.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.an_obligatory_time_interval_to_place_an_order = ProtoField.new("An Obligatory Time Interval To Place An Order", "nextrade.nextrade.etpcommon.nxtascii.v2.12.anobligatorytimeintervaltoplaceanorder", ftypes.UINT24, nil, nil, nil, "A time interval that a market maker should obey between placing an bid/ask order. Unit: Sec.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.announcement_of_estimated_trading_price = ProtoField.new("Announcement Of Estimated Trading Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.announcementofestimatedtradingprice", ftypes.STRING, nil, nil, nil, "Announcement of Estimated Trading Price.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.appraisal_ratio_of_substitute_price = ProtoField.new("Appraisal Ratio Of Substitute Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.appraisalratioofsubstituteprice", ftypes.DOUBLE, nil, nil, nil, "Appraisal ratio of substitute price.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.appraised_price = ProtoField.new("Appraised Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.appraisedprice", ftypes.UINT64, nil, nil, nil, "An appraised price is a base price of an Issue of which base price is settled with today's single price, and it determines an upper/lower limit price for its opening price.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.approval_on_competitive_trading = ProtoField.new("Approval On Competitive Trading", "nextrade.nextrade.etpcommon.nxtascii.v2.12.approvaloncompetitivetrading", ftypes.STRING, nil, nil, nil, "Final approval for trading on the competitive trading board.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.approval_on_negotiation_trading = ProtoField.new("Approval On Negotiation Trading", "nextrade.nextrade.etpcommon.nxtascii.v2.12.approvalonnegotiationtrading", ftypes.STRING, nil, nil, nil, "Final approval for trading on the negotiation trading board.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_1_price = ProtoField.new("Ask Level 1 Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.asklevel1price", ftypes.UINT64, nil, nil, nil, "The best ask.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_1_volume = ProtoField.new("Ask Level 1 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.asklevel1volume", ftypes.UINT64, nil, nil, nil, "The best ask volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_10_price = ProtoField.new("Ask Level 10 Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.asklevel10price", ftypes.UINT64, nil, nil, nil, "The tenth highest ask price.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_10_volume = ProtoField.new("Ask Level 10 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.asklevel10volume", ftypes.UINT64, nil, nil, nil, "The tenth highest ask volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_2_price = ProtoField.new("Ask Level 2 Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.asklevel2price", ftypes.UINT64, nil, nil, nil, "The second highest ask price.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_2_volume = ProtoField.new("Ask Level 2 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.asklevel2volume", ftypes.UINT64, nil, nil, nil, "The second highest ask volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_3_price = ProtoField.new("Ask Level 3 Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.asklevel3price", ftypes.UINT64, nil, nil, nil, "The third highest ask price.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_3_volume = ProtoField.new("Ask Level 3 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.asklevel3volume", ftypes.UINT64, nil, nil, nil, "The third highest ask volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_4_price = ProtoField.new("Ask Level 4 Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.asklevel4price", ftypes.UINT64, nil, nil, nil, "The fourth highest ask price.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_4_volume = ProtoField.new("Ask Level 4 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.asklevel4volume", ftypes.UINT64, nil, nil, nil, "The fourth highest ask volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_5_price = ProtoField.new("Ask Level 5 Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.asklevel5price", ftypes.UINT64, nil, nil, nil, "The fifth highest ask price.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_5_volume = ProtoField.new("Ask Level 5 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.asklevel5volume", ftypes.UINT64, nil, nil, nil, "The fifth highest ask volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_6_price = ProtoField.new("Ask Level 6 Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.asklevel6price", ftypes.UINT64, nil, nil, nil, "The sixth highest ask price.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_6_volume = ProtoField.new("Ask Level 6 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.asklevel6volume", ftypes.UINT64, nil, nil, nil, "The sixth highest ask volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_7_price = ProtoField.new("Ask Level 7 Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.asklevel7price", ftypes.UINT64, nil, nil, nil, "The seventh highest ask price.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_7_volume = ProtoField.new("Ask Level 7 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.asklevel7volume", ftypes.UINT64, nil, nil, nil, "The seventh highest ask volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_8_price = ProtoField.new("Ask Level 8 Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.asklevel8price", ftypes.UINT64, nil, nil, nil, "The eighth highest ask price.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_8_volume = ProtoField.new("Ask Level 8 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.asklevel8volume", ftypes.UINT64, nil, nil, nil, "The eighth highest ask volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_9_price = ProtoField.new("Ask Level 9 Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.asklevel9price", ftypes.UINT64, nil, nil, nil, "The ninth highest ask price.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_9_volume = ProtoField.new("Ask Level 9 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.asklevel9volume", ftypes.UINT64, nil, nil, nil, "The ninth highest ask volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_trading_value_1 = ProtoField.new("Ask Trading Value 1", "nextrade.nextrade.etpcommon.nxtascii.v2.12.asktradingvalue1", ftypes.DOUBLE, nil, nil, nil, "Trading Value from Member Number 1 among Top Five Members for Ask.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_trading_value_2 = ProtoField.new("Ask Trading Value 2", "nextrade.nextrade.etpcommon.nxtascii.v2.12.asktradingvalue2", ftypes.DOUBLE, nil, nil, nil, "Trading Value from Member Number 2 among Top Five Members for Ask.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_trading_value_3 = ProtoField.new("Ask Trading Value 3", "nextrade.nextrade.etpcommon.nxtascii.v2.12.asktradingvalue3", ftypes.DOUBLE, nil, nil, nil, "Trading Value from Member Number 3 among Top Five Members for Ask.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_trading_value_4 = ProtoField.new("Ask Trading Value 4", "nextrade.nextrade.etpcommon.nxtascii.v2.12.asktradingvalue4", ftypes.DOUBLE, nil, nil, nil, "Trading Value from Member Number 4 among Top Five Members for Ask.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_trading_value_5 = ProtoField.new("Ask Trading Value 5", "nextrade.nextrade.etpcommon.nxtascii.v2.12.asktradingvalue5", ftypes.DOUBLE, nil, nil, nil, "Trading Value from Member Number 5 among Top Five Members for Ask.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_trading_volume_1 = ProtoField.new("Ask Trading Volume 1", "nextrade.nextrade.etpcommon.nxtascii.v2.12.asktradingvolume1", ftypes.UINT64, nil, nil, nil, "Trading Volume from Member Number 1 among Top Five Members for Ask.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_trading_volume_2 = ProtoField.new("Ask Trading Volume 2", "nextrade.nextrade.etpcommon.nxtascii.v2.12.asktradingvolume2", ftypes.UINT64, nil, nil, nil, "Trading Volume from Member Number 2 among Top Five Members for Ask.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_trading_volume_3 = ProtoField.new("Ask Trading Volume 3", "nextrade.nextrade.etpcommon.nxtascii.v2.12.asktradingvolume3", ftypes.UINT64, nil, nil, nil, "Trading Volume from Member Number 3 among Top Five Members for Ask.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_trading_volume_4 = ProtoField.new("Ask Trading Volume 4", "nextrade.nextrade.etpcommon.nxtascii.v2.12.asktradingvolume4", ftypes.UINT64, nil, nil, nil, "Trading Volume from Member Number 4 among Top Five Members for Ask.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_trading_volume_5 = ProtoField.new("Ask Trading Volume 5", "nextrade.nextrade.etpcommon.nxtascii.v2.12.asktradingvolume5", ftypes.UINT64, nil, nil, nil, "Trading Volume from Member Number 5 among Top Five Members for Ask.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.back_door_listing = ProtoField.new("Back Door Listing", "nextrade.nextrade.etpcommon.nxtascii.v2.12.backdoorlisting", ftypes.STRING, nil, nil, nil, "Y/N to Back-door Listing.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.base_price = ProtoField.new("Base Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.baseprice", ftypes.UINT64, nil, nil, nil, "A base price of a day. A base price to calculate a upper/lower price.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.base_price_change = ProtoField.new("Base Price Change", "nextrade.nextrade.etpcommon.nxtascii.v2.12.basepricechange", ftypes.STRING, nil, nil, nil, "Y/N to change of base price due to par-value change or increase of capital.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.basket_trading_in_the_pre_opening_market = ProtoField.new("Basket Trading In The Pre Opening Market", "nextrade.nextrade.etpcommon.nxtascii.v2.12.baskettradinginthepreopeningmarket", ftypes.STRING, nil, nil, nil, "Basket Trading in the Pre-opening Market.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.best_favorable_order_permission_type_code = ProtoField.new("Best Favorable Order Permission Type Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.bestfavorableorderpermissiontypecode", ftypes.UINT24, nil, nil, nil, "Bitwise opration 1: FAS (Fill And Stay) 2: FOK (Fill Or Kill) 4: FAK (Fill And Kill).")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_ask_spread_unit_code = ProtoField.new("Bid Ask Spread Unit Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.bidaskspreadunitcode", ftypes.STRING, nil, nil, nil, "R: Price Ratio Y: Yield Ratio T: Tick.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_1_price = ProtoField.new("Bid Level 1 Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.bidlevel1price", ftypes.UINT64, nil, nil, nil, "The best bid.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_1_volume = ProtoField.new("Bid Level 1 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.bidlevel1volume", ftypes.UINT64, nil, nil, nil, "The best bid volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_10_price = ProtoField.new("Bid Level 10 Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.bidlevel10price", ftypes.UINT64, nil, nil, nil, "The tenth lowest bid price.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_10_volume = ProtoField.new("Bid Level 10 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.bidlevel10volume", ftypes.UINT64, nil, nil, nil, "The tenth lowest bid volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_2_price = ProtoField.new("Bid Level 2 Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.bidlevel2price", ftypes.UINT64, nil, nil, nil, "The second lowest bid price.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_2_volume = ProtoField.new("Bid Level 2 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.bidlevel2volume", ftypes.UINT64, nil, nil, nil, "The second lowest bid volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_3_price = ProtoField.new("Bid Level 3 Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.bidlevel3price", ftypes.UINT64, nil, nil, nil, "The third lowest bid price.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_3_volume = ProtoField.new("Bid Level 3 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.bidlevel3volume", ftypes.UINT64, nil, nil, nil, "The third lowest bid volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_4_price = ProtoField.new("Bid Level 4 Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.bidlevel4price", ftypes.UINT64, nil, nil, nil, "The fourth lowest bid price.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_4_volume = ProtoField.new("Bid Level 4 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.bidlevel4volume", ftypes.UINT64, nil, nil, nil, "The fourth lowest bid volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_5_price = ProtoField.new("Bid Level 5 Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.bidlevel5price", ftypes.UINT64, nil, nil, nil, "The fifth lowest bid price.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_5_volume = ProtoField.new("Bid Level 5 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.bidlevel5volume", ftypes.UINT64, nil, nil, nil, "The fifth lowest bid volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_6_price = ProtoField.new("Bid Level 6 Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.bidlevel6price", ftypes.UINT64, nil, nil, nil, "The sixth lowest bid price.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_6_volume = ProtoField.new("Bid Level 6 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.bidlevel6volume", ftypes.UINT64, nil, nil, nil, "The sixth lowest bid volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_7_price = ProtoField.new("Bid Level 7 Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.bidlevel7price", ftypes.UINT64, nil, nil, nil, "The seventh lowest bid price.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_7_volume = ProtoField.new("Bid Level 7 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.bidlevel7volume", ftypes.UINT64, nil, nil, nil, "The seventh lowest bid volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_8_price = ProtoField.new("Bid Level 8 Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.bidlevel8price", ftypes.UINT64, nil, nil, nil, "The eighth lowest bid price.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_8_volume = ProtoField.new("Bid Level 8 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.bidlevel8volume", ftypes.UINT64, nil, nil, nil, "The eighth lowest bid volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_9_price = ProtoField.new("Bid Level 9 Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.bidlevel9price", ftypes.UINT64, nil, nil, nil, "The ninth lowest bid price.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_9_volume = ProtoField.new("Bid Level 9 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.bidlevel9volume", ftypes.UINT64, nil, nil, nil, "The ninth lowest bid volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_trading_value_1 = ProtoField.new("Bid Trading Value 1", "nextrade.nextrade.etpcommon.nxtascii.v2.12.bidtradingvalue1", ftypes.DOUBLE, nil, nil, nil, "Trading Value from Member Number 1 among Top Five Members for Bid.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_trading_value_2 = ProtoField.new("Bid Trading Value 2", "nextrade.nextrade.etpcommon.nxtascii.v2.12.bidtradingvalue2", ftypes.DOUBLE, nil, nil, nil, "Trading Value from Member Number 2 among Top Five Members for Bid.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_trading_value_3 = ProtoField.new("Bid Trading Value 3", "nextrade.nextrade.etpcommon.nxtascii.v2.12.bidtradingvalue3", ftypes.DOUBLE, nil, nil, nil, "Trading Value from Member Number 3 among Top Five Members for Bid.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_trading_value_4 = ProtoField.new("Bid Trading Value 4", "nextrade.nextrade.etpcommon.nxtascii.v2.12.bidtradingvalue4", ftypes.DOUBLE, nil, nil, nil, "Trading Value from Member Number 4 among Top Five Members for Bid.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_trading_value_5 = ProtoField.new("Bid Trading Value 5", "nextrade.nextrade.etpcommon.nxtascii.v2.12.bidtradingvalue5", ftypes.DOUBLE, nil, nil, nil, "Trading Value from Member Number 5 among Top Five Members for Bid.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_trading_volume_1 = ProtoField.new("Bid Trading Volume 1", "nextrade.nextrade.etpcommon.nxtascii.v2.12.bidtradingvolume1", ftypes.UINT64, nil, nil, nil, "Trading Volume from Member Number 1 among Top Five Members for Bid.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_trading_volume_2 = ProtoField.new("Bid Trading Volume 2", "nextrade.nextrade.etpcommon.nxtascii.v2.12.bidtradingvolume2", ftypes.UINT64, nil, nil, nil, "Trading Volume from Member Number 2 among Top Five Members for Bid.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_trading_volume_3 = ProtoField.new("Bid Trading Volume 3", "nextrade.nextrade.etpcommon.nxtascii.v2.12.bidtradingvolume3", ftypes.UINT64, nil, nil, nil, "Trading Volume from Member Number 3 among Top Five Members for Bid.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_trading_volume_4 = ProtoField.new("Bid Trading Volume 4", "nextrade.nextrade.etpcommon.nxtascii.v2.12.bidtradingvolume4", ftypes.UINT64, nil, nil, nil, "Trading Volume from Member Number 4 among Top Five Members for Bid.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_trading_volume_5 = ProtoField.new("Bid Trading Volume 5", "nextrade.nextrade.etpcommon.nxtascii.v2.12.bidtradingvolume5", ftypes.UINT64, nil, nil, nil, "Trading Volume from Member Number 5 among Top Five Members for Bid.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.block_trading_in_the_pre_opening_market = ProtoField.new("Block Trading In The Pre Opening Market", "nextrade.nextrade.etpcommon.nxtascii.v2.12.blocktradinginthepreopeningmarket", ftypes.STRING, nil, nil, nil, "Block Trading in the Pre-opening Market.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.board_event_group_code = ProtoField.new("Board Event Group Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.boardeventgroupcode", ftypes.UINT24, nil, nil, nil, "Board Event Group Code (Bitwise operation) ▦▦ Code ▦▦ 1: A regular Issue (not an issue on the last trading day) 2: An issue on the Last trading day 4: A regular issue (not a unit trading issue) 8: Uni.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.board_event_id = ProtoField.new("Board Event Id", "nextrade.nextrade.etpcommon.nxtascii.v2.12.boardeventid", ftypes.STRING, nil, nil, nil, "An ID indicates an event that occurs on a Board in a designated time.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.board_id = ProtoField.new("Board Id", "nextrade.nextrade.etpcommon.nxtascii.v2.12.boardid", ftypes.STRING, nil, nil, nil, "The Board ID refers to each Board in which an issue is traded under different trading schedules and rules. Individual issue can be traded on more than two Boards under each Board's schedule and with d.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.business_date = ProtoField.new("Business Date", "nextrade.nextrade.etpcommon.nxtascii.v2.12.businessdate", ftypes.STRING, nil, nil, nil, "Business Date.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.calculation_of_redemption_price_end_date = ProtoField.new("Calculation Of Redemption Price End Date", "nextrade.nextrade.etpcommon.nxtascii.v2.12.calculationofredemptionpriceenddate", ftypes.STRING, nil, nil, nil, "Calculation of Redemption Price_End Date.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.calculation_of_redemption_price_start_date = ProtoField.new("Calculation Of Redemption Price Start Date", "nextrade.nextrade.etpcommon.nxtascii.v2.12.calculationofredemptionpricestartdate", ftypes.STRING, nil, nil, nil, "Calculation of Redemption Price_Start Date.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.calculation_time = ProtoField.new("Calculation Time", "nextrade.nextrade.etpcommon.nxtascii.v2.12.calculationtime", ftypes.STRING, nil, nil, nil, "Calculation Time (HHMMSS).")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.capital = ProtoField.new("Capital", "nextrade.nextrade.etpcommon.nxtascii.v2.12.capital", ftypes.DOUBLE, nil, nil, nil, "Capital.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.capital_increase_type_code = ProtoField.new("Capital Increase Type Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.capitalincreasetypecode", ftypes.STRING, nil, nil, nil, "00:N/A 01: Paid In Capital Increase 02: Free Capital Increase 03: Paid In Capital & Free Capital Increase 99: Others.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.choice_on_competitive_trading = ProtoField.new("Choice On Competitive Trading", "nextrade.nextrade.etpcommon.nxtascii.v2.12.choiceoncompetitivetrading", ftypes.STRING, nil, nil, nil, "Information whether it is selected issue for trading on competitive trading.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.closing_price = ProtoField.new("Closing Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.closingprice", ftypes.UINT64, nil, nil, nil, "Closing price on the day's regular session. However, for G3 board, the closing price of KRX is set.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.closing_price_base_price_of_buy_in = ProtoField.new("Closing Price Base Price Of Buy In", "nextrade.nextrade.etpcommon.nxtascii.v2.12.closingpricebasepriceofbuyin", ftypes.UINT64, nil, nil, nil, "Closing Price_Base Price of Buy-In.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.closing_price_lower_limit_of_buy_in = ProtoField.new("Closing Price Lower Limit Of Buy In", "nextrade.nextrade.etpcommon.nxtascii.v2.12.closingpricelowerlimitofbuyin", ftypes.UINT64, nil, nil, nil, "Closing Price_Lower Limit of Buy-In.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.closing_price_trading_in_the_pre_opening_market = ProtoField.new("Closing Price Trading In The Pre Opening Market", "nextrade.nextrade.etpcommon.nxtascii.v2.12.closingpricetradinginthepreopeningmarket", ftypes.STRING, nil, nil, nil, "Y/N to a Closing Price Trading in the Pre-opening Market.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.closing_price_trading_possibility_in_the_after_hours = ProtoField.new("Closing Price Trading Possibility In The After Hours", "nextrade.nextrade.etpcommon.nxtascii.v2.12.closingpricetradingpossibilityintheafterhours", ftypes.STRING, nil, nil, nil, "Closing Price Trading Possibility in the After Hours.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.closing_price_type_code = ProtoField.new("Closing Price Type Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.closingpricetypecode", ftypes.STRING, nil, nil, nil, "1: Closing price 3: No Trades.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.closing_price_upper_limit_of_buy_in = ProtoField.new("Closing Price Upper Limit Of Buy In", "nextrade.nextrade.etpcommon.nxtascii.v2.12.closingpriceupperlimitofbuyin", ftypes.UINT64, nil, nil, nil, "Closing Price_Upper Limit of Buy-In.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.closing_price_weighted_stock_price_average = ProtoField.new("Closing Price Weighted Stock Price Average", "nextrade.nextrade.etpcommon.nxtascii.v2.12.closingpriceweightedstockpriceaverage", ftypes.UINT64, nil, nil, nil, "Weighted Average is calculated by adding up an issue's aggregated market value, which is part of a certain index or markets, and dividing it with the total shares listed. - Weighted Stock Price Averag.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.competition_board_trade_permission_code = ProtoField.new("Competition Board Trade Permission Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.competitionboardtradepermissioncode", ftypes.UINT24, nil, nil, nil, "Definition of tradable sessions on the competitive trading boards.(Bitwise operation) 1: Pre Market 2: Main Market 4: After Market 8: Closing Price Board.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.conditioned_order_permission_type_code = ProtoField.new("Conditioned Order Permission Type Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.conditionedorderpermissiontypecode", ftypes.UINT24, nil, nil, nil, "Bitwise opration 1: FAS (Fill And Stay) 2: FOK (Fill Or Kill) 4: FAK (Fill And Kill).")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.country_code = ProtoField.new("Country Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.countrycode", ftypes.STRING, nil, nil, nil, "Country Code.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.covered_short_selling_trading_value = ProtoField.new("Covered Short Selling Trading Value", "nextrade.nextrade.etpcommon.nxtascii.v2.12.coveredshortsellingtradingvalue", ftypes.DOUBLE, nil, nil, nil, "Covered Short Selling_Trading Value.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.covered_short_selling_trading_volume = ProtoField.new("Covered Short Selling Trading Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.coveredshortsellingtradingvolume", ftypes.UINT64, nil, nil, nil, "Covered Short Selling_Trading Volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.credit_order_possibility = ProtoField.new("Credit Order Possibility", "nextrade.nextrade.etpcommon.nxtascii.v2.12.creditorderpossibility", ftypes.STRING, nil, nil, nil, "Y/N to Credit Order Possibility.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.currency_iso_code = ProtoField.new("Currency Iso Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.currencyisocode", ftypes.STRING, nil, nil, nil, "Currency Codes (ISO 4217) AUD: Austrailian Dollar EUR: Euro GBP: Pound Sterling HKD: Hong Kong Dollar JPY: Japanese Yen KRW: Korean Won SGD: Singapore Dollar USD: US Dollar CHF: Swiss Franc CAD: Canad.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.current_price = ProtoField.new("Current Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.currentprice", ftypes.UINT64, nil, nil, nil, "The last traded price at the current page.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.current_time_1_minute_interval = ProtoField.new("Current Time 1 Minute Interval", "nextrade.nextrade.etpcommon.nxtascii.v2.12.currenttime1minuteinterval", ftypes.STRING, nil, nil, nil, "Current Time (1-minute interval).")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.delisting_date = ProtoField.new("Delisting Date", "nextrade.nextrade.etpcommon.nxtascii.v2.12.delistingdate", ftypes.STRING, nil, nil, nil, "Delisting date for Issues (Spot: the next of a last trading date, Derv: the last payment date).")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.disclosing_data_type_code = ProtoField.new("Disclosing Data Type Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.disclosingdatatypecode", ftypes.STRING, nil, nil, nil, "A data type code indicating a Batch data change and imposing/lifting sanctions to/from member firm.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.disclosure_time = ProtoField.new("Disclosure Time", "nextrade.nextrade.etpcommon.nxtascii.v2.12.disclosuretime", ftypes.STRING, nil, nil, nil, "The time to disclose market operation information and market measures for trade such as corrections for the previous day's notice, and today's notice.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.disparate_ratio_to_trigger_dynamic_vi = ProtoField.new("Disparate Ratio To Trigger Dynamic Vi", "nextrade.nextrade.etpcommon.nxtascii.v2.12.disparateratiototriggerdynamicvi", ftypes.DOUBLE, nil, nil, nil, "A disparate ratio of a previously traded price to an expected price to trigger dynamic VI.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.disparate_ratio_to_trigger_static_vi = ProtoField.new("Disparate Ratio To Trigger Static Vi", "nextrade.nextrade.etpcommon.nxtascii.v2.12.disparateratiototriggerstaticvi", ftypes.DOUBLE, nil, nil, nil, "A disparate ratio of a base price to an expected price to trigger static VI.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.distribution_type_code = ProtoField.new("Distribution Type Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.distributiontypecode", ftypes.STRING, nil, nil, nil, "Distribution Type Code 01: Unpaid 02: Paid(indicative value is applied) 03: Paid(indicative value is not applied) 04: Paid(reinvestment) 05: Paid(others).")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.end_keyword = ProtoField.new("End Keyword", "nextrade.nextrade.etpcommon.nxtascii.v2.12.endkeyword", ftypes.STRING, nil, nil, nil, "A keyword indicating the end of a message. (%HFF) * Data type is Int for Binary.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.estimated_trading_price = ProtoField.new("Estimated Trading Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.estimatedtradingprice", ftypes.UINT64, nil, nil, nil, "An estimated trading price before the single price trade session.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.estimated_trading_volume = ProtoField.new("Estimated Trading Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.estimatedtradingvolume", ftypes.UINT64, nil, nil, nil, "An estimated trading volume before the single price trade session.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.etf_replication_methods_type_code = ProtoField.new("Etf Replication Methods Type Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.etfreplicationmethodstypecode", ftypes.STRING, nil, nil, nil, "ETF's underlying assets replication methods type code P:Physical Replication S:Synthetic Replication A:Active.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.etf_tracking_difference = ProtoField.new("Etf Tracking Difference", "nextrade.nextrade.etpcommon.nxtascii.v2.12.etftrackingdifference", ftypes.DOUBLE, nil, nil, nil, "ETF Tracking Difference.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.etp_product_type_code = ProtoField.new("Etp Product Type Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.etpproducttypecode", ftypes.STRING, nil, nil, nil, "ETP Product Type Code 1. ETF(Investment Company type) 2. ETF(Beneficiary Fund type) 3. ETN 4. Stop-Loss ETN.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.event_end_date = ProtoField.new("Event End Date", "nextrade.nextrade.etpcommon.nxtascii.v2.12.eventenddate", ftypes.STRING, nil, nil, nil, "Event End Date.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.event_reason_code = ProtoField.new("Event Reason Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.eventreasoncode", ftypes.STRING, nil, nil, nil, "Event Reason Code.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.event_start_date = ProtoField.new("Event Start Date", "nextrade.nextrade.etpcommon.nxtascii.v2.12.eventstartdate", ftypes.STRING, nil, nil, nil, "Event Start Date.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.event_type_code = ProtoField.new("Event Type Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.eventtypecode", ftypes.STRING, nil, nil, nil, "Event Type Code 01: Trading Halt 02: Oversight Issues 03: Unfaithful Disclosure 04: Liquidation Trade 05: Backdoor Listing 06: Abeyance of Collateralized Security 07: Superior Corporate Governance 08:.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.exercise_price_of_elw_or_bw = ProtoField.new("Exercise Price Of Elw Or Bw", "nextrade.nextrade.etpcommon.nxtascii.v2.12.exercisepriceofelworbw", ftypes.DOUBLE, nil, nil, nil, "Exercise Price of ELW or BW.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.exercising_period = ProtoField.new("Exercising Period", "nextrade.nextrade.etpcommon.nxtascii.v2.12.exercisingperiod", ftypes.STRING, nil, nil, nil, "Exercising Period.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.expected_time_of_expanding_price_limit_range = ProtoField.new("Expected Time Of Expanding Price Limit Range", "nextrade.nextrade.etpcommon.nxtascii.v2.12.expectedtimeofexpandingpricelimitrange", ftypes.STRING, nil, nil, nil, "Expected Time of Expanding Price Limit Range.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.expiration_date = ProtoField.new("Expiration Date", "nextrade.nextrade.etpcommon.nxtascii.v2.12.expirationdate", ftypes.STRING, nil, nil, nil, "Expiration Date.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.expiration_date_for_right = ProtoField.new("Expiration Date For Right", "nextrade.nextrade.etpcommon.nxtascii.v2.12.expirationdateforright", ftypes.STRING, nil, nil, nil, "Expiration Date for Right.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.extended_market_bid_ask_spread_value = ProtoField.new("Extended Market Bid Ask Spread Value", "nextrade.nextrade.etpcommon.nxtascii.v2.12.extendedmarketbidaskspreadvalue", ftypes.DOUBLE, nil, nil, nil, "The bid-ask spread interval or ratio at which LP/MM quoting obligations apply in extended markets (Pre-Market/After-Market).")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.filler_4 = ProtoField.new("Filler 4", "nextrade.nextrade.etpcommon.nxtascii.v2.12.filler4", ftypes.STRING, nil, nil, nil, "Filler.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.final_ask_bid_type_code = ProtoField.new("Final Ask Bid Type Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.finalaskbidtypecode", ftypes.STRING, nil, nil, nil, "Ask/Bid Type Code space: order filled with single price. 0: N/A 1: ASK 2: BID.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.first_best_order_permission_type = ProtoField.new("First Best Order Permission Type", "nextrade.nextrade.etpcommon.nxtascii.v2.12.firstbestorderpermissiontype", ftypes.UINT24, nil, nil, nil, "Bitwise opration 1: FAS (Fill And Stay) 2: FOK (Fill Or Kill) 4: FAK (Fill And Kill).")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.group_number = ProtoField.new("Group Number", "nextrade.nextrade.etpcommon.nxtascii.v2.12.groupnumber", ftypes.STRING, nil, nil, nil, "Group Number.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.highest_order_price = ProtoField.new("Highest Order Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.highestorderprice", ftypes.UINT64, nil, nil, nil, "An upper limit price of an issue of which base price is settled with today's single price.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.index_asset_classification_id_1 = ProtoField.new("Index Asset Classification Id 1", "nextrade.nextrade.etpcommon.nxtascii.v2.12.indexassetclassificationid1", ftypes.STRING, nil, nil, nil, "*Level 1_classification(2 digits) + Level 2_classification(2 digits) + Level 3 classification(2 digits). - '00' is marked in case the value(s) of each classification is(are) omitted. However, the valu.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.index_asset_classification_id_2 = ProtoField.new("Index Asset Classification Id 2", "nextrade.nextrade.etpcommon.nxtascii.v2.12.indexassetclassificationid2", ftypes.STRING, nil, nil, nil, "*Level 1_classification(2 digits) + Level 2_classification(2 digits) + Level 3 classification(2 digits). - '00' is marked in case the value(s) of each classification is(are) omitted. However, the valu.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.index_calculation_institution_type_code = ProtoField.new("Index Calculation Institution Type Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.indexcalculationinstitutiontypecode", ftypes.STRING, nil, nil, nil, "Index Calculation Institution_Type Code 01: KRX 02: FnGuide 03: SP 04: KIS Pricing 05: MSCI 06: CSI 07: Korean Asset Pricing(KAP) 08: WiseFn 09: HangSeng 10: TSE(Tokyo Stock Exchange) 11: Markit 12: S.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.index_id = ProtoField.new("Index Id", "nextrade.nextrade.etpcommon.nxtascii.v2.12.indexid", ftypes.STRING, nil, nil, nil, "Index ID comprising of 6 digits.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.index_leverage_inverse_type_code = ProtoField.new("Index Leverage Inverse Type Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.indexleverageinversetypecode", ftypes.STRING, nil, nil, nil, "Index Leverage/Inverse_Type Code.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.index_market_classification_id = ProtoField.new("Index Market Classification Id", "nextrade.nextrade.etpcommon.nxtascii.v2.12.indexmarketclassificationid", ftypes.STRING, nil, nil, nil, "*Level 1_classification(2 digits) + Level 2_classification(2 digits) + Level 3 classification(2 digits). - '00' is marked in case the value(s) of each classification is(are) omitted. However, the valu.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.index_name = ProtoField.new("Index Name", "nextrade.nextrade.etpcommon.nxtascii.v2.12.indexname", ftypes.STRING, nil, nil, nil, "Index Name.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.index_name_in_en = ProtoField.new("Index Name In En", "nextrade.nextrade.etpcommon.nxtascii.v2.12.indexnameinen", ftypes.STRING, nil, nil, nil, "Index Name in EN.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.index_sequence_number = ProtoField.new("Index Sequence Number", "nextrade.nextrade.etpcommon.nxtascii.v2.12.indexsequencenumber", ftypes.STRING, nil, nil, nil, "Index Sequence Number.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.industry_id = ProtoField.new("Industry Id", "nextrade.nextrade.etpcommon.nxtascii.v2.12.industryid", ftypes.STRING, nil, nil, nil, "Industry ID.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.investment_caution_issue = ProtoField.new("Investment Caution Issue", "nextrade.nextrade.etpcommon.nxtascii.v2.12.investmentcautionissue", ftypes.STRING, nil, nil, nil, "Y/N to whether an issue to be an administrative issue or delisted (only for KOSDAQ).")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.investment_institution_type_code = ProtoField.new("Investment Institution Type Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.investmentinstitutiontypecode", ftypes.STRING, nil, nil, nil, "\"0\":N/A, \"1\": stock overhead investment org. \"2\": derivative overhead investment org. \"3\": real-estate overhead investment org. \"4\": spot goods overhead investment org. \"5\": short-term financial overh.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.investment_precaution_issue = ProtoField.new("Investment Precaution Issue", "nextrade.nextrade.etpcommon.nxtascii.v2.12.investmentprecautionissue", ftypes.STRING, nil, nil, nil, "Investment Precaution Issue.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.investor_code = ProtoField.new("Investor Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.investorcode", ftypes.STRING, nil, nil, nil, "Investor code 1000: Financial Investment 2000: Insurance 3000: Investment Trust 3100: Private Placement 4000: Bank 5000: Other Finance 6000: Pension Fund 7000: Unclassified 7100: Other Corporation 800.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ipo_underwriter_member_number = ProtoField.new("Ipo Underwriter Member Number", "nextrade.nextrade.etpcommon.nxtascii.v2.12.ipounderwritermembernumber", ftypes.STRING, nil, nil, nil, "IPO Underwriter_Member Number.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.isin_code = ProtoField.new("Isin Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.isincode", ftypes.STRING, nil, nil, nil, "ISIN Code.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.isin_code_of_a_common_stock = ProtoField.new("Isin Code Of A Common Stock", "nextrade.nextrade.etpcommon.nxtascii.v2.12.isincodeofacommonstock", ftypes.STRING, nil, nil, nil, "ISIN code of a Common Stock.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.issue_for_administration = ProtoField.new("Issue For Administration", "nextrade.nextrade.etpcommon.nxtascii.v2.12.issueforadministration", ftypes.STRING, nil, nil, nil, "Issue for Administration.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.issuing_price = ProtoField.new("Issuing Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.issuingprice", ftypes.UINT64, nil, nil, nil, "Issuing price.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.knock_out_elw_triggering_time = ProtoField.new("Knock Out Elw Triggering Time", "nextrade.nextrade.etpcommon.nxtascii.v2.12.knockoutelwtriggeringtime", ftypes.STRING, nil, nil, nil, "The time when Knock-out ELW reaches to the designated price HH(0-23) MM(0-59) SS(0-59).")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.knock_out_elw_type_code = ProtoField.new("Knock Out Elw Type Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.knockoutelwtypecode", ftypes.STRING, nil, nil, nil, "The status of warrants \"Y\": Knock-out.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.korea_corporate_governance_stock_price_index_kogi = ProtoField.new("Korea Corporate Governance Stock Price Index Kogi", "nextrade.nextrade.etpcommon.nxtascii.v2.12.koreacorporategovernancestockpriceindexkogi", ftypes.STRING, nil, nil, nil, "Y/N to whether an issuer has a good governance (only for KOSDAQ).")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.limit_on_competitive_trading_volume = ProtoField.new("Limit On Competitive Trading Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.limitoncompetitivetradingvolume", ftypes.STRING, nil, nil, nil, "Information whether the trading limit for the issue on competitive trading has been reached, resulting in trading restriction.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.limit_order_permission_type_code = ProtoField.new("Limit Order Permission Type Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.limitorderpermissiontypecode", ftypes.UINT24, nil, nil, nil, "Bitwise opration 1: FAS (Fill And Stay) 2: FOK (Fill Or Kill) 4: FAK (Fill And Kill).")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.liquidation_trade = ProtoField.new("Liquidation Trade", "nextrade.nextrade.etpcommon.nxtascii.v2.12.liquidationtrade", ftypes.STRING, nil, nil, nil, "Liquidation Trade.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.listing_date = ProtoField.new("Listing Date", "nextrade.nextrade.etpcommon.nxtascii.v2.12.listingdate", ftypes.STRING, nil, nil, nil, "Listing Date of derivatives(CLASS) or issues.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lot_size_after_hours_trading = ProtoField.new("Lot Size After Hours Trading", "nextrade.nextrade.etpcommon.nxtascii.v2.12.lotsizeafterhourstrading", ftypes.UINT64, nil, nil, nil, "Lot Size(After-hours Trading).")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.low_liquidity = ProtoField.new("Low Liquidity", "nextrade.nextrade.etpcommon.nxtascii.v2.12.lowliquidity", ftypes.STRING, nil, nil, nil, "Low Liquidity.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lower_limit_price = ProtoField.new("Lower Limit Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.lowerlimitprice", ftypes.UINT64, nil, nil, nil, "A price subtracting the price limit from the base price.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lower_limit_price_on_the_single_price_trade_in_the_off_hours_session = ProtoField.new("Lower Limit Price On The Single Price Trade In The Off Hours Session", "nextrade.nextrade.etpcommon.nxtascii.v2.12.lowerlimitpriceonthesinglepricetradeintheoffhourssession", ftypes.UINT64, nil, nil, nil, "Lower Limit Price on the Single Price in the Off-Hours Session.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lowest_order_price = ProtoField.new("Lowest Order Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.lowestorderprice", ftypes.UINT64, nil, nil, nil, "An lower limit price of an issue of which base price is settled with today's single price.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_ask_level_1_volume = ProtoField.new("Lp Ask Level 1 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.lpasklevel1volume", ftypes.UINT64, nil, nil, nil, "LP_The best ask volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_ask_level_10_volume = ProtoField.new("Lp Ask Level 10 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.lpasklevel10volume", ftypes.UINT64, nil, nil, nil, "LP_The tenth highest ask volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_ask_level_2_volume = ProtoField.new("Lp Ask Level 2 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.lpasklevel2volume", ftypes.UINT64, nil, nil, nil, "LP_The second highest ask volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_ask_level_3_volume = ProtoField.new("Lp Ask Level 3 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.lpasklevel3volume", ftypes.UINT64, nil, nil, nil, "LP_The third highest ask volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_ask_level_4_volume = ProtoField.new("Lp Ask Level 4 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.lpasklevel4volume", ftypes.UINT64, nil, nil, nil, "LP_The fourth highest ask volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_ask_level_5_volume = ProtoField.new("Lp Ask Level 5 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.lpasklevel5volume", ftypes.UINT64, nil, nil, nil, "LP_The fifth highest ask volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_ask_level_6_volume = ProtoField.new("Lp Ask Level 6 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.lpasklevel6volume", ftypes.UINT64, nil, nil, nil, "LP_The sixth highest ask volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_ask_level_7_volume = ProtoField.new("Lp Ask Level 7 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.lpasklevel7volume", ftypes.UINT64, nil, nil, nil, "LP_The seventh highest ask volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_ask_level_8_volume = ProtoField.new("Lp Ask Level 8 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.lpasklevel8volume", ftypes.UINT64, nil, nil, nil, "LP_The eighth highest ask volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_ask_level_9_volume = ProtoField.new("Lp Ask Level 9 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.lpasklevel9volume", ftypes.UINT64, nil, nil, nil, "LP_The ninth highest ask volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_bid_level_1_volume = ProtoField.new("Lp Bid Level 1 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.lpbidlevel1volume", ftypes.UINT64, nil, nil, nil, "LP_The best bid volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_bid_level_10_volume = ProtoField.new("Lp Bid Level 10 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.lpbidlevel10volume", ftypes.UINT64, nil, nil, nil, "LP_The tenth lowest bid volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_bid_level_2_volume = ProtoField.new("Lp Bid Level 2 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.lpbidlevel2volume", ftypes.UINT64, nil, nil, nil, "LP_The second lowest bid volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_bid_level_3_volume = ProtoField.new("Lp Bid Level 3 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.lpbidlevel3volume", ftypes.UINT64, nil, nil, nil, "LP_The third lowest bid volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_bid_level_4_volume = ProtoField.new("Lp Bid Level 4 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.lpbidlevel4volume", ftypes.UINT64, nil, nil, nil, "LP_The fourth lowest bid volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_bid_level_5_volume = ProtoField.new("Lp Bid Level 5 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.lpbidlevel5volume", ftypes.UINT64, nil, nil, nil, "LP_The fifth lowest bid volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_bid_level_6_volume = ProtoField.new("Lp Bid Level 6 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.lpbidlevel6volume", ftypes.UINT64, nil, nil, nil, "LP_The sixth lowest bid volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_bid_level_7_volume = ProtoField.new("Lp Bid Level 7 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.lpbidlevel7volume", ftypes.UINT64, nil, nil, nil, "LP_The seventh lowest bid volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_bid_level_8_volume = ProtoField.new("Lp Bid Level 8 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.lpbidlevel8volume", ftypes.UINT64, nil, nil, nil, "LP_The eighth lowest bid volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_bid_level_9_volume = ProtoField.new("Lp Bid Level 9 Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.lpbidlevel9volume", ftypes.UINT64, nil, nil, nil, "LP_The ninth lowest bid volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_end_date = ProtoField.new("Lp End Date", "nextrade.nextrade.etpcommon.nxtascii.v2.12.lpenddate", ftypes.STRING, nil, nil, nil, "End date of Liquidity Provide.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_holding_quantity = ProtoField.new("Lp Holding Quantity", "nextrade.nextrade.etpcommon.nxtascii.v2.12.lpholdingquantity", ftypes.UINT64, nil, nil, nil, "LP holding quantity per each account.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_order = ProtoField.new("Lp Order", "nextrade.nextrade.etpcommon.nxtascii.v2.12.lporder", ftypes.STRING, nil, nil, nil, "LP Order.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_start_date = ProtoField.new("Lp Start Date", "nextrade.nextrade.etpcommon.nxtascii.v2.12.lpstartdate", ftypes.STRING, nil, nil, nil, "Start date of Liquidity Provide.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.main_market_accumulated_trading_value = ProtoField.new("Main Market Accumulated Trading Value", "nextrade.nextrade.etpcommon.nxtascii.v2.12.mainmarketaccumulatedtradingvalue", ftypes.DOUBLE, nil, nil, nil, "Main-market accumulated trading value in the Regular market.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.main_market_accumulated_trading_volume = ProtoField.new("Main Market Accumulated Trading Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.mainmarketaccumulatedtradingvolume", ftypes.UINT64, nil, nil, nil, "Main-market accumulated trading volume in the Regular market.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.main_market_bid_ask_spread_value = ProtoField.new("Main Market Bid Ask Spread Value", "nextrade.nextrade.etpcommon.nxtascii.v2.12.mainmarketbidaskspreadvalue", ftypes.DOUBLE, nil, nil, nil, "The bid-ask spread interval or ratio at which MM/LP quoting obligations apply in the main market.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.market_alert = ProtoField.new("Market Alert", "nextrade.nextrade.etpcommon.nxtascii.v2.12.marketalert", ftypes.STRING, nil, nil, nil, "Market Alert.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.market_alert_type_code = ProtoField.new("Market Alert Type Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.marketalerttypecode", ftypes.STRING, nil, nil, nil, "Market Alert_Type Code 00: N/A (None of items chosen for those may notified market warning) 01: Investment Warning 02: Investment Alert 03: Investment Danger.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.market_making_lp_type_code = ProtoField.new("Market Making Lp Type Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.marketmakinglptypecode", ftypes.STRING, nil, nil, nil, "M: Market making L: Liquidity provider.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.market_making_possibility = ProtoField.new("Market Making Possibility", "nextrade.nextrade.etpcommon.nxtascii.v2.12.marketmakingpossibility", ftypes.STRING, nil, nil, nil, "Market Making Possibility.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.market_operation_product_id = ProtoField.new("Market Operation Product Id", "nextrade.nextrade.etpcommon.nxtascii.v2.12.marketoperationproductid", ftypes.STRING, nil, nil, nil, "The ID refers to a group of products that are traded with the same trading schedule control.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.market_participant_number = ProtoField.new("Market Participant Number", "nextrade.nextrade.etpcommon.nxtascii.v2.12.marketparticipantnumber", ftypes.STRING, nil, nil, nil, "Market Participant Number.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.market_price_order_permission_type_code = ProtoField.new("Market Price Order Permission Type Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.marketpriceorderpermissiontypecode", ftypes.UINT24, nil, nil, nil, "Bitwise opration 1: FAS (Fill And Stay) 2: FOK (Fill Or Kill) 4: FAK (Fill And Kill).")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.maturity_date = ProtoField.new("Maturity Date", "nextrade.nextrade.etpcommon.nxtascii.v2.12.maturitydate", ftypes.STRING, nil, nil, nil, "Maturity date of Mutual Fund, REITs, Shipbuilding Company.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.maximum_bid_price = ProtoField.new("Maximum Bid Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.maximumbidprice", ftypes.DOUBLE, nil, nil, nil, "LP_Maximum bid price.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.maximum_order_price = ProtoField.new("Maximum Order Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.maximumorderprice", ftypes.DOUBLE, nil, nil, nil, "Maximum Order Price.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.maximum_volume_of_multiple_order = ProtoField.new("Maximum Volume Of Multiple Order", "nextrade.nextrade.etpcommon.nxtascii.v2.12.maximumvolumeofmultipleorder", ftypes.UINT64, nil, nil, nil, "Maximum number of trading unit for LP/MM placing an order.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.member_firm_trust_principal_type_code = ProtoField.new("Member Firm Trust Principal Type Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.memberfirmtrustprincipaltypecode", ftypes.UINT24, nil, nil, nil, "Allowance or sanctions for member's trading. Bitwise operation. 1: Ask Trust 2: Ask Principal 4: Bid Trust 8: Bid Principal.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.member_number = ProtoField.new("Member Number", "nextrade.nextrade.etpcommon.nxtascii.v2.12.membernumber", ftypes.STRING, nil, nil, nil, "A designated number for each member firm.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.member_number_1_for_ask = ProtoField.new("Member Number 1 For Ask", "nextrade.nextrade.etpcommon.nxtascii.v2.12.membernumber1forask", ftypes.STRING, nil, nil, nil, "Member Number 1 among Top Five Members for Ask.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.member_number_1_for_bid = ProtoField.new("Member Number 1 For Bid", "nextrade.nextrade.etpcommon.nxtascii.v2.12.membernumber1forbid", ftypes.STRING, nil, nil, nil, "Member Number 1 among Top Five Members for Bid.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.member_number_2_for_ask = ProtoField.new("Member Number 2 For Ask", "nextrade.nextrade.etpcommon.nxtascii.v2.12.membernumber2forask", ftypes.STRING, nil, nil, nil, "Member Number 2 among Top Five Members for Ask.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.member_number_2_for_bid = ProtoField.new("Member Number 2 For Bid", "nextrade.nextrade.etpcommon.nxtascii.v2.12.membernumber2forbid", ftypes.STRING, nil, nil, nil, "Member Number 2 among Top Five Members for Bid.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.member_number_3_for_ask = ProtoField.new("Member Number 3 For Ask", "nextrade.nextrade.etpcommon.nxtascii.v2.12.membernumber3forask", ftypes.STRING, nil, nil, nil, "Member Number 3 among Top Five Members for Ask.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.member_number_3_for_bid = ProtoField.new("Member Number 3 For Bid", "nextrade.nextrade.etpcommon.nxtascii.v2.12.membernumber3forbid", ftypes.STRING, nil, nil, nil, "Member Number 3 among Top Five Members for Bid.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.member_number_4_for_ask = ProtoField.new("Member Number 4 For Ask", "nextrade.nextrade.etpcommon.nxtascii.v2.12.membernumber4forask", ftypes.STRING, nil, nil, nil, "Member Number 4 among Top Five Members for Ask.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.member_number_4_for_bid = ProtoField.new("Member Number 4 For Bid", "nextrade.nextrade.etpcommon.nxtascii.v2.12.membernumber4forbid", ftypes.STRING, nil, nil, nil, "Member Number 4 among Top Five Members for Bid.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.member_number_5_for_ask = ProtoField.new("Member Number 5 For Ask", "nextrade.nextrade.etpcommon.nxtascii.v2.12.membernumber5forask", ftypes.STRING, nil, nil, nil, "Member Number 5 among Top Five Members for Ask.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.member_number_5_for_bid = ProtoField.new("Member Number 5 For Bid", "nextrade.nextrade.etpcommon.nxtascii.v2.12.membernumber5forbid", ftypes.STRING, nil, nil, nil, "Member Number 5 among Top Five Members for Bid.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "nextrade.nextrade.etpcommon.nxtascii.v2.12.messagesequencenumber", ftypes.UINT32, nil, nil, nil, "A message sequence number given by Market data team - Market data: seq number is given by instruments and boards (※ only for high-bandwidth service) - Batch Data: seq number is given by Information Ca.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.mid_price = ProtoField.new("Mid Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.midprice", ftypes.UINT64, nil, nil, nil, "Average price of NXT BBO with midpoint quote effectiveness(truncation of decimal places).")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.mid_price_order_permission_type_code = ProtoField.new("Mid Price Order Permission Type Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.midpriceorderpermissiontypecode", ftypes.UINT24, nil, nil, nil, "Bitwise opration 1: FAS (Fill And Stay) 2: FOK (Fill Or Kill) 4: FAK (Fill And Kill) 8: GTS (Good for the Session) 16: GTC (Good Till Cancel) 32: GTD (Good Till Date).")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.minimum_ask_price = ProtoField.new("Minimum Ask Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.minimumaskprice", ftypes.DOUBLE, nil, nil, nil, "LP_Minimum ask price.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.minimum_order_price = ProtoField.new("Minimum Order Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.minimumorderprice", ftypes.DOUBLE, nil, nil, nil, "A minimum order price for Block/Basket Trading. (Block: 100 million KRW, Basket: more than 1 billion KRW).")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.minimum_order_volume = ProtoField.new("Minimum Order Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.minimumordervolume", ftypes.UINT64, nil, nil, nil, "Minimum number of trading unit for LP/MM placing an order Eg) If the value is 10 and trading_x000D_ unit is 10 shares, LP/MM Quote should be_x000D_ more than 100 shares (Contract).")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.name_of_a_market_participant_in_en = ProtoField.new("Name Of A Market Participant In En", "nextrade.nextrade.etpcommon.nxtascii.v2.12.nameofamarketparticipantinen", ftypes.STRING, nil, nil, nil, "Name of a Market Participant in EN.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.name_of_a_market_participant_in_kr = ProtoField.new("Name Of A Market Participant In Kr", "nextrade.nextrade.etpcommon.nxtascii.v2.12.nameofamarketparticipantinkr", ftypes.STRING, nil, nil, nil, "Name of a Market Participant in KR.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.national_stock = ProtoField.new("National Stock", "nextrade.nextrade.etpcommon.nxtascii.v2.12.nationalstock", ftypes.STRING, nil, nil, nil, "National Stock (only for KOSPI).")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.negotiation_possible_or_not_before_main_market = ProtoField.new("Negotiation Possible Or Not Before Main Market", "nextrade.nextrade.etpcommon.nxtascii.v2.12.negotiationpossibleornotbeforemainmarket", ftypes.STRING, nil, nil, nil, "Y/N on whether Negotiation Trading is allowed before the main-market opens.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.number_of_listed_shares = ProtoField.new("Number Of Listed Shares", "nextrade.nextrade.etpcommon.nxtascii.v2.12.numberoflistedshares", ftypes.UINT64, nil, nil, nil, "Number of listed shares.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.occurrence_of_reasons_prohibiting_competitive_trading = ProtoField.new("Occurrence Of Reasons Prohibiting Competitive Trading", "nextrade.nextrade.etpcommon.nxtascii.v2.12.occurrenceofreasonsprohibitingcompetitivetrading", ftypes.STRING, nil, nil, nil, "Information whether events prohibiting trading on the competitive trading board have occurred.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.opening_price = ProtoField.new("Opening Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.openingprice", ftypes.UINT64, nil, nil, nil, "The first price that a security traded upon the opening of the regular session.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.other_stock_type_code = ProtoField.new("Other Stock Type Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.otherstocktypecode", ftypes.STRING, nil, nil, nil, "0: N/A(Common Stock) 1: Old Preferred Stock 2: New Preferred Stock 9: Other types of Stocks.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.par_value = ProtoField.new("Par Value", "nextrade.nextrade.etpcommon.nxtascii.v2.12.parvalue", ftypes.DOUBLE, nil, nil, nil, "Par Value.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.par_value_type_code = ProtoField.new("Par Value Type Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.parvaluetypecode", ftypes.STRING, nil, nil, nil, "00: N/A 01: Split at par value 02: Consolidation at par value 03: Stock split 04: Reverse stock split 99: Others.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.pre_market_accumulated_trading_value = ProtoField.new("Pre Market Accumulated Trading Value", "nextrade.nextrade.etpcommon.nxtascii.v2.12.premarketaccumulatedtradingvalue", ftypes.DOUBLE, nil, nil, nil, "Pre-market accumulated trading value in the Regular market.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.pre_market_accumulated_trading_volume = ProtoField.new("Pre Market Accumulated Trading Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.premarketaccumulatedtradingvolume", ftypes.UINT64, nil, nil, nil, "Pre-market accumulated trading volume in the Regular market.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.preferred_stocks_with_lesser_shares = ProtoField.new("Preferred Stocks With Lesser Shares", "nextrade.nextrade.etpcommon.nxtascii.v2.12.preferredstockswithlessershares", ftypes.STRING, nil, nil, nil, "Preferred Stocks with lesser shares.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.price_change_against_previous_day = ProtoField.new("Price Change Against Previous Day", "nextrade.nextrade.etpcommon.nxtascii.v2.12.pricechangeagainstpreviousday", ftypes.STRING, nil, nil, nil, "0: Mark Impossible 1:high limit 2:ascended 3:unchanged 4:low limit 5:declined.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.price_limit_range_expansion_for_base_issue_type_code = ProtoField.new("Price Limit Range Expansion For Base Issue Type Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.pricelimitrangeexpansionforbaseissuetypecode", ftypes.STRING, nil, nil, nil, "A code to expand price limit range for Base Issue D: descending U: Up X: N/A.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.processing_time_of_trading_system = ProtoField.new("Processing Time Of Trading System", "nextrade.nextrade.etpcommon.nxtascii.v2.12.processingtimeoftradingsystem", ftypes.STRING, nil, nil, nil, "HHMMSSuuuuuu.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.product_id = ProtoField.new("Product Id", "nextrade.nextrade.etpcommon.nxtascii.v2.12.productid", ftypes.STRING, nil, nil, nil, "Product ID.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.random_end_trigger_code = ProtoField.new("Random End Trigger Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.randomendtriggercode", ftypes.STRING, nil, nil, nil, "In case of trigger and conditional trigger(2) of random end in single price session, random end will be triggered if price requirements defined in the random end rules are met. ##Code Values## 0: No t.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.reevaluation_reason_code = ProtoField.new("Reevaluation Reason Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.reevaluationreasoncode", ftypes.STRING, nil, nil, nil, "Re-evaluation Reason Code 00: N/A 01: Split-off 02: Reduction of capital 03: Long term-Business stop 04: Excessive dividends 05: Large-scale dividends 06: Split-merger 07: Consolidation or Split-up of.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.reference_index_leverage_inverse_type_code = ProtoField.new("Reference Index Leverage Inverse Type Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.referenceindexleverageinversetypecode", ftypes.STRING, nil, nil, nil, "## Code Value ## P1: General (1) P2: 2X Leverage (2) P3: 3X Leverage (3) PA: 0.5X Leverage (0.5) PB: 1.5X Leverage (1.5) PC: 2.5X Leverage (2.5) N1: 1X Inverse (-1) N2: 2X Inverse (-2) N3: 2X Inverse.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.regs = ProtoField.new("Regs", "nextrade.nextrade.etpcommon.nxtascii.v2.12.regs", ftypes.STRING, nil, nil, nil, "Y/N to REGS.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.rei_ts_type_code = ProtoField.new("Rei Ts Type Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.reitstypecode", ftypes.STRING, nil, nil, nil, "1: General REITs 2: CRV REITs.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.rights_type_code = ProtoField.new("Rights Type Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.rightstypecode", ftypes.STRING, nil, nil, nil, "Rights Type Code (spot) is the same as adjustment code (derivatives) 00: N/A 01: Ex-rights 02: Ex-dividends 03: Ex-distribution 04: Ex-rights and Ex-dividends 05: Interim(quarterly) ex-dividend 06: In.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.section_type_code = ProtoField.new("Section Type Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.sectiontypecode", ftypes.STRING, nil, nil, nil, "1: KOSDAQ Prime 2: KOSDAQ Venture 3: KOSDAQ Standard 4: KOSDAQ Growth A: Foreign Company(No Section Type) B: Investment Company(No Section Type) C: SPAC(No Section Type) D: ETF(No Section Type) E: Adm.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.security_group_id = ProtoField.new("Security Group Id", "nextrade.nextrade.etpcommon.nxtascii.v2.12.securitygroupid", ftypes.STRING, nil, nil, nil, "Security Group ID (Equities, Investment firms, ETF, ELW, Futures, Options etc.).")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.segment_type_code = ProtoField.new("Segment Type Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.segmenttypecode", ftypes.STRING, nil, nil, nil, "Segment type code.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.session_id = ProtoField.new("Session Id", "nextrade.nextrade.etpcommon.nxtascii.v2.12.sessionid", ftypes.STRING, nil, nil, nil, "A Session is a subordinate concept of a Board and each session follows different trading methods and rules.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.session_start_end_code = ProtoField.new("Session Start End Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.sessionstartendcode", ftypes.STRING, nil, nil, nil, "A code refers to the start/end of session. Board will end when the last session ends. BS: Board Start BE: Board End SS: Session Start SE: Session End SH: Session Halt SR: Session Resumption.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.short_selling = ProtoField.new("Short Selling", "nextrade.nextrade.etpcommon.nxtascii.v2.12.shortselling", ftypes.STRING, nil, nil, nil, "Y/N to Short Selling.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.short_term_overheat_issue_type_code = ProtoField.new("Short Term Overheat Issue Type Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.shorttermoverheatissuetypecode", ftypes.STRING, nil, nil, nil, "0: N/A 1: Designation Alert 2: Designation 3: Extension of Designation(Delay in lifting).")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.small_medium_sized_business = ProtoField.new("Small Medium Sized Business", "nextrade.nextrade.etpcommon.nxtascii.v2.12.smallmediumsizedbusiness", ftypes.STRING, nil, nil, nil, "Small & Medium Sized Business (only for KOSDAQ).")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.spac = ProtoField.new("Spac", "nextrade.nextrade.etpcommon.nxtascii.v2.12.spac", ftypes.STRING, nil, nil, nil, "Y/N to SPAC (Special Purpose Acquisition Company).")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.spac_merger = ProtoField.new("Spac Merger", "nextrade.nextrade.etpcommon.nxtascii.v2.12.spacmerger", ftypes.STRING, nil, nil, nil, "SPAC Merger.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.spread_multiple_for_market_holidays = ProtoField.new("Spread Multiple For Market Holidays", "nextrade.nextrade.etpcommon.nxtascii.v2.12.spreadmultipleformarketholidays", ftypes.UINT64, nil, nil, nil, "In case the underlying assets for Derivatives, ELW, ETF are indices or issues of foreign market, when the present value of tracking assets is unable to be judged because of the holiday, pre-hours sess.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.start_time_of_a_board_event = ProtoField.new("Start Time Of A Board Event", "nextrade.nextrade.etpcommon.nxtascii.v2.12.starttimeofaboardevent", ftypes.STRING, nil, nil, nil, "The time when a Board Event occurs.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.step_applied = ProtoField.new("Step Applied", "nextrade.nextrade.etpcommon.nxtascii.v2.12.stepapplied", ftypes.UINT8, nil, nil, nil, "Managing steps to be applied.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.stop_limit_price_order_permission_type_code = ProtoField.new("Stop Limit Price Order Permission Type Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.stoplimitpriceorderpermissiontypecode", ftypes.UINT24, nil, nil, nil, "Bitwise opration 1: FAS (Fill And Stay) 2: FOK (Fill Or Kill) 4: FAK (Fill And Kill) 8: GTS (Good for the Session) 16: GTC (Good Till Cancel) 32: GTD (Good Till Date).")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.substitute_price_of_securities = ProtoField.new("Substitute Price Of Securities", "nextrade.nextrade.etpcommon.nxtascii.v2.12.substitutepriceofsecurities", ftypes.UINT64, nil, nil, nil, "Substitute price of securities as a consignment gurantee money.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.target_stock_isin_code = ProtoField.new("Target Stock Isin Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.targetstockisincode", ftypes.STRING, nil, nil, nil, "Target Stock_ISIN Code.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.tax_type_code = ProtoField.new("Tax Type Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.taxtypecode", ftypes.STRING, nil, nil, nil, "0: N/A 1: Non-taxation changed 2: Dividend Income Tax(Holding Period Tax) 3: Securities transaction tax(Corporate Type ETF) 4: Dividend Income Tax(Foreign Stock Investment ETF) 5: Dividend Income Tax(.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.the_best_ask = ProtoField.new("The Best Ask", "nextrade.nextrade.etpcommon.nxtascii.v2.12.thebestask", ftypes.UINT64, nil, nil, nil, "The lowest price among the ask quotes.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.the_best_bid = ProtoField.new("The Best Bid", "nextrade.nextrade.etpcommon.nxtascii.v2.12.thebestbid", ftypes.UINT64, nil, nil, nil, "The highest price among the bid quotes.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.the_establishment_date = ProtoField.new("The Establishment Date", "nextrade.nextrade.etpcommon.nxtascii.v2.12.theestablishmentdate", ftypes.STRING, nil, nil, nil, "The establishment date of an investment company, REITs, the ship investment corporation.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.the_time_ending_vi = ProtoField.new("The Time Ending Vi", "nextrade.nextrade.etpcommon.nxtascii.v2.12.thetimeendingvi", ftypes.STRING, nil, nil, nil, "The time ending VI.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.todays_high = ProtoField.new("Todays High", "nextrade.nextrade.etpcommon.nxtascii.v2.12.todayshigh", ftypes.UINT64, nil, nil, nil, "The highest price during the course of a trading day.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.todays_low = ProtoField.new("Todays Low", "nextrade.nextrade.etpcommon.nxtascii.v2.12.todayslow", ftypes.UINT64, nil, nil, nil, "The highest price during the course of a trading day.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.total_ask_volume = ProtoField.new("Total Ask Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.totalaskvolume", ftypes.UINT64, nil, nil, nil, "Total ask volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.total_bid_volume = ProtoField.new("Total Bid Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.totalbidvolume", ftypes.UINT64, nil, nil, nil, "Total bid volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.total_mid_price_ask_volume_total_ask_volume_on_mid_price = ProtoField.new("Total Mid Price Ask Volume Total Ask Volume On Mid Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.totalmidpriceaskvolumetotalaskvolumeonmidprice", ftypes.UINT64, nil, nil, nil, "Total quantity of ask midpoint quotes.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.total_mid_price_bid_volume_total_bid_volume_on_mid_price = ProtoField.new("Total Mid Price Bid Volume Total Bid Volume On Mid Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.totalmidpricebidvolumetotalbidvolumeonmidprice", ftypes.UINT64, nil, nil, nil, "Total quantity of bid midpoint quotes.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.total_number_of_instruments_of_the_contract = ProtoField.new("Total Number Of Instruments Of The Contract", "nextrade.nextrade.etpcommon.nxtascii.v2.12.totalnumberofinstrumentsofthecontract", ftypes.UINT24, nil, nil, nil, "Total number of instruments per each Information Category.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.total_number_of_tradable_issues_on_competitive_trading = ProtoField.new("Total Number Of Tradable Issues On Competitive Trading", "nextrade.nextrade.etpcommon.nxtascii.v2.12.totalnumberoftradableissuesoncompetitivetrading", ftypes.UINT24, nil, nil, nil, "Total number of tradable issues on Competitive Trading.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.tr_code = ProtoField.new("TR Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.trcode", ftypes.STRING, nil, nil, nil, "Five-character Ascii TR-CODE identifying the disseminated market data record. Formed by concatenating a 2-character Data Category naming the message family (e.g. \"B6\" Quote, \"A3\" Order Filled, \"G7\" Order Filled plus Quote, \"A7\" Market Operation TS, \"A0\" Equities Batch) with a 3-character Information Category naming the market or product variant, typically a 2-digit information code plus a 1-character market code (e.g. \"51S\" = KOSPI stock, \"51Q\" = KOSDAQ stock, \"53S\" = exchange traded product).")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.tracking_index_leverage_inverse_type_code = ProtoField.new("Tracking Index Leverage Inverse Type Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.trackingindexleverageinversetypecode", ftypes.STRING, nil, nil, nil, "## Code Value ## P1: General (1) P2: 2X Leverage (2) P3: 3X Leverage (3) PA: 0.5X Leverage (0.5) PB: 1.5X Leverage (1.5) PC: 2.5X Leverage (2.5) N1: 1X Inverse (-1) N2: 2X Inverse (-2) N3: 2X Inverse.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.trading_halt = ProtoField.new("Trading Halt", "nextrade.nextrade.etpcommon.nxtascii.v2.12.tradinghalt", ftypes.STRING, nil, nil, nil, "Y/N to Trading Halt.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.trading_halt_reason_code = ProtoField.new("Trading Halt Reason Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.tradinghaltreasoncode", ftypes.STRING, nil, nil, nil, "Trading Halt Reason Code X01: Market Administrative from NXT X99: Request from KRX 1XX~301: KOSPI 6XX: KOSDAQ.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.trading_halt_type_code = ProtoField.new("Trading Halt Type Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.tradinghalttypecode", ftypes.STRING, nil, nil, nil, "1: Treasury Stock 2: Warrant 3: Right 4: Underlying Asset ELW 5: Issue ELW 6: Listed Company 7: Underlying Asset Applied Market 8: Index(not using) 9: Issue ETN.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.trading_price = ProtoField.new("Trading Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.tradingprice", ftypes.UINT64, nil, nil, nil, "The price at which a security is traded between ask and bid quotes.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.trading_volume = ProtoField.new("Trading Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.tradingvolume", ftypes.UINT64, nil, nil, nil, "Trading volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.unfaithful_disclosure = ProtoField.new("Unfaithful Disclosure", "nextrade.nextrade.etpcommon.nxtascii.v2.12.unfaithfuldisclosure", ftypes.STRING, nil, nil, nil, "Y/N to Unfaithful Disclosure.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.unit_of_volume_in_main_board = ProtoField.new("Unit Of Volume In Main Board", "nextrade.nextrade.etpcommon.nxtascii.v2.12.unitofvolumeinmainboard", ftypes.UINT64, nil, nil, nil, "Unit of Volume in Main Board.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.unit_trading = ProtoField.new("Unit Trading", "nextrade.nextrade.etpcommon.nxtascii.v2.12.unittrading", ftypes.STRING, nil, nil, nil, "Y/N to Unit Trading. (Possibility of Unit trading during the regular session in order).")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.upper_limit_price = ProtoField.new("Upper Limit Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.upperlimitprice", ftypes.UINT64, nil, nil, nil, "A price adding up the price limit to the base price.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.upper_limit_price_on_the_single_price_trade_in_the_off_hours_session = ProtoField.new("Upper Limit Price On The Single Price Trade In The Off Hours Session", "nextrade.nextrade.etpcommon.nxtascii.v2.12.upperlimitpriceonthesinglepricetradeintheoffhourssession", ftypes.UINT64, nil, nil, nil, "Upper Limit Price on the Single Price Trade in the Off-Hours Session.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.upper_limit_quantity = ProtoField.new("Upper Limit Quantity", "nextrade.nextrade.etpcommon.nxtascii.v2.12.upperlimitquantity", ftypes.DOUBLE, nil, nil, nil, "Upper Limit Quantity.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.uptick_rule_applied_covered_short_selling_trading_value = ProtoField.new("Uptick Rule Applied Covered Short Selling Trading Value", "nextrade.nextrade.etpcommon.nxtascii.v2.12.uptickruleappliedcoveredshortsellingtradingvalue", ftypes.DOUBLE, nil, nil, nil, "Uptick Rule Applied Covered Short Selling Trading Value.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.uptick_rule_applied_covered_short_selling_trading_volume = ProtoField.new("Uptick Rule Applied Covered Short Selling Trading Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.uptickruleappliedcoveredshortsellingtradingvolume", ftypes.UINT64, nil, nil, nil, "Uptick Rule Applied Covered Short Selling Trading Volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.uptick_rule_unapplied_covered_short_selling_trading_value = ProtoField.new("Uptick Rule Unapplied Covered Short Selling Trading Value", "nextrade.nextrade.etpcommon.nxtascii.v2.12.uptickruleunappliedcoveredshortsellingtradingvalue", ftypes.DOUBLE, nil, nil, nil, "Uptick Rule Unapplied Covered Short Selling Trading Value.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.uptick_rule_unapplied_covered_short_selling_trading_volume = ProtoField.new("Uptick Rule Unapplied Covered Short Selling Trading Volume", "nextrade.nextrade.etpcommon.nxtascii.v2.12.uptickruleunappliedcoveredshortsellingtradingvolume", ftypes.UINT64, nil, nil, nil, "Uptick Rule Unapplied Covered Short Selling Trading Volume.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.vi_status_code = ProtoField.new("Vi Status Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.vistatuscode", ftypes.STRING, nil, nil, nil, "A code to show triggering or removal of VI 1: VI triggered 2: VI removed.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.vi_triggering_price = ProtoField.new("Vi Triggering Price", "nextrade.nextrade.etpcommon.nxtascii.v2.12.vitriggeringprice", ftypes.UINT64, nil, nil, nil, "A price to trigger VI.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.vi_type_code = ProtoField.new("Vi Type Code", "nextrade.nextrade.etpcommon.nxtascii.v2.12.vitypecode", ftypes.STRING, nil, nil, nil, "A code to distinguish static VI or dynamic VI 1: Static VI 2: Dynamic VI 3: Static/Dynamic VI 4. Extended VI.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.yesterdays_accumulated_trading_amount = ProtoField.new("Yesterdays Accumulated Trading Amount", "nextrade.nextrade.etpcommon.nxtascii.v2.12.yesterdaysaccumulatedtradingamount", ftypes.UINT64, nil, nil, nil, "Yesterday's Accumulated Trading Amount.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.yesterdays_accumulated_trading_value = ProtoField.new("Yesterdays Accumulated Trading Value", "nextrade.nextrade.etpcommon.nxtascii.v2.12.yesterdaysaccumulatedtradingvalue", ftypes.DOUBLE, nil, nil, nil, "Yesterday's Accumulated Trading Value.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.yesterdays_closing_price_krx = ProtoField.new("Yesterdays Closing Price Krx", "nextrade.nextrade.etpcommon.nxtascii.v2.12.yesterdaysclosingpricekrx", ftypes.UINT64, nil, nil, nil, "Yesterday's Closing Price (KRX).")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.yesterdays_closing_price_nxt = ProtoField.new("Yesterdays Closing Price Nxt", "nextrade.nextrade.etpcommon.nxtascii.v2.12.yesterdaysclosingpricenxt", ftypes.UINT64, nil, nil, nil, "Yesterday's Closing Price (NXT).")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.yesterdays_closing_price_type_code_krx = ProtoField.new("Yesterdays Closing Price Type Code Krx", "nextrade.nextrade.etpcommon.nxtascii.v2.12.yesterdaysclosingpricetypecodekrx", ftypes.STRING, nil, nil, nil, "Yesterday's Closing Price_Type Code (KRX) 1: Regular closing price 2: Quotation 3: No Trades 4: Quotation of an Issue of which base price is settled with a today's single price.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.yesterdays_closing_price_type_code_nxt = ProtoField.new("Yesterdays Closing Price Type Code Nxt", "nextrade.nextrade.etpcommon.nxtascii.v2.12.yesterdaysclosingpricetypecodenxt", ftypes.STRING, nil, nil, nil, "Yesterday's Closing Price_Type Code (NXT) 1: Regular closing price 2: Quotation 3: No Trades 4: Quotation of an Issue of which base price is settled with a today's single price.")

-- Nextrade Nextrade EtpCommon NxtAscii 2.12 Framing
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.packet = ProtoField.new("Packet", "nextrade.nextrade.etpcommon.nxtascii.v2.12.packet", ftypes.STRING, nil, nil, nil, "Nextrade Market Data Udp Packet")

-- Nextrade Nextrade EtpCommon 2.12 Application Messages
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.block_basket_trade_data_message = ProtoField.new("Block Basket Trade Data Message", "nextrade.nextrade.etpcommon.nxtascii.v2.12.blockbaskettradedatamessage", ftypes.STRING, nil, nil, nil, "Block/Basket Trade Data in NXT.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.brokers_acitity_information_message = ProtoField.new("Brokers Acitity Information Message", "nextrade.nextrade.etpcommon.nxtascii.v2.12.brokersacitityinformationmessage", ftypes.STRING, nil, nil, nil, "Information on Brokers Activity in NXT market.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.closing_price_trading_quote_message = ProtoField.new("Closing Price Trading Quote Message", "nextrade.nextrade.etpcommon.nxtascii.v2.12.closingpricetradingquotemessage", ftypes.STRING, nil, nil, nil, "Total Ask/Bid volume per Issue on Closing Price Trade.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.equities_batch_data_message = ProtoField.new("Equities Batch Data Message", "nextrade.nextrade.etpcommon.nxtascii.v2.12.equitiesbatchdatamessage", ftypes.STRING, nil, nil, nil, "Details.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.equities_snapshot_mm_lp_quotes_included_10_level_message = ProtoField.new("Equities Snapshot Mm Lp Quotes Included 10 Level Message", "nextrade.nextrade.etpcommon.nxtascii.v2.12.equitiessnapshotmmlpquotesincluded10levelmessage", ftypes.STRING, nil, nil, nil, "Snapshot and final status are provided with certain intervals per issue and board - MM/LP Quotes Included * 10 Level Best Order on Ask/Bid.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.etp_constituents_message = ProtoField.new("Etp Constituents Message", "nextrade.nextrade.etpcommon.nxtascii.v2.12.etpconstituentsmessage", ftypes.STRING, nil, nil, nil, "Constituents of Structured Products.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.investor_activities_per_an_issue_eod_message = ProtoField.new("Investor Activities Per An Issue Eod Message", "nextrade.nextrade.etpcommon.nxtascii.v2.12.investoractivitiesperanissueeodmessage", ftypes.STRING, nil, nil, nil, "Investor Activities per an issue_EOD.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.investor_activities_per_commodities_message = ProtoField.new("Investor Activities Per Commodities Message", "nextrade.nextrade.etpcommon.nxtascii.v2.12.investoractivitiespercommoditiesmessage", ftypes.STRING, nil, nil, nil, "Investor Activities per Commodities.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.issue_closing_message = ProtoField.new("Issue Closing Message", "nextrade.nextrade.etpcommon.nxtascii.v2.12.issueclosingmessage", ftypes.STRING, nil, nil, nil, "The data is provided in case of an issue closing per board.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.issue_event_message = ProtoField.new("Issue Event Message", "nextrade.nextrade.etpcommon.nxtascii.v2.12.issueeventmessage", ftypes.STRING, nil, nil, nil, "Details.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.market_operation_schedule_message = ProtoField.new("Market Operation Schedule Message", "nextrade.nextrade.etpcommon.nxtascii.v2.12.marketoperationschedulemessage", ftypes.STRING, nil, nil, nil, "The data is provided when a Market Operation Schedule event is disclosed.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.market_operation_ts_message = ProtoField.new("Market Operation Ts Message", "nextrade.nextrade.etpcommon.nxtascii.v2.12.marketoperationtsmessage", ftypes.STRING, nil, nil, nil, "The data is provided per an issue if a Market Operation Trading session event occurs.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.member_firm_imposing_lifting_sanctions_message = ProtoField.new("Member Firm Imposing Lifting Sanctions Message", "nextrade.nextrade.etpcommon.nxtascii.v2.12.memberfirmimposingliftingsanctionsmessage", ftypes.STRING, nil, nil, nil, "The data is provided when a sanction is imposed on a member firm or lifted.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.member_information_message = ProtoField.new("Member Information Message", "nextrade.nextrade.etpcommon.nxtascii.v2.12.memberinformationmessage", ftypes.STRING, nil, nil, nil, "Details.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.mm_lp_information_message = ProtoField.new("Mm Lp Information Message", "nextrade.nextrade.etpcommon.nxtascii.v2.12.mmlpinformationmessage", ftypes.STRING, nil, nil, nil, "Details.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.polling_data_message = ProtoField.new("Polling Data Message", "nextrade.nextrade.etpcommon.nxtascii.v2.12.pollingdatamessage", ftypes.STRING, nil, nil, nil, "The data is provided periodically in order to check multicast group status.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.securities_order_filled_message = ProtoField.new("Securities Order Filled Message", "nextrade.nextrade.etpcommon.nxtascii.v2.12.securitiesorderfilledmessage", ftypes.STRING, nil, nil, nil, "Securities_Order Filled Order Filled Data on NXT trading items provided.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.securities_quote_mm_lp_quotes_included_10_level_message = ProtoField.new("Securities Quote Mm Lp Quotes Included 10 Level Message", "nextrade.nextrade.etpcommon.nxtascii.v2.12.securitiesquotemmlpquotesincluded10levelmessage", ftypes.STRING, nil, nil, nil, "Securities_Quote (MM/LP Quotes Included, 10 Level) Best Order Data on NXT Trading Items provided - MM/LP Quotes Included * 10 Level Best Order on Ask/Bid.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.short_selling_message = ProtoField.new("Short Selling Message", "nextrade.nextrade.etpcommon.nxtascii.v2.12.shortsellingmessage", ftypes.STRING, nil, nil, nil, "Short Selling.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.top_five_traders_activities_message = ProtoField.new("Top Five Traders Activities Message", "nextrade.nextrade.etpcommon.nxtascii.v2.12.topfivetradersactivitiesmessage", ftypes.STRING, nil, nil, nil, "Top Five Traders' Activities (including only Regular Board).")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.trading_activity_by_session_per_an_issue_message = ProtoField.new("Trading Activity By Session Per An Issue Message", "nextrade.nextrade.etpcommon.nxtascii.v2.12.tradingactivitybysessionperanissuemessage", ftypes.STRING, nil, nil, nil, "Trading Activity by session for each issue and market.")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.triggering_removing_vi_message = ProtoField.new("Triggering Removing Vi Message", "nextrade.nextrade.etpcommon.nxtascii.v2.12.triggeringremovingvimessage", ftypes.STRING, nil, nil, nil, "Triggering/removing VI (Volatility Interruption).")

-- Nextrade Nextrade EtpCommon NxtAscii 2.12 Expert Info
nextrade_nextrade_etpcommon_nxtascii_v2_12.experts = {}
nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number = ProtoExpert.new("nextrade.nextrade.etpcommon.nxtascii.v2.12.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.experts = { nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number }

-----------------------------------------------------------------------
-- Nextrade Nextrade EtpCommon NxtAscii 2.12 Formatting
-----------------------------------------------------------------------

-- Text field character encoding (Wireshark ENC_ constant)
nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding = ENC_EUC_KR


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nextrade Nextrade EtpCommon NxtAscii 2.12 Element Dissection Options
show.application_messages = true
show.structs = true

-- Register Nextrade Nextrade EtpCommon NxtAscii 2.12 Show Options
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")

-- Handle changed preferences
function omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.prefs.show_application_messages then
    show.application_messages = omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.prefs.show_application_messages
  end
  if show.structs ~= omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.prefs.show_structs then
    show.structs = omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.prefs.show_structs
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
-- Nextrade Nextrade EtpCommon NxtAscii 2.12 Fields
-----------------------------------------------------------------------

-- A Base Price To Trigger Dynamic Vi
nextrade_nextrade_etpcommon_nxtascii_v2_12.a_base_price_to_trigger_dynamic_vi = {}

-- Size: A Base Price To Trigger Dynamic Vi
nextrade_nextrade_etpcommon_nxtascii_v2_12.a_base_price_to_trigger_dynamic_vi.size = 11

-- Display: A Base Price To Trigger Dynamic Vi
nextrade_nextrade_etpcommon_nxtascii_v2_12.a_base_price_to_trigger_dynamic_vi.display = function(value)
  return "A Base Price To Trigger Dynamic Vi: "..value
end

-- Dissect: A Base Price To Trigger Dynamic Vi
nextrade_nextrade_etpcommon_nxtascii_v2_12.a_base_price_to_trigger_dynamic_vi.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.a_base_price_to_trigger_dynamic_vi.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.a_base_price_to_trigger_dynamic_vi, range, value, "A Base Price To Trigger Dynamic Vi: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "A Base Price To Trigger Dynamic Vi is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.a_base_price_to_trigger_dynamic_vi.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.a_base_price_to_trigger_dynamic_vi, range, value, display)

  return offset + length, value
end

-- A Base Price To Trigger Static Vi
nextrade_nextrade_etpcommon_nxtascii_v2_12.a_base_price_to_trigger_static_vi = {}

-- Size: A Base Price To Trigger Static Vi
nextrade_nextrade_etpcommon_nxtascii_v2_12.a_base_price_to_trigger_static_vi.size = 11

-- Display: A Base Price To Trigger Static Vi
nextrade_nextrade_etpcommon_nxtascii_v2_12.a_base_price_to_trigger_static_vi.display = function(value)
  return "A Base Price To Trigger Static Vi: "..value
end

-- Dissect: A Base Price To Trigger Static Vi
nextrade_nextrade_etpcommon_nxtascii_v2_12.a_base_price_to_trigger_static_vi.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.a_base_price_to_trigger_static_vi.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.a_base_price_to_trigger_static_vi, range, value, "A Base Price To Trigger Static Vi: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "A Base Price To Trigger Static Vi is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.a_base_price_to_trigger_static_vi.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.a_base_price_to_trigger_static_vi, range, value, display)

  return offset + length, value
end

-- A Designated Number For An Issue From Krx
nextrade_nextrade_etpcommon_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx = {}

-- Size: A Designated Number For An Issue From Krx
nextrade_nextrade_etpcommon_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.size = 6

-- Display: A Designated Number For An Issue From Krx
nextrade_nextrade_etpcommon_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.display = function(value)
  return "A Designated Number For An Issue From Krx: "..value
end

-- Dissect: A Designated Number For An Issue From Krx
nextrade_nextrade_etpcommon_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.a_designated_number_for_an_issue_from_krx, range, value, "A Designated Number For An Issue From Krx: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "A Designated Number For An Issue From Krx is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.a_designated_number_for_an_issue_from_krx, range, value, display)

  return offset + length, value
end

-- A Price Change Against The Previous Day
nextrade_nextrade_etpcommon_nxtascii_v2_12.a_price_change_against_the_previous_day = {}

-- Size: A Price Change Against The Previous Day
nextrade_nextrade_etpcommon_nxtascii_v2_12.a_price_change_against_the_previous_day.size = 11

-- Display: A Price Change Against The Previous Day
nextrade_nextrade_etpcommon_nxtascii_v2_12.a_price_change_against_the_previous_day.display = function(value)
  return "A Price Change Against The Previous Day: "..value
end

-- Dissect: A Price Change Against The Previous Day
nextrade_nextrade_etpcommon_nxtascii_v2_12.a_price_change_against_the_previous_day.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.a_price_change_against_the_previous_day.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.a_price_change_against_the_previous_day, range, value, "A Price Change Against The Previous Day: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "A Price Change Against The Previous Day is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.a_price_change_against_the_previous_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.a_price_change_against_the_previous_day, range, value, display)

  return offset + length, value
end

-- Abbreviated Issue Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.abbreviated_issue_code = {}

-- Size: Abbreviated Issue Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.abbreviated_issue_code.size = 9

-- Display: Abbreviated Issue Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.abbreviated_issue_code.display = function(value)
  return "Abbreviated Issue Code: "..value
end

-- Dissect: Abbreviated Issue Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.abbreviated_issue_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.abbreviated_issue_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.abbreviated_issue_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.abbreviated_issue_code, range, value, display)

  return offset + length, value
end

-- Abbreviated Issue Name
nextrade_nextrade_etpcommon_nxtascii_v2_12.abbreviated_issue_name = {}

-- Size: Abbreviated Issue Name
nextrade_nextrade_etpcommon_nxtascii_v2_12.abbreviated_issue_name.size = 40

-- Display: Abbreviated Issue Name
nextrade_nextrade_etpcommon_nxtascii_v2_12.abbreviated_issue_name.display = function(value)
  return "Abbreviated Issue Name: "..value
end

-- Dissect: Abbreviated Issue Name
nextrade_nextrade_etpcommon_nxtascii_v2_12.abbreviated_issue_name.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.abbreviated_issue_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.abbreviated_issue_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.abbreviated_issue_name, range, value, display)

  return offset + length, value
end

-- Abbreviated Issue Name In En
nextrade_nextrade_etpcommon_nxtascii_v2_12.abbreviated_issue_name_in_en = {}

-- Size: Abbreviated Issue Name In En
nextrade_nextrade_etpcommon_nxtascii_v2_12.abbreviated_issue_name_in_en.size = 40

-- Display: Abbreviated Issue Name In En
nextrade_nextrade_etpcommon_nxtascii_v2_12.abbreviated_issue_name_in_en.display = function(value)
  return "Abbreviated Issue Name In En: "..value
end

-- Dissect: Abbreviated Issue Name In En
nextrade_nextrade_etpcommon_nxtascii_v2_12.abbreviated_issue_name_in_en.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.abbreviated_issue_name_in_en.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.abbreviated_issue_name_in_en.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.abbreviated_issue_name_in_en, range, value, display)

  return offset + length, value
end

-- Abnormal Rise
nextrade_nextrade_etpcommon_nxtascii_v2_12.abnormal_rise = {}

-- Size: Abnormal Rise
nextrade_nextrade_etpcommon_nxtascii_v2_12.abnormal_rise.size = 1

-- Display: Abnormal Rise
nextrade_nextrade_etpcommon_nxtascii_v2_12.abnormal_rise.display = function(value)
  return "Abnormal Rise: "..value
end

-- Dissect: Abnormal Rise
nextrade_nextrade_etpcommon_nxtascii_v2_12.abnormal_rise.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.abnormal_rise.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.abnormal_rise.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.abnormal_rise, range, value, display)

  return offset + length, value
end

-- Accumulated Ask Trading Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_ask_trading_value = {}

-- Size: Accumulated Ask Trading Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_ask_trading_value.size = 22

-- Display: Accumulated Ask Trading Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_ask_trading_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_ask_trading_value.size):string()
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
nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_ask_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_ask_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.accumulated_ask_trading_value, range, value, "Accumulated Ask Trading Value: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Accumulated Ask Trading Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_ask_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.accumulated_ask_trading_value, range, value, display)

  return offset + length, value
end

-- Accumulated Ask Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_ask_trading_volume = {}

-- Size: Accumulated Ask Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_ask_trading_volume.size = 12

-- Display: Accumulated Ask Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_ask_trading_volume.display = function(value)
  return "Accumulated Ask Trading Volume: "..value
end

-- Dissect: Accumulated Ask Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_ask_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_ask_trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.accumulated_ask_trading_volume, range, value, "Accumulated Ask Trading Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Accumulated Ask Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_ask_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.accumulated_ask_trading_volume, range, value, display)

  return offset + length, value
end

-- Accumulated Bid Trading Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_bid_trading_value = {}

-- Size: Accumulated Bid Trading Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_bid_trading_value.size = 22

-- Display: Accumulated Bid Trading Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_bid_trading_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_bid_trading_value.size):string()
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
nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_bid_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_bid_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.accumulated_bid_trading_value, range, value, "Accumulated Bid Trading Value: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Accumulated Bid Trading Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_bid_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.accumulated_bid_trading_value, range, value, display)

  return offset + length, value
end

-- Accumulated Bid Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_bid_trading_volume = {}

-- Size: Accumulated Bid Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_bid_trading_volume.size = 12

-- Display: Accumulated Bid Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_bid_trading_volume.display = function(value)
  return "Accumulated Bid Trading Volume: "..value
end

-- Dissect: Accumulated Bid Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_bid_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_bid_trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.accumulated_bid_trading_volume, range, value, "Accumulated Bid Trading Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Accumulated Bid Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_bid_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.accumulated_bid_trading_volume, range, value, display)

  return offset + length, value
end

-- Accumulated Trading Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_trading_value = {}

-- Size: Accumulated Trading Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_trading_value.size = 22

-- Display: Accumulated Trading Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_trading_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_trading_value.size):string()
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
nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.accumulated_trading_value, range, value, "Accumulated Trading Value: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Accumulated Trading Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.accumulated_trading_value, range, value, display)

  return offset + length, value
end

-- Accumulated Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_trading_volume = {}

-- Size: Accumulated Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_trading_volume.size = 12

-- Display: Accumulated Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_trading_volume.display = function(value)
  return "Accumulated Trading Volume: "..value
end

-- Dissect: Accumulated Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.accumulated_trading_volume, range, value, "Accumulated Trading Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Accumulated Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.accumulated_trading_volume, range, value, display)

  return offset + length, value
end

-- After Market Accumulated Trading Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.after_market_accumulated_trading_value = {}

-- Size: After Market Accumulated Trading Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.after_market_accumulated_trading_value.size = 22

-- Display: After Market Accumulated Trading Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.after_market_accumulated_trading_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etpcommon_nxtascii_v2_12.after_market_accumulated_trading_value.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "After Market Accumulated Trading Value: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "After Market Accumulated Trading Value: "..text.." (expected 3 places)"
  end

  return "After Market Accumulated Trading Value: "..text
end

-- Dissect: After Market Accumulated Trading Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.after_market_accumulated_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.after_market_accumulated_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.after_market_accumulated_trading_value, range, value, "After Market Accumulated Trading Value: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "After Market Accumulated Trading Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.after_market_accumulated_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.after_market_accumulated_trading_value, range, value, display)

  return offset + length, value
end

-- After Market Accumulated Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.after_market_accumulated_trading_volume = {}

-- Size: After Market Accumulated Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.after_market_accumulated_trading_volume.size = 12

-- Display: After Market Accumulated Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.after_market_accumulated_trading_volume.display = function(value)
  return "After Market Accumulated Trading Volume: "..value
end

-- Dissect: After Market Accumulated Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.after_market_accumulated_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.after_market_accumulated_trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.after_market_accumulated_trading_volume, range, value, "After Market Accumulated Trading Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "After Market Accumulated Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.after_market_accumulated_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.after_market_accumulated_trading_volume, range, value, display)

  return offset + length, value
end

-- After Market Possibility
nextrade_nextrade_etpcommon_nxtascii_v2_12.after_market_possibility = {}

-- Size: After Market Possibility
nextrade_nextrade_etpcommon_nxtascii_v2_12.after_market_possibility.size = 1

-- Display: After Market Possibility
nextrade_nextrade_etpcommon_nxtascii_v2_12.after_market_possibility.display = function(value)
  return "After Market Possibility: "..value
end

-- Dissect: After Market Possibility
nextrade_nextrade_etpcommon_nxtascii_v2_12.after_market_possibility.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.after_market_possibility.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.after_market_possibility.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.after_market_possibility, range, value, display)

  return offset + length, value
end

-- An Abbreviated Name Of A Market Participant In Kr
nextrade_nextrade_etpcommon_nxtascii_v2_12.an_abbreviated_name_of_a_market_participant_in_kr = {}

-- Size: An Abbreviated Name Of A Market Participant In Kr
nextrade_nextrade_etpcommon_nxtascii_v2_12.an_abbreviated_name_of_a_market_participant_in_kr.size = 20

-- Display: An Abbreviated Name Of A Market Participant In Kr
nextrade_nextrade_etpcommon_nxtascii_v2_12.an_abbreviated_name_of_a_market_participant_in_kr.display = function(value)
  return "An Abbreviated Name Of A Market Participant In Kr: "..value
end

-- Dissect: An Abbreviated Name Of A Market Participant In Kr
nextrade_nextrade_etpcommon_nxtascii_v2_12.an_abbreviated_name_of_a_market_participant_in_kr.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.an_abbreviated_name_of_a_market_participant_in_kr.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.an_abbreviated_name_of_a_market_participant_in_kr.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.an_abbreviated_name_of_a_market_participant_in_kr, range, value, display)

  return offset + length, value
end

-- An Issue Of Which Base Price Is Settled With A Todays Single Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.an_issue_of_which_base_price_is_settled_with_a_todays_single_price = {}

-- Size: An Issue Of Which Base Price Is Settled With A Todays Single Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.an_issue_of_which_base_price_is_settled_with_a_todays_single_price.size = 1

-- Display: An Issue Of Which Base Price Is Settled With A Todays Single Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.an_issue_of_which_base_price_is_settled_with_a_todays_single_price.display = function(value)
  return "An Issue Of Which Base Price Is Settled With A Todays Single Price: "..value
end

-- Dissect: An Issue Of Which Base Price Is Settled With A Todays Single Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.an_issue_of_which_base_price_is_settled_with_a_todays_single_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.an_issue_of_which_base_price_is_settled_with_a_todays_single_price.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.an_issue_of_which_base_price_is_settled_with_a_todays_single_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.an_issue_of_which_base_price_is_settled_with_a_todays_single_price, range, value, display)

  return offset + length, value
end

-- An Obligatory Time Interval To Place An Order
nextrade_nextrade_etpcommon_nxtascii_v2_12.an_obligatory_time_interval_to_place_an_order = {}

-- Size: An Obligatory Time Interval To Place An Order
nextrade_nextrade_etpcommon_nxtascii_v2_12.an_obligatory_time_interval_to_place_an_order.size = 6

-- Display: An Obligatory Time Interval To Place An Order
nextrade_nextrade_etpcommon_nxtascii_v2_12.an_obligatory_time_interval_to_place_an_order.display = function(value)
  return "An Obligatory Time Interval To Place An Order: "..value
end

-- Dissect: An Obligatory Time Interval To Place An Order
nextrade_nextrade_etpcommon_nxtascii_v2_12.an_obligatory_time_interval_to_place_an_order.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.an_obligatory_time_interval_to_place_an_order.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.an_obligatory_time_interval_to_place_an_order, range, value, "An Obligatory Time Interval To Place An Order: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "An Obligatory Time Interval To Place An Order is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.an_obligatory_time_interval_to_place_an_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.an_obligatory_time_interval_to_place_an_order, range, value, display)

  return offset + length, value
end

-- Announcement Of Estimated Trading Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.announcement_of_estimated_trading_price = {}

-- Size: Announcement Of Estimated Trading Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.announcement_of_estimated_trading_price.size = 1

-- Display: Announcement Of Estimated Trading Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.announcement_of_estimated_trading_price.display = function(value)
  return "Announcement Of Estimated Trading Price: "..value
end

-- Dissect: Announcement Of Estimated Trading Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.announcement_of_estimated_trading_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.announcement_of_estimated_trading_price.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.announcement_of_estimated_trading_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.announcement_of_estimated_trading_price, range, value, display)

  return offset + length, value
end

-- Appraisal Ratio Of Substitute Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.appraisal_ratio_of_substitute_price = {}

-- Size: Appraisal Ratio Of Substitute Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.appraisal_ratio_of_substitute_price.size = 13

-- Display: Appraisal Ratio Of Substitute Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.appraisal_ratio_of_substitute_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etpcommon_nxtascii_v2_12.appraisal_ratio_of_substitute_price.size):string()
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
nextrade_nextrade_etpcommon_nxtascii_v2_12.appraisal_ratio_of_substitute_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.appraisal_ratio_of_substitute_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.appraisal_ratio_of_substitute_price, range, value, "Appraisal Ratio Of Substitute Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Appraisal Ratio Of Substitute Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.appraisal_ratio_of_substitute_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.appraisal_ratio_of_substitute_price, range, value, display)

  return offset + length, value
end

-- Appraised Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.appraised_price = {}

-- Size: Appraised Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.appraised_price.size = 11

-- Display: Appraised Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.appraised_price.display = function(value)
  return "Appraised Price: "..value
end

-- Dissect: Appraised Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.appraised_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.appraised_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.appraised_price, range, value, "Appraised Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Appraised Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.appraised_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.appraised_price, range, value, display)

  return offset + length, value
end

-- Approval On Competitive Trading
nextrade_nextrade_etpcommon_nxtascii_v2_12.approval_on_competitive_trading = {}

-- Size: Approval On Competitive Trading
nextrade_nextrade_etpcommon_nxtascii_v2_12.approval_on_competitive_trading.size = 1

-- Display: Approval On Competitive Trading
nextrade_nextrade_etpcommon_nxtascii_v2_12.approval_on_competitive_trading.display = function(value)
  return "Approval On Competitive Trading: "..value
end

-- Dissect: Approval On Competitive Trading
nextrade_nextrade_etpcommon_nxtascii_v2_12.approval_on_competitive_trading.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.approval_on_competitive_trading.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.approval_on_competitive_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.approval_on_competitive_trading, range, value, display)

  return offset + length, value
end

-- Approval On Negotiation Trading
nextrade_nextrade_etpcommon_nxtascii_v2_12.approval_on_negotiation_trading = {}

-- Size: Approval On Negotiation Trading
nextrade_nextrade_etpcommon_nxtascii_v2_12.approval_on_negotiation_trading.size = 1

-- Display: Approval On Negotiation Trading
nextrade_nextrade_etpcommon_nxtascii_v2_12.approval_on_negotiation_trading.display = function(value)
  return "Approval On Negotiation Trading: "..value
end

-- Dissect: Approval On Negotiation Trading
nextrade_nextrade_etpcommon_nxtascii_v2_12.approval_on_negotiation_trading.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.approval_on_negotiation_trading.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.approval_on_negotiation_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.approval_on_negotiation_trading, range, value, display)

  return offset + length, value
end

-- Ask Level 1 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_1_price = {}

-- Size: Ask Level 1 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_1_price.size = 11

-- Display: Ask Level 1 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_1_price.display = function(value)
  return "Ask Level 1 Price: "..value
end

-- Dissect: Ask Level 1 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_1_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_1_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_1_price, range, value, "Ask Level 1 Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Ask Level 1 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_1_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_1_price, range, value, display)

  return offset + length, value
end

-- Ask Level 1 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_1_volume = {}

-- Size: Ask Level 1 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_1_volume.size = 12

-- Display: Ask Level 1 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_1_volume.display = function(value)
  return "Ask Level 1 Volume: "..value
end

-- Dissect: Ask Level 1 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_1_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_1_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_1_volume, range, value, "Ask Level 1 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Ask Level 1 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_1_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_1_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 10 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_10_price = {}

-- Size: Ask Level 10 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_10_price.size = 11

-- Display: Ask Level 10 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_10_price.display = function(value)
  return "Ask Level 10 Price: "..value
end

-- Dissect: Ask Level 10 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_10_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_10_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_10_price, range, value, "Ask Level 10 Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Ask Level 10 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_10_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_10_price, range, value, display)

  return offset + length, value
end

-- Ask Level 10 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_10_volume = {}

-- Size: Ask Level 10 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_10_volume.size = 12

-- Display: Ask Level 10 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_10_volume.display = function(value)
  return "Ask Level 10 Volume: "..value
end

-- Dissect: Ask Level 10 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_10_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_10_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_10_volume, range, value, "Ask Level 10 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Ask Level 10 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_10_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_10_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 2 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_2_price = {}

-- Size: Ask Level 2 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_2_price.size = 11

-- Display: Ask Level 2 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_2_price.display = function(value)
  return "Ask Level 2 Price: "..value
end

-- Dissect: Ask Level 2 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_2_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_2_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_2_price, range, value, "Ask Level 2 Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Ask Level 2 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_2_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_2_price, range, value, display)

  return offset + length, value
end

-- Ask Level 2 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_2_volume = {}

-- Size: Ask Level 2 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_2_volume.size = 12

-- Display: Ask Level 2 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_2_volume.display = function(value)
  return "Ask Level 2 Volume: "..value
end

-- Dissect: Ask Level 2 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_2_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_2_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_2_volume, range, value, "Ask Level 2 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Ask Level 2 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_2_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_2_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 3 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_3_price = {}

-- Size: Ask Level 3 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_3_price.size = 11

-- Display: Ask Level 3 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_3_price.display = function(value)
  return "Ask Level 3 Price: "..value
end

-- Dissect: Ask Level 3 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_3_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_3_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_3_price, range, value, "Ask Level 3 Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Ask Level 3 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_3_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_3_price, range, value, display)

  return offset + length, value
end

-- Ask Level 3 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_3_volume = {}

-- Size: Ask Level 3 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_3_volume.size = 12

-- Display: Ask Level 3 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_3_volume.display = function(value)
  return "Ask Level 3 Volume: "..value
end

-- Dissect: Ask Level 3 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_3_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_3_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_3_volume, range, value, "Ask Level 3 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Ask Level 3 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_3_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_3_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 4 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_4_price = {}

-- Size: Ask Level 4 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_4_price.size = 11

-- Display: Ask Level 4 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_4_price.display = function(value)
  return "Ask Level 4 Price: "..value
end

-- Dissect: Ask Level 4 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_4_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_4_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_4_price, range, value, "Ask Level 4 Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Ask Level 4 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_4_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_4_price, range, value, display)

  return offset + length, value
end

-- Ask Level 4 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_4_volume = {}

-- Size: Ask Level 4 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_4_volume.size = 12

-- Display: Ask Level 4 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_4_volume.display = function(value)
  return "Ask Level 4 Volume: "..value
end

-- Dissect: Ask Level 4 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_4_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_4_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_4_volume, range, value, "Ask Level 4 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Ask Level 4 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_4_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_4_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 5 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_5_price = {}

-- Size: Ask Level 5 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_5_price.size = 11

-- Display: Ask Level 5 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_5_price.display = function(value)
  return "Ask Level 5 Price: "..value
end

-- Dissect: Ask Level 5 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_5_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_5_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_5_price, range, value, "Ask Level 5 Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Ask Level 5 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_5_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_5_price, range, value, display)

  return offset + length, value
end

-- Ask Level 5 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_5_volume = {}

-- Size: Ask Level 5 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_5_volume.size = 12

-- Display: Ask Level 5 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_5_volume.display = function(value)
  return "Ask Level 5 Volume: "..value
end

-- Dissect: Ask Level 5 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_5_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_5_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_5_volume, range, value, "Ask Level 5 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Ask Level 5 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_5_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_5_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 6 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_6_price = {}

-- Size: Ask Level 6 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_6_price.size = 11

-- Display: Ask Level 6 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_6_price.display = function(value)
  return "Ask Level 6 Price: "..value
end

-- Dissect: Ask Level 6 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_6_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_6_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_6_price, range, value, "Ask Level 6 Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Ask Level 6 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_6_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_6_price, range, value, display)

  return offset + length, value
end

-- Ask Level 6 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_6_volume = {}

-- Size: Ask Level 6 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_6_volume.size = 12

-- Display: Ask Level 6 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_6_volume.display = function(value)
  return "Ask Level 6 Volume: "..value
end

-- Dissect: Ask Level 6 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_6_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_6_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_6_volume, range, value, "Ask Level 6 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Ask Level 6 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_6_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_6_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 7 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_7_price = {}

-- Size: Ask Level 7 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_7_price.size = 11

-- Display: Ask Level 7 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_7_price.display = function(value)
  return "Ask Level 7 Price: "..value
end

-- Dissect: Ask Level 7 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_7_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_7_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_7_price, range, value, "Ask Level 7 Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Ask Level 7 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_7_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_7_price, range, value, display)

  return offset + length, value
end

-- Ask Level 7 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_7_volume = {}

-- Size: Ask Level 7 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_7_volume.size = 12

-- Display: Ask Level 7 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_7_volume.display = function(value)
  return "Ask Level 7 Volume: "..value
end

-- Dissect: Ask Level 7 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_7_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_7_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_7_volume, range, value, "Ask Level 7 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Ask Level 7 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_7_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_7_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 8 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_8_price = {}

-- Size: Ask Level 8 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_8_price.size = 11

-- Display: Ask Level 8 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_8_price.display = function(value)
  return "Ask Level 8 Price: "..value
end

-- Dissect: Ask Level 8 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_8_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_8_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_8_price, range, value, "Ask Level 8 Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Ask Level 8 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_8_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_8_price, range, value, display)

  return offset + length, value
end

-- Ask Level 8 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_8_volume = {}

-- Size: Ask Level 8 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_8_volume.size = 12

-- Display: Ask Level 8 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_8_volume.display = function(value)
  return "Ask Level 8 Volume: "..value
end

-- Dissect: Ask Level 8 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_8_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_8_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_8_volume, range, value, "Ask Level 8 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Ask Level 8 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_8_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_8_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 9 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_9_price = {}

-- Size: Ask Level 9 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_9_price.size = 11

-- Display: Ask Level 9 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_9_price.display = function(value)
  return "Ask Level 9 Price: "..value
end

-- Dissect: Ask Level 9 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_9_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_9_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_9_price, range, value, "Ask Level 9 Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Ask Level 9 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_9_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_9_price, range, value, display)

  return offset + length, value
end

-- Ask Level 9 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_9_volume = {}

-- Size: Ask Level 9 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_9_volume.size = 12

-- Display: Ask Level 9 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_9_volume.display = function(value)
  return "Ask Level 9 Volume: "..value
end

-- Dissect: Ask Level 9 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_9_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_9_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_9_volume, range, value, "Ask Level 9 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Ask Level 9 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_9_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_level_9_volume, range, value, display)

  return offset + length, value
end

-- Ask Trading Value 1
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_1 = {}

-- Size: Ask Trading Value 1
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_1.size = 22

-- Display: Ask Trading Value 1
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_1.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_1.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Ask Trading Value 1: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Ask Trading Value 1: "..text.." (expected 3 places)"
  end

  return "Ask Trading Value 1: "..text
end

-- Dissect: Ask Trading Value 1
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_1.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_1.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_trading_value_1, range, value, "Ask Trading Value 1: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Ask Trading Value 1 is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_trading_value_1, range, value, display)

  return offset + length, value
end

-- Ask Trading Value 2
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_2 = {}

-- Size: Ask Trading Value 2
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_2.size = 22

-- Display: Ask Trading Value 2
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_2.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_2.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Ask Trading Value 2: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Ask Trading Value 2: "..text.." (expected 3 places)"
  end

  return "Ask Trading Value 2: "..text
end

-- Dissect: Ask Trading Value 2
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_2.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_2.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_trading_value_2, range, value, "Ask Trading Value 2: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Ask Trading Value 2 is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_trading_value_2, range, value, display)

  return offset + length, value
end

-- Ask Trading Value 3
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_3 = {}

-- Size: Ask Trading Value 3
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_3.size = 22

-- Display: Ask Trading Value 3
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_3.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_3.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Ask Trading Value 3: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Ask Trading Value 3: "..text.." (expected 3 places)"
  end

  return "Ask Trading Value 3: "..text
end

-- Dissect: Ask Trading Value 3
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_3.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_3.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_trading_value_3, range, value, "Ask Trading Value 3: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Ask Trading Value 3 is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_trading_value_3, range, value, display)

  return offset + length, value
end

-- Ask Trading Value 4
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_4 = {}

-- Size: Ask Trading Value 4
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_4.size = 22

-- Display: Ask Trading Value 4
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_4.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_4.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Ask Trading Value 4: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Ask Trading Value 4: "..text.." (expected 3 places)"
  end

  return "Ask Trading Value 4: "..text
end

-- Dissect: Ask Trading Value 4
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_4.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_4.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_trading_value_4, range, value, "Ask Trading Value 4: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Ask Trading Value 4 is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_trading_value_4, range, value, display)

  return offset + length, value
end

-- Ask Trading Value 5
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_5 = {}

-- Size: Ask Trading Value 5
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_5.size = 22

-- Display: Ask Trading Value 5
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_5.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_5.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Ask Trading Value 5: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Ask Trading Value 5: "..text.." (expected 3 places)"
  end

  return "Ask Trading Value 5: "..text
end

-- Dissect: Ask Trading Value 5
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_5.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_5.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_trading_value_5, range, value, "Ask Trading Value 5: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Ask Trading Value 5 is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_trading_value_5, range, value, display)

  return offset + length, value
end

-- Ask Trading Volume 1
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_1 = {}

-- Size: Ask Trading Volume 1
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_1.size = 12

-- Display: Ask Trading Volume 1
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_1.display = function(value)
  return "Ask Trading Volume 1: "..value
end

-- Dissect: Ask Trading Volume 1
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_1.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_1.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_trading_volume_1, range, value, "Ask Trading Volume 1: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Ask Trading Volume 1 is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_trading_volume_1, range, value, display)

  return offset + length, value
end

-- Ask Trading Volume 2
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_2 = {}

-- Size: Ask Trading Volume 2
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_2.size = 12

-- Display: Ask Trading Volume 2
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_2.display = function(value)
  return "Ask Trading Volume 2: "..value
end

-- Dissect: Ask Trading Volume 2
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_2.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_2.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_trading_volume_2, range, value, "Ask Trading Volume 2: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Ask Trading Volume 2 is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_trading_volume_2, range, value, display)

  return offset + length, value
end

-- Ask Trading Volume 3
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_3 = {}

-- Size: Ask Trading Volume 3
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_3.size = 12

-- Display: Ask Trading Volume 3
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_3.display = function(value)
  return "Ask Trading Volume 3: "..value
end

-- Dissect: Ask Trading Volume 3
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_3.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_3.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_trading_volume_3, range, value, "Ask Trading Volume 3: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Ask Trading Volume 3 is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_trading_volume_3, range, value, display)

  return offset + length, value
end

-- Ask Trading Volume 4
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_4 = {}

-- Size: Ask Trading Volume 4
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_4.size = 12

-- Display: Ask Trading Volume 4
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_4.display = function(value)
  return "Ask Trading Volume 4: "..value
end

-- Dissect: Ask Trading Volume 4
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_4.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_4.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_trading_volume_4, range, value, "Ask Trading Volume 4: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Ask Trading Volume 4 is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_trading_volume_4, range, value, display)

  return offset + length, value
end

-- Ask Trading Volume 5
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_5 = {}

-- Size: Ask Trading Volume 5
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_5.size = 12

-- Display: Ask Trading Volume 5
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_5.display = function(value)
  return "Ask Trading Volume 5: "..value
end

-- Dissect: Ask Trading Volume 5
nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_5.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_5.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_trading_volume_5, range, value, "Ask Trading Volume 5: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Ask Trading Volume 5 is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ask_trading_volume_5, range, value, display)

  return offset + length, value
end

-- Back Door Listing
nextrade_nextrade_etpcommon_nxtascii_v2_12.back_door_listing = {}

-- Size: Back Door Listing
nextrade_nextrade_etpcommon_nxtascii_v2_12.back_door_listing.size = 1

-- Display: Back Door Listing
nextrade_nextrade_etpcommon_nxtascii_v2_12.back_door_listing.display = function(value)
  return "Back Door Listing: "..value
end

-- Dissect: Back Door Listing
nextrade_nextrade_etpcommon_nxtascii_v2_12.back_door_listing.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.back_door_listing.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.back_door_listing.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.back_door_listing, range, value, display)

  return offset + length, value
end

-- Base Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.base_price = {}

-- Size: Base Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.base_price.size = 11

-- Display: Base Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.base_price.display = function(value)
  return "Base Price: "..value
end

-- Dissect: Base Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.base_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.base_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.base_price, range, value, "Base Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Base Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.base_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.base_price, range, value, display)

  return offset + length, value
end

-- Base Price Change
nextrade_nextrade_etpcommon_nxtascii_v2_12.base_price_change = {}

-- Size: Base Price Change
nextrade_nextrade_etpcommon_nxtascii_v2_12.base_price_change.size = 1

-- Display: Base Price Change
nextrade_nextrade_etpcommon_nxtascii_v2_12.base_price_change.display = function(value)
  return "Base Price Change: "..value
end

-- Dissect: Base Price Change
nextrade_nextrade_etpcommon_nxtascii_v2_12.base_price_change.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.base_price_change.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.base_price_change.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.base_price_change, range, value, display)

  return offset + length, value
end

-- Basket Trading In The Pre Opening Market
nextrade_nextrade_etpcommon_nxtascii_v2_12.basket_trading_in_the_pre_opening_market = {}

-- Size: Basket Trading In The Pre Opening Market
nextrade_nextrade_etpcommon_nxtascii_v2_12.basket_trading_in_the_pre_opening_market.size = 1

-- Display: Basket Trading In The Pre Opening Market
nextrade_nextrade_etpcommon_nxtascii_v2_12.basket_trading_in_the_pre_opening_market.display = function(value)
  return "Basket Trading In The Pre Opening Market: "..value
end

-- Dissect: Basket Trading In The Pre Opening Market
nextrade_nextrade_etpcommon_nxtascii_v2_12.basket_trading_in_the_pre_opening_market.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.basket_trading_in_the_pre_opening_market.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.basket_trading_in_the_pre_opening_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.basket_trading_in_the_pre_opening_market, range, value, display)

  return offset + length, value
end

-- Best Favorable Order Permission Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.best_favorable_order_permission_type_code = {}

-- Size: Best Favorable Order Permission Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.best_favorable_order_permission_type_code.size = 5

-- Display: Best Favorable Order Permission Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.best_favorable_order_permission_type_code.display = function(value)
  return "Best Favorable Order Permission Type Code: "..value
end

-- Dissect: Best Favorable Order Permission Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.best_favorable_order_permission_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.best_favorable_order_permission_type_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.best_favorable_order_permission_type_code, range, value, "Best Favorable Order Permission Type Code: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Best Favorable Order Permission Type Code is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.best_favorable_order_permission_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.best_favorable_order_permission_type_code, range, value, display)

  return offset + length, value
end

-- Bid Ask Spread Unit Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_ask_spread_unit_code = {}

-- Size: Bid Ask Spread Unit Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_ask_spread_unit_code.size = 1

-- Display: Bid Ask Spread Unit Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_ask_spread_unit_code.display = function(value)
  return "Bid Ask Spread Unit Code: "..value
end

-- Dissect: Bid Ask Spread Unit Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_ask_spread_unit_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_ask_spread_unit_code.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_ask_spread_unit_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_ask_spread_unit_code, range, value, display)

  return offset + length, value
end

-- Bid Level 1 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_1_price = {}

-- Size: Bid Level 1 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_1_price.size = 11

-- Display: Bid Level 1 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_1_price.display = function(value)
  return "Bid Level 1 Price: "..value
end

-- Dissect: Bid Level 1 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_1_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_1_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_1_price, range, value, "Bid Level 1 Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Bid Level 1 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_1_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_1_price, range, value, display)

  return offset + length, value
end

-- Bid Level 1 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_1_volume = {}

-- Size: Bid Level 1 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_1_volume.size = 12

-- Display: Bid Level 1 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_1_volume.display = function(value)
  return "Bid Level 1 Volume: "..value
end

-- Dissect: Bid Level 1 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_1_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_1_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_1_volume, range, value, "Bid Level 1 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Bid Level 1 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_1_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_1_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 10 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_10_price = {}

-- Size: Bid Level 10 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_10_price.size = 11

-- Display: Bid Level 10 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_10_price.display = function(value)
  return "Bid Level 10 Price: "..value
end

-- Dissect: Bid Level 10 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_10_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_10_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_10_price, range, value, "Bid Level 10 Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Bid Level 10 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_10_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_10_price, range, value, display)

  return offset + length, value
end

-- Bid Level 10 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_10_volume = {}

-- Size: Bid Level 10 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_10_volume.size = 12

-- Display: Bid Level 10 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_10_volume.display = function(value)
  return "Bid Level 10 Volume: "..value
end

-- Dissect: Bid Level 10 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_10_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_10_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_10_volume, range, value, "Bid Level 10 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Bid Level 10 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_10_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_10_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 2 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_2_price = {}

-- Size: Bid Level 2 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_2_price.size = 11

-- Display: Bid Level 2 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_2_price.display = function(value)
  return "Bid Level 2 Price: "..value
end

-- Dissect: Bid Level 2 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_2_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_2_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_2_price, range, value, "Bid Level 2 Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Bid Level 2 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_2_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_2_price, range, value, display)

  return offset + length, value
end

-- Bid Level 2 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_2_volume = {}

-- Size: Bid Level 2 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_2_volume.size = 12

-- Display: Bid Level 2 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_2_volume.display = function(value)
  return "Bid Level 2 Volume: "..value
end

-- Dissect: Bid Level 2 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_2_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_2_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_2_volume, range, value, "Bid Level 2 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Bid Level 2 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_2_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_2_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 3 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_3_price = {}

-- Size: Bid Level 3 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_3_price.size = 11

-- Display: Bid Level 3 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_3_price.display = function(value)
  return "Bid Level 3 Price: "..value
end

-- Dissect: Bid Level 3 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_3_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_3_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_3_price, range, value, "Bid Level 3 Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Bid Level 3 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_3_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_3_price, range, value, display)

  return offset + length, value
end

-- Bid Level 3 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_3_volume = {}

-- Size: Bid Level 3 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_3_volume.size = 12

-- Display: Bid Level 3 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_3_volume.display = function(value)
  return "Bid Level 3 Volume: "..value
end

-- Dissect: Bid Level 3 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_3_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_3_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_3_volume, range, value, "Bid Level 3 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Bid Level 3 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_3_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_3_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 4 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_4_price = {}

-- Size: Bid Level 4 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_4_price.size = 11

-- Display: Bid Level 4 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_4_price.display = function(value)
  return "Bid Level 4 Price: "..value
end

-- Dissect: Bid Level 4 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_4_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_4_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_4_price, range, value, "Bid Level 4 Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Bid Level 4 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_4_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_4_price, range, value, display)

  return offset + length, value
end

-- Bid Level 4 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_4_volume = {}

-- Size: Bid Level 4 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_4_volume.size = 12

-- Display: Bid Level 4 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_4_volume.display = function(value)
  return "Bid Level 4 Volume: "..value
end

-- Dissect: Bid Level 4 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_4_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_4_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_4_volume, range, value, "Bid Level 4 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Bid Level 4 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_4_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_4_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 5 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_5_price = {}

-- Size: Bid Level 5 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_5_price.size = 11

-- Display: Bid Level 5 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_5_price.display = function(value)
  return "Bid Level 5 Price: "..value
end

-- Dissect: Bid Level 5 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_5_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_5_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_5_price, range, value, "Bid Level 5 Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Bid Level 5 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_5_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_5_price, range, value, display)

  return offset + length, value
end

-- Bid Level 5 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_5_volume = {}

-- Size: Bid Level 5 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_5_volume.size = 12

-- Display: Bid Level 5 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_5_volume.display = function(value)
  return "Bid Level 5 Volume: "..value
end

-- Dissect: Bid Level 5 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_5_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_5_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_5_volume, range, value, "Bid Level 5 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Bid Level 5 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_5_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_5_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 6 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_6_price = {}

-- Size: Bid Level 6 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_6_price.size = 11

-- Display: Bid Level 6 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_6_price.display = function(value)
  return "Bid Level 6 Price: "..value
end

-- Dissect: Bid Level 6 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_6_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_6_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_6_price, range, value, "Bid Level 6 Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Bid Level 6 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_6_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_6_price, range, value, display)

  return offset + length, value
end

-- Bid Level 6 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_6_volume = {}

-- Size: Bid Level 6 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_6_volume.size = 12

-- Display: Bid Level 6 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_6_volume.display = function(value)
  return "Bid Level 6 Volume: "..value
end

-- Dissect: Bid Level 6 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_6_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_6_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_6_volume, range, value, "Bid Level 6 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Bid Level 6 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_6_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_6_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 7 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_7_price = {}

-- Size: Bid Level 7 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_7_price.size = 11

-- Display: Bid Level 7 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_7_price.display = function(value)
  return "Bid Level 7 Price: "..value
end

-- Dissect: Bid Level 7 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_7_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_7_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_7_price, range, value, "Bid Level 7 Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Bid Level 7 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_7_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_7_price, range, value, display)

  return offset + length, value
end

-- Bid Level 7 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_7_volume = {}

-- Size: Bid Level 7 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_7_volume.size = 12

-- Display: Bid Level 7 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_7_volume.display = function(value)
  return "Bid Level 7 Volume: "..value
end

-- Dissect: Bid Level 7 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_7_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_7_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_7_volume, range, value, "Bid Level 7 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Bid Level 7 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_7_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_7_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 8 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_8_price = {}

-- Size: Bid Level 8 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_8_price.size = 11

-- Display: Bid Level 8 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_8_price.display = function(value)
  return "Bid Level 8 Price: "..value
end

-- Dissect: Bid Level 8 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_8_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_8_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_8_price, range, value, "Bid Level 8 Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Bid Level 8 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_8_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_8_price, range, value, display)

  return offset + length, value
end

-- Bid Level 8 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_8_volume = {}

-- Size: Bid Level 8 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_8_volume.size = 12

-- Display: Bid Level 8 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_8_volume.display = function(value)
  return "Bid Level 8 Volume: "..value
end

-- Dissect: Bid Level 8 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_8_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_8_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_8_volume, range, value, "Bid Level 8 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Bid Level 8 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_8_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_8_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 9 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_9_price = {}

-- Size: Bid Level 9 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_9_price.size = 11

-- Display: Bid Level 9 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_9_price.display = function(value)
  return "Bid Level 9 Price: "..value
end

-- Dissect: Bid Level 9 Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_9_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_9_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_9_price, range, value, "Bid Level 9 Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Bid Level 9 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_9_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_9_price, range, value, display)

  return offset + length, value
end

-- Bid Level 9 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_9_volume = {}

-- Size: Bid Level 9 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_9_volume.size = 12

-- Display: Bid Level 9 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_9_volume.display = function(value)
  return "Bid Level 9 Volume: "..value
end

-- Dissect: Bid Level 9 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_9_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_9_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_9_volume, range, value, "Bid Level 9 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Bid Level 9 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_9_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_level_9_volume, range, value, display)

  return offset + length, value
end

-- Bid Trading Value 1
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_1 = {}

-- Size: Bid Trading Value 1
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_1.size = 22

-- Display: Bid Trading Value 1
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_1.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_1.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Bid Trading Value 1: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Bid Trading Value 1: "..text.." (expected 3 places)"
  end

  return "Bid Trading Value 1: "..text
end

-- Dissect: Bid Trading Value 1
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_1.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_1.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_trading_value_1, range, value, "Bid Trading Value 1: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Bid Trading Value 1 is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_trading_value_1, range, value, display)

  return offset + length, value
end

-- Bid Trading Value 2
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_2 = {}

-- Size: Bid Trading Value 2
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_2.size = 22

-- Display: Bid Trading Value 2
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_2.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_2.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Bid Trading Value 2: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Bid Trading Value 2: "..text.." (expected 3 places)"
  end

  return "Bid Trading Value 2: "..text
end

-- Dissect: Bid Trading Value 2
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_2.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_2.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_trading_value_2, range, value, "Bid Trading Value 2: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Bid Trading Value 2 is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_trading_value_2, range, value, display)

  return offset + length, value
end

-- Bid Trading Value 3
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_3 = {}

-- Size: Bid Trading Value 3
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_3.size = 22

-- Display: Bid Trading Value 3
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_3.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_3.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Bid Trading Value 3: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Bid Trading Value 3: "..text.." (expected 3 places)"
  end

  return "Bid Trading Value 3: "..text
end

-- Dissect: Bid Trading Value 3
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_3.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_3.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_trading_value_3, range, value, "Bid Trading Value 3: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Bid Trading Value 3 is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_trading_value_3, range, value, display)

  return offset + length, value
end

-- Bid Trading Value 4
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_4 = {}

-- Size: Bid Trading Value 4
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_4.size = 22

-- Display: Bid Trading Value 4
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_4.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_4.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Bid Trading Value 4: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Bid Trading Value 4: "..text.." (expected 3 places)"
  end

  return "Bid Trading Value 4: "..text
end

-- Dissect: Bid Trading Value 4
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_4.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_4.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_trading_value_4, range, value, "Bid Trading Value 4: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Bid Trading Value 4 is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_trading_value_4, range, value, display)

  return offset + length, value
end

-- Bid Trading Value 5
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_5 = {}

-- Size: Bid Trading Value 5
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_5.size = 22

-- Display: Bid Trading Value 5
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_5.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_5.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Bid Trading Value 5: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Bid Trading Value 5: "..text.." (expected 3 places)"
  end

  return "Bid Trading Value 5: "..text
end

-- Dissect: Bid Trading Value 5
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_5.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_5.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_trading_value_5, range, value, "Bid Trading Value 5: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Bid Trading Value 5 is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_trading_value_5, range, value, display)

  return offset + length, value
end

-- Bid Trading Volume 1
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_1 = {}

-- Size: Bid Trading Volume 1
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_1.size = 12

-- Display: Bid Trading Volume 1
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_1.display = function(value)
  return "Bid Trading Volume 1: "..value
end

-- Dissect: Bid Trading Volume 1
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_1.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_1.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_trading_volume_1, range, value, "Bid Trading Volume 1: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Bid Trading Volume 1 is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_trading_volume_1, range, value, display)

  return offset + length, value
end

-- Bid Trading Volume 2
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_2 = {}

-- Size: Bid Trading Volume 2
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_2.size = 12

-- Display: Bid Trading Volume 2
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_2.display = function(value)
  return "Bid Trading Volume 2: "..value
end

-- Dissect: Bid Trading Volume 2
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_2.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_2.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_trading_volume_2, range, value, "Bid Trading Volume 2: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Bid Trading Volume 2 is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_trading_volume_2, range, value, display)

  return offset + length, value
end

-- Bid Trading Volume 3
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_3 = {}

-- Size: Bid Trading Volume 3
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_3.size = 12

-- Display: Bid Trading Volume 3
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_3.display = function(value)
  return "Bid Trading Volume 3: "..value
end

-- Dissect: Bid Trading Volume 3
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_3.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_3.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_trading_volume_3, range, value, "Bid Trading Volume 3: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Bid Trading Volume 3 is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_trading_volume_3, range, value, display)

  return offset + length, value
end

-- Bid Trading Volume 4
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_4 = {}

-- Size: Bid Trading Volume 4
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_4.size = 12

-- Display: Bid Trading Volume 4
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_4.display = function(value)
  return "Bid Trading Volume 4: "..value
end

-- Dissect: Bid Trading Volume 4
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_4.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_4.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_trading_volume_4, range, value, "Bid Trading Volume 4: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Bid Trading Volume 4 is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_trading_volume_4, range, value, display)

  return offset + length, value
end

-- Bid Trading Volume 5
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_5 = {}

-- Size: Bid Trading Volume 5
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_5.size = 12

-- Display: Bid Trading Volume 5
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_5.display = function(value)
  return "Bid Trading Volume 5: "..value
end

-- Dissect: Bid Trading Volume 5
nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_5.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_5.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_trading_volume_5, range, value, "Bid Trading Volume 5: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Bid Trading Volume 5 is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.bid_trading_volume_5, range, value, display)

  return offset + length, value
end

-- Block Trading In The Pre Opening Market
nextrade_nextrade_etpcommon_nxtascii_v2_12.block_trading_in_the_pre_opening_market = {}

-- Size: Block Trading In The Pre Opening Market
nextrade_nextrade_etpcommon_nxtascii_v2_12.block_trading_in_the_pre_opening_market.size = 1

-- Display: Block Trading In The Pre Opening Market
nextrade_nextrade_etpcommon_nxtascii_v2_12.block_trading_in_the_pre_opening_market.display = function(value)
  return "Block Trading In The Pre Opening Market: "..value
end

-- Dissect: Block Trading In The Pre Opening Market
nextrade_nextrade_etpcommon_nxtascii_v2_12.block_trading_in_the_pre_opening_market.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.block_trading_in_the_pre_opening_market.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.block_trading_in_the_pre_opening_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.block_trading_in_the_pre_opening_market, range, value, display)

  return offset + length, value
end

-- Board Event Group Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.board_event_group_code = {}

-- Size: Board Event Group Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.board_event_group_code.size = 5

-- Display: Board Event Group Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.board_event_group_code.display = function(value)
  return "Board Event Group Code: "..value
end

-- Dissect: Board Event Group Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.board_event_group_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.board_event_group_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.board_event_group_code, range, value, "Board Event Group Code: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Board Event Group Code is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.board_event_group_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.board_event_group_code, range, value, display)

  return offset + length, value
end

-- Board Event Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.board_event_id = {}

-- Size: Board Event Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.board_event_id.size = 3

-- Display: Board Event Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.board_event_id.display = function(value)
  return "Board Event Id: "..value
end

-- Dissect: Board Event Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.board_event_id.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.board_event_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.board_event_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.board_event_id, range, value, display)

  return offset + length, value
end

-- Board Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.board_id = {}

-- Size: Board Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.board_id.size = 2

-- Display: Board Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.board_id.display = function(value)
  return "Board Id: "..value
end

-- Dissect: Board Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.board_id.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.board_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.board_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.board_id, range, value, display)

  return offset + length, value
end

-- Business Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.business_date = {}

-- Size: Business Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.business_date.size = 8

-- Display: Business Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.business_date.display = function(value)
  return "Business Date: "..value
end

-- Dissect: Business Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.business_date.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.business_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.business_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.business_date, range, value, display)

  return offset + length, value
end

-- Calculation Of Redemption Price End Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.calculation_of_redemption_price_end_date = {}

-- Size: Calculation Of Redemption Price End Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.calculation_of_redemption_price_end_date.size = 8

-- Display: Calculation Of Redemption Price End Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.calculation_of_redemption_price_end_date.display = function(value)
  return "Calculation Of Redemption Price End Date: "..value
end

-- Dissect: Calculation Of Redemption Price End Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.calculation_of_redemption_price_end_date.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.calculation_of_redemption_price_end_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.calculation_of_redemption_price_end_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.calculation_of_redemption_price_end_date, range, value, display)

  return offset + length, value
end

-- Calculation Of Redemption Price Start Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.calculation_of_redemption_price_start_date = {}

-- Size: Calculation Of Redemption Price Start Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.calculation_of_redemption_price_start_date.size = 8

-- Display: Calculation Of Redemption Price Start Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.calculation_of_redemption_price_start_date.display = function(value)
  return "Calculation Of Redemption Price Start Date: "..value
end

-- Dissect: Calculation Of Redemption Price Start Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.calculation_of_redemption_price_start_date.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.calculation_of_redemption_price_start_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.calculation_of_redemption_price_start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.calculation_of_redemption_price_start_date, range, value, display)

  return offset + length, value
end

-- Calculation Time
nextrade_nextrade_etpcommon_nxtascii_v2_12.calculation_time = {}

-- Size: Calculation Time
nextrade_nextrade_etpcommon_nxtascii_v2_12.calculation_time.size = 6

-- Display: Calculation Time
nextrade_nextrade_etpcommon_nxtascii_v2_12.calculation_time.display = function(value)
  if #value < 6 then
    return "Calculation Time: "..value
  end

  return "Calculation Time: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Calculation Time
nextrade_nextrade_etpcommon_nxtascii_v2_12.calculation_time.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.calculation_time.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.calculation_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.calculation_time, range, value, display)

  return offset + length, value
end

-- Capital
nextrade_nextrade_etpcommon_nxtascii_v2_12.capital = {}

-- Size: Capital
nextrade_nextrade_etpcommon_nxtascii_v2_12.capital.size = 22

-- Display: Capital
nextrade_nextrade_etpcommon_nxtascii_v2_12.capital.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etpcommon_nxtascii_v2_12.capital.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Capital: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Capital: "..text.." (expected 3 places)"
  end

  return "Capital: "..text
end

-- Dissect: Capital
nextrade_nextrade_etpcommon_nxtascii_v2_12.capital.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.capital.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.capital, range, value, "Capital: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Capital is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.capital.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.capital, range, value, display)

  return offset + length, value
end

-- Capital Increase Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.capital_increase_type_code = {}

-- Size: Capital Increase Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.capital_increase_type_code.size = 2

-- Display: Capital Increase Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.capital_increase_type_code.display = function(value)
  return "Capital Increase Type Code: "..value
end

-- Dissect: Capital Increase Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.capital_increase_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.capital_increase_type_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.capital_increase_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.capital_increase_type_code, range, value, display)

  return offset + length, value
end

-- Choice On Competitive Trading
nextrade_nextrade_etpcommon_nxtascii_v2_12.choice_on_competitive_trading = {}

-- Size: Choice On Competitive Trading
nextrade_nextrade_etpcommon_nxtascii_v2_12.choice_on_competitive_trading.size = 1

-- Display: Choice On Competitive Trading
nextrade_nextrade_etpcommon_nxtascii_v2_12.choice_on_competitive_trading.display = function(value)
  return "Choice On Competitive Trading: "..value
end

-- Dissect: Choice On Competitive Trading
nextrade_nextrade_etpcommon_nxtascii_v2_12.choice_on_competitive_trading.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.choice_on_competitive_trading.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.choice_on_competitive_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.choice_on_competitive_trading, range, value, display)

  return offset + length, value
end

-- Closing Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price = {}

-- Size: Closing Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price.size = 11

-- Display: Closing Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price.display = function(value)
  return "Closing Price: "..value
end

-- Dissect: Closing Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.closing_price, range, value, "Closing Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Closing Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Closing Price Base Price Of Buy In
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_base_price_of_buy_in = {}

-- Size: Closing Price Base Price Of Buy In
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_base_price_of_buy_in.size = 11

-- Display: Closing Price Base Price Of Buy In
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_base_price_of_buy_in.display = function(value)
  return "Closing Price Base Price Of Buy In: "..value
end

-- Dissect: Closing Price Base Price Of Buy In
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_base_price_of_buy_in.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_base_price_of_buy_in.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.closing_price_base_price_of_buy_in, range, value, "Closing Price Base Price Of Buy In: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Closing Price Base Price Of Buy In is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_base_price_of_buy_in.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.closing_price_base_price_of_buy_in, range, value, display)

  return offset + length, value
end

-- Closing Price Lower Limit Of Buy In
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_lower_limit_of_buy_in = {}

-- Size: Closing Price Lower Limit Of Buy In
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_lower_limit_of_buy_in.size = 11

-- Display: Closing Price Lower Limit Of Buy In
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_lower_limit_of_buy_in.display = function(value)
  return "Closing Price Lower Limit Of Buy In: "..value
end

-- Dissect: Closing Price Lower Limit Of Buy In
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_lower_limit_of_buy_in.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_lower_limit_of_buy_in.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.closing_price_lower_limit_of_buy_in, range, value, "Closing Price Lower Limit Of Buy In: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Closing Price Lower Limit Of Buy In is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_lower_limit_of_buy_in.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.closing_price_lower_limit_of_buy_in, range, value, display)

  return offset + length, value
end

-- Closing Price Trading In The Pre Opening Market
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_trading_in_the_pre_opening_market = {}

-- Size: Closing Price Trading In The Pre Opening Market
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_trading_in_the_pre_opening_market.size = 1

-- Display: Closing Price Trading In The Pre Opening Market
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_trading_in_the_pre_opening_market.display = function(value)
  return "Closing Price Trading In The Pre Opening Market: "..value
end

-- Dissect: Closing Price Trading In The Pre Opening Market
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_trading_in_the_pre_opening_market.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_trading_in_the_pre_opening_market.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_trading_in_the_pre_opening_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.closing_price_trading_in_the_pre_opening_market, range, value, display)

  return offset + length, value
end

-- Closing Price Trading Possibility In The After Hours
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_trading_possibility_in_the_after_hours = {}

-- Size: Closing Price Trading Possibility In The After Hours
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_trading_possibility_in_the_after_hours.size = 1

-- Display: Closing Price Trading Possibility In The After Hours
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_trading_possibility_in_the_after_hours.display = function(value)
  return "Closing Price Trading Possibility In The After Hours: "..value
end

-- Dissect: Closing Price Trading Possibility In The After Hours
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_trading_possibility_in_the_after_hours.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_trading_possibility_in_the_after_hours.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_trading_possibility_in_the_after_hours.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.closing_price_trading_possibility_in_the_after_hours, range, value, display)

  return offset + length, value
end

-- Closing Price Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_type_code = {}

-- Size: Closing Price Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_type_code.size = 1

-- Display: Closing Price Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_type_code.display = function(value)
  return "Closing Price Type Code: "..value
end

-- Dissect: Closing Price Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_type_code.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.closing_price_type_code, range, value, display)

  return offset + length, value
end

-- Closing Price Upper Limit Of Buy In
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_upper_limit_of_buy_in = {}

-- Size: Closing Price Upper Limit Of Buy In
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_upper_limit_of_buy_in.size = 11

-- Display: Closing Price Upper Limit Of Buy In
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_upper_limit_of_buy_in.display = function(value)
  return "Closing Price Upper Limit Of Buy In: "..value
end

-- Dissect: Closing Price Upper Limit Of Buy In
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_upper_limit_of_buy_in.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_upper_limit_of_buy_in.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.closing_price_upper_limit_of_buy_in, range, value, "Closing Price Upper Limit Of Buy In: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Closing Price Upper Limit Of Buy In is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_upper_limit_of_buy_in.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.closing_price_upper_limit_of_buy_in, range, value, display)

  return offset + length, value
end

-- Closing Price Weighted Stock Price Average
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_weighted_stock_price_average = {}

-- Size: Closing Price Weighted Stock Price Average
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_weighted_stock_price_average.size = 11

-- Display: Closing Price Weighted Stock Price Average
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_weighted_stock_price_average.display = function(value)
  return "Closing Price Weighted Stock Price Average: "..value
end

-- Dissect: Closing Price Weighted Stock Price Average
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_weighted_stock_price_average.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_weighted_stock_price_average.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.closing_price_weighted_stock_price_average, range, value, "Closing Price Weighted Stock Price Average: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Closing Price Weighted Stock Price Average is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_weighted_stock_price_average.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.closing_price_weighted_stock_price_average, range, value, display)

  return offset + length, value
end

-- Competition Board Trade Permission Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.competition_board_trade_permission_code = {}

-- Size: Competition Board Trade Permission Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.competition_board_trade_permission_code.size = 5

-- Display: Competition Board Trade Permission Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.competition_board_trade_permission_code.display = function(value)
  return "Competition Board Trade Permission Code: "..value
end

-- Dissect: Competition Board Trade Permission Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.competition_board_trade_permission_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.competition_board_trade_permission_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.competition_board_trade_permission_code, range, value, "Competition Board Trade Permission Code: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Competition Board Trade Permission Code is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.competition_board_trade_permission_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.competition_board_trade_permission_code, range, value, display)

  return offset + length, value
end

-- Conditioned Order Permission Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.conditioned_order_permission_type_code = {}

-- Size: Conditioned Order Permission Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.conditioned_order_permission_type_code.size = 5

-- Display: Conditioned Order Permission Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.conditioned_order_permission_type_code.display = function(value)
  return "Conditioned Order Permission Type Code: "..value
end

-- Dissect: Conditioned Order Permission Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.conditioned_order_permission_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.conditioned_order_permission_type_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.conditioned_order_permission_type_code, range, value, "Conditioned Order Permission Type Code: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Conditioned Order Permission Type Code is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.conditioned_order_permission_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.conditioned_order_permission_type_code, range, value, display)

  return offset + length, value
end

-- Country Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.country_code = {}

-- Size: Country Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.country_code.size = 3

-- Display: Country Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.country_code.display = function(value)
  return "Country Code: "..value
end

-- Dissect: Country Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.country_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.country_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.country_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.country_code, range, value, display)

  return offset + length, value
end

-- Covered Short Selling Trading Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.covered_short_selling_trading_value = {}

-- Size: Covered Short Selling Trading Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.covered_short_selling_trading_value.size = 22

-- Display: Covered Short Selling Trading Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.covered_short_selling_trading_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etpcommon_nxtascii_v2_12.covered_short_selling_trading_value.size):string()
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
nextrade_nextrade_etpcommon_nxtascii_v2_12.covered_short_selling_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.covered_short_selling_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.covered_short_selling_trading_value, range, value, "Covered Short Selling Trading Value: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Covered Short Selling Trading Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.covered_short_selling_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.covered_short_selling_trading_value, range, value, display)

  return offset + length, value
end

-- Covered Short Selling Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.covered_short_selling_trading_volume = {}

-- Size: Covered Short Selling Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.covered_short_selling_trading_volume.size = 12

-- Display: Covered Short Selling Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.covered_short_selling_trading_volume.display = function(value)
  return "Covered Short Selling Trading Volume: "..value
end

-- Dissect: Covered Short Selling Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.covered_short_selling_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.covered_short_selling_trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.covered_short_selling_trading_volume, range, value, "Covered Short Selling Trading Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Covered Short Selling Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.covered_short_selling_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.covered_short_selling_trading_volume, range, value, display)

  return offset + length, value
end

-- Credit Order Possibility
nextrade_nextrade_etpcommon_nxtascii_v2_12.credit_order_possibility = {}

-- Size: Credit Order Possibility
nextrade_nextrade_etpcommon_nxtascii_v2_12.credit_order_possibility.size = 1

-- Display: Credit Order Possibility
nextrade_nextrade_etpcommon_nxtascii_v2_12.credit_order_possibility.display = function(value)
  return "Credit Order Possibility: "..value
end

-- Dissect: Credit Order Possibility
nextrade_nextrade_etpcommon_nxtascii_v2_12.credit_order_possibility.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.credit_order_possibility.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.credit_order_possibility.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.credit_order_possibility, range, value, display)

  return offset + length, value
end

-- Currency Iso Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.currency_iso_code = {}

-- Size: Currency Iso Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.currency_iso_code.size = 3

-- Display: Currency Iso Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.currency_iso_code.display = function(value)
  return "Currency Iso Code: "..value
end

-- Dissect: Currency Iso Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.currency_iso_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.currency_iso_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.currency_iso_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.currency_iso_code, range, value, display)

  return offset + length, value
end

-- Current Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.current_price = {}

-- Size: Current Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.current_price.size = 11

-- Display: Current Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.current_price.display = function(value)
  return "Current Price: "..value
end

-- Dissect: Current Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.current_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.current_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.current_price, range, value, "Current Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Current Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.current_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.current_price, range, value, display)

  return offset + length, value
end

-- Current Time 1 Minute Interval
nextrade_nextrade_etpcommon_nxtascii_v2_12.current_time_1_minute_interval = {}

-- Size: Current Time 1 Minute Interval
nextrade_nextrade_etpcommon_nxtascii_v2_12.current_time_1_minute_interval.size = 4

-- Display: Current Time 1 Minute Interval
nextrade_nextrade_etpcommon_nxtascii_v2_12.current_time_1_minute_interval.display = function(value)
  return "Current Time 1 Minute Interval: "..value
end

-- Dissect: Current Time 1 Minute Interval
nextrade_nextrade_etpcommon_nxtascii_v2_12.current_time_1_minute_interval.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.current_time_1_minute_interval.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.current_time_1_minute_interval.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.current_time_1_minute_interval, range, value, display)

  return offset + length, value
end

-- Delisting Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.delisting_date = {}

-- Size: Delisting Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.delisting_date.size = 8

-- Display: Delisting Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.delisting_date.display = function(value)
  return "Delisting Date: "..value
end

-- Dissect: Delisting Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.delisting_date.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.delisting_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.delisting_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.delisting_date, range, value, display)

  return offset + length, value
end

-- Disclosing Data Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.disclosing_data_type_code = {}

-- Size: Disclosing Data Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.disclosing_data_type_code.size = 3

-- Display: Disclosing Data Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.disclosing_data_type_code.display = function(value)
  return "Disclosing Data Type Code: "..value
end

-- Dissect: Disclosing Data Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.disclosing_data_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.disclosing_data_type_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.disclosing_data_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.disclosing_data_type_code, range, value, display)

  return offset + length, value
end

-- Disclosure Time
nextrade_nextrade_etpcommon_nxtascii_v2_12.disclosure_time = {}

-- Size: Disclosure Time
nextrade_nextrade_etpcommon_nxtascii_v2_12.disclosure_time.size = 9

-- Display: Disclosure Time
nextrade_nextrade_etpcommon_nxtascii_v2_12.disclosure_time.display = function(value)
  return "Disclosure Time: "..value
end

-- Dissect: Disclosure Time
nextrade_nextrade_etpcommon_nxtascii_v2_12.disclosure_time.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.disclosure_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.disclosure_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.disclosure_time, range, value, display)

  return offset + length, value
end

-- Disparate Ratio To Trigger Dynamic Vi
nextrade_nextrade_etpcommon_nxtascii_v2_12.disparate_ratio_to_trigger_dynamic_vi = {}

-- Size: Disparate Ratio To Trigger Dynamic Vi
nextrade_nextrade_etpcommon_nxtascii_v2_12.disparate_ratio_to_trigger_dynamic_vi.size = 13

-- Display: Disparate Ratio To Trigger Dynamic Vi
nextrade_nextrade_etpcommon_nxtascii_v2_12.disparate_ratio_to_trigger_dynamic_vi.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etpcommon_nxtascii_v2_12.disparate_ratio_to_trigger_dynamic_vi.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Disparate Ratio To Trigger Dynamic Vi: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Disparate Ratio To Trigger Dynamic Vi: "..text.." (expected 6 places)"
  end

  return "Disparate Ratio To Trigger Dynamic Vi: "..text
end

-- Dissect: Disparate Ratio To Trigger Dynamic Vi
nextrade_nextrade_etpcommon_nxtascii_v2_12.disparate_ratio_to_trigger_dynamic_vi.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.disparate_ratio_to_trigger_dynamic_vi.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.disparate_ratio_to_trigger_dynamic_vi, range, value, "Disparate Ratio To Trigger Dynamic Vi: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Disparate Ratio To Trigger Dynamic Vi is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.disparate_ratio_to_trigger_dynamic_vi.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.disparate_ratio_to_trigger_dynamic_vi, range, value, display)

  return offset + length, value
end

-- Disparate Ratio To Trigger Static Vi
nextrade_nextrade_etpcommon_nxtascii_v2_12.disparate_ratio_to_trigger_static_vi = {}

-- Size: Disparate Ratio To Trigger Static Vi
nextrade_nextrade_etpcommon_nxtascii_v2_12.disparate_ratio_to_trigger_static_vi.size = 13

-- Display: Disparate Ratio To Trigger Static Vi
nextrade_nextrade_etpcommon_nxtascii_v2_12.disparate_ratio_to_trigger_static_vi.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etpcommon_nxtascii_v2_12.disparate_ratio_to_trigger_static_vi.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Disparate Ratio To Trigger Static Vi: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Disparate Ratio To Trigger Static Vi: "..text.." (expected 6 places)"
  end

  return "Disparate Ratio To Trigger Static Vi: "..text
end

-- Dissect: Disparate Ratio To Trigger Static Vi
nextrade_nextrade_etpcommon_nxtascii_v2_12.disparate_ratio_to_trigger_static_vi.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.disparate_ratio_to_trigger_static_vi.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.disparate_ratio_to_trigger_static_vi, range, value, "Disparate Ratio To Trigger Static Vi: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Disparate Ratio To Trigger Static Vi is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.disparate_ratio_to_trigger_static_vi.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.disparate_ratio_to_trigger_static_vi, range, value, display)

  return offset + length, value
end

-- Distribution Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.distribution_type_code = {}

-- Size: Distribution Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.distribution_type_code.size = 2

-- Display: Distribution Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.distribution_type_code.display = function(value)
  return "Distribution Type Code: "..value
end

-- Dissect: Distribution Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.distribution_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.distribution_type_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.distribution_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.distribution_type_code, range, value, display)

  return offset + length, value
end

-- End Keyword
nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword = {}

-- Size: End Keyword
nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.size = 1

-- Display: End Keyword
nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.display = function(value)
  return "End Keyword: "..value
end

-- Dissect: End Keyword
nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.end_keyword, range, value, display)

  return offset + length, value
end

-- Estimated Trading Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.estimated_trading_price = {}

-- Size: Estimated Trading Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.estimated_trading_price.size = 11

-- Display: Estimated Trading Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.estimated_trading_price.display = function(value)
  return "Estimated Trading Price: "..value
end

-- Dissect: Estimated Trading Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.estimated_trading_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.estimated_trading_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.estimated_trading_price, range, value, "Estimated Trading Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Estimated Trading Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.estimated_trading_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.estimated_trading_price, range, value, display)

  return offset + length, value
end

-- Estimated Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.estimated_trading_volume = {}

-- Size: Estimated Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.estimated_trading_volume.size = 12

-- Display: Estimated Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.estimated_trading_volume.display = function(value)
  return "Estimated Trading Volume: "..value
end

-- Dissect: Estimated Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.estimated_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.estimated_trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.estimated_trading_volume, range, value, "Estimated Trading Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Estimated Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.estimated_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.estimated_trading_volume, range, value, display)

  return offset + length, value
end

-- Etf Replication Methods Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.etf_replication_methods_type_code = {}

-- Size: Etf Replication Methods Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.etf_replication_methods_type_code.size = 1

-- Display: Etf Replication Methods Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.etf_replication_methods_type_code.display = function(value)
  return "Etf Replication Methods Type Code: "..value
end

-- Dissect: Etf Replication Methods Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.etf_replication_methods_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.etf_replication_methods_type_code.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.etf_replication_methods_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.etf_replication_methods_type_code, range, value, display)

  return offset + length, value
end

-- Etf Tracking Difference
nextrade_nextrade_etpcommon_nxtascii_v2_12.etf_tracking_difference = {}

-- Size: Etf Tracking Difference
nextrade_nextrade_etpcommon_nxtascii_v2_12.etf_tracking_difference.size = 13

-- Display: Etf Tracking Difference
nextrade_nextrade_etpcommon_nxtascii_v2_12.etf_tracking_difference.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etpcommon_nxtascii_v2_12.etf_tracking_difference.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Etf Tracking Difference: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Etf Tracking Difference: "..text.." (expected 6 places)"
  end

  return "Etf Tracking Difference: "..text
end

-- Dissect: Etf Tracking Difference
nextrade_nextrade_etpcommon_nxtascii_v2_12.etf_tracking_difference.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.etf_tracking_difference.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.etf_tracking_difference, range, value, "Etf Tracking Difference: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Etf Tracking Difference is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.etf_tracking_difference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.etf_tracking_difference, range, value, display)

  return offset + length, value
end

-- Etp Product Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.etp_product_type_code = {}

-- Size: Etp Product Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.etp_product_type_code.size = 1

-- Display: Etp Product Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.etp_product_type_code.display = function(value)
  return "Etp Product Type Code: "..value
end

-- Dissect: Etp Product Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.etp_product_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.etp_product_type_code.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.etp_product_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.etp_product_type_code, range, value, display)

  return offset + length, value
end

-- Event End Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.event_end_date = {}

-- Size: Event End Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.event_end_date.size = 8

-- Display: Event End Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.event_end_date.display = function(value)
  return "Event End Date: "..value
end

-- Dissect: Event End Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.event_end_date.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.event_end_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.event_end_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.event_end_date, range, value, display)

  return offset + length, value
end

-- Event Reason Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.event_reason_code = {}

-- Size: Event Reason Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.event_reason_code.size = 4

-- Display: Event Reason Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.event_reason_code.display = function(value)
  return "Event Reason Code: "..value
end

-- Dissect: Event Reason Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.event_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.event_reason_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.event_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.event_reason_code, range, value, display)

  return offset + length, value
end

-- Event Start Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.event_start_date = {}

-- Size: Event Start Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.event_start_date.size = 8

-- Display: Event Start Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.event_start_date.display = function(value)
  return "Event Start Date: "..value
end

-- Dissect: Event Start Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.event_start_date.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.event_start_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.event_start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.event_start_date, range, value, display)

  return offset + length, value
end

-- Event Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.event_type_code = {}

-- Size: Event Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.event_type_code.size = 2

-- Display: Event Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.event_type_code.display = function(value)
  return "Event Type Code: "..value
end

-- Dissect: Event Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.event_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.event_type_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.event_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.event_type_code, range, value, display)

  return offset + length, value
end

-- Exercise Price Of Elw Or Bw
nextrade_nextrade_etpcommon_nxtascii_v2_12.exercise_price_of_elw_or_bw = {}

-- Size: Exercise Price Of Elw Or Bw
nextrade_nextrade_etpcommon_nxtascii_v2_12.exercise_price_of_elw_or_bw.size = 13

-- Display: Exercise Price Of Elw Or Bw
nextrade_nextrade_etpcommon_nxtascii_v2_12.exercise_price_of_elw_or_bw.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etpcommon_nxtascii_v2_12.exercise_price_of_elw_or_bw.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Exercise Price Of Elw Or Bw: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Exercise Price Of Elw Or Bw: "..text.." (expected 3 places)"
  end

  return "Exercise Price Of Elw Or Bw: "..text
end

-- Dissect: Exercise Price Of Elw Or Bw
nextrade_nextrade_etpcommon_nxtascii_v2_12.exercise_price_of_elw_or_bw.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.exercise_price_of_elw_or_bw.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.exercise_price_of_elw_or_bw, range, value, "Exercise Price Of Elw Or Bw: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Exercise Price Of Elw Or Bw is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.exercise_price_of_elw_or_bw.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.exercise_price_of_elw_or_bw, range, value, display)

  return offset + length, value
end

-- Exercising Period
nextrade_nextrade_etpcommon_nxtascii_v2_12.exercising_period = {}

-- Size: Exercising Period
nextrade_nextrade_etpcommon_nxtascii_v2_12.exercising_period.size = 8

-- Display: Exercising Period
nextrade_nextrade_etpcommon_nxtascii_v2_12.exercising_period.display = function(value)
  return "Exercising Period: "..value
end

-- Dissect: Exercising Period
nextrade_nextrade_etpcommon_nxtascii_v2_12.exercising_period.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.exercising_period.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.exercising_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.exercising_period, range, value, display)

  return offset + length, value
end

-- Expected Time Of Expanding Price Limit Range
nextrade_nextrade_etpcommon_nxtascii_v2_12.expected_time_of_expanding_price_limit_range = {}

-- Size: Expected Time Of Expanding Price Limit Range
nextrade_nextrade_etpcommon_nxtascii_v2_12.expected_time_of_expanding_price_limit_range.size = 9

-- Display: Expected Time Of Expanding Price Limit Range
nextrade_nextrade_etpcommon_nxtascii_v2_12.expected_time_of_expanding_price_limit_range.display = function(value)
  return "Expected Time Of Expanding Price Limit Range: "..value
end

-- Dissect: Expected Time Of Expanding Price Limit Range
nextrade_nextrade_etpcommon_nxtascii_v2_12.expected_time_of_expanding_price_limit_range.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.expected_time_of_expanding_price_limit_range.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.expected_time_of_expanding_price_limit_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.expected_time_of_expanding_price_limit_range, range, value, display)

  return offset + length, value
end

-- Expiration Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.expiration_date = {}

-- Size: Expiration Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.expiration_date.size = 8

-- Display: Expiration Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.expiration_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Expiration Date For Right
nextrade_nextrade_etpcommon_nxtascii_v2_12.expiration_date_for_right = {}

-- Size: Expiration Date For Right
nextrade_nextrade_etpcommon_nxtascii_v2_12.expiration_date_for_right.size = 8

-- Display: Expiration Date For Right
nextrade_nextrade_etpcommon_nxtascii_v2_12.expiration_date_for_right.display = function(value)
  return "Expiration Date For Right: "..value
end

-- Dissect: Expiration Date For Right
nextrade_nextrade_etpcommon_nxtascii_v2_12.expiration_date_for_right.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.expiration_date_for_right.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.expiration_date_for_right.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.expiration_date_for_right, range, value, display)

  return offset + length, value
end

-- Extended Market Bid Ask Spread Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.extended_market_bid_ask_spread_value = {}

-- Size: Extended Market Bid Ask Spread Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.extended_market_bid_ask_spread_value.size = 22

-- Display: Extended Market Bid Ask Spread Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.extended_market_bid_ask_spread_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etpcommon_nxtascii_v2_12.extended_market_bid_ask_spread_value.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Extended Market Bid Ask Spread Value: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 8 then
    return "Extended Market Bid Ask Spread Value: "..text.." (expected 8 places)"
  end

  return "Extended Market Bid Ask Spread Value: "..text
end

-- Dissect: Extended Market Bid Ask Spread Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.extended_market_bid_ask_spread_value.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.extended_market_bid_ask_spread_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.extended_market_bid_ask_spread_value, range, value, "Extended Market Bid Ask Spread Value: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Extended Market Bid Ask Spread Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.extended_market_bid_ask_spread_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.extended_market_bid_ask_spread_value, range, value, display)

  return offset + length, value
end

-- Filler 4
nextrade_nextrade_etpcommon_nxtascii_v2_12.filler_4 = {}

-- Size: Filler 4
nextrade_nextrade_etpcommon_nxtascii_v2_12.filler_4.size = 4

-- Display: Filler 4
nextrade_nextrade_etpcommon_nxtascii_v2_12.filler_4.display = function(value)
  return "Filler 4: "..value
end

-- Dissect: Filler 4
nextrade_nextrade_etpcommon_nxtascii_v2_12.filler_4.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.filler_4.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.filler_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.filler_4, range, value, display)

  return offset + length, value
end

-- Final Ask Bid Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.final_ask_bid_type_code = {}

-- Size: Final Ask Bid Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.final_ask_bid_type_code.size = 1

-- Display: Final Ask Bid Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.final_ask_bid_type_code.display = function(value)
  return "Final Ask Bid Type Code: "..value
end

-- Dissect: Final Ask Bid Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.final_ask_bid_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.final_ask_bid_type_code.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.final_ask_bid_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.final_ask_bid_type_code, range, value, display)

  return offset + length, value
end

-- First Best Order Permission Type
nextrade_nextrade_etpcommon_nxtascii_v2_12.first_best_order_permission_type = {}

-- Size: First Best Order Permission Type
nextrade_nextrade_etpcommon_nxtascii_v2_12.first_best_order_permission_type.size = 5

-- Display: First Best Order Permission Type
nextrade_nextrade_etpcommon_nxtascii_v2_12.first_best_order_permission_type.display = function(value)
  return "First Best Order Permission Type: "..value
end

-- Dissect: First Best Order Permission Type
nextrade_nextrade_etpcommon_nxtascii_v2_12.first_best_order_permission_type.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.first_best_order_permission_type.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.first_best_order_permission_type, range, value, "First Best Order Permission Type: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "First Best Order Permission Type is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.first_best_order_permission_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.first_best_order_permission_type, range, value, display)

  return offset + length, value
end

-- Group Number
nextrade_nextrade_etpcommon_nxtascii_v2_12.group_number = {}

-- Size: Group Number
nextrade_nextrade_etpcommon_nxtascii_v2_12.group_number.size = 5

-- Display: Group Number
nextrade_nextrade_etpcommon_nxtascii_v2_12.group_number.display = function(value)
  return "Group Number: "..value
end

-- Dissect: Group Number
nextrade_nextrade_etpcommon_nxtascii_v2_12.group_number.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.group_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.group_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.group_number, range, value, display)

  return offset + length, value
end

-- Highest Order Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.highest_order_price = {}

-- Size: Highest Order Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.highest_order_price.size = 11

-- Display: Highest Order Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.highest_order_price.display = function(value)
  return "Highest Order Price: "..value
end

-- Dissect: Highest Order Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.highest_order_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.highest_order_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.highest_order_price, range, value, "Highest Order Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Highest Order Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.highest_order_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.highest_order_price, range, value, display)

  return offset + length, value
end

-- Index Asset Classification Id 1
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_asset_classification_id_1 = {}

-- Size: Index Asset Classification Id 1
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_asset_classification_id_1.size = 6

-- Display: Index Asset Classification Id 1
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_asset_classification_id_1.display = function(value)
  return "Index Asset Classification Id 1: "..value
end

-- Dissect: Index Asset Classification Id 1
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_asset_classification_id_1.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.index_asset_classification_id_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.index_asset_classification_id_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.index_asset_classification_id_1, range, value, display)

  return offset + length, value
end

-- Index Asset Classification Id 2
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_asset_classification_id_2 = {}

-- Size: Index Asset Classification Id 2
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_asset_classification_id_2.size = 6

-- Display: Index Asset Classification Id 2
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_asset_classification_id_2.display = function(value)
  return "Index Asset Classification Id 2: "..value
end

-- Dissect: Index Asset Classification Id 2
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_asset_classification_id_2.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.index_asset_classification_id_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.index_asset_classification_id_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.index_asset_classification_id_2, range, value, display)

  return offset + length, value
end

-- Index Calculation Institution Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_calculation_institution_type_code = {}

-- Size: Index Calculation Institution Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_calculation_institution_type_code.size = 2

-- Display: Index Calculation Institution Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_calculation_institution_type_code.display = function(value)
  return "Index Calculation Institution Type Code: "..value
end

-- Dissect: Index Calculation Institution Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_calculation_institution_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.index_calculation_institution_type_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.index_calculation_institution_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.index_calculation_institution_type_code, range, value, display)

  return offset + length, value
end

-- Index Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_id = {}

-- Size: Index Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_id.size = 6

-- Display: Index Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_id.display = function(value)
  return "Index Id: "..value
end

-- Dissect: Index Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_id.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.index_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.index_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.index_id, range, value, display)

  return offset + length, value
end

-- Index Leverage Inverse Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_leverage_inverse_type_code = {}

-- Size: Index Leverage Inverse Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_leverage_inverse_type_code.size = 2

-- Display: Index Leverage Inverse Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_leverage_inverse_type_code.display = function(value)
  return "Index Leverage Inverse Type Code: "..value
end

-- Dissect: Index Leverage Inverse Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_leverage_inverse_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.index_leverage_inverse_type_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.index_leverage_inverse_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.index_leverage_inverse_type_code, range, value, display)

  return offset + length, value
end

-- Index Market Classification Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_market_classification_id = {}

-- Size: Index Market Classification Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_market_classification_id.size = 6

-- Display: Index Market Classification Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_market_classification_id.display = function(value)
  return "Index Market Classification Id: "..value
end

-- Dissect: Index Market Classification Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_market_classification_id.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.index_market_classification_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.index_market_classification_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.index_market_classification_id, range, value, display)

  return offset + length, value
end

-- Index Name
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_name = {}

-- Size: Index Name
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_name.size = 80

-- Display: Index Name
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_name.display = function(value)
  return "Index Name: "..value
end

-- Dissect: Index Name
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_name.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.index_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.index_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.index_name, range, value, display)

  return offset + length, value
end

-- Index Name In En
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_name_in_en = {}

-- Size: Index Name In En
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_name_in_en.size = 80

-- Display: Index Name In En
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_name_in_en.display = function(value)
  return "Index Name In En: "..value
end

-- Dissect: Index Name In En
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_name_in_en.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.index_name_in_en.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.index_name_in_en.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.index_name_in_en, range, value, display)

  return offset + length, value
end

-- Index Sequence Number
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_sequence_number = {}

-- Size: Index Sequence Number
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_sequence_number.size = 3

-- Display: Index Sequence Number
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_sequence_number.display = function(value)
  return "Index Sequence Number: "..value
end

-- Dissect: Index Sequence Number
nextrade_nextrade_etpcommon_nxtascii_v2_12.index_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.index_sequence_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.index_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.index_sequence_number, range, value, display)

  return offset + length, value
end

-- Industry Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.industry_id = {}

-- Size: Industry Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.industry_id.size = 10

-- Display: Industry Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.industry_id.display = function(value)
  return "Industry Id: "..value
end

-- Dissect: Industry Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.industry_id.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.industry_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.industry_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.industry_id, range, value, display)

  return offset + length, value
end

-- Investment Caution Issue
nextrade_nextrade_etpcommon_nxtascii_v2_12.investment_caution_issue = {}

-- Size: Investment Caution Issue
nextrade_nextrade_etpcommon_nxtascii_v2_12.investment_caution_issue.size = 1

-- Display: Investment Caution Issue
nextrade_nextrade_etpcommon_nxtascii_v2_12.investment_caution_issue.display = function(value)
  return "Investment Caution Issue: "..value
end

-- Dissect: Investment Caution Issue
nextrade_nextrade_etpcommon_nxtascii_v2_12.investment_caution_issue.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.investment_caution_issue.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.investment_caution_issue.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.investment_caution_issue, range, value, display)

  return offset + length, value
end

-- Investment Institution Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.investment_institution_type_code = {}

-- Size: Investment Institution Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.investment_institution_type_code.size = 1

-- Display: Investment Institution Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.investment_institution_type_code.display = function(value)
  return "Investment Institution Type Code: "..value
end

-- Dissect: Investment Institution Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.investment_institution_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.investment_institution_type_code.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.investment_institution_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.investment_institution_type_code, range, value, display)

  return offset + length, value
end

-- Investment Precaution Issue
nextrade_nextrade_etpcommon_nxtascii_v2_12.investment_precaution_issue = {}

-- Size: Investment Precaution Issue
nextrade_nextrade_etpcommon_nxtascii_v2_12.investment_precaution_issue.size = 1

-- Display: Investment Precaution Issue
nextrade_nextrade_etpcommon_nxtascii_v2_12.investment_precaution_issue.display = function(value)
  return "Investment Precaution Issue: "..value
end

-- Dissect: Investment Precaution Issue
nextrade_nextrade_etpcommon_nxtascii_v2_12.investment_precaution_issue.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.investment_precaution_issue.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.investment_precaution_issue.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.investment_precaution_issue, range, value, display)

  return offset + length, value
end

-- Investor Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.investor_code = {}

-- Size: Investor Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.investor_code.size = 4

-- Display: Investor Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.investor_code.display = function(value)
  return "Investor Code: "..value
end

-- Dissect: Investor Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.investor_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.investor_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.investor_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.investor_code, range, value, display)

  return offset + length, value
end

-- Ipo Underwriter Member Number
nextrade_nextrade_etpcommon_nxtascii_v2_12.ipo_underwriter_member_number = {}

-- Size: Ipo Underwriter Member Number
nextrade_nextrade_etpcommon_nxtascii_v2_12.ipo_underwriter_member_number.size = 5

-- Display: Ipo Underwriter Member Number
nextrade_nextrade_etpcommon_nxtascii_v2_12.ipo_underwriter_member_number.display = function(value)
  return "Ipo Underwriter Member Number: "..value
end

-- Dissect: Ipo Underwriter Member Number
nextrade_nextrade_etpcommon_nxtascii_v2_12.ipo_underwriter_member_number.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.ipo_underwriter_member_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.ipo_underwriter_member_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.ipo_underwriter_member_number, range, value, display)

  return offset + length, value
end

-- Isin Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code = {}

-- Size: Isin Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.size = 12

-- Display: Isin Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.display = function(value)
  return "Isin Code: "..value
end

-- Dissect: Isin Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.isin_code, range, value, display)

  return offset + length, value
end

-- Isin Code Of A Common Stock
nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code_of_a_common_stock = {}

-- Size: Isin Code Of A Common Stock
nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code_of_a_common_stock.size = 12

-- Display: Isin Code Of A Common Stock
nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code_of_a_common_stock.display = function(value)
  return "Isin Code Of A Common Stock: "..value
end

-- Dissect: Isin Code Of A Common Stock
nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code_of_a_common_stock.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code_of_a_common_stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code_of_a_common_stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.isin_code_of_a_common_stock, range, value, display)

  return offset + length, value
end

-- Issue For Administration
nextrade_nextrade_etpcommon_nxtascii_v2_12.issue_for_administration = {}

-- Size: Issue For Administration
nextrade_nextrade_etpcommon_nxtascii_v2_12.issue_for_administration.size = 1

-- Display: Issue For Administration
nextrade_nextrade_etpcommon_nxtascii_v2_12.issue_for_administration.display = function(value)
  return "Issue For Administration: "..value
end

-- Dissect: Issue For Administration
nextrade_nextrade_etpcommon_nxtascii_v2_12.issue_for_administration.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.issue_for_administration.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.issue_for_administration.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.issue_for_administration, range, value, display)

  return offset + length, value
end

-- Issuing Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.issuing_price = {}

-- Size: Issuing Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.issuing_price.size = 11

-- Display: Issuing Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.issuing_price.display = function(value)
  return "Issuing Price: "..value
end

-- Dissect: Issuing Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.issuing_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.issuing_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.issuing_price, range, value, "Issuing Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Issuing Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.issuing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.issuing_price, range, value, display)

  return offset + length, value
end

-- Knock Out Elw Triggering Time
nextrade_nextrade_etpcommon_nxtascii_v2_12.knock_out_elw_triggering_time = {}

-- Size: Knock Out Elw Triggering Time
nextrade_nextrade_etpcommon_nxtascii_v2_12.knock_out_elw_triggering_time.size = 9

-- Display: Knock Out Elw Triggering Time
nextrade_nextrade_etpcommon_nxtascii_v2_12.knock_out_elw_triggering_time.display = function(value)
  return "Knock Out Elw Triggering Time: "..value
end

-- Dissect: Knock Out Elw Triggering Time
nextrade_nextrade_etpcommon_nxtascii_v2_12.knock_out_elw_triggering_time.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.knock_out_elw_triggering_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.knock_out_elw_triggering_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.knock_out_elw_triggering_time, range, value, display)

  return offset + length, value
end

-- Knock Out Elw Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.knock_out_elw_type_code = {}

-- Size: Knock Out Elw Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.knock_out_elw_type_code.size = 1

-- Display: Knock Out Elw Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.knock_out_elw_type_code.display = function(value)
  return "Knock Out Elw Type Code: "..value
end

-- Dissect: Knock Out Elw Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.knock_out_elw_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.knock_out_elw_type_code.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.knock_out_elw_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.knock_out_elw_type_code, range, value, display)

  return offset + length, value
end

-- Korea Corporate Governance Stock Price Index Kogi
nextrade_nextrade_etpcommon_nxtascii_v2_12.korea_corporate_governance_stock_price_index_kogi = {}

-- Size: Korea Corporate Governance Stock Price Index Kogi
nextrade_nextrade_etpcommon_nxtascii_v2_12.korea_corporate_governance_stock_price_index_kogi.size = 1

-- Display: Korea Corporate Governance Stock Price Index Kogi
nextrade_nextrade_etpcommon_nxtascii_v2_12.korea_corporate_governance_stock_price_index_kogi.display = function(value)
  return "Korea Corporate Governance Stock Price Index Kogi: "..value
end

-- Dissect: Korea Corporate Governance Stock Price Index Kogi
nextrade_nextrade_etpcommon_nxtascii_v2_12.korea_corporate_governance_stock_price_index_kogi.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.korea_corporate_governance_stock_price_index_kogi.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.korea_corporate_governance_stock_price_index_kogi.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.korea_corporate_governance_stock_price_index_kogi, range, value, display)

  return offset + length, value
end

-- Limit On Competitive Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.limit_on_competitive_trading_volume = {}

-- Size: Limit On Competitive Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.limit_on_competitive_trading_volume.size = 1

-- Display: Limit On Competitive Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.limit_on_competitive_trading_volume.display = function(value)
  return "Limit On Competitive Trading Volume: "..value
end

-- Dissect: Limit On Competitive Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.limit_on_competitive_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.limit_on_competitive_trading_volume.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.limit_on_competitive_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.limit_on_competitive_trading_volume, range, value, display)

  return offset + length, value
end

-- Limit Order Permission Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.limit_order_permission_type_code = {}

-- Size: Limit Order Permission Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.limit_order_permission_type_code.size = 5

-- Display: Limit Order Permission Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.limit_order_permission_type_code.display = function(value)
  return "Limit Order Permission Type Code: "..value
end

-- Dissect: Limit Order Permission Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.limit_order_permission_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.limit_order_permission_type_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.limit_order_permission_type_code, range, value, "Limit Order Permission Type Code: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Limit Order Permission Type Code is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.limit_order_permission_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.limit_order_permission_type_code, range, value, display)

  return offset + length, value
end

-- Liquidation Trade
nextrade_nextrade_etpcommon_nxtascii_v2_12.liquidation_trade = {}

-- Size: Liquidation Trade
nextrade_nextrade_etpcommon_nxtascii_v2_12.liquidation_trade.size = 1

-- Display: Liquidation Trade
nextrade_nextrade_etpcommon_nxtascii_v2_12.liquidation_trade.display = function(value)
  return "Liquidation Trade: "..value
end

-- Dissect: Liquidation Trade
nextrade_nextrade_etpcommon_nxtascii_v2_12.liquidation_trade.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.liquidation_trade.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.liquidation_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.liquidation_trade, range, value, display)

  return offset + length, value
end

-- Listing Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.listing_date = {}

-- Size: Listing Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.listing_date.size = 8

-- Display: Listing Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.listing_date.display = function(value)
  return "Listing Date: "..value
end

-- Dissect: Listing Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.listing_date.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.listing_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.listing_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.listing_date, range, value, display)

  return offset + length, value
end

-- Lot Size After Hours Trading
nextrade_nextrade_etpcommon_nxtascii_v2_12.lot_size_after_hours_trading = {}

-- Size: Lot Size After Hours Trading
nextrade_nextrade_etpcommon_nxtascii_v2_12.lot_size_after_hours_trading.size = 11

-- Display: Lot Size After Hours Trading
nextrade_nextrade_etpcommon_nxtascii_v2_12.lot_size_after_hours_trading.display = function(value)
  return "Lot Size After Hours Trading: "..value
end

-- Dissect: Lot Size After Hours Trading
nextrade_nextrade_etpcommon_nxtascii_v2_12.lot_size_after_hours_trading.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.lot_size_after_hours_trading.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lot_size_after_hours_trading, range, value, "Lot Size After Hours Trading: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Lot Size After Hours Trading is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.lot_size_after_hours_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lot_size_after_hours_trading, range, value, display)

  return offset + length, value
end

-- Low Liquidity
nextrade_nextrade_etpcommon_nxtascii_v2_12.low_liquidity = {}

-- Size: Low Liquidity
nextrade_nextrade_etpcommon_nxtascii_v2_12.low_liquidity.size = 1

-- Display: Low Liquidity
nextrade_nextrade_etpcommon_nxtascii_v2_12.low_liquidity.display = function(value)
  return "Low Liquidity: "..value
end

-- Dissect: Low Liquidity
nextrade_nextrade_etpcommon_nxtascii_v2_12.low_liquidity.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.low_liquidity.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.low_liquidity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.low_liquidity, range, value, display)

  return offset + length, value
end

-- Lower Limit Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.lower_limit_price = {}

-- Size: Lower Limit Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.lower_limit_price.size = 11

-- Display: Lower Limit Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.lower_limit_price.display = function(value)
  return "Lower Limit Price: "..value
end

-- Dissect: Lower Limit Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.lower_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.lower_limit_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lower_limit_price, range, value, "Lower Limit Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Lower Limit Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.lower_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lower_limit_price, range, value, display)

  return offset + length, value
end

-- Lower Limit Price On The Single Price Trade In The Off Hours Session
nextrade_nextrade_etpcommon_nxtascii_v2_12.lower_limit_price_on_the_single_price_trade_in_the_off_hours_session = {}

-- Size: Lower Limit Price On The Single Price Trade In The Off Hours Session
nextrade_nextrade_etpcommon_nxtascii_v2_12.lower_limit_price_on_the_single_price_trade_in_the_off_hours_session.size = 11

-- Display: Lower Limit Price On The Single Price Trade In The Off Hours Session
nextrade_nextrade_etpcommon_nxtascii_v2_12.lower_limit_price_on_the_single_price_trade_in_the_off_hours_session.display = function(value)
  return "Lower Limit Price On The Single Price Trade In The Off Hours Session: "..value
end

-- Dissect: Lower Limit Price On The Single Price Trade In The Off Hours Session
nextrade_nextrade_etpcommon_nxtascii_v2_12.lower_limit_price_on_the_single_price_trade_in_the_off_hours_session.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.lower_limit_price_on_the_single_price_trade_in_the_off_hours_session.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lower_limit_price_on_the_single_price_trade_in_the_off_hours_session, range, value, "Lower Limit Price On The Single Price Trade In The Off Hours Session: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Lower Limit Price On The Single Price Trade In The Off Hours Session is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.lower_limit_price_on_the_single_price_trade_in_the_off_hours_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lower_limit_price_on_the_single_price_trade_in_the_off_hours_session, range, value, display)

  return offset + length, value
end

-- Lowest Order Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.lowest_order_price = {}

-- Size: Lowest Order Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.lowest_order_price.size = 11

-- Display: Lowest Order Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.lowest_order_price.display = function(value)
  return "Lowest Order Price: "..value
end

-- Dissect: Lowest Order Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.lowest_order_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.lowest_order_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lowest_order_price, range, value, "Lowest Order Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Lowest Order Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.lowest_order_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lowest_order_price, range, value, display)

  return offset + length, value
end

-- Lp Ask Level 1 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_1_volume = {}

-- Size: Lp Ask Level 1 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_1_volume.size = 12

-- Display: Lp Ask Level 1 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_1_volume.display = function(value)
  return "Lp Ask Level 1 Volume: "..value
end

-- Dissect: Lp Ask Level 1 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_1_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_1_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_ask_level_1_volume, range, value, "Lp Ask Level 1 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Lp Ask Level 1 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_1_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_ask_level_1_volume, range, value, display)

  return offset + length, value
end

-- Lp Ask Level 10 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_10_volume = {}

-- Size: Lp Ask Level 10 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_10_volume.size = 12

-- Display: Lp Ask Level 10 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_10_volume.display = function(value)
  return "Lp Ask Level 10 Volume: "..value
end

-- Dissect: Lp Ask Level 10 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_10_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_10_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_ask_level_10_volume, range, value, "Lp Ask Level 10 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Lp Ask Level 10 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_10_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_ask_level_10_volume, range, value, display)

  return offset + length, value
end

-- Lp Ask Level 2 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_2_volume = {}

-- Size: Lp Ask Level 2 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_2_volume.size = 12

-- Display: Lp Ask Level 2 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_2_volume.display = function(value)
  return "Lp Ask Level 2 Volume: "..value
end

-- Dissect: Lp Ask Level 2 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_2_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_2_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_ask_level_2_volume, range, value, "Lp Ask Level 2 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Lp Ask Level 2 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_2_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_ask_level_2_volume, range, value, display)

  return offset + length, value
end

-- Lp Ask Level 3 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_3_volume = {}

-- Size: Lp Ask Level 3 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_3_volume.size = 12

-- Display: Lp Ask Level 3 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_3_volume.display = function(value)
  return "Lp Ask Level 3 Volume: "..value
end

-- Dissect: Lp Ask Level 3 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_3_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_3_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_ask_level_3_volume, range, value, "Lp Ask Level 3 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Lp Ask Level 3 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_3_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_ask_level_3_volume, range, value, display)

  return offset + length, value
end

-- Lp Ask Level 4 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_4_volume = {}

-- Size: Lp Ask Level 4 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_4_volume.size = 12

-- Display: Lp Ask Level 4 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_4_volume.display = function(value)
  return "Lp Ask Level 4 Volume: "..value
end

-- Dissect: Lp Ask Level 4 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_4_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_4_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_ask_level_4_volume, range, value, "Lp Ask Level 4 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Lp Ask Level 4 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_4_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_ask_level_4_volume, range, value, display)

  return offset + length, value
end

-- Lp Ask Level 5 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_5_volume = {}

-- Size: Lp Ask Level 5 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_5_volume.size = 12

-- Display: Lp Ask Level 5 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_5_volume.display = function(value)
  return "Lp Ask Level 5 Volume: "..value
end

-- Dissect: Lp Ask Level 5 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_5_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_5_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_ask_level_5_volume, range, value, "Lp Ask Level 5 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Lp Ask Level 5 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_5_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_ask_level_5_volume, range, value, display)

  return offset + length, value
end

-- Lp Ask Level 6 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_6_volume = {}

-- Size: Lp Ask Level 6 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_6_volume.size = 12

-- Display: Lp Ask Level 6 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_6_volume.display = function(value)
  return "Lp Ask Level 6 Volume: "..value
end

-- Dissect: Lp Ask Level 6 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_6_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_6_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_ask_level_6_volume, range, value, "Lp Ask Level 6 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Lp Ask Level 6 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_6_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_ask_level_6_volume, range, value, display)

  return offset + length, value
end

-- Lp Ask Level 7 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_7_volume = {}

-- Size: Lp Ask Level 7 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_7_volume.size = 12

-- Display: Lp Ask Level 7 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_7_volume.display = function(value)
  return "Lp Ask Level 7 Volume: "..value
end

-- Dissect: Lp Ask Level 7 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_7_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_7_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_ask_level_7_volume, range, value, "Lp Ask Level 7 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Lp Ask Level 7 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_7_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_ask_level_7_volume, range, value, display)

  return offset + length, value
end

-- Lp Ask Level 8 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_8_volume = {}

-- Size: Lp Ask Level 8 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_8_volume.size = 12

-- Display: Lp Ask Level 8 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_8_volume.display = function(value)
  return "Lp Ask Level 8 Volume: "..value
end

-- Dissect: Lp Ask Level 8 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_8_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_8_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_ask_level_8_volume, range, value, "Lp Ask Level 8 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Lp Ask Level 8 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_8_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_ask_level_8_volume, range, value, display)

  return offset + length, value
end

-- Lp Ask Level 9 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_9_volume = {}

-- Size: Lp Ask Level 9 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_9_volume.size = 12

-- Display: Lp Ask Level 9 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_9_volume.display = function(value)
  return "Lp Ask Level 9 Volume: "..value
end

-- Dissect: Lp Ask Level 9 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_9_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_9_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_ask_level_9_volume, range, value, "Lp Ask Level 9 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Lp Ask Level 9 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_9_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_ask_level_9_volume, range, value, display)

  return offset + length, value
end

-- Lp Bid Level 1 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_1_volume = {}

-- Size: Lp Bid Level 1 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_1_volume.size = 12

-- Display: Lp Bid Level 1 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_1_volume.display = function(value)
  return "Lp Bid Level 1 Volume: "..value
end

-- Dissect: Lp Bid Level 1 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_1_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_1_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_bid_level_1_volume, range, value, "Lp Bid Level 1 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Lp Bid Level 1 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_1_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_bid_level_1_volume, range, value, display)

  return offset + length, value
end

-- Lp Bid Level 10 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_10_volume = {}

-- Size: Lp Bid Level 10 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_10_volume.size = 12

-- Display: Lp Bid Level 10 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_10_volume.display = function(value)
  return "Lp Bid Level 10 Volume: "..value
end

-- Dissect: Lp Bid Level 10 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_10_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_10_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_bid_level_10_volume, range, value, "Lp Bid Level 10 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Lp Bid Level 10 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_10_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_bid_level_10_volume, range, value, display)

  return offset + length, value
end

-- Lp Bid Level 2 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_2_volume = {}

-- Size: Lp Bid Level 2 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_2_volume.size = 12

-- Display: Lp Bid Level 2 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_2_volume.display = function(value)
  return "Lp Bid Level 2 Volume: "..value
end

-- Dissect: Lp Bid Level 2 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_2_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_2_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_bid_level_2_volume, range, value, "Lp Bid Level 2 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Lp Bid Level 2 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_2_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_bid_level_2_volume, range, value, display)

  return offset + length, value
end

-- Lp Bid Level 3 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_3_volume = {}

-- Size: Lp Bid Level 3 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_3_volume.size = 12

-- Display: Lp Bid Level 3 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_3_volume.display = function(value)
  return "Lp Bid Level 3 Volume: "..value
end

-- Dissect: Lp Bid Level 3 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_3_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_3_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_bid_level_3_volume, range, value, "Lp Bid Level 3 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Lp Bid Level 3 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_3_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_bid_level_3_volume, range, value, display)

  return offset + length, value
end

-- Lp Bid Level 4 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_4_volume = {}

-- Size: Lp Bid Level 4 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_4_volume.size = 12

-- Display: Lp Bid Level 4 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_4_volume.display = function(value)
  return "Lp Bid Level 4 Volume: "..value
end

-- Dissect: Lp Bid Level 4 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_4_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_4_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_bid_level_4_volume, range, value, "Lp Bid Level 4 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Lp Bid Level 4 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_4_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_bid_level_4_volume, range, value, display)

  return offset + length, value
end

-- Lp Bid Level 5 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_5_volume = {}

-- Size: Lp Bid Level 5 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_5_volume.size = 12

-- Display: Lp Bid Level 5 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_5_volume.display = function(value)
  return "Lp Bid Level 5 Volume: "..value
end

-- Dissect: Lp Bid Level 5 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_5_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_5_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_bid_level_5_volume, range, value, "Lp Bid Level 5 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Lp Bid Level 5 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_5_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_bid_level_5_volume, range, value, display)

  return offset + length, value
end

-- Lp Bid Level 6 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_6_volume = {}

-- Size: Lp Bid Level 6 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_6_volume.size = 12

-- Display: Lp Bid Level 6 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_6_volume.display = function(value)
  return "Lp Bid Level 6 Volume: "..value
end

-- Dissect: Lp Bid Level 6 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_6_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_6_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_bid_level_6_volume, range, value, "Lp Bid Level 6 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Lp Bid Level 6 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_6_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_bid_level_6_volume, range, value, display)

  return offset + length, value
end

-- Lp Bid Level 7 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_7_volume = {}

-- Size: Lp Bid Level 7 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_7_volume.size = 12

-- Display: Lp Bid Level 7 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_7_volume.display = function(value)
  return "Lp Bid Level 7 Volume: "..value
end

-- Dissect: Lp Bid Level 7 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_7_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_7_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_bid_level_7_volume, range, value, "Lp Bid Level 7 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Lp Bid Level 7 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_7_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_bid_level_7_volume, range, value, display)

  return offset + length, value
end

-- Lp Bid Level 8 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_8_volume = {}

-- Size: Lp Bid Level 8 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_8_volume.size = 12

-- Display: Lp Bid Level 8 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_8_volume.display = function(value)
  return "Lp Bid Level 8 Volume: "..value
end

-- Dissect: Lp Bid Level 8 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_8_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_8_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_bid_level_8_volume, range, value, "Lp Bid Level 8 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Lp Bid Level 8 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_8_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_bid_level_8_volume, range, value, display)

  return offset + length, value
end

-- Lp Bid Level 9 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_9_volume = {}

-- Size: Lp Bid Level 9 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_9_volume.size = 12

-- Display: Lp Bid Level 9 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_9_volume.display = function(value)
  return "Lp Bid Level 9 Volume: "..value
end

-- Dissect: Lp Bid Level 9 Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_9_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_9_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_bid_level_9_volume, range, value, "Lp Bid Level 9 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Lp Bid Level 9 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_9_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_bid_level_9_volume, range, value, display)

  return offset + length, value
end

-- Lp End Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_end_date = {}

-- Size: Lp End Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_end_date.size = 8

-- Display: Lp End Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_end_date.display = function(value)
  return "Lp End Date: "..value
end

-- Dissect: Lp End Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_end_date.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_end_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_end_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_end_date, range, value, display)

  return offset + length, value
end

-- Lp Holding Quantity
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_holding_quantity = {}

-- Size: Lp Holding Quantity
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_holding_quantity.size = 15

-- Display: Lp Holding Quantity
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_holding_quantity.display = function(value)
  return "Lp Holding Quantity: "..value
end

-- Dissect: Lp Holding Quantity
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_holding_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_holding_quantity.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_holding_quantity, range, value, "Lp Holding Quantity: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Lp Holding Quantity is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_holding_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_holding_quantity, range, value, display)

  return offset + length, value
end

-- Lp Order
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_order = {}

-- Size: Lp Order
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_order.size = 1

-- Display: Lp Order
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_order.display = function(value)
  return "Lp Order: "..value
end

-- Dissect: Lp Order
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_order.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_order.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_order, range, value, display)

  return offset + length, value
end

-- Lp Start Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_start_date = {}

-- Size: Lp Start Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_start_date.size = 8

-- Display: Lp Start Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_start_date.display = function(value)
  return "Lp Start Date: "..value
end

-- Dissect: Lp Start Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_start_date.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_start_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.lp_start_date, range, value, display)

  return offset + length, value
end

-- Main Market Accumulated Trading Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.main_market_accumulated_trading_value = {}

-- Size: Main Market Accumulated Trading Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.main_market_accumulated_trading_value.size = 22

-- Display: Main Market Accumulated Trading Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.main_market_accumulated_trading_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etpcommon_nxtascii_v2_12.main_market_accumulated_trading_value.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Main Market Accumulated Trading Value: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Main Market Accumulated Trading Value: "..text.." (expected 3 places)"
  end

  return "Main Market Accumulated Trading Value: "..text
end

-- Dissect: Main Market Accumulated Trading Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.main_market_accumulated_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.main_market_accumulated_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.main_market_accumulated_trading_value, range, value, "Main Market Accumulated Trading Value: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Main Market Accumulated Trading Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.main_market_accumulated_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.main_market_accumulated_trading_value, range, value, display)

  return offset + length, value
end

-- Main Market Accumulated Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.main_market_accumulated_trading_volume = {}

-- Size: Main Market Accumulated Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.main_market_accumulated_trading_volume.size = 12

-- Display: Main Market Accumulated Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.main_market_accumulated_trading_volume.display = function(value)
  return "Main Market Accumulated Trading Volume: "..value
end

-- Dissect: Main Market Accumulated Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.main_market_accumulated_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.main_market_accumulated_trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.main_market_accumulated_trading_volume, range, value, "Main Market Accumulated Trading Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Main Market Accumulated Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.main_market_accumulated_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.main_market_accumulated_trading_volume, range, value, display)

  return offset + length, value
end

-- Main Market Bid Ask Spread Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.main_market_bid_ask_spread_value = {}

-- Size: Main Market Bid Ask Spread Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.main_market_bid_ask_spread_value.size = 22

-- Display: Main Market Bid Ask Spread Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.main_market_bid_ask_spread_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etpcommon_nxtascii_v2_12.main_market_bid_ask_spread_value.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Main Market Bid Ask Spread Value: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 8 then
    return "Main Market Bid Ask Spread Value: "..text.." (expected 8 places)"
  end

  return "Main Market Bid Ask Spread Value: "..text
end

-- Dissect: Main Market Bid Ask Spread Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.main_market_bid_ask_spread_value.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.main_market_bid_ask_spread_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.main_market_bid_ask_spread_value, range, value, "Main Market Bid Ask Spread Value: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Main Market Bid Ask Spread Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.main_market_bid_ask_spread_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.main_market_bid_ask_spread_value, range, value, display)

  return offset + length, value
end

-- Market Alert
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_alert = {}

-- Size: Market Alert
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_alert.size = 1

-- Display: Market Alert
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_alert.display = function(value)
  return "Market Alert: "..value
end

-- Dissect: Market Alert
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_alert.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.market_alert.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.market_alert.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.market_alert, range, value, display)

  return offset + length, value
end

-- Market Alert Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_alert_type_code = {}

-- Size: Market Alert Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_alert_type_code.size = 2

-- Display: Market Alert Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_alert_type_code.display = function(value)
  return "Market Alert Type Code: "..value
end

-- Dissect: Market Alert Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_alert_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.market_alert_type_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.market_alert_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.market_alert_type_code, range, value, display)

  return offset + length, value
end

-- Market Making Lp Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_making_lp_type_code = {}

-- Size: Market Making Lp Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_making_lp_type_code.size = 1

-- Display: Market Making Lp Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_making_lp_type_code.display = function(value)
  return "Market Making Lp Type Code: "..value
end

-- Dissect: Market Making Lp Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_making_lp_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.market_making_lp_type_code.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.market_making_lp_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.market_making_lp_type_code, range, value, display)

  return offset + length, value
end

-- Market Making Possibility
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_making_possibility = {}

-- Size: Market Making Possibility
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_making_possibility.size = 1

-- Display: Market Making Possibility
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_making_possibility.display = function(value)
  return "Market Making Possibility: "..value
end

-- Dissect: Market Making Possibility
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_making_possibility.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.market_making_possibility.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.market_making_possibility.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.market_making_possibility, range, value, display)

  return offset + length, value
end

-- Market Operation Product Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_operation_product_id = {}

-- Size: Market Operation Product Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_operation_product_id.size = 3

-- Display: Market Operation Product Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_operation_product_id.display = function(value)
  return "Market Operation Product Id: "..value
end

-- Dissect: Market Operation Product Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_operation_product_id.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.market_operation_product_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.market_operation_product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.market_operation_product_id, range, value, display)

  return offset + length, value
end

-- Market Participant Number
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_participant_number = {}

-- Size: Market Participant Number
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_participant_number.size = 5

-- Display: Market Participant Number
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_participant_number.display = function(value)
  return "Market Participant Number: "..value
end

-- Dissect: Market Participant Number
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_participant_number.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.market_participant_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.market_participant_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.market_participant_number, range, value, display)

  return offset + length, value
end

-- Market Price Order Permission Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_price_order_permission_type_code = {}

-- Size: Market Price Order Permission Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_price_order_permission_type_code.size = 5

-- Display: Market Price Order Permission Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_price_order_permission_type_code.display = function(value)
  return "Market Price Order Permission Type Code: "..value
end

-- Dissect: Market Price Order Permission Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_price_order_permission_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.market_price_order_permission_type_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.market_price_order_permission_type_code, range, value, "Market Price Order Permission Type Code: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Market Price Order Permission Type Code is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.market_price_order_permission_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.market_price_order_permission_type_code, range, value, display)

  return offset + length, value
end

-- Maturity Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.maturity_date = {}

-- Size: Maturity Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.maturity_date.size = 8

-- Display: Maturity Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.maturity_date.display = function(value)
  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.maturity_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Maximum Bid Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.maximum_bid_price = {}

-- Size: Maximum Bid Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.maximum_bid_price.size = 22

-- Display: Maximum Bid Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.maximum_bid_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etpcommon_nxtascii_v2_12.maximum_bid_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Maximum Bid Price: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Maximum Bid Price: "..text.." (expected 3 places)"
  end

  return "Maximum Bid Price: "..text
end

-- Dissect: Maximum Bid Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.maximum_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.maximum_bid_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.maximum_bid_price, range, value, "Maximum Bid Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Maximum Bid Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.maximum_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.maximum_bid_price, range, value, display)

  return offset + length, value
end

-- Maximum Order Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.maximum_order_price = {}

-- Size: Maximum Order Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.maximum_order_price.size = 22

-- Display: Maximum Order Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.maximum_order_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etpcommon_nxtascii_v2_12.maximum_order_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Maximum Order Price: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Maximum Order Price: "..text.." (expected 3 places)"
  end

  return "Maximum Order Price: "..text
end

-- Dissect: Maximum Order Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.maximum_order_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.maximum_order_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.maximum_order_price, range, value, "Maximum Order Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Maximum Order Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.maximum_order_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.maximum_order_price, range, value, display)

  return offset + length, value
end

-- Maximum Volume Of Multiple Order
nextrade_nextrade_etpcommon_nxtascii_v2_12.maximum_volume_of_multiple_order = {}

-- Size: Maximum Volume Of Multiple Order
nextrade_nextrade_etpcommon_nxtascii_v2_12.maximum_volume_of_multiple_order.size = 11

-- Display: Maximum Volume Of Multiple Order
nextrade_nextrade_etpcommon_nxtascii_v2_12.maximum_volume_of_multiple_order.display = function(value)
  return "Maximum Volume Of Multiple Order: "..value
end

-- Dissect: Maximum Volume Of Multiple Order
nextrade_nextrade_etpcommon_nxtascii_v2_12.maximum_volume_of_multiple_order.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.maximum_volume_of_multiple_order.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.maximum_volume_of_multiple_order, range, value, "Maximum Volume Of Multiple Order: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Maximum Volume Of Multiple Order is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.maximum_volume_of_multiple_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.maximum_volume_of_multiple_order, range, value, display)

  return offset + length, value
end

-- Member Firm Trust Principal Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_firm_trust_principal_type_code = {}

-- Size: Member Firm Trust Principal Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_firm_trust_principal_type_code.size = 5

-- Display: Member Firm Trust Principal Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_firm_trust_principal_type_code.display = function(value)
  return "Member Firm Trust Principal Type Code: "..value
end

-- Dissect: Member Firm Trust Principal Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_firm_trust_principal_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_firm_trust_principal_type_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.member_firm_trust_principal_type_code, range, value, "Member Firm Trust Principal Type Code: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Member Firm Trust Principal Type Code is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_firm_trust_principal_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.member_firm_trust_principal_type_code, range, value, display)

  return offset + length, value
end

-- Member Number
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number = {}

-- Size: Member Number
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number.size = 5

-- Display: Member Number
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number.display = function(value)
  return "Member Number: "..value
end

-- Dissect: Member Number
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.member_number, range, value, display)

  return offset + length, value
end

-- Member Number 1 For Ask
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_1_for_ask = {}

-- Size: Member Number 1 For Ask
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_1_for_ask.size = 5

-- Display: Member Number 1 For Ask
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_1_for_ask.display = function(value)
  return "Member Number 1 For Ask: "..value
end

-- Dissect: Member Number 1 For Ask
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_1_for_ask.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_1_for_ask.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_1_for_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.member_number_1_for_ask, range, value, display)

  return offset + length, value
end

-- Member Number 1 For Bid
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_1_for_bid = {}

-- Size: Member Number 1 For Bid
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_1_for_bid.size = 5

-- Display: Member Number 1 For Bid
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_1_for_bid.display = function(value)
  return "Member Number 1 For Bid: "..value
end

-- Dissect: Member Number 1 For Bid
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_1_for_bid.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_1_for_bid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_1_for_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.member_number_1_for_bid, range, value, display)

  return offset + length, value
end

-- Member Number 2 For Ask
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_2_for_ask = {}

-- Size: Member Number 2 For Ask
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_2_for_ask.size = 5

-- Display: Member Number 2 For Ask
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_2_for_ask.display = function(value)
  return "Member Number 2 For Ask: "..value
end

-- Dissect: Member Number 2 For Ask
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_2_for_ask.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_2_for_ask.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_2_for_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.member_number_2_for_ask, range, value, display)

  return offset + length, value
end

-- Member Number 2 For Bid
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_2_for_bid = {}

-- Size: Member Number 2 For Bid
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_2_for_bid.size = 5

-- Display: Member Number 2 For Bid
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_2_for_bid.display = function(value)
  return "Member Number 2 For Bid: "..value
end

-- Dissect: Member Number 2 For Bid
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_2_for_bid.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_2_for_bid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_2_for_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.member_number_2_for_bid, range, value, display)

  return offset + length, value
end

-- Member Number 3 For Ask
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_3_for_ask = {}

-- Size: Member Number 3 For Ask
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_3_for_ask.size = 5

-- Display: Member Number 3 For Ask
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_3_for_ask.display = function(value)
  return "Member Number 3 For Ask: "..value
end

-- Dissect: Member Number 3 For Ask
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_3_for_ask.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_3_for_ask.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_3_for_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.member_number_3_for_ask, range, value, display)

  return offset + length, value
end

-- Member Number 3 For Bid
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_3_for_bid = {}

-- Size: Member Number 3 For Bid
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_3_for_bid.size = 5

-- Display: Member Number 3 For Bid
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_3_for_bid.display = function(value)
  return "Member Number 3 For Bid: "..value
end

-- Dissect: Member Number 3 For Bid
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_3_for_bid.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_3_for_bid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_3_for_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.member_number_3_for_bid, range, value, display)

  return offset + length, value
end

-- Member Number 4 For Ask
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_4_for_ask = {}

-- Size: Member Number 4 For Ask
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_4_for_ask.size = 5

-- Display: Member Number 4 For Ask
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_4_for_ask.display = function(value)
  return "Member Number 4 For Ask: "..value
end

-- Dissect: Member Number 4 For Ask
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_4_for_ask.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_4_for_ask.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_4_for_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.member_number_4_for_ask, range, value, display)

  return offset + length, value
end

-- Member Number 4 For Bid
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_4_for_bid = {}

-- Size: Member Number 4 For Bid
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_4_for_bid.size = 5

-- Display: Member Number 4 For Bid
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_4_for_bid.display = function(value)
  return "Member Number 4 For Bid: "..value
end

-- Dissect: Member Number 4 For Bid
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_4_for_bid.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_4_for_bid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_4_for_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.member_number_4_for_bid, range, value, display)

  return offset + length, value
end

-- Member Number 5 For Ask
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_5_for_ask = {}

-- Size: Member Number 5 For Ask
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_5_for_ask.size = 5

-- Display: Member Number 5 For Ask
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_5_for_ask.display = function(value)
  return "Member Number 5 For Ask: "..value
end

-- Dissect: Member Number 5 For Ask
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_5_for_ask.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_5_for_ask.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_5_for_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.member_number_5_for_ask, range, value, display)

  return offset + length, value
end

-- Member Number 5 For Bid
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_5_for_bid = {}

-- Size: Member Number 5 For Bid
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_5_for_bid.size = 5

-- Display: Member Number 5 For Bid
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_5_for_bid.display = function(value)
  return "Member Number 5 For Bid: "..value
end

-- Dissect: Member Number 5 For Bid
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_5_for_bid.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_5_for_bid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_5_for_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.member_number_5_for_bid, range, value, display)

  return offset + length, value
end

-- Message Sequence Number
nextrade_nextrade_etpcommon_nxtascii_v2_12.message_sequence_number = {}

-- Size: Message Sequence Number
nextrade_nextrade_etpcommon_nxtascii_v2_12.message_sequence_number.size = 8

-- Display: Message Sequence Number
nextrade_nextrade_etpcommon_nxtascii_v2_12.message_sequence_number.display = function(value)
  return "Message Sequence Number: "..value
end

-- Dissect: Message Sequence Number
nextrade_nextrade_etpcommon_nxtascii_v2_12.message_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.message_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.message_sequence_number, range, value, "Message Sequence Number: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Message Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.message_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.message_sequence_number, range, value, display)

  return offset + length, value
end

-- Mid Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.mid_price = {}

-- Size: Mid Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.mid_price.size = 11

-- Display: Mid Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.mid_price.display = function(value)
  return "Mid Price: "..value
end

-- Dissect: Mid Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.mid_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.mid_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.mid_price, range, value, "Mid Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Mid Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.mid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.mid_price, range, value, display)

  return offset + length, value
end

-- Mid Price Order Permission Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.mid_price_order_permission_type_code = {}

-- Size: Mid Price Order Permission Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.mid_price_order_permission_type_code.size = 5

-- Display: Mid Price Order Permission Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.mid_price_order_permission_type_code.display = function(value)
  return "Mid Price Order Permission Type Code: "..value
end

-- Dissect: Mid Price Order Permission Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.mid_price_order_permission_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.mid_price_order_permission_type_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.mid_price_order_permission_type_code, range, value, "Mid Price Order Permission Type Code: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Mid Price Order Permission Type Code is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.mid_price_order_permission_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.mid_price_order_permission_type_code, range, value, display)

  return offset + length, value
end

-- Minimum Ask Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.minimum_ask_price = {}

-- Size: Minimum Ask Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.minimum_ask_price.size = 22

-- Display: Minimum Ask Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.minimum_ask_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etpcommon_nxtascii_v2_12.minimum_ask_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Minimum Ask Price: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Minimum Ask Price: "..text.." (expected 3 places)"
  end

  return "Minimum Ask Price: "..text
end

-- Dissect: Minimum Ask Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.minimum_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.minimum_ask_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.minimum_ask_price, range, value, "Minimum Ask Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Minimum Ask Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.minimum_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.minimum_ask_price, range, value, display)

  return offset + length, value
end

-- Minimum Order Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.minimum_order_price = {}

-- Size: Minimum Order Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.minimum_order_price.size = 22

-- Display: Minimum Order Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.minimum_order_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etpcommon_nxtascii_v2_12.minimum_order_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Minimum Order Price: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Minimum Order Price: "..text.." (expected 3 places)"
  end

  return "Minimum Order Price: "..text
end

-- Dissect: Minimum Order Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.minimum_order_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.minimum_order_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.minimum_order_price, range, value, "Minimum Order Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Minimum Order Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.minimum_order_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.minimum_order_price, range, value, display)

  return offset + length, value
end

-- Minimum Order Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.minimum_order_volume = {}

-- Size: Minimum Order Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.minimum_order_volume.size = 11

-- Display: Minimum Order Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.minimum_order_volume.display = function(value)
  return "Minimum Order Volume: "..value
end

-- Dissect: Minimum Order Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.minimum_order_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.minimum_order_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.minimum_order_volume, range, value, "Minimum Order Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Minimum Order Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.minimum_order_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.minimum_order_volume, range, value, display)

  return offset + length, value
end

-- Name Of A Market Participant In En
nextrade_nextrade_etpcommon_nxtascii_v2_12.name_of_a_market_participant_in_en = {}

-- Size: Name Of A Market Participant In En
nextrade_nextrade_etpcommon_nxtascii_v2_12.name_of_a_market_participant_in_en.size = 80

-- Display: Name Of A Market Participant In En
nextrade_nextrade_etpcommon_nxtascii_v2_12.name_of_a_market_participant_in_en.display = function(value)
  return "Name Of A Market Participant In En: "..value
end

-- Dissect: Name Of A Market Participant In En
nextrade_nextrade_etpcommon_nxtascii_v2_12.name_of_a_market_participant_in_en.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.name_of_a_market_participant_in_en.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.name_of_a_market_participant_in_en.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.name_of_a_market_participant_in_en, range, value, display)

  return offset + length, value
end

-- Name Of A Market Participant In Kr
nextrade_nextrade_etpcommon_nxtascii_v2_12.name_of_a_market_participant_in_kr = {}

-- Size: Name Of A Market Participant In Kr
nextrade_nextrade_etpcommon_nxtascii_v2_12.name_of_a_market_participant_in_kr.size = 80

-- Display: Name Of A Market Participant In Kr
nextrade_nextrade_etpcommon_nxtascii_v2_12.name_of_a_market_participant_in_kr.display = function(value)
  return "Name Of A Market Participant In Kr: "..value
end

-- Dissect: Name Of A Market Participant In Kr
nextrade_nextrade_etpcommon_nxtascii_v2_12.name_of_a_market_participant_in_kr.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.name_of_a_market_participant_in_kr.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.name_of_a_market_participant_in_kr.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.name_of_a_market_participant_in_kr, range, value, display)

  return offset + length, value
end

-- National Stock
nextrade_nextrade_etpcommon_nxtascii_v2_12.national_stock = {}

-- Size: National Stock
nextrade_nextrade_etpcommon_nxtascii_v2_12.national_stock.size = 1

-- Display: National Stock
nextrade_nextrade_etpcommon_nxtascii_v2_12.national_stock.display = function(value)
  return "National Stock: "..value
end

-- Dissect: National Stock
nextrade_nextrade_etpcommon_nxtascii_v2_12.national_stock.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.national_stock.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.national_stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.national_stock, range, value, display)

  return offset + length, value
end

-- Negotiation Possible Or Not Before Main Market
nextrade_nextrade_etpcommon_nxtascii_v2_12.negotiation_possible_or_not_before_main_market = {}

-- Size: Negotiation Possible Or Not Before Main Market
nextrade_nextrade_etpcommon_nxtascii_v2_12.negotiation_possible_or_not_before_main_market.size = 1

-- Display: Negotiation Possible Or Not Before Main Market
nextrade_nextrade_etpcommon_nxtascii_v2_12.negotiation_possible_or_not_before_main_market.display = function(value)
  return "Negotiation Possible Or Not Before Main Market: "..value
end

-- Dissect: Negotiation Possible Or Not Before Main Market
nextrade_nextrade_etpcommon_nxtascii_v2_12.negotiation_possible_or_not_before_main_market.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.negotiation_possible_or_not_before_main_market.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.negotiation_possible_or_not_before_main_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.negotiation_possible_or_not_before_main_market, range, value, display)

  return offset + length, value
end

-- Number Of Listed Shares
nextrade_nextrade_etpcommon_nxtascii_v2_12.number_of_listed_shares = {}

-- Size: Number Of Listed Shares
nextrade_nextrade_etpcommon_nxtascii_v2_12.number_of_listed_shares.size = 16

-- Display: Number Of Listed Shares
nextrade_nextrade_etpcommon_nxtascii_v2_12.number_of_listed_shares.display = function(value)
  return "Number Of Listed Shares: "..value
end

-- Dissect: Number Of Listed Shares
nextrade_nextrade_etpcommon_nxtascii_v2_12.number_of_listed_shares.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.number_of_listed_shares.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.number_of_listed_shares, range, value, "Number Of Listed Shares: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Number Of Listed Shares is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.number_of_listed_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.number_of_listed_shares, range, value, display)

  return offset + length, value
end

-- Occurrence Of Reasons Prohibiting Competitive Trading
nextrade_nextrade_etpcommon_nxtascii_v2_12.occurrence_of_reasons_prohibiting_competitive_trading = {}

-- Size: Occurrence Of Reasons Prohibiting Competitive Trading
nextrade_nextrade_etpcommon_nxtascii_v2_12.occurrence_of_reasons_prohibiting_competitive_trading.size = 1

-- Display: Occurrence Of Reasons Prohibiting Competitive Trading
nextrade_nextrade_etpcommon_nxtascii_v2_12.occurrence_of_reasons_prohibiting_competitive_trading.display = function(value)
  return "Occurrence Of Reasons Prohibiting Competitive Trading: "..value
end

-- Dissect: Occurrence Of Reasons Prohibiting Competitive Trading
nextrade_nextrade_etpcommon_nxtascii_v2_12.occurrence_of_reasons_prohibiting_competitive_trading.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.occurrence_of_reasons_prohibiting_competitive_trading.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.occurrence_of_reasons_prohibiting_competitive_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.occurrence_of_reasons_prohibiting_competitive_trading, range, value, display)

  return offset + length, value
end

-- Opening Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.opening_price = {}

-- Size: Opening Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.opening_price.size = 11

-- Display: Opening Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.opening_price.display = function(value)
  return "Opening Price: "..value
end

-- Dissect: Opening Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.opening_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.opening_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.opening_price, range, value, "Opening Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Opening Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.opening_price, range, value, display)

  return offset + length, value
end

-- Other Stock Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.other_stock_type_code = {}

-- Size: Other Stock Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.other_stock_type_code.size = 1

-- Display: Other Stock Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.other_stock_type_code.display = function(value)
  return "Other Stock Type Code: "..value
end

-- Dissect: Other Stock Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.other_stock_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.other_stock_type_code.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.other_stock_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.other_stock_type_code, range, value, display)

  return offset + length, value
end

-- Par Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.par_value = {}

-- Size: Par Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.par_value.size = 11

-- Display: Par Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.par_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etpcommon_nxtascii_v2_12.par_value.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Par Value: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Par Value: "..text.." (expected 3 places)"
  end

  return "Par Value: "..text
end

-- Dissect: Par Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.par_value.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.par_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.par_value, range, value, "Par Value: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Par Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.par_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.par_value, range, value, display)

  return offset + length, value
end

-- Par Value Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.par_value_type_code = {}

-- Size: Par Value Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.par_value_type_code.size = 2

-- Display: Par Value Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.par_value_type_code.display = function(value)
  return "Par Value Type Code: "..value
end

-- Dissect: Par Value Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.par_value_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.par_value_type_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.par_value_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.par_value_type_code, range, value, display)

  return offset + length, value
end

-- Pre Market Accumulated Trading Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.pre_market_accumulated_trading_value = {}

-- Size: Pre Market Accumulated Trading Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.pre_market_accumulated_trading_value.size = 22

-- Display: Pre Market Accumulated Trading Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.pre_market_accumulated_trading_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etpcommon_nxtascii_v2_12.pre_market_accumulated_trading_value.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Pre Market Accumulated Trading Value: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Pre Market Accumulated Trading Value: "..text.." (expected 3 places)"
  end

  return "Pre Market Accumulated Trading Value: "..text
end

-- Dissect: Pre Market Accumulated Trading Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.pre_market_accumulated_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.pre_market_accumulated_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.pre_market_accumulated_trading_value, range, value, "Pre Market Accumulated Trading Value: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Pre Market Accumulated Trading Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.pre_market_accumulated_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.pre_market_accumulated_trading_value, range, value, display)

  return offset + length, value
end

-- Pre Market Accumulated Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.pre_market_accumulated_trading_volume = {}

-- Size: Pre Market Accumulated Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.pre_market_accumulated_trading_volume.size = 12

-- Display: Pre Market Accumulated Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.pre_market_accumulated_trading_volume.display = function(value)
  return "Pre Market Accumulated Trading Volume: "..value
end

-- Dissect: Pre Market Accumulated Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.pre_market_accumulated_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.pre_market_accumulated_trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.pre_market_accumulated_trading_volume, range, value, "Pre Market Accumulated Trading Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Pre Market Accumulated Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.pre_market_accumulated_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.pre_market_accumulated_trading_volume, range, value, display)

  return offset + length, value
end

-- Preferred Stocks With Lesser Shares
nextrade_nextrade_etpcommon_nxtascii_v2_12.preferred_stocks_with_lesser_shares = {}

-- Size: Preferred Stocks With Lesser Shares
nextrade_nextrade_etpcommon_nxtascii_v2_12.preferred_stocks_with_lesser_shares.size = 1

-- Display: Preferred Stocks With Lesser Shares
nextrade_nextrade_etpcommon_nxtascii_v2_12.preferred_stocks_with_lesser_shares.display = function(value)
  return "Preferred Stocks With Lesser Shares: "..value
end

-- Dissect: Preferred Stocks With Lesser Shares
nextrade_nextrade_etpcommon_nxtascii_v2_12.preferred_stocks_with_lesser_shares.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.preferred_stocks_with_lesser_shares.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.preferred_stocks_with_lesser_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.preferred_stocks_with_lesser_shares, range, value, display)

  return offset + length, value
end

-- Price Change Against Previous Day
nextrade_nextrade_etpcommon_nxtascii_v2_12.price_change_against_previous_day = {}

-- Size: Price Change Against Previous Day
nextrade_nextrade_etpcommon_nxtascii_v2_12.price_change_against_previous_day.size = 1

-- Display: Price Change Against Previous Day
nextrade_nextrade_etpcommon_nxtascii_v2_12.price_change_against_previous_day.display = function(value)
  return "Price Change Against Previous Day: "..value
end

-- Dissect: Price Change Against Previous Day
nextrade_nextrade_etpcommon_nxtascii_v2_12.price_change_against_previous_day.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.price_change_against_previous_day.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.price_change_against_previous_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.price_change_against_previous_day, range, value, display)

  return offset + length, value
end

-- Price Limit Range Expansion For Base Issue Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.price_limit_range_expansion_for_base_issue_type_code = {}

-- Size: Price Limit Range Expansion For Base Issue Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.price_limit_range_expansion_for_base_issue_type_code.size = 1

-- Display: Price Limit Range Expansion For Base Issue Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.price_limit_range_expansion_for_base_issue_type_code.display = function(value)
  return "Price Limit Range Expansion For Base Issue Type Code: "..value
end

-- Dissect: Price Limit Range Expansion For Base Issue Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.price_limit_range_expansion_for_base_issue_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.price_limit_range_expansion_for_base_issue_type_code.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.price_limit_range_expansion_for_base_issue_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.price_limit_range_expansion_for_base_issue_type_code, range, value, display)

  return offset + length, value
end

-- Processing Time Of Trading System
nextrade_nextrade_etpcommon_nxtascii_v2_12.processing_time_of_trading_system = {}

-- Size: Processing Time Of Trading System
nextrade_nextrade_etpcommon_nxtascii_v2_12.processing_time_of_trading_system.size = 12

-- Display: Processing Time Of Trading System
nextrade_nextrade_etpcommon_nxtascii_v2_12.processing_time_of_trading_system.display = function(value)
  if #value < 12 then
    return "Processing Time Of Trading System: "..value
  end

  return "Processing Time Of Trading System: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6).."."..value:sub(7, 12)
end

-- Dissect: Processing Time Of Trading System
nextrade_nextrade_etpcommon_nxtascii_v2_12.processing_time_of_trading_system.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.processing_time_of_trading_system.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.processing_time_of_trading_system.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.processing_time_of_trading_system, range, value, display)

  return offset + length, value
end

-- Product Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.product_id = {}

-- Size: Product Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.product_id.size = 11

-- Display: Product Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.product_id.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.product_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.product_id, range, value, display)

  return offset + length, value
end

-- Random End Trigger Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.random_end_trigger_code = {}

-- Size: Random End Trigger Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.random_end_trigger_code.size = 1

-- Display: Random End Trigger Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.random_end_trigger_code.display = function(value)
  return "Random End Trigger Code: "..value
end

-- Dissect: Random End Trigger Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.random_end_trigger_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.random_end_trigger_code.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.random_end_trigger_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.random_end_trigger_code, range, value, display)

  return offset + length, value
end

-- Reevaluation Reason Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.reevaluation_reason_code = {}

-- Size: Reevaluation Reason Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.reevaluation_reason_code.size = 2

-- Display: Reevaluation Reason Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.reevaluation_reason_code.display = function(value)
  return "Reevaluation Reason Code: "..value
end

-- Dissect: Reevaluation Reason Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.reevaluation_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.reevaluation_reason_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.reevaluation_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.reevaluation_reason_code, range, value, display)

  return offset + length, value
end

-- Reference Index Leverage Inverse Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.reference_index_leverage_inverse_type_code = {}

-- Size: Reference Index Leverage Inverse Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.reference_index_leverage_inverse_type_code.size = 2

-- Display: Reference Index Leverage Inverse Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.reference_index_leverage_inverse_type_code.display = function(value)
  return "Reference Index Leverage Inverse Type Code: "..value
end

-- Dissect: Reference Index Leverage Inverse Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.reference_index_leverage_inverse_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.reference_index_leverage_inverse_type_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.reference_index_leverage_inverse_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.reference_index_leverage_inverse_type_code, range, value, display)

  return offset + length, value
end

-- Regs
nextrade_nextrade_etpcommon_nxtascii_v2_12.regs = {}

-- Size: Regs
nextrade_nextrade_etpcommon_nxtascii_v2_12.regs.size = 1

-- Display: Regs
nextrade_nextrade_etpcommon_nxtascii_v2_12.regs.display = function(value)
  return "Regs: "..value
end

-- Dissect: Regs
nextrade_nextrade_etpcommon_nxtascii_v2_12.regs.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.regs.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.regs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.regs, range, value, display)

  return offset + length, value
end

-- Rei Ts Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.rei_ts_type_code = {}

-- Size: Rei Ts Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.rei_ts_type_code.size = 1

-- Display: Rei Ts Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.rei_ts_type_code.display = function(value)
  return "Rei Ts Type Code: "..value
end

-- Dissect: Rei Ts Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.rei_ts_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.rei_ts_type_code.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.rei_ts_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.rei_ts_type_code, range, value, display)

  return offset + length, value
end

-- Rights Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.rights_type_code = {}

-- Size: Rights Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.rights_type_code.size = 2

-- Display: Rights Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.rights_type_code.display = function(value)
  return "Rights Type Code: "..value
end

-- Dissect: Rights Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.rights_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.rights_type_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.rights_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.rights_type_code, range, value, display)

  return offset + length, value
end

-- Section Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.section_type_code = {}

-- Size: Section Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.section_type_code.size = 1

-- Display: Section Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.section_type_code.display = function(value)
  return "Section Type Code: "..value
end

-- Dissect: Section Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.section_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.section_type_code.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.section_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.section_type_code, range, value, display)

  return offset + length, value
end

-- Security Group Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.security_group_id = {}

-- Size: Security Group Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.security_group_id.size = 2

-- Display: Security Group Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.security_group_id.display = function(value)
  return "Security Group Id: "..value
end

-- Dissect: Security Group Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.security_group_id.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.security_group_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.security_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.security_group_id, range, value, display)

  return offset + length, value
end

-- Segment Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.segment_type_code = {}

-- Size: Segment Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.segment_type_code.size = 1

-- Display: Segment Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.segment_type_code.display = function(value)
  return "Segment Type Code: "..value
end

-- Dissect: Segment Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.segment_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.segment_type_code.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.segment_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.segment_type_code, range, value, display)

  return offset + length, value
end

-- Session Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.session_id = {}

-- Size: Session Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.session_id.size = 2

-- Display: Session Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
nextrade_nextrade_etpcommon_nxtascii_v2_12.session_id.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.session_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.session_id, range, value, display)

  return offset + length, value
end

-- Session Start End Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.session_start_end_code = {}

-- Size: Session Start End Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.session_start_end_code.size = 2

-- Display: Session Start End Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.session_start_end_code.display = function(value)
  return "Session Start End Code: "..value
end

-- Dissect: Session Start End Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.session_start_end_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.session_start_end_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.session_start_end_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.session_start_end_code, range, value, display)

  return offset + length, value
end

-- Short Selling
nextrade_nextrade_etpcommon_nxtascii_v2_12.short_selling = {}

-- Size: Short Selling
nextrade_nextrade_etpcommon_nxtascii_v2_12.short_selling.size = 1

-- Display: Short Selling
nextrade_nextrade_etpcommon_nxtascii_v2_12.short_selling.display = function(value)
  return "Short Selling: "..value
end

-- Dissect: Short Selling
nextrade_nextrade_etpcommon_nxtascii_v2_12.short_selling.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.short_selling.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.short_selling.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.short_selling, range, value, display)

  return offset + length, value
end

-- Short Term Overheat Issue Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.short_term_overheat_issue_type_code = {}

-- Size: Short Term Overheat Issue Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.short_term_overheat_issue_type_code.size = 1

-- Display: Short Term Overheat Issue Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.short_term_overheat_issue_type_code.display = function(value)
  return "Short Term Overheat Issue Type Code: "..value
end

-- Dissect: Short Term Overheat Issue Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.short_term_overheat_issue_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.short_term_overheat_issue_type_code.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.short_term_overheat_issue_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.short_term_overheat_issue_type_code, range, value, display)

  return offset + length, value
end

-- Small Medium Sized Business
nextrade_nextrade_etpcommon_nxtascii_v2_12.small_medium_sized_business = {}

-- Size: Small Medium Sized Business
nextrade_nextrade_etpcommon_nxtascii_v2_12.small_medium_sized_business.size = 1

-- Display: Small Medium Sized Business
nextrade_nextrade_etpcommon_nxtascii_v2_12.small_medium_sized_business.display = function(value)
  return "Small Medium Sized Business: "..value
end

-- Dissect: Small Medium Sized Business
nextrade_nextrade_etpcommon_nxtascii_v2_12.small_medium_sized_business.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.small_medium_sized_business.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.small_medium_sized_business.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.small_medium_sized_business, range, value, display)

  return offset + length, value
end

-- Spac
nextrade_nextrade_etpcommon_nxtascii_v2_12.spac = {}

-- Size: Spac
nextrade_nextrade_etpcommon_nxtascii_v2_12.spac.size = 1

-- Display: Spac
nextrade_nextrade_etpcommon_nxtascii_v2_12.spac.display = function(value)
  return "Spac: "..value
end

-- Dissect: Spac
nextrade_nextrade_etpcommon_nxtascii_v2_12.spac.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.spac.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.spac.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.spac, range, value, display)

  return offset + length, value
end

-- Spac Merger
nextrade_nextrade_etpcommon_nxtascii_v2_12.spac_merger = {}

-- Size: Spac Merger
nextrade_nextrade_etpcommon_nxtascii_v2_12.spac_merger.size = 1

-- Display: Spac Merger
nextrade_nextrade_etpcommon_nxtascii_v2_12.spac_merger.display = function(value)
  return "Spac Merger: "..value
end

-- Dissect: Spac Merger
nextrade_nextrade_etpcommon_nxtascii_v2_12.spac_merger.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.spac_merger.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.spac_merger.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.spac_merger, range, value, display)

  return offset + length, value
end

-- Spread Multiple For Market Holidays
nextrade_nextrade_etpcommon_nxtascii_v2_12.spread_multiple_for_market_holidays = {}

-- Size: Spread Multiple For Market Holidays
nextrade_nextrade_etpcommon_nxtascii_v2_12.spread_multiple_for_market_holidays.size = 11

-- Display: Spread Multiple For Market Holidays
nextrade_nextrade_etpcommon_nxtascii_v2_12.spread_multiple_for_market_holidays.display = function(value)
  return "Spread Multiple For Market Holidays: "..value
end

-- Dissect: Spread Multiple For Market Holidays
nextrade_nextrade_etpcommon_nxtascii_v2_12.spread_multiple_for_market_holidays.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.spread_multiple_for_market_holidays.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.spread_multiple_for_market_holidays, range, value, "Spread Multiple For Market Holidays: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Spread Multiple For Market Holidays is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.spread_multiple_for_market_holidays.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.spread_multiple_for_market_holidays, range, value, display)

  return offset + length, value
end

-- Start Time Of A Board Event
nextrade_nextrade_etpcommon_nxtascii_v2_12.start_time_of_a_board_event = {}

-- Size: Start Time Of A Board Event
nextrade_nextrade_etpcommon_nxtascii_v2_12.start_time_of_a_board_event.size = 9

-- Display: Start Time Of A Board Event
nextrade_nextrade_etpcommon_nxtascii_v2_12.start_time_of_a_board_event.display = function(value)
  return "Start Time Of A Board Event: "..value
end

-- Dissect: Start Time Of A Board Event
nextrade_nextrade_etpcommon_nxtascii_v2_12.start_time_of_a_board_event.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.start_time_of_a_board_event.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.start_time_of_a_board_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.start_time_of_a_board_event, range, value, display)

  return offset + length, value
end

-- Step Applied
nextrade_nextrade_etpcommon_nxtascii_v2_12.step_applied = {}

-- Size: Step Applied
nextrade_nextrade_etpcommon_nxtascii_v2_12.step_applied.size = 2

-- Display: Step Applied
nextrade_nextrade_etpcommon_nxtascii_v2_12.step_applied.display = function(value)
  return "Step Applied: "..value
end

-- Dissect: Step Applied
nextrade_nextrade_etpcommon_nxtascii_v2_12.step_applied.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.step_applied.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.step_applied, range, value, "Step Applied: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Step Applied is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.step_applied.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.step_applied, range, value, display)

  return offset + length, value
end

-- Stop Limit Price Order Permission Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.stop_limit_price_order_permission_type_code = {}

-- Size: Stop Limit Price Order Permission Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.stop_limit_price_order_permission_type_code.size = 5

-- Display: Stop Limit Price Order Permission Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.stop_limit_price_order_permission_type_code.display = function(value)
  return "Stop Limit Price Order Permission Type Code: "..value
end

-- Dissect: Stop Limit Price Order Permission Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.stop_limit_price_order_permission_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.stop_limit_price_order_permission_type_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.stop_limit_price_order_permission_type_code, range, value, "Stop Limit Price Order Permission Type Code: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Stop Limit Price Order Permission Type Code is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.stop_limit_price_order_permission_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.stop_limit_price_order_permission_type_code, range, value, display)

  return offset + length, value
end

-- Substitute Price Of Securities
nextrade_nextrade_etpcommon_nxtascii_v2_12.substitute_price_of_securities = {}

-- Size: Substitute Price Of Securities
nextrade_nextrade_etpcommon_nxtascii_v2_12.substitute_price_of_securities.size = 11

-- Display: Substitute Price Of Securities
nextrade_nextrade_etpcommon_nxtascii_v2_12.substitute_price_of_securities.display = function(value)
  return "Substitute Price Of Securities: "..value
end

-- Dissect: Substitute Price Of Securities
nextrade_nextrade_etpcommon_nxtascii_v2_12.substitute_price_of_securities.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.substitute_price_of_securities.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.substitute_price_of_securities, range, value, "Substitute Price Of Securities: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Substitute Price Of Securities is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.substitute_price_of_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.substitute_price_of_securities, range, value, display)

  return offset + length, value
end

-- Target Stock Isin Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.target_stock_isin_code = {}

-- Size: Target Stock Isin Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.target_stock_isin_code.size = 12

-- Display: Target Stock Isin Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.target_stock_isin_code.display = function(value)
  return "Target Stock Isin Code: "..value
end

-- Dissect: Target Stock Isin Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.target_stock_isin_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.target_stock_isin_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.target_stock_isin_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.target_stock_isin_code, range, value, display)

  return offset + length, value
end

-- Tax Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.tax_type_code = {}

-- Size: Tax Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.tax_type_code.size = 1

-- Display: Tax Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.tax_type_code.display = function(value)
  return "Tax Type Code: "..value
end

-- Dissect: Tax Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.tax_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.tax_type_code.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.tax_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.tax_type_code, range, value, display)

  return offset + length, value
end

-- The Best Ask
nextrade_nextrade_etpcommon_nxtascii_v2_12.the_best_ask = {}

-- Size: The Best Ask
nextrade_nextrade_etpcommon_nxtascii_v2_12.the_best_ask.size = 11

-- Display: The Best Ask
nextrade_nextrade_etpcommon_nxtascii_v2_12.the_best_ask.display = function(value)
  return "The Best Ask: "..value
end

-- Dissect: The Best Ask
nextrade_nextrade_etpcommon_nxtascii_v2_12.the_best_ask.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.the_best_ask.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.the_best_ask, range, value, "The Best Ask: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "The Best Ask is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.the_best_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.the_best_ask, range, value, display)

  return offset + length, value
end

-- The Best Bid
nextrade_nextrade_etpcommon_nxtascii_v2_12.the_best_bid = {}

-- Size: The Best Bid
nextrade_nextrade_etpcommon_nxtascii_v2_12.the_best_bid.size = 11

-- Display: The Best Bid
nextrade_nextrade_etpcommon_nxtascii_v2_12.the_best_bid.display = function(value)
  return "The Best Bid: "..value
end

-- Dissect: The Best Bid
nextrade_nextrade_etpcommon_nxtascii_v2_12.the_best_bid.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.the_best_bid.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.the_best_bid, range, value, "The Best Bid: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "The Best Bid is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.the_best_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.the_best_bid, range, value, display)

  return offset + length, value
end

-- The Establishment Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.the_establishment_date = {}

-- Size: The Establishment Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.the_establishment_date.size = 8

-- Display: The Establishment Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.the_establishment_date.display = function(value)
  return "The Establishment Date: "..value
end

-- Dissect: The Establishment Date
nextrade_nextrade_etpcommon_nxtascii_v2_12.the_establishment_date.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.the_establishment_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.the_establishment_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.the_establishment_date, range, value, display)

  return offset + length, value
end

-- The Time Ending Vi
nextrade_nextrade_etpcommon_nxtascii_v2_12.the_time_ending_vi = {}

-- Size: The Time Ending Vi
nextrade_nextrade_etpcommon_nxtascii_v2_12.the_time_ending_vi.size = 9

-- Display: The Time Ending Vi
nextrade_nextrade_etpcommon_nxtascii_v2_12.the_time_ending_vi.display = function(value)
  return "The Time Ending Vi: "..value
end

-- Dissect: The Time Ending Vi
nextrade_nextrade_etpcommon_nxtascii_v2_12.the_time_ending_vi.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.the_time_ending_vi.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.the_time_ending_vi.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.the_time_ending_vi, range, value, display)

  return offset + length, value
end

-- Todays High
nextrade_nextrade_etpcommon_nxtascii_v2_12.todays_high = {}

-- Size: Todays High
nextrade_nextrade_etpcommon_nxtascii_v2_12.todays_high.size = 11

-- Display: Todays High
nextrade_nextrade_etpcommon_nxtascii_v2_12.todays_high.display = function(value)
  return "Todays High: "..value
end

-- Dissect: Todays High
nextrade_nextrade_etpcommon_nxtascii_v2_12.todays_high.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.todays_high.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.todays_high, range, value, "Todays High: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Todays High is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.todays_high.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.todays_high, range, value, display)

  return offset + length, value
end

-- Todays Low
nextrade_nextrade_etpcommon_nxtascii_v2_12.todays_low = {}

-- Size: Todays Low
nextrade_nextrade_etpcommon_nxtascii_v2_12.todays_low.size = 11

-- Display: Todays Low
nextrade_nextrade_etpcommon_nxtascii_v2_12.todays_low.display = function(value)
  return "Todays Low: "..value
end

-- Dissect: Todays Low
nextrade_nextrade_etpcommon_nxtascii_v2_12.todays_low.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.todays_low.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.todays_low, range, value, "Todays Low: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Todays Low is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.todays_low.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.todays_low, range, value, display)

  return offset + length, value
end

-- Total Ask Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.total_ask_volume = {}

-- Size: Total Ask Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.total_ask_volume.size = 12

-- Display: Total Ask Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.total_ask_volume.display = function(value)
  return "Total Ask Volume: "..value
end

-- Dissect: Total Ask Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.total_ask_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.total_ask_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.total_ask_volume, range, value, "Total Ask Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Total Ask Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.total_ask_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.total_ask_volume, range, value, display)

  return offset + length, value
end

-- Total Bid Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.total_bid_volume = {}

-- Size: Total Bid Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.total_bid_volume.size = 12

-- Display: Total Bid Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.total_bid_volume.display = function(value)
  return "Total Bid Volume: "..value
end

-- Dissect: Total Bid Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.total_bid_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.total_bid_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.total_bid_volume, range, value, "Total Bid Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Total Bid Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.total_bid_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.total_bid_volume, range, value, display)

  return offset + length, value
end

-- Total Mid Price Ask Volume Total Ask Volume On Mid Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.total_mid_price_ask_volume_total_ask_volume_on_mid_price = {}

-- Size: Total Mid Price Ask Volume Total Ask Volume On Mid Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.total_mid_price_ask_volume_total_ask_volume_on_mid_price.size = 12

-- Display: Total Mid Price Ask Volume Total Ask Volume On Mid Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.total_mid_price_ask_volume_total_ask_volume_on_mid_price.display = function(value)
  return "Total Mid Price Ask Volume Total Ask Volume On Mid Price: "..value
end

-- Dissect: Total Mid Price Ask Volume Total Ask Volume On Mid Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.total_mid_price_ask_volume_total_ask_volume_on_mid_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.total_mid_price_ask_volume_total_ask_volume_on_mid_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.total_mid_price_ask_volume_total_ask_volume_on_mid_price, range, value, "Total Mid Price Ask Volume Total Ask Volume On Mid Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Total Mid Price Ask Volume Total Ask Volume On Mid Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.total_mid_price_ask_volume_total_ask_volume_on_mid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.total_mid_price_ask_volume_total_ask_volume_on_mid_price, range, value, display)

  return offset + length, value
end

-- Total Mid Price Bid Volume Total Bid Volume On Mid Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.total_mid_price_bid_volume_total_bid_volume_on_mid_price = {}

-- Size: Total Mid Price Bid Volume Total Bid Volume On Mid Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.total_mid_price_bid_volume_total_bid_volume_on_mid_price.size = 12

-- Display: Total Mid Price Bid Volume Total Bid Volume On Mid Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.total_mid_price_bid_volume_total_bid_volume_on_mid_price.display = function(value)
  return "Total Mid Price Bid Volume Total Bid Volume On Mid Price: "..value
end

-- Dissect: Total Mid Price Bid Volume Total Bid Volume On Mid Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.total_mid_price_bid_volume_total_bid_volume_on_mid_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.total_mid_price_bid_volume_total_bid_volume_on_mid_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.total_mid_price_bid_volume_total_bid_volume_on_mid_price, range, value, "Total Mid Price Bid Volume Total Bid Volume On Mid Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Total Mid Price Bid Volume Total Bid Volume On Mid Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.total_mid_price_bid_volume_total_bid_volume_on_mid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.total_mid_price_bid_volume_total_bid_volume_on_mid_price, range, value, display)

  return offset + length, value
end

-- Total Number Of Instruments Of The Contract
nextrade_nextrade_etpcommon_nxtascii_v2_12.total_number_of_instruments_of_the_contract = {}

-- Size: Total Number Of Instruments Of The Contract
nextrade_nextrade_etpcommon_nxtascii_v2_12.total_number_of_instruments_of_the_contract.size = 6

-- Display: Total Number Of Instruments Of The Contract
nextrade_nextrade_etpcommon_nxtascii_v2_12.total_number_of_instruments_of_the_contract.display = function(value)
  return "Total Number Of Instruments Of The Contract: "..value
end

-- Dissect: Total Number Of Instruments Of The Contract
nextrade_nextrade_etpcommon_nxtascii_v2_12.total_number_of_instruments_of_the_contract.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.total_number_of_instruments_of_the_contract.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.total_number_of_instruments_of_the_contract, range, value, "Total Number Of Instruments Of The Contract: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Total Number Of Instruments Of The Contract is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.total_number_of_instruments_of_the_contract.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.total_number_of_instruments_of_the_contract, range, value, display)

  return offset + length, value
end

-- Total Number Of Tradable Issues On Competitive Trading
nextrade_nextrade_etpcommon_nxtascii_v2_12.total_number_of_tradable_issues_on_competitive_trading = {}

-- Size: Total Number Of Tradable Issues On Competitive Trading
nextrade_nextrade_etpcommon_nxtascii_v2_12.total_number_of_tradable_issues_on_competitive_trading.size = 5

-- Display: Total Number Of Tradable Issues On Competitive Trading
nextrade_nextrade_etpcommon_nxtascii_v2_12.total_number_of_tradable_issues_on_competitive_trading.display = function(value)
  return "Total Number Of Tradable Issues On Competitive Trading: "..value
end

-- Dissect: Total Number Of Tradable Issues On Competitive Trading
nextrade_nextrade_etpcommon_nxtascii_v2_12.total_number_of_tradable_issues_on_competitive_trading.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.total_number_of_tradable_issues_on_competitive_trading.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.total_number_of_tradable_issues_on_competitive_trading, range, value, "Total Number Of Tradable Issues On Competitive Trading: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Total Number Of Tradable Issues On Competitive Trading is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.total_number_of_tradable_issues_on_competitive_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.total_number_of_tradable_issues_on_competitive_trading, range, value, display)

  return offset + length, value
end

-- TR Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.tr_code = {}

-- Size: TR Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.tr_code.size = 5

-- Display: TR Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.tr_code.labels = {
  ["I2500"] = "TR Code: Polling Data Message (I2500)",
  ["B753S"] = "TR Code: Securities Quote Mm Lp Quotes Included 10 Level Message (B753S)",
  ["A353S"] = "TR Code: Securities Order Filled Message (A353S)",
  ["A753S"] = "TR Code: Market Operation Ts Message (A753S)",
  ["A653S"] = "TR Code: Issue Closing Message (A653S)",
  ["R853S"] = "TR Code: Triggering Removing Vi Message (R853S)",
  ["E153S"] = "TR Code: Closing Price Trading Quote Message (E153S)",
  ["B253S"] = "TR Code: Equities Snapshot Mm Lp Quotes Included 10 Level Message (B253S)",
  ["IC53S"] = "TR Code: Investor Activities Per Commodities Message (IC53S)",
  ["V650S"] = "TR Code: Etp Constituents Message (V650S)",
  ["EA50S"] = "TR Code: Etp Constituents Message (EA50S)",
  ["I753S"] = "TR Code: Mm Lp Information Message (I753S)",
  ["EB53S"] = "TR Code: Mm Lp Information Message (EB53S)",
  ["M453S"] = "TR Code: Market Operation Schedule Message (M453S)",
  ["R350S"] = "TR Code: Member Firm Imposing Lifting Sanctions Message (R350S)",
  ["B953S"] = "TR Code: Top Five Traders Activities Message (B953S)",
  ["A053S"] = "TR Code: Equities Batch Data Message (A053S)",
  ["E053S"] = "TR Code: Equities Batch Data Message (E053S)",
  ["M950S"] = "TR Code: Member Information Message (M950S)",
  ["E850S"] = "TR Code: Member Information Message (E850S)",
  ["I653S"] = "TR Code: Issue Event Message (I653S)",
  ["E653S"] = "TR Code: Issue Event Message (E653S)",
  ["C453S"] = "TR Code: Block Basket Trade Data Message (C453S)",
  ["C153S"] = "TR Code: Investor Activities Per An Issue Eod Message (C153S)",
  ["I853S"] = "TR Code: Short Selling Message (I853S)",
  ["E253S"] = "TR Code: Brokers Acitity Information Message (E253S)",
  ["E353S"] = "TR Code: Trading Activity By Session Per An Issue Message (E353S)",
}

nextrade_nextrade_etpcommon_nxtascii_v2_12.tr_code.display = function(value)
  return nextrade_nextrade_etpcommon_nxtascii_v2_12.tr_code.labels[value] or "TR Code: Unknown("..value..")"
end

-- Dissect: TR Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.tr_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.tr_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.tr_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.tr_code, range, value, display)

  return offset + length, value
end

-- Tracking Index Leverage Inverse Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.tracking_index_leverage_inverse_type_code = {}

-- Size: Tracking Index Leverage Inverse Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.tracking_index_leverage_inverse_type_code.size = 2

-- Display: Tracking Index Leverage Inverse Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.tracking_index_leverage_inverse_type_code.display = function(value)
  return "Tracking Index Leverage Inverse Type Code: "..value
end

-- Dissect: Tracking Index Leverage Inverse Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.tracking_index_leverage_inverse_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.tracking_index_leverage_inverse_type_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.tracking_index_leverage_inverse_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.tracking_index_leverage_inverse_type_code, range, value, display)

  return offset + length, value
end

-- Trading Halt
nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_halt = {}

-- Size: Trading Halt
nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_halt.size = 1

-- Display: Trading Halt
nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_halt.display = function(value)
  return "Trading Halt: "..value
end

-- Dissect: Trading Halt
nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_halt.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_halt.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_halt.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.trading_halt, range, value, display)

  return offset + length, value
end

-- Trading Halt Reason Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_halt_reason_code = {}

-- Size: Trading Halt Reason Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_halt_reason_code.size = 3

-- Display: Trading Halt Reason Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_halt_reason_code.display = function(value)
  return "Trading Halt Reason Code: "..value
end

-- Dissect: Trading Halt Reason Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_halt_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_halt_reason_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_halt_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.trading_halt_reason_code, range, value, display)

  return offset + length, value
end

-- Trading Halt Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_halt_type_code = {}

-- Size: Trading Halt Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_halt_type_code.size = 1

-- Display: Trading Halt Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_halt_type_code.display = function(value)
  return "Trading Halt Type Code: "..value
end

-- Dissect: Trading Halt Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_halt_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_halt_type_code.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_halt_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.trading_halt_type_code, range, value, display)

  return offset + length, value
end

-- Trading Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_price = {}

-- Size: Trading Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_price.size = 11

-- Display: Trading Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_price.display = function(value)
  return "Trading Price: "..value
end

-- Dissect: Trading Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.trading_price, range, value, "Trading Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Trading Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.trading_price, range, value, display)

  return offset + length, value
end

-- Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_volume = {}

-- Size: Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_volume.size = 10

-- Display: Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_volume.display = function(value)
  return "Trading Volume: "..value
end

-- Dissect: Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.trading_volume, range, value, "Trading Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.trading_volume, range, value, display)

  return offset + length, value
end

-- Unfaithful Disclosure
nextrade_nextrade_etpcommon_nxtascii_v2_12.unfaithful_disclosure = {}

-- Size: Unfaithful Disclosure
nextrade_nextrade_etpcommon_nxtascii_v2_12.unfaithful_disclosure.size = 1

-- Display: Unfaithful Disclosure
nextrade_nextrade_etpcommon_nxtascii_v2_12.unfaithful_disclosure.display = function(value)
  return "Unfaithful Disclosure: "..value
end

-- Dissect: Unfaithful Disclosure
nextrade_nextrade_etpcommon_nxtascii_v2_12.unfaithful_disclosure.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.unfaithful_disclosure.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.unfaithful_disclosure.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.unfaithful_disclosure, range, value, display)

  return offset + length, value
end

-- Unit Of Volume In Main Board
nextrade_nextrade_etpcommon_nxtascii_v2_12.unit_of_volume_in_main_board = {}

-- Size: Unit Of Volume In Main Board
nextrade_nextrade_etpcommon_nxtascii_v2_12.unit_of_volume_in_main_board.size = 11

-- Display: Unit Of Volume In Main Board
nextrade_nextrade_etpcommon_nxtascii_v2_12.unit_of_volume_in_main_board.display = function(value)
  return "Unit Of Volume In Main Board: "..value
end

-- Dissect: Unit Of Volume In Main Board
nextrade_nextrade_etpcommon_nxtascii_v2_12.unit_of_volume_in_main_board.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.unit_of_volume_in_main_board.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.unit_of_volume_in_main_board, range, value, "Unit Of Volume In Main Board: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Unit Of Volume In Main Board is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.unit_of_volume_in_main_board.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.unit_of_volume_in_main_board, range, value, display)

  return offset + length, value
end

-- Unit Trading
nextrade_nextrade_etpcommon_nxtascii_v2_12.unit_trading = {}

-- Size: Unit Trading
nextrade_nextrade_etpcommon_nxtascii_v2_12.unit_trading.size = 1

-- Display: Unit Trading
nextrade_nextrade_etpcommon_nxtascii_v2_12.unit_trading.display = function(value)
  return "Unit Trading: "..value
end

-- Dissect: Unit Trading
nextrade_nextrade_etpcommon_nxtascii_v2_12.unit_trading.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.unit_trading.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.unit_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.unit_trading, range, value, display)

  return offset + length, value
end

-- Upper Limit Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.upper_limit_price = {}

-- Size: Upper Limit Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.upper_limit_price.size = 11

-- Display: Upper Limit Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.upper_limit_price.display = function(value)
  return "Upper Limit Price: "..value
end

-- Dissect: Upper Limit Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.upper_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.upper_limit_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.upper_limit_price, range, value, "Upper Limit Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Upper Limit Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.upper_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.upper_limit_price, range, value, display)

  return offset + length, value
end

-- Upper Limit Price On The Single Price Trade In The Off Hours Session
nextrade_nextrade_etpcommon_nxtascii_v2_12.upper_limit_price_on_the_single_price_trade_in_the_off_hours_session = {}

-- Size: Upper Limit Price On The Single Price Trade In The Off Hours Session
nextrade_nextrade_etpcommon_nxtascii_v2_12.upper_limit_price_on_the_single_price_trade_in_the_off_hours_session.size = 11

-- Display: Upper Limit Price On The Single Price Trade In The Off Hours Session
nextrade_nextrade_etpcommon_nxtascii_v2_12.upper_limit_price_on_the_single_price_trade_in_the_off_hours_session.display = function(value)
  return "Upper Limit Price On The Single Price Trade In The Off Hours Session: "..value
end

-- Dissect: Upper Limit Price On The Single Price Trade In The Off Hours Session
nextrade_nextrade_etpcommon_nxtascii_v2_12.upper_limit_price_on_the_single_price_trade_in_the_off_hours_session.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.upper_limit_price_on_the_single_price_trade_in_the_off_hours_session.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.upper_limit_price_on_the_single_price_trade_in_the_off_hours_session, range, value, "Upper Limit Price On The Single Price Trade In The Off Hours Session: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Upper Limit Price On The Single Price Trade In The Off Hours Session is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.upper_limit_price_on_the_single_price_trade_in_the_off_hours_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.upper_limit_price_on_the_single_price_trade_in_the_off_hours_session, range, value, display)

  return offset + length, value
end

-- Upper Limit Quantity
nextrade_nextrade_etpcommon_nxtascii_v2_12.upper_limit_quantity = {}

-- Size: Upper Limit Quantity
nextrade_nextrade_etpcommon_nxtascii_v2_12.upper_limit_quantity.size = 23

-- Display: Upper Limit Quantity
nextrade_nextrade_etpcommon_nxtascii_v2_12.upper_limit_quantity.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etpcommon_nxtascii_v2_12.upper_limit_quantity.size):string()
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
nextrade_nextrade_etpcommon_nxtascii_v2_12.upper_limit_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.upper_limit_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.upper_limit_quantity, range, value, "Upper Limit Quantity: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Upper Limit Quantity is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.upper_limit_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.upper_limit_quantity, range, value, display)

  return offset + length, value
end

-- Uptick Rule Applied Covered Short Selling Trading Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.uptick_rule_applied_covered_short_selling_trading_value = {}

-- Size: Uptick Rule Applied Covered Short Selling Trading Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.uptick_rule_applied_covered_short_selling_trading_value.size = 22

-- Display: Uptick Rule Applied Covered Short Selling Trading Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.uptick_rule_applied_covered_short_selling_trading_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etpcommon_nxtascii_v2_12.uptick_rule_applied_covered_short_selling_trading_value.size):string()
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
nextrade_nextrade_etpcommon_nxtascii_v2_12.uptick_rule_applied_covered_short_selling_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.uptick_rule_applied_covered_short_selling_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.uptick_rule_applied_covered_short_selling_trading_value, range, value, "Uptick Rule Applied Covered Short Selling Trading Value: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Uptick Rule Applied Covered Short Selling Trading Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.uptick_rule_applied_covered_short_selling_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.uptick_rule_applied_covered_short_selling_trading_value, range, value, display)

  return offset + length, value
end

-- Uptick Rule Applied Covered Short Selling Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.uptick_rule_applied_covered_short_selling_trading_volume = {}

-- Size: Uptick Rule Applied Covered Short Selling Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.uptick_rule_applied_covered_short_selling_trading_volume.size = 12

-- Display: Uptick Rule Applied Covered Short Selling Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.uptick_rule_applied_covered_short_selling_trading_volume.display = function(value)
  return "Uptick Rule Applied Covered Short Selling Trading Volume: "..value
end

-- Dissect: Uptick Rule Applied Covered Short Selling Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.uptick_rule_applied_covered_short_selling_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.uptick_rule_applied_covered_short_selling_trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.uptick_rule_applied_covered_short_selling_trading_volume, range, value, "Uptick Rule Applied Covered Short Selling Trading Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Uptick Rule Applied Covered Short Selling Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.uptick_rule_applied_covered_short_selling_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.uptick_rule_applied_covered_short_selling_trading_volume, range, value, display)

  return offset + length, value
end

-- Uptick Rule Unapplied Covered Short Selling Trading Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.uptick_rule_unapplied_covered_short_selling_trading_value = {}

-- Size: Uptick Rule Unapplied Covered Short Selling Trading Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.uptick_rule_unapplied_covered_short_selling_trading_value.size = 22

-- Display: Uptick Rule Unapplied Covered Short Selling Trading Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.uptick_rule_unapplied_covered_short_selling_trading_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etpcommon_nxtascii_v2_12.uptick_rule_unapplied_covered_short_selling_trading_value.size):string()
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
nextrade_nextrade_etpcommon_nxtascii_v2_12.uptick_rule_unapplied_covered_short_selling_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.uptick_rule_unapplied_covered_short_selling_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.uptick_rule_unapplied_covered_short_selling_trading_value, range, value, "Uptick Rule Unapplied Covered Short Selling Trading Value: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Uptick Rule Unapplied Covered Short Selling Trading Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.uptick_rule_unapplied_covered_short_selling_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.uptick_rule_unapplied_covered_short_selling_trading_value, range, value, display)

  return offset + length, value
end

-- Uptick Rule Unapplied Covered Short Selling Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.uptick_rule_unapplied_covered_short_selling_trading_volume = {}

-- Size: Uptick Rule Unapplied Covered Short Selling Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.uptick_rule_unapplied_covered_short_selling_trading_volume.size = 12

-- Display: Uptick Rule Unapplied Covered Short Selling Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.uptick_rule_unapplied_covered_short_selling_trading_volume.display = function(value)
  return "Uptick Rule Unapplied Covered Short Selling Trading Volume: "..value
end

-- Dissect: Uptick Rule Unapplied Covered Short Selling Trading Volume
nextrade_nextrade_etpcommon_nxtascii_v2_12.uptick_rule_unapplied_covered_short_selling_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.uptick_rule_unapplied_covered_short_selling_trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.uptick_rule_unapplied_covered_short_selling_trading_volume, range, value, "Uptick Rule Unapplied Covered Short Selling Trading Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Uptick Rule Unapplied Covered Short Selling Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.uptick_rule_unapplied_covered_short_selling_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.uptick_rule_unapplied_covered_short_selling_trading_volume, range, value, display)

  return offset + length, value
end

-- Vi Status Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.vi_status_code = {}

-- Size: Vi Status Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.vi_status_code.size = 1

-- Display: Vi Status Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.vi_status_code.display = function(value)
  return "Vi Status Code: "..value
end

-- Dissect: Vi Status Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.vi_status_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.vi_status_code.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.vi_status_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.vi_status_code, range, value, display)

  return offset + length, value
end

-- Vi Triggering Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.vi_triggering_price = {}

-- Size: Vi Triggering Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.vi_triggering_price.size = 11

-- Display: Vi Triggering Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.vi_triggering_price.display = function(value)
  return "Vi Triggering Price: "..value
end

-- Dissect: Vi Triggering Price
nextrade_nextrade_etpcommon_nxtascii_v2_12.vi_triggering_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.vi_triggering_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.vi_triggering_price, range, value, "Vi Triggering Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Vi Triggering Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.vi_triggering_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.vi_triggering_price, range, value, display)

  return offset + length, value
end

-- Vi Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.vi_type_code = {}

-- Size: Vi Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.vi_type_code.size = 1

-- Display: Vi Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.vi_type_code.display = function(value)
  return "Vi Type Code: "..value
end

-- Dissect: Vi Type Code
nextrade_nextrade_etpcommon_nxtascii_v2_12.vi_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.vi_type_code.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.vi_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.vi_type_code, range, value, display)

  return offset + length, value
end

-- Yesterdays Accumulated Trading Amount
nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_accumulated_trading_amount = {}

-- Size: Yesterdays Accumulated Trading Amount
nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_accumulated_trading_amount.size = 12

-- Display: Yesterdays Accumulated Trading Amount
nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_accumulated_trading_amount.display = function(value)
  return "Yesterdays Accumulated Trading Amount: "..value
end

-- Dissect: Yesterdays Accumulated Trading Amount
nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_accumulated_trading_amount.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_accumulated_trading_amount.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.yesterdays_accumulated_trading_amount, range, value, "Yesterdays Accumulated Trading Amount: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Yesterdays Accumulated Trading Amount is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_accumulated_trading_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.yesterdays_accumulated_trading_amount, range, value, display)

  return offset + length, value
end

-- Yesterdays Accumulated Trading Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_accumulated_trading_value = {}

-- Size: Yesterdays Accumulated Trading Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_accumulated_trading_value.size = 22

-- Display: Yesterdays Accumulated Trading Value
nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_accumulated_trading_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_accumulated_trading_value.size):string()
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
nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_accumulated_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_accumulated_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.yesterdays_accumulated_trading_value, range, value, "Yesterdays Accumulated Trading Value: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Yesterdays Accumulated Trading Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_accumulated_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.yesterdays_accumulated_trading_value, range, value, display)

  return offset + length, value
end

-- Yesterdays Closing Price Krx
nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_closing_price_krx = {}

-- Size: Yesterdays Closing Price Krx
nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_closing_price_krx.size = 11

-- Display: Yesterdays Closing Price Krx
nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_closing_price_krx.display = function(value)
  return "Yesterdays Closing Price Krx: "..value
end

-- Dissect: Yesterdays Closing Price Krx
nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_closing_price_krx.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_closing_price_krx.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.yesterdays_closing_price_krx, range, value, "Yesterdays Closing Price Krx: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Yesterdays Closing Price Krx is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_closing_price_krx.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.yesterdays_closing_price_krx, range, value, display)

  return offset + length, value
end

-- Yesterdays Closing Price Nxt
nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_closing_price_nxt = {}

-- Size: Yesterdays Closing Price Nxt
nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_closing_price_nxt.size = 11

-- Display: Yesterdays Closing Price Nxt
nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_closing_price_nxt.display = function(value)
  return "Yesterdays Closing Price Nxt: "..value
end

-- Dissect: Yesterdays Closing Price Nxt
nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_closing_price_nxt.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_closing_price_nxt.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.yesterdays_closing_price_nxt, range, value, "Yesterdays Closing Price Nxt: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etpcommon_nxtascii_v2_12.experts.not_a_number, "Yesterdays Closing Price Nxt is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_closing_price_nxt.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.yesterdays_closing_price_nxt, range, value, display)

  return offset + length, value
end

-- Yesterdays Closing Price Type Code Krx
nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_closing_price_type_code_krx = {}

-- Size: Yesterdays Closing Price Type Code Krx
nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_closing_price_type_code_krx.size = 1

-- Display: Yesterdays Closing Price Type Code Krx
nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_closing_price_type_code_krx.display = function(value)
  return "Yesterdays Closing Price Type Code Krx: "..value
end

-- Dissect: Yesterdays Closing Price Type Code Krx
nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_closing_price_type_code_krx.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_closing_price_type_code_krx.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_closing_price_type_code_krx.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.yesterdays_closing_price_type_code_krx, range, value, display)

  return offset + length, value
end

-- Yesterdays Closing Price Type Code Nxt
nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_closing_price_type_code_nxt = {}

-- Size: Yesterdays Closing Price Type Code Nxt
nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_closing_price_type_code_nxt.size = 1

-- Display: Yesterdays Closing Price Type Code Nxt
nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_closing_price_type_code_nxt.display = function(value)
  return "Yesterdays Closing Price Type Code Nxt: "..value
end

-- Dissect: Yesterdays Closing Price Type Code Nxt
nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_closing_price_type_code_nxt.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_closing_price_type_code_nxt.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etpcommon_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_closing_price_type_code_nxt.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.yesterdays_closing_price_type_code_nxt, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nextrade Nextrade EtpCommon NxtAscii 2.12
-----------------------------------------------------------------------

-- Trading Activity By Session Per An Issue Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_activity_by_session_per_an_issue_message = {}

-- Size: Trading Activity By Session Per An Issue Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_activity_by_session_per_an_issue_message.size =
  nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.total_number_of_tradable_issues_on_competitive_trading.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.pre_market_accumulated_trading_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.pre_market_accumulated_trading_value.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.main_market_accumulated_trading_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.main_market_accumulated_trading_value.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.after_market_accumulated_trading_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.after_market_accumulated_trading_value.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.size

-- Display: Trading Activity By Session Per An Issue Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_activity_by_session_per_an_issue_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Activity By Session Per An Issue Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_activity_by_session_per_an_issue_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin Code: String
  index, isin_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.dissect(buffer, index, packet, parent)

  -- Total Number Of Tradable Issues On Competitive Trading: Int
  index, total_number_of_tradable_issues_on_competitive_trading = nextrade_nextrade_etpcommon_nxtascii_v2_12.total_number_of_tradable_issues_on_competitive_trading.dissect(buffer, index, packet, parent)

  -- Pre Market Accumulated Trading Volume: Long
  index, pre_market_accumulated_trading_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.pre_market_accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Pre Market Accumulated Trading Value: FLOAT128
  index, pre_market_accumulated_trading_value = nextrade_nextrade_etpcommon_nxtascii_v2_12.pre_market_accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Main Market Accumulated Trading Volume: Long
  index, main_market_accumulated_trading_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.main_market_accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Main Market Accumulated Trading Value: FLOAT128
  index, main_market_accumulated_trading_value = nextrade_nextrade_etpcommon_nxtascii_v2_12.main_market_accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- After Market Accumulated Trading Volume: Long
  index, after_market_accumulated_trading_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.after_market_accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- After Market Accumulated Trading Value: FLOAT128
  index, after_market_accumulated_trading_value = nextrade_nextrade_etpcommon_nxtascii_v2_12.after_market_accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Activity By Session Per An Issue Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_activity_by_session_per_an_issue_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.trading_activity_by_session_per_an_issue_message, buffer(offset, 0))
    local index = nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_activity_by_session_per_an_issue_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_activity_by_session_per_an_issue_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_activity_by_session_per_an_issue_message.fields(buffer, offset, packet, parent)
  end
end

-- Brokers Acitity Information Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.brokers_acitity_information_message = {}

-- Size: Brokers Acitity Information Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.brokers_acitity_information_message.size =
  nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_ask_trading_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_ask_trading_value.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_bid_trading_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_bid_trading_value.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.size

-- Display: Brokers Acitity Information Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.brokers_acitity_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Brokers Acitity Information Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.brokers_acitity_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin Code: String
  index, isin_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.dissect(buffer, index, packet, parent)

  -- Member Number: String
  index, member_number = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number.dissect(buffer, index, packet, parent)

  -- Accumulated Ask Trading Volume: Long
  index, accumulated_ask_trading_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_ask_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Ask Trading Value: FLOAT128
  index, accumulated_ask_trading_value = nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_ask_trading_value.dissect(buffer, index, packet, parent)

  -- Accumulated Bid Trading Volume: Long
  index, accumulated_bid_trading_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_bid_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Bid Trading Value: FLOAT128
  index, accumulated_bid_trading_value = nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_bid_trading_value.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Brokers Acitity Information Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.brokers_acitity_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.brokers_acitity_information_message, buffer(offset, 0))
    local index = nextrade_nextrade_etpcommon_nxtascii_v2_12.brokers_acitity_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.brokers_acitity_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_etpcommon_nxtascii_v2_12.brokers_acitity_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Selling Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.short_selling_message = {}

-- Size: Short Selling Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.short_selling_message.size =
  nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.covered_short_selling_trading_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.covered_short_selling_trading_value.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.uptick_rule_applied_covered_short_selling_trading_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.uptick_rule_applied_covered_short_selling_trading_value.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.uptick_rule_unapplied_covered_short_selling_trading_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.uptick_rule_unapplied_covered_short_selling_trading_value.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.size

-- Display: Short Selling Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.short_selling_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Selling Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.short_selling_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin Code: String
  index, isin_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.dissect(buffer, index, packet, parent)

  -- Covered Short Selling Trading Volume: Long
  index, covered_short_selling_trading_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.covered_short_selling_trading_volume.dissect(buffer, index, packet, parent)

  -- Covered Short Selling Trading Value: FLOAT128
  index, covered_short_selling_trading_value = nextrade_nextrade_etpcommon_nxtascii_v2_12.covered_short_selling_trading_value.dissect(buffer, index, packet, parent)

  -- Uptick Rule Applied Covered Short Selling Trading Volume: Long
  index, uptick_rule_applied_covered_short_selling_trading_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.uptick_rule_applied_covered_short_selling_trading_volume.dissect(buffer, index, packet, parent)

  -- Uptick Rule Applied Covered Short Selling Trading Value: FLOAT128
  index, uptick_rule_applied_covered_short_selling_trading_value = nextrade_nextrade_etpcommon_nxtascii_v2_12.uptick_rule_applied_covered_short_selling_trading_value.dissect(buffer, index, packet, parent)

  -- Uptick Rule Unapplied Covered Short Selling Trading Volume: Long
  index, uptick_rule_unapplied_covered_short_selling_trading_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.uptick_rule_unapplied_covered_short_selling_trading_volume.dissect(buffer, index, packet, parent)

  -- Uptick Rule Unapplied Covered Short Selling Trading Value: FLOAT128
  index, uptick_rule_unapplied_covered_short_selling_trading_value = nextrade_nextrade_etpcommon_nxtascii_v2_12.uptick_rule_unapplied_covered_short_selling_trading_value.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Selling Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.short_selling_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.short_selling_message, buffer(offset, 0))
    local index = nextrade_nextrade_etpcommon_nxtascii_v2_12.short_selling_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.short_selling_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_etpcommon_nxtascii_v2_12.short_selling_message.fields(buffer, offset, packet, parent)
  end
end

-- Investor Activities Per An Issue Eod Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.investor_activities_per_an_issue_eod_message = {}

-- Size: Investor Activities Per An Issue Eod Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.investor_activities_per_an_issue_eod_message.size =
  nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.investor_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_ask_trading_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_ask_trading_value.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_bid_trading_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_bid_trading_value.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.size

-- Display: Investor Activities Per An Issue Eod Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.investor_activities_per_an_issue_eod_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Investor Activities Per An Issue Eod Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.investor_activities_per_an_issue_eod_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin Code: String
  index, isin_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue From Krx: Int
  index, a_designated_number_for_an_issue_from_krx = nextrade_nextrade_etpcommon_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.dissect(buffer, index, packet, parent)

  -- Investor Code: String
  index, investor_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.investor_code.dissect(buffer, index, packet, parent)

  -- Accumulated Ask Trading Volume: Long
  index, accumulated_ask_trading_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_ask_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Ask Trading Value: FLOAT128
  index, accumulated_ask_trading_value = nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_ask_trading_value.dissect(buffer, index, packet, parent)

  -- Accumulated Bid Trading Volume: Long
  index, accumulated_bid_trading_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_bid_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Bid Trading Value: FLOAT128
  index, accumulated_bid_trading_value = nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_bid_trading_value.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Investor Activities Per An Issue Eod Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.investor_activities_per_an_issue_eod_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.investor_activities_per_an_issue_eod_message, buffer(offset, 0))
    local index = nextrade_nextrade_etpcommon_nxtascii_v2_12.investor_activities_per_an_issue_eod_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.investor_activities_per_an_issue_eod_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_etpcommon_nxtascii_v2_12.investor_activities_per_an_issue_eod_message.fields(buffer, offset, packet, parent)
  end
end

-- Block Basket Trade Data Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.block_basket_trade_data_message = {}

-- Size: Block Basket Trade Data Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.block_basket_trade_data_message.size =
  nextrade_nextrade_etpcommon_nxtascii_v2_12.board_id.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_trading_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_trading_value.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.size

-- Display: Block Basket Trade Data Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.block_basket_trade_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Block Basket Trade Data Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.block_basket_trade_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Board Id: String
  index, board_id = nextrade_nextrade_etpcommon_nxtascii_v2_12.board_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue From Krx: Int
  index, a_designated_number_for_an_issue_from_krx = nextrade_nextrade_etpcommon_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Block Basket Trade Data Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.block_basket_trade_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.block_basket_trade_data_message, buffer(offset, 0))
    local index = nextrade_nextrade_etpcommon_nxtascii_v2_12.block_basket_trade_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.block_basket_trade_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_etpcommon_nxtascii_v2_12.block_basket_trade_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Issue Event Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.issue_event_message = {}

-- Size: Issue Event Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.issue_event_message.size =
  nextrade_nextrade_etpcommon_nxtascii_v2_12.message_sequence_number.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.event_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.event_reason_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.event_start_date.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.event_end_date.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.size

-- Display: Issue Event Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.issue_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Issue Event Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.issue_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = nextrade_nextrade_etpcommon_nxtascii_v2_12.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.dissect(buffer, index, packet, parent)

  -- Event Type Code: String
  index, event_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.event_type_code.dissect(buffer, index, packet, parent)

  -- Event Reason Code: String
  index, event_reason_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.event_reason_code.dissect(buffer, index, packet, parent)

  -- Event Start Date: String
  index, event_start_date = nextrade_nextrade_etpcommon_nxtascii_v2_12.event_start_date.dissect(buffer, index, packet, parent)

  -- Event End Date: String
  index, event_end_date = nextrade_nextrade_etpcommon_nxtascii_v2_12.event_end_date.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Issue Event Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.issue_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.issue_event_message, buffer(offset, 0))
    local index = nextrade_nextrade_etpcommon_nxtascii_v2_12.issue_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.issue_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_etpcommon_nxtascii_v2_12.issue_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Member Information Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_information_message = {}

-- Size: Member Information Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_information_message.size =
  nextrade_nextrade_etpcommon_nxtascii_v2_12.message_sequence_number.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.business_date.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.market_participant_number.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.name_of_a_market_participant_in_kr.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.name_of_a_market_participant_in_en.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.an_abbreviated_name_of_a_market_participant_in_kr.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.size

-- Display: Member Information Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Member Information Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = nextrade_nextrade_etpcommon_nxtascii_v2_12.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Business Date: String
  index, business_date = nextrade_nextrade_etpcommon_nxtascii_v2_12.business_date.dissect(buffer, index, packet, parent)

  -- Market Participant Number: String
  index, market_participant_number = nextrade_nextrade_etpcommon_nxtascii_v2_12.market_participant_number.dissect(buffer, index, packet, parent)

  -- Name Of A Market Participant In Kr: String
  index, name_of_a_market_participant_in_kr = nextrade_nextrade_etpcommon_nxtascii_v2_12.name_of_a_market_participant_in_kr.dissect(buffer, index, packet, parent)

  -- Name Of A Market Participant In En: String
  index, name_of_a_market_participant_in_en = nextrade_nextrade_etpcommon_nxtascii_v2_12.name_of_a_market_participant_in_en.dissect(buffer, index, packet, parent)

  -- An Abbreviated Name Of A Market Participant In Kr: String
  index, an_abbreviated_name_of_a_market_participant_in_kr = nextrade_nextrade_etpcommon_nxtascii_v2_12.an_abbreviated_name_of_a_market_participant_in_kr.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Member Information Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.member_information_message, buffer(offset, 0))
    local index = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_etpcommon_nxtascii_v2_12.member_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Equities Batch Data Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.equities_batch_data_message = {}

-- Size: Equities Batch Data Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.equities_batch_data_message.size =
  nextrade_nextrade_etpcommon_nxtascii_v2_12.message_sequence_number.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.total_number_of_instruments_of_the_contract.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.business_date.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.abbreviated_issue_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.abbreviated_issue_name.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.abbreviated_issue_name_in_en.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.group_number.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.market_operation_product_id.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.security_group_id.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.unit_trading.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.rights_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.par_value_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.an_issue_of_which_base_price_is_settled_with_a_todays_single_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.reevaluation_reason_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.base_price_change.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.random_end_trigger_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.market_alert.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.market_alert_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.korea_corporate_governance_stock_price_index_kogi.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.issue_for_administration.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.unfaithful_disclosure.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.back_door_listing.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_halt.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.industry_id.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.small_medium_sized_business.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.section_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.investment_institution_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.base_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_closing_price_type_code_krx.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_closing_price_krx.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_accumulated_trading_amount.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_accumulated_trading_value.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.upper_limit_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lower_limit_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.substitute_price_of_securities.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.par_value.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.issuing_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.listing_date.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.number_of_listed_shares.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.liquidation_trade.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.the_establishment_date.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.maturity_date.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.exercising_period.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.expiration_date_for_right.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.exercise_price_of_elw_or_bw.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.capital.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.credit_order_possibility.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.limit_order_permission_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.market_price_order_permission_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.conditioned_order_permission_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.best_favorable_order_permission_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.first_best_order_permission_type.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.mid_price_order_permission_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.stop_limit_price_order_permission_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.capital_increase_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.other_stock_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.national_stock.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.appraised_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lowest_order_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.highest_order_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.unit_of_volume_in_main_board.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lot_size_after_hours_trading.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.rei_ts_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.target_stock_isin_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.currency_iso_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.country_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.market_making_possibility.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_trading_possibility_in_the_after_hours.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_trading_in_the_pre_opening_market.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.block_trading_in_the_pre_opening_market.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.basket_trading_in_the_pre_opening_market.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.announcement_of_estimated_trading_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.short_selling.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.etf_tracking_difference.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.regs.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.spac.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.tax_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.appraisal_ratio_of_substitute_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.investment_caution_issue.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.delisting_date.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.short_term_overheat_issue_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.etf_replication_methods_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.expiration_date.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.distribution_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.calculation_of_redemption_price_start_date.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.calculation_of_redemption_price_end_date.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.etp_product_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.index_calculation_institution_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.index_market_classification_id.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.index_sequence_number.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.tracking_index_leverage_inverse_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.reference_index_leverage_inverse_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.index_asset_classification_id_1.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.index_asset_classification_id_2.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ipo_underwriter_member_number.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_order.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.low_liquidity.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.abnormal_rise.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.upper_limit_quantity.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.investment_precaution_issue.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.preferred_stocks_with_lesser_shares.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.spac_merger.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.segment_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.after_market_possibility.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.choice_on_competitive_trading.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.limit_on_competitive_trading_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.occurrence_of_reasons_prohibiting_competitive_trading.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.approval_on_competitive_trading.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.approval_on_negotiation_trading.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_closing_price_type_code_nxt.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_closing_price_nxt.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.competition_board_trade_permission_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.negotiation_possible_or_not_before_main_market.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.size

-- Display: Equities Batch Data Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.equities_batch_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equities Batch Data Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.equities_batch_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = nextrade_nextrade_etpcommon_nxtascii_v2_12.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Total Number Of Instruments Of The Contract: Int
  index, total_number_of_instruments_of_the_contract = nextrade_nextrade_etpcommon_nxtascii_v2_12.total_number_of_instruments_of_the_contract.dissect(buffer, index, packet, parent)

  -- Business Date: String
  index, business_date = nextrade_nextrade_etpcommon_nxtascii_v2_12.business_date.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue From Krx: Int
  index, a_designated_number_for_an_issue_from_krx = nextrade_nextrade_etpcommon_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Code: String
  index, abbreviated_issue_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.abbreviated_issue_code.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Name: String
  index, abbreviated_issue_name = nextrade_nextrade_etpcommon_nxtascii_v2_12.abbreviated_issue_name.dissect(buffer, index, packet, parent)

  -- Abbreviated Issue Name In En: String
  index, abbreviated_issue_name_in_en = nextrade_nextrade_etpcommon_nxtascii_v2_12.abbreviated_issue_name_in_en.dissect(buffer, index, packet, parent)

  -- Group Number: String
  index, group_number = nextrade_nextrade_etpcommon_nxtascii_v2_12.group_number.dissect(buffer, index, packet, parent)

  -- Market Operation Product Id: String
  index, market_operation_product_id = nextrade_nextrade_etpcommon_nxtascii_v2_12.market_operation_product_id.dissect(buffer, index, packet, parent)

  -- Security Group Id: String
  index, security_group_id = nextrade_nextrade_etpcommon_nxtascii_v2_12.security_group_id.dissect(buffer, index, packet, parent)

  -- Unit Trading: String
  index, unit_trading = nextrade_nextrade_etpcommon_nxtascii_v2_12.unit_trading.dissect(buffer, index, packet, parent)

  -- Rights Type Code: String
  index, rights_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.rights_type_code.dissect(buffer, index, packet, parent)

  -- Par Value Type Code: String
  index, par_value_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.par_value_type_code.dissect(buffer, index, packet, parent)

  -- An Issue Of Which Base Price Is Settled With A Todays Single Price: String
  index, an_issue_of_which_base_price_is_settled_with_a_todays_single_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.an_issue_of_which_base_price_is_settled_with_a_todays_single_price.dissect(buffer, index, packet, parent)

  -- Reevaluation Reason Code: String
  index, reevaluation_reason_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.reevaluation_reason_code.dissect(buffer, index, packet, parent)

  -- Base Price Change: String
  index, base_price_change = nextrade_nextrade_etpcommon_nxtascii_v2_12.base_price_change.dissect(buffer, index, packet, parent)

  -- Random End Trigger Code: String
  index, random_end_trigger_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.random_end_trigger_code.dissect(buffer, index, packet, parent)

  -- Market Alert: String
  index, market_alert = nextrade_nextrade_etpcommon_nxtascii_v2_12.market_alert.dissect(buffer, index, packet, parent)

  -- Market Alert Type Code: String
  index, market_alert_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.market_alert_type_code.dissect(buffer, index, packet, parent)

  -- Korea Corporate Governance Stock Price Index Kogi: String
  index, korea_corporate_governance_stock_price_index_kogi = nextrade_nextrade_etpcommon_nxtascii_v2_12.korea_corporate_governance_stock_price_index_kogi.dissect(buffer, index, packet, parent)

  -- Issue For Administration: String
  index, issue_for_administration = nextrade_nextrade_etpcommon_nxtascii_v2_12.issue_for_administration.dissect(buffer, index, packet, parent)

  -- Unfaithful Disclosure: String
  index, unfaithful_disclosure = nextrade_nextrade_etpcommon_nxtascii_v2_12.unfaithful_disclosure.dissect(buffer, index, packet, parent)

  -- Back Door Listing: String
  index, back_door_listing = nextrade_nextrade_etpcommon_nxtascii_v2_12.back_door_listing.dissect(buffer, index, packet, parent)

  -- Trading Halt: String
  index, trading_halt = nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_halt.dissect(buffer, index, packet, parent)

  -- Industry Id: String
  index, industry_id = nextrade_nextrade_etpcommon_nxtascii_v2_12.industry_id.dissect(buffer, index, packet, parent)

  -- Small Medium Sized Business: String
  index, small_medium_sized_business = nextrade_nextrade_etpcommon_nxtascii_v2_12.small_medium_sized_business.dissect(buffer, index, packet, parent)

  -- Section Type Code: String
  index, section_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.section_type_code.dissect(buffer, index, packet, parent)

  -- Investment Institution Type Code: String
  index, investment_institution_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.investment_institution_type_code.dissect(buffer, index, packet, parent)

  -- Base Price: Double
  index, base_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.base_price.dissect(buffer, index, packet, parent)

  -- Yesterdays Closing Price Type Code Krx: String
  index, yesterdays_closing_price_type_code_krx = nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_closing_price_type_code_krx.dissect(buffer, index, packet, parent)

  -- Yesterdays Closing Price Krx: Double
  index, yesterdays_closing_price_krx = nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_closing_price_krx.dissect(buffer, index, packet, parent)

  -- Yesterdays Accumulated Trading Amount: Long
  index, yesterdays_accumulated_trading_amount = nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_accumulated_trading_amount.dissect(buffer, index, packet, parent)

  -- Yesterdays Accumulated Trading Value: FLOAT128
  index, yesterdays_accumulated_trading_value = nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Upper Limit Price: Double
  index, upper_limit_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.upper_limit_price.dissect(buffer, index, packet, parent)

  -- Lower Limit Price: Double
  index, lower_limit_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.lower_limit_price.dissect(buffer, index, packet, parent)

  -- Substitute Price Of Securities: Double
  index, substitute_price_of_securities = nextrade_nextrade_etpcommon_nxtascii_v2_12.substitute_price_of_securities.dissect(buffer, index, packet, parent)

  -- Par Value: Double
  index, par_value = nextrade_nextrade_etpcommon_nxtascii_v2_12.par_value.dissect(buffer, index, packet, parent)

  -- Issuing Price: Double
  index, issuing_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.issuing_price.dissect(buffer, index, packet, parent)

  -- Listing Date: String
  index, listing_date = nextrade_nextrade_etpcommon_nxtascii_v2_12.listing_date.dissect(buffer, index, packet, parent)

  -- Number Of Listed Shares: Long
  index, number_of_listed_shares = nextrade_nextrade_etpcommon_nxtascii_v2_12.number_of_listed_shares.dissect(buffer, index, packet, parent)

  -- Liquidation Trade: String
  index, liquidation_trade = nextrade_nextrade_etpcommon_nxtascii_v2_12.liquidation_trade.dissect(buffer, index, packet, parent)

  -- The Establishment Date: String
  index, the_establishment_date = nextrade_nextrade_etpcommon_nxtascii_v2_12.the_establishment_date.dissect(buffer, index, packet, parent)

  -- Maturity Date: String
  index, maturity_date = nextrade_nextrade_etpcommon_nxtascii_v2_12.maturity_date.dissect(buffer, index, packet, parent)

  -- Exercising Period: String
  index, exercising_period = nextrade_nextrade_etpcommon_nxtascii_v2_12.exercising_period.dissect(buffer, index, packet, parent)

  -- Expiration Date For Right: String
  index, expiration_date_for_right = nextrade_nextrade_etpcommon_nxtascii_v2_12.expiration_date_for_right.dissect(buffer, index, packet, parent)

  -- Exercise Price Of Elw Or Bw: Double
  index, exercise_price_of_elw_or_bw = nextrade_nextrade_etpcommon_nxtascii_v2_12.exercise_price_of_elw_or_bw.dissect(buffer, index, packet, parent)

  -- Capital: FLOAT128
  index, capital = nextrade_nextrade_etpcommon_nxtascii_v2_12.capital.dissect(buffer, index, packet, parent)

  -- Credit Order Possibility: String
  index, credit_order_possibility = nextrade_nextrade_etpcommon_nxtascii_v2_12.credit_order_possibility.dissect(buffer, index, packet, parent)

  -- Limit Order Permission Type Code: Int
  index, limit_order_permission_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.limit_order_permission_type_code.dissect(buffer, index, packet, parent)

  -- Market Price Order Permission Type Code: Int
  index, market_price_order_permission_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.market_price_order_permission_type_code.dissect(buffer, index, packet, parent)

  -- Conditioned Order Permission Type Code: Int
  index, conditioned_order_permission_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.conditioned_order_permission_type_code.dissect(buffer, index, packet, parent)

  -- Best Favorable Order Permission Type Code: Int
  index, best_favorable_order_permission_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.best_favorable_order_permission_type_code.dissect(buffer, index, packet, parent)

  -- First Best Order Permission Type: Int
  index, first_best_order_permission_type = nextrade_nextrade_etpcommon_nxtascii_v2_12.first_best_order_permission_type.dissect(buffer, index, packet, parent)

  -- Mid Price Order Permission Type Code: Int
  index, mid_price_order_permission_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.mid_price_order_permission_type_code.dissect(buffer, index, packet, parent)

  -- Stop Limit Price Order Permission Type Code: Int
  index, stop_limit_price_order_permission_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.stop_limit_price_order_permission_type_code.dissect(buffer, index, packet, parent)

  -- Capital Increase Type Code: String
  index, capital_increase_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.capital_increase_type_code.dissect(buffer, index, packet, parent)

  -- Other Stock Type Code: String
  index, other_stock_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.other_stock_type_code.dissect(buffer, index, packet, parent)

  -- National Stock: String
  index, national_stock = nextrade_nextrade_etpcommon_nxtascii_v2_12.national_stock.dissect(buffer, index, packet, parent)

  -- Appraised Price: Double
  index, appraised_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.appraised_price.dissect(buffer, index, packet, parent)

  -- Lowest Order Price: Double
  index, lowest_order_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.lowest_order_price.dissect(buffer, index, packet, parent)

  -- Highest Order Price: Double
  index, highest_order_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.highest_order_price.dissect(buffer, index, packet, parent)

  -- Unit Of Volume In Main Board: Long
  index, unit_of_volume_in_main_board = nextrade_nextrade_etpcommon_nxtascii_v2_12.unit_of_volume_in_main_board.dissect(buffer, index, packet, parent)

  -- Lot Size After Hours Trading: Long
  index, lot_size_after_hours_trading = nextrade_nextrade_etpcommon_nxtascii_v2_12.lot_size_after_hours_trading.dissect(buffer, index, packet, parent)

  -- Rei Ts Type Code: String
  index, rei_ts_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.rei_ts_type_code.dissect(buffer, index, packet, parent)

  -- Target Stock Isin Code: String
  index, target_stock_isin_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.target_stock_isin_code.dissect(buffer, index, packet, parent)

  -- Currency Iso Code: String
  index, currency_iso_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.currency_iso_code.dissect(buffer, index, packet, parent)

  -- Country Code: String
  index, country_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.country_code.dissect(buffer, index, packet, parent)

  -- Market Making Possibility: String
  index, market_making_possibility = nextrade_nextrade_etpcommon_nxtascii_v2_12.market_making_possibility.dissect(buffer, index, packet, parent)

  -- Closing Price Trading Possibility In The After Hours: String
  index, closing_price_trading_possibility_in_the_after_hours = nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_trading_possibility_in_the_after_hours.dissect(buffer, index, packet, parent)

  -- Closing Price Trading In The Pre Opening Market: String
  index, closing_price_trading_in_the_pre_opening_market = nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_trading_in_the_pre_opening_market.dissect(buffer, index, packet, parent)

  -- Block Trading In The Pre Opening Market: String
  index, block_trading_in_the_pre_opening_market = nextrade_nextrade_etpcommon_nxtascii_v2_12.block_trading_in_the_pre_opening_market.dissect(buffer, index, packet, parent)

  -- Basket Trading In The Pre Opening Market: String
  index, basket_trading_in_the_pre_opening_market = nextrade_nextrade_etpcommon_nxtascii_v2_12.basket_trading_in_the_pre_opening_market.dissect(buffer, index, packet, parent)

  -- Announcement Of Estimated Trading Price: String
  index, announcement_of_estimated_trading_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.announcement_of_estimated_trading_price.dissect(buffer, index, packet, parent)

  -- Short Selling: String
  index, short_selling = nextrade_nextrade_etpcommon_nxtascii_v2_12.short_selling.dissect(buffer, index, packet, parent)

  -- Etf Tracking Difference: Double
  index, etf_tracking_difference = nextrade_nextrade_etpcommon_nxtascii_v2_12.etf_tracking_difference.dissect(buffer, index, packet, parent)

  -- Regs: String
  index, regs = nextrade_nextrade_etpcommon_nxtascii_v2_12.regs.dissect(buffer, index, packet, parent)

  -- Spac: String
  index, spac = nextrade_nextrade_etpcommon_nxtascii_v2_12.spac.dissect(buffer, index, packet, parent)

  -- Tax Type Code: String
  index, tax_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.tax_type_code.dissect(buffer, index, packet, parent)

  -- Appraisal Ratio Of Substitute Price: Double
  index, appraisal_ratio_of_substitute_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.appraisal_ratio_of_substitute_price.dissect(buffer, index, packet, parent)

  -- Investment Caution Issue: String
  index, investment_caution_issue = nextrade_nextrade_etpcommon_nxtascii_v2_12.investment_caution_issue.dissect(buffer, index, packet, parent)

  -- Delisting Date: String
  index, delisting_date = nextrade_nextrade_etpcommon_nxtascii_v2_12.delisting_date.dissect(buffer, index, packet, parent)

  -- Short Term Overheat Issue Type Code: String
  index, short_term_overheat_issue_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.short_term_overheat_issue_type_code.dissect(buffer, index, packet, parent)

  -- Etf Replication Methods Type Code: String
  index, etf_replication_methods_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.etf_replication_methods_type_code.dissect(buffer, index, packet, parent)

  -- Expiration Date: String
  index, expiration_date = nextrade_nextrade_etpcommon_nxtascii_v2_12.expiration_date.dissect(buffer, index, packet, parent)

  -- Distribution Type Code: String
  index, distribution_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.distribution_type_code.dissect(buffer, index, packet, parent)

  -- Calculation Of Redemption Price Start Date: String
  index, calculation_of_redemption_price_start_date = nextrade_nextrade_etpcommon_nxtascii_v2_12.calculation_of_redemption_price_start_date.dissect(buffer, index, packet, parent)

  -- Calculation Of Redemption Price End Date: String
  index, calculation_of_redemption_price_end_date = nextrade_nextrade_etpcommon_nxtascii_v2_12.calculation_of_redemption_price_end_date.dissect(buffer, index, packet, parent)

  -- Etp Product Type Code: String
  index, etp_product_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.etp_product_type_code.dissect(buffer, index, packet, parent)

  -- Index Calculation Institution Type Code: String
  index, index_calculation_institution_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.index_calculation_institution_type_code.dissect(buffer, index, packet, parent)

  -- Index Market Classification Id: String
  index, index_market_classification_id = nextrade_nextrade_etpcommon_nxtascii_v2_12.index_market_classification_id.dissect(buffer, index, packet, parent)

  -- Index Sequence Number: String
  index, index_sequence_number = nextrade_nextrade_etpcommon_nxtascii_v2_12.index_sequence_number.dissect(buffer, index, packet, parent)

  -- Tracking Index Leverage Inverse Type Code: String
  index, tracking_index_leverage_inverse_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.tracking_index_leverage_inverse_type_code.dissect(buffer, index, packet, parent)

  -- Reference Index Leverage Inverse Type Code: String
  index, reference_index_leverage_inverse_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.reference_index_leverage_inverse_type_code.dissect(buffer, index, packet, parent)

  -- Index Asset Classification Id 1: String
  index, index_asset_classification_id_1 = nextrade_nextrade_etpcommon_nxtascii_v2_12.index_asset_classification_id_1.dissect(buffer, index, packet, parent)

  -- Index Asset Classification Id 2: String
  index, index_asset_classification_id_2 = nextrade_nextrade_etpcommon_nxtascii_v2_12.index_asset_classification_id_2.dissect(buffer, index, packet, parent)

  -- Ipo Underwriter Member Number: String
  index, ipo_underwriter_member_number = nextrade_nextrade_etpcommon_nxtascii_v2_12.ipo_underwriter_member_number.dissect(buffer, index, packet, parent)

  -- Lp Order: String
  index, lp_order = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_order.dissect(buffer, index, packet, parent)

  -- Low Liquidity: String
  index, low_liquidity = nextrade_nextrade_etpcommon_nxtascii_v2_12.low_liquidity.dissect(buffer, index, packet, parent)

  -- Abnormal Rise: String
  index, abnormal_rise = nextrade_nextrade_etpcommon_nxtascii_v2_12.abnormal_rise.dissect(buffer, index, packet, parent)

  -- Upper Limit Quantity: FLOAT128
  index, upper_limit_quantity = nextrade_nextrade_etpcommon_nxtascii_v2_12.upper_limit_quantity.dissect(buffer, index, packet, parent)

  -- Investment Precaution Issue: String
  index, investment_precaution_issue = nextrade_nextrade_etpcommon_nxtascii_v2_12.investment_precaution_issue.dissect(buffer, index, packet, parent)

  -- Preferred Stocks With Lesser Shares: String
  index, preferred_stocks_with_lesser_shares = nextrade_nextrade_etpcommon_nxtascii_v2_12.preferred_stocks_with_lesser_shares.dissect(buffer, index, packet, parent)

  -- Spac Merger: String
  index, spac_merger = nextrade_nextrade_etpcommon_nxtascii_v2_12.spac_merger.dissect(buffer, index, packet, parent)

  -- Segment Type Code: String
  index, segment_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.segment_type_code.dissect(buffer, index, packet, parent)

  -- After Market Possibility: String
  index, after_market_possibility = nextrade_nextrade_etpcommon_nxtascii_v2_12.after_market_possibility.dissect(buffer, index, packet, parent)

  -- Choice On Competitive Trading: String
  index, choice_on_competitive_trading = nextrade_nextrade_etpcommon_nxtascii_v2_12.choice_on_competitive_trading.dissect(buffer, index, packet, parent)

  -- Limit On Competitive Trading Volume: String
  index, limit_on_competitive_trading_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.limit_on_competitive_trading_volume.dissect(buffer, index, packet, parent)

  -- Occurrence Of Reasons Prohibiting Competitive Trading: String
  index, occurrence_of_reasons_prohibiting_competitive_trading = nextrade_nextrade_etpcommon_nxtascii_v2_12.occurrence_of_reasons_prohibiting_competitive_trading.dissect(buffer, index, packet, parent)

  -- Approval On Competitive Trading: String
  index, approval_on_competitive_trading = nextrade_nextrade_etpcommon_nxtascii_v2_12.approval_on_competitive_trading.dissect(buffer, index, packet, parent)

  -- Approval On Negotiation Trading: String
  index, approval_on_negotiation_trading = nextrade_nextrade_etpcommon_nxtascii_v2_12.approval_on_negotiation_trading.dissect(buffer, index, packet, parent)

  -- Yesterdays Closing Price Type Code Nxt: String
  index, yesterdays_closing_price_type_code_nxt = nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_closing_price_type_code_nxt.dissect(buffer, index, packet, parent)

  -- Yesterdays Closing Price Nxt: Double
  index, yesterdays_closing_price_nxt = nextrade_nextrade_etpcommon_nxtascii_v2_12.yesterdays_closing_price_nxt.dissect(buffer, index, packet, parent)

  -- Competition Board Trade Permission Code: Int
  index, competition_board_trade_permission_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.competition_board_trade_permission_code.dissect(buffer, index, packet, parent)

  -- Negotiation Possible Or Not Before Main Market: String
  index, negotiation_possible_or_not_before_main_market = nextrade_nextrade_etpcommon_nxtascii_v2_12.negotiation_possible_or_not_before_main_market.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Equities Batch Data Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.equities_batch_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.equities_batch_data_message, buffer(offset, 0))
    local index = nextrade_nextrade_etpcommon_nxtascii_v2_12.equities_batch_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.equities_batch_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_etpcommon_nxtascii_v2_12.equities_batch_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Top Five Traders Activities Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.top_five_traders_activities_message = {}

-- Size: Top Five Traders Activities Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.top_five_traders_activities_message.size =
  nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_1_for_ask.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_1.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_1.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_1_for_bid.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_1.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_1.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_2_for_ask.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_2.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_2.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_2_for_bid.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_2.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_2.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_3_for_ask.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_3.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_3.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_3_for_bid.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_3.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_3.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_4_for_ask.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_4.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_4.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_4_for_bid.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_4.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_4.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_5_for_ask.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_5.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_5.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_5_for_bid.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_5.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_5.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.size

-- Display: Top Five Traders Activities Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.top_five_traders_activities_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Five Traders Activities Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.top_five_traders_activities_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin Code: String
  index, isin_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue From Krx: Int
  index, a_designated_number_for_an_issue_from_krx = nextrade_nextrade_etpcommon_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.dissect(buffer, index, packet, parent)

  -- Member Number 1 For Ask: String
  index, member_number_1_for_ask = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_1_for_ask.dissect(buffer, index, packet, parent)

  -- Ask Trading Volume 1: Long
  index, ask_trading_volume_1 = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_1.dissect(buffer, index, packet, parent)

  -- Ask Trading Value 1: FLOAT128
  index, ask_trading_value_1 = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_1.dissect(buffer, index, packet, parent)

  -- Member Number 1 For Bid: String
  index, member_number_1_for_bid = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_1_for_bid.dissect(buffer, index, packet, parent)

  -- Bid Trading Volume 1: Long
  index, bid_trading_volume_1 = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_1.dissect(buffer, index, packet, parent)

  -- Bid Trading Value 1: FLOAT128
  index, bid_trading_value_1 = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_1.dissect(buffer, index, packet, parent)

  -- Member Number 2 For Ask: String
  index, member_number_2_for_ask = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_2_for_ask.dissect(buffer, index, packet, parent)

  -- Ask Trading Volume 2: Long
  index, ask_trading_volume_2 = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_2.dissect(buffer, index, packet, parent)

  -- Ask Trading Value 2: FLOAT128
  index, ask_trading_value_2 = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_2.dissect(buffer, index, packet, parent)

  -- Member Number 2 For Bid: String
  index, member_number_2_for_bid = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_2_for_bid.dissect(buffer, index, packet, parent)

  -- Bid Trading Volume 2: Long
  index, bid_trading_volume_2 = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_2.dissect(buffer, index, packet, parent)

  -- Bid Trading Value 2: FLOAT128
  index, bid_trading_value_2 = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_2.dissect(buffer, index, packet, parent)

  -- Member Number 3 For Ask: String
  index, member_number_3_for_ask = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_3_for_ask.dissect(buffer, index, packet, parent)

  -- Ask Trading Volume 3: Long
  index, ask_trading_volume_3 = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_3.dissect(buffer, index, packet, parent)

  -- Ask Trading Value 3: FLOAT128
  index, ask_trading_value_3 = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_3.dissect(buffer, index, packet, parent)

  -- Member Number 3 For Bid: String
  index, member_number_3_for_bid = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_3_for_bid.dissect(buffer, index, packet, parent)

  -- Bid Trading Volume 3: Long
  index, bid_trading_volume_3 = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_3.dissect(buffer, index, packet, parent)

  -- Bid Trading Value 3: FLOAT128
  index, bid_trading_value_3 = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_3.dissect(buffer, index, packet, parent)

  -- Member Number 4 For Ask: String
  index, member_number_4_for_ask = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_4_for_ask.dissect(buffer, index, packet, parent)

  -- Ask Trading Volume 4: Long
  index, ask_trading_volume_4 = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_4.dissect(buffer, index, packet, parent)

  -- Ask Trading Value 4: FLOAT128
  index, ask_trading_value_4 = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_4.dissect(buffer, index, packet, parent)

  -- Member Number 4 For Bid: String
  index, member_number_4_for_bid = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_4_for_bid.dissect(buffer, index, packet, parent)

  -- Bid Trading Volume 4: Long
  index, bid_trading_volume_4 = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_4.dissect(buffer, index, packet, parent)

  -- Bid Trading Value 4: FLOAT128
  index, bid_trading_value_4 = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_4.dissect(buffer, index, packet, parent)

  -- Member Number 5 For Ask: String
  index, member_number_5_for_ask = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_5_for_ask.dissect(buffer, index, packet, parent)

  -- Ask Trading Volume 5: Long
  index, ask_trading_volume_5 = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_volume_5.dissect(buffer, index, packet, parent)

  -- Ask Trading Value 5: FLOAT128
  index, ask_trading_value_5 = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_trading_value_5.dissect(buffer, index, packet, parent)

  -- Member Number 5 For Bid: String
  index, member_number_5_for_bid = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number_5_for_bid.dissect(buffer, index, packet, parent)

  -- Bid Trading Volume 5: Long
  index, bid_trading_volume_5 = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_volume_5.dissect(buffer, index, packet, parent)

  -- Bid Trading Value 5: FLOAT128
  index, bid_trading_value_5 = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_trading_value_5.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Five Traders Activities Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.top_five_traders_activities_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.top_five_traders_activities_message, buffer(offset, 0))
    local index = nextrade_nextrade_etpcommon_nxtascii_v2_12.top_five_traders_activities_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.top_five_traders_activities_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_etpcommon_nxtascii_v2_12.top_five_traders_activities_message.fields(buffer, offset, packet, parent)
  end
end

-- Member Firm Imposing Lifting Sanctions Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_firm_imposing_lifting_sanctions_message = {}

-- Size: Member Firm Imposing Lifting Sanctions Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_firm_imposing_lifting_sanctions_message.size =
  nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.disclosing_data_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.disclosure_time.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.member_firm_trust_principal_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.size

-- Display: Member Firm Imposing Lifting Sanctions Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_firm_imposing_lifting_sanctions_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Member Firm Imposing Lifting Sanctions Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_firm_imposing_lifting_sanctions_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin Code: String
  index, isin_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue From Krx: Int
  index, a_designated_number_for_an_issue_from_krx = nextrade_nextrade_etpcommon_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.dissect(buffer, index, packet, parent)

  -- Disclosing Data Type Code: String
  index, disclosing_data_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.disclosing_data_type_code.dissect(buffer, index, packet, parent)

  -- Disclosure Time: String
  index, disclosure_time = nextrade_nextrade_etpcommon_nxtascii_v2_12.disclosure_time.dissect(buffer, index, packet, parent)

  -- Member Number: String
  index, member_number = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_number.dissect(buffer, index, packet, parent)

  -- Member Firm Trust Principal Type Code: Int
  index, member_firm_trust_principal_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_firm_trust_principal_type_code.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Member Firm Imposing Lifting Sanctions Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.member_firm_imposing_lifting_sanctions_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.member_firm_imposing_lifting_sanctions_message, buffer(offset, 0))
    local index = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_firm_imposing_lifting_sanctions_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_firm_imposing_lifting_sanctions_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_etpcommon_nxtascii_v2_12.member_firm_imposing_lifting_sanctions_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Operation Schedule Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_operation_schedule_message = {}

-- Size: Market Operation Schedule Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_operation_schedule_message.size =
  nextrade_nextrade_etpcommon_nxtascii_v2_12.market_operation_product_id.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.board_id.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.board_event_id.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.start_time_of_a_board_event.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.board_event_group_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.session_start_end_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.session_id.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code_of_a_common_stock.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.product_id.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_halt_reason_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_halt_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.step_applied.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.price_limit_range_expansion_for_base_issue_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.expected_time_of_expanding_price_limit_range.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.size

-- Display: Market Operation Schedule Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_operation_schedule_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Operation Schedule Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_operation_schedule_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Operation Product Id: String
  index, market_operation_product_id = nextrade_nextrade_etpcommon_nxtascii_v2_12.market_operation_product_id.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = nextrade_nextrade_etpcommon_nxtascii_v2_12.board_id.dissect(buffer, index, packet, parent)

  -- Board Event Id: String
  index, board_event_id = nextrade_nextrade_etpcommon_nxtascii_v2_12.board_event_id.dissect(buffer, index, packet, parent)

  -- Start Time Of A Board Event: String
  index, start_time_of_a_board_event = nextrade_nextrade_etpcommon_nxtascii_v2_12.start_time_of_a_board_event.dissect(buffer, index, packet, parent)

  -- Board Event Group Code: Int
  index, board_event_group_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.board_event_group_code.dissect(buffer, index, packet, parent)

  -- Session Start End Code: String
  index, session_start_end_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.session_start_end_code.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = nextrade_nextrade_etpcommon_nxtascii_v2_12.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.dissect(buffer, index, packet, parent)

  -- Isin Code Of A Common Stock: String
  index, isin_code_of_a_common_stock = nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code_of_a_common_stock.dissect(buffer, index, packet, parent)

  -- Product Id: String
  index, product_id = nextrade_nextrade_etpcommon_nxtascii_v2_12.product_id.dissect(buffer, index, packet, parent)

  -- Trading Halt Reason Code: String
  index, trading_halt_reason_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_halt_reason_code.dissect(buffer, index, packet, parent)

  -- Trading Halt Type Code: String
  index, trading_halt_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_halt_type_code.dissect(buffer, index, packet, parent)

  -- Step Applied: Int
  index, step_applied = nextrade_nextrade_etpcommon_nxtascii_v2_12.step_applied.dissect(buffer, index, packet, parent)

  -- Price Limit Range Expansion For Base Issue Type Code: String
  index, price_limit_range_expansion_for_base_issue_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.price_limit_range_expansion_for_base_issue_type_code.dissect(buffer, index, packet, parent)

  -- Expected Time Of Expanding Price Limit Range: String
  index, expected_time_of_expanding_price_limit_range = nextrade_nextrade_etpcommon_nxtascii_v2_12.expected_time_of_expanding_price_limit_range.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Operation Schedule Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_operation_schedule_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.market_operation_schedule_message, buffer(offset, 0))
    local index = nextrade_nextrade_etpcommon_nxtascii_v2_12.market_operation_schedule_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.market_operation_schedule_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_etpcommon_nxtascii_v2_12.market_operation_schedule_message.fields(buffer, offset, packet, parent)
  end
end

-- Mm Lp Information Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.mm_lp_information_message = {}

-- Size: Mm Lp Information Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.mm_lp_information_message.size =
  nextrade_nextrade_etpcommon_nxtascii_v2_12.message_sequence_number.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.market_participant_number.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.board_id.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.market_making_lp_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_start_date.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_end_date.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.minimum_order_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.maximum_volume_of_multiple_order.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_ask_spread_unit_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.main_market_bid_ask_spread_value.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.spread_multiple_for_market_holidays.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.an_obligatory_time_interval_to_place_an_order.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.minimum_ask_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.maximum_bid_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.minimum_order_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.maximum_order_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.extended_market_bid_ask_spread_value.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.size

-- Display: Mm Lp Information Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.mm_lp_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mm Lp Information Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.mm_lp_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = nextrade_nextrade_etpcommon_nxtascii_v2_12.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.dissect(buffer, index, packet, parent)

  -- Market Participant Number: String
  index, market_participant_number = nextrade_nextrade_etpcommon_nxtascii_v2_12.market_participant_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = nextrade_nextrade_etpcommon_nxtascii_v2_12.board_id.dissect(buffer, index, packet, parent)

  -- Market Making Lp Type Code: String
  index, market_making_lp_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.market_making_lp_type_code.dissect(buffer, index, packet, parent)

  -- Lp Start Date: String
  index, lp_start_date = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_start_date.dissect(buffer, index, packet, parent)

  -- Lp End Date: String
  index, lp_end_date = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_end_date.dissect(buffer, index, packet, parent)

  -- Minimum Order Volume: Long
  index, minimum_order_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.minimum_order_volume.dissect(buffer, index, packet, parent)

  -- Maximum Volume Of Multiple Order: Long
  index, maximum_volume_of_multiple_order = nextrade_nextrade_etpcommon_nxtascii_v2_12.maximum_volume_of_multiple_order.dissect(buffer, index, packet, parent)

  -- Bid Ask Spread Unit Code: String
  index, bid_ask_spread_unit_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_ask_spread_unit_code.dissect(buffer, index, packet, parent)

  -- Main Market Bid Ask Spread Value: FLOAT128
  index, main_market_bid_ask_spread_value = nextrade_nextrade_etpcommon_nxtascii_v2_12.main_market_bid_ask_spread_value.dissect(buffer, index, packet, parent)

  -- Spread Multiple For Market Holidays: Long
  index, spread_multiple_for_market_holidays = nextrade_nextrade_etpcommon_nxtascii_v2_12.spread_multiple_for_market_holidays.dissect(buffer, index, packet, parent)

  -- An Obligatory Time Interval To Place An Order: Int
  index, an_obligatory_time_interval_to_place_an_order = nextrade_nextrade_etpcommon_nxtascii_v2_12.an_obligatory_time_interval_to_place_an_order.dissect(buffer, index, packet, parent)

  -- Minimum Ask Price: FLOAT128
  index, minimum_ask_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.minimum_ask_price.dissect(buffer, index, packet, parent)

  -- Maximum Bid Price: FLOAT128
  index, maximum_bid_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.maximum_bid_price.dissect(buffer, index, packet, parent)

  -- Minimum Order Price: FLOAT128
  index, minimum_order_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.minimum_order_price.dissect(buffer, index, packet, parent)

  -- Maximum Order Price: FLOAT128
  index, maximum_order_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.maximum_order_price.dissect(buffer, index, packet, parent)

  -- Extended Market Bid Ask Spread Value: FLOAT128
  index, extended_market_bid_ask_spread_value = nextrade_nextrade_etpcommon_nxtascii_v2_12.extended_market_bid_ask_spread_value.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mm Lp Information Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.mm_lp_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.mm_lp_information_message, buffer(offset, 0))
    local index = nextrade_nextrade_etpcommon_nxtascii_v2_12.mm_lp_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.mm_lp_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_etpcommon_nxtascii_v2_12.mm_lp_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Etp Constituents Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.etp_constituents_message = {}

-- Size: Etp Constituents Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.etp_constituents_message.size =
  nextrade_nextrade_etpcommon_nxtascii_v2_12.message_sequence_number.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.index_calculation_institution_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.index_market_classification_id.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.index_sequence_number.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.index_leverage_inverse_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.index_name.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.index_name_in_en.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.index_asset_classification_id_1.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.index_asset_classification_id_2.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.index_id.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.filler_4.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.size

-- Display: Etp Constituents Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.etp_constituents_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Etp Constituents Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.etp_constituents_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = nextrade_nextrade_etpcommon_nxtascii_v2_12.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Index Calculation Institution Type Code: String
  index, index_calculation_institution_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.index_calculation_institution_type_code.dissect(buffer, index, packet, parent)

  -- Index Market Classification Id: String
  index, index_market_classification_id = nextrade_nextrade_etpcommon_nxtascii_v2_12.index_market_classification_id.dissect(buffer, index, packet, parent)

  -- Index Sequence Number: String
  index, index_sequence_number = nextrade_nextrade_etpcommon_nxtascii_v2_12.index_sequence_number.dissect(buffer, index, packet, parent)

  -- Index Leverage Inverse Type Code: String
  index, index_leverage_inverse_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.index_leverage_inverse_type_code.dissect(buffer, index, packet, parent)

  -- Index Name: String
  index, index_name = nextrade_nextrade_etpcommon_nxtascii_v2_12.index_name.dissect(buffer, index, packet, parent)

  -- Index Name In En: String
  index, index_name_in_en = nextrade_nextrade_etpcommon_nxtascii_v2_12.index_name_in_en.dissect(buffer, index, packet, parent)

  -- Index Asset Classification Id 1: String
  index, index_asset_classification_id_1 = nextrade_nextrade_etpcommon_nxtascii_v2_12.index_asset_classification_id_1.dissect(buffer, index, packet, parent)

  -- Index Asset Classification Id 2: String
  index, index_asset_classification_id_2 = nextrade_nextrade_etpcommon_nxtascii_v2_12.index_asset_classification_id_2.dissect(buffer, index, packet, parent)

  -- Index Id: String
  index, index_id = nextrade_nextrade_etpcommon_nxtascii_v2_12.index_id.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = nextrade_nextrade_etpcommon_nxtascii_v2_12.filler_4.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Etp Constituents Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.etp_constituents_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.etp_constituents_message, buffer(offset, 0))
    local index = nextrade_nextrade_etpcommon_nxtascii_v2_12.etp_constituents_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.etp_constituents_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_etpcommon_nxtascii_v2_12.etp_constituents_message.fields(buffer, offset, packet, parent)
  end
end

-- Investor Activities Per Commodities Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.investor_activities_per_commodities_message = {}

-- Size: Investor Activities Per Commodities Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.investor_activities_per_commodities_message.size =
  nextrade_nextrade_etpcommon_nxtascii_v2_12.calculation_time.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.investor_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_ask_trading_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_ask_trading_value.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_bid_trading_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_bid_trading_value.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.size

-- Display: Investor Activities Per Commodities Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.investor_activities_per_commodities_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Investor Activities Per Commodities Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.investor_activities_per_commodities_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Calculation Time: String
  index, calculation_time = nextrade_nextrade_etpcommon_nxtascii_v2_12.calculation_time.dissect(buffer, index, packet, parent)

  -- Investor Code: String
  index, investor_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.investor_code.dissect(buffer, index, packet, parent)

  -- Accumulated Ask Trading Volume: Long
  index, accumulated_ask_trading_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_ask_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Ask Trading Value: FLOAT128
  index, accumulated_ask_trading_value = nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_ask_trading_value.dissect(buffer, index, packet, parent)

  -- Accumulated Bid Trading Volume: Long
  index, accumulated_bid_trading_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_bid_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Bid Trading Value: FLOAT128
  index, accumulated_bid_trading_value = nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_bid_trading_value.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Investor Activities Per Commodities Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.investor_activities_per_commodities_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.investor_activities_per_commodities_message, buffer(offset, 0))
    local index = nextrade_nextrade_etpcommon_nxtascii_v2_12.investor_activities_per_commodities_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.investor_activities_per_commodities_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_etpcommon_nxtascii_v2_12.investor_activities_per_commodities_message.fields(buffer, offset, packet, parent)
  end
end

-- Equities Snapshot Mm Lp Quotes Included 10 Level Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.equities_snapshot_mm_lp_quotes_included_10_level_message = {}

-- Size: Equities Snapshot Mm Lp Quotes Included 10 Level Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.equities_snapshot_mm_lp_quotes_included_10_level_message.size =
  nextrade_nextrade_etpcommon_nxtascii_v2_12.board_id.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.session_id.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.price_change_against_previous_day.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.a_price_change_against_the_previous_day.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.upper_limit_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lower_limit_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.current_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.opening_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.todays_high.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.todays_low.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_trading_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_trading_value.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.final_ask_bid_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_1_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_1_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_1_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_1_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_1_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_1_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_2_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_2_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_2_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_2_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_2_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_2_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_3_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_3_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_3_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_3_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_3_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_3_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_4_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_4_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_4_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_4_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_4_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_4_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_5_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_5_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_5_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_5_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_5_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_5_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_6_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_6_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_6_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_6_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_6_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_6_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_7_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_7_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_7_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_7_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_7_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_7_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_8_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_8_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_8_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_8_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_8_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_8_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_9_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_9_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_9_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_9_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_9_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_9_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_10_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_10_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_10_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_10_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_10_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_10_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.total_ask_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.total_bid_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.estimated_trading_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.estimated_trading_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_halt.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.knock_out_elw_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.knock_out_elw_triggering_time.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.mid_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.total_mid_price_ask_volume_total_ask_volume_on_mid_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.total_mid_price_bid_volume_total_bid_volume_on_mid_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.size

-- Display: Equities Snapshot Mm Lp Quotes Included 10 Level Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.equities_snapshot_mm_lp_quotes_included_10_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equities Snapshot Mm Lp Quotes Included 10 Level Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.equities_snapshot_mm_lp_quotes_included_10_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Board Id: String
  index, board_id = nextrade_nextrade_etpcommon_nxtascii_v2_12.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = nextrade_nextrade_etpcommon_nxtascii_v2_12.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue From Krx: Int
  index, a_designated_number_for_an_issue_from_krx = nextrade_nextrade_etpcommon_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.dissect(buffer, index, packet, parent)

  -- Price Change Against Previous Day: String
  index, price_change_against_previous_day = nextrade_nextrade_etpcommon_nxtascii_v2_12.price_change_against_previous_day.dissect(buffer, index, packet, parent)

  -- A Price Change Against The Previous Day: Double
  index, a_price_change_against_the_previous_day = nextrade_nextrade_etpcommon_nxtascii_v2_12.a_price_change_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Upper Limit Price: Double
  index, upper_limit_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.upper_limit_price.dissect(buffer, index, packet, parent)

  -- Lower Limit Price: Double
  index, lower_limit_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.lower_limit_price.dissect(buffer, index, packet, parent)

  -- Current Price: Double
  index, current_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.current_price.dissect(buffer, index, packet, parent)

  -- Opening Price: Double
  index, opening_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.opening_price.dissect(buffer, index, packet, parent)

  -- Todays High: Double
  index, todays_high = nextrade_nextrade_etpcommon_nxtascii_v2_12.todays_high.dissect(buffer, index, packet, parent)

  -- Todays Low: Double
  index, todays_low = nextrade_nextrade_etpcommon_nxtascii_v2_12.todays_low.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Final Ask Bid Type Code: String
  index, final_ask_bid_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.final_ask_bid_type_code.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Long
  index, ask_level_1_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Long
  index, bid_level_1_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 1 Volume: Long
  index, lp_ask_level_1_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 1 Volume: Long
  index, lp_bid_level_1_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Long
  index, ask_level_2_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Long
  index, bid_level_2_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 2 Volume: Long
  index, lp_ask_level_2_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 2 Volume: Long
  index, lp_bid_level_2_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Long
  index, ask_level_3_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Long
  index, bid_level_3_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 3 Volume: Long
  index, lp_ask_level_3_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 3 Volume: Long
  index, lp_bid_level_3_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Long
  index, ask_level_4_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Long
  index, bid_level_4_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 4 Volume: Long
  index, lp_ask_level_4_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 4 Volume: Long
  index, lp_bid_level_4_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Long
  index, ask_level_5_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Long
  index, bid_level_5_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 5 Volume: Long
  index, lp_ask_level_5_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 5 Volume: Long
  index, lp_bid_level_5_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Price: Double
  index, ask_level_6_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_6_price.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Price: Double
  index, bid_level_6_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_6_price.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Volume: Long
  index, ask_level_6_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_6_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Volume: Long
  index, bid_level_6_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_6_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 6 Volume: Long
  index, lp_ask_level_6_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_6_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 6 Volume: Long
  index, lp_bid_level_6_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_6_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Price: Double
  index, ask_level_7_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_7_price.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Price: Double
  index, bid_level_7_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_7_price.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Volume: Long
  index, ask_level_7_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_7_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Volume: Long
  index, bid_level_7_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_7_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 7 Volume: Long
  index, lp_ask_level_7_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_7_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 7 Volume: Long
  index, lp_bid_level_7_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_7_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Price: Double
  index, ask_level_8_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_8_price.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Price: Double
  index, bid_level_8_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_8_price.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Volume: Long
  index, ask_level_8_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_8_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Volume: Long
  index, bid_level_8_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_8_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 8 Volume: Long
  index, lp_ask_level_8_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_8_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 8 Volume: Long
  index, lp_bid_level_8_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_8_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Price: Double
  index, ask_level_9_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_9_price.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Price: Double
  index, bid_level_9_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_9_price.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Volume: Long
  index, ask_level_9_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_9_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Volume: Long
  index, bid_level_9_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_9_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 9 Volume: Long
  index, lp_ask_level_9_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_9_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 9 Volume: Long
  index, lp_bid_level_9_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_9_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Price: Double
  index, ask_level_10_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_10_price.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Price: Double
  index, bid_level_10_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_10_price.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Volume: Long
  index, ask_level_10_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_10_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Volume: Long
  index, bid_level_10_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_10_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 10 Volume: Long
  index, lp_ask_level_10_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_10_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 10 Volume: Long
  index, lp_bid_level_10_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_10_volume.dissect(buffer, index, packet, parent)

  -- Total Ask Volume: Long
  index, total_ask_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.total_ask_volume.dissect(buffer, index, packet, parent)

  -- Total Bid Volume: Long
  index, total_bid_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.total_bid_volume.dissect(buffer, index, packet, parent)

  -- Estimated Trading Price: Double
  index, estimated_trading_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.estimated_trading_price.dissect(buffer, index, packet, parent)

  -- Estimated Trading Volume: Long
  index, estimated_trading_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.estimated_trading_volume.dissect(buffer, index, packet, parent)

  -- Closing Price Type Code: String
  index, closing_price_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_type_code.dissect(buffer, index, packet, parent)

  -- Trading Halt: String
  index, trading_halt = nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_halt.dissect(buffer, index, packet, parent)

  -- Knock Out Elw Type Code: String
  index, knock_out_elw_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.knock_out_elw_type_code.dissect(buffer, index, packet, parent)

  -- Knock Out Elw Triggering Time: String
  index, knock_out_elw_triggering_time = nextrade_nextrade_etpcommon_nxtascii_v2_12.knock_out_elw_triggering_time.dissect(buffer, index, packet, parent)

  -- Mid Price: Double
  index, mid_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.mid_price.dissect(buffer, index, packet, parent)

  -- Total Mid Price Ask Volume Total Ask Volume On Mid Price: Long
  index, total_mid_price_ask_volume_total_ask_volume_on_mid_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.total_mid_price_ask_volume_total_ask_volume_on_mid_price.dissect(buffer, index, packet, parent)

  -- Total Mid Price Bid Volume Total Bid Volume On Mid Price: Long
  index, total_mid_price_bid_volume_total_bid_volume_on_mid_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.total_mid_price_bid_volume_total_bid_volume_on_mid_price.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Equities Snapshot Mm Lp Quotes Included 10 Level Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.equities_snapshot_mm_lp_quotes_included_10_level_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.equities_snapshot_mm_lp_quotes_included_10_level_message, buffer(offset, 0))
    local index = nextrade_nextrade_etpcommon_nxtascii_v2_12.equities_snapshot_mm_lp_quotes_included_10_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.equities_snapshot_mm_lp_quotes_included_10_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_etpcommon_nxtascii_v2_12.equities_snapshot_mm_lp_quotes_included_10_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Closing Price Trading Quote Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_trading_quote_message = {}

-- Size: Closing Price Trading Quote Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_trading_quote_message.size =
  nextrade_nextrade_etpcommon_nxtascii_v2_12.message_sequence_number.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.board_id.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.total_ask_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.total_bid_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.size

-- Display: Closing Price Trading Quote Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_trading_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Closing Price Trading Quote Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_trading_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = nextrade_nextrade_etpcommon_nxtascii_v2_12.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = nextrade_nextrade_etpcommon_nxtascii_v2_12.board_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue From Krx: Int
  index, a_designated_number_for_an_issue_from_krx = nextrade_nextrade_etpcommon_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.dissect(buffer, index, packet, parent)

  -- Total Ask Volume: Long
  index, total_ask_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.total_ask_volume.dissect(buffer, index, packet, parent)

  -- Total Bid Volume: Long
  index, total_bid_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.total_bid_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Closing Price Trading Quote Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_trading_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.closing_price_trading_quote_message, buffer(offset, 0))
    local index = nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_trading_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_trading_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_trading_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Triggering Removing Vi Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.triggering_removing_vi_message = {}

-- Size: Triggering Removing Vi Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.triggering_removing_vi_message.size =
  nextrade_nextrade_etpcommon_nxtascii_v2_12.message_sequence_number.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.board_id.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.processing_time_of_trading_system.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.the_time_ending_vi.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.vi_status_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.vi_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.a_base_price_to_trigger_static_vi.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.a_base_price_to_trigger_dynamic_vi.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.vi_triggering_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.disparate_ratio_to_trigger_static_vi.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.disparate_ratio_to_trigger_dynamic_vi.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.size

-- Display: Triggering Removing Vi Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.triggering_removing_vi_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Triggering Removing Vi Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.triggering_removing_vi_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = nextrade_nextrade_etpcommon_nxtascii_v2_12.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = nextrade_nextrade_etpcommon_nxtascii_v2_12.board_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue From Krx: Int
  index, a_designated_number_for_an_issue_from_krx = nextrade_nextrade_etpcommon_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = nextrade_nextrade_etpcommon_nxtascii_v2_12.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- The Time Ending Vi: String
  index, the_time_ending_vi = nextrade_nextrade_etpcommon_nxtascii_v2_12.the_time_ending_vi.dissect(buffer, index, packet, parent)

  -- Vi Status Code: String
  index, vi_status_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.vi_status_code.dissect(buffer, index, packet, parent)

  -- Vi Type Code: String
  index, vi_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.vi_type_code.dissect(buffer, index, packet, parent)

  -- A Base Price To Trigger Static Vi: Double
  index, a_base_price_to_trigger_static_vi = nextrade_nextrade_etpcommon_nxtascii_v2_12.a_base_price_to_trigger_static_vi.dissect(buffer, index, packet, parent)

  -- A Base Price To Trigger Dynamic Vi: Double
  index, a_base_price_to_trigger_dynamic_vi = nextrade_nextrade_etpcommon_nxtascii_v2_12.a_base_price_to_trigger_dynamic_vi.dissect(buffer, index, packet, parent)

  -- Vi Triggering Price: Double
  index, vi_triggering_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.vi_triggering_price.dissect(buffer, index, packet, parent)

  -- Disparate Ratio To Trigger Static Vi: Double
  index, disparate_ratio_to_trigger_static_vi = nextrade_nextrade_etpcommon_nxtascii_v2_12.disparate_ratio_to_trigger_static_vi.dissect(buffer, index, packet, parent)

  -- Disparate Ratio To Trigger Dynamic Vi: Double
  index, disparate_ratio_to_trigger_dynamic_vi = nextrade_nextrade_etpcommon_nxtascii_v2_12.disparate_ratio_to_trigger_dynamic_vi.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Triggering Removing Vi Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.triggering_removing_vi_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.triggering_removing_vi_message, buffer(offset, 0))
    local index = nextrade_nextrade_etpcommon_nxtascii_v2_12.triggering_removing_vi_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.triggering_removing_vi_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_etpcommon_nxtascii_v2_12.triggering_removing_vi_message.fields(buffer, offset, packet, parent)
  end
end

-- Issue Closing Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.issue_closing_message = {}

-- Size: Issue Closing Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.issue_closing_message.size =
  nextrade_nextrade_etpcommon_nxtascii_v2_12.message_sequence_number.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.board_id.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.upper_limit_price_on_the_single_price_trade_in_the_off_hours_session.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lower_limit_price_on_the_single_price_trade_in_the_off_hours_session.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_weighted_stock_price_average.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_base_price_of_buy_in.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_upper_limit_of_buy_in.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_lower_limit_of_buy_in.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.size

-- Display: Issue Closing Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.issue_closing_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Issue Closing Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.issue_closing_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = nextrade_nextrade_etpcommon_nxtascii_v2_12.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = nextrade_nextrade_etpcommon_nxtascii_v2_12.board_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue From Krx: Int
  index, a_designated_number_for_an_issue_from_krx = nextrade_nextrade_etpcommon_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.dissect(buffer, index, packet, parent)

  -- Closing Price: Double
  index, closing_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price.dissect(buffer, index, packet, parent)

  -- Closing Price Type Code: String
  index, closing_price_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_type_code.dissect(buffer, index, packet, parent)

  -- Upper Limit Price On The Single Price Trade In The Off Hours Session: Double
  index, upper_limit_price_on_the_single_price_trade_in_the_off_hours_session = nextrade_nextrade_etpcommon_nxtascii_v2_12.upper_limit_price_on_the_single_price_trade_in_the_off_hours_session.dissect(buffer, index, packet, parent)

  -- Lower Limit Price On The Single Price Trade In The Off Hours Session: Double
  index, lower_limit_price_on_the_single_price_trade_in_the_off_hours_session = nextrade_nextrade_etpcommon_nxtascii_v2_12.lower_limit_price_on_the_single_price_trade_in_the_off_hours_session.dissect(buffer, index, packet, parent)

  -- Closing Price Weighted Stock Price Average: Double
  index, closing_price_weighted_stock_price_average = nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_weighted_stock_price_average.dissect(buffer, index, packet, parent)

  -- Closing Price Base Price Of Buy In: Double
  index, closing_price_base_price_of_buy_in = nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_base_price_of_buy_in.dissect(buffer, index, packet, parent)

  -- Closing Price Upper Limit Of Buy In: Double
  index, closing_price_upper_limit_of_buy_in = nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_upper_limit_of_buy_in.dissect(buffer, index, packet, parent)

  -- Closing Price Lower Limit Of Buy In: Double
  index, closing_price_lower_limit_of_buy_in = nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_lower_limit_of_buy_in.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Issue Closing Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.issue_closing_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.issue_closing_message, buffer(offset, 0))
    local index = nextrade_nextrade_etpcommon_nxtascii_v2_12.issue_closing_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.issue_closing_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_etpcommon_nxtascii_v2_12.issue_closing_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Operation Ts Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_operation_ts_message = {}

-- Size: Market Operation Ts Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_operation_ts_message.size =
  nextrade_nextrade_etpcommon_nxtascii_v2_12.message_sequence_number.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.board_id.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.session_id.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.processing_time_of_trading_system.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.board_event_id.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.start_time_of_a_board_event.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.board_event_group_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_halt_reason_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.size

-- Display: Market Operation Ts Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_operation_ts_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Operation Ts Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_operation_ts_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = nextrade_nextrade_etpcommon_nxtascii_v2_12.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = nextrade_nextrade_etpcommon_nxtascii_v2_12.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = nextrade_nextrade_etpcommon_nxtascii_v2_12.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue From Krx: Int
  index, a_designated_number_for_an_issue_from_krx = nextrade_nextrade_etpcommon_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = nextrade_nextrade_etpcommon_nxtascii_v2_12.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Board Event Id: String
  index, board_event_id = nextrade_nextrade_etpcommon_nxtascii_v2_12.board_event_id.dissect(buffer, index, packet, parent)

  -- Start Time Of A Board Event: String
  index, start_time_of_a_board_event = nextrade_nextrade_etpcommon_nxtascii_v2_12.start_time_of_a_board_event.dissect(buffer, index, packet, parent)

  -- Board Event Group Code: Int
  index, board_event_group_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.board_event_group_code.dissect(buffer, index, packet, parent)

  -- Trading Halt Reason Code: String
  index, trading_halt_reason_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_halt_reason_code.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Operation Ts Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.market_operation_ts_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.market_operation_ts_message, buffer(offset, 0))
    local index = nextrade_nextrade_etpcommon_nxtascii_v2_12.market_operation_ts_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.market_operation_ts_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_etpcommon_nxtascii_v2_12.market_operation_ts_message.fields(buffer, offset, packet, parent)
  end
end

-- Securities Order Filled Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.securities_order_filled_message = {}

-- Size: Securities Order Filled Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.securities_order_filled_message.size =
  nextrade_nextrade_etpcommon_nxtascii_v2_12.message_sequence_number.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.board_id.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.session_id.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.processing_time_of_trading_system.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.price_change_against_previous_day.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.a_price_change_against_the_previous_day.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.opening_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.todays_high.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.todays_low.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_trading_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_trading_value.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.final_ask_bid_type_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_holding_quantity.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.the_best_ask.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.the_best_bid.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.size

-- Display: Securities Order Filled Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.securities_order_filled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Securities Order Filled Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.securities_order_filled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = nextrade_nextrade_etpcommon_nxtascii_v2_12.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = nextrade_nextrade_etpcommon_nxtascii_v2_12.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = nextrade_nextrade_etpcommon_nxtascii_v2_12.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue From Krx: Int
  index, a_designated_number_for_an_issue_from_krx = nextrade_nextrade_etpcommon_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = nextrade_nextrade_etpcommon_nxtascii_v2_12.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Price Change Against Previous Day: String
  index, price_change_against_previous_day = nextrade_nextrade_etpcommon_nxtascii_v2_12.price_change_against_previous_day.dissect(buffer, index, packet, parent)

  -- A Price Change Against The Previous Day: Double
  index, a_price_change_against_the_previous_day = nextrade_nextrade_etpcommon_nxtascii_v2_12.a_price_change_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Trading Price: Double
  index, trading_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_price.dissect(buffer, index, packet, parent)

  -- Trading Volume: Long
  index, trading_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_volume.dissect(buffer, index, packet, parent)

  -- Opening Price: Double
  index, opening_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.opening_price.dissect(buffer, index, packet, parent)

  -- Todays High: Double
  index, todays_high = nextrade_nextrade_etpcommon_nxtascii_v2_12.todays_high.dissect(buffer, index, packet, parent)

  -- Todays Low: Double
  index, todays_low = nextrade_nextrade_etpcommon_nxtascii_v2_12.todays_low.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = nextrade_nextrade_etpcommon_nxtascii_v2_12.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Final Ask Bid Type Code: String
  index, final_ask_bid_type_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.final_ask_bid_type_code.dissect(buffer, index, packet, parent)

  -- Lp Holding Quantity: Long
  index, lp_holding_quantity = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_holding_quantity.dissect(buffer, index, packet, parent)

  -- The Best Ask: Double
  index, the_best_ask = nextrade_nextrade_etpcommon_nxtascii_v2_12.the_best_ask.dissect(buffer, index, packet, parent)

  -- The Best Bid: Double
  index, the_best_bid = nextrade_nextrade_etpcommon_nxtascii_v2_12.the_best_bid.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Securities Order Filled Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.securities_order_filled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.securities_order_filled_message, buffer(offset, 0))
    local index = nextrade_nextrade_etpcommon_nxtascii_v2_12.securities_order_filled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.securities_order_filled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_etpcommon_nxtascii_v2_12.securities_order_filled_message.fields(buffer, offset, packet, parent)
  end
end

-- Securities Quote Mm Lp Quotes Included 10 Level Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.securities_quote_mm_lp_quotes_included_10_level_message = {}

-- Size: Securities Quote Mm Lp Quotes Included 10 Level Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.securities_quote_mm_lp_quotes_included_10_level_message.size =
  nextrade_nextrade_etpcommon_nxtascii_v2_12.message_sequence_number.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.board_id.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.session_id.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.processing_time_of_trading_system.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_1_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_1_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_1_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_1_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_1_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_1_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_2_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_2_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_2_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_2_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_2_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_2_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_3_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_3_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_3_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_3_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_3_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_3_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_4_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_4_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_4_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_4_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_4_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_4_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_5_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_5_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_5_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_5_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_5_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_5_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_6_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_6_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_6_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_6_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_6_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_6_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_7_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_7_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_7_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_7_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_7_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_7_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_8_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_8_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_8_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_8_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_8_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_8_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_9_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_9_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_9_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_9_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_9_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_9_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_10_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_10_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_10_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_10_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_10_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_10_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.total_ask_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.total_bid_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.estimated_trading_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.estimated_trading_volume.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.mid_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.total_mid_price_ask_volume_total_ask_volume_on_mid_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.total_mid_price_bid_volume_total_bid_volume_on_mid_price.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.size

-- Display: Securities Quote Mm Lp Quotes Included 10 Level Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.securities_quote_mm_lp_quotes_included_10_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Securities Quote Mm Lp Quotes Included 10 Level Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.securities_quote_mm_lp_quotes_included_10_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = nextrade_nextrade_etpcommon_nxtascii_v2_12.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = nextrade_nextrade_etpcommon_nxtascii_v2_12.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = nextrade_nextrade_etpcommon_nxtascii_v2_12.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue From Krx: Int
  index, a_designated_number_for_an_issue_from_krx = nextrade_nextrade_etpcommon_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = nextrade_nextrade_etpcommon_nxtascii_v2_12.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Long
  index, ask_level_1_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Long
  index, bid_level_1_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 1 Volume: Long
  index, lp_ask_level_1_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 1 Volume: Long
  index, lp_bid_level_1_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Long
  index, ask_level_2_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Long
  index, bid_level_2_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 2 Volume: Long
  index, lp_ask_level_2_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 2 Volume: Long
  index, lp_bid_level_2_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Long
  index, ask_level_3_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Long
  index, bid_level_3_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 3 Volume: Long
  index, lp_ask_level_3_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 3 Volume: Long
  index, lp_bid_level_3_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Long
  index, ask_level_4_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Long
  index, bid_level_4_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 4 Volume: Long
  index, lp_ask_level_4_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 4 Volume: Long
  index, lp_bid_level_4_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Long
  index, ask_level_5_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Long
  index, bid_level_5_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 5 Volume: Long
  index, lp_ask_level_5_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 5 Volume: Long
  index, lp_bid_level_5_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Price: Double
  index, ask_level_6_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_6_price.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Price: Double
  index, bid_level_6_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_6_price.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Volume: Long
  index, ask_level_6_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_6_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Volume: Long
  index, bid_level_6_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_6_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 6 Volume: Long
  index, lp_ask_level_6_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_6_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 6 Volume: Long
  index, lp_bid_level_6_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_6_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Price: Double
  index, ask_level_7_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_7_price.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Price: Double
  index, bid_level_7_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_7_price.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Volume: Long
  index, ask_level_7_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_7_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Volume: Long
  index, bid_level_7_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_7_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 7 Volume: Long
  index, lp_ask_level_7_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_7_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 7 Volume: Long
  index, lp_bid_level_7_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_7_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Price: Double
  index, ask_level_8_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_8_price.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Price: Double
  index, bid_level_8_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_8_price.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Volume: Long
  index, ask_level_8_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_8_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Volume: Long
  index, bid_level_8_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_8_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 8 Volume: Long
  index, lp_ask_level_8_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_8_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 8 Volume: Long
  index, lp_bid_level_8_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_8_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Price: Double
  index, ask_level_9_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_9_price.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Price: Double
  index, bid_level_9_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_9_price.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Volume: Long
  index, ask_level_9_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_9_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Volume: Long
  index, bid_level_9_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_9_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 9 Volume: Long
  index, lp_ask_level_9_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_9_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 9 Volume: Long
  index, lp_bid_level_9_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_9_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Price: Double
  index, ask_level_10_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_10_price.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Price: Double
  index, bid_level_10_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_10_price.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Volume: Long
  index, ask_level_10_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.ask_level_10_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Volume: Long
  index, bid_level_10_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.bid_level_10_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 10 Volume: Long
  index, lp_ask_level_10_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_ask_level_10_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 10 Volume: Long
  index, lp_bid_level_10_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.lp_bid_level_10_volume.dissect(buffer, index, packet, parent)

  -- Total Ask Volume: Long
  index, total_ask_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.total_ask_volume.dissect(buffer, index, packet, parent)

  -- Total Bid Volume: Long
  index, total_bid_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.total_bid_volume.dissect(buffer, index, packet, parent)

  -- Estimated Trading Price: Double
  index, estimated_trading_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.estimated_trading_price.dissect(buffer, index, packet, parent)

  -- Estimated Trading Volume: Long
  index, estimated_trading_volume = nextrade_nextrade_etpcommon_nxtascii_v2_12.estimated_trading_volume.dissect(buffer, index, packet, parent)

  -- Mid Price: Double
  index, mid_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.mid_price.dissect(buffer, index, packet, parent)

  -- Total Mid Price Ask Volume Total Ask Volume On Mid Price: Long
  index, total_mid_price_ask_volume_total_ask_volume_on_mid_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.total_mid_price_ask_volume_total_ask_volume_on_mid_price.dissect(buffer, index, packet, parent)

  -- Total Mid Price Bid Volume Total Bid Volume On Mid Price: Long
  index, total_mid_price_bid_volume_total_bid_volume_on_mid_price = nextrade_nextrade_etpcommon_nxtascii_v2_12.total_mid_price_bid_volume_total_bid_volume_on_mid_price.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Securities Quote Mm Lp Quotes Included 10 Level Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.securities_quote_mm_lp_quotes_included_10_level_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.securities_quote_mm_lp_quotes_included_10_level_message, buffer(offset, 0))
    local index = nextrade_nextrade_etpcommon_nxtascii_v2_12.securities_quote_mm_lp_quotes_included_10_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.securities_quote_mm_lp_quotes_included_10_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_etpcommon_nxtascii_v2_12.securities_quote_mm_lp_quotes_included_10_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Polling Data Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.polling_data_message = {}

-- Size: Polling Data Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.polling_data_message.size =
  nextrade_nextrade_etpcommon_nxtascii_v2_12.current_time_1_minute_interval.size + 
  nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.size

-- Display: Polling Data Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.polling_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Polling Data Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.polling_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Time 1 Minute Interval: String
  index, current_time_1_minute_interval = nextrade_nextrade_etpcommon_nxtascii_v2_12.current_time_1_minute_interval.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_etpcommon_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Polling Data Message
nextrade_nextrade_etpcommon_nxtascii_v2_12.polling_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.fields.polling_data_message, buffer(offset, 0))
    local index = nextrade_nextrade_etpcommon_nxtascii_v2_12.polling_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_etpcommon_nxtascii_v2_12.polling_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_etpcommon_nxtascii_v2_12.polling_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nextrade_nextrade_etpcommon_nxtascii_v2_12.payload = {}

-- Dispatch: Payload
nextrade_nextrade_etpcommon_nxtascii_v2_12.payload.dispatch = {
  ["I2500"] = nextrade_nextrade_etpcommon_nxtascii_v2_12.polling_data_message.dissect,
  ["B753S"] = nextrade_nextrade_etpcommon_nxtascii_v2_12.securities_quote_mm_lp_quotes_included_10_level_message.dissect,
  ["A353S"] = nextrade_nextrade_etpcommon_nxtascii_v2_12.securities_order_filled_message.dissect,
  ["A753S"] = nextrade_nextrade_etpcommon_nxtascii_v2_12.market_operation_ts_message.dissect,
  ["A653S"] = nextrade_nextrade_etpcommon_nxtascii_v2_12.issue_closing_message.dissect,
  ["R853S"] = nextrade_nextrade_etpcommon_nxtascii_v2_12.triggering_removing_vi_message.dissect,
  ["E153S"] = nextrade_nextrade_etpcommon_nxtascii_v2_12.closing_price_trading_quote_message.dissect,
  ["B253S"] = nextrade_nextrade_etpcommon_nxtascii_v2_12.equities_snapshot_mm_lp_quotes_included_10_level_message.dissect,
  ["IC53S"] = nextrade_nextrade_etpcommon_nxtascii_v2_12.investor_activities_per_commodities_message.dissect,
  ["V650S"] = nextrade_nextrade_etpcommon_nxtascii_v2_12.etp_constituents_message.dissect,
  ["EA50S"] = nextrade_nextrade_etpcommon_nxtascii_v2_12.etp_constituents_message.dissect,
  ["I753S"] = nextrade_nextrade_etpcommon_nxtascii_v2_12.mm_lp_information_message.dissect,
  ["EB53S"] = nextrade_nextrade_etpcommon_nxtascii_v2_12.mm_lp_information_message.dissect,
  ["M453S"] = nextrade_nextrade_etpcommon_nxtascii_v2_12.market_operation_schedule_message.dissect,
  ["R350S"] = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_firm_imposing_lifting_sanctions_message.dissect,
  ["B953S"] = nextrade_nextrade_etpcommon_nxtascii_v2_12.top_five_traders_activities_message.dissect,
  ["A053S"] = nextrade_nextrade_etpcommon_nxtascii_v2_12.equities_batch_data_message.dissect,
  ["E053S"] = nextrade_nextrade_etpcommon_nxtascii_v2_12.equities_batch_data_message.dissect,
  ["M950S"] = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_information_message.dissect,
  ["E850S"] = nextrade_nextrade_etpcommon_nxtascii_v2_12.member_information_message.dissect,
  ["I653S"] = nextrade_nextrade_etpcommon_nxtascii_v2_12.issue_event_message.dissect,
  ["E653S"] = nextrade_nextrade_etpcommon_nxtascii_v2_12.issue_event_message.dissect,
  ["C453S"] = nextrade_nextrade_etpcommon_nxtascii_v2_12.block_basket_trade_data_message.dissect,
  ["C153S"] = nextrade_nextrade_etpcommon_nxtascii_v2_12.investor_activities_per_an_issue_eod_message.dissect,
  ["I853S"] = nextrade_nextrade_etpcommon_nxtascii_v2_12.short_selling_message.dissect,
  ["E253S"] = nextrade_nextrade_etpcommon_nxtascii_v2_12.brokers_acitity_information_message.dissect,
  ["E353S"] = nextrade_nextrade_etpcommon_nxtascii_v2_12.trading_activity_by_session_per_an_issue_message.dissect,
}

-- Dissect: Payload
nextrade_nextrade_etpcommon_nxtascii_v2_12.payload.dissect = function(buffer, offset, packet, parent, tr_code)
  local dissect = nextrade_nextrade_etpcommon_nxtascii_v2_12.payload.dispatch[tr_code]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Packet
nextrade_nextrade_etpcommon_nxtascii_v2_12.packet = {}

-- Verify required size of Udp packet
nextrade_nextrade_etpcommon_nxtascii_v2_12.packet.requiredsize = function(buffer)
  return buffer:len() >= nextrade_nextrade_etpcommon_nxtascii_v2_12.tr_code.size
end

-- Dissect Packet
nextrade_nextrade_etpcommon_nxtascii_v2_12.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- TR Code: char
    index, tr_code = nextrade_nextrade_etpcommon_nxtascii_v2_12.tr_code.dissect(buffer, index, packet, parent)

    -- Payload: Runtime Type with 22 branches
    index = nextrade_nextrade_etpcommon_nxtascii_v2_12.payload.dissect(buffer, index, packet, parent, tr_code)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.init()
end

-- Dissector for Nextrade Nextrade EtpCommon NxtAscii 2.12
function omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.name

  -- Dissect protocol
  local protocol = parent:add(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12, buffer(), omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.description, "("..buffer:len().." Bytes)")
  return nextrade_nextrade_etpcommon_nxtascii_v2_12.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nextrade Nextrade EtpCommon NxtAscii 2.12 (Udp)
local function omi_nextrade_nextrade_etpcommon_nxtascii_v2_12_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nextrade_nextrade_etpcommon_nxtascii_v2_12.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nextrade_nextrade_etpcommon_nxtascii_v2_12
  omi_nextrade_nextrade_etpcommon_nxtascii_v2_12.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nextrade Nextrade EtpCommon NxtAscii 2.12
omi_nextrade_nextrade_etpcommon_nxtascii_v2_12:register_heuristic("udp", omi_nextrade_nextrade_etpcommon_nxtascii_v2_12_udp_heuristic)

-- Register Nextrade Nextrade EtpCommon NxtAscii 2.12 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nextrade_nextrade_etpcommon_nxtascii_v2_12)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Nextrade
--   Version: 2.12
--   Date: Thursday, August 13, 2026
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
